void sub_1C4DB2AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v100 = v25;
  v26 = sub_1C4EFEEF8();
  v27 = sub_1C43FCDF8(v26);
  v111 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C446C1EC(v33, v34, v35, v36, v37, v38, v39, v40, v99);
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBF38();
  v106 = v42;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBF38();
  v109 = v44;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FD230();
  v112 = v46;
  v47 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v47);
  v49 = *(v48 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBC74();
  v113 = v51;
  v115 = sub_1C456902C(&qword_1EC0C75B0, &qword_1C4F73BF8);
  sub_1C43FCDF8(v115);
  v53 = *(v52 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBC74();
  v55 = sub_1C43FBE44();
  v56 = type metadata accessor for FutureLifeEventStructs.DateRelationshipType(v55);
  v57 = sub_1C43FBCE0(v56);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBCC4();
  v62 = v61 - v60;
  sub_1C43FCF64();
  v114 = v26;
  sub_1C440BAA8(v63, v64, v65, v26);
  v66 = v62 + v56[5];
  sub_1C4EFD168();
  v67 = v56[6];
  if (qword_1EDDFED40 != -1)
  {
    sub_1C4415A7C();
    swift_once();
  }

  v68 = type metadata accessor for Source();
  sub_1C442B738(v68, qword_1EDDFD2A8);
  sub_1C441AC58();
  sub_1C448D3B8(v69, v62 + v67, v70);
  v110 = v56[7];
  sub_1C4EFEEE8();
  sub_1C442A7D8();
  *v71 = 0;
  v71[1] = 0;
  v108 = v71;
  v107 = v56[9];
  sub_1C4EFE7B8();
  v72 = (v62 + v56[10]);
  *v72 = 0;
  v72[1] = 0;
  v105 = v56[11];
  sub_1C4EFECE8();
  v73 = (v62 + v56[12]);
  *v73 = 0;
  v73[1] = 0;
  v103 = v56[13];
  sub_1C4EFE668();
  v74 = (v62 + v56[14]);
  *v74 = 0;
  v74[1] = 0;
  v102 = v56[15];
  sub_1C4EFE698();
  v75 = (v62 + v56[16]);
  *v75 = 0;
  v75[1] = 0;
  v76 = v56[17];
  sub_1C4EFEA38();
  v116 = v62;
  v77 = (v62 + v56[18]);
  *v77 = 0;
  v77[1] = 0;
  v78 = v24[4];
  sub_1C4417F50(v24, v24[3]);
  sub_1C4DB75C8();
  sub_1C4F02BC8();
  if (!v20)
  {
    sub_1C442DB54();
    sub_1C4DB625C(v79, v80);
    sub_1C4F02658();
    sub_1C444088C(v113, v116, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441405C();
    sub_1C4F026C8();
    v82 = *(v111 + 40);
    v82(v116 + v110, v112, v114);
    sub_1C4428F20();
    *v108 = sub_1C4475320();
    v108[1] = v83;
    sub_1C4456A34();
    sub_1C4414430();
    sub_1C4F026C8();
    v82(v116 + v107, v109, v114);
    *v72 = sub_1C4475320();
    v72[1] = v84;
    sub_1C4414430();
    sub_1C4F026C8();
    v82(v116 + v105, v106, v114);
    v85 = sub_1C4475320();
    sub_1C443E4B8(v85, v86, &a16);
    sub_1C43FE79C(9);
    sub_1C4414430();
    sub_1C4F026C8();
    v87 = sub_1C447565C(v103);
    v82(v87, v104, v114);
    v88 = sub_1C4475320();
    sub_1C443E4B8(v88, v89, &a15);
    sub_1C4414430();
    sub_1C4F026C8();
    v90 = sub_1C447565C(v102);
    (v82)(v90);
    v91 = sub_1C4F02618();
    sub_1C443E4B8(v91, v92, &a14);
    sub_1C4F026C8();
    v93 = sub_1C447565C(v76);
    v82(v93, v101, v114);
    v94 = sub_1C4F02618();
    v96 = v95;
    v97 = sub_1C44AB2D4();
    v98(v97);
    *v77 = v94;
    v77[1] = v96;
    sub_1C448D3B8(v116, v100, type metadata accessor for FutureLifeEventStructs.DateRelationshipType);
  }

  sub_1C440962C(v24);
  sub_1C4402714();
  sub_1C447EC94(v116, v81);
  sub_1C43FBC80();
}

uint64_t sub_1C4DB3250(uint64_t a1)
{
  v2 = sub_1C4DB75C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DB328C(uint64_t a1)
{
  v2 = sub_1C4DB75C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DB3310()
{
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C44042B0();
  v9 = type metadata accessor for FutureLifeEventStructs.LocationRelationshipType(v8);
  v10 = sub_1C43FCF7C(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBD08();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4402CA8();
  v17 = *(type metadata accessor for FutureLifeEventStructs.CommuteActivity(0) + 64);
  result = *(v1 + v17);
  if (result)
  {
    v19 = *(result + 16);
    if (v19)
    {
      sub_1C4401968(result);
      v20 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1C448D3B8(v17, v2, type metadata accessor for FutureLifeEventStructs.LocationRelationshipType);
        sub_1C4EFEAC8();
        v21 = sub_1C4EFEEF8();
        sub_1C440CBF4(v21);
        sub_1C444088C(v0, v2, &qword_1EC0B9A08, &unk_1C4F107B0);
        sub_1C448D3B8(v2, v15, type metadata accessor for FutureLifeEventStructs.LocationRelationshipType);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = *(v20 + 16);
          v26 = sub_1C43FCEC0();
          sub_1C458C814(v26, v27, v28, v20);
          v20 = v29;
        }

        v23 = *(v20 + 16);
        v22 = *(v20 + 24);
        if (v23 >= v22 >> 1)
        {
          v30 = sub_1C43FCFE8(v22);
          sub_1C458C814(v30, v23 + 1, 1, v20);
          v20 = v31;
        }

        *(v20 + 16) = v23 + 1;
        sub_1C44DD95C(v15, v20 + v1 + v23 * v3, type metadata accessor for FutureLifeEventStructs.LocationRelationshipType);
        sub_1C4433F64();
        sub_1C447EC94(v2, v24);
        v17 += v3;
        --v19;
      }

      while (v19);

      v17 = v32;
      v1 = v33;
    }

    else
    {

      v20 = MEMORY[0x1E69E7CC0];
    }

    *(v1 + v17) = v20;
  }

  return result;
}

void sub_1C4DB3544()
{
  sub_1C43FE628();
  v372 = v1;
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1C456902C(&qword_1EC0C3428, &unk_1C4F73720);
  sub_1C43FBD18(v10);
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBC74();
  v15 = sub_1C43FD2C8(v14);
  v356 = type metadata accessor for FutureLifeEventStructs.DateRelationshipType(v15);
  v16 = sub_1C43FBCE0(v356);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD2D8();
  v20 = sub_1C43FD2C8(v19);
  v21 = type metadata accessor for FutureLifeEventStructs.LocationRelationshipType(v20);
  v22 = sub_1C43FCF7C(v21);
  v374 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FD2D8();
  v373 = v26;
  v27 = sub_1C43FBE44();
  v28 = type metadata accessor for FutureLifeEventStructs.IdentifierRelationshipType(v27);
  v29 = sub_1C43FCF7C(v28);
  v376 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FD2D8();
  v377 = v33;
  v34 = sub_1C456902C(&qword_1EC0C3430, &qword_1C4F51390);
  v35 = sub_1C43FBD18(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FD230();
  v365 = v39;
  v40 = sub_1C43FBE44();
  v371 = type metadata accessor for FutureLifeEventStructs.Place(v40);
  v41 = sub_1C43FBCE0(v371);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FD230();
  sub_1C43FCE30(v45);
  v46 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v47 = sub_1C43FBD18(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v349 - v52;
  v368 = sub_1C4EFF0C8();
  v54 = sub_1C43FCDF8(v368);
  v370 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FD230();
  sub_1C43FCE30(v60);
  v61 = sub_1C456902C(&qword_1EC0C7400, &unk_1C4F73730);
  sub_1C43FBD18(v61);
  v63 = *(v62 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v64);
  sub_1C43FBC74();
  v367 = v65;
  v66 = sub_1C43FBE44();
  v369 = type metadata accessor for FutureLifeEventStructs.CommuteActivityType(v66);
  v67 = sub_1C43FBCE0(v369);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  sub_1C43FD2D8();
  v366 = v70;
  v71 = sub_1C43FBE44();
  v72 = type metadata accessor for EntityTriple(v71);
  v378 = sub_1C43FCDF8(v72);
  v379 = v73;
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v378);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v76);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v77);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v78);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v349 - v80;
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v349 - v83;
  LODWORD(v0) = *v5;
  v85 = MEMORY[0x1E69E7CC0];
  v390 = MEMORY[0x1E69E7CC0];
  v375 = type metadata accessor for FutureLifeEventStructs.CommuteActivity(0);
  v86 = (v3 + v375[9]);
  v87 = v86[1];
  v380 = v9;
  v381 = v7;
  v383 = v3;
  v382 = v0;
  v354 = v53;
  if (!v87)
  {
    goto LABEL_6;
  }

  sub_1C4434384(v86);
  if (!v88)
  {
    goto LABEL_5;
  }

  v53 = v383;
  (*(v370 + 16))(v84, v383, v368);
  v0 = v375;
  v89 = v375[8];
  v90 = v378;
  v91 = *(v378 + 20);
  v92 = sub_1C4EFEEF8();
  sub_1C43FCE50(v92);
  v94 = &v53[v89];
  v9 = v380;
  (*(v93 + 16))(&v84[v91], v94);
  v95 = *(v0 + 28);
  v96 = v90[9];
  sub_1C441AC58();
  sub_1C448D3B8(&v53[v97], &v84[v98], v99);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  sub_1C4429130();
  sub_1C4EFF888();
  v100 = &v84[v90[7]];
  sub_1C4EFEC38();
  v101 = &v84[v90[8]];
  *v101 = v3;
  *(v101 + 1) = v87;
  v102 = &v84[v90[10]];
  v103 = v381;
  *v102 = v9;
  *(v102 + 1) = v103;
  *&v84[v90[11]] = v2;
  v104 = v90[12];
  v7 = v381;
  LOBYTE(v0) = v382;
  v84[v104] = v382;
  v105 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4401EC4(v105, v106, v107, MEMORY[0x1E69E7CC0]);
  v85 = v108;
  v110 = *(v108 + 16);
  v109 = *(v108 + 24);
  v111 = (v110 + 1);
  if (v110 >= v109 >> 1)
  {
    goto LABEL_118;
  }

  while (1)
  {
    *(v85 + 16) = v111;
    sub_1C441D090();
    sub_1C44083BC();
    sub_1C44DD95C(v84, v112, v113);
    v390 = v85;
LABEL_5:
    v3 = v383;
LABEL_6:
    v114 = v375;
    v115 = (v3 + v375[11]);
    v116 = v115[1];
    if (v116)
    {
      sub_1C4434384(v115);
      if (v117)
      {
        v53 = v383;
        (*(v370 + 16))(v81, v383, v368);
        v118 = v114[10];
        v0 = v7;
        v119 = v378;
        v120 = *(v378 + 20);
        v121 = sub_1C4EFEEF8();
        sub_1C43FCE50(v121);
        v123 = &v81[v120];
        v114 = v375;
        v124 = &v53[v118];
        v9 = v380;
        (*(v122 + 16))(v123, v124);
        v125 = v114[7];
        v126 = v119[9];
        sub_1C441AC58();
        sub_1C448D3B8(&v53[v127], &v81[v128], v129);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4429130();
        sub_1C4EFF888();
        v130 = &v81[v119[7]];
        sub_1C4EFEC38();
        v131 = &v81[v119[8]];
        *v131 = v3;
        *(v131 + 1) = v116;
        v132 = &v81[v119[10]];
        *v132 = v9;
        *(v132 + 1) = v0;
        *&v81[v119[11]] = v2;
        v133 = v119[12];
        v7 = v0;
        LOBYTE(v0) = v382;
        v81[v133] = v382;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v303 = *(v85 + 16);
          v304 = sub_1C43FCEC0();
          sub_1C44C9240(v304, v305, v306, v85);
          v85 = v307;
        }

        v135 = *(v85 + 16);
        v134 = *(v85 + 24);
        if (v135 >= v134 >> 1)
        {
          sub_1C43FCFE8(v134);
          sub_1C442A5D0();
          sub_1C44C9240(v308, v309, v310, v311);
          v85 = v312;
        }

        *(v85 + 16) = v135 + 1;
        sub_1C441D090();
        sub_1C44083BC();
        sub_1C44DD95C(v81, v136, v137);
        v390 = v85;
      }

      v3 = v383;
    }

    v138 = v367;
    sub_1C445FFA8(v3 + v114[12], v367, &qword_1EC0C7400, &unk_1C4F73730);
    sub_1C440175C(v138, 1, v369);
    v139 = v372;
    if (v140)
    {
      v141 = v9;
      sub_1C4420C3C(v138, &qword_1EC0C7400, &unk_1C4F73730);
      goto LABEL_28;
    }

    v142 = sub_1C445AC78();
    v53 = v9;
    v143 = v366;
    sub_1C44DD95C(v142, v366, v144);
    v384 = v0;
    sub_1C441B0B4();
    sub_1C4DAA804();
    v139 = v1;
    if (v1)
    {
      sub_1C442C260();
      v147 = v143;
      goto LABEL_57;
    }

    if (*(v145 + 16))
    {
      break;
    }

    v141 = v53;
    sub_1C442C260();
    sub_1C447EC94(v366, v176);

LABEL_27:
    LOBYTE(v0) = v382;
LABEL_28:
    v111 = v377;
    v177 = sub_1C447565C(v114[13]);
    v178 = v365;
    sub_1C445FFA8(v177, v365, v179, v180);
    sub_1C440175C(v178, 1, v371);
    if (v140)
    {
      sub_1C4420C3C(v178, &qword_1EC0C3430, &qword_1C4F51390);
      v9 = v141;
LABEL_31:
      v181 = v383;
      goto LABEL_32;
    }

    sub_1C44367E8();
    v53 = v364;
    sub_1C44DD95C(v178, v364, v202);
    v385 = v0;
    v9 = v141;
    LOBYTE(v0) = v53;
    v1 = v139;
    sub_1C4DAF358();
    if (v139)
    {
      v204 = type metadata accessor for FutureLifeEventStructs.Place;
      goto LABEL_54;
    }

    v111 = v203;
    if (!*(v203 + 16))
    {
      sub_1C4401514();
      sub_1C447EC94(v364, v274);

      sub_1C447F78C();
      goto LABEL_31;
    }

    v372 = 0;
    v208 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C49D3614(v208);
    sub_1C44417D0();
    v181 = v383;
    sub_1C44EB934();
    v209();
    v210 = v351;
    sub_1C445FFA8(&v364[*(v371 + 20)], v351, &qword_1EC0B9A08, &unk_1C4F107B0);
    v211 = sub_1C4EFEEF8();
    v212 = sub_1C45089A0();
    sub_1C440175C(v212, v213, v211);
    if (v140)
    {
      goto LABEL_120;
    }

    v369 = sub_1C4EFF048();
    v111 = v214;
    v215 = v375[7];
    v216 = v378;
    v217 = *(v378 + 36);
    sub_1C441AC58();
    v0 = v359;
    sub_1C448D3B8(&v181[v218], v359 + v219, v220);
    sub_1C4EF9AE8();
    sub_1C4429130();
    sub_1C4EFF888();
    v221 = v0 + v216[7];
    sub_1C4EFEC38();
    (*(v85 + 32))(v0, v360, v53);
    sub_1C447E42C();
    (*(v222 + 32))(v0 + v223, v210, v211);
    v224 = (v0 + v216[8]);
    *v224 = v369;
    v224[1] = v111;
    v225 = (v0 + v216[10]);
    v226 = v381;
    *v225 = v9;
    v225[1] = v226;
    *(v0 + v216[11]) = v2;
    v227 = v216[12];
    v7 = v226;
    *(v0 + v227) = v382;
    v85 = v390;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v322 = *(v85 + 16);
      v323 = sub_1C43FCEC0();
      sub_1C44C9240(v323, v324, v325, v85);
      v85 = v326;
    }

    sub_1C446214C();
    v114 = v375;
    if (v172)
    {
      v327 = sub_1C43FFD98(v228);
      sub_1C44C9240(v327, v328, v329, v85);
      v85 = v330;
    }

    v139 = v372;
    sub_1C4401514();
    sub_1C447EC94(v364, v229);
    *(v85 + 16) = v0;
    sub_1C441D090();
    sub_1C44083BC();
    sub_1C44DD95C(v359, v230, v231);
    v390 = v85;
    sub_1C447F78C();
LABEL_32:
    v182 = &v181[v114[14]];
    v183 = v363;
    sub_1C445FFA8(v182, v363, &qword_1EC0C3430, &qword_1C4F51390);
    v184 = sub_1C44A1500();
    sub_1C440175C(v184, v185, v371);
    if (v140)
    {
      v53 = v139;
      sub_1C4420C3C(v183, &qword_1EC0C3430, &qword_1C4F51390);
LABEL_35:
      v186 = v383;
      goto LABEL_36;
    }

    sub_1C44367E8();
    sub_1C4432CFC();
    sub_1C44DD95C(v205, v111, v206);
    v386 = v0;
    LOBYTE(v0) = v111;
    v1 = v139;
    sub_1C4DAF358();
    if (v139)
    {
      sub_1C4401514();
      v147 = v111;
      goto LABEL_57;
    }

    if (!*(v207 + 16))
    {
      v53 = 0;
      sub_1C4401514();
      sub_1C447EC94(v362, v275);

      sub_1C447F78C();
      goto LABEL_35;
    }

    v372 = 0;
    v245 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C49D3614(v245);
    sub_1C44417D0();
    v111 = v349;
    v186 = v383;
    sub_1C44EB934();
    v246();
    v247 = v350;
    sub_1C445FFA8(v362 + *(v371 + 20), v350, &qword_1EC0B9A08, &unk_1C4F107B0);
    v248 = sub_1C4EFEEF8();
    v249 = sub_1C45089A0();
    sub_1C440175C(v249, v250, v248);
    if (v140)
    {
      goto LABEL_121;
    }

    v371 = sub_1C4EFF048();
    v369 = v251;
    v252 = v375[7];
    v253 = v378;
    v254 = *(v378 + 36);
    sub_1C441AC58();
    v0 = v352;
    sub_1C448D3B8(&v186[v255], v352 + v256, v257);
    sub_1C4EF9AE8();
    sub_1C4429130();
    sub_1C4EFF888();
    v258 = v0 + v253[7];
    sub_1C4EFEC38();
    (*(v85 + 32))(v0, v111, v53);
    sub_1C447E42C();
    (*(v259 + 32))(v0 + v260, v247, v248);
    v261 = (v0 + v253[8]);
    v262 = v369;
    *v261 = v371;
    v261[1] = v262;
    v263 = (v0 + v253[10]);
    v264 = v381;
    *v263 = v9;
    v263[1] = v264;
    *(v0 + v253[11]) = v2;
    v265 = v253[12];
    v7 = v264;
    *(v0 + v265) = v382;
    v85 = v390;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v340 = *(v85 + 16);
      v341 = sub_1C43FCEC0();
      sub_1C44C9240(v341, v342, v343, v85);
      v85 = v344;
    }

    v53 = v372;
    sub_1C446214C();
    v114 = v375;
    if (v172)
    {
      v345 = sub_1C43FFD98(v266);
      sub_1C44C9240(v345, v346, v347, v85);
      v85 = v348;
    }

    sub_1C4401514();
    sub_1C447EC94(v362, v267);
    *(v85 + 16) = v0;
    sub_1C441D090();
    sub_1C44083BC();
    sub_1C44DD95C(v352, v268, v269);
    v390 = v85;
    sub_1C447F78C();
LABEL_36:
    v84 = *&v186[v114[15]];
    if (!v84)
    {
LABEL_67:
      v111 = v375;
      v232 = *&v186[v375[16]];
      if (v232)
      {
        v84 = 0;
        v81 = *(v232 + 16);
        while (1)
        {
          if (v81 == v84)
          {
            v111 = v375;
            goto LABEL_92;
          }

          v109 = *(v232 + 16);
          if (v84 >= v109)
          {
            goto LABEL_111;
          }

          v111 = v373;
          sub_1C43FBF6C();
          sub_1C4428A68();
          sub_1C445C0A4();
          sub_1C448D3B8(v233, v111, v234);
          v388 = v0;
          sub_1C445AA3C();
          sub_1C4DB0564();
          v53 = v1;
          if (v1)
          {
            break;
          }

          v0 = v235;
          sub_1C4433F64();
          sub_1C447EC94(v111, v236);
          v111 = *(v0 + 16);
          v9 = *(v85 + 16);
          v7 = v111 + v9;
          if (__OFADD__(v9, v111))
          {
            goto LABEL_112;
          }

          if (!swift_isUniquelyReferenced_nonNull_native() || (v237 = *(v85 + 24) >> 1, v237 < v7))
          {
            sub_1C442A5D0();
            sub_1C44C9240(v238, v239, v240, v241);
            v85 = v242;
            v237 = *(v242 + 24) >> 1;
          }

          v9 = v380;
          v7 = v381;
          if (*(v0 + 16))
          {
            v109 = v237 - *(v85 + 16);
            if (v109 < v111)
            {
              goto LABEL_115;
            }

            sub_1C4424830();

            LOBYTE(v0) = v382;
            if (v111)
            {
              v243 = *(v85 + 16);
              v201 = __OFADD__(v243, v111);
              v109 = v111 + v243;
              if (v201)
              {
                goto LABEL_117;
              }

              *(v85 + 16) = v109;
            }
          }

          else
          {

            LOBYTE(v0) = v382;
            if (v111)
            {
              goto LABEL_113;
            }
          }

          v390 = v85;
          ++v84;
        }

        v244 = type metadata accessor for FutureLifeEventStructs.LocationRelationshipType;
LABEL_98:
        sub_1C447EC94(v111, v244);

        goto LABEL_58;
      }

LABEL_92:
      v270 = v383;
      v271 = v357;
      sub_1C445FFA8(&v383[v111[17]], v357, &qword_1EC0C3428, &unk_1C4F73720);
      sub_1C440175C(v271, 1, v356);
      v272 = v53;
      v53 = v358;
      if (v140)
      {
        sub_1C4420C3C(v271, &qword_1EC0C3428, &unk_1C4F73720);
      }

      else
      {
        sub_1C44DD95C(v271, v358, type metadata accessor for FutureLifeEventStructs.DateRelationshipType);
        v389 = v382;
        sub_1C4DB1934();
        if (v272)
        {
          v204 = type metadata accessor for FutureLifeEventStructs.DateRelationshipType;
LABEL_54:
          v146 = v204;
          v147 = v53;
LABEL_57:
          sub_1C447EC94(v147, v146);

LABEL_58:
          sub_1C44109F8();
          return;
        }

        sub_1C49D3614(v273);
        sub_1C4402714();
        sub_1C447EC94(v53, v276);
        v85 = v390;
      }

      if (*(v85 + 16))
      {
        v277 = v355;
        (*(v370 + 16))(v355, v270, v368);
        v278 = v378;
        v279 = v277 + *(v378 + 20);
        sub_1C4EFEBB8();
        v280 = &v270[v111[6]];
        v281 = sub_1C4EFD2F8();
        v377 = v282;
        v283 = v111[7];
        v284 = v278[9];
        sub_1C441AC58();
        sub_1C448D3B8(&v270[v285], v277 + v286, v287);
        sub_1C4EF9AE8();
        v289 = v288;
        v290 = v277 + v278[6];
        sub_1C4EFF888();
        v291 = v277 + v278[7];
        sub_1C4EFEC38();
        v292 = (v277 + v278[8]);
        v293 = v377;
        *v292 = v281;
        v292[1] = v293;
        v294 = (v277 + v278[10]);
        *v294 = v9;
        v294[1] = v7;
        *(v277 + v278[11]) = v289;
        *(v277 + v278[12]) = v382;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v331 = *(v85 + 16);
          v332 = sub_1C43FCEC0();
          sub_1C44C9240(v332, v333, v334, v85);
          v85 = v335;
        }

        sub_1C446214C();
        if (v172)
        {
          v336 = sub_1C43FFD98(v295);
          sub_1C44C9240(v336, v337, v338, v85);
          v85 = v339;
        }

        *(v85 + 16) = v281;
        sub_1C441D090();
        sub_1C44083BC();
        sub_1C44DD95C(v355, v296, v297);
      }

      goto LABEL_58;
    }

    v81 = 0;
    v187 = *(v84 + 2);
    while (1)
    {
      if (v187 == v81)
      {
        v186 = v383;
        goto LABEL_67;
      }

      v109 = *(v84 + 2);
      if (v81 >= v109)
      {
        break;
      }

      sub_1C43FBF6C();
      v189 = *(v188 + 72);
      sub_1C4441370();
      sub_1C448D3B8(v190, v111, v191);
      v387 = v0;
      sub_1C445AA3C();
      sub_1C4DAB71C();
      v53 = v1;
      if (v1)
      {
        v244 = type metadata accessor for FutureLifeEventStructs.IdentifierRelationshipType;
        goto LABEL_98;
      }

      v0 = v192;
      sub_1C440EBE8();
      sub_1C447EC94(v111, v193);
      v111 = *(v0 + 16);
      v9 = *(v85 + 16);
      v7 = v111 + v9;
      if (__OFADD__(v9, v111))
      {
        goto LABEL_109;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || (v194 = *(v85 + 24) >> 1, v194 < v7))
      {
        sub_1C442A5D0();
        sub_1C44C9240(v195, v196, v197, v198);
        v85 = v199;
        v194 = *(v199 + 24) >> 1;
      }

      v9 = v380;
      v7 = v381;
      if (*(v0 + 16))
      {
        v109 = v194 - *(v85 + 16);
        if (v109 < v111)
        {
          goto LABEL_114;
        }

        sub_1C4424830();

        LOBYTE(v0) = v382;
        if (v111)
        {
          v200 = *(v85 + 16);
          v201 = __OFADD__(v200, v111);
          v109 = v111 + v200;
          if (v201)
          {
            goto LABEL_116;
          }

          *(v85 + 16) = v109;
        }
      }

      else
      {

        LOBYTE(v0) = v382;
        if (v111)
        {
          goto LABEL_110;
        }
      }

      v390 = v85;
      ++v81;
      v111 = v377;
    }

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
    sub_1C43FCFE8(v109);
    sub_1C442A5D0();
    sub_1C44C9240(v298, v299, v300, v301);
    v85 = v302;
  }

  v372 = 0;
  v148 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3614(v148);
  sub_1C44417D0();
  sub_1C44EB934();
  v149();
  v150 = v354;
  sub_1C445FFA8(v366 + *(v369 + 20), v354, &qword_1EC0B9A08, &unk_1C4F107B0);
  v151 = sub_1C4EFEEF8();
  v152 = sub_1C45089A0();
  sub_1C440175C(v152, v153, v151);
  if (!v140)
  {

    v154 = sub_1C4EFF048();
    v156 = v155;
    v157 = v375[7];
    v158 = v378;
    v159 = *(v378 + 36);
    sub_1C441AC58();
    v161 = v353;
    sub_1C448D3B8(v3 + v160, v353 + v162, v163);
    sub_1C4EF9AE8();
    sub_1C4429130();
    sub_1C4EFF888();
    v164 = v161 + v158[7];
    sub_1C4EFEC38();
    (*(v85 + 32))(v161, v361, v53);
    sub_1C447E42C();
    (*(v165 + 32))(v161 + v166, v150, v151);
    v167 = (v161 + v158[8]);
    *v167 = v154;
    v167[1] = v156;
    v168 = (v161 + v158[10]);
    v53 = v380;
    v169 = v381;
    *v168 = v380;
    v168[1] = v169;
    *(v161 + v158[11]) = v2;
    v170 = v158[12];
    v7 = v169;
    *(v161 + v170) = v382;
    v85 = v390;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v313 = *(v85 + 16);
      v314 = sub_1C43FCEC0();
      sub_1C44C9240(v314, v315, v316, v85);
      v85 = v317;
    }

    sub_1C446214C();
    v114 = v375;
    if (v172)
    {
      v318 = sub_1C43FFD98(v171);
      sub_1C44C9240(v318, v319, v320, v85);
      v85 = v321;
    }

    v139 = v372;
    v141 = v53;
    sub_1C442C260();
    sub_1C447EC94(v366, v173);
    *(v85 + 16) = v154;
    sub_1C441D090();
    sub_1C44083BC();
    sub_1C44DD95C(v161, v174, v175);
    v390 = v85;
    goto LABEL_27;
  }

  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
}

