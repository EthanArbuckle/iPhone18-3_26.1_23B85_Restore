uint64_t sub_1D6FF0138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  type metadata accessor for FormatGroupLayoutFactory.Bound();
  sub_1D7259E7C();
  v8 = v6;
  v9 = v7;
  if (v5 >= 0x40)
  {
    v10 = 7;
  }

  else
  {
    v10 = 5;
  }

  if (v5 <= 0xFD)
  {
    LODWORD(v11) = v10;
  }

  else
  {
    LODWORD(v11) = 7;
  }

  v12 = *(a1 + 112);
  v62 = a3;
  v13 = sub_1D6FEF804(v12, 0.0, 0.0, v6, v7);
  v14 = *(a1 + 16);
  v68 = *(a1 + 32);
  v69 = v14;
  v16 = *(a1 + 48);
  v15 = *(a1 + 56);
  v17 = *(a1 + 88);
  v67 = *(a1 + 80);
  v18 = *(a1 + 104);
  v64 = *(a1 + 96);
  v19 = *(v13 + 16);
  v65 = v17;
  v63 = v18;
  if (v19)
  {
    v61 = v16;
    LODWORD(v66) = v11;
    v70[0] = MEMORY[0x1E69E7CC0];
    v60 = v15;

    sub_1D6998434(0, v19, 0);
    v11 = v70[0];
    v20 = *(v70[0] + 16);
    v59[5] = v13;
    v21 = (v13 + 40);
    do
    {
      v23 = *v21;
      v21 += 2;
      v22 = v23;
      v70[0] = v11;
      v24 = *(v11 + 24);

      if (v20 >= v24 >> 1)
      {
        sub_1D6998434((v24 > 1), v20 + 1, 1);
        v11 = v70[0];
      }

      *(v11 + 16) = v20 + 1;
      *(v11 + 8 * v20++ + 32) = v22;
      --v19;
    }

    while (v19);
    v25 = v11;
    LOBYTE(v11) = v66;
    v16 = v61;
    v26 = v60;
  }

  else
  {
    v26 = v15;

    v25 = MEMORY[0x1E69E7CC0];
  }

  v27 = *(a1 + 120);

  v29 = sub_1D6FB9AE4(v28);
  swift_bridgeObjectRelease_n();

  v70[0] = v27;
  sub_1D6986BE4(v29);
  sub_1D5D27F7C(0, &qword_1EDF1AFA8, type metadata accessor for FormatAccessibilityLayoutValue, MEMORY[0x1E69E62F8]);
  sub_1D6FFC2E8(&unk_1EDF1AF98);
  v30 = sub_1D72623CC();

  MEMORY[0x1EEE9AC00](v31, v32);
  v59[2] = v62;
  v33 = sub_1D5FBC744(sub_1D6FFCC34, v59, v30);

  sub_1D6FFC8F0(0, &qword_1EDF23418, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for FormatDataLayoutAttributes);
  v34 = swift_allocObject();
  v35 = v68;
  *(v34 + 16) = v69;
  *(v34 + 32) = v35;
  *(v34 + 48) = v16;
  *(v34 + 56) = v26;
  v37 = v64;
  v36 = v65;
  *(v34 + 64) = v67;
  *(v34 + 72) = v36;
  v38 = v63;
  *(v34 + 80) = v37;
  *(v34 + 88) = v38;
  *(v34 + 112) = v11;
  *(v34 + 136) = v8;
  *(v34 + 144) = v9;
  *(v34 + 96) = v25;
  *(v34 + 104) = v33;
  v63 = v34;
  v39 = MEMORY[0x1E69E7CC0];
  v74 = MEMORY[0x1E69E7CC0];
  v40 = *(v25 + 16);
  if (v40)
  {
    v41 = v25;
    v65 = type metadata accessor for FormatDataLayoutViewModel();

    v42 = 32;
    v66 = v25;
    do
    {
      v43 = *(v41 + v42);
      v44 = swift_allocObject();
      *(v44 + 16) = v43;
      v73 = v43;
      swift_retain_n();
      sub_1D6EE7974(v70);
      v45 = v70[1];
      v46 = v72;
      *(v44 + 24) = v70[0];
      *(v44 + 32) = v45;
      *(v44 + 40) = v71;
      *(v44 + 56) = v46;

      MEMORY[0x1DA6F9CE0](v47);
      if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      v64 = v74;
      v48 = *(v44 + 32);
      *&v69 = *(v44 + 24);
      v49 = *(v44 + 40);
      *&v68 = *(v44 + 48);
      LODWORD(v67) = *(v44 + 56);

      sub_1D5F33D5C(v49);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_1D698F980(0, *(v39 + 2) + 1, 1, v39);
      }

      v51 = *(v39 + 2);
      v50 = *(v39 + 3);
      v52 = v39;
      if (v51 >= v50 >> 1)
      {
        v52 = sub_1D698F980((v50 > 1), v51 + 1, 1, v39);
      }

      *(v52 + 2) = v51 + 1;
      v39 = v52;
      v53 = &v52[40 * v51];
      *(v53 + 4) = v69;
      *(v53 + 5) = v48;
      v54 = v68;
      *(v53 + 6) = v49;
      *(v53 + 7) = v54;
      v53[64] = v67;
      v42 += 8;
      --v40;
      v41 = v66;
    }

    while (v40);

    v55 = v64;
  }

  else
  {
    v55 = MEMORY[0x1E69E7CC0];
  }

  v56 = v63;
  *(v63 + 120) = v55;
  type metadata accessor for FormatDataLayoutViewKey();
  v57 = swift_allocObject();
  *(v57 + 16) = v39;
  *(v56 + 128) = v57;
  return v56;
}