uint64_t sub_1C4DB49F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x80000001C4FC7F00 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000017 && 0x80000001C4FC8AF0 == a2;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x80000001C4FC8B10 == a2;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x7461636F4C646E65 && a2 == 0xEB000000006E6F69;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000017 && 0x80000001C4FC85A0 == a2;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else if (a1 == 0x65746144736168 && a2 == 0xE700000000000000)
                          {

                            return 13;
                          }

                          else
                          {
                            v19 = sub_1C4F02938();

                            if (v19)
                            {
                              return 13;
                            }

                            else
                            {
                              return 14;
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

unint64_t sub_1C4DB4E50(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x6572705F656D616ELL;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0x6E656469666E6F63;
      break;
    case 8:
    case 12:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x7461636F4C646E65;
      break;
    case 11:
      result = 0x696669746E656469;
      break;
    case 13:
      result = 0x65746144736168;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1C4DB4FE8()
{
  sub_1C43FE96C();
  v2 = v0;
  v3 = sub_1C456902C(&qword_1EC0C7460, &qword_1C4F73758);
  sub_1C43FCDF8(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C4402A68();
  sub_1C43FD870();
  sub_1C4DB6334();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C4EFF0C8();
  sub_1C4413E04();
  sub_1C4DB625C(v7, v8);
  sub_1C4449458();
  sub_1C43FEF68();
  sub_1C4F027E8();
  if (!v1)
  {
    v9 = type metadata accessor for FutureLifeEventStructs.CommuteActivity(0);
    v10 = *(v9 + 20);
    sub_1C443E4C4(1);
    sub_1C4EFEEF8();
    sub_1C442DB54();
    sub_1C4DB625C(v11, v12);
    sub_1C43FFA38();
    sub_1C4F02778();
    v38 = v9;
    v13 = *(v9 + 24);
    sub_1C443E4C4(2);
    sub_1C4EFD548();
    sub_1C440B92C();
    sub_1C4DB625C(v14, v15);
    sub_1C43FEF68();
    sub_1C4F027E8();
    v16 = v38[7];
    sub_1C443E4C4(3);
    type metadata accessor for Source();
    sub_1C4412A94();
    sub_1C4DB625C(v17, v18);
    sub_1C43FEF68();
    sub_1C4F027E8();
    v19 = v38[8];
    sub_1C43FFA38();
    sub_1C4F027E8();
    sub_1C4401774(v38[9]);
    sub_1C43FBF44();
    sub_1C4F02738();
    v20 = v38[10];
    sub_1C43FFA38();
    sub_1C4F027E8();
    sub_1C4401774(v38[11]);
    sub_1C43FBF44();
    sub_1C4F02738();
    v21 = v38[12];
    v22 = sub_1C443E4C4(8);
    type metadata accessor for FutureLifeEventStructs.CommuteActivityType(v22);
    sub_1C444AEB4();
    sub_1C4DB625C(v23, v24);
    sub_1C43FEF68();
    sub_1C4F02778();
    v25 = v38[13];
    v26 = sub_1C443E4C4(9);
    type metadata accessor for FutureLifeEventStructs.Place(v26);
    sub_1C442E79C();
    sub_1C4DB625C(v27, v28);
    sub_1C43FFA38();
    sub_1C4F02778();
    v29 = v38[14];
    sub_1C43FFA38();
    sub_1C4F02778();
    v39 = *(v2 + v38[15]);
    sub_1C456902C(&qword_1EC0C7428, &qword_1C4F73748);
    sub_1C444C49C();
    sub_1C4DB6454(v30, v31);
    sub_1C43FEF68();
    sub_1C4F02778();
    v40 = *(v2 + v38[16]);
    sub_1C456902C(&qword_1EC0C7440, &qword_1C4F73750);
    sub_1C4DB63A8(&qword_1EC0C7488, &qword_1EC0C7490);
    sub_1C43FEF68();
    sub_1C4F02778();
    v32 = v38[17];
    v33 = sub_1C443E4C4(13);
    type metadata accessor for FutureLifeEventStructs.DateRelationshipType(v33);
    sub_1C448F2A0();
    sub_1C4DB625C(v34, v35);
    sub_1C43FEF68();
    sub_1C4F02778();
  }

  v36 = sub_1C440231C();
  v37(v36);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4DB54CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  v12 = v11;
  v112 = v13;
  v14 = sub_1C456902C(&qword_1EC0C3428, &unk_1C4F73720);
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBC74();
  sub_1C43FCE30(v18);
  v19 = sub_1C456902C(&qword_1EC0C3430, &qword_1C4F51390);
  v20 = sub_1C43FBD18(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FD230();
  sub_1C43FCE30(v24);
  v25 = sub_1C456902C(&qword_1EC0C7400, &unk_1C4F73730);
  sub_1C43FBD18(v25);
  v27 = *(v26 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBC74();
  sub_1C43FD2C8(v29);
  v30 = sub_1C4EFEEF8();
  v31 = sub_1C43FCDF8(v30);
  v132 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FD230();
  v118 = v36;
  v37 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v37);
  v39 = *(v38 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBC74();
  v119 = v41;
  sub_1C43FBE44();
  v42 = sub_1C4EFF0C8();
  v43 = sub_1C43FCDF8(v42);
  v122 = v44;
  v123 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FD2D8();
  v120 = v47;
  v48 = sub_1C456902C(&qword_1EC0C7408, &qword_1C4F73740);
  sub_1C43FCDF8(v48);
  v50 = *(v49 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C4401780();
  v52 = type metadata accessor for FutureLifeEventStructs.CommuteActivity(0);
  v53 = sub_1C43FBCE0(v52);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBCC4();
  v58 = v57 - v56;
  v133 = *(v59 + 20);
  v134 = v30;
  sub_1C43FCF64();
  sub_1C440BAA8(v60, v61, v62, v30);
  v124 = v52[6];
  sub_1C4EFCFD8();
  v63 = v52[7];
  if (qword_1EDDFED40 != -1)
  {
    sub_1C4415A7C();
    swift_once();
  }

  v64 = type metadata accessor for Source();
  sub_1C442B738(v64, qword_1EDDFD2A8);
  sub_1C441AC58();
  v125 = v63;
  sub_1C448D3B8(v65, v58 + v63, v66);
  v131 = v52[8];
  sub_1C4EFEBF8();
  v130 = v52[10];
  sub_1C4EFE2A8();
  v67 = v52[12];
  v68 = type metadata accessor for FutureLifeEventStructs.CommuteActivityType(0);
  v129 = v67;
  sub_1C43FCF64();
  sub_1C440BAA8(v69, v70, v71, v68);
  v72 = v52[13];
  v73 = type metadata accessor for FutureLifeEventStructs.Place(0);
  v128 = v72;
  sub_1C43FCF64();
  sub_1C440BAA8(v74, v75, v76, v73);
  v127 = v52[14];
  sub_1C43FCF64();
  sub_1C440BAA8(v77, v78, v79, v73);
  v80 = v52[17];
  v81 = type metadata accessor for FutureLifeEventStructs.DateRelationshipType(0);
  v126 = v80;
  sub_1C43FCF64();
  sub_1C440BAA8(v82, v83, v84, v81);
  v85 = v12[4];
  sub_1C4417F50(v12, v12[3]);
  sub_1C4DB6334();
  sub_1C4F02BC8();
  if (v10)
  {
    sub_1C440962C(v12);
    sub_1C4420C3C(v58 + v133, &qword_1EC0B9A08, &unk_1C4F107B0);
    v88 = sub_1C4EFD548();
    sub_1C43FBCE0(v88);
    (*(v89 + 8))(v58 + v124);
    sub_1C4410004();
    sub_1C447EC94(v58 + v125, v90);
    v91 = *(v132 + 8);
    v91(v58 + v131, v134);

    v91(v58 + v130, v134);

    sub_1C4420C3C(v58 + v129, &qword_1EC0C7400, &unk_1C4F73730);
    sub_1C4420C3C(v58 + v128, &qword_1EC0C3430, &qword_1C4F51390);
    sub_1C4420C3C(v58 + v127, &qword_1EC0C3430, &qword_1C4F51390);

    sub_1C4420C3C(v58 + v126, &qword_1EC0C3428, &unk_1C4F73720);
  }

  else
  {
    sub_1C4413E04();
    sub_1C4DB625C(v86, v87);
    sub_1C4449458();
    sub_1C4460C30();
    sub_1C4F026C8();
    (*(v122 + 32))(v58, v120, v123);
    sub_1C442DB54();
    sub_1C4DB625C(v92, v93);
    sub_1C4460C30();
    sub_1C4F02658();
    sub_1C444088C(v119, v58 + v133, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FE79C(4);
    sub_1C4460C30();
    sub_1C4F026C8();
    v121 = *(v132 + 40);
    v121(v58 + v131, v118, v134);
    v94 = sub_1C449F4A0(5);
    v95 = (v58 + v52[9]);
    *v95 = v94;
    v95[1] = v96;
    sub_1C43FE79C(6);
    sub_1C4F026C8();
    v121(v58 + v130, v117, v134);
    v97 = sub_1C449F4A0(7);
    v98 = (v58 + v52[11]);
    *v98 = v97;
    v98[1] = v99;
    sub_1C444AEB4();
    sub_1C4DB625C(v100, v101);
    sub_1C4449458();
    sub_1C4F02658();
    sub_1C444088C(v116, v58 + v129, &qword_1EC0C7400, &unk_1C4F73730);
    LOBYTE(a10) = 9;
    sub_1C442E79C();
    sub_1C4DB625C(v102, v103);
    sub_1C4449464();
    sub_1C4F02658();
    sub_1C444088C(v115, v58 + v128, &qword_1EC0C3430, &qword_1C4F51390);
    sub_1C43FE79C(10);
    sub_1C4449464();
    sub_1C4F02658();
    sub_1C444088C(v114, v58 + v127, &qword_1EC0C3430, &qword_1C4F51390);
    sub_1C456902C(&qword_1EC0C7428, &qword_1C4F73748);
    sub_1C4455510();
    sub_1C4DB6454(v104, v105);
    sub_1C4482F0C();
    sub_1C4F02658();
    *(v58 + v52[15]) = a10;
    sub_1C456902C(&qword_1EC0C7440, &qword_1C4F73750);
    sub_1C4DB63A8(&qword_1EC0C7448, &qword_1EC0C7450);
    sub_1C4482F0C();
    sub_1C4F02658();
    *(v58 + v52[16]) = a10;
    sub_1C448F2A0();
    sub_1C4DB625C(v106, v107);
    sub_1C4449458();
    sub_1C4F02658();
    v108 = sub_1C442EEB8();
    v109(v108);
    sub_1C444088C(v113, v58 + v126, &qword_1EC0C3428, &unk_1C4F73720);
    v110 = sub_1C445AC78();
    sub_1C448D3B8(v110, v112, v111);
    sub_1C440962C(v12);
    sub_1C447EC94(v58, type metadata accessor for FutureLifeEventStructs.CommuteActivity);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4DB60AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4DB6100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DB49F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DB6128(uint64_t a1)
{
  v2 = sub_1C4DB6334();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DB6164(uint64_t a1)
{
  v2 = sub_1C4DB6334();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DB61B8(uint64_t a1)
{
  *(a1 + 8) = sub_1C4DB625C(&qword_1EC0C73F0, type metadata accessor for FutureLifeEventStructs.CommuteActivity);
  result = sub_1C4DB625C(&qword_1EC0C73F8, type metadata accessor for FutureLifeEventStructs.CommuteActivity);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DB625C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C4DB6334()
{
  result = qword_1EC0C7410;
  if (!qword_1EC0C7410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7410);
  }

  return result;
}

uint64_t sub_1C4DB63A8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0C7440, &qword_1C4F73750);
    sub_1C4DB625C(a2, type metadata accessor for FutureLifeEventStructs.LocationRelationshipType);
    result = sub_1C44254A0();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4DB6454(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0C7428, &qword_1C4F73748);
    sub_1C4DB625C(a2, type metadata accessor for FutureLifeEventStructs.IdentifierRelationshipType);
    result = sub_1C44254A0();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4DB6528()
{
  sub_1C4DB67A8(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_1C4EFD548();
    if (v3 <= 0x3F)
    {
      v1 = type metadata accessor for Source();
      if (v4 <= 0x3F)
      {
        v1 = sub_1C4EFEEF8();
        if (v5 <= 0x3F)
        {
          sub_1C4700EB8();
          if (v7 > 0x3F)
          {
            return v6;
          }

          else
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

void sub_1C4DB668C()
{
  sub_1C4DB67A8(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  if (v0 <= 0x3F)
  {
    sub_1C4EFD548();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Source();
      if (v2 <= 0x3F)
      {
        sub_1C4EFEEF8();
        if (v3 <= 0x3F)
        {
          sub_1C4700EB8();
          if (v4 <= 0x3F)
          {
            sub_1C4DB67A8(319, &qword_1EC0C74C8, type metadata accessor for FutureLifeEventStructs.Place);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1C4DB67A8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C4F01F48();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C4DB6824()
{
  sub_1C4DB67A8(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_1C4EFD548();
    if (v3 <= 0x3F)
    {
      v1 = type metadata accessor for Source();
      if (v4 <= 0x3F)
      {
        v1 = sub_1C4EFEEF8();
        if (v5 <= 0x3F)
        {
          sub_1C4700EB8();
          if (v7 > 0x3F)
          {
            return v6;
          }

          else
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

_BYTE *storeEnumTagSinglePayload for FutureLifeEventStructs.CommuteActivity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

void sub_1C4DB6A38()
{
  sub_1C4EFF0C8();
  if (v0 <= 0x3F)
  {
    sub_1C4DB67A8(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
    if (v1 <= 0x3F)
    {
      sub_1C4EFD548();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Source();
        if (v3 <= 0x3F)
        {
          sub_1C4EFEEF8();
          if (v4 <= 0x3F)
          {
            sub_1C4700EB8();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1C4DB6B60()
{
  sub_1C4EFF0C8();
  if (v0 <= 0x3F)
  {
    sub_1C4DB67A8(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
    if (v1 <= 0x3F)
    {
      sub_1C4EFD548();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Source();
        if (v3 <= 0x3F)
        {
          sub_1C487B8D4(319, &qword_1EC0C7500, &qword_1EC0C7428, &qword_1C4F73748);
          if (v4 <= 0x3F)
          {
            sub_1C4DB67A8(319, &qword_1EC0C7508, type metadata accessor for FutureLifeEventStructs.AddressRelationshipType);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C4DB6CCC()
{
  sub_1C4DB67A8(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_1C4EFD548();
    if (v3 <= 0x3F)
    {
      v1 = type metadata accessor for Source();
      if (v4 <= 0x3F)
      {
        v1 = sub_1C4EFEEF8();
        if (v5 <= 0x3F)
        {
          sub_1C4700EB8();
          if (v7 > 0x3F)
          {
            return v6;
          }

          else
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

uint64_t sub_1C4DB6E1C()
{
  v0 = sub_1C4EFF0C8();
  if (v1 <= 0x3F)
  {
    sub_1C4DB67A8(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      v0 = sub_1C4EFD548();
      if (v4 <= 0x3F)
      {
        v0 = type metadata accessor for Source();
        if (v5 <= 0x3F)
        {
          v0 = sub_1C4EFEEF8();
          if (v6 <= 0x3F)
          {
            sub_1C4700EB8();
            if (v8 > 0x3F)
            {
              return v7;
            }

            else
            {
              sub_1C4DB67A8(319, &qword_1EC0C7530, type metadata accessor for FutureLifeEventStructs.CommuteActivityType);
              v0 = v9;
              if (v10 <= 0x3F)
              {
                sub_1C4DB67A8(319, &qword_1EC0C74C8, type metadata accessor for FutureLifeEventStructs.Place);
                v0 = v11;
                if (v12 <= 0x3F)
                {
                  sub_1C487B8D4(319, &qword_1EC0C7500, &qword_1EC0C7428, &qword_1C4F73748);
                  v0 = v13;
                  if (v14 <= 0x3F)
                  {
                    sub_1C487B8D4(319, &qword_1EC0C7538, &qword_1EC0C7440, &qword_1C4F73750);
                    v0 = v15;
                    if (v16 <= 0x3F)
                    {
                      sub_1C4DB67A8(319, &qword_1EC0C7540, type metadata accessor for FutureLifeEventStructs.DateRelationshipType);
                      v0 = v17;
                      if (v18 <= 0x3F)
                      {
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

  return v0;
}

uint64_t sub_1C4DB7058(uint64_t a1)
{
  *(a1 + 8) = sub_1C4DB625C(&qword_1EC0C7458, type metadata accessor for FutureLifeEventStructs.DateRelationshipType);
  result = sub_1C4DB625C(&qword_1EC0C7498, type metadata accessor for FutureLifeEventStructs.DateRelationshipType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DB70DC(uint64_t a1)
{
  *(a1 + 8) = sub_1C4DB625C(&qword_1EC0C7420, type metadata accessor for FutureLifeEventStructs.Place);
  result = sub_1C4DB625C(&qword_1EC0C7470, type metadata accessor for FutureLifeEventStructs.Place);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DB7160(uint64_t a1)
{
  *(a1 + 8) = sub_1C4DB625C(&qword_1EC0C7418, type metadata accessor for FutureLifeEventStructs.CommuteActivityType);
  result = sub_1C4DB625C(&qword_1EC0C7468, type metadata accessor for FutureLifeEventStructs.CommuteActivityType);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4DB71E8()
{
  result = qword_1EC0C7548;
  if (!qword_1EC0C7548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7548);
  }

  return result;
}

uint64_t sub_1C4DB723C(uint64_t a1)
{
  *(a1 + 8) = sub_1C4DB625C(&qword_1EC0C7438, type metadata accessor for FutureLifeEventStructs.IdentifierRelationshipType);
  result = sub_1C4DB625C(&qword_1EC0C7480, type metadata accessor for FutureLifeEventStructs.IdentifierRelationshipType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DB72C0(uint64_t a1)
{
  *(a1 + 8) = sub_1C4DB625C(&qword_1EC0C7450, type metadata accessor for FutureLifeEventStructs.LocationRelationshipType);
  result = sub_1C4DB625C(&qword_1EC0C7490, type metadata accessor for FutureLifeEventStructs.LocationRelationshipType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DB7344(uint64_t a1)
{
  *(a1 + 8) = sub_1C4DB625C(&qword_1EC0C7550, type metadata accessor for FutureLifeEventStructs.AddressRelationshipType);
  result = sub_1C4DB625C(&qword_1EC0C7558, type metadata accessor for FutureLifeEventStructs.AddressRelationshipType);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4DB73CC()
{
  result = qword_1EC0C7560;
  if (!qword_1EC0C7560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7560);
  }

  return result;
}

unint64_t sub_1C4DB7424()
{
  result = qword_1EC0C7568;
  if (!qword_1EC0C7568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7568);
  }

  return result;
}

unint64_t sub_1C4DB7478()
{
  result = qword_1EC0C7578;
  if (!qword_1EC0C7578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7578);
  }

  return result;
}

unint64_t sub_1C4DB74CC()
{
  result = qword_1EC0C7588;
  if (!qword_1EC0C7588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7588);
  }

  return result;
}

unint64_t sub_1C4DB7520()
{
  result = qword_1EC0C7598;
  if (!qword_1EC0C7598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7598);
  }

  return result;
}

unint64_t sub_1C4DB7574()
{
  result = qword_1EC0C75A8;
  if (!qword_1EC0C75A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C75A8);
  }

  return result;
}

unint64_t sub_1C4DB75C8()
{
  result = qword_1EC0C75B8;
  if (!qword_1EC0C75B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C75B8);
  }

  return result;
}

unint64_t sub_1C4DB761C()
{
  result = qword_1EC0C75F0;
  if (!qword_1EC0C75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C75F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FutureLifeEventStructs.AddressRelationshipType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEA)
  {
    if (a2 + 22 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 22) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 23;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v5 = v6 - 23;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FutureLifeEventStructs.AddressRelationshipType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE9)
  {
    v6 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
          *result = a2 + 22;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FutureLifeEventStructs.DateRelationshipType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for FutureLifeEventStructs.IdentifierRelationshipType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C4DB79AC(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4DB7A8C()
{
  result = qword_1EC0C7600;
  if (!qword_1EC0C7600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7600);
  }

  return result;
}

unint64_t sub_1C4DB7AE4()
{
  result = qword_1EC0C7608;
  if (!qword_1EC0C7608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7608);
  }

  return result;
}

unint64_t sub_1C4DB7B3C()
{
  result = qword_1EC0C7610;
  if (!qword_1EC0C7610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7610);
  }

  return result;
}

unint64_t sub_1C4DB7B94()
{
  result = qword_1EC0C7618;
  if (!qword_1EC0C7618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7618);
  }

  return result;
}

unint64_t sub_1C4DB7BEC()
{
  result = qword_1EC0C7620;
  if (!qword_1EC0C7620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7620);
  }

  return result;
}

unint64_t sub_1C4DB7C44()
{
  result = qword_1EC0C7628;
  if (!qword_1EC0C7628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7628);
  }

  return result;
}

unint64_t sub_1C4DB7C9C()
{
  result = qword_1EC0C7630;
  if (!qword_1EC0C7630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7630);
  }

  return result;
}

unint64_t sub_1C4DB7CF4()
{
  result = qword_1EC0C7638;
  if (!qword_1EC0C7638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7638);
  }

  return result;
}

unint64_t sub_1C4DB7D4C()
{
  result = qword_1EC0C7640;
  if (!qword_1EC0C7640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7640);
  }

  return result;
}

unint64_t sub_1C4DB7DA4()
{
  result = qword_1EC0C7648;
  if (!qword_1EC0C7648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7648);
  }

  return result;
}

unint64_t sub_1C4DB7DFC()
{
  result = qword_1EC0C7650;
  if (!qword_1EC0C7650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7650);
  }

  return result;
}

unint64_t sub_1C4DB7E54()
{
  result = qword_1EC0C7658;
  if (!qword_1EC0C7658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7658);
  }

  return result;
}

unint64_t sub_1C4DB7EAC()
{
  result = qword_1EC0C7660;
  if (!qword_1EC0C7660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7660);
  }

  return result;
}

unint64_t sub_1C4DB7F04()
{
  result = qword_1EC0C7668;
  if (!qword_1EC0C7668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7668);
  }

  return result;
}

unint64_t sub_1C4DB7F5C()
{
  result = qword_1EC0C7670;
  if (!qword_1EC0C7670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7670);
  }

  return result;
}

unint64_t sub_1C4DB7FB4()
{
  result = qword_1EC0C7678;
  if (!qword_1EC0C7678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7678);
  }

  return result;
}

unint64_t sub_1C4DB800C()
{
  result = qword_1EC0C7680;
  if (!qword_1EC0C7680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7680);
  }

  return result;
}

unint64_t sub_1C4DB8064()
{
  result = qword_1EC0C7688;
  if (!qword_1EC0C7688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7688);
  }

  return result;
}

uint64_t sub_1C4DB80BC@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{

  return sub_1C448D3B8(v4 + a2, v3 + v2, a1);
}

uint64_t sub_1C4DB80D4@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{

  return sub_1C448D3B8(v3 + a2, v4 + v2, a1);
}

uint64_t sub_1C4DB813C(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t *a4)
{
  v8 = *(v4 + *a2);
  *(v4 + *a2) = a1;

  sub_1C4DBE9D0(a2, a3, a4);
}

uint64_t sub_1C4DB81DC(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v133 = a1;
  v131 = type metadata accessor for EntityTriple(0);
  v7 = sub_1C43FCDF8(v131);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  v129 = v12;
  sub_1C43FD1D0();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = (&v128 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v128 - v17;
  v19 = *a3;
  i = MEMORY[0x1E69E7CC0];
  v137 = MEMORY[0x1E69E7CC0];
  v21 = *(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_isCurrentUser + 8);
  v132 = a2;
  v134 = v4;
  v130 = v9;
  if (!v21)
  {
    goto LABEL_8;
  }

  v22 = *(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_isCurrentUser);
  v23 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v23 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
    goto LABEL_7;
  }

  v24 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_entityIdentifier;
  v25 = sub_1C4EFF0C8();
  sub_1C43FCE50(v25);
  v27 = v19;
  v28 = v134;
  (*(v26 + 16))(v18, v134 + v24);
  v29 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_isCurrentUser_predicate;
  sub_1C440D164();
  v30 = v131;
  v31 = v131[5];
  v32 = sub_1C4EFEEF8();
  sub_1C43FCE50(v32);
  v34 = v28 + v29;
  a2 = v132;
  (*(v33 + 16))(v18 + v31, v34);
  v35 = v28 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_source;
  v19 = v27;
  sub_1C449ED64(v35, v18 + v30[9]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  v37 = v36;
  v38 = v18 + v30[6];
  sub_1C4EFF888();
  v39 = v18 + v30[7];
  sub_1C4EFEC38();
  v40 = (v18 + v30[8]);
  *v40 = v22;
  v40[1] = v21;
  v41 = (v18 + v30[10]);
  *v41 = v133;
  v41[1] = a2;
  *(v18 + v30[11]) = v37;
  *(v18 + v30[12]) = v27;
  v42 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4401EC4(v42, v43, v44, MEMORY[0x1E69E7CC0]);
  i = v45;
  v47 = *(v45 + 16);
  v46 = *(v45 + 24);
  v48 = v47 + 1;
  if (v47 >= v46 >> 1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    *(i + 16) = v48;
    sub_1C4416610();
    sub_1C4A948D8(v18, v49 + v50 * v47);
    v137 = i;
LABEL_7:
    v4 = v134;
LABEL_8:
    v51 = *(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_name + 8);
    if (v51)
    {
      v52 = *(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_name);
      v53 = HIBYTE(v51) & 0xF;
      if ((v51 & 0x2000000000000000) == 0)
      {
        v53 = v52 & 0xFFFFFFFFFFFFLL;
      }

      if (v53)
      {
        v54 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_entityIdentifier;
        v55 = sub_1C4EFF0C8();
        sub_1C43FCE50(v55);
        (*(v56 + 16))(v16, v134 + v54);
        v57 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_name_predicate;
        sub_1C440D164();
        v58 = v131;
        v59 = v131[5];
        v60 = sub_1C4EFEEF8();
        sub_1C43FCE50(v60);
        v62 = v16 + v59;
        a2 = v132;
        v63 = v134 + v57;
        v4 = v134;
        (*(v61 + 16))(v62, v63);
        sub_1C449ED64(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_source, v16 + v58[9]);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v65 = v64;
        v66 = v16 + v58[6];
        sub_1C4EFF888();
        v67 = v16 + v58[7];
        sub_1C4EFEC38();
        v68 = v16 + v58[8];
        *v68 = v52;
        *(v68 + 1) = v51;
        v69 = v16 + v58[10];
        *v69 = v133;
        *(v69 + 1) = a2;
        *(v16 + v58[11]) = v65;
        *(v16 + v58[12]) = v19;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v112 = *(i + 16);
          v113 = sub_1C43FCEC0();
          sub_1C44C9240(v113, v114, v115, i);
          i = v116;
        }

        v71 = *(i + 16);
        v70 = *(i + 24);
        if (v71 >= v70 >> 1)
        {
          v117 = sub_1C43FCFE8(v70);
          sub_1C44C9240(v117, v71 + 1, 1, i);
          i = v118;
        }

        *(i + 16) = v71 + 1;
        sub_1C4416610();
        sub_1C4A948D8(v16, v72 + v73 * v71);
        v137 = i;
      }
    }

    v18 = *(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_entityAliasRelationship);
    if (!v18)
    {
      break;
    }

    v74 = v19;
    v75 = *(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_entityAliasRelationship);
    v48 = sub_1C4428DA0();
    a2 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_entityIdentifier;
    v47 = v18 & 0xC000000000000001;
    v19 = v18 & 0xF8;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    for (i = 0; ; ++i)
    {
      if (v48 == i)
      {

        a2 = v132;
        v4 = v134;
        v19 = v74;
        goto LABEL_28;
      }

      if (v47)
      {
        MEMORY[0x1C6940F90](i, v18);
      }

      else
      {
        v46 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (i >= v46)
        {
          goto LABEL_45;
        }

        v76 = *(v18 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      v136 = v74;
      v77 = v135;
      sub_1C4DB8920();
      if (v77)
      {

        goto LABEL_35;
      }

      v135 = 0;
      v16 = &v137;
      sub_1C49D3614(v78);
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v110 = sub_1C43FCFE8(v46);
    sub_1C44C9240(v110, v48, 1, i);
    i = v111;
  }

LABEL_28:
  v18 = *(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_hasContactInformation);
  v79 = v133;
  if (v18)
  {
    v80 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_entityIdentifier;
    v136 = v19;

    sub_1C44508EC();
    sub_1C4DBA6CC();
    if (v80)
    {
      goto LABEL_33;
    }

    v135 = 0;
    sub_1C49D3614(v81);
  }

  v18 = *(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_hasAssociation);
  if (!v18)
  {
LABEL_37:
    v18 = v137;
    if (*(v137 + 16))
    {
      v88 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_entityIdentifier;
      v89 = sub_1C4EFF0C8();
      sub_1C43FCE50(v89);
      v91 = v4 + v88;
      v92 = v19;
      v93 = v4;
      v94 = v129;
      (*(v90 + 16))(v129, v91);
      v95 = v131;
      v96 = v94 + v131[5];
      sub_1C4EFEBB8();
      v97 = sub_1C4EFD2F8();
      v99 = v98;
      sub_1C449ED64(v93 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_source, v94 + v95[9]);
      sub_1C4EF9AE8();
      v101 = v100;
      v102 = v94 + v95[6];
      sub_1C4EFF888();
      v103 = v94 + v95[7];
      sub_1C4EFEC38();
      v104 = (v94 + v95[8]);
      *v104 = v97;
      v104[1] = v99;
      v105 = (v94 + v95[10]);
      *v105 = v79;
      v105[1] = a2;
      *(v94 + v95[11]) = v101;
      *(v94 + v95[12]) = v92;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v119 = *(v18 + 16);
        v120 = sub_1C43FCEC0();
        sub_1C44C9240(v120, v121, v122, v18);
        v18 = v123;
      }

      v106 = v130;
      v108 = *(v18 + 16);
      v107 = *(v18 + 24);
      if (v108 >= v107 >> 1)
      {
        v124 = sub_1C43FFD98(v107);
        sub_1C44C9240(v124, v125, v126, v18);
        v18 = v127;
      }

      *(v18 + 16) = v108 + 1;
      sub_1C4A948D8(v129, v18 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v108);
    }

    return v18;
  }

  v82 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_entityIdentifier;
  v136 = v19;

  v83 = sub_1C44508EC();
  v87 = sub_1C4DBC150(v83, v84, v85, v86);
  if (!v82)
  {
    v135 = 0;
    sub_1C49D3614(v87);

    goto LABEL_37;
  }

LABEL_33:

LABEL_35:

  return v18;
}

void sub_1C4DB8920()
{
  sub_1C43FE96C();
  v3 = v2;
  v177 = v4;
  v181 = v5;
  v182 = v6;
  v178 = type metadata accessor for EntityTriple(0);
  v7 = sub_1C43FCDF8(v178);
  v175 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD230();
  sub_1C43FD2C8(v15);
  v179 = sub_1C4EFD548();
  v16 = sub_1C43FCDF8(v179);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v23 = (v22 - v21);
  v184 = sub_1C4EFF8A8();
  v24 = sub_1C43FCDF8(v184);
  v183 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBCC4();
  v30 = v29 - v28;
  v31 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v31);
  v33 = *(v32 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FE95C();
  v35 = sub_1C4EFEEF8();
  v36 = sub_1C43FCDF8(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBCC4();
  v43 = v42 - v41;
  v176 = *v3;
  v44 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_predicate;
  sub_1C440D164();
  sub_1C47CBF50(&v0[v44], v1);
  if (sub_1C44157D4(v1, 1, v35) == 1)
  {
    sub_1C4420C3C(v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    v45 = sub_1C43FFB2C();
    sub_1C4414040(v45, v46);
  }

  else
  {
    v174 = v38;
    (*(v38 + 32))(v43, v1, v35);
    v48 = *(v18 + 16);
    v47 = v18 + 16;
    v48(v23, &v0[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_entityClass], v179);
    sub_1C4EFF838();
    v49 = *&v0[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_alsoKnownAs + 8];
    v180 = v35;
    v50 = v0;
    if (!v49)
    {
      goto LABEL_10;
    }

    v47 = *&v0[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_alsoKnownAs];
    v51 = HIBYTE(v49) & 0xF;
    if ((v49 & 0x2000000000000000) == 0)
    {
      v51 = v47 & 0xFFFFFFFFFFFFLL;
    }

    if (v51)
    {
      v52 = sub_1C4EFF0C8();
      sub_1C43FCE50(v52);
      (*(v53 + 16))(v168, v177);
      v23 = *(v174 + 16);
      v23(v168 + v178[5], v43, v180);
      (*(v183 + 16))(v168 + v178[6], v30, v184);
      v54 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_alsoKnownAs_predicate;
      sub_1C440D164();
      v23(v168 + v178[7], &v0[v54], v180);
      sub_1C449ED64(&v0[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_source], v168 + v178[9]);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v55 = (v168 + v178[8]);
      *v55 = v47;
      v55[1] = v49;
      v56 = (v168 + v178[10]);
      *v56 = v181;
      v56[1] = v182;
      *(v168 + v178[11]) = v57;
      *(v168 + v178[12]) = v176;
      v58 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v58, v59, v60, MEMORY[0x1E69E7CC0]);
      v62 = v61;
      v47 = *(v61 + 16);
      v63 = *(v61 + 24);
      if (v47 >= v63 >> 1)
      {
        v137 = sub_1C43FFD98(v63);
        sub_1C44C9240(v137, v138, v139, v62);
        v62 = v140;
      }

      v64 = v175;
      sub_1C4432F88();
      sub_1C4A948D8(v168, v65);
      v66 = v174;
    }

    else
    {
LABEL_10:
      v62 = MEMORY[0x1E69E7CC0];
      v64 = v175;
      v66 = v174;
    }

    v67 = *&v0[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_signalLabel + 8];
    if (v67)
    {
      sub_1C43FF988(&v50[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_signalLabel]);
      if (v69)
      {
        v169 = v68;
        v70 = sub_1C4EFF0C8();
        sub_1C43FCE50(v70);
        v23 = v50;
        (*(v71 + 16))(v170, v177);
        v47 = *(v66 + 16);
        (v47)(v170 + v178[5], v43, v180);
        (*(v183 + 16))(v170 + v178[6], v30, v184);
        v72 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_signalLabel_predicate;
        sub_1C440D164();
        (v47)(v170 + v178[7], &v50[v72], v180);
        sub_1C449ED64(&v50[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_source], v170 + v178[9]);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v73 = (v170 + v178[8]);
        *v73 = v169;
        v73[1] = v67;
        v74 = (v170 + v178[10]);
        *v74 = v181;
        v74[1] = v182;
        *(v170 + v178[11]) = v75;
        *(v170 + v178[12]) = v176;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v141 = *(v62 + 16);
          v142 = sub_1C43FCEC0();
          sub_1C44C9240(v142, v143, v144, v62);
          v62 = v145;
        }

        sub_1C43FEBA4();
        v64 = v175;
        v66 = v174;
        if (v77)
        {
          v146 = sub_1C43FFD98(v76);
          sub_1C44C9240(v146, v147, v148, v62);
          v62 = v149;
        }

        sub_1C4432F88();
        sub_1C4A948D8(v170, v78);
      }
    }

    if (*&v50[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_identifierType + 8])
    {
      sub_1C43FF988(&v50[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_identifierType]);
      if (v79)
      {
        v80 = sub_1C4EFF0C8();
        sub_1C43FCE50(v80);
        v82 = *(v81 + 16);
        v83 = sub_1C441B65C();
        v84(v83);
        v85 = sub_1C444B45C();
        (v23)(v85);
        v86 = sub_1C442704C(v64[6]);
        v87(v86);
        sub_1C440D164();
        v88 = sub_1C442AAA4();
        (v23)(v88);
        sub_1C449ED64(v66 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_source, v47 + v64[9]);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C445EB7C((v47 + v64[8]), v89);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v150 = *(v62 + 16);
          v151 = sub_1C43FCEC0();
          sub_1C44C9240(v151, v152, v153, v62);
          v62 = v154;
        }

        sub_1C43FEBA4();
        v66 = v174;
        v64 = v175;
        if (v77)
        {
          v155 = sub_1C43FFD98(v90);
          sub_1C44C9240(v155, v156, v157, v62);
          v62 = v158;
        }

        sub_1C4432F88();
        sub_1C4A948D8(v171, v91);
      }
    }

    if (*&v50[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_confirmationConfidence + 8])
    {
      sub_1C43FF988(&v50[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_confirmationConfidence]);
      if (v92)
      {
        v93 = sub_1C4EFF0C8();
        sub_1C43FCE50(v93);
        v95 = *(v94 + 16);
        v96 = sub_1C441B65C();
        v97(v96);
        v98 = sub_1C444B45C();
        (v23)(v98);
        v99 = sub_1C442704C(v64[6]);
        v100(v99);
        sub_1C440D164();
        v101 = sub_1C442AAA4();
        (v23)(v101);
        sub_1C449ED64(v66 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_source, v47 + v64[9]);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C445EB7C((v47 + v64[8]), v102);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v159 = *(v62 + 16);
          v160 = sub_1C43FCEC0();
          sub_1C44C9240(v160, v161, v162, v62);
          v62 = v163;
        }

        sub_1C43FEBA4();
        v66 = v174;
        if (v77)
        {
          v164 = sub_1C43FFD98(v103);
          sub_1C44C9240(v164, v165, v166, v62);
          v62 = v167;
        }

        sub_1C4432F88();
        sub_1C4A948D8(v172, v104);
      }
    }

    if (*(v62 + 16))
    {
      v105 = sub_1C4EFF0C8();
      sub_1C43FCE50(v105);
      v107 = *(v106 + 16);
      v108 = sub_1C441B65C();
      v109(v108);
      (*(v66 + 16))(v47 + v178[5], v43, v180);
      v110 = sub_1C442704C(v178[6]);
      v111(v110);
      v112 = v47 + v178[7];
      sub_1C4EFEBB8();
      v113 = sub_1C4EFD2F8();
      v115 = v114;
      sub_1C449ED64(&v50[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_source], v47 + v178[9]);
      sub_1C4EF9AE8();
      v116 = (v47 + v178[8]);
      *v116 = v113;
      v116[1] = v115;
      v117 = (v47 + v178[10]);
      *v117 = v181;
      v117[1] = v182;
      *(v47 + v178[11]) = v118;
      *(v47 + v178[12]) = v176;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v129 = *(v62 + 16);
        v130 = sub_1C43FCEC0();
        sub_1C44C9240(v130, v131, v132, v62);
        v62 = v133;
      }

      sub_1C43FEBA4();
      if (v77)
      {
        v134 = sub_1C43FFD98(v119);
        sub_1C44C9240(v134, v135, v136, v62);
      }

      v120 = sub_1C44BBF98();
      v121(v120);
      v122 = sub_1C4460C3C();
      v123(v122, v180);
      sub_1C4432F88();
      sub_1C4A948D8(v173, v124);
    }

    else
    {
      v125 = sub_1C44BBF98();
      v126(v125);
      v127 = sub_1C4460C3C();
      v128(v127, v180);
    }
  }

  sub_1C43FBC80();
}

unint64_t sub_1C4DB9430(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x776F6E4B6F736C61;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x614C6C616E676973;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0x696669746E656469;
      break;
    case 9:
      result = 0xD000000000000020;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4DB95B8(uint64_t a1)
{
  v2 = sub_1C4DC123C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DB95F4(uint64_t a1)
{
  v2 = sub_1C4DC123C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DB9630()
{
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_entityClass;
  v2 = sub_1C4EFD548();
  sub_1C43FBCE0(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C448D818(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_source);
  v4 = sub_1C4EFEEF8();
  sub_1C43FBCE0(v4);
  v6 = *(v5 + 8);
  v7 = sub_1C4460780();
  v6(v7);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_alsoKnownAs);
  v8 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_signalLabel_predicate);
  v6(v8);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_signalLabel);
  v9 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_identifierType_predicate);
  v6(v9);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_identifierType);
  v10 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_confirmationConfidence_predicate);
  v6(v10);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_confirmationConfidence);
  return v0;
}

void sub_1C4DB97B8()
{
  sub_1C4D889F8();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = sub_1C4EFD548();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = type metadata accessor for Source();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = sub_1C4EFEEF8();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1C4DB990C()
{
  sub_1C43FE96C();
  v4 = v0;
  v5 = sub_1C447E4C8();
  v6 = sub_1C43FCDF8(v5);
  v53 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBF38();
  v50 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBF38();
  v51 = v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD230();
  v52 = v15;
  v16 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v16);
  v18 = *(v17 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FE95C();
  v20 = sub_1C456902C(&qword_1EC0C7718, &qword_1C4F744F8);
  sub_1C43FCDF8(v20);
  v22 = v21;
  v24 = *(v23 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C4401780();
  v26 = v0[4];
  sub_1C4417F50(v0, v0[3]);
  sub_1C4DC123C();
  sub_1C442AD68();
  sub_1C4F02BF8();
  v27 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_predicate;
  sub_1C440D164();
  v28 = v4;
  sub_1C47CBF50(v4 + v27, v3);
  sub_1C441AC70();
  sub_1C4DC1068(v29, v30);
  v54 = v20;
  sub_1C4F02778();
  if (v1)
  {
    sub_1C4420C3C(v3, &qword_1EC0B9A08, &unk_1C4F107B0);
    (*(v22 + 8))(v2, v20);
  }

  else
  {
    v48 = v22;
    sub_1C4420C3C(v3, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C446257C(1);
    sub_1C4EFD548();
    sub_1C4420AE8();
    sub_1C4DC1068(v31, v32);
    sub_1C44140A8();
    sub_1C446257C(2);
    type metadata accessor for Source();
    sub_1C4413E1C();
    sub_1C4DC1068(v33, v34);
    sub_1C44140A8();
    v35 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_alsoKnownAs_predicate;
    sub_1C440D164();
    v36 = v5;
    (*(v53 + 16))(v52, v28 + v35, v5);
    sub_1C44169D8();
    sub_1C4F027E8();
    v37 = *(v53 + 8);
    v37(v52, v5);
    sub_1C443E074((v28 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_alsoKnownAs));
    sub_1C442A8D0();
    sub_1C4F02738();

    sub_1C440D164();
    sub_1C4418E1C();
    v38();
    sub_1C4441A88();
    sub_1C4F027E8();
    v37(v51, v5);
    v39 = *(v28 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_signalLabel);
    v40 = *(v28 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_signalLabel + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C442A8D0();
    sub_1C4F02738();

    sub_1C440D164();
    sub_1C4418E1C();
    v41();
    sub_1C4441A88();
    sub_1C4F027E8();
    v37(v50, v36);
    v42 = *(v28 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_identifierType);
    v43 = *(v28 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_identifierType + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C442A8D0();
    sub_1C4F02738();

    v44 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_confirmationConfidence_predicate;
    sub_1C440D164();
    sub_1C4418E1C();
    v45();
    sub_1C4441A88();
    sub_1C4F027E8();
    v37(v49, v36);
    v46 = *(v28 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_confirmationConfidence);
    v47 = *(v28 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_confirmationConfidence + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F02738();
    (*(v48 + 8))(v44, v54);
  }

  sub_1C43FBC80();
}

void sub_1C4DBA068()
{
  sub_1C43FE96C();
  v3 = v2;
  v4 = sub_1C4EFEEF8();
  v5 = sub_1C43FCDF8(v4);
  v48 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD230();
  v12 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v12);
  v14 = *(v13 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBC74();
  v50 = v16;
  v51 = sub_1C456902C(&qword_1EC0C7788, &qword_1C4F74538);
  sub_1C43FCDF8(v51);
  v18 = *(v17 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBC74();
  v49 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_predicate;
  sub_1C43FCF64();
  sub_1C440BAA8(v20, v21, v22, v4);
  sub_1C4EFD278();
  v23 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_source;
  if (qword_1EDDFD218 != -1)
  {
    sub_1C4405DDC();
    swift_once();
  }

  v24 = type metadata accessor for Source();
  v25 = sub_1C442B738(v24, &qword_1EDDFD220);
  sub_1C449ED64(v25, v0 + v23);
  sub_1C4EFE3A8();
  v26 = (v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_alsoKnownAs);
  *v26 = 0;
  v26[1] = 0;
  sub_1C4EFE4A8();
  v27 = (v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_signalLabel);
  *v27 = 0;
  v27[1] = 0;
  sub_1C4EFE658();
  v28 = (v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_identifierType);
  *v28 = 0;
  v28[1] = 0;
  sub_1C4EFEA88();
  v29 = (v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs27EntityAliasRelationshipType_confirmationConfidence);
  *v29 = 0;
  v29[1] = 0;
  v30 = v3;
  v32 = v3[3];
  v31 = v3[4];
  v52 = v30;
  sub_1C4417F50(v30, v32);
  sub_1C4DC123C();
  sub_1C4F02BC8();
  if (v1)
  {
  }

  else
  {
    sub_1C441AC70();
    sub_1C4DC1068(v33, v34);
    sub_1C4F02658();
    sub_1C44063BC();
    sub_1C449A970(v50, v0 + v49);
    swift_endAccess();
    sub_1C4402064(3);
    sub_1C4F026C8();
    sub_1C4411600();
    v35 = *(v48 + 40);
    sub_1C4455528();
    v35();
    swift_endAccess();
    v36 = sub_1C44049A8(4);
    sub_1C4425188(v36, v37);
    sub_1C4402064(5);
    sub_1C442E7B4();
    sub_1C44063BC();
    sub_1C4455528();
    v35();
    swift_endAccess();
    v38 = sub_1C44049A8(6);
    sub_1C4425188(v38, v39);
    sub_1C4402064(7);
    sub_1C442E7B4();
    sub_1C4411600();
    sub_1C4455528();
    v35();
    swift_endAccess();
    v40 = sub_1C44049A8(8);
    sub_1C4425188(v40, v41);
    sub_1C4402064(9);
    sub_1C442E7B4();
    sub_1C4411600();
    sub_1C4455528();
    v35();
    swift_endAccess();
    v42 = sub_1C44049A8(10);
    v44 = v43;
    v45 = sub_1C4401D04();
    v46(v45, v51);
    v47 = v29[1];
    *v29 = v42;
    v29[1] = v44;
  }

  sub_1C440962C(v52);
  sub_1C43FBC80();
}

uint64_t sub_1C4DBA67C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4DBA03C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C4DBA6CC()
{
  sub_1C43FE96C();
  v3 = v2;
  v132 = v4;
  v127 = type metadata accessor for EntityTriple(0);
  v5 = sub_1C43FCDF8(v127);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  v129 = v8;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD230();
  sub_1C43FD2C8(v11);
  v124 = sub_1C4EFD548();
  v12 = sub_1C43FCDF8(v124);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  v133 = sub_1C4EFF8A8();
  v20 = sub_1C43FCDF8(v133);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  v25 = v24 - v23;
  v26 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v26);
  v28 = *(v27 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C4401780();
  v30 = sub_1C4EFEEF8();
  v31 = sub_1C43FCDF8(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBCC4();
  v38 = v37 - v36;
  v130 = *v3;
  v39 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs23AddressRelationshipType_predicate;
  sub_1C440D164();
  sub_1C47CBF50(v0 + v39, v1);
  if (sub_1C44157D4(v1, 1, v30) == 1)
  {
    sub_1C4420C3C(v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    v40 = sub_1C43FFB2C();
    sub_1C4414040(v40, v41);
  }

  else
  {
    v122 = v33;
    v131 = v38;
    v123 = v30;
    (*(v33 + 32))(v38, v1, v30);
    v43 = *(v14 + 16);
    v42 = v14 + 16;
    v43(v19, v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs23AddressRelationshipType_entityClass, v124);
    sub_1C4EFF838();
    v44 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs23AddressRelationshipType_contactLabel + 8);
    v45 = v25;
    v46 = v0;
    if (v44)
    {
      v47 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs23AddressRelationshipType_contactLabel);
      v48 = HIBYTE(v44) & 0xF;
      if ((v44 & 0x2000000000000000) == 0)
      {
        v48 = v47 & 0xFFFFFFFFFFFFLL;
      }

      v49 = v127;
      if (v48)
      {
        v50 = sub_1C4EFF0C8();
        sub_1C43FCE50(v50);
        (*(v51 + 16))(v120, v132);
        v52 = *(v122 + 16);
        v42 = v46;
        v52(v120 + v127[5], v131, v123);
        sub_1C448E184();
        v125 = v25;
        v54(v120 + v53, v25, v133);
        v55 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs23AddressRelationshipType_contactLabel_predicate;
        sub_1C440D164();
        v52(v120 + v127[7], v46 + v55, v123);
        sub_1C449ED64(v46 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs23AddressRelationshipType_source, v120 + v127[9]);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v56 = (v120 + v127[8]);
        *v56 = v47;
        v56[1] = v44;
        sub_1C4414444((v120 + v127[10]));
        *(v120 + v57) = v58;
        *(v120 + v127[12]) = v130;
        v59 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4401EC4(v59, v60, v61, MEMORY[0x1E69E7CC0]);
        v63 = v62;
        v65 = *(v62 + 16);
        v64 = *(v62 + 24);
        if (v65 >= v64 >> 1)
        {
          v111 = sub_1C43FCFE8(v64);
          sub_1C44C9240(v111, v65 + 1, 1, v63);
          v63 = v112;
        }

        *(v63 + 16) = v65 + 1;
        sub_1C43FBF6C();
        sub_1C4A948D8(v120, v63 + v66 + *(v67 + 72) * v65);
        v68 = v123;
        v45 = v125;
        sub_1C4458608();
      }

      else
      {
        v63 = MEMORY[0x1E69E7CC0];
        v68 = v123;
        sub_1C4458608();
      }
    }

    else
    {
      v63 = MEMORY[0x1E69E7CC0];
      v68 = v123;
      sub_1C4458608();
      v49 = v127;
    }

    v69 = *(v46 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs23AddressRelationshipType_phoneNumber + 8);
    if (!v69)
    {
      goto LABEL_21;
    }

    v70 = HIBYTE(v69) & 0xF;
    if ((v69 & 0x2000000000000000) == 0)
    {
      v70 = *(v46 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs23AddressRelationshipType_phoneNumber) & 0xFFFFFFFFFFFFLL;
    }

    if (v70)
    {
      v128 = *(v46 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs23AddressRelationshipType_phoneNumber);
      v71 = sub_1C4EFF0C8();
      sub_1C43FCE50(v71);
      (*(v72 + 16))(v121, v132);
      v73 = *(v42 + 16);
      v73(v121 + v49[5], v131, v68);
      sub_1C448E184();
      v126 = v45;
      v75(v121 + v74, v45, v133);
      v76 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs23AddressRelationshipType_phoneNumber_predicate;
      sub_1C440D164();
      v73(v121 + v49[7], v46 + v76, v68);
      sub_1C449ED64(v46 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs23AddressRelationshipType_source, v121 + v49[9]);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v77 = (v121 + v49[8]);
      *v77 = v128;
      v77[1] = v69;
      sub_1C4414444((v121 + v49[10]));
      *(v121 + v78) = v79;
      *(v121 + v49[12]) = v130;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v113 = *(v63 + 16);
        v114 = sub_1C43FCEC0();
        sub_1C44C9240(v114, v115, v116, v63);
        v63 = v117;
      }

      v81 = *(v63 + 16);
      v80 = *(v63 + 24);
      v82 = v129;
      v45 = v126;
      v42 = v122;
      if (v81 >= v80 >> 1)
      {
        v118 = sub_1C43FCFE8(v80);
        sub_1C44C9240(v118, v81 + 1, 1, v63);
        v63 = v119;
      }

      v68 = v123;
      *(v63 + 16) = v81 + 1;
      sub_1C43FBF6C();
      sub_1C4A948D8(v121, v63 + v83 + *(v84 + 72) * v81);
    }

    else
    {
LABEL_21:
      v82 = v129;
    }

    if (*(v63 + 16))
    {
      v85 = sub_1C4EFF0C8();
      sub_1C43FCE50(v85);
      (*(v86 + 16))(v82, v132);
      (*(v42 + 16))(v82 + v49[5], v131, v68);
      sub_1C448E184();
      v88(v82 + v87, v45, v133);
      v89 = v82 + v49[7];
      sub_1C4EFEBB8();
      v90 = sub_1C4EFD2F8();
      v92 = v91;
      sub_1C449ED64(v46 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs23AddressRelationshipType_source, v82 + v49[9]);
      sub_1C4EF9AE8();
      v93 = (v82 + v49[8]);
      *v93 = v90;
      v93[1] = v92;
      sub_1C4414444((v82 + v49[10]));
      *(v82 + v94) = v95;
      *(v82 + v49[12]) = v130;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v102 = *(v63 + 16);
        v103 = sub_1C43FCEC0();
        sub_1C44C9240(v103, v104, v105, v63);
        v63 = v106;
      }

      v97 = *(v63 + 16);
      v96 = *(v63 + 24);
      if (v97 >= v96 >> 1)
      {
        v107 = sub_1C43FFD98(v96);
        sub_1C44C9240(v107, v108, v109, v63);
        v63 = v110;
      }

      sub_1C445FF6C();
      v98(v45, v133);
      (*(v42 + 8))(v131, v68);
      *(v63 + 16) = v97 + 1;
      sub_1C43FBF6C();
      sub_1C4A948D8(v82, v63 + v99 + *(v100 + 72) * v97);
    }

    else
    {
      sub_1C445FF6C();
      v101(v45, v133);
      (*(v42 + 8))(v131, v68);
    }
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4DBAF54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001C4FC7F40 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4C746361746E6F63 && a2 == 0xEC0000006C656261;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000015 && 0x80000001C4FC7F60 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C4F02938();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4DBB1A0(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x4C746361746E6F63;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x6D754E656E6F6870;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4DBB298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DBAF54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DBB2C0(uint64_t a1)
{
  v2 = sub_1C4DC1290();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DBB2FC(uint64_t a1)
{
  v2 = sub_1C4DC1290();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DBB338()
{
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs23AddressRelationshipType_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs23AddressRelationshipType_entityClass;
  v2 = sub_1C4EFD548();
  sub_1C43FBCE0(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C448D818(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs23AddressRelationshipType_source);
  v4 = sub_1C4EFEEF8();
  sub_1C43FBCE0(v4);
  v6 = *(v5 + 8);
  v7 = sub_1C4460780();
  v6(v7);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs23AddressRelationshipType_contactLabel);
  v8 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs23AddressRelationshipType_phoneNumber_predicate);
  v6(v8);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs23AddressRelationshipType_phoneNumber);
  return v0;
}

void sub_1C4DBB478()
{
  sub_1C4D889F8();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = sub_1C4EFD548();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = type metadata accessor for Source();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = sub_1C4EFEEF8();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1C4DBB5C4()
{
  sub_1C43FE96C();
  v54 = v1;
  v2 = v0;
  v3 = sub_1C447E4C8();
  v4 = sub_1C43FCDF8(v3);
  v53 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBFDC();
  v51 = v8;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FD230();
  v52 = v10;
  v11 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49 - v15;
  v17 = sub_1C456902C(&qword_1EC0C7728, &qword_1C4F74500);
  sub_1C43FCDF8(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v49 - v23;
  v25 = v0[4];
  sub_1C4417F50(v0, v0[3]);
  sub_1C4DC1290();
  sub_1C4F02BF8();
  v26 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs23AddressRelationshipType_predicate;
  sub_1C440D164();
  sub_1C47CBF50(&v2[v26], v16);
  v57 = 0;
  sub_1C441AC70();
  sub_1C4DC1068(v27, v28);
  v55 = v17;
  v29 = v54;
  sub_1C4F02778();
  if (v29)
  {
    sub_1C4420C3C(v16, &qword_1EC0B9A08, &unk_1C4F107B0);
    (*(v19 + 8))(v24, v55);
  }

  else
  {
    v54 = v19;
    sub_1C4420C3C(v16, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C44019B0(1);
    sub_1C4EFD548();
    sub_1C4420AE8();
    sub_1C4DC1068(v30, v31);
    sub_1C4F027E8();
    sub_1C44019B0(2);
    type metadata accessor for Source();
    sub_1C4413E1C();
    sub_1C4DC1068(v32, v33);
    sub_1C4F027E8();
    v34 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs23AddressRelationshipType_contactLabel_predicate;
    sub_1C440D164();
    v35 = v53;
    v49 = *(v53 + 16);
    v50 = v2;
    v49(v52, &v2[v34], v3);
    v56 = 3;
    sub_1C440F0D4();
    v36 = *(v35 + 8);
    v37 = sub_1C4401D48();
    v36(v37);
    v38 = *&v50[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs23AddressRelationshipType_contactLabel];
    v39 = *&v50[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs23AddressRelationshipType_contactLabel + 8];
    v56 = 4;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F02738();
    v40 = v36;

    v41 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs23AddressRelationshipType_phoneNumber_predicate;
    v42 = v50;
    sub_1C440D164();
    v49(v51, &v42[v41], v3);
    sub_1C440F0D4();
    v43 = sub_1C440BB4C();
    v40(v43);
    v44 = *&v50[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs23AddressRelationshipType_phoneNumber];
    v45 = *&v50[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs23AddressRelationshipType_phoneNumber + 8];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F02738();
    v46 = *(v54 + 8);
    v47 = sub_1C4409A28();
    v48(v47);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4DBBB00()
{
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v1, v2, v3, v4);
  sub_1C4EFD1D8();
  v5 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs23AddressRelationshipType_source;
  if (qword_1EDDFD218 != -1)
  {
    sub_1C4405DDC();
    swift_once();
  }

  v6 = type metadata accessor for Source();
  v7 = sub_1C442B738(v6, &qword_1EDDFD220);
  sub_1C449ED64(v7, v0 + v5);
  sub_1C4EFE4E8();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs23AddressRelationshipType_contactLabel);
  sub_1C4EFE478();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs23AddressRelationshipType_phoneNumber);
  return v0;
}

void sub_1C4DBBBFC()
{
  sub_1C43FE96C();
  v3 = v2;
  v4 = sub_1C4EFEEF8();
  v5 = sub_1C43FCDF8(v4);
  v47 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  v46 = v9;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD230();
  v49 = v11;
  v12 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v12);
  v14 = *(v13 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBC74();
  v50 = v16;
  v17 = sub_1C456902C(&qword_1EC0C7780, &qword_1C4F74530);
  v52 = sub_1C43FCDF8(v17);
  v19 = *(v18 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v20);
  v48 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs23AddressRelationshipType_predicate;
  sub_1C43FCF64();
  v51 = v4;
  sub_1C440BAA8(v21, v22, v23, v4);
  sub_1C4EFD1D8();
  v24 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs23AddressRelationshipType_source;
  if (qword_1EDDFD218 != -1)
  {
    sub_1C4405DDC();
    swift_once();
  }

  v25 = type metadata accessor for Source();
  v26 = sub_1C442B738(v25, &qword_1EDDFD220);
  sub_1C449ED64(v26, v0 + v24);
  v27 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs23AddressRelationshipType_contactLabel_predicate;
  sub_1C4EFE4E8();
  v28 = (v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs23AddressRelationshipType_contactLabel);
  *v28 = 0;
  v28[1] = 0;
  v29 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs23AddressRelationshipType_phoneNumber_predicate;
  sub_1C4EFE478();
  v30 = (v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs23AddressRelationshipType_phoneNumber);
  *v30 = 0;
  v30[1] = 0;
  v31 = v3;
  v32 = v3[3];
  v33 = v3[4];
  v53 = v31;
  sub_1C4417F50(v31, v32);
  sub_1C4DC1290();
  sub_1C4F02BC8();
  if (v1)
  {
  }

  else
  {
    v45 = v30;
    sub_1C441AC70();
    sub_1C4DC1068(v34, v35);
    sub_1C44107C0();
    sub_1C4F02658();
    sub_1C4414918();
    swift_beginAccess();
    sub_1C449A970(v50, v0 + v48);
    swift_endAccess();
    sub_1C44107C0();
    sub_1C4F026C8();
    sub_1C4414918();
    swift_beginAccess();
    v36 = *(v47 + 40);
    v36(v0 + v27, v49, v51);
    swift_endAccess();
    v37 = sub_1C442A5AC(4);
    sub_1C4425188(v37, v38);
    sub_1C4F026C8();
    sub_1C4414918();
    swift_beginAccess();
    v36(v0 + v29, v46, v51);
    swift_endAccess();
    v39 = sub_1C442A5AC(6);
    v41 = v40;
    v42 = sub_1C440272C();
    v43(v42, v52);
    v44 = v45[1];
    *v45 = v39;
    v45[1] = v41;
  }

  sub_1C440962C(v53);
  sub_1C43FBC80();
}

uint64_t sub_1C4DBC100@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4DBBBD0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C4DBC150(uint64_t a1, void (*a2)(void), uint64_t a3, unsigned __int8 *a4)
{
  v5 = v4;
  v266 = a3;
  v267 = a2;
  v272 = a1;
  v270 = sub_1C4EFF0C8();
  v7 = sub_1C43FCDF8(v270);
  v269 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v13 = sub_1C43FD2C8(v12 - v11);
  v260 = type metadata accessor for EntityTriple(v13);
  v14 = sub_1C43FCDF8(v260);
  v263 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FD230();
  sub_1C43FD2C8(v23);
  v259 = sub_1C4EFD548();
  v24 = sub_1C43FCDF8(v259);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBCC4();
  v31 = v30 - v29;
  v32 = sub_1C4EFF8A8();
  v33 = sub_1C43FCDF8(v32);
  v273 = v34;
  v274 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v245 - v38;
  v40 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v41 = sub_1C43FBD18(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v245 - v45;
  v47 = sub_1C4EFEEF8();
  v48 = sub_1C43FCDF8(v47);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v245 - v54;
  v271 = *a4;
  v56 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_predicate;
  sub_1C440D164();
  sub_1C47CBF50(v5 + v56, v46);
  if (sub_1C44157D4(v46, 1, v47) == 1)
  {
    sub_1C4420C3C(v46, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    v57 = sub_1C43FFB2C();
    sub_1C4414040(v57, v58);
    return v5;
  }

  v59 = v260;
  v264 = v50;
  v61 = *(v50 + 32);
  v60 = (v50 + 32);
  v265 = v47;
  v247 = v60;
  v246 = v61;
  v61(v55, v46, v47);
  v62 = *(v26 + 16);
  v248 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_entityClass;
  v62(v31, v5 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_entityClass, v259);
  sub_1C4EFF838();
  v276 = MEMORY[0x1E69E7CC0];
  v63 = v5;
  v64 = *(v5 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_relationshipLabel + 8);
  v262 = v39;
  v261 = v55;
  if (v64)
  {
    sub_1C43FF988((v5 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_relationshipLabel));
    if (v65)
    {
      v66 = v55;
      sub_1C441BFA8();
      v67 = v255;
      v259 = v68;
      v69(v255, v266, v270);
      v70 = *(v264 + 16);
      v71 = v265;
      v70(v67 + v59[5], v66, v265);
      (*(v273 + 16))(v67 + v59[6], v39, v274);
      v72 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_relationshipLabel_predicate;
      v73 = v63;
      v74 = v59;
      sub_1C440D164();
      v70(v67 + v59[7], (v73 + v72), v71);
      sub_1C449ED64(v73 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_source, v67 + v59[9]);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v75 = (v67 + v59[8]);
      *v75 = v259;
      v75[1] = v64;
      v76 = (v67 + v59[10]);
      v60 = v267;
      *v76 = v272;
      v76[1] = v60;
      *(v67 + v59[11]) = v77;
      *(v67 + v59[12]) = v271;
      v78 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v78, v79, v80, MEMORY[0x1E69E7CC0]);
      v5 = v81;
      v83 = *(v81 + 16);
      v82 = *(v81 + 24);
      if (v83 >= v82 >> 1)
      {
        v196 = sub_1C43FFD98(v82);
        sub_1C44C9240(v196, v197, v198, v5);
        v5 = v199;
      }

      *(v5 + 16) = v83 + 1;
      sub_1C4403C00();
      sub_1C4A948D8(v255, v5 + v84 + *(v85 + 72) * v83);
      v276 = v5;
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
      sub_1C444C4B4();
      v73 = v63;
      v74 = v59;
    }
  }

  else
  {
    sub_1C444C4B4();
    v73 = v5;
    v74 = v59;
    v5 = v86;
  }

  v87 = *(v73 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_unlocalizedRelationshipLabel + 8);
  v88 = v268;
  if (v87)
  {
    sub_1C44026DC((v73 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_unlocalizedRelationshipLabel));
    if (v89)
    {
      sub_1C441BFA8();
      v90 = sub_1C4433AE4();
      v91(v90);
      v60 = (v264 + 16);
      v92 = *(v264 + 16);
      v93 = v73 + v74[5];
      v260 = v5;
      v94 = v265;
      v92(v93, v261, v265);
      v95 = sub_1C44356DC();
      v96(v95);
      v97 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_unlocalizedRelationshipLabel_predicate;
      sub_1C440D164();
      v98 = v94;
      v5 = v260;
      v92(v73 + v74[7], (v73 + v97), v98);
      sub_1C444C4B4();
      sub_1C449ED64(v73 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_source, v73 + v74[9]);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C44401D4();
      *v99 = v272;
      v99[1] = v60;
      sub_1C43FCD04(v100);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v200 = *(v5 + 16);
        v201 = sub_1C43FCEC0();
        sub_1C44C9240(v201, v202, v203, v5);
        v5 = v204;
      }

      sub_1C43FD74C();
      v88 = v268;
      if (v102)
      {
        v205 = sub_1C43FFD98(v101);
        sub_1C44C9240(v205, v206, v207, v5);
        v5 = v208;
      }

      *(v5 + 16) = v87;
      sub_1C4403C00();
      sub_1C4440B70(v103);
      sub_1C4A948D8(v256, v104);
      v276 = v5;
    }
  }

  v105 = *(v73 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_confidence + 8);
  if (v105)
  {
    sub_1C44026DC((v73 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_confidence));
    if (v106)
    {
      sub_1C441BFA8();
      v107 = sub_1C4433AE4();
      v108(v107);
      v109 = sub_1C447F400();
      v111 = *(v110 - 256);
      v60(v109);
      v112 = sub_1C44356DC();
      v113(v112);
      v114 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_confidence_predicate;
      sub_1C440D164();
      v115 = v111;
      v116 = v272;
      (v60)(v73 + v74[7], v73 + v114, v115);
      v5 = v260;
      sub_1C444C4B4();
      sub_1C449ED64(v73 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_source, v73 + v74[9]);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C44401D4();
      *v117 = v116;
      v117[1] = v60;
      sub_1C43FCD04(v118);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v209 = *(v5 + 16);
        v210 = sub_1C43FCEC0();
        sub_1C44C9240(v210, v211, v212, v5);
        v5 = v213;
      }

      sub_1C43FD74C();
      v88 = v268;
      if (v102)
      {
        v214 = sub_1C43FFD98(v119);
        sub_1C44C9240(v214, v215, v216, v5);
        v5 = v217;
      }

      *(v5 + 16) = v105;
      sub_1C4403C00();
      sub_1C4440B70(v120);
      sub_1C4A948D8(v257, v121);
      v276 = v5;
    }
  }

  v122 = *(v73 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_personIdentifier + 8);
  if (v122)
  {
    sub_1C44026DC((v73 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_personIdentifier));
    if (v123)
    {
      sub_1C441BFA8();
      v124 = sub_1C4433AE4();
      v125(v124);
      v126 = sub_1C447F400();
      v128 = *(v127 - 256);
      v60(v126);
      v129 = sub_1C44356DC();
      v130(v129);
      v131 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_personIdentifier_predicate;
      sub_1C440D164();
      v132 = v74[7];
      sub_1C4458608();
      (v60)();
      v5 = v260;
      v133 = v267;
      sub_1C449ED64(v73 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_source, v73 + v74[9]);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C44401D4();
      *v134 = v131;
      v134[1] = v133;
      sub_1C43FCD04(v135);
      v136 = v133;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v218 = *(v5 + 16);
        v219 = sub_1C43FCEC0();
        sub_1C44C9240(v219, v220, v221, v5);
        v5 = v222;
      }

      sub_1C43FD74C();
      v88 = v268;
      if (v102)
      {
        v223 = sub_1C43FFD98(v137);
        sub_1C44C9240(v223, v224, v225, v5);
        v5 = v226;
      }

      v60 = v136;
      *(v5 + 16) = v122;
      sub_1C4403C00();
      sub_1C4440B70(v138);
      sub_1C4A948D8(v258, v139);
      v276 = v5;
    }
  }

  v140 = *(v73 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_associatedWith);
  if (!v140)
  {
LABEL_42:
    v171 = v265;
    v172 = v261;
    if (*(v5 + 16))
    {
      v173 = v5;
      v174 = v254;
      (*(v269 + 16))(v254, v266, v270);
      (*(v264 + 16))(v174 + v74[5], v172, v171);
      (*(v273 + 16))(v174 + v74[6], v262, v274);
      v175 = v174 + v74[7];
      sub_1C4EFEBB8();
      v176 = sub_1C4EFD2F8();
      v178 = v177;
      sub_1C449ED64(v73 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_source, v174 + v74[9]);
      sub_1C4EF9AE8();
      v179 = (v174 + v74[8]);
      *v179 = v176;
      v179[1] = v178;
      sub_1C441D550((v174 + v74[10]));
      *(v174 + v180) = v181;
      sub_1C445C0BC();
      v182 = v173;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v227 = *(v173 + 16);
        v228 = sub_1C43FCEC0();
        sub_1C44C9240(v228, v229, v230, v173);
        v182 = v231;
      }

      v184 = *(v182 + 16);
      v183 = *(v182 + 24);
      v185 = v182;
      v186 = v274;
      v187 = v262;
      if (v184 >= v183 >> 1)
      {
        v232 = sub_1C43FFD98(v183);
        sub_1C44C9240(v232, v233, v234, v182);
        v185 = v235;
      }

      (*(v273 + 8))(v187, v186);
      v188 = sub_1C443F8C4();
      v189(v188);
      v5 = v185;
      *(v185 + 16) = v184 + 1;
      sub_1C4403C00();
      sub_1C4A948D8(v254, v185 + v190 + *(v191 + 72) * v184);
    }

    else
    {
      v192 = sub_1C448F2B8();
      v193(v192);
      v194 = sub_1C4401D04();
      v195(v194, v171);
    }

    return v5;
  }

  v275[0] = v271;

  v141 = sub_1C4DB81DC(v272, v60, v275);
  if (v88)
  {

    v142 = sub_1C448F2B8();
    v143(v142);
    v144 = sub_1C443F8C4();
    v145(v144);

    return v5;
  }

  if (!*(v141 + 16))
  {

    goto LABEL_42;
  }

  v146 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3614(v146);
  sub_1C441BFA8();
  v147(v253, v266, v270);
  v148 = v265;
  (*(v264 + 16))(v250, v261, v265);
  (*(v273 + 16))(v252, v262, v274);
  v149 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_predicate;
  sub_1C440D164();
  v150 = v140 + v149;
  v151 = v251;
  sub_1C47CBF50(v150, v251);
  v152 = v151;
  v153 = v148;
  result = sub_1C44157D4(v152, 1, v148);
  if (result != 1)
  {

    v268 = sub_1C4EFF048();
    v267 = v155;
    v156 = v249;
    sub_1C449ED64(v73 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_source, v249 + v74[9]);
    sub_1C4EF9AE8();
    v158 = v157;
    sub_1C4418E1C();
    (*(v159 + 32))(v156, v253, v270);
    v160 = v246;
    v246(v156 + v74[5], v250, v153);
    (*(v273 + 32))(v156 + v74[6], v252, v274);
    v160(v156 + v74[7], v251, v153);
    v161 = (v156 + v74[8]);
    v162 = v267;
    *v161 = v268;
    v161[1] = v162;
    sub_1C441D550((v156 + v74[10]));
    *(v156 + v163) = v158;
    sub_1C445C0BC();
    v164 = v276;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v236 = *(v164 + 16);
      v237 = sub_1C43FCEC0();
      sub_1C44C9240(v237, v238, v239, v164);
      v164 = v240;
    }

    v166 = *(v164 + 16);
    v165 = *(v164 + 24);
    v167 = v164;
    if (v166 >= v165 >> 1)
    {
      v241 = sub_1C43FFD98(v165);
      sub_1C44C9240(v241, v242, v243, v164);
      v167 = v244;
    }

    *(v167 + 16) = v166 + 1;
    sub_1C4403C00();
    v170 = v167 + v168 + *(v169 + 72) * v166;
    v5 = v167;
    sub_1C4A948D8(v249, v170);
    goto LABEL_42;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4DBD0E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001BLL && 0x80000001C4FC7E70 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x80000001C4FC7E90 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000026 && 0x80000001C4FC7EB0 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001CLL && 0x80000001C4FC7EE0 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000014 && 0x80000001C4FC7F00 == a2;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD00000000000001ALL && 0x80000001C4FC7E30 == a2;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000010 && 0x80000001C4FC7E50 == a2;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0x746169636F737361 && a2 == 0xEE00687469576465)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_1C4F02938();

                        if (v17)
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

unint64_t sub_1C4DBD494(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      v3 = 11;
      goto LABEL_8;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000026;
      break;
    case 6:
      result = 0xD00000000000001CLL;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x6E656469666E6F63;
      break;
    case 9:
      v3 = 10;
LABEL_8:
      result = v3 | 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x746169636F737361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4DBD628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DBD0E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DBD650@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C46182F8();
  *a1 = result;
  return result;
}

uint64_t sub_1C4DBD678(uint64_t a1)
{
  v2 = sub_1C4DC12E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DBD6B4(uint64_t a1)
{
  v2 = sub_1C4DC12E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DBD6F0()
{
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_entityClass;
  v2 = sub_1C4EFD548();
  sub_1C43FBCE0(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C448D818(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_source);
  v4 = sub_1C4EFEEF8();
  sub_1C43FBCE0(v4);
  v6 = *(v5 + 8);
  v7 = sub_1C4460780();
  v6(v7);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_relationshipLabel);
  v8 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_unlocalizedRelationshipLabel_predicate);
  v6(v8);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_unlocalizedRelationshipLabel);
  v9 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_confidence_predicate);
  v6(v9);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_confidence);
  v10 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_personIdentifier_predicate);
  v6(v10);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_personIdentifier);
  v11 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_associatedWith);

  return v0;
}

void sub_1C4DBD888()
{
  sub_1C4D889F8();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = sub_1C4EFD548();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = type metadata accessor for Source();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = sub_1C4EFEEF8();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1C4DBD9E8()
{
  sub_1C43FE96C();
  v4 = v0;
  v5 = sub_1C447E4C8();
  v6 = sub_1C43FCDF8(v5);
  v61 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD230();
  v60 = v13;
  v14 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FE95C();
  v18 = sub_1C456902C(&qword_1EC0C7738, &qword_1C4F74508);
  sub_1C43FCDF8(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C4401780();
  v24 = v0[4];
  sub_1C4417F50(v0, v0[3]);
  sub_1C4DC12E4();
  sub_1C442AD68();
  sub_1C4F02BF8();
  v25 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_predicate;
  sub_1C440D164();
  sub_1C47CBF50(v4 + v25, v3);
  sub_1C441AC70();
  sub_1C4DC1068(v26, v27);
  v62 = v18;
  v28 = v5;
  sub_1C4F02778();
  sub_1C4420C3C(v3, &qword_1EC0B9A08, &unk_1C4F107B0);
  if (v1)
  {
    (*(v20 + 8))(v2, v62);
  }

  else
  {
    sub_1C446257C(1);
    sub_1C4EFD548();
    sub_1C4420AE8();
    sub_1C4DC1068(v29, v30);
    sub_1C447CD10();
    sub_1C4F027E8();
    sub_1C446257C(2);
    type metadata accessor for Source();
    sub_1C4413E1C();
    sub_1C4DC1068(v31, v32);
    sub_1C447CD10();
    sub_1C4F027E8();
    v35 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_relationshipLabel_predicate;
    sub_1C440D164();
    (*(v61 + 16))(v60, v4 + v35, v28);
    sub_1C44169D8();
    sub_1C4F027E8();
    v36 = sub_1C4460C3C();
    v38 = v37;
    v37(v36, v28);
    v39 = v28;
    sub_1C443E074((v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_relationshipLabel));
    sub_1C442A8D0();
    sub_1C4F02738();

    sub_1C440D164();
    sub_1C442EEC8();
    v42(v40, v41);
    sub_1C4F027E8();
    v38(v59, v28);
    v43 = *(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_unlocalizedRelationshipLabel);
    v44 = *(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_unlocalizedRelationshipLabel + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C442A8D0();
    sub_1C4F02738();

    sub_1C440D164();
    sub_1C442EEC8();
    v47(v45, v46);
    sub_1C4F027E8();
    v38(v58, v39);
    v48 = *(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_confidence);
    v49 = *(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_confidence + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C442A8D0();
    sub_1C4F02738();

    sub_1C440D164();
    sub_1C442EEC8();
    v52(v50, v51);
    sub_1C447CD10();
    sub_1C4F027E8();
    v38(v57, v39);
    v53 = *(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_personIdentifier);
    v54 = *(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_personIdentifier + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F02738();

    v63 = *(v4 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_associatedWith);
    type metadata accessor for HKEmergencyContactStructs.Person(0);
    sub_1C440C1DC();
    sub_1C4DC1068(v55, v56);
    sub_1C4414374();
    sub_1C4F02778();
    v33 = sub_1C4423948();
    v34(v33, v62);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4DBE1D0()
{
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v1, v2, v3, v4);
  sub_1C4EFD318();
  v5 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_source;
  if (qword_1EDDFD218 != -1)
  {
    sub_1C4405DDC();
    swift_once();
  }

  v6 = type metadata accessor for Source();
  v7 = sub_1C442B738(v6, &qword_1EDDFD220);
  sub_1C449ED64(v7, v0 + v5);
  sub_1C4EFE878();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_relationshipLabel);
  sub_1C4EFEB48();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_unlocalizedRelationshipLabel);
  sub_1C4EFE2A8();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_confidence);
  sub_1C4EFE808();
  sub_1C4410754(OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_personIdentifier);
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_associatedWith) = 0;
  return v0;
}

void sub_1C4DBE310()
{
  sub_1C43FE96C();
  v3 = v2;
  v4 = sub_1C4EFEEF8();
  v5 = sub_1C43FCDF8(v4);
  v54 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD230();
  v12 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v12);
  v14 = *(v13 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBC74();
  v56 = v16;
  v57 = sub_1C456902C(&qword_1EC0C7778, &qword_1C4F74528);
  sub_1C43FCDF8(v57);
  v18 = *(v17 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBC74();
  v55 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_predicate;
  sub_1C43FCF64();
  sub_1C440BAA8(v20, v21, v22, v4);
  sub_1C4EFD318();
  v23 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_source;
  if (qword_1EDDFD218 != -1)
  {
    sub_1C4405DDC();
    swift_once();
  }

  v24 = type metadata accessor for Source();
  v25 = sub_1C442B738(v24, &qword_1EDDFD220);
  sub_1C449ED64(v25, v0 + v23);
  sub_1C4EFE878();
  v26 = (v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_relationshipLabel);
  *v26 = 0;
  v26[1] = 0;
  sub_1C4EFEB48();
  v27 = (v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_unlocalizedRelationshipLabel);
  *v27 = 0;
  v27[1] = 0;
  sub_1C4EFE2A8();
  v28 = (v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_confidence);
  *v28 = 0;
  v28[1] = 0;
  sub_1C4EFE808();
  v29 = (v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_personIdentifier);
  *v29 = 0;
  v29[1] = 0;
  v30 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_associatedWith;
  *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs32AgentAffiliationRelationshipType_associatedWith) = 0;
  v31 = v3;
  v33 = v3[3];
  v32 = v3[4];
  v58 = v31;
  sub_1C4417F50(v31, v33);
  sub_1C4DC12E4();
  sub_1C4F02BC8();
  if (!v1)
  {
    LOBYTE(v59) = 0;
    sub_1C441AC70();
    sub_1C4DC1068(v34, v35);
    sub_1C4F02658();
    sub_1C44063BC();
    sub_1C449A970(v56, v0 + v55);
    swift_endAccess();
    sub_1C4402064(3);
    sub_1C4F026C8();
    sub_1C4411600();
    v36 = *(v54 + 40);
    v37 = sub_1C442F53C();
    v36(v37);
    swift_endAccess();
    v38 = sub_1C441F220(4);
    sub_1C4425188(v38, v39);
    sub_1C4402064(5);
    sub_1C4405648();
    sub_1C4411600();
    v40 = sub_1C442F53C();
    v36(v40);
    swift_endAccess();
    v41 = sub_1C441F220(6);
    sub_1C4425188(v41, v42);
    sub_1C4402064(7);
    sub_1C4405648();
    sub_1C4411600();
    v43 = sub_1C442F53C();
    v36(v43);
    swift_endAccess();
    v44 = sub_1C441F220(8);
    sub_1C4425188(v44, v45);
    sub_1C4402064(9);
    sub_1C4405648();
    sub_1C4411600();
    v46 = sub_1C442F53C();
    v36(v46);
    swift_endAccess();
    v47 = sub_1C441F220(10);
    sub_1C4425188(v47, v48);
    type metadata accessor for HKEmergencyContactStructs.Person(0);
    sub_1C440C1DC();
    sub_1C4DC1068(v49, v50);
    sub_1C4F02658();
    v51 = sub_1C4401D04();
    v52(v51, v57);
    v53 = *(v0 + v30);
    *(v0 + v30) = v59;
  }

  sub_1C440962C(v58);
  sub_1C43FBC80();
}

uint64_t sub_1C4DBE980@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4DBE2E4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C4DBE9D0(void *a1, void (*a2)(uint64_t), uint64_t *a3)
{
  v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  result = MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *(v3 + *a1);
  if (v14)
  {

    a2(v15);
    v16 = sub_1C4EFEEF8();
    sub_1C440BAA8(v13, 0, 1, v16);
    v17 = *a3;
    sub_1C4414918();
    swift_beginAccess();
    sub_1C449A970(v13, v14 + v17);
    swift_endAccess();
  }

  return result;
}

void sub_1C4DBEAC0()
{
  sub_1C43FE96C();
  v149 = v1;
  v2 = v0;
  v4 = v3;
  v147 = v5;
  v137 = *v0;
  v130 = sub_1C4F00DD8();
  v6 = sub_1C43FCDF8(v130);
  v129 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  sub_1C43FD2C8(v11 - v10);
  v132 = sub_1C4F00DC8();
  v12 = sub_1C43FCDF8(v132);
  v131 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD230();
  sub_1C43FD2C8(v17);
  v18 = sub_1C4F01188();
  v19 = sub_1C43FCDF8(v18);
  v140 = v20;
  v141 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  v139 = v24 - v23;
  v152 = sub_1C4EFD548();
  v25 = sub_1C43FCDF8(v152);
  v150 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBF38();
  v146 = v30;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v120 - v32;
  v34 = type metadata accessor for Source();
  v35 = sub_1C43FBCE0(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBCC4();
  v40 = (v39 - v38);
  v41 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v41);
  v43 = *(v42 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBC74();
  v148 = v45;
  v46 = sub_1C4EFF0C8();
  v47 = sub_1C43FCDF8(v46);
  v134 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBCC4();
  v133 = v52 - v51;
  v53 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_predicate;
  v54 = sub_1C4EFEEF8();
  v135 = v53;
  v136 = v54;
  sub_1C43FCF64();
  sub_1C440BAA8(v55, v56, v57, v58);
  v59 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_entityClass;
  sub_1C4EFD4C8();
  v60 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_source;
  if (qword_1EDDFD218 != -1)
  {
    sub_1C4405DDC();
    swift_once();
  }

  v145 = v46;
  v61 = sub_1C442B738(v34, &qword_1EDDFD220);
  sub_1C449ED64(v61, &v2[v60]);
  sub_1C4EFE5D8();
  v62 = &v2[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_isCurrentUser];
  *v62 = 0;
  *(v62 + 1) = 0;
  sub_1C4EFEBF8();
  v63 = &v2[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_name];
  *v63 = 0;
  *(v63 + 1) = 0;
  *&v2[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_entityAliasRelationship] = 0;
  *&v2[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_hasContactInformation] = 0;
  *&v2[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_hasAssociation] = 0;
  v143 = v60;
  sub_1C449ED64(&v2[v60], v40);
  v64 = v150 + 16;
  v65 = *(v150 + 16);
  v65(v33, &v2[v59], v152);
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v66 = sub_1C4F00978();
  v67 = sub_1C442B738(v66, qword_1EDE2DE10);
  v68 = v146;
  v142 = v33;
  v124 = v64;
  v123 = v65;
  v65(v146, v33, v152);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v122 = v67;
  v69 = sub_1C4F00968();
  v70 = sub_1C4F01CB8();

  v71 = os_log_type_enabled(v69, v70);
  v144 = v59;
  if (v71)
  {
    v72 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v151[0] = v121;
    *v72 = 136381187;
    *(v72 + 4) = sub_1C441D828(v147, v4, v151);
    *(v72 + 12) = 2080;
    sub_1C4420AE8();
    sub_1C4DC1068(v73, v74);
    HIDWORD(v120) = v70;
    sub_1C4F02858();
    v138 = *(v150 + 8);
    v138(v68, v152);
    v75 = sub_1C4409A28();
    v78 = sub_1C441D828(v75, v76, v77);

    *(v72 + 14) = v78;
    *(v72 + 22) = 1024;
    *(v72 + 24) = 0;
    _os_log_impl(&dword_1C43F8000, v69, BYTE4(v120), "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v72, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v138 = *(v150 + 8);
    v138(v68, v152);
  }

  v79 = *v40;
  v80 = *(v40 + 1);
  v146 = v40;
  v151[0] = v147;
  v151[1] = v4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v79, v80);

  sub_1C4F01178();
  v81 = sub_1C4F01148();
  v83 = v82;
  v84 = sub_1C44018C0();
  v85(v84);
  if (v83 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v86 = sub_1C4F00968();
    v87 = sub_1C4F01CD8();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v151[0] = v89;
      *v88 = 136380675;
      v90 = sub_1C440BB4C();
      v93 = sub_1C441D828(v90, v91, v92);

      *(v88 + 4) = v93;
      _os_log_impl(&dword_1C43F8000, v86, v87, "Source: failed to encode identifier as UTF8 data: %{private}s", v88, 0xCu);
      sub_1C440962C(v89);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    v101 = v138;
    v138(v142, v152);
    v102 = 1;
  }

  else
  {

    sub_1C4DC1068(&qword_1EDDFEAD0, MEMORY[0x1E6966620]);
    v94 = v127;
    v95 = v130;
    sub_1C440BB4C();
    sub_1C4F00DB8();
    sub_1C44344B8(v81, v83);
    v96 = v149;
    sub_1C4498FD8(v81, v83);
    v149 = v96;
    sub_1C441DFEC(v81, v83);
    v97 = v128;
    sub_1C440BB4C();
    sub_1C4F00DA8();
    (*(v129 + 8))(v94, v95);
    v147 = v81;
    v123(v125, v142, v152);
    v98 = v131;
    v99 = v132;
    (*(v131 + 16))(v126, v97, v132);
    sub_1C4EFF028();
    sub_1C441DFEC(v147, v83);
    (*(v98 + 8))(v97, v99);
    v100 = sub_1C4409A28();
    v101 = v138;
    (v138)(v100);
    v102 = 0;
  }

  v104 = v145;
  v103 = v146;
  v105 = v148;
  sub_1C440BAA8(v148, v102, 1, v145);
  sub_1C448D818(v103);
  v106 = sub_1C44157D4(v105, 1, v104);
  v108 = v143;
  v107 = v144;
  if (v106 == 1)
  {
    sub_1C4420C3C(v148, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C45CF650();
    v109 = sub_1C43FFB2C();
    *v110 = 5;
    v149 = v109;
    swift_willThrow();
    sub_1C4420C3C(&v2[v135], &qword_1EC0B9A08, &unk_1C4F107B0);
    v101(&v2[v107], v152);
    sub_1C448D818(&v2[v108]);
    v111 = v136;
    v112 = *(*(v136 - 8) + 8);
    v112(&v2[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_isCurrentUser_predicate], v136);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_isCurrentUser);
    v112(&v2[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_name_predicate], v111);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_name);
    v113 = *&v2[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_entityAliasRelationship];

    v114 = *&v2[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_hasContactInformation];

    v115 = *&v2[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_hasAssociation];

    v116 = *(*v2 + 48);
    v117 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v118 = v133;
    v119 = *(v134 + 32);
    v119(v133, v148, v104);
    v119(&v2[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_entityIdentifier], v118, v104);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4DBF638(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000017 && 0x80000001C4FC81D0 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E65727275437369 && a2 == 0xED00007265735574;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 1701667182 && a2 == 0xE400000000000000;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000017 && 0x80000001C4FC8580 == a2;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000015 && 0x80000001C4FC85C0 == a2;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x636F737341736168 && a2 == 0xEE006E6F69746169)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1C4F02938();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

unint64_t sub_1C4DBF9B0(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x6E65727275437369;
      break;
    case 6:
      result = 0x6572705F656D616ELL;
      break;
    case 7:
      result = 1701667182;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0x636F737341736168;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C4DBFB10(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4DBFB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DBF638(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DBFB8C(uint64_t a1)
{
  v2 = sub_1C4DC1338();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DBFBC8(uint64_t a1)
{
  v2 = sub_1C4DC1338();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4DBFC04()
{
  v1 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_entityIdentifier;
  v2 = sub_1C4EFF0C8();
  sub_1C43FBCE0(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_predicate, &qword_1EC0B9A08, &unk_1C4F107B0);
  v4 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_entityClass;
  v5 = sub_1C4EFD548();
  sub_1C43FBCE0(v5);
  (*(v6 + 8))(v0 + v4);
  sub_1C448D818(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_source);
  v7 = sub_1C4EFEEF8();
  sub_1C43FBCE0(v7);
  v9 = *(v8 + 8);
  v10 = sub_1C4460780();
  v9(v10);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_isCurrentUser);
  v11 = sub_1C4412B9C(OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_name_predicate);
  v9(v11);
  sub_1C440DE48(OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_name);
  v12 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_entityAliasRelationship);

  v13 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_hasContactInformation);

  v14 = *(v0 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_hasAssociation);

  return v0;
}

uint64_t sub_1C4DBFD84(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

void sub_1C4DBFE08()
{
  v0 = sub_1C4EFF0C8();
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_1C4D889F8();
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      v4 = sub_1C4EFD548();
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        v6 = type metadata accessor for Source();
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          v8 = sub_1C4EFEEF8();
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1C4DBFFA0()
{
  sub_1C43FE96C();
  v66 = v1;
  v4 = sub_1C447E4C8();
  v5 = sub_1C43FCDF8(v4);
  v63 = v6;
  v64 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  v62 = v9;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v58 - v11;
  v13 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FE95C();
  v17 = sub_1C456902C(&qword_1EC0C7748, &qword_1C4F74510);
  sub_1C43FCDF8(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C4401780();
  v23 = v0[4];
  sub_1C4417F50(v0, v0[3]);
  sub_1C4DC1338();
  sub_1C442AD68();
  sub_1C4F02BF8();
  v70 = 0;
  sub_1C4EFF0C8();
  sub_1C441C694();
  sub_1C4DC1068(v24, v25);
  v65 = v0;
  v26 = v17;
  v27 = v66;
  sub_1C4F027E8();
  if (v27)
  {
    (*(v19 + 8))(v2, v17);
  }

  else
  {
    v61 = v12;
    v28 = v63;
    v66 = v19;
    v29 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_predicate;
    v30 = v65;
    sub_1C440D164();
    sub_1C47CBF50(v30 + v29, v3);
    v69 = 1;
    sub_1C441AC70();
    v33 = sub_1C4DC1068(v31, v32);
    v34 = v64;
    sub_1C4F02778();
    sub_1C4420C3C(v3, &qword_1EC0B9A08, &unk_1C4F107B0);
    v35 = v26;
    sub_1C44019B0(2);
    sub_1C4EFD548();
    sub_1C4420AE8();
    sub_1C4DC1068(v36, v37);
    sub_1C4F027E8();
    sub_1C44019B0(3);
    type metadata accessor for Source();
    sub_1C4413E1C();
    sub_1C4DC1068(v38, v39);
    sub_1C441D0AC();
    sub_1C4F027E8();
    v40 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_isCurrentUser_predicate;
    v41 = v65;
    sub_1C440D164();
    v60 = v33;
    v59 = *(v28 + 2);
    v59(v61, &v41[v40], v34);
    v68 = 4;
    v42 = v34;
    sub_1C4F027E8();
    v58[1] = v28 + 16;
    v43 = *(v28 + 1);
    v44 = sub_1C4401D48();
    v43(v44);
    v45 = *(v65 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_isCurrentUser);
    v46 = *(v65 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_isCurrentUser + 8);
    v68 = 5;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C442A8D0();
    sub_1C4F02738();
    v63 = v43;

    v47 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_name_predicate;
    v48 = v65;
    sub_1C440D164();
    v59(v62, &v48[v47], v42);
    sub_1C447CD10();
    sub_1C4F027E8();
    v49 = sub_1C4401D48();
    v63(v49);
    v50 = v65;
    v51 = *(v65 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_name);
    v52 = *(v65 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_name + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F02738();

    v71 = *(v50 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_entityAliasRelationship);
    v67 = 8;
    sub_1C456902C(&qword_1EC0C7758, &qword_1C4F74518);
    sub_1C4DC138C(&qword_1EC0C7760, &qword_1EC0C7710);
    sub_1C4414374();
    sub_1C441D0AC();
    sub_1C4F02778();
    v72 = *(v50 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_hasContactInformation);
    v67 = 9;
    type metadata accessor for HKEmergencyContactStructs.AddressRelationshipType(0);
    sub_1C445022C();
    sub_1C4DC1068(v53, v54);
    sub_1C4414374();
    sub_1C441D0AC();
    sub_1C4F02778();
    v55 = v66;
    v73 = *(v50 + OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_hasAssociation);
    v67 = 10;
    type metadata accessor for HKEmergencyContactStructs.AgentAffiliationRelationshipType(0);
    sub_1C4415E44();
    sub_1C4DC1068(v56, v57);
    sub_1C4414374();
    sub_1C441D0AC();
    sub_1C4F02778();
    (*(v55 + 8))(v2, v35);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4DC06F4(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  a2(a1);
  return v7;
}

void sub_1C4DC075C()
{
  sub_1C43FE96C();
  v2 = v0;
  v4 = v3;
  v69 = *v2;
  v5 = sub_1C4EFEEF8();
  v6 = sub_1C43FCDF8(v5);
  v70 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD230();
  v62 = v11;
  v12 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v12);
  v14 = *(v13 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBC74();
  v64 = v16;
  v66 = sub_1C4EFF0C8();
  v17 = sub_1C43FCDF8(v66);
  v63 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v65 = v22 - v21;
  v23 = sub_1C456902C(&qword_1EC0C7768, &qword_1C4F74520);
  sub_1C43FCDF8(v23);
  v25 = *(v24 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBC74();
  v71 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_predicate;
  sub_1C43FCF64();
  sub_1C440BAA8(v27, v28, v29, v5);
  v68 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_entityClass;
  sub_1C4EFD4C8();
  v30 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_source;
  if (qword_1EDDFD218 != -1)
  {
    sub_1C4405DDC();
    swift_once();
  }

  v31 = type metadata accessor for Source();
  v32 = sub_1C442B738(v31, &qword_1EDDFD220);
  v67 = v30;
  sub_1C449ED64(v32, &v2[v30]);
  v61 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_isCurrentUser_predicate;
  sub_1C4EFE5D8();
  v33 = &v2[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_isCurrentUser];
  *v33 = 0;
  *(v33 + 1) = 0;
  v34 = OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_name_predicate;
  sub_1C4EFEBF8();
  v35 = &v2[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_name];
  *v35 = 0;
  *(v35 + 1) = 0;
  *&v2[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_entityAliasRelationship] = 0;
  *&v2[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_hasContactInformation] = 0;
  v72 = v4;
  v73 = v2;
  *&v2[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_hasAssociation] = 0;
  v36 = v4[4];
  sub_1C4417F50(v4, v4[3]);
  sub_1C4DC1338();
  sub_1C4F02BC8();
  if (v1)
  {
    sub_1C4420C3C(&v73[v71], &qword_1EC0B9A08, &unk_1C4F107B0);
    v39 = sub_1C4EFD548();
    sub_1C43FBCE0(v39);
    (*(v40 + 8))(&v73[v68]);
    sub_1C448D818(&v73[v67]);
    v41 = *(v70 + 8);
    v41(&v73[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_isCurrentUser_predicate], v5);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_isCurrentUser);
    v41(&v73[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_name_predicate], v5);
    sub_1C44102F0(OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_name);
    v42 = *&v73[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_entityAliasRelationship];

    v43 = *&v73[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_hasContactInformation];

    v44 = *&v73[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_hasAssociation];

    v45 = *(*v73 + 48);
    v46 = *(*v73 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1C441C694();
    sub_1C4DC1068(v37, v38);
    sub_1C4F026C8();
    (*(v63 + 32))(&v73[OBJC_IVAR____TtCO24IntelligencePlatformCore25HKEmergencyContactStructs6Person_entityIdentifier], v65, v66);
    sub_1C441AC70();
    sub_1C4DC1068(v47, v48);
    sub_1C44225FC();
    sub_1C4F02658();
    sub_1C4411600();
    sub_1C449A970(v64, &v73[v71]);
    swift_endAccess();
    sub_1C4402064(4);
    sub_1C44225FC();
    sub_1C43FE664();
    sub_1C4F026C8();
    sub_1C4411600();
    v49 = *(v70 + 40);
    v49(&v73[v61], v62, 0);
    swift_endAccess();
    sub_1C43FE664();
    v50 = sub_1C4F02618();
    sub_1C4425188(v50, v51);
    sub_1C4402064(6);
    sub_1C44225FC();
    sub_1C43FE664();
    sub_1C4F026C8();
    sub_1C4411600();
    v49(&v73[v34], v60, 0);
    swift_endAccess();
    LOBYTE(v74) = 7;
    sub_1C43FE664();
    v52 = sub_1C4F02618();
    sub_1C4425188(v52, v53);
    sub_1C456902C(&qword_1EC0C7758, &qword_1C4F74518);
    sub_1C4DC138C(&qword_1EC0C7770, &qword_1EC0C7708);
    sub_1C4426344();
    sub_1C4422C90(v74);

    type metadata accessor for HKEmergencyContactStructs.AddressRelationshipType(0);
    sub_1C445022C();
    sub_1C4DC1068(v54, v55);
    sub_1C4426344();
    sub_1C4422C90(v74);

    type metadata accessor for HKEmergencyContactStructs.AgentAffiliationRelationshipType(0);
    sub_1C4415E44();
    sub_1C4DC1068(v56, v57);
    sub_1C4426344();
    v58 = sub_1C440CEF0();
    v59(v58);
    sub_1C4422C90(v74);
  }

  sub_1C440962C(v72);
  sub_1C43FBC80();
}

uint64_t sub_1C4DC0F94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4DC06C8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C4DC0FE4(uint64_t a1)
{
  *(a1 + 8) = sub_1C4DC1068(&qword_1EC0C76D8, type metadata accessor for HKEmergencyContactStructs.Person);
  result = sub_1C4DC1068(&qword_1EC0C76E0, type metadata accessor for HKEmergencyContactStructs.Person);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DC1068(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4DC10B0(uint64_t a1)
{
  *(a1 + 8) = sub_1C4DC1068(&qword_1EC0C76E8, type metadata accessor for HKEmergencyContactStructs.AgentAffiliationRelationshipType);
  result = sub_1C4DC1068(&qword_1EC0C76F0, type metadata accessor for HKEmergencyContactStructs.AgentAffiliationRelationshipType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DC1134(uint64_t a1)
{
  *(a1 + 8) = sub_1C4DC1068(&qword_1EC0C76F8, type metadata accessor for HKEmergencyContactStructs.AddressRelationshipType);
  result = sub_1C4DC1068(&qword_1EC0C7700, type metadata accessor for HKEmergencyContactStructs.AddressRelationshipType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4DC11B8(uint64_t a1)
{
  *(a1 + 8) = sub_1C4DC1068(&qword_1EC0C7708, type metadata accessor for HKEmergencyContactStructs.EntityAliasRelationshipType);
  result = sub_1C4DC1068(&qword_1EC0C7710, type metadata accessor for HKEmergencyContactStructs.EntityAliasRelationshipType);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4DC123C()
{
  result = qword_1EC0C7720;
  if (!qword_1EC0C7720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7720);
  }

  return result;
}

unint64_t sub_1C4DC1290()
{
  result = qword_1EC0C7730;
  if (!qword_1EC0C7730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7730);
  }

  return result;
}

unint64_t sub_1C4DC12E4()
{
  result = qword_1EC0C7740;
  if (!qword_1EC0C7740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7740);
  }

  return result;
}

unint64_t sub_1C4DC1338()
{
  result = qword_1EC0C7750;
  if (!qword_1EC0C7750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7750);
  }

  return result;
}

uint64_t sub_1C4DC138C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0C7758, &qword_1C4F74518);
    sub_1C4DC1068(a2, type metadata accessor for HKEmergencyContactStructs.EntityAliasRelationshipType);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HKEmergencyContactStructs.AgentAffiliationRelationshipType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HKEmergencyContactStructs.AddressRelationshipType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C4DC15F0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4DC16D0()
{
  result = qword_1EC0C7790;
  if (!qword_1EC0C7790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7790);
  }

  return result;
}

unint64_t sub_1C4DC1728()
{
  result = qword_1EC0C7798;
  if (!qword_1EC0C7798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C7798);
  }

  return result;
}

unint64_t sub_1C4DC1780()
{
  result = qword_1EC0C77A0;
  if (!qword_1EC0C77A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C77A0);
  }

  return result;
}

unint64_t sub_1C4DC17D8()
{
  result = qword_1EC0C77A8;
  if (!qword_1EC0C77A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C77A8);
  }

  return result;
}

unint64_t sub_1C4DC1830()
{
  result = qword_1EC0C77B0;
  if (!qword_1EC0C77B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C77B0);
  }

  return result;
}

unint64_t sub_1C4DC1888()
{
  result = qword_1EC0C77B8;
  if (!qword_1EC0C77B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C77B8);
  }

  return result;
}

unint64_t sub_1C4DC18E0()
{
  result = qword_1EC0C77C0;
  if (!qword_1EC0C77C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C77C0);
  }

  return result;
}

unint64_t sub_1C4DC1938()
{
  result = qword_1EC0C77C8;
  if (!qword_1EC0C77C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C77C8);
  }

  return result;
}

unint64_t sub_1C4DC1990()
{
  result = qword_1EC0C77D0;
  if (!qword_1EC0C77D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C77D0);
  }

  return result;
}

unint64_t sub_1C4DC19E8()
{
  result = qword_1EC0C77D8;
  if (!qword_1EC0C77D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C77D8);
  }

  return result;
}

unint64_t sub_1C4DC1A40()
{
  result = qword_1EC0C77E0;
  if (!qword_1EC0C77E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C77E0);
  }

  return result;
}

unint64_t sub_1C4DC1A98()
{
  result = qword_1EC0C77E8;
  if (!qword_1EC0C77E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C77E8);
  }

  return result;
}

void sub_1C4DC1AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v149 = v27;
  v29 = v28;
  v30 = sub_1C4F00DD8();
  v143 = sub_1C43FCDF8(v30);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v143);
  sub_1C43FD2D8();
  sub_1C43FBE44();
  v33 = sub_1C4F00DC8();
  v34 = sub_1C43FCDF8(v33);
  v144 = v35;
  v145 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBFDC();
  v141 = v38;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FD230();
  v142 = v40;
  sub_1C43FBE44();
  v41 = sub_1C4F01188();
  v42 = sub_1C43FCDF8(v41);
  v147 = v43;
  v148 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FD2D8();
  v146 = v46;
  sub_1C43FBE44();
  v153 = sub_1C4EFD548();
  v47 = sub_1C43FCDF8(v153);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBFDC();
  v138 = v52;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C440D100();
  v54 = sub_1C4EFF0C8();
  v55 = sub_1C43FCDF8(v54);
  v139 = v56;
  v140 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FD230();
  v61 = sub_1C43FD2C8(v60);
  v62 = type metadata accessor for INGroupStructs.GroupOfHumans(v61);
  v63 = sub_1C44753F0(v62);
  v137 = v21;
  sub_1C43FCF64();
  sub_1C440BAA8(v64, v65, v66, v63);
  v67 = v20[6];
  sub_1C4EFCF48();
  v68 = (v29 + v20[7]);
  if (qword_1EDDFD130 != -1)
  {
    sub_1C44123B8();
  }

  v69 = type metadata accessor for Source();
  sub_1C442B738(v69, qword_1EDDFD138);
  sub_1C441AC88();
  sub_1C448D410(v70, v68, v71);
  v134 = v20[8];
  sub_1C4EFEBF8();
  v72 = (v29 + v20[9]);
  *v72 = 0;
  v72[1] = 0;
  v73 = v20[10];
  type metadata accessor for INGroupStructs.GroupRelationshipType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v74, v75, v76, v77);
  v78 = v20[11];
  type metadata accessor for INGroupStructs.SoftwareRelationshipType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v79, v80, v81, v82);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v83 = sub_1C4F00978();
  sub_1C442B738(v83, qword_1EDE2DE10);
  v133 = *(v49 + 16);
  v133(v22, v29 + v67, v153);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v84 = sub_1C4F00968();
  v85 = sub_1C4F01CB8();

  v150 = v29;
  v151 = v67;
  if (os_log_type_enabled(v84, v85))
  {
    swift_slowAlloc();
    v131 = v68;
    v152[0] = sub_1C441D7BC();
    *v67 = 136381187;
    v86 = v49;
    v87 = v149;
    v88 = sub_1C441D828(v149, v26, v152);
    sub_1C44587AC(v88);
    sub_1C4420B00();
    sub_1C44CD430(v89, v90);
    v130 = v85;
    v91 = v63;
    v92 = sub_1C4F02858();
    v94 = v93;
    v132 = *(v86 + 8);
    v132(v22, v153);
    v95 = sub_1C441D828(v92, v94, v152);
    v63 = v91;

    *(v67 + 14) = v95;
    sub_1C44A18E0();
    _os_log_impl(&dword_1C43F8000, v84, v130, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v67, 0x1Cu);
    swift_arrayDestroy();
    v68 = v131;
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v132 = *(v49 + 8);
    v132(v22, v153);
    v87 = v149;
  }

  v96 = *v68;
  v97 = v68[1];
  v152[0] = v87;
  v152[1] = v26;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4466E38();

  sub_1C4F01178();
  sub_1C4F01148();
  v99 = v98;
  (*(v147 + 8))(v146, v148);
  if (v99 >> 60 == 15)
  {
    v100 = v68;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v101 = sub_1C4F00968();
    v102 = sub_1C4F01CD8();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v152[0] = v104;
      v105 = sub_1C4475D00(4.845e-34);

      *(v103 + 4) = v105;
      sub_1C4403218(&dword_1C43F8000, v106, v107, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C440962C(v104);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    sub_1C45CF650();
    v121 = sub_1C43FFB2C();
    sub_1C442A7E4(v121, v122);
    sub_1C4420C3C(v150 + v137, &qword_1EC0B9A08, &unk_1C4F107B0);
    v132(v150 + v151, v153);
    sub_1C43FE2E8();
    sub_1C4DCDDF0(v100, v123);
    (*(*(v63 - 8) + 8))(v150 + v134, v63);
    v124 = sub_1C4429108(&a15);
    sub_1C4420C3C(v124, v125, v126);
    v127 = sub_1C4429108(&a14);
    sub_1C4420C3C(v127, v128, v129);
  }

  else
  {

    sub_1C4425670();
    sub_1C44CD430(v108, v109);
    sub_1C44158DC();
    sub_1C4F00DB8();
    v110 = sub_1C440DE18();
    sub_1C44344B8(v110, v111);
    v112 = sub_1C440DE18();
    sub_1C4498FD8(v112, v113);
    v114 = sub_1C440DE18();
    sub_1C441DFEC(v114, v115);
    sub_1C44158DC();
    sub_1C4F00DA8();
    v116 = sub_1C4416968();
    v117(v116, v143);
    v133(v138, v150 + v151, v153);
    (*(v144 + 16))(v141, v142, v145);
    sub_1C4EFF028();
    v118 = sub_1C440DE18();
    sub_1C441DFEC(v118, v119);
    (*(v144 + 8))(v142, v145);
    v120 = *(v139 + 32);
    v120(v135, v136, v140);
    v120(v150, v135, v140);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4DC23D4(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for INGroupStructs.GroupOfHumans(v6);
  v8 = *(v7 + 40);
  sub_1C441E0D8(v7, v9, &qword_1EC0BFA50, &qword_1C4F3BA60);
  v10 = type metadata accessor for INGroupStructs.GroupRelationshipType(0);
  if (sub_1C446250C(v10))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BFA50, &qword_1C4F3BA60);
  }

  sub_1C4EFEAB8();
  sub_1C4420C3C(a1, &qword_1EC0BFA50, &qword_1C4F3BA60);
  v12 = sub_1C4EFEEF8();
  v13 = sub_1C440CBF4(v12);
  return sub_1C445BAB4(v13, v14, &qword_1EC0B9A08, &unk_1C4F107B0);
}

void sub_1C4DC24C4()
{
  sub_1C43FE96C();
  v113 = v3;
  v111 = v4;
  v6 = v5;
  v7 = sub_1C4F00DD8();
  v8 = sub_1C43FCDF8(v7);
  v107 = v9;
  v108 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD2D8();
  v105 = v12;
  sub_1C43FBE44();
  v13 = sub_1C4F00DC8();
  v14 = sub_1C43FCDF8(v13);
  v109 = v15;
  v110 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBFDC();
  v104 = v18;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FD230();
  v106 = v20;
  sub_1C43FBE44();
  v21 = sub_1C4F01188();
  v22 = sub_1C43FCDF8(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FD2D8();
  sub_1C43FBE44();
  v116 = sub_1C4EFD548();
  v25 = sub_1C43FCDF8(v116);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBFDC();
  v101 = v30;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C441D15C();
  v32 = sub_1C4EFF0C8();
  v33 = sub_1C43FCDF8(v32);
  v102 = v34;
  v103 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FD230();
  v39 = sub_1C43FD2C8(v38);
  v40 = type metadata accessor for INGroupStructs.Software(v39);
  v41 = sub_1C44753F0(v40);
  v100 = v1;
  sub_1C43FCF64();
  sub_1C440BAA8(v42, v43, v44, v41);
  v45 = v0[6];
  sub_1C4EFD538();
  v114 = v6;
  v46 = (v6 + v0[7]);
  if (qword_1EDDFD130 != -1)
  {
    sub_1C44123B8();
  }

  v47 = type metadata accessor for Source();
  sub_1C442B738(v47, qword_1EDDFD138);
  sub_1C441AC88();
  sub_1C448D410(v48, v46, v49);
  v97 = v0[8];
  sub_1C4EFE778();
  v50 = (v6 + v0[9]);
  *v50 = 0;
  v50[1] = 0;
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v51 = sub_1C4F00978();
  sub_1C442B738(v51, qword_1EDE2DE10);
  v96 = *(v27 + 16);
  v96(v2, v6 + v45, v116);
  v52 = v113;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v53 = sub_1C4F00968();
  v54 = sub_1C4F01CB8();

  v112 = v45;
  if (os_log_type_enabled(v53, v54))
  {
    swift_slowAlloc();
    v94 = v46;
    v115[0] = sub_1C441D7BC();
    *v45 = 136381187;
    v55 = v2;
    v56 = v27;
    v57 = v111;
    v58 = sub_1C441D828(v111, v113, v115);
    sub_1C44587AC(v58);
    sub_1C4420B00();
    sub_1C44CD430(v59, v60);
    v61 = sub_1C4F02858();
    v62 = v56;
    v64 = v63;
    v95 = *(v62 + 8);
    v95(v55, v116);
    v65 = sub_1C441D828(v61, v64, v115);
    v52 = v113;

    *(v45 + 14) = v65;
    sub_1C44A18E0();
    _os_log_impl(&dword_1C43F8000, v53, v54, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v45, 0x1Cu);
    swift_arrayDestroy();
    v46 = v94;
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v95 = *(v27 + 8);
    v95(v2, v116);
    v57 = v111;
  }

  v66 = *v46;
  v67 = v46[1];
  v115[0] = v57;
  v115[1] = v52;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4466E38();

  sub_1C4F01178();
  sub_1C4F01148();
  v69 = v68;
  v70 = sub_1C44018C0();
  v71(v70);
  if (v69 >> 60 == 15)
  {
    v72 = v46;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v73 = sub_1C4F00968();
    v74 = sub_1C4F01CD8();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v115[0] = v76;
      v77 = sub_1C4475D00(4.845e-34);

      *(v75 + 4) = v77;
      sub_1C4403218(&dword_1C43F8000, v78, v79, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C440962C(v76);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    sub_1C45CF650();
    v91 = sub_1C43FFB2C();
    sub_1C442A7E4(v91, v92);
    sub_1C4420C3C(v114 + v100, &qword_1EC0B9A08, &unk_1C4F107B0);
    v95(v114 + v112, v116);
    sub_1C43FE2E8();
    sub_1C4DCDDF0(v72, v93);
    (*(*(v41 - 8) + 8))(v114 + v97, v41);
  }

  else
  {

    sub_1C4425670();
    sub_1C44CD430(v80, v81);
    sub_1C44158DC();
    sub_1C4F00DB8();
    v82 = sub_1C440DE18();
    sub_1C44344B8(v82, v83);
    v84 = sub_1C440DE18();
    sub_1C4498FD8(v84, v85);
    v86 = sub_1C440DE18();
    sub_1C441DFEC(v86, v87);
    sub_1C44158DC();
    sub_1C4F00DA8();
    (*(v107 + 8))(v105, v108);
    v96(v101, v114 + v112, v116);
    (*(v109 + 16))(v104, v106, v110);
    sub_1C44158DC();
    sub_1C4EFF028();
    v88 = sub_1C440DE18();
    sub_1C441DFEC(v88, v89);
    (*(v109 + 8))(v106, v110);
    v90 = *(v102 + 32);
    v90(v98, v99, v103);
    v90(v114, v98, v103);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4DC2D38(uint64_t a1)
{
  v5 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C44042B0();
  v10 = v2 + *(type metadata accessor for INGroupStructs.SoftwareRelationshipType(v9) + 52);
  sub_1C44D7768(a1, v10, &qword_1EC0BFA48, &unk_1C4F74980);
  v11 = type metadata accessor for INGroupStructs.Software(0);
  if (sub_1C4457A10(v11))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BFA48, &unk_1C4F74980);
  }

  sub_1C4EFE958();
  sub_1C4420C3C(a1, &qword_1EC0BFA48, &unk_1C4F74980);
  v13 = sub_1C4EFEEF8();
  sub_1C440CBF4(v13);
  return sub_1C444088C(v1, v10 + *(v3 + 20), &qword_1EC0B9A08, &unk_1C4F107B0);
}

uint64_t sub_1C4DC2E48(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for INGroupStructs.GroupOfHumans(v6);
  v8 = *(v7 + 44);
  sub_1C441E0D8(v7, v9, &qword_1EC0BFA40, &unk_1C4F74970);
  v10 = type metadata accessor for INGroupStructs.SoftwareRelationshipType(0);
  if (sub_1C446250C(v10))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BFA40, &unk_1C4F74970);
  }

  sub_1C4EFE438();
  sub_1C4420C3C(a1, &qword_1EC0BFA40, &unk_1C4F74970);
  v12 = sub_1C4EFEEF8();
  v13 = sub_1C440CBF4(v12);
  return sub_1C445BAB4(v13, v14, &qword_1EC0B9A08, &unk_1C4F107B0);
}

void sub_1C4DC2F38()
{
  sub_1C43FE628();
  v3 = v1;
  v5 = v4;
  v145 = v6;
  v8 = v7;
  v9 = sub_1C456902C(&qword_1EC0BFA40, &unk_1C4F74970);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBC74();
  v143 = v13;
  v14 = sub_1C43FBE44();
  v15 = type metadata accessor for INGroupStructs.SoftwareRelationshipType(v14);
  v16 = sub_1C43FBCE0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD2D8();
  v141 = v19;
  v20 = sub_1C456902C(&qword_1EC0BFA50, &qword_1C4F3BA60);
  sub_1C43FBD18(v20);
  v22 = *(v21 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v130 - v24;
  v142 = type metadata accessor for INGroupStructs.GroupRelationshipType(0);
  v26 = sub_1C43FBCE0(v142);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FD2D8();
  v137 = v29;
  v30 = sub_1C43FBE44();
  v31 = type metadata accessor for EntityTriple(v30);
  v139 = sub_1C43FCDF8(v31);
  v140 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v139);
  sub_1C43FBFDC();
  v138 = v35;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C440D100();
  v144 = *v5;
  v37 = v0;
  v148 = MEMORY[0x1E69E7CC0];
  v38 = type metadata accessor for INGroupStructs.GroupOfHumans(0);
  v39 = (v37 + v38[9]);
  v40 = v39[1];
  if (v40)
  {
    v41 = *v39;
    v42 = HIBYTE(v40) & 0xF;
    if ((v40 & 0x2000000000000000) == 0)
    {
      v42 = v41 & 0xFFFFFFFFFFFFLL;
    }

    if (v42)
    {
      v135 = v1;
      v136 = v15;
      v131 = v41;
      v43 = sub_1C4EFF0C8();
      sub_1C43FCE50(v43);
      (*(v44 + 16))(v2, v37);
      v45 = v37;
      v134 = v8;
      v46 = v145;
      v47 = v38[8];
      v48 = v139;
      v49 = *(v139 + 20);
      v50 = sub_1C4EFEEF8();
      sub_1C43FCE50(v50);
      (*(v51 + 16))(v2 + v49, v45 + v47);
      v132 = v38;
      v133 = v45;
      v52 = v38[7];
      v53 = v48[9];
      sub_1C441AC88();
      sub_1C448D410(v45 + v54, v2 + v55, v56);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v58 = v57;
      v59 = v2 + v48[6];
      sub_1C4EFF888();
      v60 = v2 + v48[7];
      sub_1C4EFEC38();
      v61 = (v2 + v48[8]);
      *v61 = v131;
      v61[1] = v40;
      v62 = (v2 + v48[10]);
      *v62 = v134;
      v62[1] = v46;
      *(v2 + v48[11]) = v58;
      *(v2 + v48[12]) = v144;
      v63 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v63, v64, v65, MEMORY[0x1E69E7CC0]);
      v67 = v66;
      v69 = *(v66 + 16);
      v68 = *(v66 + 24);
      if (v69 >= v68 >> 1)
      {
        v119 = sub_1C43FCFE8(v68);
        sub_1C44C9240(v119, v69 + 1, 1, v67);
        v67 = v120;
      }

      *(v67 + 16) = v69 + 1;
      sub_1C43FBF6C();
      v71 = *(v70 + 72);
      sub_1C44083D4();
      sub_1C44DD9B4(v2, v72, v73);
      v148 = v67;
      v8 = v134;
      v3 = v135;
      v38 = v132;
      v37 = v133;
      v15 = v136;
    }
  }

  sub_1C445FFA8(v37 + v38[10], v25, &qword_1EC0BFA50, &qword_1C4F3BA60);
  sub_1C440175C(v25, 1, v142);
  v74 = v144;
  v75 = v143;
  if (v76)
  {
    sub_1C4420C3C(v25, &qword_1EC0BFA50, &qword_1C4F3BA60);
  }

  else
  {
    v136 = v15;
    v77 = v25;
    v78 = v137;
    sub_1C44DD9B4(v77, v137, type metadata accessor for INGroupStructs.GroupRelationshipType);
    v146 = v74;
    sub_1C448862C();
    sub_1C4DCBD88();
    v3 = v1;
    if (v1)
    {
      sub_1C44401EC();
      sub_1C4DCDDF0(v78, v80);
LABEL_19:

      goto LABEL_27;
    }

    sub_1C49D3614(v79);
    sub_1C44401EC();
    sub_1C4DCDDF0(v78, v81);
    v15 = v136;
  }

  sub_1C445FFA8(v37 + v38[11], v75, &qword_1EC0BFA40, &unk_1C4F74970);
  sub_1C440175C(v75, 1, v15);
  v82 = v141;
  if (v76)
  {
    v83 = v8;
    sub_1C4420C3C(v75, &qword_1EC0BFA40, &unk_1C4F74970);
  }

  else
  {
    sub_1C4430800();
    sub_1C44DD9B4(v75, v82, v84);
    v147 = v74;
    sub_1C448862C();
    sub_1C4DC6244();
    v3 = v1;
    if (v1)
    {
      sub_1C4432FA8();
      sub_1C4DCDDF0(v82, v86);
      goto LABEL_19;
    }

    v83 = v8;
    sub_1C49D3614(v85);
    sub_1C4432FA8();
    sub_1C4DCDDF0(v82, v87);
  }

  v88 = v148;
  if (*(v148 + 16))
  {
    v135 = v3;
    v89 = sub_1C4EFF0C8();
    sub_1C43FCE50(v89);
    v91 = v138;
    (*(v90 + 16))(v138, v37);
    v92 = v139;
    v93 = v91 + *(v139 + 20);
    sub_1C4EFEBB8();
    v94 = v38;
    v95 = v37 + v38[6];
    v96 = sub_1C4EFD2F8();
    v98 = v97;
    v99 = v94[7];
    v100 = v92[9];
    sub_1C441AC88();
    sub_1C448D410(v37 + v101, v91 + v102, v103);
    sub_1C4EF9AE8();
    v105 = v104;
    v106 = v91 + v92[6];
    sub_1C4EFF888();
    v107 = v91 + v92[7];
    sub_1C4EFEC38();
    v108 = (v91 + v92[8]);
    *v108 = v96;
    v108[1] = v98;
    v109 = (v91 + v92[10]);
    v110 = v145;
    *v109 = v83;
    v109[1] = v110;
    *(v91 + v92[11]) = v105;
    *(v91 + v92[12]) = v74;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v121 = *(v88 + 16);
      v122 = sub_1C43FCEC0();
      sub_1C44C9240(v122, v123, v124, v88);
      v88 = v125;
    }

    v112 = *(v88 + 16);
    v111 = *(v88 + 24);
    sub_1C44019A4();
    if (v114)
    {
      v126 = sub_1C43FFD98(v113);
      sub_1C44C9240(v126, v127, v128, v88);
      v88 = v129;
    }

    *(v88 + 16) = v96;
    sub_1C43FBF6C();
    v116 = *(v115 + 72);
    sub_1C44083D4();
    sub_1C44DD9B4(v138, v117, v118);
  }

LABEL_27:
  sub_1C44109F8();
}

void sub_1C4DC35D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v155 = v26;
  v28 = v27;
  v29 = sub_1C4F00DD8();
  v30 = sub_1C43FCDF8(v29);
  v150 = v31;
  v151 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FD2D8();
  v148 = v34;
  sub_1C43FBE44();
  v35 = sub_1C4F00DC8();
  v36 = sub_1C43FCDF8(v35);
  v152 = v37;
  v153 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBFDC();
  v147 = v40;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FD230();
  v149 = v42;
  sub_1C43FBE44();
  v43 = sub_1C4F01188();
  v44 = sub_1C43FCDF8(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FD2D8();
  sub_1C43FBE44();
  v47 = sub_1C4EFD548();
  v48 = sub_1C43FCDF8(v47);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBFDC();
  v143 = v53;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C440D100();
  v55 = sub_1C4EFF0C8();
  v56 = sub_1C43FCDF8(v55);
  v144 = v57;
  v145 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C43FD230();
  v62 = sub_1C43FD2C8(v61);
  v63 = type metadata accessor for INGroupStructs.Person(v62);
  sub_1C44753F0(v63);
  sub_1C43FCF64();
  v146 = v64;
  sub_1C440BAA8(v65, v66, v67, v64);
  v68 = v20[6];
  sub_1C4EFD4C8();
  v69 = (v28 + v20[7]);
  if (qword_1EDDFD130 != -1)
  {
    sub_1C44123B8();
  }

  v70 = type metadata accessor for Source();
  sub_1C442B738(v70, qword_1EDDFD138);
  sub_1C441AC88();
  sub_1C448D410(v71, v69, v72);
  v140 = v20[8];
  sub_1C4EFE588();
  v73 = (v28 + v20[9]);
  *v73 = 0;
  v73[1] = 0;
  v139 = v20[10];
  sub_1C4EFEBF8();
  v74 = (v28 + v20[11]);
  *v74 = 0;
  v74[1] = 0;
  v75 = v20[12];
  type metadata accessor for INGroupStructs.IdentifierRelationshipType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v76, v77, v78, v79);
  v80 = v20[13];
  type metadata accessor for INGroupStructs.SoftwareRelationshipType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v81, v82, v83, v84);
  *(v28 + v20[14]) = 0;
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v85 = sub_1C4F00978();
  sub_1C442B738(v85, qword_1EDE2DE10);
  v154 = v28;
  v138 = *(v50 + 16);
  v138(v21, v28 + v68, v47);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v86 = sub_1C4F00968();
  v87 = sub_1C4F01CB8();

  v159 = v47;
  v156 = v68;
  if (os_log_type_enabled(v86, v87))
  {
    swift_slowAlloc();
    v157 = sub_1C441D7BC();
    *v68 = 136381187;
    v88 = sub_1C441D828(v155, v25, &v157);
    sub_1C44587AC(v88);
    sub_1C4420B00();
    sub_1C44CD430(v89, v90);
    sub_1C4F02858();
    v91 = *(v50 + 8);
    v91(v21, v47);
    v92 = sub_1C440A9B8();
    v95 = sub_1C441D828(v92, v93, v94);

    *(v68 + 14) = v95;
    v96 = v155;
    sub_1C44A18E0();
    _os_log_impl(&dword_1C43F8000, v86, v87, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v68, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v91 = *(v50 + 8);
    v91(v21, v47);
    v96 = v155;
  }

  v97 = *v69;
  v98 = v69[1];
  v157 = v96;
  v158 = v25;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4466E38();

  v99 = v157;
  v100 = v158;
  sub_1C4F01178();
  sub_1C4F01148();
  v102 = v101;
  v103 = sub_1C44018C0();
  v104(v103);
  if (v102 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v105 = sub_1C4F00968();
    v106 = sub_1C4F01CD8();

    if (os_log_type_enabled(v105, v106))
    {
      v107 = v69;
      v108 = swift_slowAlloc();
      v109 = v91;
      v110 = swift_slowAlloc();
      v157 = v110;
      *v108 = 136380675;
      v111 = sub_1C441D828(v99, v100, &v157);

      *(v108 + 4) = v111;
      _os_log_impl(&dword_1C43F8000, v105, v106, "Source: failed to encode identifier as UTF8 data: %{private}s", v108, 0xCu);
      sub_1C440962C(v110);
      v91 = v109;
      sub_1C43FBE2C();
      v69 = v107;
      sub_1C43FBE2C();
    }

    else
    {
    }

    sub_1C45CF650();
    v123 = sub_1C43FFB2C();
    sub_1C442A7E4(v123, v124);
    v125 = sub_1C4429108(&a18);
    sub_1C4420C3C(v125, v126, v127);
    v91(v154 + v156, v159);
    sub_1C43FE2E8();
    sub_1C4DCDDF0(v69, v128);
    v129 = *(*(v146 - 8) + 8);
    v130 = sub_1C4429108(&a15);
    v129(v130, v146);
    v131 = sub_1C4429108(&a14);
    v129(v131, v146);
    v132 = sub_1C4429108(&a13);
    sub_1C4420C3C(v132, v133, v134);
    v135 = sub_1C4429108(&a12);
    sub_1C4420C3C(v135, v136, v137);
  }

  else
  {

    sub_1C4425670();
    sub_1C44CD430(v112, v113);
    sub_1C44158DC();
    sub_1C4F00DB8();
    v114 = sub_1C4404DC8();
    sub_1C44344B8(v114, v115);
    v116 = sub_1C4404DC8();
    sub_1C4498FD8(v116, v117);
    v118 = sub_1C4404DC8();
    sub_1C441DFEC(v118, v119);
    sub_1C44158DC();
    sub_1C4F00DA8();
    (*(v150 + 8))(v148, v151);
    v138(v143, v154 + v156, v47);
    (*(v152 + 16))(v147, v149, v153);
    sub_1C4EFF028();
    v120 = sub_1C4404DC8();
    sub_1C441DFEC(v120, v121);
    (*(v152 + 8))(v149, v153);
    v122 = *(v144 + 32);
    v122(v141, v142, v145);
    v122(v154, v141, v145);
  }

  sub_1C44103B4();
  sub_1C43FBC80();
}

uint64_t sub_1C4DC3EF4(uint64_t a1)
{
  v5 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1C44042B0();
  v10 = v2 + *(type metadata accessor for INGroupStructs.AddressRelationshipType(v9) + 60);
  sub_1C44D7768(a1, v10, &qword_1EC0BFA48, &unk_1C4F74980);
  v11 = type metadata accessor for INGroupStructs.Software(0);
  if (sub_1C4457A10(v11))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BFA48, &unk_1C4F74980);
  }

  sub_1C4EFE958();
  sub_1C4420C3C(a1, &qword_1EC0BFA48, &unk_1C4F74980);
  v13 = sub_1C4EFEEF8();
  sub_1C440CBF4(v13);
  return sub_1C444088C(v1, v10 + *(v3 + 20), &qword_1EC0B9A08, &unk_1C4F107B0);
}

uint64_t *(*sub_1C4DC4004(void *a1))(uint64_t *result, char a2)
{
  *a1 = v1;
  v2 = *(type metadata accessor for INGroupStructs.Person(0) + 56);
  return sub_1C4DC4050;
}

uint64_t *sub_1C4DC4050(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *result;
    return sub_1C4DC9D34();
  }

  return result;
}

uint64_t sub_1C4DC407C(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for INGroupStructs.Person(v6);
  v8 = *(v7 + 48);
  sub_1C441E0D8(v7, v9, &qword_1EC0BFA58, &unk_1C4F3BA68);
  v10 = type metadata accessor for INGroupStructs.IdentifierRelationshipType(0);
  if (sub_1C446250C(v10))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BFA58, &unk_1C4F3BA68);
  }

  sub_1C4EFE308();
  sub_1C4420C3C(a1, &qword_1EC0BFA58, &unk_1C4F3BA68);
  v12 = sub_1C4EFEEF8();
  v13 = sub_1C440CBF4(v12);
  return sub_1C445BAB4(v13, v14, &qword_1EC0B9A08, &unk_1C4F107B0);
}

uint64_t sub_1C4DC416C(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for INGroupStructs.Person(v6);
  v8 = *(v7 + 52);
  sub_1C441E0D8(v7, v9, &qword_1EC0BFA40, &unk_1C4F74970);
  v10 = type metadata accessor for INGroupStructs.SoftwareRelationshipType(0);
  if (sub_1C446250C(v10))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BFA40, &unk_1C4F74970);
  }

  sub_1C4EFE438();
  sub_1C4420C3C(a1, &qword_1EC0BFA40, &unk_1C4F74970);
  v12 = sub_1C4EFEEF8();
  v13 = sub_1C440CBF4(v12);
  return sub_1C445BAB4(v13, v14, &qword_1EC0B9A08, &unk_1C4F107B0);
}

void sub_1C4DC425C()
{
  sub_1C43FE96C();
  v3 = v0;
  v156 = v4;
  v152 = v5;
  v154 = v6;
  v155 = v7;
  v153 = type metadata accessor for EntityTriple(0);
  v8 = sub_1C43FCDF8(v153);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBFDC();
  v148 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBF38();
  v147 = v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD230();
  v146 = v15;
  sub_1C43FBE44();
  v150 = sub_1C4EFD548();
  v16 = sub_1C43FCDF8(v150);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  sub_1C4460930();
  v159 = sub_1C4EFF8A8();
  v21 = sub_1C43FCDF8(v159);
  v158 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v27 = v26 - v25;
  v28 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v28);
  v30 = *(v29 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C441B2EC();
  v32 = sub_1C4EFEEF8();
  v33 = sub_1C43FCDF8(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBCC4();
  v40 = v39 - v38;
  v157 = *v156;
  v42 = v41;
  sub_1C445FFA8(v3, v1, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v1, 1, v42);
  if (v43)
  {
    sub_1C4420C3C(v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    v44 = sub_1C43FFB2C();
    sub_1C4414040(v44, v45);
  }

  else
  {
    v46 = *(v35 + 32);
    v47 = sub_1C440A9B8();
    v48(v47);
    v49 = type metadata accessor for INGroupStructs.IdentifierRelationshipType(0);
    (*(v18 + 16))(v2, v3 + *(v49 + 20), v150);
    sub_1C4EFF838();
    v149 = v3;
    v151 = v49;
    v50 = (v3 + *(v49 + 32));
    v51 = v50[1];
    v52 = v27;
    v145 = v27;
    v53 = v35;
    if (!v51)
    {
      goto LABEL_11;
    }

    v54 = *v50;
    v55 = HIBYTE(v51) & 0xF;
    if ((v51 & 0x2000000000000000) == 0)
    {
      v55 = v54 & 0xFFFFFFFFFFFFLL;
    }

    if (v55)
    {
      v56 = sub_1C4EFF0C8();
      sub_1C43FCE50(v56);
      (*(v57 + 16))(v146, v152);
      v58 = *(v35 + 16);
      v58(v146 + v153[5], v40, v42);
      (*(v158 + 16))(v146 + v153[6], v52, v159);
      v58(v146 + v153[7], v3 + v151[7], v42);
      v59 = v151[6];
      v60 = v153[9];
      sub_1C441AC88();
      sub_1C448D410(v3 + v61, v146 + v62, v63);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v64 = (v146 + v153[8]);
      *v64 = v54;
      v64[1] = v51;
      sub_1C443E23C(v155, (v146 + v153[10]), v65);
      *(v146 + v66) = v157;
      v67 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v67, v68, v69, MEMORY[0x1E69E7CC0]);
      v71 = v70;
      v73 = *(v70 + 16);
      v72 = *(v70 + 24);
      if (v73 >= v72 >> 1)
      {
        v136 = sub_1C43FCFE8(v72);
        sub_1C44C9240(v136, v73 + 1, 1, v71);
        v71 = v137;
      }

      *(v71 + 16) = v73 + 1;
      sub_1C43FBF6C();
      v75 = *(v74 + 72);
      sub_1C44083D4();
      sub_1C44DD9B4(v146, v76, v77);
      v52 = v145;
    }

    else
    {
LABEL_11:
      v71 = MEMORY[0x1E69E7CC0];
    }

    v78 = (v3 + v151[10]);
    v79 = v78[1];
    if (!v79)
    {
      goto LABEL_21;
    }

    v80 = *v78;
    v81 = HIBYTE(v79) & 0xF;
    if ((v79 & 0x2000000000000000) == 0)
    {
      v81 = v80 & 0xFFFFFFFFFFFFLL;
    }

    if (v81)
    {
      v82 = sub_1C4EFF0C8();
      sub_1C43FCE50(v82);
      (*(v83 + 16))(v147, v152);
      v84 = *(v53 + 16);
      v84(v147 + v153[5]);
      (*(v158 + 16))(v147 + v153[6], v52, v159);
      (v84)(v147 + v153[7], v149 + v151[9], v42);
      v3 = v149;
      v85 = v151[6];
      v86 = v153[9];
      sub_1C441AC88();
      sub_1C448D410(v149 + v87, v147 + v88, v89);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v90 = (v147 + v153[8]);
      *v90 = v80;
      v90[1] = v79;
      v91 = (v147 + v153[10]);
      *v91 = v154;
      v91[1] = v155;
      *(v147 + v153[11]) = v92;
      *(v147 + v153[12]) = v157;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v138 = *(v71 + 16);
        v139 = sub_1C43FCEC0();
        sub_1C44C9240(v139, v140, v141, v71);
        v71 = v142;
      }

      v94 = *(v71 + 16);
      v93 = *(v71 + 24);
      v95 = v148;
      if (v94 >= v93 >> 1)
      {
        v143 = sub_1C43FCFE8(v93);
        sub_1C44C9240(v143, v94 + 1, 1, v71);
        v71 = v144;
      }

      *(v71 + 16) = v94 + 1;
      sub_1C43FBF6C();
      v97 = *(v96 + 72);
      sub_1C44083D4();
      sub_1C44DD9B4(v147, v98, v99);
      v52 = v145;
    }

    else
    {
LABEL_21:
      v95 = v148;
    }

    if (*(v71 + 16))
    {
      v100 = sub_1C4EFF0C8();
      sub_1C43FCE50(v100);
      (*(v101 + 16))(v95, v152);
      v102 = v40;
      (*(v53 + 16))(v95 + v153[5], v40, v42);
      (*(v158 + 16))(v95 + v153[6], v52, v159);
      v103 = v95 + v153[7];
      sub_1C4EFEBB8();
      v104 = sub_1C4EFD2F8();
      v106 = v105;
      v107 = v151[6];
      v108 = v153[9];
      sub_1C441AC88();
      sub_1C448D410(v3 + v109, v95 + v110, v111);
      sub_1C4EF9AE8();
      v112 = (v95 + v153[8]);
      *v112 = v104;
      v112[1] = v106;
      v113 = (v95 + v153[10]);
      *v113 = v154;
      v113[1] = v155;
      *(v95 + v153[11]) = v114;
      *(v95 + v153[12]) = v157;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v127 = *(v71 + 16);
        v128 = sub_1C43FCEC0();
        sub_1C44C9240(v128, v129, v130, v71);
        v71 = v131;
      }

      v116 = *(v71 + 16);
      v115 = *(v71 + 24);
      sub_1C44019A4();
      if (v118)
      {
        v132 = sub_1C43FFD98(v117);
        sub_1C44C9240(v132, v133, v134, v71);
        v71 = v135;
      }

      v119 = sub_1C43FE5EC();
      v120(v119, v159);
      (*(v53 + 8))(v102, v42);
      *(v71 + 16) = v104;
      sub_1C43FBF6C();
      v122 = *(v121 + 72);
      sub_1C44083D4();
      sub_1C44DD9B4(v95, v123, v124);
    }

    else
    {
      v125 = sub_1C43FE5EC();
      v126(v125, v159);
      (*(v53 + 8))(v40, v42);
    }
  }

  sub_1C43FBC80();
}

unint64_t sub_1C4DC4AC0(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
    case 6:
      result = 0x696669746E656469;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4DC4BA4()
{
  sub_1C43FE96C();
  sub_1C440EDD4();
  v1 = sub_1C456902C(&qword_1EC0C7880, &qword_1C4F74D58);
  sub_1C43FCDF8(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C4DCECB0();
  sub_1C440F61C();
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DB6C();
  sub_1C44CD430(v5, v6);
  sub_1C4402150();
  sub_1C4F02778();
  if (!v0)
  {
    v15 = type metadata accessor for INGroupStructs.IdentifierRelationshipType(0);
    v7 = v15[5];
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4420B00();
    sub_1C44CD430(v8, v9);
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v10 = v15[6];
    sub_1C4401FFC();
    type metadata accessor for Source();
    sub_1C440152C();
    sub_1C44CD430(v11, v12);
    sub_1C43FCB2C();
    sub_1C4F027E8();
    sub_1C4401958(v15);
    sub_1C4402150();
    sub_1C4F027E8();
    sub_1C4404338(v15[8]);
    sub_1C4402150();
    sub_1C4F02738();
    sub_1C44169F0(v15);
    sub_1C4402150();
    sub_1C4F027E8();
    sub_1C4404338(v15[10]);
    sub_1C4475B68();
    sub_1C4402150();
    sub_1C4F02738();
  }

  v13 = sub_1C440231C();
  v14(v13);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4DC4E20()
{
  sub_1C43FE96C();
  v3 = v2;
  v54 = v4;
  v5 = sub_1C4EFEEF8();
  v6 = sub_1C43FCDF8(v5);
  v56 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBFDC();
  v55 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD230();
  v57 = v12;
  v13 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBC74();
  v58 = v17;
  v18 = sub_1C456902C(&qword_1EC0C7870, &qword_1C4F74D50);
  v60 = sub_1C43FCDF8(v18);
  v20 = *(v19 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBC74();
  v22 = sub_1C43FBE44();
  v23 = type metadata accessor for INGroupStructs.IdentifierRelationshipType(v22);
  v24 = sub_1C43FBCE0(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBCC4();
  sub_1C44058BC();
  sub_1C43FCF64();
  v59 = v5;
  sub_1C440BAA8(v27, v28, v29, v5);
  v30 = v1 + v23[5];
  sub_1C4EFD258();
  v31 = v23[6];
  if (qword_1EDDFD130 != -1)
  {
    sub_1C44123B8();
  }

  v32 = type metadata accessor for Source();
  sub_1C442B738(v32, qword_1EDDFD138);
  sub_1C441AC88();
  sub_1C448D410(v33, v1 + v31, v34);
  v35 = v23[7];
  sub_1C4EFE558();
  v36 = (v1 + v23[8]);
  *v36 = 0;
  v36[1] = 0;
  v37 = v23[9];
  sub_1C4EFE658();
  v38 = (v1 + v23[10]);
  *v38 = 0;
  v38[1] = 0;
  v39 = v3[4];
  sub_1C4417F50(v3, v3[3]);
  sub_1C4DCECB0();
  sub_1C4F02BC8();
  if (!v0)
  {
    v53 = v36;
    sub_1C442DB6C();
    sub_1C44CD430(v40, v41);
    sub_1C44147D8();
    sub_1C4F02658();
    sub_1C444088C(v58, v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441405C();
    sub_1C44147D8();
    sub_1C4F026C8();
    v42 = *(v56 + 40);
    v42(v1 + v35, v57, v59);
    sub_1C4428F20();
    v43 = sub_1C4F02618();
    sub_1C44147E8(v43, v44, v53);
    sub_1C44147D8();
    sub_1C4F026C8();
    v42(v1 + v37, v55, v59);
    sub_1C4402044();
    v46 = sub_1C4F02618();
    v48 = v47;
    v49 = sub_1C4416968();
    v50(v49, v60);
    *v38 = v46;
    v38[1] = v48;
    v51 = sub_1C442A548();
    sub_1C448D410(v51, v54, v52);
  }

  sub_1C440962C(v3);
  sub_1C4416638();
  sub_1C4DCDDF0(v1, v45);
  sub_1C43FBC80();
}

uint64_t sub_1C4DC5298(uint64_t a1)
{
  v2 = sub_1C4DCECB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DC52D4(uint64_t a1)
{
  v2 = sub_1C4DCECB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4DC5358()
{
  sub_1C43FE628();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v94 = v7;
  v8 = type metadata accessor for EntityTriple(0);
  v9 = sub_1C43FCDF8(v8);
  v95 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBD08();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v90 - v17;
  v93 = *v4;
  v19 = type metadata accessor for INGroupStructs.Software(0);
  v20 = (v2 + v19[9]);
  v21 = v20[1];
  if (!v21)
  {
    goto LABEL_8;
  }

  v22 = *v20;
  v23 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v23 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    v91 = v22;
    v92 = v1;
    v24 = sub_1C4EFF0C8();
    sub_1C43FCE50(v24);
    (*(v25 + 16))(v18, v2);
    v26 = v6;
    v27 = v19[8];
    v28 = v8[5];
    v29 = sub_1C4EFEEF8();
    sub_1C43FCE50(v29);
    (*(v30 + 16))(&v18[v28], v2 + v27);
    v31 = v19[7];
    v32 = v8[9];
    sub_1C441AC88();
    sub_1C448D410(v2 + v33, &v18[v34], v35);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9AE8();
    v37 = v36;
    v38 = &v18[v8[6]];
    sub_1C4EFF888();
    v39 = &v18[v8[7]];
    sub_1C4EFEC38();
    v40 = &v18[v8[8]];
    *v40 = v91;
    *(v40 + 1) = v21;
    v41 = &v18[v8[10]];
    *v41 = v94;
    *(v41 + 1) = v26;
    *&v18[v8[11]] = v37;
    v18[v8[12]] = v93;
    v91 = v26;
    v42 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4401EC4(v42, v43, v44, MEMORY[0x1E69E7CC0]);
    v46 = v45;
    v48 = *(v45 + 16);
    v47 = *(v45 + 24);
    if (v48 >= v47 >> 1)
    {
      v88 = sub_1C43FCFE8(v47);
      sub_1C44C9240(v88, v48 + 1, 1, v46);
      v46 = v89;
    }

    *(v46 + 16) = v48 + 1;
    sub_1C43FBF6C();
    v50 = *(v49 + 72);
    sub_1C44083D4();
    sub_1C44DD9B4(v18, v51, v52);
    v6 = v91;
  }

  else
  {
LABEL_8:
    v46 = MEMORY[0x1E69E7CC0];
  }

  if (*(v46 + 16))
  {
    v53 = sub_1C4EFF0C8();
    sub_1C43FCE50(v53);
    (*(v54 + 16))(v15, v2);
    v55 = v15 + v8[5];
    sub_1C4EFEBB8();
    v56 = v2 + v19[6];
    v57 = sub_1C4EFD2F8();
    v59 = v58;
    v60 = v19[7];
    v61 = v8[9];
    sub_1C441AC88();
    sub_1C448D410(v2 + v62, v15 + v63, v64);
    sub_1C4EF9AE8();
    v66 = v65;
    v67 = v15 + v8[6];
    sub_1C4EFF888();
    v68 = v15 + v8[7];
    sub_1C4EFEC38();
    v69 = (v15 + v8[8]);
    *v69 = v57;
    v69[1] = v59;
    v70 = (v15 + v8[10]);
    *v70 = v94;
    v70[1] = v6;
    *(v15 + v8[11]) = v66;
    *(v15 + v8[12]) = v93;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v79 = *(v46 + 16);
      v80 = sub_1C43FCEC0();
      sub_1C44C9240(v80, v81, v82, v46);
      v46 = v83;
    }

    v72 = *(v46 + 16);
    v71 = *(v46 + 24);
    sub_1C44019A4();
    if (v74)
    {
      v84 = sub_1C43FFD98(v73);
      sub_1C44C9240(v84, v85, v86, v46);
      v46 = v87;
    }

    *(v46 + 16) = v57;
    sub_1C43FBF6C();
    v76 = *(v75 + 72);
    sub_1C44083D4();
    sub_1C44DD9B4(v15, v77, v78);
  }

  sub_1C440EE0C();
  sub_1C44109F8();
}

uint64_t sub_1C4DC56F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001ALL && 0x80000001C4FC8440 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000010 && 0x80000001C4FC8460 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C4F02938();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4DC58F0(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1C4DC59B8()
{
  sub_1C43FE96C();
  sub_1C440EDD4();
  v1 = sub_1C456902C(&qword_1EC0C7918, &qword_1C4F74DA8);
  sub_1C43FCDF8(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C4DCEF84();
  sub_1C440F61C();
  sub_1C441D6E4();
  sub_1C4EFF0C8();
  sub_1C4403C18();
  sub_1C44CD430(v5, v6);
  sub_1C43FE6CC();
  sub_1C43FCB2C();
  sub_1C4F027E8();
  if (!v0)
  {
    v7 = type metadata accessor for INGroupStructs.Software(0);
    v8 = v7[5];
    sub_1C440CE38();
    sub_1C4EFEEF8();
    sub_1C442DB6C();
    sub_1C44CD430(v9, v10);
    sub_1C44032B0();
    sub_1C4F02778();
    v11 = v7[6];
    sub_1C4401FFC();
    sub_1C4EFD548();
    sub_1C4420B00();
    sub_1C44CD430(v12, v13);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v14 = v7[7];
    type metadata accessor for Source();
    sub_1C440152C();
    sub_1C44CD430(v15, v16);
    sub_1C444C0BC();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v17 = v7[8];
    sub_1C4402150();
    sub_1C4F027E8();
    sub_1C4404338(v7[9]);
    sub_1C4402150();
    sub_1C4F02738();
  }

  v18 = sub_1C440231C();
  v19(v18);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4DC5C24()
{
  sub_1C43FE96C();
  v3 = v2;
  v57 = v4;
  v5 = sub_1C4EFEEF8();
  v6 = sub_1C43FCDF8(v5);
  v66 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FD2D8();
  v58 = v10;
  v11 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBC74();
  v59 = v15;
  sub_1C43FBE44();
  v61 = sub_1C4EFF0C8();
  v16 = sub_1C43FCDF8(v61);
  v60 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  v62 = sub_1C456902C(&qword_1EC0C7908, &qword_1C4F74DA0);
  sub_1C43FCDF8(v62);
  v24 = *(v23 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v25);
  v26 = sub_1C4460930();
  v27 = type metadata accessor for INGroupStructs.Software(v26);
  v28 = sub_1C43FBCE0(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v67 = *(v31 + 20);
  sub_1C43FCF64();
  v65 = v5;
  sub_1C440BAA8(v32, v33, v34, v5);
  v63 = v27[6];
  sub_1C4EFD538();
  v35 = v27[7];
  if (qword_1EDDFD130 != -1)
  {
    sub_1C44123B8();
  }

  v36 = type metadata accessor for Source();
  sub_1C442B738(v36, qword_1EDDFD138);
  sub_1C441AC88();
  v64 = v35;
  sub_1C448D410(v37, v1 + v35, v38);
  v39 = v27[8];
  sub_1C4EFE778();
  v40 = v3[4];
  sub_1C4417F50(v3, v3[3]);
  sub_1C4DCEF84();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v3);
    sub_1C4420C3C(v1 + v67, &qword_1EC0B9A08, &unk_1C4F107B0);
    v43 = sub_1C4EFD548();
    sub_1C43FBCE0(v43);
    (*(v44 + 8))(v1 + v63);
    sub_1C43FE2E8();
    sub_1C4DCDDF0(v1 + v64, v45);
    (*(v66 + 8))(v1 + v39, v65);
  }

  else
  {
    sub_1C4403C18();
    sub_1C44CD430(v41, v42);
    sub_1C43FE6CC();
    sub_1C441B0B4();
    sub_1C4F026C8();
    (*(v60 + 32))(v1, v22, v61);
    sub_1C442DB6C();
    sub_1C44CD430(v46, v47);
    sub_1C441B0B4();
    sub_1C4F02658();
    sub_1C444088C(v59, v1 + v67, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441B0B4();
    sub_1C4F026C8();
    (*(v66 + 40))(v1 + v39, v58, v65);
    sub_1C441B0B4();
    v48 = sub_1C4F02618();
    v50 = v49;
    v51 = (v1 + v27[9]);
    v52 = sub_1C4424864();
    v53(v52);
    *v51 = v48;
    v51[1] = v50;
    v54 = sub_1C442A548();
    sub_1C448D410(v54, v57, v55);
    sub_1C440962C(v3);
    sub_1C440B944();
    sub_1C4DCDDF0(v1, v56);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4DC615C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4DC56F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4DC6184(uint64_t a1)
{
  v2 = sub_1C4DCEF84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4DC61C0(uint64_t a1)
{
  v2 = sub_1C4DCEF84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4DC6244()
{
  sub_1C43FE628();
  v274 = v0;
  v6 = v5;
  v266 = v7;
  v270 = v8;
  v271 = v9;
  v264 = sub_1C4EFF0C8();
  v10 = sub_1C43FCDF8(v264);
  v267 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD2D8();
  v249 = v14;
  v15 = sub_1C456902C(&qword_1EC0BFA48, &unk_1C4F74980);
  sub_1C43FBD18(v15);
  v17 = *(v16 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBC74();
  v256 = v19;
  v20 = sub_1C43FBE44();
  v259 = type metadata accessor for INGroupStructs.Software(v20);
  v21 = sub_1C43FBCE0(v259);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FD2D8();
  v25 = sub_1C43FD2C8(v24);
  v257 = type metadata accessor for EntityTriple(v25);
  v26 = sub_1C43FCDF8(v257);
  v265 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FD230();
  sub_1C43FD2C8(v34);
  v273 = sub_1C4EFD548();
  v35 = sub_1C43FCDF8(v273);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBCC4();
  sub_1C441B2EC();
  v272 = sub_1C4EFF8A8();
  v38 = sub_1C43FCDF8(v272);
  v268 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v244 - v43;
  v45 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v46 = sub_1C43FBD18(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C4402CA8();
  v50 = sub_1C4EFEEF8();
  v51 = sub_1C43FCDF8(v50);
  v53 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C440D100();
  v269 = *v6;
  v57 = v274;
  v59 = v58;
  sub_1C445FFA8(v274, v2, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v2, 1, v59);
  if (v60)
  {
    sub_1C4420C3C(v2, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    v61 = sub_1C43FFB2C();
    sub_1C4414040(v61, v62);
LABEL_36:
    sub_1C44103B4();
    sub_1C44109F8();
    return;
  }

  v63 = *(v53 + 32);
  v261 = v4;
  v262 = v59;
  sub_1C445BE6C(v53 + 32);
  v64();
  v65 = type metadata accessor for INGroupStructs.SoftwareRelationshipType(0);
  sub_1C4425834(v65);
  v66 = v57;
  v68(v3, v57 + v67, v273);
  v263 = v44;
  sub_1C4EFF838();
  v69 = MEMORY[0x1E69E7CC0];
  v276 = MEMORY[0x1E69E7CC0];
  v273 = v65;
  v70 = (v66 + v65[8]);
  v71 = v70[1];
  v72 = v66;
  v260 = v53;
  if (v71)
  {
    sub_1C44026DC(v70);
    v73 = v268;
    v74 = v257;
    if (v75)
    {
      v4 = v251;
      (*(v267 + 16))(v251, v266, v264);
      v76 = *(v53 + 16);
      (v76)(v4 + v74[5], v261, v262);
      v77 = sub_1C44417E0();
      v78(v77);
      v79 = v273;
      v80 = v74[7];
      sub_1C443E094(v273[7]);
      v76();
      v72 = v274;
      v81 = v79[6];
      v82 = v74[9];
      sub_1C441AC88();
      sub_1C448D410(v72 + v83, v4 + v84, v85);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v86 = (v4 + v74[8]);
      *v86 = v66;
      v86[1] = v71;
      v87 = (v4 + v74[10]);
      v88 = v271;
      *v87 = v270;
      v87[1] = v88;
      sub_1C4471D74(v89);
      v90 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v90, v91, v92, MEMORY[0x1E69E7CC0]);
      v69 = v93;
      v66 = *(v93 + 16);
      v94 = *(v93 + 24);
      sub_1C44019A4();
      if (v96)
      {
        v213 = sub_1C43FFD98(v95);
        sub_1C44C9240(v213, v214, v215, v69);
        v69 = v216;
      }

      *(v69 + 16) = v71;
      sub_1C43FBF6C();
      sub_1C445C2FC();
      sub_1C44083D4();
      sub_1C44DD9B4(v4, v97, v98);
      v276 = v69;
      v53 = v260;
    }
  }

  else
  {
    v73 = v268;
    v74 = v257;
  }

  v99 = (v72 + v273[10]);
  v100 = v99[1];
  if (v100)
  {
    sub_1C44026DC(v99);
    if (v101)
    {
      v102 = v73;
      v103 = v252;
      (*(v267 + 16))(v252, v266, v264);
      v104 = sub_1C44181C8();
      (v4)(v104);
      (*(v102 + 16))(v103 + v74[6], v263, v272);
      v105 = v273;
      v106 = v74[7];
      sub_1C443E094(v273[9]);
      v4();
      v72 = v274;
      v107 = v105[6];
      v108 = v74[9];
      sub_1C441AC88();
      sub_1C448D410(v72 + v109, v103 + v110, v111);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v112 = (v103 + v74[8]);
      *v112 = v66;
      v112[1] = v100;
      sub_1C444AECC(v113);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v217 = *(v69 + 16);
        v218 = sub_1C43FCEC0();
        sub_1C44C9240(v218, v219, v220, v69);
        v69 = v221;
      }

      v115 = *(v69 + 16);
      v114 = *(v69 + 24);
      sub_1C44019A4();
      v53 = v260;
      v73 = v268;
      if (v96)
      {
        v222 = sub_1C43FFD98(v116);
        sub_1C44C9240(v222, v223, v224, v69);
        v69 = v225;
      }

      *(v69 + 16) = v100;
      sub_1C43FBF6C();
      sub_1C445C2FC();
      sub_1C44083D4();
      sub_1C44DD9B4(v252, v117, v118);
      v276 = v69;
    }
  }

  v119 = (v72 + v273[12]);
  v120 = v119[1];
  if (v120)
  {
    sub_1C43FF988(v119);
    if (v122)
    {
      v123 = *(v267 + 16);
      v124 = v73;
      v125 = v253;
      v257 = v121;
      v123(v253, v266, v264);
      v126 = sub_1C44181C8();
      (v4)(v126);
      v127 = v273;
      (*(v124 + 16))(v125 + v74[6], v263, v272);
      v128 = v74[7];
      sub_1C443E094(v127[11]);
      v4();
      v72 = v274;
      v129 = v127[6];
      v130 = v74[9];
      sub_1C441AC88();
      sub_1C448D410(v72 + v131, v125 + v132, v133);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v134 = (v125 + v74[8]);
      *v134 = v257;
      v134[1] = v120;
      sub_1C444AECC(v135);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v226 = *(v69 + 16);
        v227 = sub_1C43FCEC0();
        sub_1C44C9240(v227, v228, v229, v69);
        v69 = v230;
      }

      v137 = *(v69 + 16);
      v136 = *(v69 + 24);
      sub_1C44019A4();
      v53 = v260;
      v73 = v268;
      if (v96)
      {
        v231 = sub_1C43FFD98(v138);
        sub_1C44C9240(v231, v232, v233, v69);
        v69 = v234;
      }

      *(v69 + 16) = v120;
      sub_1C43FBF6C();
      sub_1C445C2FC();
      sub_1C44083D4();
      sub_1C44DD9B4(v253, v139, v140);
      v276 = v69;
    }
  }

  v141 = v256;
  sub_1C445FFA8(v72 + v273[13], v256, &qword_1EC0BFA48, &unk_1C4F74980);
  v142 = sub_1C440EF74();
  sub_1C440175C(v142, v143, v259);
  v144 = v261;
  if (v60)
  {
    sub_1C4420C3C(v141, &qword_1EC0BFA48, &unk_1C4F74980);
LABEL_27:
    v146 = v270;
    v145 = v271;
    v147 = v272;
LABEL_28:
    if (*(v69 + 16))
    {
      v148 = v255;
      (*(v267 + 16))(v255, v266, v264);
      (*(v260 + 16))(v148 + v74[5], v144, v262);
      v149 = sub_1C44417E0();
      v150(v149);
      v151 = v148 + v74[7];
      sub_1C4EFEBB8();
      v152 = v274;
      v153 = sub_1C4EFD2F8();
      v155 = v154;
      v156 = v273[6];
      v157 = v74[9];
      sub_1C441AC88();
      sub_1C448D410(v152 + v158, v148 + v159, v160);
      sub_1C4EF9AE8();
      v161 = (v148 + v74[8]);
      *v161 = v153;
      v161[1] = v155;
      v162 = (v148 + v74[10]);
      *v162 = v146;
      v162[1] = v145;
      sub_1C4471D74(v163);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v204 = *(v69 + 16);
        v205 = sub_1C43FCEC0();
        sub_1C44C9240(v205, v206, v207, v69);
        v69 = v208;
      }

      v165 = *(v69 + 16);
      v164 = *(v69 + 24);
      v167 = v262;
      v166 = v263;
      v168 = v260;
      if (v165 >= v164 >> 1)
      {
        v209 = sub_1C43FF640(v164);
        sub_1C44C9240(v209, v210, v211, v69);
        v69 = v212;
      }

      (*(v268 + 8))(v166, v272);
      (*(v168 + 8))(v261, v167);
      *(v69 + 16) = v165 + 1;
      sub_1C43FBF6C();
      sub_1C445C2FC();
      sub_1C44083D4();
      sub_1C44DD9B4(v255, v169, v170);
    }

    else
    {
      (*(v73 + 8))(v263, v147);
      (*(v260 + 8))(v144, v262);
    }

    goto LABEL_36;
  }

  sub_1C4450908();
  v171 = v141;
  v172 = v254;
  sub_1C44DD9B4(v171, v254, v173);
  v275 = v269;
  sub_1C4DC5358();
  if (v1)
  {
    sub_1C440B944();
    sub_1C4DCDDF0(v172, v175);
    (*(v73 + 8))(v263, v272);
    (*(v53 + 8))(v144, v262);

    goto LABEL_36;
  }

  if (!*(v174 + 16))
  {
    sub_1C440B944();
    sub_1C4DCDDF0(v254, v203);

    goto LABEL_27;
  }

  v176 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3614(v176);
  v177 = v73;
  v178 = v264;
  (*(v267 + 16))(v249, v266, v264);
  v179 = v262;
  (*(v53 + 16))(v247, v144, v262);
  v180 = v272;
  (*(v177 + 16))(v248, v263, v272);
  v181 = v246;
  sub_1C445FFA8(v254 + *(v259 + 20), v246, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v181, 1, v179);
  if (!v60)
  {

    v182 = sub_1C4EFF048();
    v258 = v183;
    v259 = v182;
    v184 = v273[6];
    v185 = v74[9];
    sub_1C441AC88();
    v188 = v250;
    sub_1C448D410(v187 + v186, v250 + v189, v190);
    sub_1C4EF9AE8();
    v192 = v191;
    (*(v267 + 32))(v188, v249, v178);
    v193 = v245;
    v245(v188 + v74[5], v247, v179);
    (*(v177 + 32))(v188 + v74[6], v248, v180);
    v193(v188 + v74[7], v181, v179);
    v194 = (v188 + v74[8]);
    v195 = v258;
    *v194 = v259;
    v194[1] = v195;
    v196 = (v188 + v74[10]);
    v73 = v177;
    v146 = v270;
    v145 = v271;
    *v196 = v270;
    v196[1] = v145;
    *(v188 + v74[11]) = v192;
    *(v188 + v74[12]) = v269;
    v69 = v276;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v235 = *(v69 + 16);
      v236 = sub_1C43FCEC0();
      sub_1C44C9240(v236, v237, v238, v69);
      v69 = v239;
    }

    v198 = *(v69 + 16);
    v197 = *(v69 + 24);
    sub_1C44019A4();
    if (v96)
    {
      v240 = sub_1C43FFD98(v199);
      sub_1C44C9240(v240, v241, v242, v69);
      v69 = v243;
    }

    sub_1C440B944();
    sub_1C4DCDDF0(v254, v200);
    *(v69 + 16) = v188;
    sub_1C43FBF6C();
    sub_1C445C2FC();
    sub_1C44083D4();
    sub_1C44DD9B4(v250, v201, v202);
    v147 = v272;
    v144 = v261;
    goto LABEL_28;
  }

  __break(1u);
}

uint64_t sub_1C4DC6FE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001C4FC7BA0 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x696669746E656469 && a2 == 0xEC00000064497265;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000018 && 0x80000001C4FC7BC0 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x696669746E656469 && a2 == 0xEE00657079547265;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000018 && 0x80000001C4FC8D60 == a2;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6550746E65746E69 && a2 == 0xEE0064496E6F7372;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0xD000000000000012 && 0x80000001C4FC8D40 == a2)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1C4F02938();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

unint64_t sub_1C4DC7308(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
    case 6:
      result = 0x696669746E656469;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0x6550746E65746E69;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4DC7444()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  v1 = sub_1C456902C(&qword_1EC0C7930, &qword_1C4F74DB8);
  sub_1C43FCDF8(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C4DCEFD8();
  sub_1C440F61C();
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DB6C();
  sub_1C44CD430(v5, v6);
  sub_1C4411620();
  sub_1C4F02778();
  if (!v0)
  {
    v19 = type metadata accessor for INGroupStructs.SoftwareRelationshipType(0);
    v7 = v19[5];
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4420B00();
    sub_1C44CD430(v8, v9);
    sub_1C4418670();
    sub_1C43FEF68();
    sub_1C4F027E8();
    v10 = v19[6];
    sub_1C4401FFC();
    type metadata accessor for Source();
    sub_1C440152C();
    sub_1C44CD430(v11, v12);
    sub_1C4418670();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4401958(v19);
    sub_1C4411620();
    sub_1C4F027E8();
    sub_1C4401774(v19[8]);
    sub_1C43FBF44();
    sub_1C4F02738();
    sub_1C44169F0(v19);
    sub_1C4411620();
    sub_1C4F027E8();
    sub_1C4401774(v19[10]);
    sub_1C4475B68();
    sub_1C43FBF44();
    sub_1C4F02738();
    v13 = v19[11];
    sub_1C4411620();
    sub_1C4F027E8();
    sub_1C4401774(v19[12]);
    sub_1C43FBF44();
    sub_1C4F02738();
    v14 = v19[13];
    type metadata accessor for INGroupStructs.Software(0);
    sub_1C43FCD20();
    sub_1C44CD430(v15, v16);
    sub_1C4434138();
    sub_1C43FEF68();
    sub_1C4F02778();
  }

  v17 = sub_1C440231C();
  v18(v17);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4DC7740()
{
  sub_1C43FE96C();
  v2 = v1;
  v69 = v3;
  v4 = sub_1C456902C(&qword_1EC0BFA48, &unk_1C4F74980);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBC74();
  v70 = v8;
  sub_1C43FBE44();
  v9 = sub_1C4EFEEF8();
  v10 = sub_1C43FCDF8(v9);
  v73 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FD230();
  v74 = v16;
  v17 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v17);
  v19 = *(v18 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBC74();
  v75 = v21;
  v22 = sub_1C456902C(&qword_1EC0C7920, &qword_1C4F74DB0);
  v77 = sub_1C43FCDF8(v22);
  v24 = *(v23 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBC74();
  v26 = sub_1C43FBE44();
  v27 = type metadata accessor for INGroupStructs.SoftwareRelationshipType(v26);
  v28 = sub_1C43FBCE0(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBCC4();
  v33 = v32 - v31;
  sub_1C43FCF64();
  v76 = v9;
  sub_1C440BAA8(v34, v35, v36, v9);
  v37 = v33 + v27[5];
  sub_1C4EFD228();
  v38 = v27[6];
  if (qword_1EDDFD130 != -1)
  {
    sub_1C44123B8();
  }

  v39 = type metadata accessor for Source();
  sub_1C442B738(v39, qword_1EDDFD138);
  sub_1C441AC88();
  sub_1C448D410(v40, v33 + v38, v41);
  v72 = v27[7];
  sub_1C4EFE558();
  v42 = (v33 + v27[8]);
  *v42 = 0;
  v42[1] = 0;
  v71 = v27[9];
  sub_1C4EFE658();
  v43 = (v33 + v27[10]);
  *v43 = 0;
  v43[1] = 0;
  v44 = v27[11];
  sub_1C4EFE678();
  v45 = (v33 + v27[12]);
  *v45 = 0;
  v45[1] = 0;
  v46 = v27[13];
  v47 = type metadata accessor for INGroupStructs.Software(0);
  v80 = v33;
  sub_1C43FCF64();
  sub_1C440BAA8(v48, v49, v50, v47);
  v51 = v2;
  v53 = v2[3];
  v52 = v2[4];
  v78 = v51;
  sub_1C4417F50(v51, v53);
  sub_1C4DCEFD8();
  sub_1C4F02BC8();
  if (!v0)
  {
    v79 = v42;
    sub_1C442DB6C();
    sub_1C44CD430(v54, v55);
    sub_1C4F02658();
    sub_1C444088C(v75, v80, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441405C();
    sub_1C4F026C8();
    v57 = *(v73 + 40);
    v57(v80 + v72, v74, v76);
    sub_1C4428F20();
    v58 = sub_1C4F02618();
    sub_1C44147E8(v58, v59, v79);
    sub_1C44B9074();
    sub_1C4F026C8();
    v60 = sub_1C442F9F8(v71);
    (v57)(v60);
    sub_1C4402044();
    v61 = sub_1C4F02618();
    sub_1C440EEEC(v61, v62, v43);
    sub_1C44B9074();
    sub_1C4F026C8();
    v63 = sub_1C442F9F8(v44);
    (v57)(v63);
    sub_1C4424A6C();
    *v45 = sub_1C4F02618();
    v45[1] = v64;
    sub_1C43FCD20();
    sub_1C44CD430(v65, v66);
    sub_1C4449458();
    sub_1C4F02658();
    v67 = sub_1C44018C0();
    v68(v67, v77);
    sub_1C444088C(v70, v80 + v46, &qword_1EC0BFA48, &unk_1C4F74980);
    sub_1C448D410(v80, v69, type metadata accessor for INGroupStructs.SoftwareRelationshipType);
  }

  sub_1C440962C(v78);
  sub_1C4432FA8();
  sub_1C4DCDDF0(v80, v56);
  sub_1C43FBC80();
}