uint64_t sub_1D6FF06C4@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v456 = a3;
  v468 = a4;
  v14 = type metadata accessor for FormatVideoPlayerData();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v433 = &v430 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FormatVideoData(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v432 = &v430 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FormatButtonNodeData();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v446 = &v430 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for FormatViewData(0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v431 = &v430 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6FFC4B8();
  v27 = v26 - 8;
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v430 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v470 = type metadata accessor for FormatNodeStateData.Data;
  v31 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v466 = &v430 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v464 = &v430 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v463 = &v430 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v454 = &v430 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v444 = (&v430 - v46);
  MEMORY[0x1EEE9AC00](v47, v48);
  v453 = &v430 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v443 = (&v430 - v52);
  MEMORY[0x1EEE9AC00](v53, v54);
  v460 = &v430 - v55;
  MEMORY[0x1EEE9AC00](v56, v57);
  v462 = &v430 - v58;
  MEMORY[0x1EEE9AC00](v59, v60);
  v445 = &v430 - v61;
  MEMORY[0x1EEE9AC00](v62, v63);
  v452 = &v430 - v64;
  MEMORY[0x1EEE9AC00](v65, v66);
  v442 = (&v430 - v67);
  MEMORY[0x1EEE9AC00](v68, v69);
  v459 = &v430 - v70;
  MEMORY[0x1EEE9AC00](v71, v72);
  v441 = &v430 - v73;
  MEMORY[0x1EEE9AC00](v74, v75);
  v451 = &v430 - v76;
  MEMORY[0x1EEE9AC00](v77, v78);
  v461 = &v430 - v79;
  MEMORY[0x1EEE9AC00](v80, v81);
  v440 = (&v430 - v82);
  MEMORY[0x1EEE9AC00](v83, v84);
  v450 = &v430 - v85;
  MEMORY[0x1EEE9AC00](v86, v87);
  v455 = &v430 - v88;
  MEMORY[0x1EEE9AC00](v89, v90);
  v439 = (&v430 - v91);
  MEMORY[0x1EEE9AC00](v92, v93);
  v449 = &v430 - v94;
  MEMORY[0x1EEE9AC00](v95, v96);
  v438 = (&v430 - v97);
  MEMORY[0x1EEE9AC00](v98, v99);
  v448 = &v430 - v100;
  MEMORY[0x1EEE9AC00](v101, v102);
  v437 = (&v430 - v103);
  MEMORY[0x1EEE9AC00](v104, v105);
  v447 = &v430 - v106;
  MEMORY[0x1EEE9AC00](v107, v108);
  v436 = (&v430 - v109);
  MEMORY[0x1EEE9AC00](v110, v111);
  v458 = &v430 - v112;
  MEMORY[0x1EEE9AC00](v113, v114);
  v435 = (&v430 - v115);
  MEMORY[0x1EEE9AC00](v116, v117);
  v457 = &v430 - v118;
  MEMORY[0x1EEE9AC00](v119, v120);
  v434 = (&v430 - v121);
  MEMORY[0x1EEE9AC00](v122, v123);
  v125 = &v430 - v124;
  MEMORY[0x1EEE9AC00](v126, v127);
  v129 = &v430 - v128;
  v130 = *a1;
  type metadata accessor for FormatGroupLayoutFactory.Bound();
  v465 = a2;
  v472 = v130;
  v131 = FormatLayoutValue.identifier.getter();
  v469 = sub_1D69B6F0C(v129, &v473, v131, v132);

  v467 = v473;
  v133 = v474;
  v134 = *(v27 + 56);
  v481 = v129;
  sub_1D6FFC87C(v129, v30, &qword_1EDF2C470, v470, v31, sub_1D5D27F7C);
  *&v30[v134] = v130;
  v135 = ((v130 >> 59) & 0x1E | (v130 >> 2) & 1);
  switch(v135)
  {
    case 0:

      sub_1D5EBC358(v467, *(&v467 + 1));
      v136 = type metadata accessor for FormatNodeStateData.Data();
      if ((*(*(v136 - 8) + 48))(v30, 1, v136) == 1)
      {
        goto LABEL_79;
      }

      v137 = v463;
      sub_1D6FFC87C(v30, v463, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_74;
      }

      v138 = v481;
      v139 = sub_1D6FF6464(v481, v130, v465, a7, a8);
      v141 = v140;

      v142 = MEMORY[0x1E69E6720];
      sub_1D6FFCA9C(v138, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v143 = v468;
      *v468 = v139;
      v143[1] = v141;
      v144 = &v479;
      goto LABEL_67;
    case 1:
      v470 = v133;
      v151 = type metadata accessor for FormatNodeStateData.Data();
      v208 = *(*(v151 - 1) + 48);
      if (v208(v30, 1, v151) == 1)
      {
        goto LABEL_78;
      }

      v188 = v457;
      sub_1D6FFC87C(v30, v457, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_94;
      }

      v135 = v435;
      sub_1D6FFC87C(v481, v435, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (v208(v135, 1, v151) == 1)
      {
        goto LABEL_121;
      }

      v464 = v134;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_133;
      }

      v209 = v431;
      sub_1D5BDAB74(v135, v431, type metadata accessor for FormatViewData);
      v210 = *((v130 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
      v211 = swift_allocObject();
      *(v211 + 16) = xmmword_1D7273AE0;
      v212 = v210[14];
      sub_1D6FFC6B8(0, qword_1EDF31DD0, type metadata accessor for FormatViewData, &qword_1EDF1C800, type metadata accessor for FormatViewNodeLayoutAttributes);
      v214 = v213;
      v215 = swift_allocBox();
      v217 = (v216 + *(v214 + 48));
      sub_1D5BE4148(v209, v216, type metadata accessor for FormatViewData);
      swift_beginAccess();
      v218 = v210[10];
      v219 = v210[11];

      sub_1D72634FC();
      v210[8] = v220;
      v210[9] = v221;
      v210[10] = v218;
      v210[11] = v219;
      v222 = v469;
      *v217 = v210;
      v217[1] = v222;
      v223 = *(&v467 + 1);
      v217[2] = v467;
      v217[3] = v223;
      v217[4] = v470;
      *(v211 + 32) = v212;
      *(v211 + 40) = v215 | 0x1000000000000000;
      sub_1D6FFC9A0(v209, type metadata accessor for FormatViewData);
      v204 = MEMORY[0x1E69E6720];
      sub_1D6FFCA9C(v481, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v224 = MEMORY[0x1E69E7CC0];
      v225 = v468;
      *v468 = v211;
      v225[1] = v224;
      v207 = &v475[8];
      goto LABEL_63;
    case 2:

      v265 = v467;
      v266 = sub_1D6FF4E1C(v130, v469, v467, *(&v467 + 1), v133, v465, a5, a6, a7, a8);
      v268 = v267;

      sub_1D5EBC358(v265, *(&v265 + 1));
      v142 = MEMORY[0x1E69E6720];
      v269 = v481;
      goto LABEL_47;
    case 3:
      v464 = v134;
      v151 = type metadata accessor for FormatNodeStateData.Data();
      v251 = *(*(v151 - 1) + 48);
      if (v251(v30, 1, v151) == 1)
      {
        goto LABEL_76;
      }

      v470 = v133;
      v153 = v449;
      sub_1D6FFC87C(v30, v449, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_101;
      }

      sub_1D6FFC9A0(v153, type metadata accessor for FormatNodeStateData.Data);
      v135 = v439;
      sub_1D6FFC87C(v481, v439, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (v251(v135, 1, v151) == 1)
      {
        goto LABEL_123;
      }

      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_135;
      }

      v253 = *v135;
      v254 = *((v130 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v255 = v254[18];
      v256 = v456;
      if (v255 && *(v456 + 16))
      {
        v257 = v254[17];

        v258 = sub_1D5B69D90(v257, v255);
        if (v259)
        {
          v260 = *(*(v256 + 56) + 8 * v258);
          swift_beginAccess();
          v261 = v260[10];
          v262 = v260[11];

          sub_1D72634FC();
          v260[8] = v263;
          v260[9] = v264;
          v260[10] = v261;
          v260[11] = v262;
          goto LABEL_117;
        }
      }

      else
      {
      }

      v260 = 0;
LABEL_117:
      swift_beginAccess();
      v419 = v254[10];
      v420 = v254[11];
      sub_1D72634FC();
      v254[8] = v421;
      v254[9] = v422;
      v254[10] = v419;
      v254[11] = v420;
      sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
      v423 = swift_allocObject();
      *(v423 + 16) = xmmword_1D7273AE0;
      v424 = v254[14];
      v425 = swift_allocObject();
      *(v425 + 16) = v253;
      *(v425 + 24) = v254;
      v426 = v467;
      *(v425 + 32) = v469;
      *(v425 + 40) = v426;
      v427 = v470;
      *(v425 + 48) = *(&v467 + 1);
      *(v425 + 56) = v427;
      *(v425 + 64) = v260;
      *(v423 + 32) = v424;
      *(v423 + 40) = v425 | 0x2000000000000004;
      v204 = MEMORY[0x1E69E6720];
      sub_1D6FFCA9C(v481, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v428 = MEMORY[0x1E69E7CC0];
      v429 = v468;
      *v468 = v423;
      v429[1] = v428;

      v250 = v30;
      return sub_1D6FFCA9C(v250, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v204, sub_1D5D27F7C);
    case 4:
      v464 = v134;
      v151 = type metadata accessor for FormatNodeStateData.Data();
      v174 = *(*(v151 - 1) + 48);
      if (v174(v30, 1, v151) == 1)
      {
        goto LABEL_76;
      }

      v470 = v133;
      v153 = v448;
      sub_1D6FFC87C(v30, v448, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v175 = swift_getEnumCaseMultiPayload();

      if (v175 != 2)
      {
        goto LABEL_101;
      }

      sub_1D6FFC9A0(v153, type metadata accessor for FormatNodeStateData.Data);
      v135 = v438;
      sub_1D6FFC87C(v481, v438, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (v174(v135, 1, v151) == 1)
      {
        goto LABEL_119;
      }

      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_131;
      }

      v176 = *v135;
      v177 = *((v130 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
      v178 = swift_allocObject();
      *(v178 + 16) = xmmword_1D7273AE0;
      v179 = v177[14];
      v180 = swift_allocObject();
      *(v180 + 16) = v176;
      swift_beginAccess();
      v181 = v177[10];
      v182 = v177[11];

      sub_1D72634FC();
      v177[8] = v183;
      v177[9] = v184;
      v177[10] = v181;
      v177[11] = v182;
      v185 = v469;
      *(v180 + 24) = v177;
      *(v180 + 32) = v185;
      v186 = *(&v467 + 1);
      *(v180 + 40) = v467;
      *(v180 + 48) = v186;
      *(v180 + 56) = v470;
      *(v178 + 32) = v179;
      *(v178 + 40) = v180 | 4;

      goto LABEL_99;
    case 5:
      v226 = v130;
      v464 = v134;
      v151 = type metadata accessor for FormatNodeStateData.Data();
      v227 = *(v151 - 1);
      v228 = *(v227 + 48);
      v130 = v227 + 48;
      if (v228(v30, 1, v151) == 1)
      {
        v130 = v226;
LABEL_76:

        v312 = *(&v467 + 1);
        v311 = v467;
        goto LABEL_77;
      }

      v470 = v133;
      sub_1D6FFC87C(v30, v125, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v348 = swift_getEnumCaseMultiPayload();

      if (v348 != 1)
      {
        sub_1D5EBC358(v467, *(&v467 + 1));

        sub_1D6FFCA9C(v481, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        sub_1D6FFC9A0(v125, type metadata accessor for FormatNodeStateData.Data);
        v130 = v226;
        goto LABEL_102;
      }

      sub_1D6FFC9A0(v125, type metadata accessor for FormatNodeStateData.Data);
      v135 = v434;
      sub_1D6FFC87C(v481, v434, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (v228(v135, 1, v151) == 1)
      {
        goto LABEL_126;
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v349 = *v135;
        v350 = *((v226 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
        v158 = swift_allocObject();
        *(v158 + 16) = xmmword_1D7273AE0;
        v351 = v350[14];
        v352 = swift_allocObject();
        v352[2] = v349;
        swift_beginAccess();
        v353 = v350[10];
        v354 = v350[11];

        sub_1D72634FC();
        v350[8] = v355;
        v350[9] = v356;
        v350[10] = v353;
        v350[11] = v354;
        v357 = v469;
        v352[3] = v350;
        v352[4] = v357;
        v358 = *(&v467 + 1);
        v352[5] = v467;
        v352[6] = v358;
        v352[7] = v470;
        *(v158 + 32) = v351;
        *(v158 + 40) = v352;

        goto LABEL_92;
      }

      goto LABEL_136;
    case 7:
      v470 = v133;
      v151 = type metadata accessor for FormatNodeStateData.Data();
      v271 = *(*(v151 - 1) + 48);
      if (v271(v30, 1, v151) == 1)
      {
        goto LABEL_78;
      }

      v188 = v458;
      sub_1D6FFC87C(v30, v458, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_94;
      }

      v135 = v436;
      sub_1D6FFC87C(v481, v436, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (v271(v135, 1, v151) == 1)
      {
        goto LABEL_124;
      }

      v464 = v134;
      v466 = v30;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_137;
      }

      sub_1D5BDAB74(v135, v446, type metadata accessor for FormatButtonNodeData);
      v272 = *((v130 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v273 = *(v272 + 16);
      v274 = *(v272 + 72);
      *&v473 = *(v272 + 64);
      BYTE8(v473) = v274;

      v275 = v465;
      v276 = sub_1D6FF0138(v273, &v473, v465);
      swift_beginAccess();
      v277 = v276[4];
      v278 = v276[5];
      v279 = sub_1D72634FC();
      v276[2] = v280;
      v276[3] = v281;
      v276[4] = v277;
      v276[5] = v278;
      MEMORY[0x1EEE9AC00](v279, v282);
      *(&v430 - 2) = v275;
      *(&v430 - 1) = v272;
      v283 = v471;
      v462 = sub_1D6FF8764(sub_1D6FFC69C, (&v430 - 4), v284);
      v471 = v283;
      v286 = *(v272 + 40);
      v465 = *(v272 + 32);
      v285 = v465;
      v463 = v286;
      v287 = *(v272 + 48);
      v288 = *(v272 + 56);
      v461 = *(v272 + 64);
      LODWORD(v460) = *(v272 + 72);
      v290 = *(v272 + 80);
      v289 = *(v272 + 88);
      type metadata accessor for FormatButtonNodeDataLayoutAttributes();
      v291 = swift_allocObject();
      v292 = v462;
      *(v291 + 16) = v276;
      *(v291 + 24) = v292;
      *(v291 + 32) = v285;
      *(v291 + 40) = v286;
      *(v291 + 48) = v287;
      *(v291 + 56) = v288;
      *(v291 + 64) = v461;
      *(v291 + 72) = v460;
      *(v291 + 80) = v290;
      *(v291 + 88) = v289;
      sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
      v293 = swift_allocObject();
      *(v293 + 16) = xmmword_1D7273AE0;
      sub_1D6FFC6B8(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
      v295 = v294;
      v296 = swift_allocBox();
      v298 = (v297 + *(v295 + 48));
      v299 = v446;
      sub_1D5BE4148(v446, v297, type metadata accessor for FormatButtonNodeData);
      v300 = v469;
      *v298 = v291;
      v298[1] = v300;
      v301 = *(&v467 + 1);
      v298[2] = v467;
      v298[3] = v301;
      v298[4] = v470;
      *(v293 + 32) = v463;
      *(v293 + 40) = v296 | 0x1000000000000004;

      sub_1D5EB1500(v287);

      sub_1D6FFC9A0(v299, type metadata accessor for FormatButtonNodeData);
      v302 = MEMORY[0x1E69E6720];
      sub_1D6FFCA9C(v481, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v303 = MEMORY[0x1E69E7CC0];
      v304 = v468;
      *v468 = v293;
      v304[1] = v303;
      sub_1D6FFC9A0(v458, type metadata accessor for FormatNodeStateData.Data);
      v305 = v466;

      return sub_1D6FFCA9C(v305, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v302, sub_1D5D27F7C);
    case 9:
      v307 = v130;
      v470 = v133;
      v464 = v134;
      v308 = type metadata accessor for FormatNodeStateData.Data();
      v309 = *(v308 - 8);
      v310 = *(v309 + 48);
      v130 = v309 + 48;
      if (v310(v30, 1, v308) == 1)
      {
        v130 = v307;

        v312 = *(&v467 + 1);
        v311 = v467;
LABEL_77:
        sub_1D5EBC358(v311, v312);

        sub_1D6FFCA9C(v481, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        goto LABEL_102;
      }

      v359 = v447;
      sub_1D6FFC87C(v30, v447, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v360 = swift_getEnumCaseMultiPayload();
      v361 = v307 & 0xFFFFFFFFFFFFFFBLL;

      if (v360 != 8)
      {
        sub_1D5EBC358(v467, *(&v467 + 1));

        sub_1D6FFCA9C(v481, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        sub_1D6FFC9A0(v359, type metadata accessor for FormatNodeStateData.Data);
        v130 = v307;
        goto LABEL_102;
      }

      sub_1D6FFC9A0(v359, type metadata accessor for FormatNodeStateData.Data);
      v151 = v437;
      sub_1D6FFC87C(v481, v437, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (v310(v151, 1, v308) == 1)
      {
        goto LABEL_127;
      }

      v466 = v30;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v362 = *v151;
        v363 = *(v361 + 16);
        v364 = *(v363 + 16);
        *&v473 = 0;
        BYTE8(v473) = -2;

        v365 = v465;
        v366 = sub_1D6FF0138(v364, &v473, v465);
        swift_beginAccess();
        v367 = v366[4];
        v368 = v366[5];
        v369 = sub_1D72634FC();
        v366[2] = v370;
        v366[3] = v371;
        v366[4] = v367;
        v366[5] = v368;
        MEMORY[0x1EEE9AC00](v369, v372);
        *(&v430 - 2) = v365;
        v373 = v471;
        v375 = sub_1D6FF8914(sub_1D6FFC624, (&v430 - 4), v374);
        v471 = v373;
        v376 = *(v363 + 32);
        v377 = *(v363 + 40);
        v378 = *(v363 + 48);
        swift_beginAccess();
        v379 = *(v363 + 56);
        type metadata accessor for FormatStateViewNodeDataLayoutAttributes();
        v380 = swift_allocObject();
        *(v380 + 16) = v366;
        *(v380 + 24) = v375;
        *(v380 + 32) = v376;
        *(v380 + 40) = v377;
        *(v380 + 48) = v378;
        *(v380 + 56) = v379;
        sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
        v381 = swift_allocObject();
        *(v381 + 16) = xmmword_1D7273AE0;
        v382 = swift_allocObject();
        *(v382 + 16) = v362;
        *(v382 + 24) = v380;
        v383 = v467;
        *(v382 + 32) = v469;
        *(v382 + 40) = v383;
        v384 = v470;
        *(v382 + 48) = *(&v467 + 1);
        *(v382 + 56) = v384;
        *(v381 + 32) = v377;
        *(v381 + 40) = v382 | 0x3000000000000000;

        sub_1D5EB1500(v378);

        v204 = MEMORY[0x1E69E6720];
        sub_1D6FFCA9C(v481, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        v385 = MEMORY[0x1E69E7CC0];
        v386 = v468;
        *v468 = v381;
        v386[1] = v385;
        v387 = v466;

        v250 = v387;
        return sub_1D6FFCA9C(v250, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v204, sub_1D5D27F7C);
      }

      goto LABEL_139;
    case 10:
      v470 = v133;
      v151 = type metadata accessor for FormatNodeStateData.Data();
      v343 = *(*(v151 - 1) + 48);
      if (v343(v30, 1, v151) == 1)
      {
        goto LABEL_78;
      }

      v188 = v450;
      sub_1D6FFC87C(v30, v450, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_94;
      }

      v135 = v440;
      sub_1D6FFC87C(v481, v440, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (v343(v135, 1, v151) == 1)
      {
        goto LABEL_128;
      }

      v464 = v134;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_140;
      }

      v388 = *v135;
      v389 = *((v130 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
      v158 = swift_allocObject();
      *(v158 + 16) = xmmword_1D7273AE0;
      v390 = v389[13];
      v391 = swift_allocObject();
      *(v391 + 16) = v388;
      swift_beginAccess();
      v392 = v389[10];
      v393 = v389[11];

      sub_1D72634FC();
      v389[8] = v394;
      v389[9] = v395;
      v389[10] = v392;
      v389[11] = v393;
      v396 = v469;
      *(v391 + 24) = v389;
      *(v391 + 32) = v396;
      v397 = *(&v467 + 1);
      *(v391 + 40) = v467;
      *(v391 + 48) = v397;
      *(v391 + 56) = v470;
      *(v158 + 32) = v390;
      *(v158 + 40) = v391 | 0x3000000000000004;
      goto LABEL_92;
    case 11:

      sub_1D5EBC358(v467, *(&v467 + 1));
      v337 = type metadata accessor for FormatNodeStateData.Data();
      if ((*(*(v337 - 8) + 48))(v30, 1, v337) == 1)
      {
        goto LABEL_79;
      }

      v137 = v455;
      sub_1D6FFC87C(v30, v455, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_74;
      }

      v338 = v481;
      v339 = sub_1D6FF55D0(v481, v130, v456);
      v341 = v340;

      v142 = MEMORY[0x1E69E6720];
      sub_1D6FFCA9C(v338, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v342 = v468;
      *v468 = v339;
      v342[1] = v341;
      v144 = &v474 + 1;
      goto LABEL_67;
    case 12:

      sub_1D5EBC358(v467, *(&v467 + 1));
      v168 = type metadata accessor for FormatNodeStateData.Data();
      if ((*(*(v168 - 8) + 48))(v30, 1, v168) == 1)
      {
        goto LABEL_79;
      }

      v137 = v461;
      sub_1D6FFC87C(v30, v461, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_74;
      }

      v169 = v481;
      v170 = sub_1D6FF59C8(v481, v130);
      v172 = v171;

      v142 = MEMORY[0x1E69E6720];
      sub_1D6FFCA9C(v169, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v173 = v468;
      *v468 = v170;
      v173[1] = v172;
      v144 = &v477;
      goto LABEL_67;
    case 13:
      v464 = v134;
      v151 = type metadata accessor for FormatNodeStateData.Data();
      v229 = *(*(v151 - 1) + 48);
      if (v229(v30, 1, v151) == 1)
      {
        goto LABEL_76;
      }

      v470 = v133;
      v153 = v451;
      sub_1D6FFC87C(v30, v451, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v230 = swift_getEnumCaseMultiPayload();
      v231 = v130 & 0xFFFFFFFFFFFFFFBLL;

      if (v230 != 12)
      {
        goto LABEL_101;
      }

      sub_1D6FFC9A0(v153, type metadata accessor for FormatNodeStateData.Data);
      v130 = v441;
      sub_1D6FFC87C(v481, v441, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (v229(v130, 1, v151) == 1)
      {
        goto LABEL_122;
      }

      v466 = v30;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_134;
      }

      v232 = *(v130 + 32);
      v233 = *(v130 + 24);
      v234 = *(v130 + 16);
      v236 = *v130;
      v235 = *(v130 + 8);
      v237 = *(v231 + 16);
      sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
      v238 = swift_allocObject();
      *(v238 + 16) = xmmword_1D7273AE0;
      v239 = v237[13];
      v240 = swift_allocObject();
      *(v240 + 16) = v236;
      *(v240 + 24) = v235;
      *(v240 + 32) = v234;
      *(v240 + 40) = v233;
      *(v240 + 48) = v232;
      swift_beginAccess();
      v241 = v237[10];
      v242 = v237[11];

      sub_1D72634FC();
      v237[8] = v243;
      v237[9] = v244;
      v237[10] = v241;
      v237[11] = v242;
      v245 = v469;
      *(v240 + 56) = v237;
      *(v240 + 64) = v245;
      v246 = *(&v467 + 1);
      *(v240 + 72) = v467;
      *(v240 + 80) = v246;
      *(v240 + 88) = v470;
      *(v238 + 32) = v239;
      *(v238 + 40) = v240 | 0x5000000000000000;

      v204 = MEMORY[0x1E69E6720];
      sub_1D6FFCA9C(v481, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v247 = MEMORY[0x1E69E7CC0];
      v248 = v468;
      *v468 = v238;
      v248[1] = v247;
      v249 = v466;

      v250 = v249;
      return sub_1D6FFCA9C(v250, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v204, sub_1D5D27F7C);
    case 14:
      v470 = v133;
      v151 = type metadata accessor for FormatNodeStateData.Data();
      v187 = *(*(v151 - 1) + 48);
      if (v187(v30, 1, v151) == 1)
      {
        goto LABEL_78;
      }

      v188 = v459;
      sub_1D6FFC87C(v30, v459, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_94;
      }

      v135 = v442;
      sub_1D6FFC87C(v481, v442, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (v187(v135, 1, v151) == 1)
      {
        goto LABEL_120;
      }

      v464 = v134;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_132;
      }

      v189 = v432;
      sub_1D5BDAB74(v135, v432, type metadata accessor for FormatVideoData);
      v190 = *((v130 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
      v191 = swift_allocObject();
      *(v191 + 16) = xmmword_1D7273AE0;
      v192 = v190[13];
      sub_1D6FFC6B8(0, &qword_1EC884E78, type metadata accessor for FormatVideoData, &qword_1EC884E80, type metadata accessor for FormatVideoNodeLayoutAttributes);
      v194 = v193;
      v195 = swift_allocBox();
      v197 = (v196 + *(v194 + 48));
      sub_1D5BE4148(v189, v196, type metadata accessor for FormatVideoData);
      swift_beginAccess();
      v198 = v190[10];
      v199 = v190[11];

      sub_1D72634FC();
      v190[8] = v200;
      v190[9] = v201;
      v190[10] = v198;
      v190[11] = v199;
      v202 = v469;
      *v197 = v190;
      v197[1] = v202;
      v203 = *(&v467 + 1);
      v197[2] = v467;
      v197[3] = v203;
      v197[4] = v470;
      *(v191 + 32) = v192;
      *(v191 + 40) = v195 | 0x5000000000000004;
      sub_1D6FFC9A0(v189, type metadata accessor for FormatVideoData);
      v204 = MEMORY[0x1E69E6720];
      sub_1D6FFCA9C(v481, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v205 = MEMORY[0x1E69E7CC0];
      v206 = v468;
      *v468 = v191;
      v206[1] = v205;
      v207 = &v475[24];
      goto LABEL_63;
    case 15:
      v464 = v134;
      v151 = type metadata accessor for FormatNodeStateData.Data();
      v152 = *(*(v151 - 1) + 48);
      if (v152(v30, 1, v151) == 1)
      {
        goto LABEL_76;
      }

      v470 = v133;
      v153 = v452;
      sub_1D6FFC87C(v30, v452, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v154 = swift_getEnumCaseMultiPayload();
      v155 = v130 & 0xFFFFFFFFFFFFFFBLL;

      if (v154 != 14)
      {
        goto LABEL_101;
      }

      sub_1D6FFC9A0(v153, type metadata accessor for FormatNodeStateData.Data);
      v130 = v445;
      sub_1D6FFC87C(v481, v445, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (v152(v130, 1, v151) == 1)
      {
        sub_1D6FFCA9C(v130, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        __break(1u);
LABEL_119:
        sub_1D6FFCA9C(v135, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        __break(1u);
LABEL_120:

        sub_1D6FFCA9C(v135, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        __break(1u);
LABEL_121:

        sub_1D6FFCA9C(v135, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        __break(1u);
LABEL_122:
        sub_1D6FFCA9C(v130, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        __break(1u);
LABEL_123:
        sub_1D6FFCA9C(v135, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        __break(1u);
LABEL_124:

        sub_1D6FFCA9C(v135, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        __break(1u);
        goto LABEL_125;
      }

      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_130;
      }

      *v475 = *(v130 + 32);
      *&v475[9] = *(v130 + 41);
      v156 = *(v130 + 16);
      v473 = *v130;
      v474 = v156;
      v157 = *(v155 + 16);
      sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
      v158 = swift_allocObject();
      *(v158 + 16) = xmmword_1D7273AE0;
      v159 = v157[13];
      v160 = swift_allocObject();
      v161 = *(v130 + 16);
      *(v160 + 16) = *v130;
      *(v160 + 32) = v161;
      *(v160 + 48) = *(v130 + 32);
      *(v160 + 57) = *(v130 + 41);
      swift_beginAccess();
      v162 = v157[10];
      v163 = v157[11];

      sub_1D5EBC4A0(&v473, &v472);
      sub_1D72634FC();
      v157[8] = v164;
      v157[9] = v165;
      v157[10] = v162;
      v157[11] = v163;
      v166 = v469;
      *(v160 + 80) = v157;
      *(v160 + 88) = v166;
      v167 = *(&v467 + 1);
      *(v160 + 96) = v467;
      *(v160 + 104) = v167;
      *(v160 + 112) = v470;
      *(v158 + 32) = v159;
      *(v158 + 40) = v160 | 0x6000000000000000;
      sub_1D6FFC550(&v473);
LABEL_92:
      v204 = MEMORY[0x1E69E6720];
      sub_1D6FFCA9C(v481, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v398 = MEMORY[0x1E69E7CC0];
      v399 = v468;
      *v468 = v158;
      v399[1] = v398;
      goto LABEL_93;
    case 16:

      sub_1D5EBC358(v467, *(&v467 + 1));
      v313 = type metadata accessor for FormatNodeStateData.Data();
      if ((*(*(v313 - 8) + 48))(v30, 1, v313) == 1)
      {
        goto LABEL_79;
      }

      v137 = v462;
      sub_1D6FFC87C(v30, v462, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_74;
      }

      v314 = v481;
      v315 = sub_1D6FF5D74(v481, v130);
      v317 = v316;

      v142 = MEMORY[0x1E69E6720];
      sub_1D6FFCA9C(v314, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v318 = v468;
      *v468 = v315;
      v318[1] = v317;
      v144 = &v478;
      goto LABEL_67;
    case 17:
      v470 = v133;
      v151 = type metadata accessor for FormatNodeStateData.Data();
      v319 = *(*(v151 - 1) + 48);
      if (v319(v30, 1, v151) == 1)
      {
        goto LABEL_78;
      }

      v188 = v460;
      sub_1D6FFC87C(v30, v460, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (swift_getEnumCaseMultiPayload() != 17)
      {
LABEL_94:

        sub_1D5EBC358(v467, *(&v467 + 1));

        sub_1D6FFCA9C(v481, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        sub_1D6FFC9A0(v188, type metadata accessor for FormatNodeStateData.Data);
        goto LABEL_102;
      }

      v135 = v443;
      sub_1D6FFC87C(v481, v443, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (v319(v135, 1, v151) == 1)
      {
LABEL_125:

        sub_1D6FFCA9C(v135, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        __break(1u);
LABEL_126:
        sub_1D6FFCA9C(v135, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        __break(1u);
LABEL_127:
        sub_1D6FFCA9C(v151, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        __break(1u);
LABEL_128:

        sub_1D6FFCA9C(v135, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        __break(1u);
        goto LABEL_129;
      }

      v464 = v134;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_138;
      }

      v320 = v433;
      sub_1D5BDAB74(v135, v433, type metadata accessor for FormatVideoPlayerData);
      v321 = *((v130 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
      v322 = swift_allocObject();
      *(v322 + 16) = xmmword_1D7273AE0;
      v323 = v321[13];
      sub_1D6FFC6B8(0, &qword_1EC880340, type metadata accessor for FormatVideoPlayerData, &qword_1EC880348, type metadata accessor for FormatVideoPlayerNodeLayoutAttributes);
      v325 = v324;
      v326 = swift_allocBox();
      v328 = (v327 + *(v325 + 48));
      sub_1D5BE4148(v320, v327, type metadata accessor for FormatVideoPlayerData);
      swift_beginAccess();
      v329 = v321[10];
      v330 = v321[11];

      sub_1D72634FC();
      v321[8] = v331;
      v321[9] = v332;
      v321[10] = v329;
      v321[11] = v330;
      v333 = v469;
      *v328 = v321;
      v328[1] = v333;
      v334 = *(&v467 + 1);
      v328[2] = v467;
      v328[3] = v334;
      v328[4] = v470;
      *(v322 + 32) = v323;
      *(v322 + 40) = v326 | 0x7000000000000000;
      sub_1D6FFC9A0(v320, type metadata accessor for FormatVideoPlayerData);
      v204 = MEMORY[0x1E69E6720];
      sub_1D6FFCA9C(v481, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v335 = MEMORY[0x1E69E7CC0];
      v336 = v468;
      *v468 = v322;
      v336[1] = v335;
      v207 = &v476;
LABEL_63:
      sub_1D6FFC9A0(*(v207 - 32), type metadata accessor for FormatNodeStateData.Data);
LABEL_93:

      v250 = v30;
      return sub_1D6FFCA9C(v250, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v204, sub_1D5D27F7C);
    case 18:
      v464 = v134;
      v151 = type metadata accessor for FormatNodeStateData.Data();
      v347 = *(*(v151 - 1) + 48);
      if (v347(v30, 1, v151) == 1)
      {
        goto LABEL_76;
      }

      v470 = v133;
      v153 = v453;
      sub_1D6FFC87C(v30, v453, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v400 = swift_getEnumCaseMultiPayload();

      if (v400 != 18)
      {
LABEL_101:
        sub_1D5EBC358(v467, *(&v467 + 1));

        sub_1D6FFCA9C(v481, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        sub_1D6FFC9A0(v153, type metadata accessor for FormatNodeStateData.Data);
        goto LABEL_102;
      }

      sub_1D6FFC9A0(v153, type metadata accessor for FormatNodeStateData.Data);
      v135 = v444;
      sub_1D6FFC87C(v481, v444, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (v347(v135, 1, v151) == 1)
      {
LABEL_129:
        sub_1D6FFCA9C(v135, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        __break(1u);
LABEL_130:
        sub_1D6FFC9A0(v130, type metadata accessor for FormatNodeStateData.Data);
        __break(1u);
LABEL_131:
        sub_1D6FFC9A0(v135, type metadata accessor for FormatNodeStateData.Data);
        __break(1u);
LABEL_132:

        sub_1D6FFC9A0(v135, type metadata accessor for FormatNodeStateData.Data);
        __break(1u);
LABEL_133:

        sub_1D6FFC9A0(v135, type metadata accessor for FormatNodeStateData.Data);
        __break(1u);
LABEL_134:
        sub_1D6FFC9A0(v130, type metadata accessor for FormatNodeStateData.Data);
        __break(1u);
LABEL_135:
        sub_1D6FFC9A0(v135, type metadata accessor for FormatNodeStateData.Data);
        __break(1u);
LABEL_136:
        sub_1D6FFC9A0(v135, type metadata accessor for FormatNodeStateData.Data);
        __break(1u);
LABEL_137:

        sub_1D6FFC9A0(v135, type metadata accessor for FormatNodeStateData.Data);
        __break(1u);
LABEL_138:

        sub_1D6FFC9A0(v135, type metadata accessor for FormatNodeStateData.Data);
        __break(1u);
LABEL_139:
        sub_1D6FFC9A0(v151, type metadata accessor for FormatNodeStateData.Data);
        __break(1u);
LABEL_140:

        sub_1D6FFC9A0(v135, type metadata accessor for FormatNodeStateData.Data);
        __break(1u);
        goto LABEL_141;
      }

      if (swift_getEnumCaseMultiPayload() != 18)
      {
LABEL_141:
        result = sub_1D6FFC9A0(v135, type metadata accessor for FormatNodeStateData.Data);
        __break(1u);
        return result;
      }

      v401 = v135[1];
      v402 = *v135;
      v403 = *((v130 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
      v178 = swift_allocObject();
      *(v178 + 16) = xmmword_1D7273AE0;
      v404 = v403[20];
      v405 = swift_allocObject();
      *(v405 + 16) = v402;
      *(v405 + 24) = v401;
      swift_beginAccess();
      v406 = v403[10];
      v407 = v403[11];

      sub_1D5E443B8(v401);
      sub_1D72634FC();
      v403[8] = v408;
      v403[9] = v409;
      v403[10] = v406;
      v403[11] = v407;
      v410 = v469;
      *(v405 + 32) = v403;
      *(v405 + 40) = v410;
      v411 = *(&v467 + 1);
      *(v405 + 48) = v467;
      *(v405 + 56) = v411;
      *(v405 + 64) = v470;
      *(v178 + 32) = v404;
      *(v178 + 40) = v405 | 0x7000000000000004;
      sub_1D5E443C8(v401);
LABEL_99:
      v204 = MEMORY[0x1E69E6720];
      sub_1D6FFCA9C(v481, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v412 = MEMORY[0x1E69E7CC0];
      v413 = v468;
      *v468 = v178;
      v413[1] = v412;

      v250 = v30;
      return sub_1D6FFCA9C(v250, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v204, sub_1D5D27F7C);
    case 19:

      sub_1D5EBC358(v467, *(&v467 + 1));
      v344 = type metadata accessor for FormatNodeStateData.Data();
      if ((*(*(v344 - 8) + 48))(v30, 1, v344) == 1)
      {
        goto LABEL_79;
      }

      v137 = v454;
      sub_1D6FFC87C(v30, v454, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        goto LABEL_74;
      }

      sub_1D6FFC9A0(v137, type metadata accessor for FormatNodeStateData.Data);
      v345 = v481;
      v266 = sub_1D6FF6120(v481, v130, v456);
      v268 = v346;

      v142 = MEMORY[0x1E69E6720];
      v269 = v345;
LABEL_47:
      sub_1D6FFCA9C(v269, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v142, sub_1D5D27F7C);
      v270 = v468;
      *v468 = v266;
      v270[1] = v268;
      goto LABEL_68;
    case 20:

      sub_1D5EBC358(v467, *(&v467 + 1));
      v145 = type metadata accessor for FormatNodeStateData.Data();
      if ((*(*(v145 - 8) + 48))(v30, 1, v145) == 1)
      {
        goto LABEL_79;
      }

      v137 = v464;
      sub_1D6FFC87C(v30, v464, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (swift_getEnumCaseMultiPayload() == 20)
      {
        v146 = v481;
        v147 = sub_1D6FF7198(v481, v130);
        v149 = v148;

        v142 = MEMORY[0x1E69E6720];
        sub_1D6FFCA9C(v146, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        v150 = v468;
        *v468 = v147;
        v150[1] = v149;
        v144 = &v480;
LABEL_67:
        sub_1D6FFC9A0(*(v144 - 32), type metadata accessor for FormatNodeStateData.Data);
LABEL_68:

        return sub_1D6FFCA9C(v30, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v142, sub_1D5D27F7C);
      }

LABEL_74:

      sub_1D6FFCA9C(v481, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      sub_1D6FFC9A0(v137, type metadata accessor for FormatNodeStateData.Data);
LABEL_102:
      v414 = type metadata accessor for FormatNodeStateData.Data();
      if ((*(*(v414 - 8) + 48))(v30, 1, v414) != 1)
      {
        v415 = v466;
        sub_1D6FFC87C(v30, v466, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        v416 = swift_getEnumCaseMultiPayload();
        sub_1D6FFC9A0(v415, type metadata accessor for FormatNodeStateData.Data);
        if (v416 == 7)
        {
          goto LABEL_111;
        }
      }

      if (v135 > 19)
      {
        if (v135 != 20 && (v135 != 21 || v130 != 0xA000000000000004))
        {
          goto LABEL_112;
        }
      }

      else if (v135 != 6 && v135 != 8)
      {
LABEL_112:
        v418 = v468;
        *v468 = 0;
        v418[1] = 0;
        return sub_1D6FFC9A0(v30, sub_1D6FFC4B8);
      }

LABEL_111:

      result = sub_1D6FFCA9C(v30, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v417 = v468;
      *v468 = 0;
      v417[1] = 0;
      return result;
    default:
LABEL_78:

      sub_1D5EBC358(v467, *(&v467 + 1));
LABEL_79:

      sub_1D6FFCA9C(v481, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      goto LABEL_102;
  }
}

uint64_t sub_1D6FF4C94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  v6 = *(a3 + 72);
  v10 = *(a3 + 64);
  v11 = v6;
  *a4 = sub_1D6FF0138(v5, &v10, a2);
  v7 = sub_1D5E27C2C(&unk_1F5119BF8);
  type metadata accessor for FormatResizeAuto();
  v8 = swift_allocObject();
  result = swift_beginAccess();
  *(v8 + 16) = v7;
  a4[1] = v8;
  return result;
}

uint64_t sub_1D6FF4D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(*a1 + 16);
  v5 = *(*a1 + 24);
  v7 = *(*a1 + 32);
  v13 = 0;
  v14 = -2;

  v8 = sub_1D6FF0138(v7, &v13, a2);
  type metadata accessor for FormatStateViewNodeStateDataLayoutAttributes();
  v9 = swift_allocObject();
  v10 = sub_1D5E27C2C(&unk_1F5119C20);
  type metadata accessor for FormatResizeAuto();
  v11 = swift_allocObject();
  result = swift_beginAccess();
  *(v11 + 16) = v10;
  v9[2] = v6;
  v9[3] = v5;
  v9[4] = v8;
  v9[5] = v11;
  *a3 = v9;
  return result;
}

unint64_t sub_1D6FF4E1C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  if (((result >> 59) & 0x1E | (result >> 2) & 1) == 2)
  {
    v85[3] = v15;
    v85[4] = v14;
    v85[5] = v13;
    v85[6] = v12;
    v85[17] = v10;
    v85[18] = v11;
    v23 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x30);
    v80 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    v81 = v23;
    v82 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x40);
    v83 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x50);
    v24 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    v79 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v75 = v24;
    v25 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x40);
    v76 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x30);
    v77 = v25;
    v78 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x50);
    v74 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v73[0] = a3;
    v73[1] = a4;
    v73[2] = a5;
    sub_1D6C5C0C4(&v79, &v71);
    v68 = sub_1D7042538(a2, v73);
    if (v68 && (type metadata accessor for FormatGroupLayoutFactory.Bound(), (sub_1D61881BC(3) & 1) == 0))
    {
      v43 = v79;
      sub_1D72634FC();
      v45 = v44;
      v47 = v46;

      v49 = sub_1D6FEF804(v48, v45, v47, a9, a10);

      v50 = *(v49 + 16);
      v41 = MEMORY[0x1E69E7CC0];
      if (v50)
      {
        v69 = v43;
        *&v74 = MEMORY[0x1E69E7CC0];
        sub_1D6998414(0, v50, 0);
        v41 = v74;
        v51 = v80;
        v52 = *(v74 + 16);
        v53 = 2 * v52;
        v54 = (v49 + 40);
        do
        {
          v56 = *v54;
          v54 += 2;
          v55 = v56;
          *&v74 = v41;
          v57 = v52 + 1;
          v58 = v41[3];

          if (v52 >= v58 >> 1)
          {
            sub_1D6998414((v58 > 1), v57, 1);
            v41 = v74;
          }

          v41[2] = v57;
          v59 = &v41[v53];
          v59[4] = v51;
          v59[5] = v55;
          v53 += 2;
          ++v52;
          --v50;
        }

        while (v50);
        v43 = v69;
      }

      sub_1D6FFC8F0(0, &qword_1EC88EE78, &type metadata for FormatGroupLayoutCoordinateAccessibilityValue, MEMORY[0x1E69E6F90]);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_1D7273AE0;
      v61 = *(v43 + 120);
      *(v60 + 32) = v80;
      *(v60 + 40) = v61;
      *&v74 = v60;

      sub_1D6986AF0(v62);

      sub_1D6C5C120(&v79);
    }

    else
    {
      sub_1D6FF533C(&v79, a3, a4, a5, &v74);
      v67 = v76;
      v64 = v75;
      v65 = v74;
      v71 = *(&v81 + 1);
      v72 = v82;
      *&v74 = *(&v81 + 1);
      BYTE8(v74) = v82;
      v26 = sub_1D6FF0138(v79, &v74, a6);
      swift_beginAccess();
      v27 = v26[4];
      v28 = v26[5];
      sub_1D72634FC();
      v30 = v29;
      v32 = v31;
      v26[2] = v29;
      v26[3] = v31;
      v26[4] = v27;
      v26[5] = v28;
      v66 = a5;
      v33 = *(&v79 + 1);
      v34 = v80;
      v84 = *(&v79 + 1);
      v85[0] = *(&v80 + 1);
      v63 = a3;
      v35 = v81;
      v36 = v83;
      v73[0] = v83;
      type metadata accessor for FormatGroupNodeDataLayoutAttributes();
      v37 = swift_allocObject();
      v38 = v26[7];
      *(v37 + 16) = v26[6];
      *(v37 + 24) = v38;
      v39 = v26[9];
      *(v37 + 32) = v26[8];
      *(v37 + 40) = v39;
      v40 = v26[11];
      *(v37 + 48) = v26[10];
      *(v37 + 56) = v40;
      *(v37 + 64) = v26;
      *(v37 + 72) = v30;
      *(v37 + 80) = v32;
      *(v37 + 88) = v27;
      *(v37 + 96) = v28;
      *(v37 + 104) = v33;
      *(v37 + 112) = v34;
      *(v37 + 128) = v35;
      *(v37 + 136) = v71;
      *(v37 + 144) = v72;
      *(v37 + 168) = v64;
      *(v37 + 152) = v65;
      *(v37 + 184) = v67;
      *(v37 + 192) = v36;
      *(v37 + 200) = MEMORY[0x1E69E7CD0];
      *(v37 + 208) = v68;
      sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
      v41 = swift_allocObject();
      *(v41 + 1) = xmmword_1D7273AE0;
      v42 = swift_allocObject();
      *(v42 + 16) = v37;
      *(v42 + 24) = a2;
      *(v42 + 32) = v63;
      *(v42 + 40) = a4;
      *(v42 + 48) = v66;
      v41[4] = v34;
      v41[5] = v42 | 0x2000000000000000;
      sub_1D6FF924C(&v84, v70, &qword_1EDF32430, &type metadata for FormatResizing);
      sub_1D6FFC820(v85, v70);

      sub_1D6FFC87C(v73, v70, &unk_1EDF0F0F8, type metadata accessor for FormatGroupNodeStyle, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      sub_1D5EBC314(v63, a4);

      sub_1D6C5C120(&v79);
    }

    return v41;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1D6FF533C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v25 - v12;
  v14 = *(a1 + 56);
  if (v14)
  {
    type metadata accessor for FormatGroupLayoutFactory.Bound();
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);

    sub_1D69B70E8(v15, v16, v13);
    v17 = type metadata accessor for FormatNodeStateData.Data();
    if ((*(*(v17 - 8) + 48))(v13, 1, v17) == 1)
    {

      sub_1D6FFCA9C(v13, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        v18 = *(v13 + 3);
        v27 = *(v13 + 2);
        v28 = v18;
        v29 = v13[64];
        v19 = *(v13 + 1);
        v25 = *v13;
        v26 = v19;
        v20 = sub_1D69B7228(v15, v16);
        sub_1D5D27F7C(0, qword_1EDF064E0, type metadata accessor for FormatGroupNodeMaskLayoutAttributes, type metadata accessor for FormatGroupNodeMaskDataLayoutAttributes);
        v21 = swift_allocObject();
        v22 = v25;
        *(v21 + 40) = v26;
        v23 = v28;
        *(v21 + 56) = v27;
        *(v21 + 72) = v23;
        *(v21 + 16) = v14;
        *(v21 + 88) = v29;
        *(v21 + 24) = v22;
        *a5 = v21;
        a5[1] = v20;
        a5[2] = a2;
        a5[3] = a3;
        a5[4] = a4;
        sub_1D5EBC314(a2, a3);
        return result;
      }

      sub_1D6FFC9A0(v13, type metadata accessor for FormatNodeStateData.Data);
    }
  }

  a5[4] = 0;
  result = 0.0;
  *a5 = 0u;
  *(a5 + 1) = 0u;
  return result;
}

uint64_t sub_1D6FF55D0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v40[-v9];
  v11 = type metadata accessor for FormatAdMetricsData();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v40[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D6FFC87C(a1, v10, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v6, sub_1D5D27F7C);
  v15 = type metadata accessor for FormatNodeStateData.Data();
  if ((*(*(v15 - 8) + 48))(v10, 1, v15) == 1)
  {
    sub_1D6FFCA9C(v10, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
    __break(1u);
    goto LABEL_12;
  }

  if (swift_getEnumCaseMultiPayload())
  {
LABEL_12:
    sub_1D6FFC9A0(v10, type metadata accessor for FormatNodeStateData.Data);
    __break(1u);
    goto LABEL_13;
  }

  sub_1D5BDAB74(v10, v14, type metadata accessor for FormatAdMetricsData);
  if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) == 0xB)
  {
    v16 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v17 = v16[17];
    if (v17 && *(a3 + 16))
    {
      v18 = v16[16];

      v19 = sub_1D5B69D90(v18, v17);
      if (v20)
      {
        v21 = *(*(a3 + 56) + 8 * v19);
        swift_beginAccess();
        v22 = v21[10];
        v23 = v21[11];

        sub_1D72634FC();
        v21[8] = v24;
        v21[9] = v25;
        v21[10] = v22;
        v21[11] = v23;
LABEL_10:
        swift_beginAccess();
        v26 = v16[10];
        v27 = v16[11];
        sub_1D72634FC();
        v16[8] = v28;
        v16[9] = v29;
        v16[10] = v26;
        v16[11] = v27;
        sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1D7273AE0;
        v31 = v16[13];
        sub_1D61CAFE8();
        v33 = v32;
        v34 = swift_allocBox();
        v36 = v35;
        v37 = *(v33 + 48);
        v38 = *(v33 + 64);
        sub_1D5BE4148(v14, v35, type metadata accessor for FormatAdMetricsData);
        *(v36 + v37) = v16;
        *(v36 + v38) = v21;
        *(v30 + 32) = v31;
        *(v30 + 40) = v34 | 0x4000000000000000;
        sub_1D6FFC9A0(v14, type metadata accessor for FormatAdMetricsData);
        return v30;
      }
    }

    else
    {
    }

    v21 = 0;
    goto LABEL_10;
  }

LABEL_13:
  result = sub_1D6FFC9A0(v14, type metadata accessor for FormatAdMetricsData);
  __break(1u);
  return result;
}

uint64_t sub_1D6FF59C8(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v28 - v7;
  v9 = type metadata accessor for FormatMicaData();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6FFC87C(a1, v8, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v4, sub_1D5D27F7C);
  v13 = type metadata accessor for FormatNodeStateData.Data();
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1D6FFCA9C(v8, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
    __break(1u);
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() != 11)
  {
LABEL_6:
    sub_1D6FFC9A0(v8, type metadata accessor for FormatNodeStateData.Data);
    __break(1u);
    goto LABEL_7;
  }

  sub_1D5BDAB74(v8, v12, type metadata accessor for FormatMicaData);
  if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) == 0xC)
  {
    v14 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    swift_beginAccess();
    v15 = v14[10];
    v16 = v14[11];

    sub_1D72634FC();
    v14[8] = v17;
    v14[9] = v18;
    v14[10] = v15;
    v14[11] = v16;
    sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1D7273AE0;
    v20 = v14[14];
    sub_1D6FFCA00(0, &qword_1EC884E90, type metadata accessor for FormatMicaData, type metadata accessor for FormatMicaNodeLayoutAttributes);
    v22 = v21;
    v23 = swift_allocBox();
    v25 = v24;
    v26 = *(v22 + 48);
    sub_1D5BE4148(v12, v24, type metadata accessor for FormatMicaData);
    *(v25 + v26) = v14;
    *(v19 + 32) = v20;
    *(v19 + 40) = v23 | 0x4000000000000004;
    sub_1D6FFC9A0(v12, type metadata accessor for FormatMicaData);
    return v19;
  }

LABEL_7:
  result = sub_1D6FFC9A0(v12, type metadata accessor for FormatMicaData);
  __break(1u);
  return result;
}

uint64_t sub_1D6FF5D74(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v28 - v7;
  v9 = type metadata accessor for FormatShareAttributionData();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6FFC87C(a1, v8, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v4, sub_1D5D27F7C);
  v13 = type metadata accessor for FormatNodeStateData.Data();
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1D6FFCA9C(v8, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
    __break(1u);
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() != 15)
  {
LABEL_6:
    sub_1D6FFC9A0(v8, type metadata accessor for FormatNodeStateData.Data);
    __break(1u);
    goto LABEL_7;
  }

  sub_1D5BDAB74(v8, v12, type metadata accessor for FormatShareAttributionData);
  if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) == 0x10)
  {
    v14 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D7273AE0;
    v16 = v14[15];
    sub_1D6FFCA00(0, &qword_1EC899970, type metadata accessor for FormatShareAttributionData, type metadata accessor for FormatShareAttributionNodeLayoutAttributes);
    v18 = v17;
    v19 = swift_allocBox();
    v21 = v20;
    v22 = *(v18 + 48);
    sub_1D5BE4148(v12, v20, type metadata accessor for FormatShareAttributionData);
    swift_beginAccess();
    v23 = v14[12];
    v24 = v14[13];

    sub_1D72634FC();
    v14[10] = v25;
    v14[11] = v26;
    v14[12] = v23;
    v14[13] = v24;
    *(v21 + v22) = v14;
    *(v15 + 32) = v16;
    *(v15 + 40) = v19 | 0x6000000000000004;
    sub_1D6FFC9A0(v12, type metadata accessor for FormatShareAttributionData);
    return v15;
  }

LABEL_7:
  result = sub_1D6FFC9A0(v12, type metadata accessor for FormatShareAttributionData);
  __break(1u);
  return result;
}

uint64_t sub_1D6FF6120(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v31[-v9];
  sub_1D6FFC87C(a1, &v31[-v9], &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v6, sub_1D5D27F7C);
  v11 = type metadata accessor for FormatNodeStateData.Data();
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    sub_1D6FFCA9C(v10, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
    __break(1u);
    goto LABEL_12;
  }

  if (swift_getEnumCaseMultiPayload() != 19)
  {
LABEL_12:
    sub_1D6FFC9A0(v10, type metadata accessor for FormatNodeStateData.Data);
    __break(1u);
    goto LABEL_13;
  }

  v12 = *v10;
  if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) == 0x13)
  {
    v13 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v14 = v13[24];
    if (v14 && *(a3 + 16))
    {
      v15 = v13[23];

      v16 = sub_1D5B69D90(v15, v14);
      if (v17)
      {
        v18 = *(*(a3 + 56) + 8 * v16);
        swift_beginAccess();
        v19 = v18[10];
        v20 = v18[11];

        sub_1D72634FC();
        v18[8] = v21;
        v18[9] = v22;
        v18[10] = v19;
        v18[11] = v20;
LABEL_10:
        swift_beginAccess();
        v23 = v13[10];
        v24 = v13[11];
        sub_1D72634FC();
        v13[8] = v25;
        v13[9] = v26;
        v13[10] = v23;
        v13[11] = v24;
        sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1D7273AE0;
        v28 = v13[21];
        v29 = swift_allocObject();
        *(v29 + 16) = v12;
        *(v29 + 24) = v13;
        *(v29 + 32) = v18;
        *(v27 + 32) = v28;
        *(v27 + 40) = v29 | 0x8000000000000004;
        return v27;
      }
    }

    else
    {
    }

    v18 = 0;
    goto LABEL_10;
  }

LABEL_13:

  __break(1u);
  return result;
}

uint64_t sub_1D6FF6464(uint64_t a1, unint64_t a2, void *a3, double a4, double a5)
{
  v136 = a3;
  v9 = sub_1D725895C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v124 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v130 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v116 - v19;
  v21 = type metadata accessor for FormatItemNodeData();
  MEMORY[0x1EEE9AC00](v21, v22);
  v129 = &v116 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v116 - v26;
  sub_1D6FFC87C(a1, v20, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v16, sub_1D5D27F7C);
  v28 = type metadata accessor for FormatNodeStateData.Data();
  if ((*(*(v28 - 8) + 48))(v20, 1, v28) == 1)
  {
    sub_1D6FFCA9C(v20, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
    __break(1u);
    goto LABEL_27;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
LABEL_27:
    sub_1D6FFC9A0(v20, type metadata accessor for FormatNodeStateData.Data);
    __break(1u);
    goto LABEL_28;
  }

  sub_1D5BDAB74(v20, v27, type metadata accessor for FormatItemNodeData);
  if ((a2 >> 59) & 0x1E | (a2 >> 2) & 1)
  {
LABEL_28:
    result = sub_1D6FFC9A0(v27, type metadata accessor for FormatItemNodeData);
    __break(1u);
    return result;
  }

  v29 = *(a2 + 16);
  v30 = v29[2];
  v31 = *(v30 + 72);
  if (v31)
  {
    v126 = v10;
    v122 = v9;
    v132 = *(v30 + 64);

    v134 = v31;

    v33 = v136;
    v34 = sub_1D6FEF804(v32, 0.0, 0.0, a4, a5);
    v116 = v35;

    v36 = v29[3];
    v37 = v29[4];
    v38 = *&v27[*(v21 + 36)];
    v118 = *(v33 + *(type metadata accessor for FormatGroupLayoutFactory.Bound() + 52));
    v127 = v27;
    sub_1D5BE4148(v27, v130, type metadata accessor for FeedItem);
    v39 = v29[8];
    v128 = v29[7];
    v40 = v29[2];
    v41 = v40[2];
    v42 = v40[3];
    v43 = v40[4];
    v44 = v40[5];
    v45 = v40[11];
    v131 = v40[10];
    v47 = v40[12];
    v46 = v40[13];
    v123 = v47;
    v135 = v46;
    v48 = *(v34 + 16);
    v49 = MEMORY[0x1E69E7CC0];
    v133 = v37;
    v125 = v29;
    v121 = v39;
    v120 = v38;
    v119 = v36;
    v117 = v34;
    if (v48)
    {

      sub_1D5EB1500(v39);
      v137[0] = v49;

      sub_1D6998434(0, v48, 0);
      v50 = v137[0];
      v51 = *(v137[0] + 16);
      v52 = (v34 + 40);
      do
      {
        v54 = *v52;
        v52 += 2;
        v53 = v54;
        v137[0] = v50;
        v55 = v50[3];

        if (v51 >= v55 >> 1)
        {
          sub_1D6998434((v55 > 1), v51 + 1, 1);
          v50 = v137[0];
        }

        v50[2] = v51 + 1;
        v50[v51++ + 4] = v53;
        --v48;
      }

      while (v48);
      v56 = v126;
      v29 = v125;
    }

    else
    {

      sub_1D5EB1500(v39);

      v50 = MEMORY[0x1E69E7CC0];
      v56 = v126;
    }

    v57 = v45;
    v58 = *(v29[2] + 120);

    v60 = sub_1D6FB9AE4(v59);
    swift_bridgeObjectRelease_n();

    v137[0] = v58;
    sub_1D6986BE4(v60);
    sub_1D5D27F7C(0, &qword_1EDF1AFA8, type metadata accessor for FormatAccessibilityLayoutValue, MEMORY[0x1E69E62F8]);
    sub_1D6FFC2E8(&unk_1EDF1AF98);
    v61 = sub_1D72623CC();

    MEMORY[0x1EEE9AC00](v62, v63);
    *(&v116 - 2) = v136;
    v64 = sub_1D5FBC744(sub_1D6FFCC34, (&v116 - 4), v61);

    v27 = v127;
    v65 = v129;
    sub_1D5BE4148(v127, v129, type metadata accessor for FormatItemNodeData);
    v66 = *(v29[2] + 128);
    sub_1D5D27F7C(0, &qword_1EDF23420, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatDataLayoutAttributes);
    v67 = swift_allocObject();
    v67[2] = v41;
    v117 = v67 + 2;
    v67[3] = v42;
    v67[4] = v43;
    v67[5] = v44;
    v68 = v134;
    v67[6] = v132;
    v67[7] = v68;
    v67[8] = v131;
    v67[9] = v57;
    v69 = v135;
    v67[10] = v123;
    v67[11] = v69;
    v67[13] = v64;
    sub_1D5BE4148(v65, v67 + *(*v67 + 136), type metadata accessor for FormatItemNodeData);
    *(v67 + *(*v67 + 144)) = v66;
    v70 = (v67 + *(*v67 + 168));
    *v70 = a4;
    v70[1] = a5;
    v123 = v67;
    v67[12] = v50;
    v141 = MEMORY[0x1E69E7CC0];
    v71 = v50[2];
    if (v71)
    {
      v72 = v50 + 4;
      v132 = type metadata accessor for FormatDataLayoutViewModel();
      v116 = v50;

      v73 = MEMORY[0x1E69E7CC0];
      do
      {
        v74 = *v72;
        v136 = v72 + 1;
        v75 = swift_allocObject();
        *(v75 + 16) = v74;
        v140 = v74;
        swift_retain_n();
        sub_1D6EE7974(v137);
        v76 = v137[1];
        v77 = v139;
        *(v75 + 24) = v137[0];
        *(v75 + 32) = v76;
        *(v75 + 40) = v138;
        *(v75 + 56) = v77;

        MEMORY[0x1DA6F9CE0](v78);
        if (*((v141 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v141 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v79 = v141;
        v80 = *(v75 + 24);
        v81 = *(v75 + 32);
        v82 = *(v75 + 40);
        v134 = *(v75 + 48);
        v135 = v80;
        v83 = *(v75 + 56);

        sub_1D5F33D5C(v82);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v131 = v79;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v73 = sub_1D698F980(0, *(v73 + 2) + 1, 1, v73);
        }

        v86 = *(v73 + 2);
        v85 = *(v73 + 3);
        if (v86 >= v85 >> 1)
        {
          v73 = sub_1D698F980((v85 > 1), v86 + 1, 1, v73);
        }

        *(v73 + 2) = v86 + 1;
        v87 = &v73[40 * v86];
        v88 = v134;
        *(v87 + 4) = v135;
        *(v87 + 5) = v81;
        *(v87 + 6) = v82;
        *(v87 + 7) = v88;
        v87[64] = v83;
        --v71;
        v89 = v133;
        v72 = v136;
      }

      while (v71);
      v27 = v127;
      v56 = v126;
      v90 = v116;
      v91 = v131;
    }

    else
    {

      v90 = v50;
      v73 = MEMORY[0x1E69E7CC0];
      v91 = MEMORY[0x1E69E7CC0];
      v89 = v133;
    }

    sub_1D6FFC9A0(v129, type metadata accessor for FormatItemNodeData);

    v92 = v123;
    *(v123 + *(*v123 + 152)) = v91;
    type metadata accessor for FormatDataLayoutViewKey();
    v93 = swift_allocObject();
    *(v93 + 16) = v73;
    *(v92 + *(*v92 + 160)) = v93;
    sub_1D72634FC();
    v95 = v94;
    v97 = v96;
    swift_beginAccess();
    v92[2] = v95;
    v92[3] = v97;
    v92[4] = v43;
    v92[5] = v44;
    type metadata accessor for FormatItemNodeDataLayoutAttributes();
    v98 = swift_allocObject();
    *(v98 + 32) = v119;
    *(v98 + 40) = v89;
    *(v98 + 48) = 0;
    *(v98 + 56) = 0;
    *(v98 + 64) = v120;
    *(v98 + 72) = v118;
    v99 = v130;
    sub_1D5BE4148(v130, v98 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_feedItem, type metadata accessor for FeedItem);
    *(v98 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_zIndex) = v128;
    *(v98 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_visibility) = v121;
    *(v98 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes) = v92;
    v100 = v124;
    sub_1D725894C();
    v101 = sub_1D725893C();
    v103 = v102;
    v104 = *(v56 + 8);

    v104(v100, v122);
    *(v98 + 16) = v101;
    *(v98 + 24) = v103;
    v105 = sub_1D6EE5A3C(v90);
    v107 = v106;
    sub_1D6FFC9A0(v99, type metadata accessor for FeedItem);

    v108 = (v98 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_reuseIdentifier);
    *v108 = v105;
    v108[1] = v107;
    sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1D7273AE0;
    sub_1D6FFCA00(0, &qword_1EDF10430, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatItemNodeDataLayoutAttributes);
    v110 = v109;
    v111 = swift_allocBox();
    v113 = v112;
    v114 = *(v110 + 48);
    sub_1D5BE4148(v27, v112, type metadata accessor for FormatItemNodeData);
    *(v113 + v114) = v98;
    *(v31 + 32) = v128;
    *(v31 + 40) = v111 | 0x8000000000000000;
  }

  sub_1D6FFC9A0(v27, type metadata accessor for FormatItemNodeData);
  return v31;
}

uint64_t sub_1D6FF7198(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v28 - v7;
  v9 = type metadata accessor for FormatSponsoredBannerData();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6FFC87C(a1, v8, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v4, sub_1D5D27F7C);
  v13 = type metadata accessor for FormatNodeStateData.Data();
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1D6FFCA9C(v8, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
    __break(1u);
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() != 20)
  {
LABEL_6:
    sub_1D6FFC9A0(v8, type metadata accessor for FormatNodeStateData.Data);
    __break(1u);
    goto LABEL_7;
  }

  sub_1D5BDAB74(v8, v12, type metadata accessor for FormatSponsoredBannerData);
  if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) == 0x14)
  {
    v14 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D7273AE0;
    v16 = v14[13];
    sub_1D6FFCA00(0, qword_1EDF24398, type metadata accessor for FormatSponsoredBannerData, type metadata accessor for FormatSponsoredBannerLayoutAttributes);
    v18 = v17;
    v19 = swift_allocBox();
    v21 = v20;
    v22 = *(v18 + 48);
    sub_1D5BE4148(v12, v20, type metadata accessor for FormatSponsoredBannerData);
    swift_beginAccess();
    v23 = v14[10];
    v24 = v14[11];

    sub_1D72634FC();
    v14[8] = v25;
    v14[9] = v26;
    v14[10] = v23;
    v14[11] = v24;
    *(v21 + v22) = v14;
    *(v15 + 32) = v16;
    *(v15 + 40) = v19 | 0x9000000000000000;
    sub_1D6FFC9A0(v12, type metadata accessor for FormatSponsoredBannerData);
    return v15;
  }

LABEL_7:
  result = sub_1D6FFC9A0(v12, type metadata accessor for FormatSponsoredBannerData);
  __break(1u);
  return result;
}

uint64_t sub_1D6FF7540@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D6FFC378();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v23 - v15;
  v17 = *a1;
  type metadata accessor for FormatGroupLayoutFactory.Bound();
  sub_1D69B70E8(*(v17 + 16), *(v17 + 24), v16);
  v18 = *(v5 + 56);
  *v8 = *(v17 + 32);
  sub_1D6FFC410(v16, &v8[v18], &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data);
  v19 = type metadata accessor for FormatNodeStateData.Data();
  if ((*(*(v19 - 8) + 48))(&v8[v18], 1, v19) == 1)
  {
    if (*v8 - 18 >= 6)
    {
      type metadata accessor for FormatDataAccessibilityValue();
      v20 = swift_allocObject();
      *(v20 + 16) = v17;
      *(v20 + 24) = 0xF000000000000007;
LABEL_6:
      *a2 = v20;

      return sub_1D6FFCA9C(&v8[v18], &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
    }
  }

  else
  {
    sub_1D6FFC87C(&v8[v18], v12, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v21 = *v12;
      type metadata accessor for FormatDataAccessibilityValue();
      v20 = swift_allocObject();
      *(v20 + 16) = v17;
      *(v20 + 24) = v21;
      goto LABEL_6;
    }

    sub_1D6FFC9A0(v12, type metadata accessor for FormatNodeStateData.Data);
  }

  *a2 = 0;
  return sub_1D6FFC9A0(v8, sub_1D6FFC378);
}

uint64_t sub_1D6FF7858(uint64_t a1)
{
  result = sub_1D6FFA0A0(&qword_1EDF26100, type metadata accessor for FormatGroupLayoutFactory.Bound);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6FF78E8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v130 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_138:
    v6 = *v130;
    if (*v130)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_171;
      }

      goto LABEL_140;
    }

LABEL_176:
    __break(1u);
    return result;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v6 + 1 >= v5)
    {
      v5 = v6 + 1;
    }

    else
    {
      v140 = v7;
      v8 = 8 * v6;
      v9 = (*a3 + 8 * v6);
      v11 = *v9;
      v10 = v9 + 2;
      v12 = *(*(*a3 + 8 * (v6 + 1)) + *a5);
      swift_beginAccess();
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      v15 = *(v11 + *a5);
      result = swift_beginAccess();
      v16 = *(v15 + 24);
      if (v14 == v16)
      {
        v17 = v13 <= *(v15 + 16);
      }

      else
      {
        v17 = v14 < v16;
      }

      v18 = v6 + 2;
      while (v5 != v18)
      {
        v19 = *(v10 - 1);
        v20 = *(*v10 + *a5);
        swift_beginAccess();
        v21 = *(v20 + 16);
        v22 = *(v20 + 24);
        v23 = *(v19 + *a5);
        result = swift_beginAccess();
        v24 = *(v23 + 24);
        v25 = v21 > *(v23 + 16);
        if (v22 != v24)
        {
          v25 = v22 >= v24;
        }

        ++v18;
        ++v10;
        if (v17 == v25)
        {
          v5 = v18 - 1;
          break;
        }
      }

      v7 = v140;
      if (v17)
      {
        if (v5 < v6)
        {
          goto LABEL_167;
        }

        if (v6 < v5)
        {
          v26 = 8 * v5 - 8;
          v27 = v5;
          v28 = v6;
          do
          {
            if (v28 != --v27)
            {
              v29 = *a3;
              if (!*a3)
              {
                goto LABEL_173;
              }

              v30 = *(v29 + v8);
              *(v29 + v8) = *(v29 + v26);
              *(v29 + v26) = v30;
            }

            ++v28;
            v26 -= 8;
            v8 += 8;
          }

          while (v28 < v27);
        }
      }
    }

    v31 = a3[1];
    if (v5 >= v31)
    {
      v34 = v5;
      if (v5 < v6)
      {
        goto LABEL_163;
      }
    }

    else
    {
      if (__OFSUB__(v5, v6))
      {
        goto LABEL_166;
      }

      v32 = v5;
      if (v5 - v6 >= a4)
      {
        goto LABEL_31;
      }

      v33 = (v6 + a4);
      if (__OFADD__(v6, a4))
      {
        goto LABEL_168;
      }

      if (v33 >= v31)
      {
        v33 = a3[1];
      }

      if (v33 < v6)
      {
        goto LABEL_169;
      }

      if (v5 == v33)
      {
LABEL_31:
        v34 = v5;
        if (v5 < v6)
        {
          goto LABEL_163;
        }
      }

      else
      {
        v139 = v6;
        v142 = v7;
        v110 = *a3;
        v111 = *a3 + 8 * v5 - 8;
        v112 = v6 - v5;
        __srca = v33;
        do
        {
          v113 = v32;
          v114 = *(v110 + 8 * v32);
          v115 = v112;
          v116 = v111;
          do
          {
            v117 = *v116;
            v6 = a5;
            v118 = *(v114 + *a5);
            swift_beginAccess();
            v119 = *(v118 + 16);
            v120 = *(v118 + 24);
            v7 = *(v117 + *a5);
            swift_beginAccess();
            v121 = *(v7 + 3);
            v122 = v119 <= *(v7 + 2);
            if (v120 != v121)
            {
              v122 = v120 < v121;
            }

            if (!v122)
            {
              break;
            }

            if (!v110)
            {
              goto LABEL_170;
            }

            v123 = *v116;
            v114 = v116[1];
            *v116 = v114;
            v116[1] = v123;
            --v116;
          }

          while (!__CFADD__(v115++, 1));
          v32 = v113 + 1;
          v111 += 8;
          --v112;
        }

        while ((v113 + 1) != __srca);
        v34 = __srca;
        v6 = v139;
        v7 = v142;
        if (__srca < v139)
        {
          goto LABEL_163;
        }
      }
    }

    v132 = v34;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D698BA94(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v36 = *(v7 + 2);
    v35 = *(v7 + 3);
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      result = sub_1D698BA94((v35 > 1), v36 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v37;
    v38 = &v7[16 * v36];
    *(v38 + 4) = v6;
    *(v38 + 5) = v132;
    v39 = *v130;
    if (!*v130)
    {
      goto LABEL_174;
    }

    if (v36)
    {
      break;
    }

LABEL_3:
    v5 = a3[1];
    v6 = v132;
    if (v132 >= v5)
    {
      goto LABEL_138;
    }
  }

  __src = *v130;
  while (1)
  {
    v40 = v37 - 1;
    if (v37 >= 4)
    {
      v45 = &v7[16 * v37 + 32];
      v46 = *(v45 - 64);
      v47 = *(v45 - 56);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_152;
      }

      v50 = *(v45 - 48);
      v49 = *(v45 - 40);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_153;
      }

      v52 = &v7[16 * v37];
      v54 = *v52;
      v53 = *(v52 + 1);
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_155;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_158;
      }

      if (v56 >= v48)
      {
        v74 = &v7[16 * v40 + 32];
        v76 = *v74;
        v75 = *(v74 + 1);
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_162;
        }

        if (v43 < v77)
        {
          v40 = v37 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

    if (v37 == 3)
    {
      v41 = *(v7 + 4);
      v42 = *(v7 + 5);
      v51 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      v44 = v51;
LABEL_54:
      if (v44)
      {
        goto LABEL_154;
      }

      v57 = &v7[16 * v37];
      v59 = *v57;
      v58 = *(v57 + 1);
      v60 = __OFSUB__(v58, v59);
      v61 = v58 - v59;
      v62 = v60;
      if (v60)
      {
        goto LABEL_157;
      }

      v63 = &v7[16 * v40 + 32];
      v65 = *v63;
      v64 = *(v63 + 1);
      v51 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v51)
      {
        goto LABEL_160;
      }

      if (__OFADD__(v61, v66))
      {
        goto LABEL_161;
      }

      if (v61 + v66 >= v43)
      {
        if (v43 < v66)
        {
          v40 = v37 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_68;
    }

    v67 = &v7[16 * v37];
    v69 = *v67;
    v68 = *(v67 + 1);
    v51 = __OFSUB__(v68, v69);
    v61 = v68 - v69;
    v62 = v51;
LABEL_68:
    if (v62)
    {
      goto LABEL_156;
    }

    v70 = &v7[16 * v40];
    v72 = *(v70 + 4);
    v71 = *(v70 + 5);
    v51 = __OFSUB__(v71, v72);
    v73 = v71 - v72;
    if (v51)
    {
      goto LABEL_159;
    }

    if (v73 < v61)
    {
      goto LABEL_3;
    }

LABEL_75:
    if (v40 - 1 >= v37)
    {
      break;
    }

    v78 = *a3;
    if (!*a3)
    {
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
      goto LABEL_175;
    }

    v135 = v40 - 1;
    v136 = v40;
    v79 = *&v7[16 * v40 + 32];
    v80 = *&v7[16 * v40 + 40];
    v138 = *&v7[16 * v40 + 16];
    v141 = v7;
    v81 = (v78 + 8 * v138);
    v82 = 8 * v79;
    v83 = (v78 + 8 * v79);
    v137 = v80;
    v84 = 8 * v80;
    v85 = (v78 + 8 * v80);
    v6 = 8 * v79 - 8 * v138;
    v86 = 8 * v80 - 8 * v79;
    if (v6 >= v86)
    {
      if (v83 != v39 || v85 <= v39)
      {
        memmove(v39, (v78 + 8 * v79), 8 * v80 - 8 * v79);
      }

      v87 = &v39[v86];
      if (v86 < 1 || v82 <= 8 * v138)
      {
        v88 = __src;
        v108 = v83;
      }

      else
      {
        do
        {
          __dst = v83;
          v97 = v83 - 8;
          v85 -= 8;
          v98 = v87;
          while (1)
          {
            v99 = *(v98 - 1);
            v98 -= 8;
            v100 = v85 + 8;
            v83 = v97;
            v101 = *v97;
            v6 = a5;
            v102 = *(v99 + *a5);
            swift_beginAccess();
            v103 = *(v102 + 16);
            v104 = *(v102 + 24);
            v105 = *(v101 + *a5);
            swift_beginAccess();
            v106 = *(v105 + 24);
            v107 = v103 <= *(v105 + 16);
            if (v104 != v106)
            {
              v107 = v104 < v106;
            }

            if (v107)
            {
              break;
            }

            if (v100 != v87)
            {
              *v85 = *v98;
            }

            v85 -= 8;
            v87 = v98;
            v97 = v83;
            if (v98 <= __src)
            {
              v87 = v98;
              v88 = __src;
              v108 = __dst;
              goto LABEL_116;
            }
          }

          v108 = v83;
          if (v100 != __dst)
          {
            *v85 = *v83;
          }

          v88 = __src;
        }

        while (v87 > __src && v81 < v83);
      }
    }

    else
    {
      if (v81 != v39 || v83 <= v39)
      {
        memmove(v39, (v78 + 8 * v138), 8 * v79 - 8 * v138);
      }

      v87 = &v39[v6];
      if (v6 >= 1 && v84 > v82)
      {
        v88 = __src;
        while (1)
        {
          v89 = *v88;
          v90 = *(*v83 + *a5);
          swift_beginAccess();
          v91 = *(v90 + 16);
          v92 = *(v90 + 24);
          v6 = *(v89 + *a5);
          swift_beginAccess();
          v93 = *(v6 + 24);
          v94 = v91 <= *(v6 + 16);
          if (v92 != v93)
          {
            v94 = v92 < v93;
          }

          if (!v94)
          {
            break;
          }

          v95 = v83;
          v96 = v81 == v83;
          v83 += 8;
          if (!v96)
          {
            goto LABEL_91;
          }

LABEL_92:
          v81 += 8;
          if (v88 >= v87 || v83 >= v85)
          {
            goto LABEL_113;
          }
        }

        v95 = v88;
        v96 = v81 == v88;
        v88 += 8;
        if (v96)
        {
          goto LABEL_92;
        }

LABEL_91:
        *v81 = *v95;
        goto LABEL_92;
      }

      v88 = __src;
LABEL_113:
      v108 = v81;
    }

LABEL_116:
    if (v108 != v88 || v108 >= &v88[(v87 - v88 + (v87 - v88 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v108, v88, 8 * ((v87 - v88) / 8));
    }

    v7 = v137;
    v39 = __src;
    if (v137 < v138)
    {
      goto LABEL_150;
    }

    v6 = v141;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1D62FF50C(v141);
    }

    if (v136 > *(v6 + 16))
    {
      goto LABEL_151;
    }

    v109 = v6 + 16 * v135;
    *(v109 + 32) = v138;
    *(v109 + 40) = v137;
    result = sub_1D62FF480(v136);
    v7 = v6;
    v37 = *(v6 + 16);
    if (v37 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
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
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  result = sub_1D62FF50C(v7);
  v7 = result;
LABEL_140:
  v125 = *(v7 + 2);
  if (v125 >= 2)
  {
    while (*a3)
    {
      v126 = *&v7[16 * v125];
      v127 = *&v7[16 * v125 + 24];
      sub_1D6FF822C((*a3 + 8 * v126), (*a3 + 8 * *&v7[16 * v125 + 16]), (*a3 + 8 * v127), v6, a5);
      if (v131)
      {
      }

      if (v127 < v126)
      {
        goto LABEL_164;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1D62FF50C(v7);
      }

      if (v125 - 2 >= *(v7 + 2))
      {
        goto LABEL_165;
      }

      v128 = &v7[16 * v125];
      *v128 = v126;
      *(v128 + 1) = v127;
      result = sub_1D62FF480(v125 - 1);
      v125 = *(v7 + 2);
      if (v125 <= 1)
      {
      }
    }

LABEL_175:
    __break(1u);
    goto LABEL_176;
  }
}

uint64_t sub_1D6FF822C(char *__dst, char *__src, char *a3, char *a4, void *a5)
{
  v5 = a4;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      v26 = a3;
      memmove(a4, __src, 8 * v13);
      a3 = v26;
    }

    v15 = &v5[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
      v43 = v7;
      v44 = v5;
LABEL_28:
      v27 = v6 - 8;
      v28 = a3 - 8;
      v29 = v15;
      v30 = v15;
      do
      {
        v31 = *(v30 - 1);
        v30 -= 8;
        v32 = v28;
        v33 = v28 + 8;
        v34 = v27;
        v35 = *v27;
        v36 = *(v31 + *a5);
        swift_beginAccess();
        v37 = *(v36 + 16);
        v38 = *(v36 + 24);
        v39 = *(v35 + *a5);
        swift_beginAccess();
        v40 = *(v39 + 24);
        v41 = v37 <= *(v39 + 16);
        if (v38 != v40)
        {
          v41 = v38 < v40;
        }

        if (v41)
        {
          a3 = v32;
          if (v33 != v6)
          {
            *v32 = *v34;
          }

          v5 = v44;
          v15 = v29;
          if (v29 <= v44 || (v6 = v34, v34 <= v43))
          {
            v6 = v34;
            goto LABEL_41;
          }

          goto LABEL_28;
        }

        if (v33 != v29)
        {
          *v32 = *v30;
        }

        v28 = v32 - 8;
        v29 = v30;
        v5 = v44;
        v27 = v34;
      }

      while (v30 > v44);
      v15 = v30;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      v14 = a3;
      memmove(a4, __dst, 8 * v10);
      a3 = v14;
    }

    v15 = &v5[8 * v10];
    if (v8 >= 8 && v6 < a3)
    {
      while (1)
      {
        v16 = a3;
        v17 = *v5;
        v18 = *(*v6 + *a5);
        swift_beginAccess();
        v19 = *(v18 + 16);
        v20 = *(v18 + 24);
        v21 = *(v17 + *a5);
        swift_beginAccess();
        v22 = *(v21 + 24);
        v23 = v19 <= *(v21 + 16);
        if (v20 != v22)
        {
          v23 = v20 < v22;
        }

        if (!v23)
        {
          break;
        }

        v24 = v6;
        v25 = v7 == v6;
        v6 += 8;
        if (!v25)
        {
          goto LABEL_18;
        }

LABEL_19:
        v7 += 8;
        if (v5 < v15)
        {
          a3 = v16;
          if (v6 < v16)
          {
            continue;
          }
        }

        goto LABEL_21;
      }

      v24 = v5;
      v25 = v7 == v5;
      v5 += 8;
      if (v25)
      {
        goto LABEL_19;
      }

LABEL_18:
      *v7 = *v24;
      goto LABEL_19;
    }

LABEL_21:
    v6 = v7;
  }

LABEL_41:
  if (v6 != v5 || v6 >= &v5[(v15 - v5 + (v15 - v5 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v5, 8 * ((v15 - v5) / 8));
  }

  return 1;
}

uint64_t sub_1D6FF854C(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  sub_1D6FFC7BC(0, &qword_1EDF1A4B0, type metadata accessor for FormatSlot);
  result = sub_1D72640FC();
  v6 = 0;
  v33 = a3;
  v34 = result;
  v9 = *(a3 + 64);
  v8 = a3 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v31 = result + 64;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = (*(v33 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      v21 = (*(v33 + 56) + (v17 << 6));
      v22 = v21[3];
      v24 = *v21;
      v23 = v21[1];
      v43[2] = v21[2];
      v43[3] = v22;
      v43[0] = v24;
      v43[1] = v23;
      v25 = v21[1];
      v39 = *v21;
      v40 = v25;
      v26 = v21[3];
      v41 = v21[2];
      v42 = v26;

      sub_1D5E3FA60(v43, &v35);
      a1(&v44, &v39);
      if (v3)
      {
        break;
      }

      v35 = v39;
      v36 = v40;
      v37 = v41;
      v38 = v42;
      sub_1D5E3FABC(&v35);
      *(v31 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = v34;
      v27 = (v34[6] + 16 * v17);
      *v27 = v19;
      v27[1] = v20;
      *(v34[7] + 8 * v17) = v44;
      v28 = v34[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_17;
      }

      v34[2] = v30;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    v35 = v39;
    v36 = v40;
    v37 = v41;
    v38 = v42;
    sub_1D5E3FABC(&v35);
    return v34;
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return result;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FF8764(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  sub_1D6FFC758();
  result = sub_1D72640FC();
  v6 = result;
  v7 = 0;
  v25 = a3;
  v10 = *(a3 + 64);
  v9 = a3 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v23 = result + 64;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v19 = *(*(v25 + 48) + 8 * v18);
      v27 = *(*(v25 + 56) + 8 * v18);

      a1(&v26, &v27);
      if (v3)
      {
        break;
      }

      *(v23 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(v6[6] + 8 * v18) = v19;
      *(v6[7] + 16 * v18) = v26;
      v20 = v6[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_17;
      }

      v6[2] = v22;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    return v6;
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v6;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FF8914(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  sub_1D6FFC7BC(0, &unk_1EDF1A4D0, type metadata accessor for FormatStateViewNodeStateDataLayoutAttributes);
  result = sub_1D72640FC();
  v6 = 0;
  v28 = a3;
  v9 = *(a3 + 64);
  v8 = a3 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v25 = result + 64;
  v26 = result;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = (*(v28 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      v30 = *(*(v28 + 56) + 8 * v17);

      a1(&v29, &v30);

      if (v3)
      {
        break;
      }

      result = v26;
      *(v25 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v21 = (v26[6] + 16 * v17);
      *v21 = v19;
      v21[1] = v20;
      *(v26[7] + 8 * v17) = v29;
      v22 = v26[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_17;
      }

      v26[2] = v24;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    return v26;
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return result;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

void *sub_1D6FF8AE8@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = (*result >> 59) & 0x1E | (*result >> 2) & 1;
  if (v2 > 0x12)
  {
    *a2 = 10;
  }

  else
  {
    *a2 = qword_1D7380268[v2];
  }

  return result;
}

uint64_t sub_1D6FF8B20@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  result = sub_1D5FA6CB0(*a2, *a1, a4);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t sub_1D6FF8B5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v7 = *a2;
  v9 = *a1;
  v8 = a1[1];

  sub_1D6B744A8(v7, &v14);
  if (v4)
  {

    *a3 = v4;
  }

  else
  {
    v11 = v14;
    *a4 = v9;
    *(a4 + 1) = v8;
    *(a4 + 2) = v11;
    *(a4 + 3) = 1;
    v12 = *(type metadata accessor for FormatOption() + 28);
    v13 = type metadata accessor for FormatVersionRequirement(0);
    return (*(*(v13 - 8) + 56))(&a4[v12], 1, 1, v13);
  }

  return result;
}

double sub_1D6FF8C38@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  sub_1D6FE0118(*a2, *a1, *(a1 + 8), *(a1 + 16), &v9);
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    v8 = v10;
    result = *&v9;
    *a4 = v9;
    *(a4 + 16) = v8;
  }

  return result;
}

void sub_1D6FF8CD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5B49474(255, &qword_1EDF41FC0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t objectdestroy_9Tm_3()
{
  v1 = type metadata accessor for GroupLayoutContext();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = sub_1D7259F5C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v1 + 20);
  v5 = sub_1D7259CFC();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = v0 + v2 + *(v1 + 24);
  if (*(v6 + 24) >= 2uLL)
  {
  }

  v7 = type metadata accessor for FeedLayoutSolverOptions(0);
  v8 = *(v7 + 36);
  v9 = type metadata accessor for FeedLayoutSolverOptions.PluginOptions(0);
  if (!(*(*(v9 - 8) + 48))(v6 + v8, 1, v9))
  {
    v10 = sub_1D725E23C();
    (*(*(v10 - 8) + 8))(v6 + v8, v10);
  }

  if (*(v6 + *(v7 + 40) + 8) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D6FF8F84(uint64_t (*a1)(unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for GroupLayoutContext() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + v4);
  v6 = *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v5, v6);
}

uint64_t sub_1D6FF9060(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1D6FF8CD0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D6FF90CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_1D6FF8CD0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D6FF9128(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FormatLayout;
    v8[1] = type metadata accessor for FormatLayoutAttributes();
    v8[2] = sub_1D5EB5218();
    v8[3] = sub_1D6FFA0A0(&qword_1EDF28608, type metadata accessor for FormatLayoutAttributes);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D6FF924C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1D6FFC8F0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D6FF93E8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D6FFC8F0(255, a3, a4, MEMORY[0x1E69E62F8]);
    v5 = sub_1D726393C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D6FF9454(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1D6FF9DCC(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D6FF94C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1D6FF9DCC(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1D6FF9524()
{
  if (!qword_1EDF2CA90)
  {
    sub_1D6FF95B8();
    sub_1D6FFA0A0(&qword_1EDF20938, sub_1D6FF95B8);
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF2CA90);
    }
  }
}

void sub_1D6FF95B8()
{
  if (!qword_1EDF20930)
  {
    v0 = type metadata accessor for FormatCodingEmptyArrayStrategy();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF20930);
    }
  }
}

void sub_1D6FF9618(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v7;
  v12 = *(a1 + 128);
  v8 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v8;
  v9 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v9;
  v10 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v10;
  sub_1D6FCD138(v11, *v6, a3);
  if (v4)
  {
    *a2 = v4;
  }
}

uint64_t sub_1D6FF969C@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  result = sub_1D6FEB9C0(**(v2 + 16), a2);
  if (v3)
  {
    *a1 = v3;
  }

  return result;
}

uint64_t sub_1D6FF96F0@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = sub_1D5FA6CB0(**(v3 + 16), *a1, a3);
  if (v4)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t sub_1D6FF9770(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  sub_1D6FF9DCC(0, a3, a4, a5, type metadata accessor for FormatObject);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

void sub_1D6FF9A98()
{
  if (!qword_1EDF1B9A8)
  {
    sub_1D601014C();
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B9A8);
    }
  }
}

void sub_1D6FF9BD0()
{
  if (!qword_1EDF180A8)
  {
    sub_1D6FF9DCC(255, &qword_1EDF3BFD0, sub_1D6FF9CE4, &type metadata for FormatLayoutValue, MEMORY[0x1E69D7198]);
    type metadata accessor for IssueCoverViewLayoutAttributesFactory();
    sub_1D5EB5218();
    sub_1D6FF9D38();
    sub_1D6FFA0A0(qword_1EDF06B60, type metadata accessor for IssueCoverViewLayoutAttributesFactory);
    v0 = sub_1D7259D3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF180A8);
    }
  }
}

unint64_t sub_1D6FF9CE4()
{
  result = qword_1EDF2F498;
  if (!qword_1EDF2F498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F498);
  }

  return result;
}

unint64_t sub_1D6FF9D38()
{
  result = qword_1EDF17FF8;
  if (!qword_1EDF17FF8)
  {
    sub_1D6FF9DCC(255, &qword_1EDF3BFD0, sub_1D6FF9CE4, &type metadata for FormatLayoutValue, MEMORY[0x1E69D7198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF17FF8);
  }

  return result;
}

void sub_1D6FF9DCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D6FF9E98@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  result = sub_1D6FCBBA0(**(v2 + 16), a2);
  if (v3)
  {
    *a1 = v3;
  }

  return result;
}

uint64_t sub_1D6FFA0A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D6FFA0E8(uint64_t a1, void *a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v79 = a4;
  v7 = v5;
  v8 = v4;
  sub_1D6FF9DCC(0, &qword_1EDF3C0D8, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D70D8]);
  v85 = v11;
  v82 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v74 - v13);
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v88 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v84 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v87 = &v74 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v80 = (&v74 - v24);
  MEMORY[0x1EEE9AC00](v25, v26);
  v78 = &v74 - v27;
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = &v74 - v30;
  v99 = a1;
  swift_beginAccess();
  v32 = v8[2];
  v33 = v8[3];

  v89 = sub_1D6E8DD40(v32, v33);
  v81 = v34;

  v35 = v8[6];
  v90 = a2;
  if (v35)
  {
    v86 = v14;
    v36 = v16;
    v37 = a3;
    v39 = v8[10];
    v38 = v8[11];
    v40 = v8[8];
    v41 = v8[9];
    v42 = v8[7];
    v92 = v35;
    v93 = v42;
    v94 = v40;
    v95 = v41;
    v96 = v39;
    v97 = v38;

    sub_1D5DEA234(v39);

    sub_1D68687FC(v90, v31);
    v43 = v7;
    if (v7)
    {

      v44 = v96;

      sub_1D5CBF568(v44);
    }

    v47 = v96;
    v91 = v97;

    a2 = v90;

    sub_1D5CBF568(v47);

    v46 = 0;
    v77 = v37;
    v16 = v36;
    v14 = v86;
  }

  else
  {
    v77 = a3;
    v46 = 1;
    v43 = v7;
  }

  v48 = sub_1D7259B8C();
  (*(*(v48 - 8) + 56))(v31, v46, 1, v48);
  swift_beginAccess();
  v49 = v8[5];
  swift_beginAccess();
  v98 = v8[4];
  v50 = v98;
  v51 = v81;

  sub_1D5C82CD8(v50);
  v52 = v80;
  sub_1D5BEB9F4(a2, v89, v51, v80);
  if (v43)
  {
    sub_1D6FFCA9C(v31, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
    swift_bridgeObjectRelease_n();

    return sub_1D5C92A8C(v98);
  }

  else
  {
    v91 = 0;
    v76 = v31;

    sub_1D5C92A8C(v98);
    result = (*(v16 + 16))(v87, v52, v88);
    v53 = v49;
    v83 = *(v49 + 16);
    if (v83)
    {
      v86 = v14;
      v54 = 0;
      v55 = (v82 + 1);
      v56 = v16 + 8;
      v75 = v16;
      v57 = (v16 + 32);
      v82 = v56;
      v74 = v56 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      while (v54 < *(v53 + 16))
      {
        v58 = v53;
        v59 = *(v53 + 8 * v54 + 32);
        v98 = v59;
        sub_1D5CFEC98(v59);
        v60 = v86;
        v61 = v91;
        sub_1D618F188(a2, v86);
        v91 = v61;
        if (v61)
        {

          v72 = *v82;
          v73 = v88;
          (*v82)(v87, v88);
          v72(v80, v73);
          sub_1D6FFCA9C(v76, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
          return sub_1D5CFED88(v59);
        }

        ++v54;
        v62 = v84;
        v63 = v87;
        v64 = v88;
        sub_1D725A50C();
        sub_1D5CFED88(v59);
        (*v55)(v60, v85);
        v65 = *v82;
        (*v82)(v63, v64);
        v66 = v64;
        a2 = v90;
        result = (*v57)(v63, v62, v66);
        v53 = v58;
        if (v83 == v54)
        {
          v67 = v77;
          v16 = v75;
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    else
    {
      v65 = *(v16 + 8);
      v67 = v77;
LABEL_15:
      v68 = v88;
      v65(v80, v88);

      v69 = v78;
      (*(v16 + 32))(v78, v87, v68);
      v70 = v67(0);
      v79(v70);
      v71 = v76;
      sub_1D7259A8C();

      v65(v69, v68);
      return sub_1D6FFCA9C(v71, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
    }
  }

  return result;
}

uint64_t sub_1D6FFA96C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void), uint64_t a6)
{
  v33 = a4;
  v34 = a5;
  v10 = v7;
  v11 = v6;
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = v32 - v16;
  v41 = a1;
  swift_beginAccess();
  v18 = v11[2];
  v19 = v11[3];

  v32[4] = sub_1D6E8DD40(v18, v19);

  v20 = v11[5];
  if (v20)
  {
    v32[2] = a3;
    v32[3] = a6;
    v22 = v11[9];
    v21 = v11[10];
    v24 = v11[7];
    v23 = v11[8];
    v25 = v11[6];
    v35 = v20;
    v36 = v25;
    v37 = v24;
    v38 = v23;
    v39 = v22;
    v40 = v21;

    sub_1D5DEA234(v22);

    sub_1D68687FC(a2, v17);
    if (v10)
    {

      v26 = v39;

      sub_1D5CBF568(v26);
    }

    v29 = v39;
    v32[1] = v40;

    sub_1D5CBF568(v29);

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v30 = sub_1D7259B8C();
  (*(*(v30 - 8) + 56))(v17, v28, 1, v30);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v31 = swift_allocObject();
  *(v31 + 16) = v11;
  *(v31 + 24) = a2;
  v33(0);
  v34();

  sub_1D7259ACC();

  return sub_1D6FFCA9C(v17, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
}

uint64_t objectdestroy_131Tm()
{
  sub_1D6FF9DCC(0, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
  v2 = v1;
  v16 = *(*(v1 - 8) + 80);
  v14 = *(*(v1 - 8) + 64);
  v17 = sub_1D725D80C();
  v3 = *(v17 - 8);
  v4 = *(v3 + 80);
  swift_unownedRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  v15 = (v16 + 96) & ~v16;

  if (*(v0 + v15 + 56) >= 0x10uLL)
  {
  }

  v5 = v0 + v15 + *(v2 + 36);

  v6 = type metadata accessor for FormatMetadata();
  v7 = v6[5];
  v8 = sub_1D725BD1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v5 + v7, v8);
  v10(v5 + v6[6], v8);
  v11 = v6[7];
  if (!(*(v9 + 48))(v5 + v11, 1, v8))
  {
    v10(v5 + v11, v8);
  }

  v12 = (v14 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_1D61CA538(*(v0 + v12), *(v0 + v12 + 8));
  (*(v3 + 8))(v0 + ((v12 + v4 + 9) & ~v4), v17);

  return swift_deallocObject();
}

uint64_t sub_1D6FFAFC4(uint64_t a1, uint64_t a2)
{
  sub_1D6FF9DCC(0, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
  v6 = (*(*(v5 - 8) + 80) + 96) & ~*(*(v5 - 8) + 80);
  v7 = (*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1D725D80C() - 8);
  return sub_1D6C20254(a1, a2, v2[2], v2[3], v2[4], v2[5], v2[6], (v2 + 7), (v2 + v6), *(v2 + v7), *(v2 + v7 + 8), v2 + ((v7 + *(v8 + 80) + 9) & ~*(v8 + 80)));
}

uint64_t objectdestroy_24Tm()
{

  if (v0[12])
  {

    if (v0[14])
    {

      if (v0[18] >= 3uLL)
      {
      }
    }
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_27Tm_1()
{

  if (v0[12])
  {

    if (v0[14])
    {

      if (v0[18] >= 3uLL)
      {
      }
    }
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_125Tm_0()
{
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  v2 = (*(*(v1 - 8) + 80) + 64) & ~*(*(v1 - 8) + 80);
  swift_unownedRelease();

  v3 = sub_1D7259B8C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_149Tm()
{
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  swift_unownedRelease();

  v3 = sub_1D7259B8C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

unint64_t sub_1D6FFB6D8(unint64_t a1, unint64_t a2)
{
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  v6 = (*(*(v5 - 8) + 80) + 48) & ~*(*(v5 - 8) + 80);
  return sub_1D6046600(a1, a2, v2[2], v2[3], v2[4], v2[5], v2 + v6, *(v2 + ((*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_152Tm()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_142Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_166Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_170Tm(void (*a1)(void))
{

  a1(*(v1 + 40));

  return swift_deallocObject();
}

uint64_t objectdestroy_195Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_216Tm()
{
  v1 = type metadata accessor for SharedItem();
  v2 = *(*(v1 - 8) + 80);

  sub_1D5C92A8C(v0[5]);

  sub_1D5EB15C4(v0[9]);

  if (v0[14])
  {

    if (v0[18] >= 3)
    {
    }
  }

  v3 = v0 + ((v2 + 176) & ~v2);
  v4 = sub_1D725891C();
  (*(*(v4 - 8) + 8))(v3, v4);

  v5 = *(v1 + 28);
  v6 = sub_1D72585BC();
  (*(*(v6 - 8) + 8))(&v3[v5], v6);

  return swift_deallocObject();
}

uint64_t objectdestroy_46Tm_0()
{
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);

  v3 = sub_1D7259B8C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_1D6FFBED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void, void, unint64_t, void, void, void, void, void))
{
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  v8 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v9 = (*(*(v7 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  return a3(a1, a2, *(v3 + 16), *(v3 + 24), v3 + v8, *(v3 + v9), *(v3 + v10), *(v3 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_179Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_233Tm()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_236Tm()
{

  v1 = *(v0 + 56);
  if (v1 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_239Tm()
{

  if (*(v0 + 56))
  {

    v1 = *(v0 + 96);
    if (v1 <= 0xFD)
    {
      sub_1D5ED34A0(*(v0 + 80), *(v0 + 88), v1);
    }
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_243Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1D6FFC25C(uint64_t a1, char a2)
{
  if (a2 <= 0xFDu)
  {
    return sub_1D5ECEDE8(a1, a2);
  }

  return a1;
}

uint64_t sub_1D6FFC2E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5D27F7C(255, &qword_1EDF1AFA8, type metadata accessor for FormatAccessibilityLayoutValue, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6FFC378()
{
  if (!qword_1EDF26770)
  {
    sub_1D5D27F7C(255, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF26770);
    }
  }
}

uint64_t sub_1D6FFC410(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5D27F7C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_1D6FFC4B8()
{
  if (!qword_1EDF2C468)
  {
    sub_1D5D27F7C(255, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF2C468);
    }
  }
}

void sub_1D6FFC5A4(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, char a8)
{
  if (a8)
  {
    if (a8 != 1)
    {
      return;
    }

    a1 = a5;
  }

  else
  {
    a7 = a3;
  }
}

uint64_t objectdestroy_676Tm()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

void sub_1D6FFC6B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1D5D27F7C(255, a4, a5, type metadata accessor for FormatAnimationNodeDataLayoutAttributes);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v9)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D6FFC758()
{
  if (!qword_1EDF1A508)
  {
    sub_1D6333A84();
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A508);
    }
  }
}

void sub_1D6FFC7BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726413C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D6FFC87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1D6FFC8F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t objectdestroy_30Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return swift_deallocObject();
}

uint64_t sub_1D6FFC9A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6FFCA00(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D6FFCA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D6FFCF10(void *a1)
{
  v2 = *v1;
  if (*v1 < 3)
  {
    return qword_1D7380420[v2];
  }

  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  sub_1D5D0AFBC(v5);
  sub_1D5D0AFBC(v6);
  if ([a1 userInterfaceStyle] == 2)
  {
    sub_1D5D0AFBC(v6);
    v7 = sub_1D6FFCF10(a1);
    sub_1D5D0AFCC(v5);
    sub_1D5D0AFCC(v6);
    v8 = v6;
  }

  else
  {
    sub_1D5D0AFBC(v5);
    v7 = sub_1D6FFCF10(a1);
    sub_1D5D0AFCC(v5);
    sub_1D5D0AFCC(v6);
    v8 = v5;
  }

  sub_1D5D0AFCC(v8);
  return v7;
}

BOOL static FormatImageRenderingMode.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (!v3)
    {
      sub_1D5D0AFCC(0);
      v4 = 0;
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (v2 != 1)
  {
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        sub_1D5D0AFCC(2uLL);
        v4 = 2;
LABEL_10:
        sub_1D5D0AFCC(v4);
        return 1;
      }
    }

    else if (v3 >= 3)
    {
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      v11 = *(v2 + 16);
      v9 = v7;
      v10 = v6;
      sub_1D5D0AFBC(v3);
      sub_1D5D0AFBC(v2);
      sub_1D5D0AFBC(v7);
      sub_1D5D0AFBC(v6);
      if (static FormatImageRenderingMode.== infix(_:_:)(&v11, &v9))
      {
        v8 = static FormatImageRenderingMode.== infix(_:_:)(&v11 + 8, &v10);
        sub_1D5D0AFCC(v7);
        sub_1D5D0AFCC(v6);
        sub_1D5D0AFCC(v2);
        sub_1D5D0AFCC(v3);
        return (v8 & 1) != 0;
      }

      sub_1D5D0AFCC(v7);
      sub_1D5D0AFCC(v6);
LABEL_13:
      sub_1D5D0AFCC(v2);
      sub_1D5D0AFCC(v3);
      return 0;
    }

LABEL_12:
    sub_1D5D0AFBC(*a2);
    sub_1D5D0AFBC(v2);
    goto LABEL_13;
  }

  if (v3 != 1)
  {
    goto LABEL_12;
  }

  sub_1D5D0AFCC(1uLL);
  sub_1D5D0AFCC(1uLL);
  return v3;
}

unint64_t sub_1D6FFD17C(uint64_t a1)
{
  result = sub_1D5CD9018();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6FFD1B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  return v1;
}

uint64_t sub_1D6FFD228()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  return v1;
}

uint64_t sub_1D6FFD2B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  return v1;
}

uint64_t sub_1D6FFD324@<X0>(uint64_t a1@<X8>)
{
  v31 = type metadata accessor for DebugFormatCompilerResultOutput();
  MEMORY[0x1EEE9AC00](v31, v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for FormatFile();
  MEMORY[0x1EEE9AC00](v30, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v28 - v10;
  v12 = type metadata accessor for DebugFormatCompilerResultEntry();
  v32 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v17 = v33;
  if (!v33)
  {
    v26 = 1;
    goto LABEL_15;
  }

  v29 = a1;
  v18 = *(v33 + 16);
  if (!v18)
  {
LABEL_12:

    v26 = 1;
    a1 = v29;
LABEL_15:
    v27 = type metadata accessor for FormatPackage();
    return (*(*(v27 - 8) + 56))(a1, v26, 1, v27);
  }

  v19 = 0;
  v20 = *(v12 + 20);
  v21 = v33 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
  while (v19 < *(v17 + 16))
  {
    sub_1D6FFE9AC(v21 + *(v32 + 72) * v19, v15, type metadata accessor for DebugFormatCompilerResultEntry);
    sub_1D6FFE9AC(&v15[v20], v4, type metadata accessor for DebugFormatCompilerResultOutput);
    sub_1D6FFEA14(v15, type metadata accessor for DebugFormatCompilerResultEntry);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v22 = type metadata accessor for DebugFormatCompilerResultOutput;
        v23 = v4;
        goto LABEL_5;
      }

      sub_1D67D37A8();
    }

    sub_1D6FFEA74(v4, v11, type metadata accessor for FormatFile);
    sub_1D6FFEA74(v11, v7, type metadata accessor for FormatFile);
    if (swift_getEnumCaseMultiPayload() == 5)
    {

      a1 = v29;
      sub_1D6FFEA74(v7, v29, type metadata accessor for FormatPackage);
      v26 = 0;
      goto LABEL_15;
    }

    v22 = type metadata accessor for FormatFile;
    v23 = v7;
LABEL_5:
    result = sub_1D6FFEA14(v23, v22);
    if (v18 == ++v19)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6FFD6E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();
}

uint64_t sub_1D6FFD750()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  return v1;
}

uint64_t sub_1D6FFD7C4@<X0>(unint64_t a1@<X3>, char a2@<W4>, _BYTE *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v6 = sub_1D6186F50(a1, a2 & 1, v8);

  *a3 = v6 & 1;
  return result;
}

uint64_t sub_1D6FFD874(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  if (*a1 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v8 = sub_1D72600BC();
    sub_1D5FF1290(&v10, a5, a6 & 1);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v8 = sub_1D72600BC();
    sub_1D62D1B60(a5, a6 & 1);
  }

  v8(v11, 0);
}

uint64_t sub_1D6FFD984()
{

  v1 = OBJC_IVAR____TtC8NewsFeed22DebugFormatPackageTree__identifier;
  sub_1D6FFDF44();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8NewsFeed22DebugFormatPackageTree__debugPackage;
  v4 = MEMORY[0x1E695C070];
  sub_1D6FFDF94(0, &qword_1EC899308, type metadata accessor for DebugFormatPackageInventory, MEMORY[0x1E695C070]);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = OBJC_IVAR____TtC8NewsFeed22DebugFormatPackageTree__compilerResultEntries;
  sub_1D6FFDF94(0, &qword_1EC896C90, sub_1D6E2D448, v4);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC8NewsFeed22DebugFormatPackageTree__workspaceGroup;
  sub_1D6FFDF94(0, &qword_1EC899310, sub_1D6195740, v4);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC8NewsFeed22DebugFormatPackageTree__layoutContext;
  sub_1D6FFDF94(0, &qword_1EC899318, sub_1D68D69A0, v4);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);

  v12 = OBJC_IVAR____TtC8NewsFeed22DebugFormatPackageTree__expanded;
  sub_1D6FFDF94(0, &qword_1EC899320, sub_1D6FFDFF8, v4);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugFormatPackageTree()
{
  result = qword_1EC8992F0;
  if (!qword_1EC8992F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6FFDC88()
{
  sub_1D6FFDF44();
  if (v0 <= 0x3F)
  {
    sub_1D6FFDF94(319, &qword_1EC899308, type metadata accessor for DebugFormatPackageInventory, MEMORY[0x1E695C070]);
    if (v1 <= 0x3F)
    {
      sub_1D6FFDF94(319, &qword_1EC896C90, sub_1D6E2D448, MEMORY[0x1E695C070]);
      if (v2 <= 0x3F)
      {
        sub_1D6FFDF94(319, &qword_1EC899310, sub_1D6195740, MEMORY[0x1E695C070]);
        if (v3 <= 0x3F)
        {
          sub_1D6FFDF94(319, &qword_1EC899318, sub_1D68D69A0, MEMORY[0x1E695C070]);
          if (v4 <= 0x3F)
          {
            sub_1D6FFDF94(319, &qword_1EC899320, sub_1D6FFDFF8, MEMORY[0x1E695C070]);
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1D6FFDF44()
{
  if (!qword_1EC899300)
  {
    v0 = sub_1D72600EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC899300);
    }
  }
}

void sub_1D6FFDF94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D6FFDFF8()
{
  if (!qword_1EC899328)
  {
    sub_1D5E2A08C();
    v0 = sub_1D7262BAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC899328);
    }
  }
}

uint64_t sub_1D6FFE054@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  *a1 = v3;
  return result;
}

uint64_t sub_1D6FFE0D4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D72600DC();
}

uint64_t sub_1D6FFE150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a2;
  v82 = a3;
  v80 = a1;
  v3 = MEMORY[0x1E695C070];
  sub_1D6FFDF94(0, &qword_1EC899320, sub_1D6FFDFF8, MEMORY[0x1E695C070]);
  v78 = *(v4 - 8);
  v79 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v77 = &v64 - v6;
  sub_1D6FFDF94(0, &qword_1EC899318, sub_1D68D69A0, v3);
  v75 = *(v7 - 8);
  v76 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v74 = &v64 - v9;
  sub_1D68D69A0(0);
  v73 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v72 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v71 = &v64 - v15;
  sub_1D6FFDF94(0, &qword_1EC899310, sub_1D6195740, v3);
  v68 = *(v16 - 8);
  v69 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v67 = &v64 - v18;
  sub_1D6195740(0);
  v84 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v83 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v65 = &v64 - v24;
  sub_1D6FFDF94(0, &qword_1EC896C90, sub_1D6E2D448, v3);
  v66 = v25;
  v64 = *(v25 - 1);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v64 - v27;
  sub_1D6FFDF44();
  v30 = v29;
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v32);
  v34 = &v64 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1D725895C();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v37);
  v39 = &v64 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = OBJC_IVAR____TtC8NewsFeed22DebugFormatPackageTree__identifier;
  sub_1D725894C();
  v41 = sub_1D725893C();
  v43 = v42;
  (*(v36 + 8))(v39, v35);
  v86 = v41;
  v87 = v43;
  sub_1D726009C();
  v44 = v70;
  (*(v31 + 32))(v70 + v40, v34, v30);
  v45 = OBJC_IVAR____TtC8NewsFeed22DebugFormatPackageTree__compilerResultEntries;
  v86 = 0;
  sub_1D6E2D448(0);
  sub_1D726009C();
  v46 = v44;
  (*(v64 + 32))(v44 + v45, v28, v66);
  v47 = OBJC_IVAR____TtC8NewsFeed22DebugFormatPackageTree__workspaceGroup;
  v48 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  v49 = v65;
  (*(*(v48 - 8) + 56))(v65, 1, 1, v48);
  sub_1D6FFE9AC(v49, v83, sub_1D6195740);
  v50 = v67;
  sub_1D726009C();
  v66 = sub_1D6195740;
  sub_1D6FFEA14(v49, sub_1D6195740);
  v52 = v68;
  v51 = v69;
  (*(v68 + 32))(v44 + v47, v50, v69);
  v53 = OBJC_IVAR____TtC8NewsFeed22DebugFormatPackageTree__layoutContext;
  v54 = type metadata accessor for DebugFormatEditorLayoutContext();
  v55 = v71;
  (*(*(v54 - 8) + 56))(v71, 1, 1, v54);
  sub_1D6FFE9AC(v55, v72, sub_1D68D69A0);
  v56 = v74;
  sub_1D726009C();
  sub_1D6FFEA14(v55, sub_1D68D69A0);
  (*(v75 + 32))(v44 + v53, v56, v76);
  v57 = OBJC_IVAR____TtC8NewsFeed22DebugFormatPackageTree__expanded;
  v86 = sub_1D5E29EA4(&unk_1F5119718);
  sub_1D6FFDFF8();
  v58 = v77;
  sub_1D726009C();
  (*(v78 + 32))(v44 + v57, v58, v79);
  v59 = v80;
  *(v44 + 16) = v80;
  swift_beginAccess();
  v85 = v81;
  type metadata accessor for DebugFormatPackageInventory();

  sub_1D726009C();
  swift_endAccess();
  v60 = v82;
  sub_1D6FFE9AC(v82, v49, sub_1D6195740);
  swift_beginAccess();
  (*(v52 + 8))(v44 + v47, v51);
  sub_1D6FFE9AC(v49, v83, sub_1D6195740);
  sub_1D726009C();
  v61 = v66;
  sub_1D6FFEA14(v49, v66);
  swift_endAccess();
  type metadata accessor for DebugFormatCanvasGenerator();
  swift_allocObject();
  v62 = sub_1D5F26CE8(v59);
  sub_1D6FFEA14(v60, v61);
  *(v46 + OBJC_IVAR____TtC8NewsFeed22DebugFormatPackageTree_canvasGenerator) = v62;
  return v46;
}

uint64_t sub_1D6FFE9AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6FFEA14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6FFEA74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t UIUserInterfaceSizeClass.description.getter(uint64_t a1)
{
  v1 = 0x746361706D6F63;
  v2 = 0x6E776F6E6B6E75;
  if (a1 == 2)
  {
    v2 = 0x72616C75676572;
  }

  if (a1 != 1)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x6669636570736E75;
  }
}

uint64_t sub_1D6FFEB5C()
{
  v1 = *v0;
  v2 = 0x746361706D6F63;
  v3 = 0x6E776F6E6B6E75;
  if (*v0 == 2)
  {
    v3 = 0x72616C75676572;
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x6669636570736E75;
  }
}

id SportsKeyPlayerDataVisualization.leagueTag.getter()
{
  v1 = [*(v0 + 48) eventLeagueTag];

  return v1;
}

uint64_t SportsKeyPlayerDataVisualization.competitorTags.getter()
{
  v1 = [*(v0 + 48) eventCompetitorTags];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  sub_1D5B5534C(0, &qword_1EDF04500);
  v3 = sub_1D726267C();

  return v3;
}

void *SportsKeyPlayerDataVisualization.with(config:)(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1D72585BC();
  v39 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[1];
  v32 = *a1;
  v33 = v9;
  v10 = a1[2];
  v11 = a1[3];
  v12 = a1[5];
  v34 = a1[4];
  v35 = v11;
  v40 = v12;
  v41 = v10;
  v14 = *(v2 + 4);
  v36 = *(v2 + 5);
  v13 = v36;
  v37 = v14;
  v15 = *(v2 + 6);
  v16 = *(v39 + 16);
  v38 = v4;
  v16(v8, &v2[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_embedUrl], v4, v6);
  v17 = *&v2[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_urlDataSources];
  v18 = *&v2[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_roster];
  v19 = swift_allocObject();
  v19[4] = v14;
  v19[5] = v13;
  v19[6] = v15;
  (v16)(v19 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_embedUrl, v8, v4);
  *(v19 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_urlDataSources) = v17;
  v20 = (v19 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config);
  v22 = v32;
  v21 = v33;
  *v20 = v32;
  v20[1] = v21;
  v23 = v40;
  v25 = v34;
  v24 = v35;
  v20[2] = v41;
  v20[3] = v24;
  v20[4] = v25;
  v20[5] = v23;
  *(v19 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_roster) = v18;
  v42 = 14906;
  v43 = 0xE200000000000000;
  swift_unknownObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain();

  v26 = v36;

  MEMORY[0x1DA6F9910](v22, v21);
  v27 = v42;
  v28 = v43;
  v42 = sub_1D72583DC();
  v43 = v29;
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v37, v26);
  MEMORY[0x1DA6F9910](v27, v28);

  v30 = v43;
  v19[2] = v42;
  v19[3] = v30;
  v42 = v22;
  v43 = v21;
  v44 = v41;
  v45 = v24;
  v46 = v25;
  v47 = v40;
  sub_1D692133C(v8, &v42, 0xD00000000000001ALL, 0x80000001D73FA670, v19 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_configuredEmbedUrl);
  (*(v39 + 8))(v8, v38);

  swift_unknownObjectRelease();

  return v19;
}

char *SportsKeyPlayerDataVisualization.__allocating_init(umcCanonicalId:event:embedUrl:urlDataSources:roster:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v13 = swift_allocObject();
  v15 = *a7;
  v14 = a7[1];
  v16 = a7[3];
  v29 = a7[2];
  v30 = *a6;
  v17 = a7[4];
  v18 = a7[5];
  v33 = a1;
  *(v13 + 4) = a1;
  *(v13 + 5) = a2;
  v19 = v14;
  *(v13 + 6) = a3;
  v20 = OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_embedUrl;
  v21 = sub_1D72585BC();
  v22 = *(v21 - 8);
  v34 = v21;
  (*(v22 + 16))(&v13[v20], a4, v21);
  *&v13[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_urlDataSources] = a5;
  v23 = &v13[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config];
  *v23 = v15;
  v23[1] = v19;
  v23[2] = v29;
  v23[3] = v16;
  v23[4] = v17;
  v23[5] = v18;
  *&v13[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_roster] = v30;
  v32 = v18;

  swift_unknownObjectRetain();
  if (v19)
  {
    sub_1D5F8B638(v15, v19);
    MEMORY[0x1DA6F9910](v15, v19);
    v25 = 14906;
    v24 = 0xE200000000000000;
  }

  else
  {
    v25 = 0;
    v24 = 0xE000000000000000;
  }

  v35 = sub_1D72583DC();
  v36 = v26;
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v33, a2);

  MEMORY[0x1DA6F9910](v25, v24);

  v27 = v36;
  *(v13 + 2) = v35;
  *(v13 + 3) = v27;
  v35 = v15;
  v36 = v19;
  v37 = v29;
  v38 = v16;
  v39 = v17;
  v40 = v32;
  sub_1D692133C(a4, &v35, 0xD00000000000001ALL, 0x80000001D73FA670, &v13[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_configuredEmbedUrl]);
  swift_unknownObjectRelease();
  (*(v22 + 8))(a4, v34);
  sub_1D5F8BBC8(v15, v19);
  return v13;
}

uint64_t SportsKeyPlayerDataVisualization.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SportsKeyPlayerDataVisualization.umcCanonicalId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SportsKeyPlayerDataVisualization.config.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config);
  v3 = *(v1 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 8);
  v4 = *(v1 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 16);
  v5 = *(v1 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 24);
  v6 = *(v1 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 32);
  v7 = *(v1 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 40);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5F8B638(v2, v3);
}

char *SportsKeyPlayerDataVisualization.init(umcCanonicalId:event:embedUrl:urlDataSources:roster:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v8 = v7;
  v58 = a5;
  v15 = sub_1D72585BC();
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v55 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a6;
  v20 = *a7;
  v21 = a7[1];
  v22 = a7[2];
  v23 = a7[3];
  v24 = a7[4];
  v25 = a7[5];
  v52 = a1;
  v53 = v26;
  *(v8 + 4) = a1;
  *(v8 + 5) = a2;
  v27 = v20;
  v28 = a3;
  *(v8 + 6) = a3;
  v29 = v22;
  v30 = *(v26 + 16);
  v54 = a4;
  v31 = a4;
  v32 = v23;
  v56 = v33;
  v30(&v8[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_embedUrl], v31, v17);
  *&v8[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_urlDataSources] = v58;
  v34 = &v8[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config];
  v57 = v27;
  v58 = v24;
  *v34 = v27;
  v34[1] = v21;
  v35 = v21;
  v34[2] = v29;
  v34[3] = v32;
  v34[4] = v24;
  v34[5] = v25;
  *&v8[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_roster] = v19;
  v50 = v28;
  v51 = v32;
  v49 = v25;
  if (v21)
  {
    v59 = 14906;
    v60 = 0xE200000000000000;

    swift_unknownObjectRetain();
    v36 = v57;
    sub_1D5F8B638(v57, v21);
    v37 = v29;
    MEMORY[0x1DA6F9910](v36, v21);
    v39 = v59;
    v38 = v60;
  }

  else
  {

    swift_unknownObjectRetain();
    v39 = 0;
    v38 = 0xE000000000000000;
    v37 = v29;
  }

  v48[1] = v37;
  v40 = v54;
  v59 = sub_1D72583DC();
  v60 = v41;
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v52, a2);

  MEMORY[0x1DA6F9910](v39, v38);

  v42 = v60;
  *(v8 + 2) = v59;
  *(v8 + 3) = v42;
  v43 = v57;
  v59 = v57;
  v60 = v35;
  v61 = v37;
  v62 = v51;
  v63 = v58;
  v64 = v49;
  v44 = v55;
  sub_1D692133C(v40, &v59, 0xD00000000000001ALL, 0x80000001D73FA670, v55);
  swift_unknownObjectRelease();
  v45 = v53;
  v46 = v56;
  (*(v53 + 8))(v40, v56);
  sub_1D5F8BBC8(v43, v35);
  (*(v45 + 32))(&v8[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_configuredEmbedUrl], v44, v46);
  return v8;
}

uint64_t SportsKeyPlayerDataVisualization.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  SportsKeyPlayerDataVisualization.init(from:)(a1);
  return v2;
}

void *SportsKeyPlayerDataVisualization.init(from:)(void *a1)
{
  v47 = a1;
  v2 = v1;
  v48 = *v2;
  v4 = sub_1D72585BC();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v38 - v10;
  sub_1D5F8C77C();
  v13 = v12;
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D700053C(0, &qword_1EC899338, MEMORY[0x1E69E6F48]);
  v18 = *(v17 - 8);
  v43 = v17;
  v44 = v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = v38 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6FFFE54();
  v45 = v21;
  v22 = v46;
  v23 = v2;
  sub_1D7264B0C();
  if (v22)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v24 = v13;
    v46 = v11;
    v39 = v7;
    LOBYTE(v49) = 0;
    v26 = v42;
    v25 = v43;
    v23[4] = sub_1D72642BC();
    v23[5] = v27;
    LOBYTE(v49) = 1;
    sub_1D5F8C838(&unk_1EDF176A0, sub_1D5F8C77C);
    sub_1D726431C();
    sub_1D725BF7C();
    (v26[1])(v16, v24);
    v23[6] = v49;
    LOBYTE(v49) = 2;
    v28 = sub_1D5F8C838(&unk_1EDF45B50, MEMORY[0x1E6968FB0]);
    v29 = v46;
    v30 = v41;
    sub_1D726431C();
    v42 = v23;
    v38[1] = v28;
    v31 = *(v40 + 32);
    v31(v23 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_embedUrl, v29, v30);
    sub_1D7001D08(0, &qword_1EDF3C850, type metadata accessor for WebEmbedDataVisualizationURLDataSource, MEMORY[0x1E69E62F8]);
    v52 = 3;
    sub_1D7000B70(&unk_1EDF04AB0, &unk_1EDF065B0);
    v32 = v45;
    v46 = 0;
    sub_1D726431C();
    *(v23 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_urlDataSources) = v49;
    v52 = 6;
    sub_1D5F8C880();
    sub_1D726431C();
    *(v23 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_roster) = v49;
    v52 = 4;
    sub_1D5F8C8D4();
    sub_1D726427C();
    v33 = (v23 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config);
    v34 = v50;
    *v33 = v49;
    v33[1] = v34;
    v33[2] = v51;
    LOBYTE(v49) = 5;
    v23[2] = sub_1D72642BC();
    v23[3] = v35;
    LOBYTE(v49) = 7;
    v36 = v39;
    sub_1D726431C();
    (*(v44 + 8))(v32, v25);
    v31(v23 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_configuredEmbedUrl, v36, v30);
  }

  __swift_destroy_boxed_opaque_existential_1(v47);
  return v23;
}

unint64_t sub_1D6FFFE54()
{
  result = qword_1EC899340;
  if (!qword_1EC899340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899340);
  }

  return result;
}

uint64_t SportsKeyPlayerDataVisualization.encode(to:)(void *a1)
{
  v2 = sub_1D725ABEC();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F8C77C();
  v7 = v6;
  v40 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D700053C(0, &unk_1EC899350, MEMORY[0x1E69E6F58]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v35 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6FFFE54();
  v17 = v42;
  sub_1D7264B5C();
  LOBYTE(v43) = 0;
  v18 = v41;
  sub_1D72643FC();
  if (v18)
  {
    return (*(v13 + 8))(v16, v12);
  }

  v20 = v38;
  v21 = v39;
  v36 = v16;
  v37 = 0;
  v41 = v13;
  v43 = *(v17 + 48);
  v22 = qword_1EDF17E30;
  swift_unknownObjectRetain();
  if (v22 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v21, qword_1EDF17E38);
  v24 = (*(v20 + 16))(v5, v23, v21);
  MEMORY[0x1EEE9AC00](v24, v25);
  *(&v35 - 2) = sub_1D5B5534C(0, &qword_1EDF1A870);
  swift_getKeyPath();
  sub_1D725BF6C();
  LOBYTE(v43) = 1;
  sub_1D5F8C838(&unk_1EDF176B0, sub_1D5F8C77C);
  v26 = v36;
  v27 = v37;
  sub_1D726443C();
  (*(v40 + 8))(v10, v7);
  if (v27)
  {
    return (*(v41 + 8))(v26, v12);
  }

  LOBYTE(v43) = 2;
  sub_1D72585BC();
  sub_1D5F8C838(&unk_1EDF45B70, MEMORY[0x1E6968FB0]);
  v28 = v42;
  sub_1D726443C();
  v43 = *(v28 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_urlDataSources);
  v49 = 3;
  sub_1D7001D08(0, &qword_1EDF3C850, type metadata accessor for WebEmbedDataVisualizationURLDataSource, MEMORY[0x1E69E62F8]);
  sub_1D7000B70(&qword_1EDF04AC0, &qword_1EDF065C0);
  sub_1D726443C();
  v43 = *(v28 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_roster);
  v49 = 6;
  sub_1D5F8D78C();

  sub_1D726443C();

  v29 = *(v28 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 8);
  v30 = *(v28 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 16);
  v31 = *(v28 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 24);
  v32 = *(v28 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 32);
  v33 = *(v28 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 40);
  v43 = *(v28 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config);
  v44 = v29;
  v45 = v30;
  v46 = v31;
  v47 = v32;
  v48 = v33;
  v49 = 4;
  sub_1D5F8B638(v43, v29);
  sub_1D7000C34();
  sub_1D7000C84();
  sub_1D726443C();
  sub_1D5F8BBC8(v43, v44);
  LOBYTE(v43) = 5;
  sub_1D72643FC();
  v34 = v41;
  LOBYTE(v43) = 7;
  sub_1D726443C();
  return (*(v34 + 8))(v26, v12);
}

void sub_1D700053C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6FFFE54();
    v7 = a3(a1, &type metadata for SportsKeyPlayerDataVisualization.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D70005C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7001CBC();
  *a1 = result;
  return result;
}

void sub_1D70005F8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0064496C616369;
  v4 = 0x6E6F6E6143636D75;
  v5 = 0xE600000000000000;
  v6 = 0x726574736F72;
  if (v2 != 6)
  {
    v6 = 0xD000000000000012;
    v5 = 0x80000001D73B7A30;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6769666E6F63;
  if (v2 != 4)
  {
    v8 = 0x696669746E656469;
    v7 = 0xEA00000000007265;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6C72556465626D65;
  if (v2 != 2)
  {
    v10 = 0x53617461446C7275;
    v9 = 0xEE0073656372756FLL;
  }

  if (*v1)
  {
    v4 = 0x746E657665;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1D700070C()
{
  v1 = *v0;
  v2 = 0x6E6F6E6143636D75;
  v3 = 0x726574736F72;
  if (v1 != 6)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0x6769666E6F63;
  if (v1 != 4)
  {
    v4 = 0x696669746E656469;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6C72556465626D65;
  if (v1 != 2)
  {
    v5 = 0x53617461446C7275;
  }

  if (*v0)
  {
    v2 = 0x746E657665;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D700081C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7001CBC();
  *a1 = result;
  return result;
}

uint64_t sub_1D7000844(uint64_t a1)
{
  v2 = sub_1D6FFFE54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7000880(uint64_t a1)
{
  v2 = sub_1D6FFFE54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsKeyPlayerDataVisualization.deinit()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_embedUrl;
  v2 = sub_1D72585BC();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  sub_1D5F8BBC8(*(v0 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config), *(v0 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 8));
  v3(v0 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_configuredEmbedUrl, v2);
  return v0;
}

uint64_t SportsKeyPlayerDataVisualization.__deallocating_deinit()
{
  SportsKeyPlayerDataVisualization.deinit();

  return swift_deallocClassInstance();
}

void *sub_1D70009F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = SportsKeyPlayerDataVisualization.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t static SportsKeyPlayerDataVisualization.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t SportsKeyPlayerDataVisualizationLocation.identifier.getter()
{
  if (*v0)
  {
    return 0x666E49746E657665;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t SportsKeyPlayerDataVisualizationLocation.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D7000B70(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D7001D08(255, &qword_1EDF3C850, type metadata accessor for WebEmbedDataVisualizationURLDataSource, MEMORY[0x1E69E62F8]);
    sub_1D5F8C838(a2, type metadata accessor for WebEmbedDataVisualizationURLDataSource);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D7000C34()
{
  if (!qword_1EC899360)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC899360);
    }
  }
}

unint64_t sub_1D7000C84()
{
  result = qword_1EC881AA0;
  if (!qword_1EC881AA0)
  {
    sub_1D7000C34();
    sub_1D5F8D7E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881AA0);
  }

  return result;
}

unint64_t sub_1D7000D00()
{
  result = qword_1EC899368;
  if (!qword_1EC899368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899368);
  }

  return result;
}

uint64_t type metadata accessor for SportsKeyPlayerDataVisualization()
{
  result = qword_1EDF1E988;
  if (!qword_1EDF1E988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7000DA8()
{
  result = sub_1D72585BC();
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

unint64_t sub_1D7000EE4()
{
  result = qword_1EC899370;
  if (!qword_1EC899370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899370);
  }

  return result;
}

unint64_t sub_1D7000F3C()
{
  result = qword_1EC899378;
  if (!qword_1EC899378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899378);
  }

  return result;
}

unint64_t sub_1D7000F94()
{
  result = qword_1EC899380;
  if (!qword_1EC899380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899380);
  }

  return result;
}

void *sub_1D7000FE8(__int128 *a1, char *a2)
{
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v114 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v17 = a1[7];
  v169 = a1[6];
  v170 = v17;
  v171 = a1[8];
  v172 = *(a1 + 18);
  v18 = a1[3];
  v165 = a1[2];
  v166 = v18;
  v19 = a1[5];
  v167 = a1[4];
  v168 = v19;
  v20 = a1[1];
  v163 = *a1;
  v164 = v20;
  if (a2)
  {
    v133 = v16;
    v134 = v15;
    v21 = MEMORY[0x1E69E6F90];
    v144 = &v106 - v14;
    sub_1D7001D08(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    v106 = xmmword_1D7273AE0;
    *(inited + 16) = xmmword_1D7273AE0;
    sub_1D7001D08(0, &qword_1EC880490, sub_1D5EA74B8, v21);
    v23 = v22;
    sub_1D5EA74B8();
    v136 = v24;
    v25 = *(v24 - 8);
    v26 = *(v25 + 72);
    v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v131 = *(v25 + 80);
    v132 = v23;
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1D7274590;
    v107 = v28;
    v130 = v27;
    v29 = (v28 + v27);
    v31 = *(a2 + 4);
    v30 = *(a2 + 5);
    v32 = type metadata accessor for FormatInspectionItem(0);
    v110 = a2;
    v33 = v32;
    v34 = &v29[*(v32 + 24)];
    *v34 = v31;
    *(v34 + 1) = v30;
    v35 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    v36 = *(v35 - 8);
    v128 = *(v36 + 56);
    v129 = v35;
    v127 = v36 + 56;
    v128(v34, 0, 1, v35);
    *v29 = 0xD000000000000010;
    *(v29 + 1) = 0x80000001D73C4840;
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    v37 = &v29[*(v33 + 28)];
    *v37 = 0;
    *(v37 + 1) = 0;
    v37[16] = -1;
    v38 = *(v33 - 8);
    v39 = *(v38 + 56);
    v40 = v38 + 56;
    (v39)(v29, 0, 1, v33);
    v41 = v144;
    v125 = *(v5 + 16);
    v126 = v5 + 16;
    v125(v144, &v110[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_embedUrl], v4);
    v142 = v5;
    v42 = *(v5 + 56);
    v135 = v4;
    v43 = v4;
    v44 = v110;
    v123 = v42;
    v124 = v5 + 56;
    v42(v41, 0, 1, v43);

    sub_1D711FCD0(0x5255206465626D45, 0xE90000000000004CLL, v41, &v29[v26]);
    v109 = v29;
    v137 = v26;
    v143 = v40;
    v144 = v39;
    (v39)(&v29[v26], 0, 1, v33);
    v45 = *&v44[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_urlDataSources];
    if (v45 >> 62)
    {
      goto LABEL_23;
    }

    v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v46)
    {
      while (1)
      {
        v145 = MEMORY[0x1E69E7CC0];
        result = sub_1D6997EC0(0, v46 & ~(v46 >> 63), 0);
        if (v46 < 0)
        {
          break;
        }

        v48 = 0;
        v49 = v145;
        v122 = v45 & 0xC000000000000001;
        v50 = 2 * v137;
        v117 = 3 * v137;
        v116 = (v142 + 48);
        v113 = (v142 + 32);
        v111 = v45 & 0xFFFFFFFFFFFFFF8;
        v112 = (v142 + 8);
        v115 = xmmword_1D7279970;
        v121 = xmmword_1D7287CC0;
        v119 = v46;
        v120 = v45;
        v118 = 2 * v137;
        while (!__OFADD__(v48, 1))
        {
          v141 = v49;
          v142 = v48;
          v140 = v48 + 1;
          if (v122)
          {
            v51 = MEMORY[0x1DA6FB460]();
          }

          else
          {
            if (v48 >= *(v111 + 16))
            {
              goto LABEL_22;
            }

            v51 = *(v45 + 8 * v48 + 32);
          }

          v52 = v130;
          v53 = swift_allocObject();
          *(v53 + 16) = v115;
          v138 = v53;
          v54 = (v53 + v52);
          v56 = v51[2];
          v55 = v51[3];
          sub_1D5F8E840(v56, v55);
          sub_1D71221AC(0x20746E65746E6F43, 0xEC00000065707954, v56, v55, v54);
          v57 = v33;
          v58 = v33;
          v59 = v144;
          (v144)(v54, 0, 1, v57);
          v60 = v51[4];
          v61 = v51[5];

          v62 = v137;
          sub_1D711F844(7955787, 0xE300000000000000, v60, v61, &v54[v137]);
          v59(&v54[v62], 0, 1, v58);
          v63 = &v54[v50];
          v139 = v51;
          v64 = v51 + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url;
          v65 = v133;
          v66 = v135;
          v44 = v125;
          v125(v133, v64, v135);
          v123(v65, 0, 1, v66);
          v67 = v134;
          sub_1D5EB84C0(v65, v134);
          if ((*v116)(v67, 1, v66) == 1)
          {
            sub_1D5B6F13C(v65, sub_1D5B4D3E0);
            v128(&v63[*(v58 + 24)], 1, 1, v129);
            *v63 = v121;
            *(v63 + 2) = 0;
            *(v63 + 3) = 0;
            v68 = &v63[*(v58 + 28)];
            *v68 = 0;
            *(v68 + 1) = 0;
            v68[16] = -1;
          }

          else
          {
            v69 = v114;
            (v44)(v114, v67, v66);
            sub_1D5B6F13C(v65, sub_1D5B4D3E0);
            v70 = *(v58 + 24);
            (*v113)(&v63[v70], v69, v66);
            v71 = v129;
            swift_storeEnumTagMultiPayload();
            v128(&v63[v70], 0, 1, v71);
            *v63 = v121;
            *(v63 + 2) = 0;
            *(v63 + 3) = 0;
            v72 = &v63[*(v58 + 28)];
            *v72 = 0;
            *(v72 + 1) = 0;
            v72[16] = -1;
            (*v112)(v67, v66);
          }

          v33 = v58;
          (v144)(v63, 0, 1, v58);
          sub_1D6795150(0, 0xE000000000000000, 0, 0, v138, v161);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          *(&v152 + 1) = &type metadata for FormatInspectionGroup;
          *&v153 = &off_1F518B2C0;
          v73 = swift_allocObject();
          *&v151 = v73;

          *(v73 + 48) = v162;
          v74 = v161[1];
          *(v73 + 16) = v161[0];
          *(v73 + 32) = v74;
          v145 = v141;
          v76 = *(v141 + 16);
          v75 = *(v141 + 24);
          v45 = v120;
          if (v76 >= v75 >> 1)
          {
            sub_1D6997EC0((v75 > 1), v76 + 1, 1);
          }

          v77 = *(&v152 + 1);
          v78 = v153;
          v79 = __swift_mutable_project_boxed_opaque_existential_1(&v151, *(&v152 + 1));
          v80 = MEMORY[0x1EEE9AC00](v79, v79);
          v82 = &v106 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v83 + 16))(v82, v80);
          sub_1D5BD0BE4(v76, v82, &v145, v77, v78);
          __swift_destroy_boxed_opaque_existential_1(&v151);
          v49 = v145;
          v48 = v142 + 1;
          v50 = v118;
          if (v140 == v119)
          {
            v44 = v110;
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        v46 = sub_1D7263BFC();
        if (!v46)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_24:
      v50 = 2 * v137;
      v49 = MEMORY[0x1E69E7CC0];
LABEL_25:
      v85 = sub_1D5F62BFC(v49);

      v86 = sub_1D7073500(v85);

      v87 = v109;
      sub_1D711AD20(0x756F532061746144, 0xEC00000073656372, v86, 0, 0, &v109[v50]);
      (v144)(&v87[v50], 0, 1, v33);
      v88 = &v44[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config];
      v89 = *&v44[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 8];
      if (v89)
      {
        v90 = *v88;
      }

      else
      {
        v90 = 0;
      }

      v91 = 3 * v137;
      sub_1D7001D08(0, &qword_1EC8803C0, sub_1D5E4F38C, MEMORY[0x1E69E6F90]);
      v92 = swift_initStackObject();
      *(v92 + 16) = v106;
      v157 = v169;
      v158 = v170;
      v159 = v171;
      v160 = v172;
      v153 = v165;
      v154 = v166;
      v155 = v167;
      v156 = v168;
      v151 = v163;
      v152 = v164;
      v93 = v88[1];
      v94 = v88[2];
      v95 = v88[3];
      v96 = v88[4];
      v97 = v88[5];
      v145 = *v88;
      v146 = v93;
      v147 = v94;
      v148 = v95;
      v149 = v96;
      v150 = v97;
      sub_1D5F8B638(v145, v93);
      v98 = sub_1D6924F88(&v151, &v145);
      sub_1D5F8BBC8(v145, v146);
      *(v92 + 56) = &type metadata for FormatInspection;
      *(v92 + 64) = &off_1F51E3FD0;
      *(v92 + 32) = v98;
      v99 = sub_1D5F62BFC(v92);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1(v92 + 32);
      v100 = sub_1D7073500(v99);

      v101 = v109;
      sub_1D711AD20(0x6769666E6F43, 0xE600000000000000, v100, v90, v89, &v109[v91]);
      (v144)(&v101[v91], 0, 1, v33);
      sub_1D6795150(0x79616C502079654BLL, 0xEB00000000737265, 0, 0, v107, &v151);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v102 = inited;
      *(inited + 56) = &type metadata for FormatInspectionGroup;
      *(v102 + 64) = &off_1F518B2C0;
      v103 = swift_allocObject();
      *(v102 + 32) = v103;
      *(v103 + 48) = v153;
      v104 = v152;
      *(v103 + 16) = v151;
      *(v103 + 32) = v104;
      v105 = sub_1D7073500(v102);
      swift_setDeallocating();
      sub_1D5B6F13C(v102 + 32, sub_1D5E4F358);

      return v105;
    }
  }

  else
  {
    v84 = MEMORY[0x1E69E7CC0];

    return sub_1D7073500(v84);
  }

  return result;
}

uint64_t sub_1D7001CBC()
{
  v0 = sub_1D72641CC();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

void sub_1D7001D08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7001D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1936154996 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D7001E0C(uint64_t a1)
{
  v2 = sub_1D700202C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7001E48(uint64_t a1)
{
  v2 = sub_1D700202C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsEmbedConfigResource.encode(to:)(void *a1)
{
  sub_1D70022F4(0, &qword_1EC899388, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D700202C();

  sub_1D7264B5C();
  v11[1] = v9;
  sub_1D7002080();
  sub_1D7002358(&qword_1EC899390, sub_1D70020D0);
  sub_1D726443C();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D700202C()
{
  result = qword_1EDF0BCA8;
  if (!qword_1EDF0BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BCA8);
  }

  return result;
}

void sub_1D7002080()
{
  if (!qword_1EDF04B78)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04B78);
    }
  }
}

unint64_t sub_1D70020D0()
{
  result = qword_1EC899398;
  if (!qword_1EC899398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899398);
  }

  return result;
}

uint64_t SportsEmbedConfigResource.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D70022F4(0, &qword_1EDF039D0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D700202C();
  sub_1D7264B0C();
  if (!v2)
  {
    sub_1D7002080();
    sub_1D7002358(&qword_1EDF04B70, sub_1D70023C4);
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D70022F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D700202C();
    v7 = a3(a1, &type metadata for SportsEmbedConfigResource.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D7002358(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D7002080();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D70023C4()
{
  result = qword_1EDF0A7D8;
  if (!qword_1EDF0A7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A7D8);
  }

  return result;
}

unint64_t sub_1D700246C()
{
  result = qword_1EC8993A0;
  if (!qword_1EC8993A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8993A0);
  }

  return result;
}

unint64_t sub_1D70024C4()
{
  result = qword_1EDF0BC98;
  if (!qword_1EDF0BC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BC98);
  }

  return result;
}

unint64_t sub_1D700251C()
{
  result = qword_1EDF0BCA0;
  if (!qword_1EDF0BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BCA0);
  }

  return result;
}

uint64_t static FormatTextAdjustmentOtherBaseline.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  return _s8NewsFeed19FormatTextNodeStyleC2eeoiySbAC_ACtFZ_0(v2, v3);
}

uint64_t FormatTextAdjustmentOtherBaseline.targetIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D7002634(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  return _s8NewsFeed19FormatTextNodeStyleC2eeoiySbAC_ACtFZ_0(v2, v3);
}

unint64_t sub_1D70026A8(uint64_t a1)
{
  result = sub_1D70026D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D70026D0()
{
  result = qword_1EC8993A8;
  if (!qword_1EC8993A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8993A8);
  }

  return result;
}

unint64_t sub_1D7002724(void *a1)
{
  a1[1] = sub_1D5CA00E8();
  a1[2] = sub_1D67035DC();
  result = sub_1D700275C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D700275C()
{
  result = qword_1EC8993B0;
  if (!qword_1EC8993B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8993B0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed24FormatItemNodeActionDataO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t FeedBannerAd.with(bannerAd:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_1D7260DDC();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v11 = v2[1];
  (*(v6 + 16))(v10, a1, v5, v8);
  v13 = type metadata accessor for FeedBannerAd();
  *&a2[v13[6]] = 0x2000;
  v14 = &a2[v13[7]];
  *v14 = 0;
  v14[8] = 1;
  *&a2[v13[8]] = xmmword_1D72830B0;
  *a2 = v12;
  *(a2 + 1) = v11;
  (*(v6 + 32))(&a2[v13[5]], v10, v5);
}

uint64_t FeedBannerAd.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedBannerAd.bannerAd.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedBannerAd() + 20);
  v4 = sub_1D7260DDC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedBannerAd.traits.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for FeedBannerAd();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t FeedBannerAd.layoutDirection.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for FeedBannerAd();
  v4 = (v1 + *(result + 28));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t FeedBannerAd.kind.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedBannerAd() + 32));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_1D5BF2DDC(v4, v5);
}

uint64_t FeedBannerAd.init(identifier:bannerAd:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for FeedBannerAd();
  *&a4[v8[6]] = 0x2000;
  v9 = &a4[v8[7]];
  *v9 = 0;
  v9[8] = 1;
  *&a4[v8[8]] = xmmword_1D72830B0;
  *a4 = a1;
  *(a4 + 1) = a2;
  v10 = v8[5];
  v11 = sub_1D7260DDC();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a4[v10], a3, v11);
}

uint64_t sub_1D7002B88@<X0>(uint64_t a1@<X0>, int *a2@<X1>, char *a3@<X8>)
{
  v8 = *v3;
  v7 = v3[1];
  v9 = a2[5];
  v10 = sub_1D7260DDC();
  (*(*(v10 - 8) + 16))(&a3[v9], a1, v10);
  v11 = a2[7];
  *&a3[a2[6]] = 0x2000;
  v12 = &a3[v11];
  *v12 = 0;
  v12[8] = 1;
  *&a3[a2[8]] = xmmword_1D72830B0;
  *a3 = v8;
  *(a3 + 1) = v7;
}

uint64_t FeedBannerAd.hashValue.getter()
{
  sub_1D7264A0C();
  type metadata accessor for FeedBannerAd();
  sub_1D5BD58C4(&qword_1EC8993B8, type metadata accessor for FeedBannerAd);
  sub_1D7261E8C();
  return sub_1D7264A5C();
}

uint64_t sub_1D7002CD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5BD58C4(&qword_1EC8993C0, type metadata accessor for FeedBannerAd);

  return MEMORY[0x1EEE45140](a1, a2, v4);
}

uint64_t sub_1D7002D4C(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  return sub_1D7260DAC();
}

uint64_t sub_1D7002EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  if (*v2 < 0)
  {
    v5 = v3 & 0x7FFFFFFFFFFFFFFFLL;
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);

    sub_1D5FBB058(&v9, a1, v6, v7);
    sub_1D7002EAC(a1);
  }

  else
  {
    LOBYTE(v9) = *(v3 + 16);
    return sub_1D686ED9C(a1, a2);
  }
}

uint64_t _s8NewsFeed23FormatIssueCoverContentO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((*a1 & 0x8000000000000000) == 0)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      return (*(v2 + 16) ^ *(v3 + 16) ^ 1) & 1;
    }

    return 0;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  v6 = *((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v5 = *((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  v7 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v8 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);

  LOBYTE(v5) = sub_1D6365DAC(v6, v5, v7, v8);

  return v5 & 1;
}

unint64_t sub_1D700307C(uint64_t a1)
{
  result = sub_1D6698B60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D70030A4(void *a1)
{
  a1[1] = sub_1D6705B30();
  a1[2] = sub_1D665D700();
  result = sub_1D70030DC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D70030DC()
{
  result = qword_1EC8993C8;
  if (!qword_1EC8993C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8993C8);
  }

  return result;
}

id EmbedLocation.location.getter()
{
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v34 - v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v34 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v34 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v34 - v23;
  v25 = *v0;
  v26 = sub_1D72585BC();
  v27 = *(v26 - 8);
  v28 = (v27 + 48);
  v29 = *(v27 + 56);
  if (v25 > 2)
  {
    if (v25 == 3)
    {
      v29(v12, 1, 1, v26);
      v30 = sub_1D726203C();
      if ((*v28)(v12, 1, v26) != 1)
      {
        v31 = sub_1D725844C();
        (*(v27 + 8))(v12, v26);
        goto LABEL_19;
      }
    }

    else if (v25 == 4)
    {
      v29(v8, 1, 1, v26);
      v30 = sub_1D726203C();
      if ((*v28)(v8, 1, v26) != 1)
      {
        v31 = sub_1D725844C();
        (*(v27 + 8))(v8, v26);
        goto LABEL_19;
      }
    }

    else
    {
      v29(v4, 1, 1, v26);
      v30 = sub_1D726203C();
      if ((*v28)(v4, 1, v26) != 1)
      {
        v31 = sub_1D725844C();
        (*(v27 + 8))(v4, v26);
        goto LABEL_19;
      }
    }

LABEL_17:
    v31 = 0;
    goto LABEL_19;
  }

  if (!v25)
  {
    v29(v24, 1, 1, v26);
    v30 = sub_1D726203C();
    if ((*v28)(v24, 1, v26) != 1)
    {
      v31 = sub_1D725844C();
      (*(v27 + 8))(v24, v26);
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v25 != 1)
  {
    v29(v16, 1, 1, v26);
    v30 = sub_1D726203C();
    if ((*v28)(v16, 1, v26) != 1)
    {
      v31 = sub_1D725844C();
      (*(v27 + 8))(v16, v26);
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v29(v20, 1, 1, v26);
  v30 = sub_1D726203C();
  if ((*v28)(v20, 1, v26) == 1)
  {
    goto LABEL_17;
  }

  v31 = sub_1D725844C();
  (*(v27 + 8))(v20, v26);
LABEL_19:
  v32 = [objc_allocWithZone(MEMORY[0x1E69CE190]) initWithContext:v30 URL:v31];

  return v32;
}

uint64_t EmbedLocation.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D7003658()
{
  result = qword_1EC8993D0;
  if (!qword_1EC8993D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8993D0);
  }

  return result;
}

BOOL FormatWebEmbedBinding.Bool.BOOL(from:)(uint64_t a1)
{
  v107 = a1;
  v2 = v1;
  v3 = type metadata accessor for WebEmbedDataVisualization();
  v105 = *(v3 - 8);
  v106 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v102 = (&v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6, v7);
  v101 = (&v93 - v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v100 = (&v93 - v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v99 = (&v93 - v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  v98 = (&v93 - v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v97 = (&v93 - v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  v96 = (&v93 - v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  v95 = (&v93 - v26);
  MEMORY[0x1EEE9AC00](v27, v28);
  v94 = (&v93 - v29);
  sub_1D5B62EF4(0, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v104 = &v93 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v103 = &v93 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v93 - v38;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v93 - v42;
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v93 - v46;
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v93 - v50;
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = &v93 - v54;
  MEMORY[0x1EEE9AC00](v56, v57);
  v59 = &v93 - v58;
  MEMORY[0x1EEE9AC00](v60, v61);
  v63 = &v93 - v62;
  sub_1D5B62EF4(0, qword_1EDF42030, type metadata accessor for FeedHeadline);
  MEMORY[0x1EEE9AC00](v64 - 8, v65);
  v67 = &v93 - v66;
  v68 = *v2;
  v69 = type metadata accessor for FeedWebEmbed();
  if (v68 > 4)
  {
    if (v68 <= 6)
    {
      if (v68 == 5)
      {
        sub_1D70044E8(v107 + *(v69 + 52), v47, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
        if ((*(v105 + 48))(v47, 1, v106) == 1)
        {
          v70 = v47;
          goto LABEL_27;
        }

        v83 = v98;
        sub_1D6A5C378(v47, v98, type metadata accessor for WebEmbedDataVisualization);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1D6A5C3E0(v83, type metadata accessor for WebEmbedDataVisualization);
          v77 = v47;
          goto LABEL_50;
        }

        v90 = *v83;
        sub_1D6A5C3E0(v47, type metadata accessor for WebEmbedDataVisualization);
        v86 = v90 >> 61 == 3;
      }

      else
      {
        sub_1D70044E8(v107 + *(v69 + 52), v43, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
        if ((*(v105 + 48))(v43, 1, v106) == 1)
        {
          v70 = v43;
          goto LABEL_27;
        }

        v84 = v99;
        sub_1D6A5C378(v43, v99, type metadata accessor for WebEmbedDataVisualization);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1D6A5C3E0(v84, type metadata accessor for WebEmbedDataVisualization);
          v77 = v43;
          goto LABEL_50;
        }

        v91 = *v84;
        sub_1D6A5C3E0(v43, type metadata accessor for WebEmbedDataVisualization);
        v86 = v91 >> 61 == 4;
      }
    }

    else
    {
      if (v68 == 7)
      {
        sub_1D70044E8(v107 + *(v69 + 52), v39, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
        if ((*(v105 + 48))(v39, 1, v106) == 1)
        {
          v70 = v39;
          goto LABEL_27;
        }

        v76 = v100;
        sub_1D6A5C378(v39, v100, type metadata accessor for WebEmbedDataVisualization);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1D6A5C3E0(v76, type metadata accessor for WebEmbedDataVisualization);
          v77 = v39;
LABEL_50:
          sub_1D6A5C3E0(v77, type metadata accessor for WebEmbedDataVisualization);
          return 0;
        }

        v85 = *v76;
        sub_1D6A5C3E0(v39, type metadata accessor for WebEmbedDataVisualization);
        v86 = v85 >> 61 == 5;
        goto LABEL_60;
      }

      if (v68 != 8)
      {
        v63 = v104;
        sub_1D70044E8(v107 + *(v69 + 52), v104, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
        if ((*(v105 + 48))(v63, 1, v106) == 1)
        {
          v70 = v63;
          goto LABEL_27;
        }

        v80 = v102;
        sub_1D6A5C378(v63, v102, type metadata accessor for WebEmbedDataVisualization);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v81 = *v80;
          sub_1D6A5C3E0(v63, type metadata accessor for WebEmbedDataVisualization);
          v108 = v81;
          v82 = SportsDataVisualization.event.getter();

          if (v82)
          {
            swift_unknownObjectRelease();
            return 1;
          }

          return 0;
        }

LABEL_47:
        sub_1D6A5C3E0(v80, type metadata accessor for WebEmbedDataVisualization);
        v77 = v63;
        goto LABEL_50;
      }

      v59 = v103;
      sub_1D70044E8(v107 + *(v69 + 52), v103, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
      if ((*(v105 + 48))(v59, 1, v106) == 1)
      {
        v70 = v59;
        goto LABEL_27;
      }

      v74 = v101;
      sub_1D6A5C378(v59, v101, type metadata accessor for WebEmbedDataVisualization);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_38;
      }

      v88 = *v74;
      sub_1D6A5C3E0(v59, type metadata accessor for WebEmbedDataVisualization);
      v86 = v88 >> 61 == 6;
    }

LABEL_60:
    v92 = v86;

    return v92;
  }

  if (v68 <= 1)
  {
    if (!v68)
    {
      sub_1D70044E8(v107 + *(v69 + 48), v67, qword_1EDF42030, type metadata accessor for FeedHeadline);
      v71 = type metadata accessor for FeedHeadline(0);
      v72 = (*(*(v71 - 8) + 48))(v67, 1, v71) != 1;
      sub_1D7004554(v67, qword_1EDF42030, type metadata accessor for FeedHeadline);
      return v72;
    }

    sub_1D70044E8(v107 + *(v69 + 52), v63, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
    if ((*(v105 + 48))(v63, 1, v106) == 1)
    {
      v70 = v63;
      goto LABEL_27;
    }

    v80 = v94;
    sub_1D6A5C378(v63, v94, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1D6A5C3E0(v63, type metadata accessor for WebEmbedDataVisualization);
LABEL_57:

      return 1;
    }

    goto LABEL_47;
  }

  if (v68 == 2)
  {
    sub_1D70044E8(v107 + *(v69 + 52), v59, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
    if ((*(v105 + 48))(v59, 1, v106) == 1)
    {
      v70 = v59;
      goto LABEL_27;
    }

    v74 = v95;
    sub_1D6A5C378(v59, v95, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v75 = *v74;
      sub_1D6A5C3E0(v59, type metadata accessor for WebEmbedDataVisualization);
      if (!(v75 >> 61))
      {
        goto LABEL_57;
      }

      return 0;
    }

LABEL_38:
    sub_1D6A5C3E0(v74, type metadata accessor for WebEmbedDataVisualization);
    v77 = v59;
    goto LABEL_50;
  }

  if (v68 != 3)
  {
    sub_1D70044E8(v107 + *(v69 + 52), v51, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
    if ((*(v105 + 48))(v51, 1, v106) == 1)
    {
      v70 = v51;
      goto LABEL_27;
    }

    v79 = v97;
    sub_1D6A5C378(v51, v97, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D6A5C3E0(v79, type metadata accessor for WebEmbedDataVisualization);
      v77 = v51;
      goto LABEL_50;
    }

    v89 = *v79;
    sub_1D6A5C3E0(v51, type metadata accessor for WebEmbedDataVisualization);
    v86 = v89 >> 61 == 2;
    goto LABEL_60;
  }

  sub_1D70044E8(v107 + *(v69 + 52), v55, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
  if ((*(v105 + 48))(v55, 1, v106) == 1)
  {
    v70 = v55;
LABEL_27:
    sub_1D7004554(v70, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
    return 0;
  }

  v78 = v96;
  sub_1D6A5C378(v55, v96, type metadata accessor for WebEmbedDataVisualization);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D6A5C3E0(v78, type metadata accessor for WebEmbedDataVisualization);
    v77 = v55;
    goto LABEL_50;
  }

  v87 = *v78;
  sub_1D6A5C3E0(v55, type metadata accessor for WebEmbedDataVisualization);

  return v87 >> 61 == 1;
}

uint64_t sub_1D70044E8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D5B62EF4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D7004554(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5B62EF4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t FormatWebEmbedBinding.Bool.CodingType.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD000000000000026;
    v7 = 0x74726F7053736168;
    if (v1 == 8)
    {
      v7 = 0xD000000000000023;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000022;
    if (v1 != 5)
    {
      v8 = 0xD000000000000023;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6369747241736168;
    v3 = 0xD00000000000001FLL;
    v4 = 0xD000000000000021;
    if (v1 == 3)
    {
      v4 = 0xD000000000000023;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0xD00000000000001ALL;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1D7004744()
{
  sub_1D7264A0C();
  sub_1D694E7A0();
  return sub_1D7264A5C();
}

uint64_t sub_1D7004794()
{
  sub_1D7264A0C();
  sub_1D694E7A0();
  return sub_1D7264A5C();
}

unint64_t sub_1D70047D8@<X0>(unint64_t *a1@<X8>)
{
  result = FormatWebEmbedBinding.Bool.CodingType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t FormatWebEmbedBinding.Bool.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D70048D8()
{
  result = qword_1EC8993D8;
  if (!qword_1EC8993D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8993D8);
  }

  return result;
}

unint64_t sub_1D7004930()
{
  result = qword_1EC8993E0;
  if (!qword_1EC8993E0)
  {
    sub_1D7004988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8993E0);
  }

  return result;
}

void sub_1D7004988()
{
  if (!qword_1EC8993E8)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8993E8);
    }
  }
}

unint64_t sub_1D70049DC()
{
  result = qword_1EC8993F0;
  if (!qword_1EC8993F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8993F0);
  }

  return result;
}

unint64_t sub_1D7004A30(uint64_t a1)
{
  result = sub_1D7004A58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D7004A58()
{
  result = qword_1EC8993F8;
  if (!qword_1EC8993F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8993F8);
  }

  return result;
}

unint64_t sub_1D7004AAC(void *a1)
{
  a1[1] = sub_1D5CC7648();
  a1[2] = sub_1D66FE3C4();
  result = sub_1D70049DC();
  a1[3] = result;
  return result;
}

uint64_t sub_1D7004B1C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v190 = a2;
  v187 = a3;
  v188 = a1;
  v3 = type metadata accessor for WebEmbedDataVisualization();
  v185 = *(v3 - 8);
  v186 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v175 = (&v168 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6, v7);
  v174 = (&v168 - v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v173 = (&v168 - v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v172 = (&v168 - v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  v171 = (&v168 - v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v170 = (&v168 - v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  v169 = (&v168 - v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  v168 = &v168 - v26;
  sub_1D5B62EF4(0, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v184 = &v168 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v183 = &v168 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v182 = &v168 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v181 = &v168 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v180 = &v168 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v179 = &v168 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v178 = &v168 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v177 = &v168 - v50;
  sub_1D5B62EF4(0, qword_1EDF42030, type metadata accessor for FeedHeadline);
  MEMORY[0x1EEE9AC00](v51 - 8, v52);
  v176 = &v168 - v53;
  v54 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v54, v55);
  MEMORY[0x1EEE9AC00](v56, v57);
  v59 = &v168 - v58;
  MEMORY[0x1EEE9AC00](v60, v61);
  v63 = &v168 - v62;
  MEMORY[0x1EEE9AC00](v64, v65);
  v67 = &v168 - v66;
  MEMORY[0x1EEE9AC00](v68, v69);
  v71 = &v168 - v70;
  MEMORY[0x1EEE9AC00](v72, v73);
  v75 = &v168 - v74;
  MEMORY[0x1EEE9AC00](v76, v77);
  v79 = &v168 - v78;
  MEMORY[0x1EEE9AC00](v80, v81);
  v83 = &v168 - v82;
  MEMORY[0x1EEE9AC00](v84, v85);
  v87 = &v168 - v86;
  MEMORY[0x1EEE9AC00](v88, v89);
  v93 = &v168 - v91;
  v94 = *v188;
  if (v94 <= 4)
  {
    if (*v188 > 1u)
    {
      if (v94 != 2)
      {
        v95 = v90;
        if (v94 == 3)
        {
          v96 = 0x80000001D73FA7D0;
          sub_1D6A5C378(v190, v79, type metadata accessor for FeedWebEmbed);
          v97 = v179;
          sub_1D70044E8(&v79[*(v95 + 52)], v179, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
          sub_1D6A5C3E0(v79, type metadata accessor for FeedWebEmbed);
          v98 = (*(v185 + 48))(v97, 1, v186);
          v99 = v187;
          if (v98 == 1)
          {
            sub_1D7004554(v97, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
LABEL_43:
            v142 = 0;
LABEL_64:
            v107 = type metadata accessor for FormatInspectionItem(0);
            v156 = *(v107 + 24);
            *(v99 + v156) = v142;
            v157 = type metadata accessor for FormatInspectionItem.Value(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v157 - 8) + 56))(v99 + v156, 0, 1, v157);
            v149 = 0xD000000000000027;
            goto LABEL_76;
          }

          v133 = v170;
          sub_1D6A5C378(v97, v170, type metadata accessor for WebEmbedDataVisualization);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1D6A5C3E0(v133, type metadata accessor for WebEmbedDataVisualization);
            v134 = v97;
LABEL_42:
            sub_1D6A5C3E0(v134, type metadata accessor for WebEmbedDataVisualization);
            goto LABEL_43;
          }

          v150 = *v133;
          sub_1D6A5C3E0(v97, type metadata accessor for WebEmbedDataVisualization);
          v151 = v150 >> 61 == 1;
          goto LABEL_60;
        }

        v96 = 0x80000001D73FA7A0;
        sub_1D6A5C378(v190, v75, type metadata accessor for FeedWebEmbed);
        v119 = v180;
        sub_1D70044E8(&v75[*(v95 + 52)], v180, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
        sub_1D6A5C3E0(v75, type metadata accessor for FeedWebEmbed);
        v120 = (*(v185 + 48))(v119, 1, v186);
        v99 = v187;
        if (v120 == 1)
        {
          sub_1D7004554(v119, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
        }

        else
        {
          v139 = v171;
          sub_1D6A5C378(v119, v171, type metadata accessor for WebEmbedDataVisualization);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v152 = *v139;
            sub_1D6A5C3E0(v119, type metadata accessor for WebEmbedDataVisualization);
            v140 = v152 >> 61 == 2;

            goto LABEL_58;
          }

          sub_1D6A5C3E0(v139, type metadata accessor for WebEmbedDataVisualization);
          sub_1D6A5C3E0(v119, type metadata accessor for WebEmbedDataVisualization);
        }

        v140 = 0;
LABEL_58:
        v107 = type metadata accessor for FormatInspectionItem(0);
        v153 = *(v107 + 24);
        *(v99 + v153) = v140;
        v154 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v154 - 8) + 56))(v99 + v153, 0, 1, v154);
        v149 = 0xD000000000000025;
LABEL_76:
        *v99 = v149;
        *(v99 + 8) = v96;
        goto LABEL_77;
      }

      v96 = 0x80000001D73FA800;
      v113 = v90;
      sub_1D6A5C378(v190, v83, type metadata accessor for FeedWebEmbed);
      v114 = v178;
      sub_1D70044E8(&v83[*(v113 + 52)], v178, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
      sub_1D6A5C3E0(v83, type metadata accessor for FeedWebEmbed);
      if ((*(v185 + 48))(v114, 1, v186) == 1)
      {
        sub_1D7004554(v114, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
        v115 = 0;
        v99 = v187;
LABEL_75:
        v107 = type metadata accessor for FormatInspectionItem(0);
        v163 = *(v107 + 24);
        *(v99 + v163) = v115;
        v164 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v164 - 8) + 56))(v99 + v163, 0, 1, v164);
        v149 = 0xD000000000000023;
        goto LABEL_76;
      }

      v129 = v169;
      sub_1D6A5C378(v114, v169, type metadata accessor for WebEmbedDataVisualization);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v99 = v187;
      if (EnumCaseMultiPayload == 1)
      {
        sub_1D6A5C3E0(v129, type metadata accessor for WebEmbedDataVisualization);
        sub_1D6A5C3E0(v114, type metadata accessor for WebEmbedDataVisualization);
      }

      else
      {
        v145 = *v129;
        sub_1D6A5C3E0(v114, type metadata accessor for WebEmbedDataVisualization);
        if (!(v145 >> 61))
        {

          v115 = 1;
          goto LABEL_75;
        }
      }

      v115 = 0;
      goto LABEL_75;
    }

    v103 = v90;
    if (!*v188)
    {
      sub_1D6A5C378(v190, &v168 - v91, type metadata accessor for FeedWebEmbed);
      v104 = v176;
      sub_1D70044E8(&v93[*(v103 + 48)], v176, qword_1EDF42030, type metadata accessor for FeedHeadline);
      sub_1D6A5C3E0(v93, type metadata accessor for FeedWebEmbed);
      v105 = type metadata accessor for FeedHeadline(0);
      v106 = (*(*(v105 - 8) + 48))(v104, 1, v105) != 1;
      sub_1D7004554(v104, qword_1EDF42030, type metadata accessor for FeedHeadline);
      v107 = type metadata accessor for FormatInspectionItem(0);
      v108 = *(v107 + 24);
      v99 = v187;
      *(v187 + v108) = v106;
      v109 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v109 - 8) + 56))(v99 + v108, 0, 1, v109);
      *v99 = xmmword_1D73810D0;
LABEL_77:
      *(v99 + 16) = 0;
      *(v99 + 24) = 0;
      v165 = v99 + *(v107 + 28);
      *v165 = 0;
      *(v165 + 8) = 0;
      *(v165 + 16) = -1;
      goto LABEL_78;
    }

    sub_1D6A5C378(v190, v87, type metadata accessor for FeedWebEmbed);
    v126 = v177;
    sub_1D70044E8(&v87[*(v103 + 52)], v177, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
    sub_1D6A5C3E0(v87, type metadata accessor for FeedWebEmbed);
    v127 = (*(v185 + 48))(v126, 1, v186);
    v99 = v187;
    if (v127 == 1)
    {
      sub_1D7004554(v126, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
    }

    else
    {
      v143 = v168;
      sub_1D6A5C378(v126, v168, type metadata accessor for WebEmbedDataVisualization);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1D6A5C3E0(v126, type metadata accessor for WebEmbedDataVisualization);

        v144 = 1;
        goto LABEL_66;
      }

      sub_1D6A5C3E0(v143, type metadata accessor for WebEmbedDataVisualization);
      sub_1D6A5C3E0(v126, type metadata accessor for WebEmbedDataVisualization);
    }

    v144 = 0;
LABEL_66:
    v107 = type metadata accessor for FormatInspectionItem(0);
    v158 = *(v107 + 24);
    *(v99 + v158) = v144;
    v159 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v159 - 8) + 56))(v99 + v158, 0, 1, v159);
    *v99 = 0xD00000000000001DLL;
    *(v99 + 8) = 0x80000001D73FA830;
    goto LABEL_77;
  }

  if (*v188 <= 6u)
  {
    v110 = v90;
    v99 = v187;
    if (v94 == 5)
    {
      v96 = 0x80000001D73FA770;
      sub_1D6A5C378(v190, v71, type metadata accessor for FeedWebEmbed);
      v111 = &v71[*(v110 + 52)];
      v112 = v181;
      sub_1D70044E8(v111, v181, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
      sub_1D6A5C3E0(v71, type metadata accessor for FeedWebEmbed);
      if ((*(v185 + 48))(v112, 1, v186) == 1)
      {
        sub_1D7004554(v112, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
        goto LABEL_43;
      }

      v141 = v172;
      sub_1D6A5C378(v112, v172, type metadata accessor for WebEmbedDataVisualization);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D6A5C3E0(v141, type metadata accessor for WebEmbedDataVisualization);
        v134 = v112;
        goto LABEL_42;
      }

      v155 = *v141;
      sub_1D6A5C3E0(v112, type metadata accessor for WebEmbedDataVisualization);
      v151 = v155 >> 61 == 3;
LABEL_60:
      v142 = v151;

      goto LABEL_64;
    }

    v96 = 0x80000001D73FA740;
    sub_1D6A5C378(v190, v67, type metadata accessor for FeedWebEmbed);
    v128 = &v67[*(v110 + 52)];
    v101 = v182;
    sub_1D70044E8(v128, v182, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
    sub_1D6A5C3E0(v67, type metadata accessor for FeedWebEmbed);
    if ((*(v185 + 48))(v101, 1, v186) == 1)
    {
      sub_1D7004554(v101, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
LABEL_49:
      v102 = 0;
      goto LABEL_72;
    }

    v135 = v173;
    sub_1D6A5C378(v101, v173, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v160 = *v135;
      sub_1D6A5C3E0(v101, type metadata accessor for WebEmbedDataVisualization);
      v138 = v160 >> 61 == 4;
      goto LABEL_68;
    }

LABEL_48:
    sub_1D6A5C3E0(v135, type metadata accessor for WebEmbedDataVisualization);
    sub_1D6A5C3E0(v101, type metadata accessor for WebEmbedDataVisualization);
    goto LABEL_49;
  }

  if (v94 == 7)
  {
    v96 = 0x80000001D73FA710;
    v116 = v90;
    sub_1D6A5C378(v190, v63, type metadata accessor for FeedWebEmbed);
    v117 = v183;
    sub_1D70044E8(&v63[*(v116 + 52)], v183, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
    sub_1D6A5C3E0(v63, type metadata accessor for FeedWebEmbed);
    if ((*(v185 + 48))(v117, 1, v186) == 1)
    {
      sub_1D7004554(v117, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
      v118 = 0;
      v99 = v187;
    }

    else
    {
      v131 = v174;
      sub_1D6A5C378(v117, v174, type metadata accessor for WebEmbedDataVisualization);
      v132 = swift_getEnumCaseMultiPayload();
      v99 = v187;
      if (v132 == 1)
      {
        sub_1D6A5C3E0(v131, type metadata accessor for WebEmbedDataVisualization);
        sub_1D6A5C3E0(v117, type metadata accessor for WebEmbedDataVisualization);
        v118 = 0;
      }

      else
      {
        v146 = *v131;
        sub_1D6A5C3E0(v117, type metadata accessor for WebEmbedDataVisualization);
        v118 = v146 >> 61 == 5;
      }
    }

    v107 = type metadata accessor for FormatInspectionItem(0);
    v147 = *(v107 + 24);
    *(v99 + v147) = v118;
    v148 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v148 - 8) + 56))(v99 + v147, 0, 1, v148);
    v149 = 0xD00000000000002BLL;
    goto LABEL_76;
  }

  if (v94 == 8)
  {
    v96 = 0x80000001D73FA6E0;
    v100 = v90;
    sub_1D6A5C378(v190, v59, type metadata accessor for FeedWebEmbed);
    v101 = v184;
    sub_1D70044E8(&v59[*(v100 + 52)], v184, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
    sub_1D6A5C3E0(v59, type metadata accessor for FeedWebEmbed);
    if ((*(v185 + 48))(v101, 1, v186) == 1)
    {
      sub_1D7004554(v101, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
      v102 = 0;
      v99 = v187;
LABEL_72:
      v107 = type metadata accessor for FormatInspectionItem(0);
      v161 = *(v107 + 24);
      *(v99 + v161) = v102;
      v162 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v162 - 8) + 56))(v99 + v161, 0, 1, v162);
      v149 = 0xD000000000000028;
      goto LABEL_76;
    }

    v135 = v175;
    sub_1D6A5C378(v101, v175, type metadata accessor for WebEmbedDataVisualization);
    v136 = swift_getEnumCaseMultiPayload();
    v99 = v187;
    if (v136 != 1)
    {
      v137 = *v135;
      sub_1D6A5C3E0(v101, type metadata accessor for WebEmbedDataVisualization);
      v138 = v137 >> 61 == 6;
LABEL_68:
      v102 = v138;

      goto LABEL_72;
    }

    goto LABEL_48;
  }

  v121 = v92;
  sub_1D6A5C378(v190, v92, type metadata accessor for FeedWebEmbed);
  v191 = 9;
  v122 = v121;
  v123 = v189;
  v124 = FormatWebEmbedBinding.Bool.BOOL(from:)(v121);
  v99 = v187;
  if (v123)
  {

    v125 = 2;
  }

  else
  {
    v125 = v124;
  }

  sub_1D6A5C3E0(v122, type metadata accessor for FeedWebEmbed);
  sub_1D711E9F0(0xD000000000000010, 0x80000001D73FA6C0, v125, v99);
LABEL_78:
  v166 = type metadata accessor for FormatInspectionItem(0);
  return (*(*(v166 - 8) + 56))(v99, 0, 1, v166);
}

BOOL static FormatCodingIntegerEquationZeroStrategy.shouldEncode(wrappedValue:)(uint64_t *a1)
{
  v1 = sub_1D633D10C(*a1, &unk_1F5119C80);
  sub_1D70060E0(&unk_1F5119CA0);
  return (v1 & 1) == 0;
}

uint64_t sub_1D70060E0(uint64_t a1)
{
  sub_1D70063B4(0, &qword_1EC899400, type metadata accessor for FormatEquationToken);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1D7006168(uint64_t *a1)
{
  v1 = sub_1D633D10C(*a1, &unk_1F50F2CE0);
  sub_1D70060E0(&unk_1F50F2D00);
  return (v1 & 1) == 0;
}

BOOL static FormatCodingIntegerEquationOneStrategy.shouldEncode(wrappedValue:)(uint64_t *a1)
{
  v1 = sub_1D633D10C(*a1, &unk_1F5119CF0);
  sub_1D70060E0(&unk_1F5119D10);
  return (v1 & 1) == 0;
}

BOOL sub_1D7006210(uint64_t *a1)
{
  v1 = sub_1D633D10C(*a1, &unk_1F50F2CA8);
  sub_1D70060E0(&unk_1F50F2CC8);
  return (v1 & 1) == 0;
}

void static FormatCodingSelectorIntegerEquationZeroStrategy.defaultValue.getter(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = &unk_1F5119D28;
  a1[1] = v1;
}

void sub_1D7006270(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = &unk_1F50F3240;
  a1[1] = v1;
}

uint64_t _s8NewsFeed47FormatCodingSelectorIntegerEquationZeroStrategyV12shouldEncode12wrappedValueSbAA0ce6SimpleM0VyAA0cG0VyAA0cF0OGG_tFZ_0(uint64_t *a1)
{
  v1 = a1[1];
  if (sub_1D633D10C(*a1, &unk_1F50F2D18))
  {

    v2 = MEMORY[0x1E69E7CC0];

    v3 = sub_1D6354F50(v1, v2);

    swift_bridgeObjectRelease_n();
    if (v3)
    {
      return 0;
    }
  }

  else
  {
  }

  return 1;
}

unint64_t sub_1D7006338(uint64_t a1)
{
  result = sub_1D7006360();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D7006360()
{
  result = qword_1EC899408;
  if (!qword_1EC899408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899408);
  }

  return result;
}

void sub_1D70063B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5C5A3D0();
    v7 = a3(a1, &type metadata for FormatInteger, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D7006418(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D70063B4(255, &qword_1EDF32838, type metadata accessor for FormatEquation);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D7006478(uint64_t a1)
{
  result = sub_1D70064A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D70064A0()
{
  result = qword_1EC899410;
  if (!qword_1EC899410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899410);
  }

  return result;
}

unint64_t sub_1D70064F4(uint64_t a1)
{
  result = sub_1D700651C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D700651C()
{
  result = qword_1EC899418;
  if (!qword_1EC899418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899418);
  }

  return result;
}

uint64_t sub_1D7006570(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D6689E3C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D70065F4(uint64_t a1, __int128 *a2)
{
  v50 = sub_1D725891C();
  v51 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v48 - v9;
  sub_1D7008C18(0, &qword_1EDF17C00, MEMORY[0x1E69D6570], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v48 - v13;
  v15 = sub_1D725AF4C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = (&v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *a2;
  v25 = a2[1];
  v26 = *(a2 + 4);
  v27 = *(a2 + 5);
  if (v25 > 6)
  {
    if (v25 > 8)
    {
      if (v25 == 9)
      {
        v38 = [objc_msgSend(*(a1 + 56) sourceChannel];
        swift_unknownObjectRelease();
        v32 = sub_1D726207C();

        return v32;
      }

      if (v25 == 10)
      {
        v28 = [*(a1 + 56) language];
        goto LABEL_20;
      }

      goto LABEL_22;
    }

    if (v25 == 7)
    {
      v35 = [*(a1 + 56) totalTime];
      sub_1D726207C();

      sub_1D725AF2C();
      v36 = v16;
      if ((*(v16 + 48))(v14, 1, v15) == 1)
      {
        sub_1D70089E8(v14);
        return 0;
      }

      (*(v16 + 32))(v19, v14, v15);
      sub_1D725AF1C();
      if (v43 == 0.0)
      {
        (*(v16 + 8))(v19, v15);
        return 0;
      }

      v45 = sub_1D725AF3C();
      v47 = v46;
      (*(v36 + 8))(v19, v15);
      if (v47)
      {
        return v45;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v29 = [*(a1 + 56) authors];
      if (!v29 || (v30 = v29, v31 = sub_1D726267C(), v30, v32 = Array<A>.localizedOxfordCommaSeparatedList.getter(v31), v34 = v33, , !v34))
      {

        return 0;
      }
    }
  }

  else
  {
    if (v25 > 4)
    {
      if (v25 == 5)
      {
        v28 = [*(a1 + 56) title];
      }

      else
      {
        v28 = [*(a1 + 56) shortExcerpt];
      }

      goto LABEL_20;
    }

    if (v25 != 3)
    {
      if (v25 == 4)
      {
        v28 = [*(a1 + 56) identifier];
LABEL_20:
        v37 = v28;
        v32 = sub_1D726207C();

        return v32;
      }

LABEL_22:
      v48 = v25;
      v49 = v24;
      v39 = [*(a1 + 56) publishDate];
      if (v39)
      {
        v40 = v39;
        sub_1D72588BC();

        v41 = v51;
        v42 = v50;
        (*(v51 + 32))(v10, v6, v50);
        v57 = v49;
        v58 = v48;
        *&v59 = v26;
        *(&v59 + 1) = v27;
        v32 = FormatDateFormat.format(_:)(v10);
        (*(v41 + 8))(v10, v42);
        return v32;
      }

      return 0;
    }

    sub_1D5E47A08(a1, v23);
    sub_1D718B62C(v23, &v52);
    *&v57 = 0x657069636572;
    *(&v57 + 1) = 0xE600000000000000;
    v58 = v52;
    LOWORD(v59) = v53;
    *(&v59 + 1) = *(&v53 + 1);
    *&v60 = v54;
    BYTE8(v60) = BYTE8(v54);
    v61 = MEMORY[0x1E69E7CD0];
    v54 = v59;
    v55 = v60;
    v56 = MEMORY[0x1E69E7CD0];
    v52 = v57;
    v53 = v58;
    sub_1D72578EC();
    swift_allocObject();
    sub_1D72578DC();
    sub_1D7008A74();
    sub_1D7008B24(&qword_1EDF0F1C0, sub_1D7008A74);
    v32 = sub_1D725D06C();

    sub_1D7008B6C(&v57, sub_1D7008A74);
  }

  return v32;
}

uint64_t sub_1D7006CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v59 = a3;
  *&v60 = a2;
  v57 = sub_1D725891C();
  v58 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v5);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v57 - v10;
  sub_1D7008C18(0, &qword_1EDF17C00, MEMORY[0x1E69D6570], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v57 - v14;
  v16 = sub_1D725AF4C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = (&v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *v3;
  v26 = v3[1];
  v28 = *(v3 + 4);
  v27 = *(v3 + 5);
  if (v26 > 6)
  {
    if (v26 > 8)
    {
      if (v26 == 9)
      {
        v47 = [objc_msgSend(*(a1 + 56) sourceChannel];
        swift_unknownObjectRelease();
        v33 = sub_1D726207C();

        return v33;
      }

      if (v26 == 10)
      {
        v29 = [*(a1 + 56) language];
        goto LABEL_20;
      }

      goto LABEL_22;
    }

    if (v26 == 7)
    {
      v44 = [*(a1 + 56) totalTime];
      sub_1D726207C();

      sub_1D725AF2C();
      v45 = v17;
      if ((*(v17 + 48))(v15, 1, v16) == 1)
      {
        sub_1D70089E8(v15);
        return 0;
      }

      (*(v17 + 32))(v20, v15, v16);
      sub_1D725AF1C();
      if (v52 == 0.0)
      {
        (*(v17 + 8))(v20, v16);
        return 0;
      }

      v54 = sub_1D725AF3C();
      v56 = v55;
      (*(v45 + 8))(v20, v16);
      if (v56)
      {
        return v54;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v30 = [*(a1 + 56) authors];
      if (!v30 || (v31 = v30, v32 = sub_1D726267C(), v31, v33 = Array<A>.localizedOxfordCommaSeparatedList.getter(v32), v35 = v34, , !v35))
      {

        return 0;
      }
    }
  }

  else
  {
    if (v26 > 4)
    {
      if (v26 == 5)
      {
        v29 = [*(a1 + 56) title];
      }

      else
      {
        v29 = [*(a1 + 56) shortExcerpt];
      }

      goto LABEL_20;
    }

    if (v26 != 3)
    {
      if (v26 == 4)
      {
        v29 = [*(a1 + 56) identifier];
LABEL_20:
        v46 = v29;
        v33 = sub_1D726207C();

        return v33;
      }

LABEL_22:
      v59 = v26;
      v60 = v25;
      v48 = [*(a1 + 56) publishDate];
      if (v48)
      {
        v49 = v48;
        sub_1D72588BC();

        v50 = v58;
        v51 = v57;
        (*(v58 + 32))(v11, v7, v57);
        v66 = v60;
        v67 = v59;
        *&v68 = v28;
        *(&v68 + 1) = v27;
        v33 = FormatDateFormat.format(_:)(v11);
        (*(v50 + 8))(v11, v51);
        return v33;
      }

      return 0;
    }

    sub_1D5E47A08(a1, v24);
    v36 = sub_1D718B62C(v24, &v61);
    v37 = v61;
    v38 = v62;
    v39 = BYTE1(v62);
    v40 = *(&v62 + 1);
    v41 = v63;
    v42 = BYTE8(v63);
    v43 = (v60)(v36);
    *&v66 = 0x657069636572;
    *(&v66 + 1) = 0xE600000000000000;
    v67 = v37;
    LOBYTE(v68) = v38;
    BYTE1(v68) = v39;
    *(&v68 + 1) = v40;
    *&v69 = v41;
    BYTE8(v69) = v42;
    v70 = v43;
    v63 = v68;
    v64 = v69;
    v65 = v43;
    v61 = v66;
    v62 = v37;
    sub_1D72578EC();
    swift_allocObject();
    sub_1D72578DC();
    sub_1D7008A74();
    sub_1D7008B24(&qword_1EDF0F1C0, sub_1D7008A74);
    v33 = sub_1D725D06C();

    sub_1D7008B6C(&v66, sub_1D7008A74);
  }

  return v33;
}

uint64_t sub_1D7007398(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6974616D6F747561;
    v6 = 0x656C746974;
    if (a1 != 2)
    {
      v6 = 0x63784574726F6873;
    }

    if (a1)
    {
      v5 = 0x696669746E656469;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x656873696C627570;
    v2 = 0x65676175676E616CLL;
    if (a1 != 7)
    {
      v2 = 0x446873696C627570;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6D69546C61746F74;
    if (a1 != 4)
    {
      v3 = 0x73726F68747561;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D70074E0()
{
  sub_1D7264A0C();
  sub_1D694F11C();
  return sub_1D7264A5C();
}

uint64_t sub_1D7007530()
{
  sub_1D7264A0C();
  sub_1D694F11C();
  return sub_1D7264A5C();
}

uint64_t sub_1D7007574@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7008BCC();
  *a1 = result;
  return result;
}

uint64_t sub_1D70075A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D7007398(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D70076C4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v155 = a3;
  v161 = a2;
  v150 = sub_1D725891C();
  v153 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150, v4);
  v148 = &v145 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v149 = &v145 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v146 = &v145 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v147 = &v145 - v14;
  v15 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v151 = (&v145 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18, v19);
  v154 = &v145 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v145 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = (&v145 - v27);
  MEMORY[0x1EEE9AC00](v29, v30);
  v152 = &v145 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v145 - v34;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = (&v145 - v38);
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = (&v145 - v42);
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = (&v145 - v46);
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v145 - v50;
  v52 = *a1;
  sub_1D7008C18(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6F90]);
  v53 = *(type metadata accessor for FormatInspectionItem(0) - 8);
  v54 = *(v53 + 72);
  v55 = *(v53 + 80);
  if (v52 <= 3)
  {
    if (v52 <= 1)
    {
      if (v52)
      {
        v90 = (v55 + 32) & ~v55;
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_1D7273AE0;
        sub_1D5E47A08(v161, v47);
        v91 = [v47[7] identifier];
        v92 = sub_1D726207C();
        v94 = v93;

        v95 = HIBYTE(v94) & 0xF;
        if ((v94 & 0x2000000000000000) == 0)
        {
          v95 = v92 & 0xFFFFFFFFFFFFLL;
        }

        if (v95)
        {
          v96 = MEMORY[0x1E69E6158];
        }

        else
        {

          v92 = 0;
          v94 = 0;
          v96 = 0;
          v157 = 0;
        }

        v68 = v155;
        *&v156 = v92;
        *(&v156 + 1) = v94;
        v158 = v96;
        sub_1D711B30C(0x696669746E656449, 0xEA00000000007265, &v156, (v57 + v90));
        v125 = v47;
      }

      else
      {
        v64 = (v55 + 32) & ~v55;
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_1D7273AE0;
        sub_1D5E47A08(v161, v51);
        v156 = 0uLL;
        v157 = 3;
        v158 = 0;
        v159 = 0;
        v160 = 0;
        v65 = sub_1D70065F4(v51, &v156);
        v67 = HIBYTE(v66) & 0xF;
        if ((v66 & 0x2000000000000000) == 0)
        {
          v67 = v65 & 0xFFFFFFFFFFFFLL;
        }

        v68 = v155;
        if (v67)
        {
          v69 = MEMORY[0x1E69E6158];
        }

        else
        {

          v65 = 0;
          v66 = 0;
          v69 = 0;
          v157 = 0;
        }

        *&v156 = v65;
        *(&v156 + 1) = v66;
        v158 = v69;
        sub_1D711B30C(0x6974616D6F747541, 0xEA00000000006E6FLL, &v156, (v57 + v64));
        v125 = v51;
      }

      goto LABEL_79;
    }

    v68 = v155;
    v70 = (v55 + 32) & ~v55;
    if (v52 == 2)
    {
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_1D7273AE0;
      sub_1D5E47A08(v161, v43);
      v71 = [v43[7] title];
      v72 = sub_1D726207C();
      v74 = v73;

      v75 = HIBYTE(v74) & 0xF;
      if ((v74 & 0x2000000000000000) == 0)
      {
        v75 = v72 & 0xFFFFFFFFFFFFLL;
      }

      if (v75)
      {
        v76 = MEMORY[0x1E69E6158];
      }

      else
      {

        v72 = 0;
        v74 = 0;
        v76 = 0;
        v157 = 0;
      }

      *&v156 = v72;
      *(&v156 + 1) = v74;
      v158 = v76;
      sub_1D711B30C(0x656C746954, 0xE500000000000000, &v156, (v57 + v70));
      v125 = v43;
      goto LABEL_79;
    }

    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1D7273AE0;
    sub_1D5E47A08(v161, v39);
    v97 = [v39[7] shortExcerpt];
    v98 = sub_1D726207C();
    v100 = v99;

    v101 = HIBYTE(v100) & 0xF;
    if ((v100 & 0x2000000000000000) == 0)
    {
      v101 = v98 & 0xFFFFFFFFFFFFLL;
    }

    if (v101)
    {
      v102 = MEMORY[0x1E69E6158];
    }

    else
    {

      v98 = 0;
      v100 = 0;
      v102 = 0;
      v157 = 0;
    }

    *&v156 = v98;
    *(&v156 + 1) = v100;
    v158 = v102;
    v126 = 0x78452074726F6853;
    v127 = 0xED00007470726563;
    v128 = (v57 + v70);
    goto LABEL_73;
  }

  if (v52 <= 5)
  {
    if (v52 == 4)
    {
      v77 = (v55 + 32) & ~v55;
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_1D7273AE0;
      sub_1D5E47A08(v161, v35);
      v156 = 0uLL;
      v157 = 7;
      v158 = 0;
      v159 = 0;
      v160 = 0;
      v79 = sub_1D70065F4(v35, &v156);
      v81 = HIBYTE(v80) & 0xF;
      if ((v80 & 0x2000000000000000) == 0)
      {
        v81 = v79 & 0xFFFFFFFFFFFFLL;
      }

      if (v81)
      {
        v82 = MEMORY[0x1E69E6158];
      }

      else
      {

        v79 = 0;
        v80 = 0;
        v82 = 0;
        v157 = 0;
      }

      v68 = v155;
      *&v156 = v79;
      *(&v156 + 1) = v80;
      v158 = v82;
      sub_1D711B30C(0x6954206C61746F54, 0xEA0000000000656DLL, &v156, (v78 + v77));
      v125 = v35;
      v57 = v78;
      goto LABEL_79;
    }

    v115 = (v55 + 32) & ~v55;
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1D7273AE0;
    v24 = v152;
    sub_1D5E47A08(v161, v152);
    v116 = [*(v24 + 7) authors];
    if (!v116 || (v117 = v116, v118 = sub_1D726267C(), v117, v119 = Array<A>.localizedOxfordCommaSeparatedList.getter(v118), v121 = v120, , !v121))
    {

      v119 = 0;
      v121 = 0xE000000000000000;
    }

    v68 = v155;
    v122 = HIBYTE(v121) & 0xF;
    if ((v121 & 0x2000000000000000) == 0)
    {
      v122 = v119 & 0xFFFFFFFFFFFFLL;
    }

    if (v122)
    {
      v123 = MEMORY[0x1E69E6158];
    }

    else
    {

      v119 = 0;
      v121 = 0;
      v123 = 0;
      v157 = 0;
    }

    *&v156 = v119;
    *(&v156 + 1) = v121;
    v158 = v123;
    v129 = 0x73726F68747541;
    v130 = (v57 + v115);
    v131 = 0xE700000000000000;
    goto LABEL_78;
  }

  if (v52 != 6)
  {
    if (v52 == 7)
    {
      v56 = (v55 + 32) & ~v55;
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_1D7273AE0;
      sub_1D5E47A08(v161, v24);
      v58 = [*(v24 + 7) language];
      v59 = sub_1D726207C();
      v61 = v60;

      v62 = HIBYTE(v61) & 0xF;
      if ((v61 & 0x2000000000000000) == 0)
      {
        v62 = v59 & 0xFFFFFFFFFFFFLL;
      }

      if (v62)
      {
        v63 = MEMORY[0x1E69E6158];
      }

      else
      {

        v59 = 0;
        v61 = 0;
        v63 = 0;
        v157 = 0;
      }

      v68 = v155;
      *&v156 = v59;
      *(&v156 + 1) = v61;
      v158 = v63;
      v129 = 0x65676175676E614CLL;
      v130 = (v57 + v56);
      v131 = 0xE800000000000000;
LABEL_78:
      sub_1D711B30C(v129, v131, &v156, v130);
      v125 = v24;
      goto LABEL_79;
    }

    v145 = v54;
    v103 = (v55 + 32) & ~v55;
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1D7270C10;
    v152 = (v57 + v103);
    v104 = v161;
    v105 = v154;
    sub_1D5E47A08(v161, v154);
    v106 = [*(v105 + 56) publishDate];
    if (v106)
    {
      v107 = v146;
      v108 = v106;
      sub_1D72588BC();

      v109 = v153;
      v110 = v147;
      v111 = v150;
      (*(v153 + 32))(v147, v107, v150);
      v112 = sub_1D725871C();
      v114 = v113;
      (*(v109 + 8))(v110, v111);
    }

    else
    {
      v112 = 0;
      v114 = 0xE000000000000000;
      v111 = v150;
    }

    v39 = v151;
    v132 = HIBYTE(v114) & 0xF;
    if ((v114 & 0x2000000000000000) == 0)
    {
      v132 = v112 & 0xFFFFFFFFFFFFLL;
    }

    if (v132)
    {
      v133 = MEMORY[0x1E69E6158];
    }

    else
    {

      v112 = 0;
      v114 = 0;
      v133 = 0;
      v157 = 0;
    }

    *&v156 = v112;
    *(&v156 + 1) = v114;
    v158 = v133;
    sub_1D711B30C(0xD000000000000014, 0x80000001D73DBDB0, &v156, v152);
    sub_1D7008B6C(v154, type metadata accessor for FeedRecipe);
    sub_1D5E47A08(v104, v39);
    v134 = [v39[7] publishDate];
    if (v134)
    {
      v135 = v148;
      v136 = v134;
      sub_1D72588BC();

      v137 = v153;
      v138 = v149;
      (*(v153 + 32))(v149, v135, v111);
      v139 = sub_1D725870C();
      v141 = v140;
      (*(v137 + 8))(v138, v111);
    }

    else
    {
      v139 = 0;
      v141 = 0xE000000000000000;
    }

    v142 = v145;
    v143 = HIBYTE(v141) & 0xF;
    if ((v141 & 0x2000000000000000) == 0)
    {
      v143 = v139 & 0xFFFFFFFFFFFFLL;
    }

    if (v143)
    {
      v144 = MEMORY[0x1E69E6158];
    }

    else
    {

      v142 = v145;
      v139 = 0;
      v141 = 0;
      v144 = 0;
      v157 = 0;
    }

    v68 = v155;
    *&v156 = v139;
    *(&v156 + 1) = v141;
    v158 = v144;
    v128 = &v152[v142];
    v127 = 0x80000001D73DBDD0;
    v126 = 0xD000000000000012;
LABEL_73:
    sub_1D711B30C(v126, v127, &v156, v128);
    v125 = v39;
LABEL_79:
    result = sub_1D7008B6C(v125, type metadata accessor for FeedRecipe);
    goto LABEL_80;
  }

  v83 = (v55 + 32) & ~v55;
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1D7273AE0;
  sub_1D5E47A08(v161, v28);
  v84 = [objc_msgSend(v28[7] sourceChannel)];
  swift_unknownObjectRelease();
  v85 = sub_1D726207C();
  v87 = v86;

  v88 = HIBYTE(v87) & 0xF;
  if ((v87 & 0x2000000000000000) == 0)
  {
    v88 = v85 & 0xFFFFFFFFFFFFLL;
  }

  if (v88)
  {
    v89 = MEMORY[0x1E69E6158];
  }

  else
  {

    v85 = 0;
    v87 = 0;
    v89 = 0;
    v157 = 0;
  }

  *&v156 = v85;
  *(&v156 + 1) = v87;
  v158 = v89;
  sub_1D711B30C(0x656873696C627550, 0xEE00656D614E2072, &v156, (v57 + v83));
  result = sub_1D7008B6C(v28, type metadata accessor for FeedRecipe);
  v68 = v155;
LABEL_80:
  *v68 = v57;
  return result;
}

BOOL _s8NewsFeed19FormatRecipeBindingV4TextO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  v13 = a2[4];
  v14 = a2[5];
  v23[0] = v3;
  v23[1] = v4;
  v23[2] = v5;
  v23[3] = v6;
  v23[4] = v7;
  v23[5] = v8;
  v23[6] = v9;
  v23[7] = v10;
  v23[8] = v11;
  v23[9] = v12;
  v23[10] = v13;
  v23[11] = v14;
  if (v5 <= 6)
  {
    if (v5 > 4)
    {
      if (v5 == 5)
      {
        if (v11 != 5)
        {
          goto LABEL_27;
        }
      }

      else if (v11 != 6)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    if (v5 == 3)
    {
      if (v11 != 3)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    if (v5 == 4)
    {
      if (v11 != 4)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

LABEL_26:
    if ((v11 - 3) >= 8)
    {
      v22[0] = v3;
      v22[1] = v4;
      v22[2] = v5;
      v22[3] = v6;
      v22[4] = v7;
      v22[5] = v8;
      v21[0] = v9;
      v21[1] = v10;
      v21[2] = v11;
      v21[3] = v12;
      v21[4] = v13;
      v21[5] = v14;
      v17 = v9;
      v19 = v11;
      v20 = v9;
      v18 = v10;
      sub_1D5E1DCE8(v9, v10, v11);
      sub_1D5E1DCE8(v3, v4, v5);
      sub_1D5E1DCE8(v17, v18, v19);
      sub_1D5E1DCE8(v3, v4, v5);
      v15 = _s8NewsFeed010FormatDateC0O2eeoiySbAC_ACtFZ_0(v22, v21);
      sub_1D7008B6C(v23, sub_1D7008C7C);
      sub_1D5E1E174(v20, v18, v19);
      sub_1D5E1E174(v3, v4, v5);
      return v15;
    }

    goto LABEL_27;
  }

  if (v5 <= 8)
  {
    if (v5 == 7)
    {
      if (v11 != 7)
      {
        goto LABEL_27;
      }
    }

    else if (v11 != 8)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (v5 != 9)
  {
    if (v5 == 10)
    {
      if (v11 != 10)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (v11 != 9)
  {
LABEL_27:
    sub_1D5E1DCE8(v9, v10, v11);
    sub_1D5E1DCE8(v3, v4, v5);
    sub_1D7008B6C(v23, sub_1D7008C7C);
    return 0;
  }

LABEL_25:
  sub_1D7008B6C(v23, sub_1D7008C7C);
  return 1;
}

unint64_t sub_1D700867C(uint64_t a1)
{
  result = sub_1D70086A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D70086A4()
{
  result = qword_1EC899420;
  if (!qword_1EC899420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899420);
  }

  return result;
}

unint64_t sub_1D70086F8(void *a1)
{
  a1[1] = sub_1D665FC84();
  a1[2] = sub_1D6705118();
  result = sub_1D7008730();
  a1[3] = result;
  return result;
}

unint64_t sub_1D7008730()
{
  result = qword_1EC899428;
  if (!qword_1EC899428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899428);
  }

  return result;
}

uint64_t sub_1D7008784(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF4 && *(a1 + 48))
  {
    return (*a1 + 2147483637);
  }

  v3 = *(a1 + 16);
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
  if (v5 < 3)
  {
    v6 = 0;
  }

  if (v6 >= 9)
  {
    return v6 - 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D70087F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF5)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483637;
    if (a3 >= 0x7FFFFFF5)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF5)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 10;
    }
  }

  return result;
}

double sub_1D700884C(_OWORD *a1, unsigned int a2)
{
  if (a2 > 0x7FFFFFFC)
  {
    result = 0.0;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
    *a1 = a2 - 2147483645;
  }

  else if (a2)
  {
    *(a1 + 2) = a2 + 2;
  }

  return result;
}

void sub_1D70088EC()
{
  if (!qword_1EC899438)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC899438);
    }
  }
}

unint64_t sub_1D7008940()
{
  result = qword_1EC899440;
  if (!qword_1EC899440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899440);
  }

  return result;
}

unint64_t sub_1D7008994()
{
  result = qword_1EDF2C140;
  if (!qword_1EDF2C140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C140);
  }

  return result;
}

uint64_t sub_1D70089E8(uint64_t a1)
{
  sub_1D7008C18(0, &qword_1EDF17C00, MEMORY[0x1E69D6570], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7008A74()
{
  if (!qword_1EDF0F1B8)
  {
    sub_1D7008AD0();
    v0 = type metadata accessor for FormatCellAutomation();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0F1B8);
    }
  }
}

unint64_t sub_1D7008AD0()
{
  result = qword_1EDF11018;
  if (!qword_1EDF11018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11018);
  }

  return result;
}

uint64_t sub_1D7008B24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7008B6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7008BCC()
{
  v0 = sub_1D72641CC();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

void sub_1D7008C18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D7008C7C()
{
  if (!qword_1EC899448)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC899448);
    }
  }
}

__n128 __swift_memcpy46_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D7008D0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 46))
  {
    return (*a1 + 124);
  }

  v3 = ((*(a1 + 44) >> 13) & 0xFFFFFF87 | (8 * ((*(a1 + 44) >> 9) & 0xF))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D7008D60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 46) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 46) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 40) = 0;
      *(result + 44) = (((-a2 >> 3) & 0xF) - 16 * a2) << 9;
    }
  }

  return result;
}

uint64_t sub_1D7008DD0(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = a1 + 40;
  v3 = v2 | (*(result + 4) << 32);
  *result = v2;
  *(result + 4) = WORD2(v3) & 0x1FFF;
  return result;
}

uint64_t sub_1D7008DEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  result = a1 + 40;
  v4 = (v3 | (*(result + 4) << 32)) & 0x1FFFFFFFFFFLL | (a2 << 45);
  *result = v3;
  *(result + 4) = WORD2(v4);
  return result;
}

unint64_t sub_1D7008E24()
{
  result = qword_1EC899450;
  if (!qword_1EC899450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899450);
  }

  return result;
}