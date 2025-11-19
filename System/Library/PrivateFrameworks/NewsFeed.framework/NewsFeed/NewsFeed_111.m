uint64_t FormatSplitBackgroundSide.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v28 - v10;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v2;
  v17 = *(v2 + 64);
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSplitBackgroundSide, &type metadata for FormatCodingKeys, v21, v18, &type metadata for FormatSplitBackgroundSide, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.SydroF, v19, v15, v20, &off_1F51F6C58);
  if (v17)
  {
    v28 = v16;
    v29 = *(v2 + 8);
    v30 = *(v2 + 24);
    v31 = *(v2 + 40);
    v32 = *(v2 + 56);
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v22 = sub_1D725BD1C();
    v23 = __swift_project_value_buffer(v22, qword_1EDFFCD68);
    (*(*(v22 - 8) + 16))(v7, v23, v22);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638F930(1, &v28, v7);
    v24 = v7;
  }

  else
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v25 = sub_1D725BD1C();
    v26 = __swift_project_value_buffer(v25, qword_1EDFFCD68);
    (*(*(v25 - 8) + 16))(v11, v26, v25);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638F79C(0, v16, v11);
    v24 = v11;
  }

  sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v15, sub_1D5D30DC4);
}

uint64_t sub_1D659C8DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746E656964617267;
  }

  else
  {
    v3 = 0x726F6C6F63;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x746E656964617267;
  }

  else
  {
    v5 = 0x726F6C6F63;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D659C980()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D659CA00()
{
  sub_1D72621EC();
}

uint64_t sub_1D659CA6C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D659CAF4(uint64_t *a1@<X8>)
{
  v2 = 0x726F6C6F63;
  if (*v1)
  {
    v2 = 0x746E656964617267;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatSponsoredBannerNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v266 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v272 = &v266 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v273 = &v266 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v275 = &v266 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v274 = &v266 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v276 = &v266 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v277 = &v266 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v278 = &v266 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v279 = &v266 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  *&v289 = &v266 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v266 - v38;
  sub_1D66BC62C();
  v287 = v40;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v266 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1[3];
  v45 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v44);
  sub_1D5E19DF4();
  v47 = v46;
  v48 = sub_1D5B58B84(&qword_1EDF25058, sub_1D5E19DF4);
  v290 = v43;
  sub_1D5D2EE70(v4, v47, v49, v44, v4, v47, &type metadata for FormatVersions.DawnburstF, v45, v43, v48, &off_1F51F6BD8);
  swift_beginAccess();
  v51 = v2[2];
  v50 = v2[3];
  v286 = v2;
  v52 = qword_1EDF31F50;

  if (v52 != -1)
  {
    swift_once();
  }

  v53 = sub_1D725BD1C();
  v54 = __swift_project_value_buffer(v53, qword_1EDFFCE80);
  v55 = *(v53 - 8);
  v56 = *(v55 + 16);
  v57 = v55 + 16;
  v56(v39, v54, v53);
  v58 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v59 = sub_1D725895C();
  v60 = (*(*(v59 - 8) + 48))(v8, 1, v59);
  v282 = v56;
  v283 = v57;
  v284 = v58;
  v285 = v54;
  if (v60 != 1)
  {
    sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v81 = v290;
LABEL_8:
    v82 = v289;
    goto LABEL_9;
  }

  v280 = v51;
  sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v61 = v287;
  v62 = v290;
  v63 = &v290[*(v287 + 11)];
  v65 = *v63;
  v64 = *(v63 + 1);
  LOBYTE(v292) = 0;
  v66 = swift_allocObject();
  *(v66 + 16) = 0;
  *(v66 + 24) = 0;
  *(v66 + 32) = v292;
  *(v66 + 40) = v65;
  *(v66 + 48) = v64;
  sub_1D5E19DB8(0);
  v68 = v67;
  v69 = sub_1D5B58B84(&qword_1EDF02FD8, sub_1D5E19DB8);

  *&v288 = v68;
  v281 = v69;
  v70 = sub_1D72647CC();
  LOBYTE(v292) = 0;
  v71 = swift_allocObject();
  *(v71 + 24) = 0;
  *(v71 + 32) = 0;
  *(v71 + 16) = v70;
  *(v71 + 40) = v292;
  v72 = __swift_project_boxed_opaque_existential_1((v62 + *(v61 + 9)), *(v62 + *(v61 + 9) + 24));
  MEMORY[0x1EEE9AC00](v72, v73);
  MEMORY[0x1EEE9AC00](v74, v75);
  *(&v266 - 4) = sub_1D5B4AA6C;
  *(&v266 - 3) = 0;
  v264 = sub_1D66BC6C0;
  v265 = v66;
  v76 = v291;
  v78 = sub_1D5D2F7A4(v39, sub_1D615B49C, v77, sub_1D615B4A4, (&v266 - 6));
  *&v291 = v76;
  if (v76)
  {
    sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);

    v79 = v62;
    return sub_1D5D2CFE8(v79, sub_1D66BC62C);
  }

  v106 = v78;

  if ((v106 & 1) == 0)
  {
    sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);

    v81 = v290;
    v56 = v282;
    v54 = v285;
    goto LABEL_8;
  }

  v292 = 0uLL;
  LOBYTE(v293) = 0;
  v304 = v280;
  v305 = v50;
  v81 = v290;
  v107 = v291;
  sub_1D72647EC();

  sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);
  v54 = v285;
  v82 = v289;
  if (v107)
  {
    return sub_1D5D2CFE8(v81, sub_1D66BC62C);
  }

  *&v291 = 0;
  v56 = v282;
LABEL_9:
  v83 = v286[4];
  v56(v82, v54, v53);
  swift_storeEnumTagMultiPayload();
  v304 = v83;
  v288 = xmmword_1D728CF30;
  v292 = xmmword_1D728CF30;
  LOBYTE(v293) = 0;
  v84 = v287;
  v85 = (v81 + *(v287 + 11));
  v269 = v53;
  v87 = *v85;
  v86 = v85[1];
  LOBYTE(v303) = 0;
  v88 = swift_allocObject();
  v281 = &v266;
  *(v88 + 16) = v288;
  *(v88 + 32) = v303;
  *(v88 + 40) = v87;
  *(v88 + 48) = v86;
  MEMORY[0x1EEE9AC00](v88, v89);
  v280 = &v266 - 6;
  *(&v266 - 4) = sub_1D5B4AA6C;
  *(&v266 - 3) = 0;
  v264 = sub_1D6708B90;
  v265 = v90;
  LOBYTE(v303) = 0;
  v91 = swift_allocObject();
  *(v91 + 16) = v288;
  *(v91 + 32) = v303;
  v268 = v87;
  *(v91 + 40) = v87;
  *(v91 + 48) = v86;
  sub_1D5E19DB8(0);
  v93 = v92;
  v94 = sub_1D5B58B84(&qword_1EDF02FD8, sub_1D5E19DB8);
  swift_retain_n();
  v271 = v93;
  v270 = v94;
  v95 = sub_1D72647CC();
  LOBYTE(v303) = 0;
  v96 = swift_allocObject();
  *(v96 + 16) = v95;
  *(v96 + 24) = v288;
  *(v96 + 40) = v303;
  v97 = (v81 + *(v84 + 9));
  v98 = __swift_project_boxed_opaque_existential_1(v97, v97[3]);
  MEMORY[0x1EEE9AC00](v98, v99);
  MEMORY[0x1EEE9AC00](v100, v101);
  v102 = v280;
  *(&v266 - 4) = sub_1D615B4A4;
  *(&v266 - 3) = v102;
  v264 = sub_1D6708B90;
  v265 = v91;
  v103 = v289;
  v104 = v291;
  sub_1D5D2BC70(v289, sub_1D615B49C, v105, sub_1D615B4A4, (&v266 - 6));
  if (v104)
  {
    sub_1D5D2CFE8(v103, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v290, sub_1D66BC62C);
  }

  *&v288 = v97;
  v267 = v86;

  sub_1D5CA1E90();
  sub_1D72647EC();
  sub_1D5D2CFE8(v289, type metadata accessor for FormatVersionRequirement);

  v108 = v286[5];
  v109 = v279;
  v110 = v282;
  v282(v279, v285, v269);
  swift_storeEnumTagMultiPayload();
  v289 = xmmword_1D7297410;
  v292 = xmmword_1D7297410;
  LOBYTE(v293) = 0;
  LOBYTE(v304) = 0;
  v112 = swift_allocObject();
  *(v112 + 16) = v289;
  *(v112 + 32) = v304;
  v113 = v268;
  *(v112 + 40) = v268;
  v114 = v267;
  *(v112 + 48) = v267;
  if (v108)
  {
    v287 = &v266;
    v304 = v108;
    MEMORY[0x1EEE9AC00](v114, v111);
    *&v291 = 0;
    *(&v266 - 4) = sub_1D5B4AA6C;
    *(&v266 - 3) = 0;
    v264 = sub_1D6708B90;
    v265 = v112;
    LOBYTE(v303) = 0;
    v116 = v115;
    v117 = swift_allocObject();
    *(v117 + 16) = v289;
    *(v117 + 32) = v303;
    *(v117 + 40) = v113;
    *(v117 + 48) = v116;
    swift_retain_n();

    v118 = sub_1D72647CC();
    LOBYTE(v303) = 0;
    v119 = swift_allocObject();
    *(v119 + 16) = v118;
    *(v119 + 24) = v289;
    *(v119 + 40) = v303;
    v120 = __swift_project_boxed_opaque_existential_1(v288, *(v288 + 24));
    MEMORY[0x1EEE9AC00](v120, v121);
    MEMORY[0x1EEE9AC00](v122, v123);
    *(&v266 - 4) = sub_1D615B4A4;
    *(&v266 - 3) = (&v266 - 6);
    v264 = sub_1D6708B90;
    v265 = v117;
    v124 = v291;
    v126 = sub_1D5D2F7A4(v109, sub_1D615B49C, v125, sub_1D615B4A4, (&v266 - 6));
    if (v124)
    {

      v127 = v290;
      v128 = v279;

      v129 = v128;
LABEL_19:
      sub_1D5D2CFE8(v129, type metadata accessor for FormatVersionRequirement);
      v79 = v127;
      return sub_1D5D2CFE8(v79, sub_1D66BC62C);
    }

    v131 = v126;

    if (v131)
    {
      sub_1D6659D24();
      sub_1D72647EC();
      v110 = v282;
    }

    else
    {

      v110 = v282;
    }

    v130 = v279;
  }

  else
  {

    v130 = v109;
  }

  sub_1D5D2CFE8(v130, type metadata accessor for FormatVersionRequirement);
  v132 = v286;
  swift_beginAccess();
  v133 = v132[6];
  v134 = v278;
  v110(v278, v285, v269);
  swift_storeEnumTagMultiPayload();
  if (*(v133 + 16))
  {
    LOBYTE(v292) = 0;
    v135 = swift_allocObject();
    v291 = xmmword_1D72BAA60;
    *(v135 + 16) = xmmword_1D72BAA60;
    *(v135 + 32) = v292;
    *(v135 + 40) = v268;
    *(v135 + 48) = v267;

    v136 = sub_1D72647CC();
    LOBYTE(v292) = 0;
    v137 = swift_allocObject();
    *(v137 + 16) = v136;
    *(v137 + 24) = v291;
    *(v137 + 40) = v292;
    v138 = __swift_project_boxed_opaque_existential_1(v288, *(v288 + 24));
    MEMORY[0x1EEE9AC00](v138, v139);
    MEMORY[0x1EEE9AC00](v140, v141);
    *(&v266 - 4) = sub_1D5B4AA6C;
    *(&v266 - 3) = 0;
    v264 = sub_1D6708B90;
    v265 = v135;
    v143 = sub_1D5D2F7A4(v134, sub_1D615B49C, v142, sub_1D615B4A4, (&v266 - 6));
    v144 = v143;

    if (v144)
    {
      v292 = v291;
      LOBYTE(v293) = 0;
      v303 = v133;
      sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
      sub_1D6659C88();
      sub_1D72647EC();
      v110 = v282;
      v145 = v288;

      sub_1D5D2CFE8(v278, type metadata accessor for FormatVersionRequirement);
      goto LABEL_33;
    }

    sub_1D5D2CFE8(v278, type metadata accessor for FormatVersionRequirement);

    v110 = v282;
  }

  else
  {
    sub_1D5D2CFE8(v134, type metadata accessor for FormatVersionRequirement);
  }

  v145 = v288;
LABEL_33:
  v146 = v286;
  swift_beginAccess();
  v147 = v146[7];
  v148 = v277;
  v110(v277, v285, v269);
  swift_storeEnumTagMultiPayload();
  if (v147 == 0x8000000000000000)
  {
    v149 = v148;
LABEL_35:
    sub_1D5D2CFE8(v149, type metadata accessor for FormatVersionRequirement);
    goto LABEL_36;
  }

  LOBYTE(v292) = 0;
  v174 = swift_allocObject();
  v291 = xmmword_1D72BAA70;
  *(v174 + 16) = xmmword_1D72BAA70;
  *(v174 + 32) = v292;
  *(v174 + 40) = v268;
  *(v174 + 48) = v267;

  sub_1D5EB1500(v147);
  v175 = sub_1D72647CC();
  LOBYTE(v292) = 0;
  v176 = swift_allocObject();
  *(v176 + 16) = v175;
  *(v176 + 24) = v291;
  *(v176 + 40) = v292;
  v177 = __swift_project_boxed_opaque_existential_1(v145, v145[3]);
  MEMORY[0x1EEE9AC00](v177, v178);
  MEMORY[0x1EEE9AC00](v179, v180);
  *(&v266 - 4) = sub_1D5B4AA6C;
  *(&v266 - 3) = 0;
  v264 = sub_1D6708B90;
  v265 = v174;
  v182 = sub_1D5D2F7A4(v148, sub_1D615B49C, v181, sub_1D615B4A4, (&v266 - 6));
  v206 = v182;

  if (v206)
  {
    v292 = v291;
    LOBYTE(v293) = 0;
    v302 = v147;
    sub_1D5DF6A60();
    sub_1D72647EC();
    v110 = v282;
    sub_1D5EB15C4(v302);
    v149 = v277;
    goto LABEL_35;
  }

  sub_1D5EB15C4(v147);
  sub_1D5D2CFE8(v277, type metadata accessor for FormatVersionRequirement);
  v110 = v282;
LABEL_36:
  v150 = v276;
  v151 = v286;
  swift_beginAccess();
  LOBYTE(v151) = *(v151 + 64);
  v110(v150, v285, v269);
  swift_storeEnumTagMultiPayload();
  if (v151)
  {
    *&v291 = 0;
    v152 = v150;
LABEL_38:
    sub_1D5D2CFE8(v152, type metadata accessor for FormatVersionRequirement);
    goto LABEL_39;
  }

  LOBYTE(v292) = 0;
  v183 = swift_allocObject();
  v291 = xmmword_1D72BAA80;
  *(v183 + 16) = xmmword_1D72BAA80;
  *(v183 + 32) = v292;
  *(v183 + 40) = v268;
  *(v183 + 48) = v267;

  v184 = v150;
  v185 = sub_1D72647CC();
  LOBYTE(v292) = 0;
  v186 = swift_allocObject();
  *(v186 + 16) = v185;
  *(v186 + 24) = v291;
  *(v186 + 40) = v292;
  v187 = __swift_project_boxed_opaque_existential_1(v145, v145[3]);
  MEMORY[0x1EEE9AC00](v187, v188);
  MEMORY[0x1EEE9AC00](v189, v190);
  *(&v266 - 4) = sub_1D5B4AA6C;
  *(&v266 - 3) = 0;
  v264 = sub_1D6708B90;
  v265 = v183;
  v192 = sub_1D5D2F7A4(v184, sub_1D615B49C, v191, sub_1D615B4A4, (&v266 - 6));
  v207 = v192;

  if (v207)
  {
    v292 = v291;
    LOBYTE(v293) = 0;
    LOBYTE(v300) = 0;
    sub_1D72647EC();
    *&v291 = 0;
    v152 = v276;
    goto LABEL_38;
  }

  *&v291 = 0;
  sub_1D5D2CFE8(v276, type metadata accessor for FormatVersionRequirement);
LABEL_39:
  v153 = v286[9];
  v154 = *(v286 + 80);
  v155 = v274;
  v282(v274, v285, v269);
  swift_storeEnumTagMultiPayload();
  v289 = xmmword_1D72BAA90;
  v292 = xmmword_1D72BAA90;
  LOBYTE(v293) = 0;
  LOBYTE(v300) = 0;
  v157 = swift_allocObject();
  *(v157 + 16) = v289;
  *(v157 + 32) = v300;
  v158 = v268;
  *(v157 + 40) = v268;
  v159 = v267;
  *(v157 + 48) = v267;
  if (v154 > 0xFD)
  {

    v160 = v282;
    goto LABEL_41;
  }

  v287 = &v266;
  v300 = v153;
  v301 = v154;
  MEMORY[0x1EEE9AC00](v159, v156);
  *(&v266 - 4) = sub_1D5B4AA6C;
  *(&v266 - 3) = 0;
  v264 = sub_1D6708B90;
  v265 = v157;
  v299 = 0;
  v194 = v193;
  v195 = swift_allocObject();
  *(v195 + 16) = v289;
  *(v195 + 32) = v299;
  *(v195 + 40) = v158;
  *(v195 + 48) = v194;
  swift_retain_n();
  v196 = sub_1D72647CC();
  v299 = 0;
  v197 = swift_allocObject();
  *(v197 + 16) = v196;
  *(v197 + 24) = v289;
  *(v197 + 40) = v299;
  v198 = __swift_project_boxed_opaque_existential_1(v145, v145[3]);
  MEMORY[0x1EEE9AC00](v198, v199);
  MEMORY[0x1EEE9AC00](v200, v201);
  *(&v266 - 4) = sub_1D615B4A4;
  *(&v266 - 3) = (&v266 - 6);
  v264 = sub_1D6708B90;
  v265 = v195;
  v202 = v291;
  v204 = sub_1D5D2F7A4(v155, sub_1D615B49C, v203, sub_1D615B4A4, (&v266 - 6));
  *&v291 = v202;
  if (v202)
  {
    sub_1D5D2CFE8(v155, type metadata accessor for FormatVersionRequirement);

    v205 = v290;
LABEL_50:
    v79 = v205;
    return sub_1D5D2CFE8(v79, sub_1D66BC62C);
  }

  v210 = v204;

  if (v210)
  {
    sub_1D5F8F434();
    v205 = v290;
    v211 = v291;
    sub_1D72647EC();
    v160 = v282;
    *&v291 = v211;
    if (v211)
    {
      sub_1D5D2CFE8(v155, type metadata accessor for FormatVersionRequirement);

      goto LABEL_50;
    }
  }

  else
  {
    v160 = v282;
  }

LABEL_41:
  sub_1D5D2CFE8(v155, type metadata accessor for FormatVersionRequirement);

  v161 = v286;
  swift_beginAccess();
  v162 = v161[11];
  v163 = v275;
  v160(v275, v285, v269);
  swift_storeEnumTagMultiPayload();
  if (*(v162 + 16))
  {
    LOBYTE(v292) = 0;
    v164 = swift_allocObject();
    v289 = xmmword_1D72BAAA0;
    *(v164 + 16) = xmmword_1D72BAAA0;
    *(v164 + 32) = v292;
    *(v164 + 40) = v268;
    *(v164 + 48) = v267;

    v165 = sub_1D72647CC();
    LOBYTE(v292) = 0;
    v166 = swift_allocObject();
    *(v166 + 16) = v165;
    *(v166 + 24) = v289;
    *(v166 + 40) = v292;
    v167 = __swift_project_boxed_opaque_existential_1(v145, v145[3]);
    MEMORY[0x1EEE9AC00](v167, v168);
    MEMORY[0x1EEE9AC00](v169, v170);
    *(&v266 - 4) = sub_1D5B4AA6C;
    *(&v266 - 3) = 0;
    v264 = sub_1D6708B90;
    v265 = v164;
    v171 = v291;
    v173 = sub_1D5D2F7A4(v163, sub_1D615B49C, v172, sub_1D615B4A4, (&v266 - 6));
    if (v171)
    {

      v127 = v290;
      v129 = v275;
      goto LABEL_19;
    }

    v212 = v173;

    if (v212)
    {
      sub_1D5E06D4C(v162, v290, 7, 0, 0);
    }

    v160 = v282;
    v209 = v267;
    *&v291 = 0;

    v208 = v273;
  }

  else
  {
    v208 = v273;
    v209 = v267;
  }

  sub_1D5D2CFE8(v275, type metadata accessor for FormatVersionRequirement);
  v213 = v286;
  swift_beginAccess();
  v214 = v213[12];
  v160(v208, v285, v269);
  swift_storeEnumTagMultiPayload();
  v289 = xmmword_1D72BAAB0;
  v292 = xmmword_1D72BAAB0;
  LOBYTE(v293) = 0;
  LOBYTE(v297) = 0;
  v215 = swift_allocObject();
  v217 = v215;
  *(v215 + 16) = v289;
  *(v215 + 32) = v297;
  v218 = v268;
  *(v215 + 40) = v268;
  *(v215 + 48) = v209;
  if (!v214)
  {

    v230 = v291;
    goto LABEL_72;
  }

  v287 = &v266;
  *&v297 = v214;
  MEMORY[0x1EEE9AC00](v215, v216);
  *(&v266 - 4) = sub_1D5B4AA6C;
  *(&v266 - 3) = 0;
  v264 = sub_1D6708B90;
  v265 = v217;
  v306 = 0;
  v219 = swift_allocObject();
  *(v219 + 16) = v289;
  *(v219 + 32) = v306;
  *(v219 + 40) = v218;
  *(v219 + 48) = v209;
  swift_retain_n();
  swift_retain_n();
  v220 = v208;
  v221 = sub_1D72647CC();
  v306 = 0;
  v222 = swift_allocObject();
  *(v222 + 16) = v221;
  *(v222 + 24) = v289;
  *(v222 + 40) = v306;
  v223 = __swift_project_boxed_opaque_existential_1(v145, v145[3]);
  MEMORY[0x1EEE9AC00](v223, v224);
  MEMORY[0x1EEE9AC00](v225, v226);
  *(&v266 - 4) = sub_1D615B4A4;
  *(&v266 - 3) = (&v266 - 6);
  v264 = sub_1D6708B90;
  v265 = v219;
  v227 = v291;
  v229 = sub_1D5D2F7A4(v220, sub_1D615B49C, v228, sub_1D615B4A4, (&v266 - 6));
  v230 = v227;
  if (!v227)
  {
    v232 = v229;

    if (v232)
    {
      type metadata accessor for FormatSponsoredBannerNodeStyle();
      sub_1D5B58B84(&unk_1EDF09B38, type metadata accessor for FormatSponsoredBannerNodeStyle);
      sub_1D72647EC();
    }

    v208 = v273;
LABEL_72:
    *&v291 = v230;

    sub_1D5D2CFE8(v208, type metadata accessor for FormatVersionRequirement);
    v234 = v286[13];
    v233 = v286[14];
    v235 = v286[15];
    v236 = v286[16];
    v238 = v286[17];
    v237 = v286[18];
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v239 = v269;
    v240 = __swift_project_value_buffer(v269, qword_1EDFFCE38);
    v282(v272, v240, v239);
    swift_storeEnumTagMultiPayload();
    v289 = xmmword_1D72BAAC0;
    v297 = xmmword_1D72BAAC0;
    v298 = 0;
    LOBYTE(v292) = 0;
    v241 = swift_allocObject();
    v243 = v241;
    *(v241 + 16) = v289;
    *(v241 + 32) = v292;
    v244 = v268;
    v245 = v267;
    *(v241 + 40) = v268;
    *(v241 + 48) = v245;
    if (v234)
    {
      v287 = &v266;
      *&v292 = v234;
      *(&v292 + 1) = v233;
      v293 = v235;
      v294 = v236;
      v295 = v238;
      v285 = v237;
      v296 = v237;
      MEMORY[0x1EEE9AC00](v241, v242);
      v286 = &v266 - 6;
      *(&v266 - 4) = sub_1D5B4AA6C;
      *(&v266 - 3) = 0;
      v264 = sub_1D6708B90;
      v265 = v243;
      v306 = 0;
      v246 = v234;
      v247 = swift_allocObject();
      *(v247 + 16) = v289;
      *(v247 + 32) = v306;
      *(v247 + 40) = v244;
      *(v247 + 48) = v245;
      swift_retain_n();
      sub_1D5EB1D80(v246, v233, v235, v236, v238);
      v248 = sub_1D72647CC();
      v306 = 0;
      v249 = swift_allocObject();
      *(v249 + 16) = v248;
      *(v249 + 24) = v289;
      *(v249 + 40) = v306;
      v250 = __swift_project_boxed_opaque_existential_1(v288, *(v288 + 24));
      MEMORY[0x1EEE9AC00](v250, v251);
      MEMORY[0x1EEE9AC00](v252, v253);
      v254 = v286;
      *(&v266 - 4) = sub_1D615B4A4;
      *(&v266 - 3) = v254;
      v264 = sub_1D6708B90;
      v265 = v247;
      v255 = v291;
      v257 = sub_1D5D2F7A4(v272, sub_1D615B49C, v256, sub_1D615B4A4, (&v266 - 6));
      if (v255)
      {

        v258 = v272;
        v259 = v295;

        sub_1D5CBF568(v259);

        v260 = v258;
      }

      else
      {
        v261 = v257;

        if ((v261 & 1) == 0)
        {

          v262 = v295;

          sub_1D5CBF568(v262);

          sub_1D5D2CFE8(v272, type metadata accessor for FormatVersionRequirement);
          goto LABEL_46;
        }

        sub_1D6659A24();
        sub_1D72647EC();

        v263 = v295;

        sub_1D5CBF568(v263);

        v260 = v272;
      }

      sub_1D5D2CFE8(v260, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v272, type metadata accessor for FormatVersionRequirement);
    }

LABEL_46:
    v79 = v290;
    return sub_1D5D2CFE8(v79, sub_1D66BC62C);
  }

  v231 = v290;
  sub_1D5D2CFE8(v273, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v231, sub_1D66BC62C);
}

unint64_t sub_1D659F910(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x696669746E656469;
    v7 = 0x657A69736572;
    v8 = 0x656D7473756A6461;
    if (a1 != 3)
    {
      v8 = 0x696C696269736976;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 1702521203;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x656C797473;
    v2 = 2019912806;
    if (a1 != 9)
    {
      v2 = 1885433183;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000018;
    v4 = 0xD000000000000011;
    if (a1 != 6)
    {
      v4 = 0x726F7463656C6573;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D659FA70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66BC7F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D659FAA8(uint64_t a1)
{
  v2 = sub_1D5E19ECC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D659FAE4(uint64_t a1)
{
  v2 = sub_1D5E19ECC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSponsoredBannerNodeBinding.init(from:)(void *a1)
{
  v2 = v1;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v1)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v2);
    swift_willThrow();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v10 = sub_1D7264AFC();
    v11 = Dictionary<>.errorOnUnknownKeys.getter(v10);

    if (v11)
    {
      v12 = sub_1D726433C();
      v13 = (v12 + 40);
      v14 = *(v12 + 16) + 1;
      while (--v14)
      {
        v15 = v13 + 2;
        v16 = *v13;
        v13 += 2;
        if (v16 >= 4)
        {
          v17 = *(v15 - 3);

          sub_1D5E2D970();
          v2 = swift_allocError();
          *v18 = v17;
          *(v18 + 8) = v16;
          *(v18 + 16) = &unk_1F5117720;
          *(v18 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v6 + 8))(v9, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D66BC750();
    v20 = 0uLL;
    sub_1D726431C();
    v20 = xmmword_1D7279980;
    sub_1D66BC7A4();
    sub_1D726431C();
    (*(v6 + 8))(v9, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSponsoredBannerNodeBinding.encode(to:)(void *a1)
{
  v2 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSponsoredBannerNodeBinding, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatSponsoredBannerNodeBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowG, v11, v9, v12, &off_1F51F6B58);
  if (qword_1EDF31F30 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCE20);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D6387A08(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatSponsoredBannerNodeStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v194 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v199 = &v194 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v200 = &v194 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v201 = &v194 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v202 = &v194 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v203 = &v194 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v211 = (&v194 - v26);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v194 - v29;
  sub_1D66BD280();
  *&v212 = v31;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v194 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1[3];
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v35);
  sub_1D66BD3A8();
  v38 = v37;
  v39 = sub_1D5B58B84(&qword_1EDF24E88, sub_1D66BD3A8);
  v215 = v34;
  sub_1D5D2EE70(v4, v38, v40, v35, v4, v38, &type metadata for FormatVersions.DawnburstF, v36, v34, v39, &off_1F51F6BD8);
  swift_beginAccess();
  v41 = v2[2];
  v42 = v2[3];
  v210 = v2;
  v43 = qword_1EDF31F50;

  if (v43 != -1)
  {
    swift_once();
  }

  v44 = sub_1D725BD1C();
  v45 = __swift_project_value_buffer(v44, qword_1EDFFCE80);
  v46 = *(v44 - 8);
  v47 = *(v46 + 16);
  v48 = v46 + 16;
  v208 = v45;
  v47(v30);
  v209 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v49 = sub_1D725895C();
  v50 = (*(*(v49 - 8) + 48))(v8, 1, v49);
  v206 = v47;
  v207 = v48;
  if (v50 == 1)
  {
    v205 = v41;
    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v51 = v212;
    v52 = v215;
    v53 = &v215[*(v212 + 44)];
    v55 = *v53;
    v54 = *(v53 + 1);
    LOBYTE(v219) = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = 0;
    *(v56 + 24) = 0;
    *(v56 + 32) = v219;
    *(v56 + 40) = v55;
    *(v56 + 48) = v54;
    sub_1D66BD314();
    v58 = v57;
    v59 = sub_1D5B58B84(&qword_1EDF02DC8, sub_1D66BD314);

    *&v213 = v58;
    v204 = v59;
    v60 = sub_1D72647CC();
    LOBYTE(v219) = 0;
    v61 = swift_allocObject();
    *(v61 + 24) = 0;
    *(v61 + 32) = 0;
    *(v61 + 16) = v60;
    *(v61 + 40) = v219;
    v62 = __swift_project_boxed_opaque_existential_1((v52 + *(v51 + 36)), *(v52 + *(v51 + 36) + 24));
    MEMORY[0x1EEE9AC00](v62, v63);
    MEMORY[0x1EEE9AC00](v64, v65);
    *(&v194 - 4) = sub_1D5B4AA6C;
    *(&v194 - 3) = 0;
    v192 = sub_1D66BD528;
    v193 = v56;
    v66 = v214;
    v68 = sub_1D5D2F7A4(v30, sub_1D615B49C, v67, sub_1D615B4A4, (&v194 - 6));
    if (v66)
    {
      sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v52, sub_1D66BD280);
    }

    v96 = v68;

    if (v96)
    {
      v219 = 0uLL;
      v220 = 0;
      *&v217 = v205;
      *(&v217 + 1) = v42;
      v70 = v215;
      sub_1D72647EC();

      sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
      v47 = v206;
      *&v214 = 0;
    }

    else
    {
      *&v214 = 0;
      sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);

      v70 = v215;
      v47 = v206;
    }
  }

  else
  {
    sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v70 = v215;
  }

  v71 = v211;
  v72 = v210[4];
  v73 = v210[5];
  (v47)(v211, v208, v44);
  swift_storeEnumTagMultiPayload();
  *&v217 = v72;
  *(&v217 + 1) = v73;
  v213 = xmmword_1D728CF30;
  v219 = xmmword_1D728CF30;
  v220 = 0;
  v74 = v212;
  v75 = (v70 + *(v212 + 44));
  v196 = v44;
  v76 = *v75;
  v77 = v75[1];
  LOBYTE(v221) = 0;
  v78 = swift_allocObject();
  v205 = &v194;
  *(v78 + 16) = v213;
  *(v78 + 32) = v221;
  *(v78 + 40) = v76;
  *(v78 + 48) = v77;
  MEMORY[0x1EEE9AC00](v78, v79);
  v204 = &v194 - 6;
  *(&v194 - 4) = sub_1D5B4AA6C;
  *(&v194 - 3) = 0;
  v192 = sub_1D6708B94;
  v193 = v80;
  LOBYTE(v221) = 0;
  v81 = swift_allocObject();
  *(v81 + 16) = v213;
  *(v81 + 32) = v221;
  v195 = v76;
  *(v81 + 40) = v76;
  *(v81 + 48) = v77;
  sub_1D66BD314();
  v83 = v82;
  v84 = sub_1D5B58B84(&qword_1EDF02DC8, sub_1D66BD314);
  v194 = v77;
  swift_retain_n();
  v198 = v83;
  v197 = v84;
  v85 = sub_1D72647CC();
  LOBYTE(v221) = 0;
  v86 = swift_allocObject();
  *(v86 + 16) = v85;
  *(v86 + 24) = v213;
  *(v86 + 40) = v221;
  v87 = (v70 + *(v74 + 36));
  v88 = __swift_project_boxed_opaque_existential_1(v87, v87[3]);
  MEMORY[0x1EEE9AC00](v88, v89);
  MEMORY[0x1EEE9AC00](v90, v91);
  v92 = v204;
  *(&v194 - 4) = sub_1D615B4A4;
  *(&v194 - 3) = v92;
  v192 = sub_1D6708B94;
  v193 = v81;
  v93 = v214;
  sub_1D5D2BC70(v71, sub_1D615B49C, v94, sub_1D615B4A4, (&v194 - 6));
  if (v93)
  {
    sub_1D5D2CFE8(v71, type metadata accessor for FormatVersionRequirement);

LABEL_9:
    v95 = v215;
    return sub_1D5D2CFE8(v95, sub_1D66BD280);
  }

  *&v213 = v87;

  v95 = v215;
  sub_1D72647EC();
  *&v214 = 0;
  sub_1D5D2CFE8(v211, type metadata accessor for FormatVersionRequirement);

  v97 = v210;
  swift_beginAccess();
  v98 = v97[6];
  v99 = v203;
  v100 = v208;
  v101 = v206;
  (v206)(v203, v208, v196);
  swift_storeEnumTagMultiPayload();
  if (!*(v98 + 16))
  {
    sub_1D5D2CFE8(v99, type metadata accessor for FormatVersionRequirement);
LABEL_23:
    v114 = v194;
    goto LABEL_24;
  }

  LOBYTE(v217) = 0;
  v102 = swift_allocObject();
  v212 = xmmword_1D7297410;
  *(v102 + 16) = xmmword_1D7297410;
  *(v102 + 32) = v217;
  *(v102 + 40) = v195;
  *(v102 + 48) = v194;

  v103 = sub_1D72647CC();
  LOBYTE(v217) = 0;
  v104 = swift_allocObject();
  *(v104 + 16) = v103;
  *(v104 + 24) = v212;
  *(v104 + 40) = v217;
  v105 = __swift_project_boxed_opaque_existential_1(v213, *(v213 + 24));
  v211 = &v194;
  MEMORY[0x1EEE9AC00](v105, v106);
  MEMORY[0x1EEE9AC00](v107, v108);
  *(&v194 - 4) = sub_1D5B4AA6C;
  *(&v194 - 3) = 0;
  v192 = sub_1D6708B94;
  v193 = v102;
  v109 = v214;
  v111 = sub_1D5D2F7A4(v99, sub_1D615B49C, v110, sub_1D615B4A4, (&v194 - 6));
  *&v214 = v109;
  if (v109)
  {
    sub_1D5D2CFE8(v99, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v215, sub_1D66BD280);
  }

  v112 = v111;

  if ((v112 & 1) == 0)
  {
    sub_1D5D2CFE8(v203, type metadata accessor for FormatVersionRequirement);

    v95 = v215;
    v101 = v206;
    v100 = v208;
    goto LABEL_23;
  }

  v217 = v212;
  v218 = 0;
  v221 = v98;
  sub_1D5C34D84(0, &qword_1EC887390, &type metadata for FormatSponsoredBannerNodeStyle.Selector, MEMORY[0x1E69E62F8]);
  sub_1D66BD60C();
  v95 = v215;
  v113 = v214;
  sub_1D72647EC();
  v101 = v206;
  v114 = v194;
  if (!v113)
  {
    *&v214 = 0;

    sub_1D5D2CFE8(v203, type metadata accessor for FormatVersionRequirement);
    v100 = v208;
LABEL_24:
    v115 = v195;
    v116 = v97[7];
    v117 = v202;
    v101(v202, v100, v196);
    swift_storeEnumTagMultiPayload();
    v212 = xmmword_1D72BAA60;
    v217 = xmmword_1D72BAA60;
    v218 = 0;
    LOBYTE(v221) = 0;
    v118 = swift_allocObject();
    v120 = v118;
    *(v118 + 16) = v212;
    *(v118 + 32) = v221;
    *(v118 + 40) = v115;
    *(v118 + 48) = v114;
    if ((~v116 & 0xF000000000000007) != 0)
    {
      v211 = &v194;
      v221 = v116;
      MEMORY[0x1EEE9AC00](v118, v119);
      *(&v194 - 4) = sub_1D5B4AA6C;
      *(&v194 - 3) = 0;
      v192 = sub_1D6708B94;
      v193 = v120;
      v216 = 0;
      v124 = swift_allocObject();
      *(v124 + 16) = v212;
      *(v124 + 32) = v216;
      *(v124 + 40) = v115;
      *(v124 + 48) = v114;
      v125 = v114;
      swift_retain_n();
      sub_1D5CFCFAC(v116);
      v126 = sub_1D72647CC();
      v216 = 0;
      v127 = swift_allocObject();
      *(v127 + 16) = v126;
      *(v127 + 24) = v212;
      *(v127 + 40) = v216;
      v128 = __swift_project_boxed_opaque_existential_1(v213, *(v213 + 24));
      MEMORY[0x1EEE9AC00](v128, v129);
      MEMORY[0x1EEE9AC00](v130, v131);
      *(&v194 - 4) = sub_1D615B4A4;
      *(&v194 - 3) = (&v194 - 6);
      v192 = sub_1D6708B94;
      v193 = v124;
      v132 = v214;
      v134 = sub_1D5D2F7A4(v117, sub_1D615B49C, v133, sub_1D615B4A4, (&v194 - 6));
      if (v132)
      {

        v95 = v215;

        sub_1D5D2CFE8(v117, type metadata accessor for FormatVersionRequirement);
        return sub_1D5D2CFE8(v95, sub_1D66BD280);
      }

      v135 = v134;

      if (v135)
      {
        sub_1D5B55CBC();
        v95 = v215;
        sub_1D72647EC();
        v123 = v206;
        *&v214 = 0;
      }

      else
      {
        *&v214 = 0;

        v95 = v215;
        v123 = v206;
      }

      v121 = v125;
      v122 = v201;
      v100 = v208;
    }

    else
    {

      v121 = v114;
      v122 = v201;
      v123 = v101;
    }

    sub_1D5D2CFE8(v117, type metadata accessor for FormatVersionRequirement);
    v136 = v210[8];
    v123(v122, v100, v196);
    swift_storeEnumTagMultiPayload();
    v212 = xmmword_1D72BAA70;
    v217 = xmmword_1D72BAA70;
    v218 = 0;
    LOBYTE(v221) = 0;
    v137 = swift_allocObject();
    v139 = v137;
    *(v137 + 16) = v212;
    *(v137 + 32) = v221;
    v140 = v195;
    *(v137 + 40) = v195;
    *(v137 + 48) = v121;
    if ((~v136 & 0xF000000000000007) != 0)
    {
      v211 = &v194;
      v221 = v136;
      MEMORY[0x1EEE9AC00](v137, v138);
      *(&v194 - 4) = sub_1D5B4AA6C;
      *(&v194 - 3) = 0;
      v192 = sub_1D6708B94;
      v193 = v139;
      v216 = 0;
      v158 = swift_allocObject();
      *(v158 + 16) = v212;
      *(v158 + 32) = v216;
      *(v158 + 40) = v140;
      *(v158 + 48) = v121;
      swift_retain_n();
      sub_1D5CFCFAC(v136);
      v159 = sub_1D72647CC();
      v216 = 0;
      v160 = swift_allocObject();
      *(v160 + 16) = v159;
      *(v160 + 24) = v212;
      *(v160 + 40) = v216;
      v161 = __swift_project_boxed_opaque_existential_1(v213, *(v213 + 24));
      MEMORY[0x1EEE9AC00](v161, v162);
      MEMORY[0x1EEE9AC00](v163, v164);
      *(&v194 - 4) = sub_1D615B4A4;
      *(&v194 - 3) = (&v194 - 6);
      v192 = sub_1D6708B94;
      v193 = v158;
      v165 = v214;
      v167 = sub_1D5D2F7A4(v122, sub_1D615B49C, v166, sub_1D615B4A4, (&v194 - 6));
      if (v165)
      {

        v95 = v215;

        sub_1D5D2CFE8(v201, type metadata accessor for FormatVersionRequirement);
        return sub_1D5D2CFE8(v95, sub_1D66BD280);
      }

      v189 = v167;

      if (v189)
      {
        sub_1D5B55CBC();
        v95 = v215;
        sub_1D72647EC();
        v123 = v206;
        v141 = v210;
        *&v214 = 0;

        v122 = v201;
        v100 = v208;
        v121 = v194;
LABEL_36:
        sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);
        v142 = *(v141 + 72);
        v143 = v200;
        v123(v200, v100, v196);
        swift_storeEnumTagMultiPayload();
        v212 = xmmword_1D72BAA80;
        v217 = xmmword_1D72BAA80;
        v218 = 0;
        LOBYTE(v221) = 0;
        v144 = swift_allocObject();
        v146 = v144;
        *(v144 + 16) = v212;
        *(v144 + 32) = v221;
        v147 = v195;
        *(v144 + 40) = v195;
        *(v144 + 48) = v121;
        if (v142 == 2)
        {
          v148 = v121;

          v149 = v214;
          v150 = v199;
          v151 = v147;
        }

        else
        {
          v211 = &v194;
          LOBYTE(v221) = v142 & 1;
          MEMORY[0x1EEE9AC00](v144, v145);
          *(&v194 - 4) = sub_1D5B4AA6C;
          *(&v194 - 3) = 0;
          v192 = sub_1D6708B94;
          v193 = v146;
          v216 = 0;
          v148 = v121;
          v168 = swift_allocObject();
          *(v168 + 16) = v212;
          *(v168 + 32) = v216;
          *(v168 + 40) = v147;
          *(v168 + 48) = v121;
          swift_retain_n();
          v169 = sub_1D72647CC();
          v216 = 0;
          v170 = swift_allocObject();
          *(v170 + 16) = v169;
          *(v170 + 24) = v212;
          *(v170 + 40) = v216;
          v171 = __swift_project_boxed_opaque_existential_1(v213, *(v213 + 24));
          MEMORY[0x1EEE9AC00](v171, v172);
          MEMORY[0x1EEE9AC00](v173, v174);
          *(&v194 - 4) = sub_1D615B4A4;
          *(&v194 - 3) = (&v194 - 6);
          v192 = sub_1D6708B94;
          v193 = v168;
          v175 = v214;
          v177 = sub_1D5D2F7A4(v143, sub_1D615B49C, v176, sub_1D615B4A4, (&v194 - 6));
          if (v175)
          {
            sub_1D5D2CFE8(v143, type metadata accessor for FormatVersionRequirement);

            goto LABEL_9;
          }

          v190 = v177;
          v151 = v147;

          if (v190)
          {
            v95 = v215;
            sub_1D72647EC();
            v150 = v199;
            v123 = v206;
            v149 = 0;
          }

          else
          {
            v149 = 0;
            v95 = v215;
            v150 = v199;
            v123 = v206;
          }
        }

        sub_1D5D2CFE8(v200, type metadata accessor for FormatVersionRequirement);

        v152 = v210[10];
        if (qword_1EDF31F30 != -1)
        {
          swift_once();
        }

        v153 = v196;
        v154 = __swift_project_value_buffer(v196, qword_1EDFFCE20);
        v123(v150, v154, v153);
        swift_storeEnumTagMultiPayload();
        v214 = xmmword_1D72BAA90;
        v217 = xmmword_1D72BAA90;
        v218 = 0;
        LOBYTE(v221) = 0;
        v155 = swift_allocObject();
        v157 = v155;
        *(v155 + 16) = v214;
        *(v155 + 32) = v221;
        *(v155 + 40) = v151;
        *(v155 + 48) = v148;
        if (v152 == 2)
        {
        }

        else
        {
          v178 = v151;
          *&v212 = &v194;
          v221 = v152;
          MEMORY[0x1EEE9AC00](v155, v156);
          v179 = v150;
          *(&v194 - 4) = sub_1D5B4AA6C;
          *(&v194 - 3) = 0;
          v192 = sub_1D6708B94;
          v193 = v157;
          v216 = 0;
          v180 = swift_allocObject();
          *(v180 + 16) = v214;
          *(v180 + 32) = v216;
          *(v180 + 40) = v178;
          *(v180 + 48) = v148;
          swift_retain_n();
          sub_1D5D0A59C(v152);
          v181 = sub_1D72647CC();
          v216 = 0;
          v182 = swift_allocObject();
          *(v182 + 16) = v181;
          *(v182 + 24) = v214;
          *(v182 + 40) = v216;
          v183 = __swift_project_boxed_opaque_existential_1(v213, *(v213 + 24));
          MEMORY[0x1EEE9AC00](v183, v184);
          MEMORY[0x1EEE9AC00](v185, v186);
          *(&v194 - 4) = sub_1D615B4A4;
          *(&v194 - 3) = (&v194 - 6);
          v192 = sub_1D6708B94;
          v193 = v180;
          v188 = sub_1D5D2F7A4(v179, sub_1D615B49C, v187, sub_1D615B4A4, (&v194 - 6));
          if (v149)
          {

            v95 = v215;
            v150 = v199;
          }

          else
          {
            v191 = v188;

            if ((v191 & 1) == 0)
            {

              sub_1D5D0A58C(v221);
              v95 = v215;
              v150 = v199;
              goto LABEL_56;
            }

            sub_1D66BD5B8();
            v95 = v215;
            sub_1D72647EC();
            v150 = v199;
          }

          sub_1D5D0A58C(v221);
        }

LABEL_56:
        sub_1D5D2CFE8(v150, type metadata accessor for FormatVersionRequirement);
        return sub_1D5D2CFE8(v95, sub_1D66BD280);
      }

      *&v214 = 0;

      v95 = v215;
      v123 = v206;
      v122 = v201;
      v100 = v208;
      v121 = v194;
    }

    else
    {
    }

    v141 = v210;
    goto LABEL_36;
  }

  sub_1D5D2CFE8(v203, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v95, sub_1D66BD280);
}

unint64_t sub_1D65A1FD0()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 1885433183;
  if (v1 == 6)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0xD000000000000018;
  if (v1 == 4)
  {
    v4 = 0x64656C6C69666E75;
  }

  if (*v0 > 5u)
  {
    v4 = v3;
  }

  v5 = 0x726F7463656C6573;
  if (v1 != 2)
  {
    v5 = 0x6F4364656C6C6966;
  }

  if (*v0)
  {
    v2 = 0x7373616C63;
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
    return v4;
  }
}

uint64_t sub_1D65A20E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66BEF00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65A2118(uint64_t a1)
{
  v2 = sub_1D66BD480();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65A2154(uint64_t a1)
{
  v2 = sub_1D66BD480();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSponsoredBannerNodeStyle.Selector.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D66BD6FC();
  v7 = v6;
  v39 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66BD790();
  sub_1D5B58B84(&qword_1EC8873C8, sub_1D66BD790);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v39;
  v14 = v10;
  if (v12)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v22 = *(v17 - 2);
      v21 = *(v17 - 1);

      v23 = sub_1D6623A84();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v24 = v22;
      *(v24 + 8) = v21;
      *(v24 + 16) = v23;
      *(v24 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v14, v7);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C36978();
  v35 = 0uLL;
  v36 = 0;
  sub_1D726431C();
  v18 = v13;
  v19 = v37;
  v20 = v38;
  v35 = xmmword_1D728CF30;
  v36 = 0;
  sub_1D5B570F8();
  sub_1D726427C();
  v34 = v20;
  v26 = v37;
  v35 = xmmword_1D7297410;
  v36 = 0;
  sub_1D726427C();
  v27 = v26;
  v28 = v37;
  v35 = xmmword_1D72BAA60;
  v36 = 0;
  v32 = sub_1D726423C();
  v33 = v19;
  v35 = xmmword_1D72BAA70;
  v36 = 0;
  sub_1D66BD910();
  sub_1D726427C();
  v29 = v34;
  (*(v18 + 8))(v14, v7);
  v30 = v37;
  *a2 = v33;
  *(a2 + 8) = v29;
  *(a2 + 16) = v27;
  *(a2 + 24) = v28;
  *(a2 + 32) = v32;
  *(a2 + 40) = v30;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSponsoredBannerNodeStyle.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v131 = v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v132 = v127 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v134 = v127 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v138 = v127 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v127 - v17;
  sub_1D66BD964();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v1;
  v25 = *(v1 + 8);
  v26 = *(v1 + 24);
  v133 = *(v1 + 16);
  v130 = v26;
  v152 = *(v1 + 32);
  v129 = *(v1 + 40);
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_1D66BD790();
  v30 = v29;
  v31 = sub_1D5B58B84(&qword_1EC8873C8, sub_1D66BD790);
  sub_1D5D2EE70(&type metadata for FormatSponsoredBannerNodeStyle.Selector, v30, v32, v27, &type metadata for FormatSponsoredBannerNodeStyle.Selector, v30, &type metadata for FormatVersions.DawnburstF, v28, v23, v31, &off_1F51F6BD8);
  if (qword_1EDF31F50 != -1)
  {
    swift_once();
  }

  v33 = sub_1D725BD1C();
  v34 = __swift_project_value_buffer(v33, qword_1EDFFCE80);
  v35 = *(v33 - 8);
  v36 = *(v35 + 16);
  v139 = v34;
  v136 = v33;
  v137 = v36;
  v141 = v35 + 16;
  (v36)(v18);
  v140 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v149 = v24;
  v150 = v25;
  v147 = 0uLL;
  v148 = 0;
  v37 = &v23[*(v20 + 44)];
  v39 = *v37;
  v38 = *(v37 + 1);
  v151 = 0;
  v40 = swift_allocObject();
  *&v144 = v127;
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  *(v40 + 32) = v151;
  *(v40 + 40) = v39;
  *(v40 + 48) = v38;
  MEMORY[0x1EEE9AC00](v40, v41);
  v127[-4] = sub_1D5B4AA6C;
  v127[-3] = 0;
  v125 = sub_1D6708B98;
  v126 = v42;
  v151 = 0;
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = 0;
  *(v43 + 32) = v151;
  v135 = v39;
  *(v43 + 40) = v39;
  *(v43 + 48) = v38;
  sub_1D66BD9F8();
  v45 = v44;
  v46 = sub_1D5B58B84(&qword_1EC8873E0, sub_1D66BD9F8);
  swift_retain_n();
  v142 = v46;
  v143 = v45;
  v47 = sub_1D72647CC();
  v151 = 0;
  v48 = swift_allocObject();
  *(v48 + 24) = 0;
  *(v48 + 32) = 0;
  *(v48 + 16) = v47;
  *(v48 + 40) = v151;
  v49 = *(v20 + 36);
  v50 = v18;
  v51 = &v23[v49];
  v146 = v23;
  v52 = __swift_project_boxed_opaque_existential_1(&v23[v49], *&v23[v49 + 24]);
  MEMORY[0x1EEE9AC00](v52, v53);
  MEMORY[0x1EEE9AC00](v54, v55);
  v127[-4] = sub_1D615B4A4;
  v127[-3] = &v127[-6];
  v125 = sub_1D6708B98;
  v126 = v43;
  v56 = v145;
  sub_1D5D2BC70(v50, sub_1D615B49C, v57, sub_1D615B4A4, &v127[-6]);
  if (v56)
  {
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

    v58 = v146;
    return sub_1D5D2CFE8(v58, sub_1D66BD964);
  }

  v128 = v51;
  *&v145 = v38;

  sub_1D5D3E60C();
  sub_1D72647EC();
  sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

  v60 = v138;
  v62 = v136;
  v61 = v137;
  v137(v138, v139, v136);
  swift_storeEnumTagMultiPayload();
  v144 = xmmword_1D728CF30;
  v147 = xmmword_1D728CF30;
  v148 = 0;
  LOBYTE(v149) = 0;
  v63 = swift_allocObject();
  v65 = v63;
  *(v63 + 16) = v144;
  *(v63 + 32) = v149;
  v66 = v135;
  v67 = v145;
  *(v63 + 40) = v135;
  *(v63 + 48) = v67;
  if ((~v133 & 0xF000000000000007) != 0)
  {
    v127[1] = v127;
    v149 = v133;
    MEMORY[0x1EEE9AC00](v63, v64);
    v127[-4] = sub_1D5B4AA6C;
    v127[-3] = 0;
    v125 = sub_1D6708B98;
    v126 = v65;
    v151 = 0;
    v69 = v68;
    v70 = swift_allocObject();
    *(v70 + 16) = v144;
    *(v70 + 32) = v151;
    *(v70 + 40) = v66;
    *(v70 + 48) = v67;
    swift_retain_n();
    sub_1D5CFCFAC(v69);
    v71 = sub_1D72647CC();
    v151 = 0;
    v72 = swift_allocObject();
    *(v72 + 16) = v71;
    *(v72 + 24) = v144;
    *(v72 + 40) = v151;
    v73 = __swift_project_boxed_opaque_existential_1(v128, *(v128 + 3));
    MEMORY[0x1EEE9AC00](v73, v74);
    MEMORY[0x1EEE9AC00](v75, v76);
    v127[-4] = sub_1D615B4A4;
    v127[-3] = &v127[-6];
    v125 = sub_1D6708B98;
    v126 = v70;
    LOBYTE(v71) = sub_1D5D2F7A4(v138, sub_1D615B49C, v77, sub_1D615B4A4, &v127[-6]);

    if (v71)
    {
      sub_1D5B55CBC();
      sub_1D72647EC();
      v67 = v145;
      v62 = v136;

      v66 = v135;
    }

    else
    {

      v67 = v145;
      v66 = v135;
      v62 = v136;
    }

    v61 = v137;
    v60 = v138;
  }

  else
  {
  }

  sub_1D5D2CFE8(v60, type metadata accessor for FormatVersionRequirement);
  v78 = v134;
  v61(v134, v139, v62);
  swift_storeEnumTagMultiPayload();
  v144 = xmmword_1D7297410;
  v147 = xmmword_1D7297410;
  v148 = 0;
  LOBYTE(v149) = 0;
  v79 = swift_allocObject();
  v81 = v79;
  *(v79 + 16) = v144;
  *(v79 + 32) = v149;
  *(v79 + 40) = v66;
  *(v79 + 48) = v67;
  if ((~v130 & 0xF000000000000007) != 0)
  {
    v143 = v127;
    v149 = v130;
    MEMORY[0x1EEE9AC00](v79, v80);
    v142 = &v127[-6];
    v127[-4] = sub_1D5B4AA6C;
    v127[-3] = 0;
    v125 = sub_1D6708B98;
    v126 = v81;
    v151 = 0;
    v93 = v92;
    v94 = swift_allocObject();
    *(v94 + 16) = v144;
    *(v94 + 32) = v151;
    *(v94 + 40) = v66;
    *(v94 + 48) = v67;
    swift_retain_n();
    sub_1D5CFCFAC(v93);
    v95 = sub_1D72647CC();
    v151 = 0;
    v96 = swift_allocObject();
    *(v96 + 16) = v95;
    *(v96 + 24) = v144;
    *(v96 + 40) = v151;
    v97 = __swift_project_boxed_opaque_existential_1(v128, *(v128 + 3));
    MEMORY[0x1EEE9AC00](v97, v98);
    MEMORY[0x1EEE9AC00](v99, v100);
    v101 = v142;
    v127[-4] = sub_1D615B4A4;
    v127[-3] = v101;
    v125 = sub_1D6708B98;
    v126 = v94;
    v103 = sub_1D5D2F7A4(v78, sub_1D615B49C, v102, sub_1D615B4A4, &v127[-6]);
    v122 = v103;

    if (v122)
    {
      sub_1D5B55CBC();
      sub_1D72647EC();
      v67 = v145;
      v62 = v136;
      v82 = v131;

      v66 = v135;
      v61 = v137;
      goto LABEL_16;
    }

    v67 = v145;
    v66 = v135;
    v62 = v136;
    v61 = v137;
  }

  else
  {
  }

  v82 = v131;
LABEL_16:
  sub_1D5D2CFE8(v134, type metadata accessor for FormatVersionRequirement);
  v61(v132, v139, v62);
  swift_storeEnumTagMultiPayload();
  v144 = xmmword_1D72BAA60;
  v147 = xmmword_1D72BAA60;
  v148 = 0;
  LOBYTE(v149) = 0;
  v83 = swift_allocObject();
  v85 = v83;
  *(v83 + 16) = v144;
  *(v83 + 32) = v149;
  *(v83 + 40) = v66;
  *(v83 + 48) = v67;
  if (v152 == 2)
  {

    v86 = v146;
  }

  else
  {
    v143 = v127;
    LOBYTE(v149) = v152 & 1;
    MEMORY[0x1EEE9AC00](v83, v84);
    v127[-4] = sub_1D5B4AA6C;
    v127[-3] = 0;
    v125 = sub_1D6708B98;
    v126 = v85;
    v151 = 0;
    v104 = swift_allocObject();
    *(v104 + 16) = v144;
    *(v104 + 32) = v151;
    *(v104 + 40) = v66;
    *(v104 + 48) = v67;
    swift_retain_n();
    v105 = sub_1D72647CC();
    v151 = 0;
    v106 = swift_allocObject();
    *(v106 + 16) = v105;
    *(v106 + 24) = v144;
    *(v106 + 40) = v151;
    v107 = __swift_project_boxed_opaque_existential_1(v128, *(v128 + 3));
    MEMORY[0x1EEE9AC00](v107, v108);
    MEMORY[0x1EEE9AC00](v109, v110);
    v127[-4] = sub_1D615B4A4;
    v127[-3] = &v127[-6];
    v125 = sub_1D6708B98;
    v126 = v104;
    v112 = sub_1D5D2F7A4(v132, sub_1D615B49C, v111, sub_1D615B4A4, &v127[-6]);
    v123 = v112;

    v82 = v131;
    if (v123)
    {
      v86 = v146;
      sub_1D72647EC();
      v67 = v145;
      v62 = v136;
      v66 = v135;
    }

    else
    {
      v86 = v146;
      v67 = v145;
      v66 = v135;
      v62 = v136;
    }
  }

  sub_1D5D2CFE8(v132, type metadata accessor for FormatVersionRequirement);

  if (qword_1EDF31F30 != -1)
  {
    swift_once();
  }

  v87 = __swift_project_value_buffer(v62, qword_1EDFFCE20);
  v137(v82, v87, v62);
  swift_storeEnumTagMultiPayload();
  v145 = xmmword_1D72BAA70;
  v147 = xmmword_1D72BAA70;
  v148 = 0;
  LOBYTE(v149) = 0;
  v88 = swift_allocObject();
  v90 = v88;
  *(v88 + 16) = v145;
  *(v88 + 32) = v149;
  *(v88 + 40) = v66;
  *(v88 + 48) = v67;
  v91 = v129;
  if (v129 == 2)
  {
  }

  else
  {
    *&v144 = v127;
    v149 = v129;
    MEMORY[0x1EEE9AC00](v88, v89);
    v127[-4] = sub_1D5B4AA6C;
    v127[-3] = 0;
    v125 = sub_1D6708B98;
    v126 = v90;
    v151 = 0;
    v113 = swift_allocObject();
    *(v113 + 16) = v145;
    *(v113 + 32) = v151;
    *(v113 + 40) = v66;
    *(v113 + 48) = v67;
    swift_retain_n();
    sub_1D5D0A59C(v91);
    v114 = sub_1D72647CC();
    v151 = 0;
    v115 = swift_allocObject();
    *(v115 + 16) = v114;
    *(v115 + 24) = v145;
    *(v115 + 40) = v151;
    v116 = __swift_project_boxed_opaque_existential_1(v128, *(v128 + 3));
    MEMORY[0x1EEE9AC00](v116, v117);
    MEMORY[0x1EEE9AC00](v118, v119);
    v127[-4] = sub_1D615B4A4;
    v127[-3] = &v127[-6];
    v82 = v131;
    v125 = sub_1D66BDA8C;
    v126 = v113;
    v121 = sub_1D5D2F7A4(v131, sub_1D615B49C, v120, sub_1D615B4A4, &v127[-6]);
    v124 = v121;

    if (v124)
    {
      sub_1D66BD5B8();
      v86 = v146;
      sub_1D72647EC();

      sub_1D5D0A58C(v149);
    }

    else
    {

      sub_1D5D0A58C(v149);
      v86 = v146;
    }
  }

  sub_1D5D2CFE8(v82, type metadata accessor for FormatVersionRequirement);
  v58 = v86;
  return sub_1D5D2CFE8(v58, sub_1D66BD964);
}

unint64_t sub_1D65A3A20()
{
  v1 = *v0;
  v2 = 0x726F7463656C6573;
  v3 = 0xD000000000000018;
  v4 = 0xD000000000000012;
  if (v1 != 4)
  {
    v4 = 1885433183;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F4364656C6C6966;
  if (v1 != 1)
  {
    v5 = 0x64656C6C69666E75;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D65A3AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66BF1B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65A3B2C(uint64_t a1)
{
  v2 = sub_1D66BD868();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65A3B68(uint64_t a1)
{
  v2 = sub_1D66BD868();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSponsoredBannerSizing.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D66BDB08();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66BDB9C();
  sub_1D5B58B84(&qword_1EDF24F28, sub_1D66BDB9C);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v25;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D6627E68(0x64656C6C6966, 0xE600000000000000, 0x64656C6C69666E75, 0xE800000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C62940();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726431C();
  v17 = v28;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  v13[1] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSponsoredBannerSizing.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v76 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v68 - v8;
  sub_1D66BDD1C();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v75 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D66BDB9C();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF24F28, sub_1D66BDB9C);
  sub_1D5D2EE70(&type metadata for FormatSponsoredBannerSizing, v19, v21, v16, &type metadata for FormatSponsoredBannerSizing, v19, &type metadata for FormatVersions.DawnburstF, v17, v14, v20, &off_1F51F6BD8);
  if (qword_1EDF31F50 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCE80);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v78 = v23;
  v72 = v25;
  v73 = v22;
  v71 = v24 + 16;
  (v25)(v9);
  v70 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v86 = v15;
  v84 = 0uLL;
  v85 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v83 = 0;
  v29 = swift_allocObject();
  v80 = &v68;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v83;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v31 = v14;
  *&v82 = v9;
  *(&v68 - 4) = sub_1D5B4AA6C;
  *(&v68 - 3) = 0;
  v66 = sub_1D6708B9C;
  v67 = v32;
  v83 = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v83;
  v74 = v27;
  *(v33 + 40) = v27;
  *(v33 + 48) = v28;
  sub_1D66BDDB0();
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EDF02E88, sub_1D66BDDB0);
  swift_retain_n();
  v77 = v35;
  v79 = v36;
  v37 = sub_1D72647CC();
  v83 = 0;
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  *(v38 + 32) = 0;
  *(v38 + 16) = v37;
  *(v38 + 40) = v83;
  v39 = (v31 + *(v11 + 36));
  v40 = __swift_project_boxed_opaque_existential_1(v39, v39[3]);
  MEMORY[0x1EEE9AC00](v40, v41);
  MEMORY[0x1EEE9AC00](v42, v43);
  *(&v68 - 4) = sub_1D615B4A4;
  *(&v68 - 3) = (&v68 - 6);
  v44 = v81;
  v45 = v82;
  v66 = sub_1D6708B9C;
  v67 = v33;
  sub_1D5D2BC70(v82, sub_1D615B49C, v46, sub_1D615B4A4, (&v68 - 6));
  if (v44)
  {
    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v69 = v39;
    v47 = v78;
    v81 = v28;

    v48 = sub_1D5CA1E90();
    sub_1D72647EC();
    v80 = v48;
    sub_1D5D2CFE8(v82, type metadata accessor for FormatVersionRequirement);

    v49 = v76;
    v72(v76, v47, v73);
    swift_storeEnumTagMultiPayload();
    v82 = xmmword_1D728CF30;
    v84 = xmmword_1D728CF30;
    v85 = 0;
    LOBYTE(v86) = 0;
    v50 = swift_allocObject();
    v52 = v50;
    *(v50 + 16) = v82;
    *(v50 + 32) = v86;
    v54 = v74;
    v53 = v75;
    v55 = v81;
    *(v50 + 40) = v74;
    *(v50 + 48) = v55;
    if ((~v53 & 0xF000000000000007) != 0)
    {
      v78 = &v68;
      v86 = v53;
      MEMORY[0x1EEE9AC00](v50, v51);
      *(&v68 - 4) = sub_1D5B4AA6C;
      *(&v68 - 3) = 0;
      v66 = sub_1D6708B9C;
      v67 = v52;
      v83 = 0;
      v56 = swift_allocObject();
      *(v56 + 16) = v82;
      *(v56 + 32) = v83;
      *(v56 + 40) = v54;
      *(v56 + 48) = v55;
      swift_retain_n();
      sub_1D62B48BC(v53);
      v57 = sub_1D72647CC();
      v83 = 0;
      v58 = swift_allocObject();
      *(v58 + 16) = v57;
      *(v58 + 24) = v82;
      *(v58 + 40) = v83;
      v59 = __swift_project_boxed_opaque_existential_1(v69, v69[3]);
      MEMORY[0x1EEE9AC00](v59, v60);
      MEMORY[0x1EEE9AC00](v61, v62);
      *(&v68 - 4) = sub_1D615B4A4;
      *(&v68 - 3) = (&v68 - 6);
      v49 = v76;
      v66 = sub_1D66BDE44;
      v67 = v56;
      v64 = sub_1D5D2F7A4(v76, sub_1D615B49C, v63, sub_1D615B4A4, (&v68 - 6));

      if (v64)
      {
        sub_1D72647EC();
      }

      sub_1D5C92A8C(v86);
    }

    else
    {
    }

    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v31, sub_1D66BDD1C);
}

uint64_t sub_1D65A4784()
{
  v1 = 0x64656C6C69666E75;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656C6C6966;
  }
}

uint64_t sub_1D65A47D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66BF3CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65A480C(uint64_t a1)
{
  v2 = sub_1D66BDC74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65A4848(uint64_t a1)
{
  v2 = sub_1D66BDC74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSponsoredBannerUserInterfaceStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v30 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v27 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();
  }

  else
  {
    v11 = a2;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v14 = v30;
    v15 = v9;
    if (v13)
    {
      v16 = sub_1D726433C();
      v17 = (v16 + 40);
      v18 = *(v16 + 16) + 1;
      while (--v18)
      {
        v19 = v17 + 2;
        v20 = *v17;
        v17 += 2;
        if (v20 >= 4)
        {
          v21 = *(v19 - 3);

          sub_1D5E2D970();
          v10 = swift_allocError();
          *v22 = v21;
          *(v22 + 8) = v20;
          *(v22 + 16) = &unk_1F5117798;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v14 + 8))(v15, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66BDEC0();
    v28 = 0;
    v29 = 0;
    sub_1D726431C();
    if (v27)
    {
      if (v27 == 1)
      {
        (*(v14 + 8))(v15, v6);
        v24 = 1;
      }

      else
      {
        sub_1D5C30060(0, &qword_1EC8873E8, sub_1D66BDF14, &type metadata for FormatSponsoredBannerUserInterfaceStyle, type metadata accessor for FormatUserInterfaceValue);
        v27 = xmmword_1D7279980;
        sub_1D66BDF68();
        sub_1D726431C();
        (*(v14 + 8))(v15, v6);
        v25 = v28;
        v26 = v29;
        v24 = swift_allocObject();
        *(v24 + 16) = v25;
        *(v24 + 24) = v26;
      }
    }

    else
    {
      (*(v14 + 8))(v15, v6);
      v24 = 0;
    }

    *v11 = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSponsoredBannerUserInterfaceStyle.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v34 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v34 - v13;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSponsoredBannerUserInterfaceStyle, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatSponsoredBannerUserInterfaceStyle, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowG, v21, v18, v22, &off_1F51F6B58);
  if (v19)
  {
    if (v19 == 1)
    {
      if (qword_1EDF31F30 != -1)
      {
        swift_once();
      }

      v24 = sub_1D725BD1C();
      v25 = __swift_project_value_buffer(v24, qword_1EDFFCE20);
      (*(*(v24 - 8) + 16))(v10, v25, v24);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D64189B4(1, v10);
      v26 = v10;
    }

    else
    {
      v30 = *(v19 + 16);
      v29 = *(v19 + 24);
      sub_1D5D0A57C(v30);
      sub_1D5D0A57C(v29);
      if (qword_1EDF31F30 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCE20);
      (*(*(v31 - 8) + 16))(v6, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D638604C(2, v30, v29, v6);
      sub_1D5D0A58C(v30);
      sub_1D5D0A58C(v29);
      v26 = v6;
    }
  }

  else
  {
    if (qword_1EDF31F30 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCE20);
    (*(*(v27 - 8) + 16))(v14, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D64189B4(0, v14);
    v26 = v14;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D65A505C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1802658148;
  if (v2 != 1)
  {
    v4 = 0x65746E4972657375;
    v3 = 0xED00006563616672;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746867696CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1802658148;
  if (*a2 != 1)
  {
    v8 = 0x65746E4972657375;
    v7 = 0xED00006563616672;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746867696CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D65A5164()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65A5208()
{
  sub_1D72621EC();
}

uint64_t sub_1D65A5298()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65A5338@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6664A60();
  *a1 = result;
  return result;
}

void sub_1D65A5368(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1802658148;
  if (v2 != 1)
  {
    v5 = 0x65746E4972657375;
    v4 = 0xED00006563616672;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746867696CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatSportsEventBinding.Color.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v26 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();
  }

  else
  {
    v11 = v6;
    v12 = v29;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    v15 = v9;
    if (v14)
    {
      v16 = sub_1D726433C();
      v17 = (v16 + 40);
      v18 = *(v16 + 16) + 1;
      while (--v18)
      {
        v19 = v17 + 2;
        v20 = *v17;
        v17 += 2;
        if (v20 >= 4)
        {
          v21 = *(v19 - 3);

          sub_1D5E2D970();
          v10 = swift_allocError();
          *v22 = v21;
          *(v22 + 8) = v20;
          *(v22 + 16) = &unk_1F51177E8;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D66BDFF8();
    v28 = 0uLL;
    sub_1D726431C();
    if (v26 <= 1u)
    {
      v28 = xmmword_1D7279980;
      if (v26)
      {
        sub_1D5FCE1E0();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v24 = v26;
        v25 = 64;
      }

      else
      {
        sub_1D5FCE1E0();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v24 = v26;
      }
    }

    else if (v26 == 2)
    {
      sub_1D5C30060(0, &qword_1EC887400, sub_1D5FCE114, &type metadata for FormatTagBinding.Color, type metadata accessor for FormatArraySubscript);
      v28 = xmmword_1D7279980;
      sub_1D66BE04C();
      sub_1D726431C();
      (*(v11 + 8))(v15, v5);
      v24 = v26;
      v25 = v27 | 0x80;
    }

    else if (v26 == 3)
    {
      (*(v11 + 8))(v15, v5);
      v24 = 0;
      v25 = -64;
    }

    else
    {
      (*(v11 + 8))(v15, v5);
      v25 = -64;
      v24 = 1;
    }

    *v12 = v24;
    *(v12 + 8) = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSportsEventBinding.Color.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v49 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v48 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v48 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v48 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v48 - v21;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *v2;
  v27 = *(v2 + 8);
  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v30 = sub_1D5C30408();
  v51 = v26;
  sub_1D5D2EE70(&type metadata for FormatSportsEventBinding.Color, &type metadata for FormatCodingKeys, v31, v28, &type metadata for FormatSportsEventBinding.Color, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.SydroF, v29, v26, v30, &off_1F51F6C58);
  v32 = v27 >> 6;
  if (v27 >> 6 > 1)
  {
    if (v32 == 2)
    {
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v37 = sub_1D725BD1C();
      v38 = __swift_project_value_buffer(v37, qword_1EDFFCD68);
      (*(*(v37 - 8) + 16))(v14, v38, v37);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v39 = v27 & 0x3F;
      v35 = v51;
      sub_1D63921A4(2, v50, v39, v14);
      v36 = v14;
    }

    else if (v50 | v27 ^ 0xC0)
    {
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v44 = sub_1D725BD1C();
      v45 = __swift_project_value_buffer(v44, qword_1EDFFCD68);
      v46 = v49;
      (*(*(v44 - 8) + 16))(v49, v45, v44);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v35 = v51;
      sub_1D641BA98(4, v46);
      v36 = v46;
    }

    else
    {
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v42 = sub_1D725BD1C();
      v43 = __swift_project_value_buffer(v42, qword_1EDFFCD68);
      (*(*(v42 - 8) + 16))(v10, v43, v42);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v35 = v51;
      sub_1D641BA98(3, v10);
      v36 = v10;
    }
  }

  else if (v32)
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v40 = sub_1D725BD1C();
    v41 = __swift_project_value_buffer(v40, qword_1EDFFCD68);
    (*(*(v40 - 8) + 16))(v18, v41, v40);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v35 = v51;
    sub_1D6392010(1, v50, v18);
    v36 = v18;
  }

  else
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCD68);
    (*(*(v33 - 8) + 16))(v22, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v35 = v51;
    sub_1D6392010(0, v50, v22);
    v36 = v22;
  }

  sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v35, sub_1D5D30DC4);
}

uint64_t FormatSportsEventBinding.Command.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    v11 = v7;
    v12 = v32;
    v13 = a1[3];
    v27 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v13);
    v14 = sub_1D7264AFC();
    LOBYTE(v13) = Dictionary<>.errorOnUnknownKeys.getter(v14);

    if (v13)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F5117838;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v27;
          goto LABEL_9;
        }
      }
    }

    sub_1D66BE0DC();
    v29 = 0uLL;
    sub_1D726431C();
    if (v28)
    {
      if (v28 == 1)
      {
        v28 = xmmword_1D7279980;
        sub_1D5C6E160();
        sub_1D726431C();
        a1 = v27;
        (*(v11 + 8))(v10, v6);
        v23 = v29;
        v24 = v30;
        v25 = 64;
      }

      else
      {
        sub_1D5C30060(0, &qword_1EC887418, sub_1D66BE130, &type metadata for FormatTagBinding.Command, type metadata accessor for FormatArraySubscript);
        v28 = xmmword_1D7279980;
        sub_1D66BE184();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v23 = v29;
        v24 = v30;
        v25 = v31 | 0x80;
        a1 = v27;
      }
    }

    else
    {
      v28 = xmmword_1D7279980;
      sub_1D5C6E160();
      sub_1D726431C();
      a1 = v27;
      (*(v11 + 8))(v10, v6);
      v25 = 0;
      v23 = v29;
      v24 = v30;
    }

    *v12 = v23;
    *(v12 + 16) = v24;
    *(v12 + 24) = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSportsEventBinding.Command.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v34 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v34 - v13;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v20 = *(v1 + 16);
  v34 = *(v1 + 8);
  v35 = v20;
  v21 = *(v1 + 24);
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v24 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSportsEventBinding.Command, &type metadata for FormatCodingKeys, v25, v22, &type metadata for FormatSportsEventBinding.Command, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.SydroF, v23, v18, v24, &off_1F51F6C58);
  if (v21 >> 6)
  {
    if (v21 >> 6 == 1)
    {
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v26 = sub_1D725BD1C();
      v27 = __swift_project_value_buffer(v26, qword_1EDFFCD68);
      (*(*(v26 - 8) + 16))(v10, v27, v26);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6391924(1, v19, v34, v35, v10);
      v28 = v10;
    }

    else
    {
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCD68);
      (*(*(v31 - 8) + 16))(v6, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6391ABC(2, v19, v34, v35, v21 & 0x3F, v6);
      v28 = v6;
    }
  }

  else
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v29 = sub_1D725BD1C();
    v30 = __swift_project_value_buffer(v29, qword_1EDFFCD68);
    (*(*(v29 - 8) + 16))(v14, v30, v29);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6391924(0, v19, v34, v35, v14);
    v28 = v14;
  }

  sub_1D5D2CFE8(v28, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t FormatSportsEventBinding.DateTime.encode(to:)(void *a1)
{
  v2 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSportsEventBinding.DateTime, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatSportsEventBinding.DateTime, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v11, v9, v12, &off_1F51F6CF8);
  if (qword_1EDF31E80 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCCA8);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D641B954(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatSportsEventBinding.Image.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    v11 = v7;
    v12 = v35;
    v13 = a1[3];
    v29 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v13);
    v14 = sub_1D7264AFC();
    LOBYTE(v13) = Dictionary<>.errorOnUnknownKeys.getter(v14);

    if (v13)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F51178D8;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v29;
          goto LABEL_9;
        }
      }
    }

    sub_1D66BE268();
    v31 = 0;
    v32 = 0;
    sub_1D726431C();
    if (v30)
    {
      if (v30 == 1)
      {
        v30 = xmmword_1D7279980;
        sub_1D668F6D0();
        sub_1D726431C();
        a1 = v29;
        (*(v11 + 8))(v10, v6);
        v23 = 0;
        v24 = 0;
        v25 = v31;
        v26 = v33;
        v27 = v32 | 2;
      }

      else
      {
        sub_1D5C30060(0, &qword_1EC887440, sub_1D66BE2BC, &type metadata for FormatTagBinding.Image, type metadata accessor for FormatArraySubscript);
        v30 = xmmword_1D7279980;
        sub_1D66BE310();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v25 = v31;
        v27 = v32;
        v26 = v33;
        v24 = 1;
        v23 = v34;
        a1 = v29;
      }
    }

    else
    {
      v30 = xmmword_1D7279980;
      sub_1D668F6D0();
      sub_1D726431C();
      a1 = v29;
      (*(v11 + 8))(v10, v6);
      v23 = 0;
      v24 = 0;
      v25 = v31;
      v27 = v32;
      v26 = v33;
    }

    *v12 = v25;
    *(v12 + 8) = v27;
    *(v12 + 16) = v26;
    *(v12 + 32) = v23;
    *(v12 + 40) = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSportsEventBinding.Image.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v39 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v39 - v13;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v1 + 8);
  v21 = *(v1 + 16);
  v20 = *(v1 + 24);
  v40 = *v1;
  v41 = v21;
  v42 = v20;
  v39 = *(v1 + 32);
  v22 = *(v1 + 40);
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  v25 = sub_1D5C30408();
  v43 = v18;
  sub_1D5D2EE70(&type metadata for FormatSportsEventBinding.Image, &type metadata for FormatCodingKeys, v26, v23, &type metadata for FormatSportsEventBinding.Image, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.SydroF, v24, v18, v25, &off_1F51F6C58);
  if (v22)
  {
    v27 = 2;
  }

  else
  {
    v27 = 0;
  }

  v28 = v27 & 0xFFFFFFFE | (v19 >> 1) & 1;
  if (v28)
  {
    if (v28 == 1)
    {
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v29 = sub_1D725BD1C();
      v30 = __swift_project_value_buffer(v29, qword_1EDFFCD68);
      (*(*(v29 - 8) + 16))(v10, v30, v29);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v31 = v43;
      sub_1D6391C98(1, v40, v19 & 0xFFFFFFFFFFFFFFFDLL, v41, v42, v10);
      v32 = v10;
    }

    else
    {
      *&v44 = v40;
      *(&v44 + 1) = v19;
      v45 = v41;
      v46 = v42;
      v47 = v39;
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v37 = sub_1D725BD1C();
      v38 = __swift_project_value_buffer(v37, qword_1EDFFCD68);
      (*(*(v37 - 8) + 16))(v6, v38, v37);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v31 = v43;
      sub_1D6391E30(2, &v44, v6);
      v32 = v6;
    }

    sub_1D5D2CFE8(v32, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CFE8(v31, sub_1D5D30DC4);
  }

  else
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCD68);
    (*(*(v33 - 8) + 16))(v14, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v35 = v43;
    sub_1D6391C98(0, v40, v19, v41, v42, v14);
    sub_1D5D2CFE8(v14, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CFE8(v35, sub_1D5D30DC4);
  }
}

uint64_t FormatSportsEventBinding.Text.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v30 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    v11 = v7;
    v12 = v30;
    v13 = a1[3];
    v26 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v13);
    v14 = sub_1D7264AFC();
    LOBYTE(v13) = Dictionary<>.errorOnUnknownKeys.getter(v14);

    if (v13)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F5117928;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v26;
          goto LABEL_9;
        }
      }
    }

    sub_1D66BE3A0();
    v29 = 0uLL;
    sub_1D726431C();
    if (v27)
    {
      if (v27 == 1)
      {
        v29 = xmmword_1D7279980;
        sub_1D5CA1374();
        sub_1D726431C();
        a1 = v26;
        (*(v11 + 8))(v10, v6);
        v23 = v27;
        v24 = 64;
      }

      else
      {
        sub_1D5C30060(0, &qword_1EC887460, sub_1D66BE3F4, &type metadata for FormatTagBinding.Text, type metadata accessor for FormatArraySubscript);
        v29 = xmmword_1D7279980;
        sub_1D66BE448();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        a1 = v26;
        v23 = v27;
        v24 = v28 | 0x80;
      }
    }

    else
    {
      v29 = xmmword_1D7279980;
      sub_1D5CA1374();
      sub_1D726431C();
      a1 = v26;
      (*(v11 + 8))(v10, v6);
      v24 = 0;
      v23 = v27;
    }

    *v12 = v23;
    *(v12 + 8) = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D65A7790(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, char *), void (*a4)(uint64_t, uint64_t, void, char *))
{
  v38 = a4;
  v39 = a3;
  v6 = v4;
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v37 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v37 - v18;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *v6;
  v24 = *(v6 + 8);
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v27 = sub_1D5C30408();
  sub_1D5D2EE70(a2, &type metadata for FormatCodingKeys, v28, v25, a2, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.SydroF, v26, v23, v27, &off_1F51F6C58);
  if (v24 >> 6)
  {
    if (v24 >> 6 == 1)
    {
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v29 = sub_1D725BD1C();
      v30 = __swift_project_value_buffer(v29, qword_1EDFFCD68);
      (*(*(v29 - 8) + 16))(v15, v30, v29);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v39(1, v40, v15);
      v31 = v15;
    }

    else
    {
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v34 = sub_1D725BD1C();
      v35 = __swift_project_value_buffer(v34, qword_1EDFFCD68);
      (*(*(v34 - 8) + 16))(v11, v35, v34);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v38(2, v40, v24 & 0x3F, v11);
      v31 = v11;
    }
  }

  else
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v32 = sub_1D725BD1C();
    v33 = __swift_project_value_buffer(v32, qword_1EDFFCD68);
    (*(*(v32 - 8) + 16))(v19, v33, v32);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v39(0, v40, v19);
    v31 = v19;
  }

  sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v23, sub_1D5D30DC4);
}

uint64_t FormatStateMachineActionEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  sub_1D66BE4D8();
  v7 = v6;
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66BE56C();
  sub_1D5B58B84(&qword_1EC8874A0, sub_1D66BE56C);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v35;
  v14 = v7;
  if (v12)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v26 = *(v17 - 2);
      v25 = *(v17 - 1);

      v27 = sub_1D6627E68(1701667182, 0xE400000000000000, 0x656449746E657665, 0xEF7265696669746ELL);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v28 = v26;
      *(v28 + 8) = v25;
      *(v28 + 16) = v27;
      *(v28 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v10, v7);
      goto LABEL_10;
    }

LABEL_7:
  }

  v33 = 0uLL;
  v34 = 0;
  v18 = sub_1D72642BC();
  v20 = v19;
  v21 = v13;
  v22 = v18;
  v33 = xmmword_1D728CF30;
  v34 = 0;
  v23 = sub_1D72642BC();
  v24 = v14;
  v30 = v23;
  v32 = v31;
  (*(v21 + 8))(v10, v24);
  *a2 = v22;
  a2[1] = v20;
  a2[2] = v30;
  a2[3] = v32;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatStateMachineActionEvent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v75 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v65 - v8;
  sub_1D66BE6EC();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  v17 = v1[2];
  v73 = v1[3];
  v74 = v17;
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D66BE56C();
  v21 = v20;
  v22 = sub_1D5B58B84(&qword_1EC8874A0, sub_1D66BE56C);
  sub_1D5D2EE70(&type metadata for FormatStateMachineActionEvent, v21, v23, v18, &type metadata for FormatStateMachineActionEvent, v21, &type metadata for FormatVersions.JazzkonG, v19, v14, v22, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD18);
  v26 = *(v24 - 8);
  v70 = *(v26 + 16);
  v71 = v25;
  v76 = v24;
  v69 = v26 + 16;
  v70(v9);
  v68 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v84 = v15;
  v85 = v16;
  v82 = 0uLL;
  v83 = 0;
  v27 = &v14[*(v11 + 44)];
  v79 = v9;
  v28 = *v27;
  v29 = *(v27 + 1);
  v86 = 0;
  v30 = swift_allocObject();
  v80 = &v65;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v86;
  *(v30 + 40) = v28;
  *(v30 + 48) = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  *(&v65 - 4) = sub_1D5B4AA6C;
  *(&v65 - 3) = 0;
  v63 = sub_1D6708BA0;
  v64 = v32;
  v86 = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v86;
  v72 = v28;
  *(v33 + 40) = v28;
  *(v33 + 48) = v29;
  sub_1D66BE780();
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EC8874B8, sub_1D66BE780);
  swift_retain_n();
  v77 = v36;
  v78 = v35;
  v37 = sub_1D72647CC();
  v86 = 0;
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  *(v38 + 32) = 0;
  *(v38 + 16) = v37;
  *(v38 + 40) = v86;
  v39 = &v14[*(v11 + 36)];
  v40 = __swift_project_boxed_opaque_existential_1(v39, *(v39 + 3));
  MEMORY[0x1EEE9AC00](v40, v41);
  MEMORY[0x1EEE9AC00](v42, v43);
  *(&v65 - 4) = sub_1D615B4A4;
  *(&v65 - 3) = (&v65 - 6);
  v44 = v79;
  v63 = sub_1D66BE814;
  v64 = v33;
  v45 = v81;
  sub_1D5D2BC70(v79, sub_1D615B49C, v46, sub_1D615B4A4, (&v65 - 6));
  if (v45)
  {
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v66 = v39;
    v47 = v76;
    v67 = v29;

    sub_1D72647EC();
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);

    v49 = v75;
    (v70)(v75, v71, v47);
    swift_storeEnumTagMultiPayload();
    v84 = v74;
    v85 = v73;
    v81 = xmmword_1D728CF30;
    v82 = xmmword_1D728CF30;
    v83 = 0;
    v86 = 0;
    v50 = swift_allocObject();
    v80 = &v65;
    *(v50 + 16) = v81;
    *(v50 + 32) = v86;
    v51 = v72;
    v52 = v67;
    *(v50 + 40) = v72;
    *(v50 + 48) = v52;
    MEMORY[0x1EEE9AC00](v50, v53);
    *(&v65 - 4) = sub_1D5B4AA6C;
    *(&v65 - 3) = 0;
    v63 = sub_1D6708BA0;
    v64 = v54;
    v86 = 0;
    v55 = swift_allocObject();
    *(v55 + 16) = v81;
    *(v55 + 32) = v86;
    *(v55 + 40) = v51;
    *(v55 + 48) = v52;
    swift_retain_n();
    v56 = sub_1D72647CC();
    v86 = 0;
    v57 = swift_allocObject();
    *(v57 + 16) = v56;
    *(v57 + 24) = v81;
    *(v57 + 40) = v86;
    v58 = __swift_project_boxed_opaque_existential_1(v66, *(v66 + 3));
    MEMORY[0x1EEE9AC00](v58, v59);
    MEMORY[0x1EEE9AC00](v60, v61);
    *(&v65 - 4) = sub_1D615B4A4;
    *(&v65 - 3) = (&v65 - 6);
    v63 = sub_1D6708BA0;
    v64 = v55;
    sub_1D5D2BC70(v49, sub_1D615B49C, v62, sub_1D615B4A4, (&v65 - 6));

    sub_1D72647EC();
    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D66BE6EC);
}

uint64_t sub_1D65A8768()
{
  v1 = 0x656449746E657665;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1D65A87C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66BF4E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65A87F8(uint64_t a1)
{
  v2 = sub_1D66BE644();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65A8834(uint64_t a1)
{
  v2 = sub_1D66BE644();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatStateMachineEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  sub_1D66BE890();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E19C04();
  sub_1D5B58B84(&qword_1EDF25188, sub_1D5E19C04);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v7;
  v12 = v35;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_1D7264AFC();
  v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

  v15 = v10;
  if (v14)
  {
    v16 = sub_1D726433C();
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = (v16 + 48);
      while (*v18 != 1)
      {
        v18 += 24;
        if (!--v17)
        {
          goto LABEL_7;
        }
      }

      v24 = *(v18 - 2);
      v23 = *(v18 - 1);

      v25 = sub_1D6623C70();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v26 = v24;
      *(v26 + 8) = v23;
      *(v26 + 16) = v25;
      *(v26 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v11 + 8))(v15, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  v33 = 0uLL;
  v34 = 0;
  v19 = sub_1D72642BC();
  v21 = v20;
  v22 = v19;
  v32 = sub_1D5C95A1C(v10, 1, 0, 0, sub_1D5C8CD38, sub_1D66BE890, &qword_1EDF3BE00, sub_1D5C8CD38);
  v33 = xmmword_1D7297410;
  v34 = 0;
  v28 = sub_1D72642BC();
  v30 = v29;
  (*(v11 + 8))(v10, v6);
  *v12 = v22;
  v12[1] = v21;
  v12[2] = v32;
  v12[3] = v28;
  v12[4] = v30;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatStateMachineEvent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v85 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v86 = &v83 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v83 - v11;
  sub_1D66BE924();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v19 = v1[1];
  v20 = v1[3];
  v93 = v1[2];
  v84 = v20;
  v83 = v1[4];
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D5E19C04();
  v24 = v23;
  v25 = sub_1D5B58B84(&qword_1EDF25188, sub_1D5E19C04);
  sub_1D5D2EE70(&type metadata for FormatStateMachineEvent, v24, v26, v21, &type metadata for FormatStateMachineEvent, v24, &type metadata for FormatVersions.JazzkonG, v22, v17, v25, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v27 = sub_1D725BD1C();
  v28 = __swift_project_value_buffer(v27, qword_1EDFFCD18);
  v29 = *(v27 - 8);
  v30 = *(v29 + 16);
  v90 = v28;
  v91 = v27;
  v88 = v29 + 16;
  v89 = v30;
  (v30)(v12);
  v87 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v102 = v18;
  v103 = v19;
  v100 = 0uLL;
  v101 = 0;
  v31 = &v17[*(v14 + 44)];
  v32 = *v31;
  v33 = *(v31 + 1);
  v104 = 0;
  v34 = swift_allocObject();
  *&v97 = &v83;
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v104;
  *(v34 + 40) = v32;
  *(v34 + 48) = v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v96 = (&v83 - 6);
  *(&v83 - 4) = sub_1D5B4AA6C;
  *(&v83 - 3) = 0;
  v81 = sub_1D6708BA4;
  v82 = v36;
  v104 = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v104;
  v92 = v32;
  *(v37 + 40) = v32;
  *(v37 + 48) = v33;
  sub_1D5E19BC8(0);
  v39 = v38;
  v40 = sub_1D5B58B84(&qword_1EDF03148, sub_1D5E19BC8);
  swift_retain_n();
  v94 = v39;
  v95 = v40;
  v41 = sub_1D72647CC();
  v104 = 0;
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  *(v42 + 32) = 0;
  *(v42 + 16) = v41;
  *(v42 + 40) = v104;
  v43 = *(v14 + 36);
  v44 = v12;
  v98 = v17;
  v45 = &v17[v43];
  v46 = __swift_project_boxed_opaque_existential_1(&v17[v43], *&v17[v43 + 24]);
  MEMORY[0x1EEE9AC00](v46, v47);
  MEMORY[0x1EEE9AC00](v48, v49);
  v50 = v96;
  *(&v83 - 4) = sub_1D615B4A4;
  *(&v83 - 3) = v50;
  v81 = sub_1D6708BA4;
  v82 = v37;
  v51 = v99;
  sub_1D5D2BC70(v44, sub_1D615B49C, v52, sub_1D615B4A4, (&v83 - 6));
  if (v51)
  {
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);

    v53 = v98;
  }

  else
  {
    v96 = v45;
    *&v99 = v33;

    v53 = v98;
    sub_1D72647EC();
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);

    v54 = v86;
    v89(v86, v90, v91);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v100) = 0;
    v55 = swift_allocObject();
    v97 = xmmword_1D728CF30;
    *(v55 + 16) = xmmword_1D728CF30;
    *(v55 + 32) = v100;
    *(v55 + 40) = v92;
    *(v55 + 48) = v99;

    v56 = sub_1D72647CC();
    LOBYTE(v100) = 0;
    v57 = swift_allocObject();
    *(v57 + 16) = v56;
    *(v57 + 24) = v97;
    *(v57 + 40) = v100;
    v58 = __swift_project_boxed_opaque_existential_1(v96, *(v96 + 3));
    *&v97 = &v83;
    MEMORY[0x1EEE9AC00](v58, v59);
    MEMORY[0x1EEE9AC00](v60, v61);
    *(&v83 - 4) = sub_1D5B4AA6C;
    *(&v83 - 3) = 0;
    v81 = sub_1D66BE9B8;
    v82 = v55;
    LOBYTE(v56) = sub_1D5D2F7A4(v54, sub_1D615B49C, v62, sub_1D615B4A4, (&v83 - 6));

    if (v56)
    {
      sub_1D5E07690(v93, v53, 1, 0, 0);
      v63 = v99;
      v64 = v91;
      v65 = v92;
      v66 = v90;
      *&v97 = 0;
    }

    else
    {
      *&v97 = 0;
      v65 = v92;
      v63 = v99;
      v66 = v90;
      v64 = v91;
    }

    sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);

    v67 = v85;
    v89(v85, v66, v64);
    swift_storeEnumTagMultiPayload();
    v102 = v84;
    v103 = v83;
    v99 = xmmword_1D7297410;
    v100 = xmmword_1D7297410;
    v101 = 0;
    v104 = 0;
    v68 = swift_allocObject();
    v93 = &v83;
    *(v68 + 16) = v99;
    *(v68 + 32) = v104;
    *(v68 + 40) = v65;
    *(v68 + 48) = v63;
    MEMORY[0x1EEE9AC00](v68, v69);
    *(&v83 - 4) = sub_1D5B4AA6C;
    *(&v83 - 3) = 0;
    v81 = sub_1D6708BA4;
    v82 = v70;
    v104 = 0;
    v71 = swift_allocObject();
    *(v71 + 16) = v99;
    *(v71 + 32) = v104;
    *(v71 + 40) = v65;
    *(v71 + 48) = v63;
    swift_retain_n();
    v72 = sub_1D72647CC();
    v104 = 0;
    v73 = swift_allocObject();
    *(v73 + 16) = v72;
    *(v73 + 24) = v99;
    *(v73 + 40) = v104;
    v74 = __swift_project_boxed_opaque_existential_1(v96, *(v96 + 3));
    MEMORY[0x1EEE9AC00](v74, v75);
    MEMORY[0x1EEE9AC00](v76, v77);
    *(&v83 - 4) = sub_1D615B4A4;
    *(&v83 - 3) = (&v83 - 6);
    v81 = sub_1D6708BA4;
    v82 = v71;
    v78 = v97;
    sub_1D5D2BC70(v67, sub_1D615B49C, v79, sub_1D615B4A4, (&v83 - 6));
    if (v78)
    {
      sub_1D5D2CFE8(v67, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D72647EC();
      sub_1D5D2CFE8(v67, type metadata accessor for FormatVersionRequirement);
    }
  }

  return sub_1D5D2CFE8(v53, sub_1D66BE924);
}

uint64_t sub_1D65A9758()
{
  v1 = 0x696669746E656469;
  v2 = 0x65746174536F74;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x746174536D6F7266;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D65A97D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66BF600(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65A980C(uint64_t a1)
{
  v2 = sub_1D5E19CDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65A9848(uint64_t a1)
{
  v2 = sub_1D5E19CDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatStateMachineEventValue.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D66BEA34();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66BEAC8();
  sub_1D5B58B84(&qword_1EDF24ED8, sub_1D66BEAC8);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v27;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v21 = *(v16 - 2);
      v20 = *(v16 - 1);

      v22 = sub_1D6628490(0x696669746E656469, 0xEA00000000007265);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  v25[1] = 0;
  v25[2] = 0;
  v26 = 0;
  v17 = sub_1D72642BC();
  v19 = v18;
  (*(v7 + 8))(v10, v6);
  *v13 = v17;
  v13[1] = v19;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatStateMachineEventValue.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66BEC48();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = v1[1];
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D66BEAC8();
  v17 = v16;
  v18 = sub_1D5B58B84(&qword_1EDF24ED8, sub_1D66BEAC8);
  sub_1D5D2EE70(&type metadata for FormatStateMachineEventValue, v17, v19, v14, &type metadata for FormatStateMachineEventValue, v17, &type metadata for FormatVersions.JazzkonG, v15, v11, v18, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCD18);
  (*(*(v20 - 8) + 16))(v6, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v44 = v12;
  v45 = v13;
  v42[3] = 0;
  v42[4] = 0;
  v43 = 0;
  v22 = &v11[*(v8 + 44)];
  v24 = *v22;
  v23 = *(v22 + 1);
  v46 = 0;
  v25 = swift_allocObject();
  v42[1] = v42;
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = v46;
  *(v25 + 40) = v24;
  *(v25 + 48) = v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v42[-4] = sub_1D5B4AA6C;
  v42[-3] = 0;
  v40 = sub_1D67088B4;
  v41 = v27;
  v46 = 0;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v46;
  *(v28 + 40) = v24;
  *(v28 + 48) = v23;
  sub_1D66BECDC();
  v30 = v29;
  sub_1D5B58B84(&qword_1EDF02E38, sub_1D66BECDC);
  swift_retain_n();
  v42[0] = v30;
  v31 = sub_1D72647CC();
  v46 = 0;
  v32 = swift_allocObject();
  *(v32 + 24) = 0;
  *(v32 + 32) = 0;
  *(v32 + 16) = v31;
  *(v32 + 40) = v46;
  v33 = __swift_project_boxed_opaque_existential_1(&v11[*(v8 + 36)], *&v11[*(v8 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v33, v34);
  MEMORY[0x1EEE9AC00](v35, v36);
  v42[-4] = sub_1D615B4A4;
  v42[-3] = &v42[-6];
  v40 = sub_1D67088B4;
  v41 = v28;
  v37 = v42[2];
  sub_1D5D2BC70(v6, sub_1D615B49C, v38, sub_1D615B4A4, &v42[-6]);
  if (v37)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D66BEC48);
}

uint64_t sub_1D65AA06C(uint64_t a1)
{
  v2 = sub_1D66BEBA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65AA0A8(uint64_t a1)
{
  v2 = sub_1D66BEBA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65AA0E4()
{
  v1 = 0x65706F6373;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x536C616974696E69;
  }
}

uint64_t sub_1D65AA13C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66BF774(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65AA174(uint64_t a1)
{
  v2 = sub_1D665D8C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65AA1B0(uint64_t a1)
{
  v2 = sub_1D665D8C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatStateMachineInput.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v32;
    if (v12)
    {
      v14 = sub_1D726433C();
      v15 = (v14 + 40);
      v16 = *(v14 + 16) + 1;
      while (--v16)
      {
        v17 = v15 + 2;
        v18 = *v15;
        v15 += 2;
        if (v18 >= 4)
        {
          v19 = *(v17 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v20 = v19;
          *(v20 + 8) = v18;
          *(v20 + 16) = &unk_1F5117978;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66BEDD4();
    v27 = 0;
    v28 = 0;
    sub_1D726431C();
    v22 = v31;
    if (v31)
    {
      v31 = xmmword_1D7279980;
      sub_1D5F84ED8();
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v23 = 0;
      v24 = v27;
      v25 = v28;
      v26 = v29;
    }

    else
    {
      sub_1D5C80140(0, &qword_1EDF2E1D8, sub_1D66BEE28);
      v31 = xmmword_1D7279980;
      sub_1D66BEE7C();
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v24 = v27;
      v25 = v28;
      v26 = v29;
      v23 = v30;
    }

    *v13 = v24;
    *(v13 + 8) = v25;
    *(v13 + 16) = v26;
    *(v13 + 24) = v23;
    *(v13 + 32) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatStateMachineInput.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v29 - v9;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v29 = *(v1 + 8);
  v30 = v15;
  v16 = *(v1 + 16);
  v17 = *(v1 + 24);
  v18 = *(v1 + 32);
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v21 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatStateMachineInput, &type metadata for FormatCodingKeys, v22, v19, &type metadata for FormatStateMachineInput, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonG, v20, v14, v21, &off_1F51F6BF8);
  if (v18)
  {
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCD18);
    (*(*(v23 - 8) + 16))(v6, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6393680(1, v30, v29, v16 & 1, v6);
    v25 = v6;
  }

  else
  {
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v26 = sub_1D725BD1C();
    v27 = __swift_project_value_buffer(v26, qword_1EDFFCD18);
    (*(*(v26 - 8) + 16))(v10, v27, v26);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63934B4(0, v30, v29, v16, v17, v10);
    v25 = v10;
  }

  sub_1D5D2CFE8(v25, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D65AA8D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656E696C6E69;
  }

  else
  {
    v3 = 0x646E616D6D6F63;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x656E696C6E69;
  }

  else
  {
    v5 = 0x646E616D6D6F63;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D65AA97C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65AA9FC()
{
  sub_1D72621EC();
}

uint64_t sub_1D65AAA68()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D65AAAF0(uint64_t *a1@<X8>)
{
  v2 = 0x646E616D6D6F63;
  if (*v1)
  {
    v2 = 0x656E696C6E69;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatStateViewNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v308 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v313 = &v308 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v314 = &v308 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v315 = &v308 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v316 = &v308 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v317 = &v308 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v318 = &v308 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v319 = &v308 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v320 = &v308 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v321 = &v308 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  *&v326 = &v308 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  *&v329 = &v308 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v308 - v44;
  sub_1D66C0738();
  *&v330 = v46;
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v308 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a1[3];
  v51 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v50);
  sub_1D5E19A14();
  v53 = v52;
  v54 = sub_1D5B58B84(&qword_1EDF25478, sub_1D5E19A14);
  sub_1D5D2EE70(v4, v53, v55, v50, v4, v53, &type metadata for FormatVersions.JazzkonG, v51, v49, v54, &off_1F51F6BF8);
  swift_beginAccess();
  v56 = v2[2];
  v57 = v2[3];
  v58 = qword_1EDF31EA8;

  if (v58 != -1)
  {
    swift_once();
  }

  v59 = sub_1D725BD1C();
  v60 = __swift_project_value_buffer(v59, qword_1EDFFCD18);
  v61 = *(v59 - 8);
  v62 = *(v61 + 16);
  v328 = v60;
  v325 = (v61 + 16);
  v62(v45);
  v63 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v64 = sub_1D725895C();
  v65 = (*(*(v64 - 8) + 48))(v8, 1, v64);
  v324 = v59;
  v323 = v62;
  v322 = v2;
  v327 = v63;
  if (v65 == 1)
  {
    v310 = v56;
    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v66 = v330;
    v67 = &v49[*(v330 + 44)];
    v69 = *v67;
    v68 = *(v67 + 1);
    LOBYTE(v332) = 0;
    v70 = swift_allocObject();
    *(v70 + 16) = 0;
    *(v70 + 24) = 0;
    *(v70 + 32) = v332;
    *(v70 + 40) = v69;
    *(v70 + 48) = v68;
    sub_1D5E199D8(0);
    v72 = v71;
    v73 = sub_1D5B58B84(&qword_1EDF034B8, sub_1D5E199D8);

    *&v312 = v72;
    v74 = sub_1D72647CC();
    LOBYTE(v332) = 0;
    v75 = swift_allocObject();
    *(v75 + 24) = 0;
    *(v75 + 32) = 0;
    *(v75 + 16) = v74;
    *(v75 + 40) = v332;
    v76 = __swift_project_boxed_opaque_existential_1(&v49[*(v66 + 36)], *&v49[*(v66 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v76, v77);
    MEMORY[0x1EEE9AC00](v78, v79);
    *(&v308 - 4) = sub_1D5B4AA6C;
    *(&v308 - 3) = 0;
    v306 = sub_1D66C07CC;
    v307 = v70;
    v80 = v331;
    v82 = sub_1D5D2F7A4(v45, sub_1D615B49C, v81, sub_1D615B4A4, (&v308 - 6));
    if (v80)
    {
      sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v49, sub_1D66C0738);
    }

    v130 = v82;
    v331 = v73;

    if (v130)
    {
      v332 = 0uLL;
      LOBYTE(v333) = 0;
      v345 = v310;
      v346 = v57;
      sub_1D72647EC();
      v84 = 0;

      sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);
      v59 = v324;
      v85 = v328;
      v2 = v322;
      v62 = v323;
      goto LABEL_8;
    }

    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);

    v84 = 0;
    v2 = v322;
    v59 = v324;
    v62 = v323;
  }

  else
  {
    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v84 = v331;
  }

  v85 = v328;
LABEL_8:
  swift_beginAccess();
  v86 = v2[4];
  (v62)(v329, v85, v59);
  swift_storeEnumTagMultiPayload();
  if (((v86 >> 59) & 0x1E | (v86 >> 2) & 1) == 0x16 && v86 == 0xB000000000000008)
  {
    sub_1D5D2CFE8(v329, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v112 = v330;
    v113 = &v49[*(v330 + 44)];
    v115 = *v113;
    v114 = *(v113 + 1);
    LOBYTE(v332) = 0;
    v116 = swift_allocObject();
    v312 = xmmword_1D728CF30;
    *(v116 + 16) = xmmword_1D728CF30;
    *(v116 + 32) = v332;
    *(v116 + 40) = v115;
    *(v116 + 48) = v114;
    sub_1D5C82CD8(v86);
    sub_1D5E199D8(0);
    v118 = v117;
    sub_1D5B58B84(&qword_1EDF034B8, sub_1D5E199D8);
    v331 = v84;

    v310 = v118;
    v119 = sub_1D72647CC();
    LOBYTE(v332) = 0;
    v120 = swift_allocObject();
    *(v120 + 16) = v119;
    *(v120 + 24) = v312;
    *(v120 + 40) = v332;
    v121 = __swift_project_boxed_opaque_existential_1(&v49[*(v112 + 36)], *&v49[*(v112 + 36) + 24]);
    v122 = v49;
    MEMORY[0x1EEE9AC00](v121, v123);
    MEMORY[0x1EEE9AC00](v124, v125);
    *(&v308 - 4) = sub_1D5B4AA6C;
    *(&v308 - 3) = 0;
    v306 = sub_1D6708BA8;
    v307 = v116;
    v126 = v329;
    v127 = v331;
    v129 = sub_1D5D2F7A4(v329, sub_1D615B49C, v128, sub_1D615B4A4, (&v308 - 6));
    v331 = v127;
    if (v127)
    {

      sub_1D5C92A8C(v86);
      sub_1D5D2CFE8(v126, type metadata accessor for FormatVersionRequirement);
LABEL_33:
      v111 = v122;
      return sub_1D5D2CFE8(v111, sub_1D66C0738);
    }

    v133 = v129;

    if (v133)
    {
      v332 = v312;
      LOBYTE(v333) = 0;
      v344 = v86;
      sub_1D5CA1E90();
      v134 = v331;
      sub_1D72647EC();
      v84 = v134;
      v2 = v322;
      v59 = v324;
      v135 = v329;
      if (v134)
      {
        sub_1D5C92A8C(v344);
        sub_1D5D2CFE8(v135, type metadata accessor for FormatVersionRequirement);
LABEL_45:
        v111 = v49;
        return sub_1D5D2CFE8(v111, sub_1D66C0738);
      }

      sub_1D5C92A8C(v344);
      sub_1D5D2CFE8(v135, type metadata accessor for FormatVersionRequirement);
      v62 = v323;
    }

    else
    {
      sub_1D5C92A8C(v86);
      sub_1D5D2CFE8(v329, type metadata accessor for FormatVersionRequirement);
      v2 = v322;
      v59 = v324;
      v62 = v323;
      v84 = v331;
    }
  }

  v331 = v84;
  v310 = v2[5];
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v87 = __swift_project_value_buffer(v59, qword_1EDFFCD68);
  (v62)(v326, v87, v59);
  swift_storeEnumTagMultiPayload();
  v329 = xmmword_1D7297410;
  v332 = xmmword_1D7297410;
  LOBYTE(v333) = 0;
  v88 = &v49[*(v330 + 44)];
  v89 = *v88;
  v90 = *(v88 + 1);
  LOBYTE(v344) = 0;
  v91 = swift_allocObject();
  v93 = v91;
  *(v91 + 16) = v329;
  *(v91 + 32) = v344;
  *&v312 = v89;
  *(v91 + 40) = v89;
  *(v91 + 48) = v90;
  v311 = v49;
  if (v310)
  {
    v309 = &v308;
    v344 = v310;
    MEMORY[0x1EEE9AC00](v91, v92);
    *(&v308 - 4) = sub_1D5B4AA6C;
    *(&v308 - 3) = 0;
    v306 = sub_1D6708BA8;
    v307 = v93;
    LOBYTE(v342) = 0;
    v94 = swift_allocObject();
    *(v94 + 16) = v329;
    *(v94 + 32) = v342;
    *(v94 + 40) = v312;
    *(v94 + 48) = v90;
    sub_1D5E199D8(0);
    v96 = v95;
    v97 = sub_1D5B58B84(&qword_1EDF034B8, sub_1D5E199D8);
    swift_retain_n();

    v310 = v96;
    v308 = v97;
    v98 = sub_1D72647CC();
    v99 = v326;
    v100 = v98;
    LOBYTE(v342) = 0;
    v101 = swift_allocObject();
    *(v101 + 16) = v100;
    *(v101 + 24) = v329;
    *(v101 + 40) = v342;
    v102 = v330;
    v103 = __swift_project_boxed_opaque_existential_1(&v49[*(v330 + 36)], *&v49[*(v330 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v103, v104);
    MEMORY[0x1EEE9AC00](v105, v106);
    *(&v308 - 4) = sub_1D615B4A4;
    *(&v308 - 3) = (&v308 - 6);
    v306 = sub_1D6708BA8;
    v307 = v94;
    v107 = v331;
    v109 = sub_1D5D2F7A4(v99, sub_1D615B49C, v108, sub_1D615B4A4, (&v308 - 6));
    if (v107)
    {

      v110 = v311;

      sub_1D5D2CFE8(v99, type metadata accessor for FormatVersionRequirement);
      v111 = v110;
      return sub_1D5D2CFE8(v111, sub_1D66C0738);
    }

    v136 = v109;
    v131 = v102;
    *&v329 = v90;

    if (v136)
    {
      sub_1D6659D24();
      sub_1D72647EC();
      v132 = 0;
      v59 = v324;

      v2 = v322;
      v62 = v323;
    }

    else
    {

      v2 = v322;
      v59 = v324;
      v62 = v323;
      v132 = 0;
    }
  }

  else
  {
    *&v329 = v90;

    v131 = v330;
    v132 = v331;
  }

  v331 = v132;
  sub_1D5D2CFE8(v326, type metadata accessor for FormatVersionRequirement);
  swift_beginAccess();
  v137 = v2[6];
  v138 = v321;
  (v62)(v321, v328, v59);
  swift_storeEnumTagMultiPayload();
  if (*(v137 + 16))
  {
    LOBYTE(v332) = 0;
    v139 = v131;
    v140 = swift_allocObject();
    v326 = xmmword_1D72BAA60;
    *(v140 + 16) = xmmword_1D72BAA60;
    *(v140 + 32) = v332;
    v141 = v329;
    *(v140 + 40) = v312;
    *(v140 + 48) = v141;
    sub_1D5E199D8(0);
    v143 = v142;
    sub_1D5B58B84(&qword_1EDF034B8, sub_1D5E199D8);

    v122 = v311;
    v310 = v143;
    v144 = sub_1D72647CC();
    LOBYTE(v332) = 0;
    v145 = swift_allocObject();
    *(v145 + 16) = v144;
    *(v145 + 24) = v326;
    *(v145 + 40) = v332;
    v146 = __swift_project_boxed_opaque_existential_1((v122 + *(v139 + 36)), *(v122 + *(v139 + 36) + 24));
    MEMORY[0x1EEE9AC00](v146, v147);
    MEMORY[0x1EEE9AC00](v148, v149);
    *(&v308 - 4) = sub_1D5B4AA6C;
    *(&v308 - 3) = 0;
    v306 = sub_1D6708BA8;
    v307 = v140;
    v150 = v331;
    v152 = sub_1D5D2F7A4(v138, sub_1D615B49C, v151, sub_1D615B4A4, (&v308 - 6));
    v331 = v150;
    if (v150)
    {
      sub_1D5D2CFE8(v138, type metadata accessor for FormatVersionRequirement);

      goto LABEL_33;
    }

    v153 = v152;

    if (v153)
    {
      v332 = v326;
      LOBYTE(v333) = 0;
      v342 = v137;
      sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
      sub_1D6659C88();
      v154 = v331;
      sub_1D72647EC();
      v59 = v324;
      if (v154)
      {

        sub_1D5D2CFE8(v138, type metadata accessor for FormatVersionRequirement);
        v111 = v122;
        return sub_1D5D2CFE8(v111, sub_1D66C0738);
      }

      v331 = 0;

      sub_1D5D2CFE8(v138, type metadata accessor for FormatVersionRequirement);
      v2 = v322;
    }

    else
    {
      sub_1D5D2CFE8(v138, type metadata accessor for FormatVersionRequirement);

      v2 = v322;
      v59 = v324;
    }
  }

  else
  {
    sub_1D5D2CFE8(v138, type metadata accessor for FormatVersionRequirement);
  }

  v155 = v2[7];
  v156 = v2[8];
  v157 = v320;
  (v323)(v320, v328, v59);
  swift_storeEnumTagMultiPayload();
  v342 = v155;
  v343 = v156;
  v326 = xmmword_1D72BAA70;
  v332 = xmmword_1D72BAA70;
  LOBYTE(v333) = 0;
  LOBYTE(v341) = 0;
  v158 = swift_allocObject();
  v321 = &v308;
  *(v158 + 16) = v326;
  *(v158 + 32) = v341;
  v159 = v312;
  v160 = v329;
  *(v158 + 40) = v312;
  *(v158 + 48) = v160;
  MEMORY[0x1EEE9AC00](v158, v161);
  *(&v308 - 4) = sub_1D5B4AA6C;
  *(&v308 - 3) = 0;
  v306 = sub_1D6708BA8;
  v307 = v162;
  LOBYTE(v341) = 0;
  v163 = swift_allocObject();
  *(v163 + 16) = v326;
  *(v163 + 32) = v341;
  *(v163 + 40) = v159;
  *(v163 + 48) = v160;
  sub_1D5E199D8(0);
  v165 = v164;
  v166 = sub_1D5B58B84(&qword_1EDF034B8, sub_1D5E199D8);
  swift_retain_n();
  v167 = v311;
  v310 = v165;
  v309 = v166;
  v168 = sub_1D72647CC();
  LOBYTE(v341) = 0;
  v169 = swift_allocObject();
  *(v169 + 16) = v168;
  *(v169 + 24) = v326;
  *(v169 + 40) = v341;
  v170 = (v167 + *(v330 + 36));
  v171 = __swift_project_boxed_opaque_existential_1(v170, v170[3]);
  MEMORY[0x1EEE9AC00](v171, v172);
  MEMORY[0x1EEE9AC00](v173, v174);
  *(&v308 - 4) = sub_1D615B4A4;
  *(&v308 - 3) = (&v308 - 6);
  v306 = sub_1D6708BA8;
  v307 = v163;
  v175 = v331;
  sub_1D5D2BC70(v157, sub_1D615B49C, v176, sub_1D615B4A4, (&v308 - 6));
  if (v175)
  {
    sub_1D5D2CFE8(v157, type metadata accessor for FormatVersionRequirement);

    v111 = v167;
    return sub_1D5D2CFE8(v111, sub_1D66C0738);
  }

  *&v326 = v170;

  sub_1D72647EC();
  sub_1D5D2CFE8(v157, type metadata accessor for FormatVersionRequirement);

  v177 = v322[9];
  v178 = v319;
  (v323)(v319, v328, v324);
  swift_storeEnumTagMultiPayload();
  v342 = v177;
  v330 = xmmword_1D72BAA80;
  v332 = xmmword_1D72BAA80;
  LOBYTE(v333) = 0;
  LOBYTE(v341) = 0;
  v179 = swift_allocObject();
  v321 = &v308;
  *(v179 + 16) = v330;
  *(v179 + 32) = v341;
  v180 = v312;
  v181 = v329;
  *(v179 + 40) = v312;
  *(v179 + 48) = v181;
  MEMORY[0x1EEE9AC00](v179, v182);
  v331 = 0;
  *(&v308 - 4) = sub_1D5B4AA6C;
  *(&v308 - 3) = 0;
  v306 = sub_1D6708BA8;
  v307 = v183;
  LOBYTE(v341) = 0;
  v184 = swift_allocObject();
  *(v184 + 16) = v330;
  *(v184 + 32) = v341;
  *(v184 + 40) = v180;
  *(v184 + 48) = v181;
  swift_retain_n();
  v185 = sub_1D72647CC();
  LOBYTE(v341) = 0;
  v186 = swift_allocObject();
  *(v186 + 16) = v185;
  *(v186 + 24) = v330;
  *(v186 + 40) = v341;
  v187 = __swift_project_boxed_opaque_existential_1(v326, *(v326 + 24));
  MEMORY[0x1EEE9AC00](v187, v188);
  MEMORY[0x1EEE9AC00](v189, v190);
  *(&v308 - 4) = sub_1D615B4A4;
  *(&v308 - 3) = (&v308 - 6);
  v306 = sub_1D6708BA8;
  v307 = v184;
  v191 = v331;
  sub_1D5D2BC70(v178, sub_1D615B49C, v192, sub_1D615B4A4, (&v308 - 6));
  if (v191)
  {
    sub_1D5D2CFE8(v178, type metadata accessor for FormatVersionRequirement);

    v49 = v311;
    goto LABEL_45;
  }

  sub_1D5C34D84(0, &qword_1EDF1B540, &type metadata for FormatStateViewNodeState, MEMORY[0x1E69E62F8]);
  sub_1D66C085C();
  sub_1D72647EC();
  v331 = 0;
  sub_1D5D2CFE8(v178, type metadata accessor for FormatVersionRequirement);

  v193 = v322;
  swift_beginAccess();
  v194 = v193[10];
  v195 = v318;
  (v323)(v318, v328, v324);
  swift_storeEnumTagMultiPayload();
  if (v194)
  {
    LOBYTE(v332) = 0;
    v196 = swift_allocObject();
    v330 = xmmword_1D72BAA90;
    *(v196 + 16) = xmmword_1D72BAA90;
    *(v196 + 32) = v332;
    *(v196 + 40) = v312;
    *(v196 + 48) = v329;

    v197 = v311;
    v198 = sub_1D72647CC();
    LOBYTE(v332) = 0;
    v199 = swift_allocObject();
    *(v199 + 16) = v198;
    *(v199 + 24) = v330;
    *(v199 + 40) = v332;
    v200 = __swift_project_boxed_opaque_existential_1(v326, *(v326 + 24));
    MEMORY[0x1EEE9AC00](v200, v201);
    MEMORY[0x1EEE9AC00](v202, v203);
    *(&v308 - 4) = sub_1D5B4AA6C;
    *(&v308 - 3) = 0;
    v306 = sub_1D6708BA8;
    v307 = v196;
    v204 = v331;
    v206 = sub_1D5D2F7A4(v195, sub_1D615B49C, v205, sub_1D615B4A4, (&v308 - 6));
    v207 = v317;
    v331 = v204;
    if (v204)
    {
      sub_1D5D2CFE8(v195, type metadata accessor for FormatVersionRequirement);

      v111 = v197;
      return sub_1D5D2CFE8(v111, sub_1D66C0738);
    }

    v209 = v206;

    v208 = v316;
    if (v209)
    {
      v332 = v330;
      LOBYTE(v333) = 0;
      v341 = v194;
      v210 = v311;
      v211 = v331;
      sub_1D72647EC();
      v331 = v211;
      if (v211)
      {
        sub_1D5D2CFE8(v195, type metadata accessor for FormatVersionRequirement);
        v111 = v210;
        return sub_1D5D2CFE8(v111, sub_1D66C0738);
      }
    }

    sub_1D5D2CFE8(v195, type metadata accessor for FormatVersionRequirement);
    v193 = v322;
  }

  else
  {
    sub_1D5D2CFE8(v195, type metadata accessor for FormatVersionRequirement);
    v208 = v316;
    v207 = v317;
  }

  swift_beginAccess();
  v212 = v193[11];
  sub_1D5EB1500(v212);
  v213 = v324;
  v214 = v329;
  v215 = v326;
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v216 = __swift_project_value_buffer(v213, qword_1EDFFCD50);
  (v323)(v207, v216, v213);
  swift_storeEnumTagMultiPayload();
  if (v212 == 0x8000000000000000)
  {
    sub_1D5D2CFE8(v207, type metadata accessor for FormatVersionRequirement);
    v217 = v208;
  }

  else
  {
    v321 = v216;
    LOBYTE(v332) = 0;
    v218 = swift_allocObject();
    v330 = xmmword_1D72BAAA0;
    *(v218 + 16) = xmmword_1D72BAAA0;
    *(v218 + 32) = v332;
    *(v218 + 40) = v312;
    *(v218 + 48) = v214;

    v219 = v311;
    v220 = sub_1D72647CC();
    LOBYTE(v332) = 0;
    v221 = swift_allocObject();
    *(v221 + 16) = v220;
    *(v221 + 24) = v330;
    *(v221 + 40) = v332;
    v222 = __swift_project_boxed_opaque_existential_1(v215, v215[3]);
    MEMORY[0x1EEE9AC00](v222, v223);
    MEMORY[0x1EEE9AC00](v224, v225);
    *(&v308 - 4) = sub_1D5B4AA6C;
    *(&v308 - 3) = 0;
    v306 = sub_1D6708BA8;
    v307 = v218;
    v226 = v331;
    v228 = sub_1D5D2F7A4(v207, sub_1D615B49C, v227, sub_1D615B4A4, (&v308 - 6));
    if (v226)
    {

      sub_1D5EB15C4(v212);
      sub_1D5D2CFE8(v207, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v219, sub_1D66C0738);
    }

    v229 = v228;

    if (v229)
    {
      v332 = v330;
      LOBYTE(v333) = 0;
      v340 = v212;
      sub_1D5DF6A60();
      sub_1D72647EC();
      v331 = 0;
      sub_1D5EB15C4(v340);
      sub_1D5D2CFE8(v207, type metadata accessor for FormatVersionRequirement);
      v193 = v322;
      v213 = v324;
    }

    else
    {
      sub_1D5EB15C4(v212);
      sub_1D5D2CFE8(v207, type metadata accessor for FormatVersionRequirement);
      v193 = v322;
      v213 = v324;
      v331 = 0;
    }

    v217 = v316;
    v214 = v329;
    v215 = v326;
    v216 = v321;
  }

  swift_beginAccess();
  v230 = *(v193 + 96);
  v231 = v311;
  if (qword_1EDF31E98 != -1)
  {
    swift_once();
  }

  v232 = __swift_project_value_buffer(v213, qword_1EDFFCD00);
  (v323)(v217, v232, v213);
  swift_storeEnumTagMultiPayload();
  if (v230)
  {
    sub_1D5D2CFE8(v217, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    LOBYTE(v332) = 0;
    v233 = swift_allocObject();
    v330 = xmmword_1D72BAAB0;
    *(v233 + 16) = xmmword_1D72BAAB0;
    *(v233 + 32) = v332;
    *(v233 + 40) = v312;
    *(v233 + 48) = v214;

    v234 = sub_1D72647CC();
    LOBYTE(v332) = 0;
    v235 = swift_allocObject();
    *(v235 + 16) = v234;
    *(v235 + 24) = v330;
    *(v235 + 40) = v332;
    v236 = __swift_project_boxed_opaque_existential_1(v215, v215[3]);
    MEMORY[0x1EEE9AC00](v236, v237);
    MEMORY[0x1EEE9AC00](v238, v239);
    *(&v308 - 4) = sub_1D5B4AA6C;
    *(&v308 - 3) = 0;
    v306 = sub_1D6708BA8;
    v307 = v233;
    v240 = v331;
    v242 = sub_1D5D2F7A4(v217, sub_1D615B49C, v241, sub_1D615B4A4, (&v308 - 6));
    if (v240)
    {
      sub_1D5D2CFE8(v217, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v231, sub_1D66C0738);
    }

    v243 = v242;

    if (v243)
    {
      v332 = v330;
      LOBYTE(v333) = 0;
      LOBYTE(v339) = 0;
      sub_1D72647EC();
    }

    v331 = 0;
    sub_1D5D2CFE8(v217, type metadata accessor for FormatVersionRequirement);
    v193 = v322;
    v213 = v324;
    v214 = v329;
  }

  v244 = v193[13];
  v245 = v315;
  (v323)(v315, v216, v213);
  swift_storeEnumTagMultiPayload();
  v330 = xmmword_1D72BAAC0;
  v332 = xmmword_1D72BAAC0;
  LOBYTE(v333) = 0;
  LOBYTE(v339) = 0;
  v246 = swift_allocObject();
  v248 = v246;
  *(v246 + 16) = v330;
  *(v246 + 32) = v339;
  v249 = v312;
  *(v246 + 40) = v312;
  *(v246 + 48) = v214;
  if (v244)
  {
    v321 = &v308;
    v339 = v244;
    MEMORY[0x1EEE9AC00](v246, v247);
    *(&v308 - 4) = sub_1D5B4AA6C;
    *(&v308 - 3) = 0;
    v306 = sub_1D6708BA8;
    v307 = v248;
    LOBYTE(v337) = 0;
    v250 = swift_allocObject();
    *(v250 + 16) = v330;
    *(v250 + 32) = v337;
    *(v250 + 40) = v249;
    *(v250 + 48) = v214;
    swift_retain_n();

    v251 = sub_1D72647CC();
    LOBYTE(v337) = 0;
    v252 = swift_allocObject();
    *(v252 + 16) = v251;
    *(v252 + 24) = v330;
    *(v252 + 40) = v337;
    v253 = __swift_project_boxed_opaque_existential_1(v326, *(v326 + 24));
    MEMORY[0x1EEE9AC00](v253, v254);
    MEMORY[0x1EEE9AC00](v255, v256);
    *(&v308 - 4) = sub_1D615B4A4;
    *(&v308 - 3) = (&v308 - 6);
    v306 = sub_1D6708BA8;
    v307 = v250;
    v257 = v331;
    v259 = sub_1D5D2F7A4(v245, sub_1D615B49C, v258, sub_1D615B4A4, (&v308 - 6));
    v331 = v257;
    if (v257)
    {

LABEL_77:
      v260 = v245;
      goto LABEL_102;
    }

    v262 = v259;

    if (v262)
    {
      type metadata accessor for FormatAnimationNodeStyle();
      sub_1D5B58B84(&unk_1EDF0D098, type metadata accessor for FormatAnimationNodeStyle);
      v263 = v331;
      sub_1D72647EC();
      v331 = v263;
      if (v263)
      {

        v245 = v315;
        goto LABEL_77;
      }
    }

    v193 = v322;
    v261 = v314;
    v213 = v324;
    v214 = v329;
  }

  else
  {

    v261 = v314;
  }

  sub_1D5D2CFE8(v315, type metadata accessor for FormatVersionRequirement);
  swift_beginAccess();
  v264 = v193[14];
  (v323)(v261, v328, v213);
  swift_storeEnumTagMultiPayload();
  v265 = v311;
  if (!*(v264 + 16))
  {
    v276 = v313;
    goto LABEL_92;
  }

  LOBYTE(v332) = 0;
  v266 = swift_allocObject();
  v330 = xmmword_1D72BAAD0;
  *(v266 + 16) = xmmword_1D72BAAD0;
  *(v266 + 32) = v332;
  *(v266 + 40) = v312;
  *(v266 + 48) = v214;

  v267 = sub_1D72647CC();
  LOBYTE(v332) = 0;
  v268 = swift_allocObject();
  *(v268 + 16) = v267;
  *(v268 + 24) = v330;
  *(v268 + 40) = v332;
  v269 = __swift_project_boxed_opaque_existential_1(v326, *(v326 + 24));
  MEMORY[0x1EEE9AC00](v269, v270);
  MEMORY[0x1EEE9AC00](v271, v272);
  *(&v308 - 4) = sub_1D5B4AA6C;
  *(&v308 - 3) = 0;
  v306 = sub_1D6708BA8;
  v307 = v266;
  v273 = v331;
  v275 = sub_1D5D2F7A4(v261, sub_1D615B49C, v274, sub_1D615B4A4, (&v308 - 6));
  if (!v273)
  {
    v277 = v275;
    v331 = 0;

    if (v277)
    {
      v278 = v331;
      sub_1D5E07B38(v264, v311, 0xA, 0, 0);
      v331 = v278;
      if (v278)
      {

        v265 = v311;
        v261 = v314;
        goto LABEL_86;
      }
    }

    v276 = v313;
    v193 = v322;
LABEL_92:
    sub_1D5D2CFE8(v314, type metadata accessor for FormatVersionRequirement);
    v279 = v193[15];
    v280 = v193[16];
    v281 = v193[17];
    v282 = v193[18];
    v321 = v193[19];
    v328 = v193[20];
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v283 = v324;
    v284 = __swift_project_value_buffer(v324, qword_1EDFFCE38);
    (v323)(v276, v284, v283);
    swift_storeEnumTagMultiPayload();
    v330 = xmmword_1D72BAAE0;
    v337 = xmmword_1D72BAAE0;
    v338 = 0;
    LOBYTE(v332) = 0;
    v285 = swift_allocObject();
    v287 = v285;
    *(v285 + 16) = v330;
    *(v285 + 32) = v332;
    v288 = v312;
    v289 = v329;
    *(v285 + 40) = v312;
    *(v285 + 48) = v289;
    if (!v279)
    {

      sub_1D5D2CFE8(v313, type metadata accessor for FormatVersionRequirement);

LABEL_103:
      v111 = v311;
      return sub_1D5D2CFE8(v111, sub_1D66C0738);
    }

    v327 = &v308;
    *&v332 = v279;
    *(&v332 + 1) = v280;
    v333 = v281;
    v290 = v282;
    v334 = v282;
    v291 = v321;
    v335 = v321;
    v336 = v328;
    MEMORY[0x1EEE9AC00](v285, v286);
    v325 = &v308 - 6;
    *(&v308 - 4) = sub_1D5B4AA6C;
    *(&v308 - 3) = 0;
    v306 = sub_1D6708BA8;
    v307 = v287;
    v347 = 0;
    v292 = swift_allocObject();
    *(v292 + 16) = v330;
    *(v292 + 32) = v347;
    *(v292 + 40) = v288;
    *(v292 + 48) = v289;
    swift_retain_n();
    sub_1D5EB1D80(v279, v280, v281, v290, v291);
    v293 = sub_1D72647CC();
    v347 = 0;
    v294 = swift_allocObject();
    *(v294 + 16) = v293;
    *(v294 + 24) = v330;
    *(v294 + 40) = v347;
    v295 = __swift_project_boxed_opaque_existential_1(v326, *(v326 + 24));
    MEMORY[0x1EEE9AC00](v295, v296);
    MEMORY[0x1EEE9AC00](v297, v298);
    v299 = v325;
    *(&v308 - 4) = sub_1D615B4A4;
    *(&v308 - 3) = v299;
    v306 = sub_1D6708BA8;
    v307 = v292;
    v300 = v331;
    v302 = sub_1D5D2F7A4(v313, sub_1D615B49C, v301, sub_1D615B4A4, (&v308 - 6));
    v331 = v300;
    if (v300)
    {
    }

    else
    {
      v303 = v302;

      if (v303)
      {
        sub_1D6659A24();
        v304 = v331;
        sub_1D72647EC();
        v331 = v304;
      }
    }

    v305 = v335;

    sub_1D5CBF568(v305);

    v260 = v313;
LABEL_102:
    sub_1D5D2CFE8(v260, type metadata accessor for FormatVersionRequirement);
    goto LABEL_103;
  }

LABEL_86:
  sub_1D5D2CFE8(v261, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v265, sub_1D66C0738);
}

unint64_t sub_1D65AE168(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 1702521203;
      break;
    case 2:
      result = 0x657A69736572;
      break;
    case 3:
      result = 0x656D7473756A6461;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x736574617473;
      break;
    case 6:
      result = 0x7865646E497ALL;
      break;
    case 7:
      result = 0x696C696269736976;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0x6F6974616D696E61;
      break;
    case 10:
      result = 0x726F7463656C6573;
      break;
    case 11:
      result = 2019912806;
      break;
    case 12:
      result = 1885433183;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D65AE2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66C0CD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65AE304(uint64_t a1)
{
  v2 = sub_1D5E19AEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65AE340(uint64_t a1)
{
  v2 = sub_1D5E19AEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatString.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v36 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    v11 = v7;
    v12 = v36;
    v13 = a1[3];
    v29 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v13);
    v14 = sub_1D7264AFC();
    LOBYTE(v13) = Dictionary<>.errorOnUnknownKeys.getter(v14);

    if (v13)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F51179C8;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v29;
          goto LABEL_9;
        }
      }
    }

    sub_1D66C094C();
    v31 = 0;
    *&v32 = 0;
    sub_1D726431C();
    if (v30)
    {
      if (v30 == 1)
      {
        v30 = xmmword_1D7279980;
        sub_1D5C6A164();
        sub_1D726431C();
        a1 = v29;
        (*(v11 + 8))(v10, v6);
        v23 = 0;
        v24 = v31;
        v25 = v32;
        v26 = 0uLL;
        v27 = 0x4000;
      }

      else
      {
        v30 = xmmword_1D7279980;
        sub_1D5C77160();
        sub_1D726431C();
        a1 = v29;
        (*(v11 + 8))(v10, v6);
        v24 = v31;
        v25 = v32;
        v26 = v33;
        v23 = v34;
        v27 = v35 & 0x7FF | 0x8000;
      }
    }

    else
    {
      sub_1D5C34074(0, &qword_1EDF419A0, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatValue);
      v30 = xmmword_1D7279980;
      sub_1D5C34150();
      sub_1D726431C();
      (*(v11 + 8))(v10, v6);
      v23 = 0;
      v27 = 0;
      v24 = v31;
      *&v25 = v32;
      v26 = 0uLL;
      a1 = v29;
    }

    *v12 = v24;
    *(v12 + 8) = v25;
    *(v12 + 24) = v26;
    *(v12 + 40) = v23;
    *(v12 + 48) = v27;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatString.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v41 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v41 - v12;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v43 = *(v1 + 16);
  v45 = v18;
  v20 = *(v1 + 32);
  v19 = *(v1 + 40);
  v21 = *(v1 + 48);
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v24 = sub_1D5C30408();
  v44 = v17;
  sub_1D5D2EE70(&type metadata for FormatString, &type metadata for FormatCodingKeys, v25, v22, &type metadata for FormatString, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenE, v23, v17, v24, &off_1F51F6C18);
  if (v21 >> 14)
  {
    if (v21 >> 14 == 1)
    {
      v26 = *(&v45 + 1);
      v27 = v43;
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v28 = sub_1D725BD1C();
      v29 = __swift_project_value_buffer(v28, qword_1EDFFCD98);
      (*(*(v28 - 8) + 16))(v9, v29, v28);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v30 = v26;
      v31 = v44;
      sub_1D63BB7D8(1, v45, v30, v27, v9);
      v32 = v9;
    }

    else
    {
      v46[0] = v45;
      v46[1] = v43;
      v47 = v20;
      v48 = v19;
      v49 = v21 & 0x3FFF;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v37 = sub_1D725BD1C();
      v38 = __swift_project_value_buffer(v37, qword_1EDFFCE38);
      v39 = v42;
      (*(*(v37 - 8) + 16))(v42, v38, v37);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v31 = v44;
      sub_1D63BB970(2, v46, v39);
      v32 = v39;
    }
  }

  else
  {
    v33 = *(&v45 + 1);
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v34 = sub_1D725BD1C();
    v35 = __swift_project_value_buffer(v34, qword_1EDFFCD98);
    (*(*(v34 - 8) + 16))(v13, v35, v34);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v36 = v33;
    v31 = v44;
    sub_1D63BB610(0, v45, v36, v13);
    v32 = v13;
  }

  sub_1D5D2CFE8(v32, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v31, sub_1D5D30DC4);
}

uint64_t sub_1D65AEC78(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6E6F6974706FLL;
  if (v2 != 1)
  {
    v5 = 0x676E69646E6962;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x656E696C6E69;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x6E6F6974706FLL;
  if (*a2 != 1)
  {
    v8 = 0x676E69646E6962;
    v3 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656E696C6E69;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D65AED6C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65AEE08()
{
  sub_1D72621EC();
}

uint64_t sub_1D65AEE90()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65AEF28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D66636C0();
  *a1 = result;
  return result;
}

void sub_1D65AEF58(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6E6F6974706FLL;
  if (v2 != 1)
  {
    v5 = 0x676E69646E6962;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E696C6E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D65AF060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66C10EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65AF098(uint64_t a1)
{
  v2 = sub_1D5C2E89C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65AF0D4(uint64_t a1)
{
  v2 = sub_1D5C2E89C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatStyleImage.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v84 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v92 = &v81 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v81 - v11;
  sub_1D66C0A1C();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v85 = v1[1];
  v83 = v1[2];
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D5CCEA34();
  v22 = v21;
  v23 = sub_1D5B58B84(&qword_1EDF25688, sub_1D5CCEA34);
  sub_1D5D2EE70(&type metadata for FormatStyleImage, v22, v24, v19, &type metadata for FormatStyleImage, v22, &type metadata for FormatVersions.JazzkonG, v20, v17, v23, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v25 = sub_1D725BD1C();
  v26 = __swift_project_value_buffer(v25, qword_1EDFFCD18);
  v27 = *(v25 - 8);
  v28 = *(v27 + 16);
  v90 = v26;
  v91 = v25;
  v88 = v27 + 16;
  v89 = v28;
  (v28)(v12);
  v87 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v101 = v18;
  v99 = 0uLL;
  v100 = 0;
  v29 = &v17[*(v14 + 44)];
  v30 = *v29;
  v31 = *(v29 + 1);
  v98 = 0;
  v32 = swift_allocObject();
  v96 = &v81;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v98;
  *(v32 + 40) = v30;
  *(v32 + 48) = v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  *(&v81 - 4) = sub_1D5B4AA6C;
  *(&v81 - 3) = 0;
  v79 = sub_1D6708BB0;
  v80 = v34;
  v98 = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v98;
  v86 = v30;
  *(v35 + 40) = v30;
  *(v35 + 48) = v31;
  sub_1D5E19968(0);
  v37 = v36;
  v38 = sub_1D5B58B84(&qword_1EDF03708, sub_1D5E19968);
  swift_retain_n();
  v93 = v37;
  v94 = v38;
  v39 = sub_1D72647CC();
  v98 = 0;
  v40 = swift_allocObject();
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 16) = v39;
  *(v40 + 40) = v98;
  v41 = *(v14 + 36);
  v42 = v12;
  v43 = &v17[v41];
  v95 = v17;
  v44 = __swift_project_boxed_opaque_existential_1(&v17[v41], *&v17[v41 + 24]);
  MEMORY[0x1EEE9AC00](v44, v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  *(&v81 - 4) = sub_1D615B4A4;
  *(&v81 - 3) = (&v81 - 6);
  v79 = sub_1D6708BB0;
  v80 = v35;
  v48 = v97;
  sub_1D5D2BC70(v42, sub_1D615B49C, v49, sub_1D615B4A4, (&v81 - 6));
  if (v48)
  {
    sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);

    v51 = v95;
    return sub_1D5D2CFE8(v51, sub_1D66C0A1C);
  }

  v81 = v43;
  v82 = v31;

  sub_1D5B55E48();
  v50 = v95;
  sub_1D72647EC();
  sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);

  v53 = v92;
  v89(v92, v90, v91);
  swift_storeEnumTagMultiPayload();
  v101 = v85;
  v97 = xmmword_1D728CF30;
  v99 = xmmword_1D728CF30;
  v100 = 0;
  v98 = 0;
  v54 = swift_allocObject();
  v96 = &v81;
  *(v54 + 16) = v97;
  *(v54 + 32) = v98;
  v55 = v86;
  v56 = v82;
  *(v54 + 40) = v86;
  *(v54 + 48) = v56;
  MEMORY[0x1EEE9AC00](v54, v57);
  v85 = 0;
  *(&v81 - 4) = sub_1D5B4AA6C;
  *(&v81 - 3) = 0;
  v79 = sub_1D6708BB0;
  v80 = v58;
  v98 = 0;
  v59 = swift_allocObject();
  *(v59 + 16) = v97;
  *(v59 + 32) = v98;
  *(v59 + 40) = v55;
  *(v59 + 48) = v56;
  swift_retain_n();
  v60 = sub_1D72647CC();
  v98 = 0;
  v61 = swift_allocObject();
  *(v61 + 16) = v60;
  *(v61 + 24) = v97;
  *(v61 + 40) = v98;
  v62 = __swift_project_boxed_opaque_existential_1(v81, *(v81 + 3));
  MEMORY[0x1EEE9AC00](v62, v63);
  MEMORY[0x1EEE9AC00](v64, v65);
  *(&v81 - 4) = sub_1D615B4A4;
  *(&v81 - 3) = (&v81 - 6);
  v79 = sub_1D6708BB0;
  v80 = v59;
  v66 = v85;
  sub_1D5D2BC70(v53, sub_1D615B49C, v67, sub_1D615B4A4, (&v81 - 6));
  if (v66)
  {
    sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);

    v51 = v50;
    return sub_1D5D2CFE8(v51, sub_1D66C0A1C);
  }

  type metadata accessor for FormatImageNodeStyle();
  sub_1D5B58B84(&qword_1EDF0F0F0, type metadata accessor for FormatImageNodeStyle);
  sub_1D72647EC();
  v68 = v50;
  sub_1D5D2CFE8(v92, type metadata accessor for FormatVersionRequirement);

  v69 = v84;
  v89(v84, v90, v91);
  swift_storeEnumTagMultiPayload();
  v70 = v83;
  if (*(v83 + 16))
  {
    LOBYTE(v99) = 0;
    v71 = swift_allocObject();
    v97 = xmmword_1D7297410;
    *(v71 + 16) = xmmword_1D7297410;
    *(v71 + 32) = v99;
    *(v71 + 40) = v86;
    *(v71 + 48) = v82;

    v72 = sub_1D72647CC();
    LOBYTE(v99) = 0;
    v73 = swift_allocObject();
    *(v73 + 16) = v72;
    *(v73 + 24) = v97;
    *(v73 + 40) = v99;
    v74 = __swift_project_boxed_opaque_existential_1(v81, *(v81 + 3));
    MEMORY[0x1EEE9AC00](v74, v75);
    MEMORY[0x1EEE9AC00](v76, v77);
    *(&v81 - 4) = sub_1D5B4AA6C;
    *(&v81 - 3) = 0;
    v79 = sub_1D66C0AB0;
    v80 = v71;
    LOBYTE(v72) = sub_1D5D2F7A4(v69, sub_1D615B49C, v78, sub_1D615B4A4, (&v81 - 6));

    if (v72)
    {
      sub_1D5E080BC(v70, v68, 2, 0, 0);
    }
  }

  sub_1D5D2CFE8(v69, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v68, sub_1D66C0A1C);
}

uint64_t sub_1D65AFC88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66C1338(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65AFCC0(uint64_t a1)
{
  v2 = sub_1D5CCEBA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65AFCFC(uint64_t a1)
{
  v2 = sub_1D5CCEBA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65AFD38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66C14A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65AFD70(uint64_t a1)
{
  v2 = sub_1D5CA58E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65AFDAC(uint64_t a1)
{
  v2 = sub_1D5CA58E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65AFDE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66C1874(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65AFE20(uint64_t a1)
{
  v2 = sub_1D5C62678();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65AFE5C(uint64_t a1)
{
  v2 = sub_1D5C62678();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSupplementaryNodePinDistance.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v28;
    if (v12)
    {
      v14 = sub_1D726433C();
      v15 = (v14 + 40);
      v16 = *(v14 + 16) + 1;
      while (--v16)
      {
        v17 = v15 + 2;
        v18 = *v15;
        v15 += 2;
        if (v18 >= 4)
        {
          v19 = *(v17 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v20 = v19;
          *(v20 + 8) = v18;
          *(v20 + 16) = &unk_1F5117A18;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66C0B2C();
    v27 = 0uLL;
    sub_1D726431C();
    v22 = v25;
    if (v25)
    {
      v27 = xmmword_1D7279980;
      sub_1D66C0B80();
      sub_1D726427C();
      (*(v7 + 8))(v10, v6);
      v23 = v25;
      v24 = v26;
    }

    else
    {
      sub_1D5C71DC8();
      v27 = xmmword_1D7279980;
      sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v24 = 0;
      v23 = v25;
    }

    *v13 = v23;
    *(v13 + 8) = v24;
    *(v13 + 9) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSupplementaryNodePinDistance.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v28 - v9;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = *(v1 + 8);
  v17 = *(v1 + 9);
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSupplementaryNodePinDistance, &type metadata for FormatCodingKeys, v21, v18, &type metadata for FormatSupplementaryNodePinDistance, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v19, v14, v20, &off_1F51F6CD8);
  if (v17)
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v22 = sub_1D725BD1C();
    v23 = __swift_project_value_buffer(v22, qword_1EDFFCD50);
    (*(*(v22 - 8) + 16))(v6, v23, v22);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D64383A4(1, v15, v16, v6);
    v24 = v6;
  }

  else
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v25 = sub_1D725BD1C();
    v26 = __swift_project_value_buffer(v25, qword_1EDFFCD50);
    (*(*(v25 - 8) + 16))(v10, v26, v25);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63866E8(0, v15, v10);
    v24 = v10;
  }

  sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D65B0574(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x656D617266;
  }

  else
  {
    v2 = 0x6465786966;
  }

  if (*a2)
  {
    v3 = 0x656D617266;
  }

  else
  {
    v3 = 0x6465786966;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D65B05F4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65B0664()
{
  sub_1D72621EC();
}

uint64_t sub_1D65B06B8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D65B0730(uint64_t *a1@<X8>)
{
  v2 = 0x6465786966;
  if (*v1)
  {
    v2 = 0x656D617266;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t FormatSupplementaryNodePinDistanceAdjustment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v25;
    v14 = v10;
    if (v12)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F5117A68;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v14, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66C0BD4();
    v26 = 0uLL;
    sub_1D726431C();
    v23 = v27;
    v26 = xmmword_1D7279980;
    sub_1D66C0C28();
    sub_1D726431C();
    (*(v7 + 8))(v14, v6);
    *v13 = v27;
    *(v13 + 8) = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSupplementaryNodePinDistanceAdjustment.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v38 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v38 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v38 - v17;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *v1;
  v23 = *(v1 + 8);
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSupplementaryNodePinDistanceAdjustment, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatSupplementaryNodePinDistanceAdjustment, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v25, v22, v26, &off_1F51F6CD8);
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCD50);
      (*(*(v31 - 8) + 16))(v10, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6385EB8(2, v39, v10);
      v30 = v10;
    }

    else
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCD50);
      (*(*(v35 - 8) + 16))(v6, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6385EB8(3, v39, v6);
      v30 = v6;
    }
  }

  else if (v23)
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCD50);
    (*(*(v33 - 8) + 16))(v14, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6385EB8(1, v39, v14);
    v30 = v14;
  }

  else
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCD50);
    (*(*(v28 - 8) + 16))(v18, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6385EB8(0, v39, v18);
    v30 = v18;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t sub_1D65B1028()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65B10E0()
{
  sub_1D72621EC();
}

uint64_t sub_1D65B1184()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65B1238@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6664AAC();
  *a1 = result;
  return result;
}

void sub_1D65B1268(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 6579297;
  v4 = 0xE800000000000000;
  v5 = 0x796C7069746C756DLL;
  if (*v1 != 2)
  {
    v5 = 0x656469766964;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x7463617274627573;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1D65B13C8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v30 = a2;
  v31 = a4;
  v28 = a5;
  v29 = a3;
  v6 = v5;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v28 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v5)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v6);
    swift_willThrow();
  }

  else
  {
    v14 = v30;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v15 = sub_1D7264AFC();
    v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

    v18 = v13;
    if (v16)
    {
      v19 = sub_1D726433C();
      v20 = (v19 + 40);
      v21 = *(v19 + 16) + 1;
      while (--v21)
      {
        v22 = v20 + 2;
        v23 = *v20;
        v20 += 2;
        if (v23 >= 4)
        {
          v24 = *(v22 - 3);

          sub_1D5E2D970();
          v6 = swift_allocError();
          *v25 = v24;
          *(v25 + 8) = v23;
          *(v25 + 16) = v14;
          *(v25 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v10 + 8))(v18, v9);
          goto LABEL_9;
        }
      }
    }

    v29(v17);
    v32 = 0uLL;
    sub_1D726431C();
    if (v33)
    {
      if (v33 == 1)
      {
        (*(v10 + 8))(v18, v9);
        v27 = 1;
      }

      else
      {
        sub_1D5C71DC8();
        v32 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
        sub_1D726431C();
        (*(v10 + 8))(v18, v9);
        v27 = v33;
      }
    }

    else
    {
      (*(v10 + 8))(v18, v9);
      v27 = 0;
    }

    *v28 = v27;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D65B17A8(void *a1, uint64_t a2, void (*a3)(uint64_t, char *), void (*a4)(uint64_t, uint64_t, char *))
{
  v36 = a4;
  v37 = a3;
  v7 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v36 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v36 - v17;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v4;
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = sub_1D5C30408();
  sub_1D5D2EE70(a2, &type metadata for FormatCodingKeys, v27, v24, a2, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v25, v22, v26, &off_1F51F6CD8);
  if (v23)
  {
    if (v23 == 1)
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v28 = sub_1D725BD1C();
      v29 = __swift_project_value_buffer(v28, qword_1EDFFCD50);
      (*(*(v28 - 8) + 16))(v14, v29, v28);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v37(1, v14);
      v30 = v14;
    }

    else
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v33 = sub_1D725BD1C();
      v34 = __swift_project_value_buffer(v33, qword_1EDFFCD50);
      (*(*(v33 - 8) + 16))(v10, v34, v33);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v36(2, v23, v10);
      v30 = v10;
    }
  }

  else
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v31 = sub_1D725BD1C();
    v32 = __swift_project_value_buffer(v31, qword_1EDFFCD50);
    (*(*(v31 - 8) + 16))(v18, v32, v31);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v37(0, v18);
    v30 = v18;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t sub_1D65B1BB8(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x676E696361705368;
  v3 = *a1;
  v4 = 0xE800000000000000;
  v5 = 0xE800000000000000;
  v6 = 0x6465786966;
  if (v3 == 1)
  {
    v6 = 0x676E696361705368;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x676E696361705376;
  }

  if (v3)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 0x6465786966;
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x676E696361705376;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D65B1C94()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65B1D28()
{
  sub_1D72621EC();
}

uint64_t sub_1D65B1DA8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65B1E38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6664AF8();
  *a1 = result;
  return result;
}

uint64_t FormatSupplementaryNodePinEdge.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v23 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v22[1] = v22 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v22 - v11;
  v24 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v15 = sub_1D725BD1C();
  v16 = __swift_project_value_buffer(v15, qword_1EDFFCD50);
  v17 = *(*(v15 - 8) + 16);
  v17(v12, v16, v15);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v18 = v28;
  sub_1D5D2BEC4(v12, sub_1D5B4AA6C, 0, v13, v14);
  result = sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);
  if (!v18)
  {
    v20 = v25[3];
    v28 = v25[4];
    __swift_project_boxed_opaque_existential_1(v25, v20);
    v21 = v23;
    v17(v23, v16, v15);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v21, sub_1D5B4AA6C, 0, v20, v28);
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  return result;
}

uint64_t sub_1D65B22B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6465786966;
  if (v2 != 1)
  {
    v4 = 0x6E6F6974636573;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701274725;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6465786966;
  if (*a2 != 1)
  {
    v8 = 0x6E6F6974636573;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701274725;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D65B23AC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65B2444()
{
  sub_1D72621EC();
}

uint64_t sub_1D65B24C8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65B255C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6664768();
  *a1 = result;
  return result;
}

void sub_1D65B258C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6465786966;
  if (v2 != 1)
  {
    v5 = 0x6E6F6974636573;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701274725;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D65B2690(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726F66736E617274;
  }

  else
  {
    v3 = 0x6764456F546E6970;
  }

  if (v2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0xEF656764456F546DLL;
  }

  if (*a2)
  {
    v5 = 0x726F66736E617274;
  }

  else
  {
    v5 = 0x6764456F546E6970;
  }

  if (*a2)
  {
    v6 = 0xEF656764456F546DLL;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D65B2748()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65B27DC()
{
  sub_1D72621EC();
}

uint64_t sub_1D65B285C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D65B28F8(uint64_t *a1@<X8>)
{
  v2 = 0x6764456F546E6970;
  if (*v1)
  {
    v2 = 0x726F66736E617274;
  }

  v3 = 0xE900000000000065;
  if (*v1)
  {
    v3 = 0xEF656764456F546DLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D65B29F8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0xE900000000000059;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  if (*a2)
  {
    v3 = 0xE900000000000059;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  return v4 & 1;
}

uint64_t sub_1D65B2A8C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65B2B00()
{
  sub_1D72621EC();
}

uint64_t sub_1D65B2B60()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D65B2BDC(void *a1@<X8>)
{
  v2 = 0xE800000000000000;
  if (*v1)
  {
    v2 = 0xE900000000000059;
  }

  *a1 = 0x656C616353706F74;
  a1[1] = v2;
}

uint64_t FormatSupplementaryNodeStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v181 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v186 = &v181 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v187 = &v181 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v188 = &v181 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v189 = &v181 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  *&v199 = &v181 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v181 - v26;
  sub_1D66C22A4();
  v197 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v181 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_1D66C23CC();
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EDF24EC8, sub_1D66C23CC);
  sub_1D5D2EE70(v4, v35, v37, v32, v4, v35, &type metadata for FormatVersions.JazzkonG, v33, v31, v36, &off_1F51F6BF8);
  swift_beginAccess();
  v196 = v2;
  v38 = v2[2];
  v39 = v2[3];
  v40 = qword_1EDF31EA8;

  if (v40 != -1)
  {
    swift_once();
  }

  v41 = sub_1D725BD1C();
  v42 = __swift_project_value_buffer(v41, qword_1EDFFCD18);
  v43 = *(v41 - 8);
  v44 = *(v43 + 16);
  v45 = v43 + 16;
  v194 = v42;
  v195 = v41;
  v44(v27);
  v46 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v47 = sub_1D725895C();
  v48 = (*(*(v47 - 8) + 48))(v8, 1, v47);
  v191 = v44;
  v190 = v45;
  v193 = v46;
  if (v48 != 1)
  {
    sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    goto LABEL_11;
  }

  v192 = v38;
  sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v49 = v197;
  v50 = &v31[*(v197 + 11)];
  v52 = *v50;
  v51 = *(v50 + 1);
  LOBYTE(v206) = 0;
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  *(v53 + 24) = 0;
  *(v53 + 32) = v206;
  *(v53 + 40) = v52;
  *(v53 + 48) = v51;
  sub_1D66C2338();
  v55 = v54;
  v56 = sub_1D5B58B84(&qword_1EDF02E28, sub_1D66C2338);

  *&v200 = v55;
  v57 = sub_1D72647CC();
  LOBYTE(v206) = 0;
  v58 = v31;
  v59 = swift_allocObject();
  *(v59 + 24) = 0;
  *(v59 + 32) = 0;
  *(v59 + 16) = v57;
  *(v59 + 40) = v206;
  v60 = __swift_project_boxed_opaque_existential_1(&v58[*(v49 + 9)], *&v58[*(v49 + 9) + 24]);
  MEMORY[0x1EEE9AC00](v60, v61);
  MEMORY[0x1EEE9AC00](v62, v63);
  *(&v181 - 4) = sub_1D5B4AA6C;
  *(&v181 - 3) = 0;
  v179 = sub_1D66C254C;
  v180 = v53;
  v64 = v198;
  v66 = sub_1D5D2F7A4(v27, sub_1D615B49C, v65, sub_1D615B4A4, (&v181 - 6));
  if (!v64)
  {
    v68 = v66;
    v198 = v56;

    if (v68)
    {
      v206 = 0uLL;
      v207 = 0;
      *&v204 = v192;
      *(&v204 + 1) = v39;
      v31 = v58;
      sub_1D72647EC();

      sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
      v198 = 0;
    }

    else
    {
      v198 = 0;
      sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

      v31 = v58;
    }

    v44 = v191;
LABEL_11:
    v69 = v196[4];
    v70 = v196[5];
    (v44)(v199, v194, v195);
    swift_storeEnumTagMultiPayload();
    *&v204 = v69;
    *(&v204 + 1) = v70;
    v200 = xmmword_1D728CF30;
    v206 = xmmword_1D728CF30;
    v207 = 0;
    v71 = v197;
    v72 = &v31[*(v197 + 11)];
    v73 = *v72;
    v74 = *(v72 + 1);
    LOBYTE(v201) = 0;
    v75 = swift_allocObject();
    v192 = &v181;
    *(v75 + 16) = v200;
    *(v75 + 32) = v201;
    *(v75 + 40) = v73;
    *(v75 + 48) = v74;
    MEMORY[0x1EEE9AC00](v75, v76);
    *(&v181 - 4) = sub_1D5B4AA6C;
    *(&v181 - 3) = 0;
    v179 = sub_1D6708BB4;
    v180 = v77;
    LOBYTE(v201) = 0;
    v78 = swift_allocObject();
    *(v78 + 16) = v200;
    *(v78 + 32) = v201;
    v183 = v73;
    *(v78 + 40) = v73;
    *(v78 + 48) = v74;
    sub_1D66C2338();
    v80 = v79;
    v81 = sub_1D5B58B84(&qword_1EDF02E28, sub_1D66C2338);
    swift_retain_n();
    v184 = v80;
    v185 = v81;
    v82 = sub_1D72647CC();
    LOBYTE(v201) = 0;
    v83 = swift_allocObject();
    *(v83 + 16) = v82;
    *(v83 + 24) = v200;
    *(v83 + 40) = v201;
    v84 = &v31[*(v71 + 9)];
    v85 = __swift_project_boxed_opaque_existential_1(v84, *(v84 + 3));
    MEMORY[0x1EEE9AC00](v85, v86);
    MEMORY[0x1EEE9AC00](v87, v88);
    *(&v181 - 4) = sub_1D615B4A4;
    *(&v181 - 3) = (&v181 - 6);
    v89 = v198;
    v90 = v199;
    v179 = sub_1D6708BB4;
    v180 = v78;
    sub_1D5D2BC70(v199, sub_1D615B49C, v91, sub_1D615B4A4, (&v181 - 6));
    if (v89)
    {
      sub_1D5D2CFE8(v90, type metadata accessor for FormatVersionRequirement);

LABEL_14:
      v67 = v31;
      return sub_1D5D2CFE8(v67, sub_1D66C22A4);
    }

    v197 = v84;
    *&v200 = v74;

    sub_1D72647EC();
    sub_1D5D2CFE8(v199, type metadata accessor for FormatVersionRequirement);

    v93 = *(v196 + 48);
    v94 = v189;
    v95 = v191;
    (v191)(v189, v194, v195);
    swift_storeEnumTagMultiPayload();
    v199 = xmmword_1D7297410;
    v206 = xmmword_1D7297410;
    v207 = 0;
    LOBYTE(v204) = 0;
    v97 = swift_allocObject();
    *(v97 + 16) = v199;
    *(v97 + 32) = v204;
    v98 = v183;
    *(v97 + 40) = v183;
    v99 = v200;
    *(v97 + 48) = v200;
    v182 = v31;
    if (v93 == 2)
    {
      v198 = 0;

      v100 = v197;
      v101 = v95;
    }

    else
    {
      v198 = &v181;
      LOBYTE(v204) = v93 & 1;
      MEMORY[0x1EEE9AC00](v99, v96);
      *(&v181 - 4) = sub_1D5B4AA6C;
      *(&v181 - 3) = 0;
      v179 = sub_1D6708BB4;
      v180 = v97;
      LOBYTE(v201) = 0;
      v118 = v117;
      v119 = v94;
      v120 = swift_allocObject();
      *(v120 + 16) = v199;
      *(v120 + 32) = v201;
      *(v120 + 40) = v98;
      *(v120 + 48) = v118;
      swift_retain_n();
      v121 = sub_1D72647CC();
      LOBYTE(v201) = 0;
      v122 = swift_allocObject();
      *(v122 + 16) = v121;
      *(v122 + 24) = v199;
      *(v122 + 40) = v201;
      v100 = v197;
      v123 = __swift_project_boxed_opaque_existential_1(v197, *(v197 + 3));
      MEMORY[0x1EEE9AC00](v123, v124);
      MEMORY[0x1EEE9AC00](v125, v126);
      *(&v181 - 4) = sub_1D615B4A4;
      *(&v181 - 3) = (&v181 - 6);
      v179 = sub_1D6708BB4;
      v180 = v120;
      v128 = sub_1D5D2F7A4(v119, sub_1D615B49C, v127, sub_1D615B4A4, (&v181 - 6));
      v129 = v128;

      if (v129)
      {
        sub_1D72647EC();
        v101 = v191;
        v94 = v189;
        v198 = 0;
      }

      else
      {
        v198 = 0;
        v101 = v191;
        v94 = v189;
      }
    }

    sub_1D5D2CFE8(v94, type metadata accessor for FormatVersionRequirement);

    v102 = v196;
    swift_beginAccess();
    v103 = v102[7];
    v104 = v188;
    v101(v188, v194, v195);
    swift_storeEnumTagMultiPayload();
    if (*(v103 + 16))
    {
      LOBYTE(v204) = 0;
      v105 = swift_allocObject();
      v199 = xmmword_1D72BAA60;
      *(v105 + 16) = xmmword_1D72BAA60;
      *(v105 + 32) = v204;
      *(v105 + 40) = v183;
      *(v105 + 48) = v200;

      v31 = v182;
      v106 = v104;
      v107 = sub_1D72647CC();
      LOBYTE(v204) = 0;
      v108 = swift_allocObject();
      *(v108 + 16) = v107;
      *(v108 + 24) = v199;
      *(v108 + 40) = v204;
      v109 = __swift_project_boxed_opaque_existential_1(v100, *(v100 + 3));
      MEMORY[0x1EEE9AC00](v109, v110);
      MEMORY[0x1EEE9AC00](v111, v112);
      *(&v181 - 4) = sub_1D5B4AA6C;
      *(&v181 - 3) = 0;
      v179 = sub_1D6708BB4;
      v180 = v105;
      v113 = v198;
      v115 = sub_1D5D2F7A4(v106, sub_1D615B49C, v114, sub_1D615B4A4, (&v181 - 6));
      v116 = v113;
      if (v113)
      {
        sub_1D5D2CFE8(v106, type metadata accessor for FormatVersionRequirement);

        goto LABEL_14;
      }

      v130 = v115;

      if (v130)
      {
        v204 = v199;
        v205 = 0;
        v201 = v103;
        sub_1D5C34D84(0, &qword_1EDF04B88, &type metadata for FormatSupplementaryNodeStyle.Selector, MEMORY[0x1E69E62F8]);
        sub_1D66C25C8();
        sub_1D72647EC();
        v101 = v191;

        sub_1D5D2CFE8(v188, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v188, type metadata accessor for FormatVersionRequirement);

        v101 = v191;
      }
    }

    else
    {
      sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);
      v116 = v198;
    }

    v131 = v196[8];
    v132 = *(v196 + 36) | (*(v196 + 74) << 16);
    v133 = v187;
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v134 = v195;
    v135 = __swift_project_value_buffer(v195, qword_1EDFFCD50);
    v136 = v101;
    v101(v133, v135, v134);
    swift_storeEnumTagMultiPayload();
    v199 = xmmword_1D72BAA70;
    v204 = xmmword_1D72BAA70;
    v205 = 0;
    LOBYTE(v201) = 0;
    v137 = v133;
    v139 = swift_allocObject();
    *(v139 + 16) = v199;
    *(v139 + 32) = v201;
    v140 = v183;
    *(v139 + 40) = v183;
    v141 = v200;
    *(v139 + 48) = v200;
    if (BYTE2(v132) == 255)
    {

      sub_1D5D2CFE8(v137, type metadata accessor for FormatVersionRequirement);

      v142 = v136;
    }

    else
    {
      v198 = &v181;
      v201 = v131;
      v202 = v132;
      v203 = BYTE2(v132);
      MEMORY[0x1EEE9AC00](v141, v138);
      v194 = &v181 - 6;
      *(&v181 - 4) = sub_1D5B4AA6C;
      *(&v181 - 3) = 0;
      v179 = sub_1D6708BB4;
      v180 = v139;
      v208 = 0;
      v151 = v100;
      v153 = v152;
      v154 = swift_allocObject();
      *(v154 + 16) = v199;
      *(v154 + 32) = v208;
      *(v154 + 40) = v140;
      *(v154 + 48) = v153;
      swift_retain_n();
      sub_1D62B7DCC(v131, v132);
      v155 = sub_1D72647CC();
      v208 = 0;
      v156 = swift_allocObject();
      *(v156 + 16) = v155;
      *(v156 + 24) = v199;
      *(v156 + 40) = v208;
      v157 = __swift_project_boxed_opaque_existential_1(v151, *(v151 + 3));
      MEMORY[0x1EEE9AC00](v157, v158);
      MEMORY[0x1EEE9AC00](v159, v160);
      v161 = v194;
      *(&v181 - 4) = sub_1D615B4A4;
      *(&v181 - 3) = v161;
      v179 = sub_1D6708BB4;
      v180 = v154;
      v163 = sub_1D5D2F7A4(v187, sub_1D615B49C, v162, sub_1D615B4A4, (&v181 - 6));
      if (v116)
      {

        sub_1D610CA74(v201, v202, v203, sub_1D60CF6A8, sub_1D60CF6DC);
        sub_1D5D2CFE8(v187, type metadata accessor for FormatVersionRequirement);
        goto LABEL_49;
      }

      v177 = v163;

      if (v177)
      {
        sub_1D610BD84();
        sub_1D72647EC();
        v142 = v191;

        sub_1D610CA74(v201, v202, v203, sub_1D60CF6A8, sub_1D60CF6DC);
        sub_1D5D2CFE8(v187, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D610CA74(v201, v202, v203, sub_1D60CF6A8, sub_1D60CF6DC);
        sub_1D5D2CFE8(v187, type metadata accessor for FormatVersionRequirement);
        v142 = v191;
      }

      v100 = v197;
    }

    v143 = *(v196 + 75);
    v144 = v186;
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v145 = v195;
    v146 = __swift_project_value_buffer(v195, qword_1EDFFCD68);
    v142(v144, v146, v145);
    swift_storeEnumTagMultiPayload();
    v199 = xmmword_1D72BAA80;
    v204 = xmmword_1D72BAA80;
    v205 = 0;
    LOBYTE(v201) = 0;
    v148 = swift_allocObject();
    *(v148 + 16) = v199;
    *(v148 + 32) = v201;
    v149 = v183;
    *(v148 + 40) = v183;
    v150 = v200;
    *(v148 + 48) = v200;
    if (v143 == 3)
    {

LABEL_48:
      sub_1D5D2CFE8(v144, type metadata accessor for FormatVersionRequirement);

      goto LABEL_49;
    }

    v197 = &v181;
    v198 = v116;
    LOBYTE(v201) = v143;
    MEMORY[0x1EEE9AC00](v150, v147);
    *(&v181 - 4) = sub_1D5B4AA6C;
    *(&v181 - 3) = 0;
    v179 = sub_1D6708BB4;
    v180 = v148;
    v208 = 0;
    v164 = v100;
    v166 = v165;
    v167 = swift_allocObject();
    *(v167 + 16) = v199;
    *(v167 + 32) = v208;
    *(v167 + 40) = v149;
    *(v167 + 48) = v166;
    swift_retain_n();
    v168 = sub_1D72647CC();
    v208 = 0;
    v169 = swift_allocObject();
    *(v169 + 16) = v168;
    *(v169 + 24) = v199;
    *(v169 + 40) = v208;
    v170 = __swift_project_boxed_opaque_existential_1(v164, *(v164 + 3));
    MEMORY[0x1EEE9AC00](v170, v171);
    MEMORY[0x1EEE9AC00](v172, v173);
    *(&v181 - 4) = sub_1D615B4A4;
    *(&v181 - 3) = (&v181 - 6);
    v179 = sub_1D6708BB4;
    v180 = v167;
    v174 = v198;
    v176 = sub_1D5D2F7A4(v144, sub_1D615B49C, v175, sub_1D615B4A4, (&v181 - 6));
    if (!v174)
    {
      v178 = v176;

      if (v178)
      {
        sub_1D5F23DE4();
        sub_1D72647EC();
      }

      v144 = v186;
      goto LABEL_48;
    }

    sub_1D5D2CFE8(v144, type metadata accessor for FormatVersionRequirement);

LABEL_49:
    v67 = v182;
    return sub_1D5D2CFE8(v67, sub_1D66C22A4);
  }

  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

  v67 = v58;
  return sub_1D5D2CFE8(v67, sub_1D66C22A4);
}

uint64_t sub_1D65B4820()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6162726562627572;
  if (v1 != 5)
  {
    v3 = 1885433183;
  }

  v4 = 0x726F7463656C6573;
  if (v1 != 3)
  {
    v4 = 7235952;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7373616C63;
  if (v1 != 1)
  {
    v5 = 0x426F547370696C63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D65B48FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66C2A70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65B4934(uint64_t a1)
{
  v2 = sub_1D66C24A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65B4970(uint64_t a1)
{
  v2 = sub_1D66C24A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSupplementaryNodeStyle.Selector.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D66C26B8();
  v7 = v6;
  v42 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66C274C();
  sub_1D5B58B84(&qword_1EDF24EB8, sub_1D66C274C);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v42;
  v14 = v10;
  if (v12)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v21 = v10;
      v22 = v7;
      v23 = v13;
      v25 = *(v17 - 2);
      v24 = *(v17 - 1);

      v26 = sub_1D662465C();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v27 = v25;
      *(v27 + 8) = v24;
      *(v27 + 16) = v26;
      *(v27 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v23 + 8))(v21, v22);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C36978();
  v38 = 0uLL;
  v39 = 0;
  sub_1D726431C();
  v18 = v40;
  v19 = v41;
  v38 = xmmword_1D728CF30;
  v39 = 0;
  v20 = sub_1D726423C();
  v37 = v18;
  v28 = v7;
  v29 = v13;
  v30 = v20;
  v38 = xmmword_1D7297410;
  v39 = 0;
  sub_1D5C4D6F4();
  sub_1D726427C();
  v35 = v40;
  v36 = v41 | (BYTE2(v41) << 16);
  v38 = xmmword_1D72BAA60;
  v39 = 0;
  sub_1D5F23D90();
  sub_1D726427C();
  (*(v29 + 8))(v14, v28);
  v32 = v40;
  *a2 = v37;
  *(a2 + 8) = v19;
  *(a2 + 16) = v30;
  *(a2 + 24) = v35;
  v33 = v36;
  *(a2 + 34) = BYTE2(v36);
  *(a2 + 32) = v33;
  *(a2 + 35) = v32;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSupplementaryNodeStyle.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v123 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v125 = &v119 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v127 = &v119 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v119 - v14;
  sub_1D66C28CC();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v1;
  v22 = *(v1 + 8);
  LODWORD(v124) = *(v1 + 16);
  v120 = *(v1 + 24);
  v143 = *(v1 + 34);
  v122 = *(v1 + 32);
  v121 = *(v1 + 35);
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D66C274C();
  v26 = v25;
  v27 = sub_1D5B58B84(&qword_1EDF24EB8, sub_1D66C274C);
  sub_1D5D2EE70(&type metadata for FormatSupplementaryNodeStyle.Selector, v26, v28, v23, &type metadata for FormatSupplementaryNodeStyle.Selector, v26, &type metadata for FormatVersions.JazzkonG, v24, v20, v27, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v29 = sub_1D725BD1C();
  v30 = __swift_project_value_buffer(v29, qword_1EDFFCD18);
  v31 = *(v29 - 8);
  v32 = *(v31 + 16);
  v131 = v29;
  v132 = v30;
  v129 = v31 + 16;
  v130 = v32;
  v32(v15);
  v128 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v140 = v21;
  v141 = v22;
  v138 = 0uLL;
  v139 = 0;
  v33 = &v20[*(v17 + 44)];
  v35 = *v33;
  v34 = *(v33 + 1);
  v142 = 0;
  v36 = swift_allocObject();
  *&v136 = &v119;
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = v142;
  *(v36 + 40) = v35;
  *(v36 + 48) = v34;
  MEMORY[0x1EEE9AC00](v36, v37);
  *(&v119 - 4) = sub_1D5B4AA6C;
  *(&v119 - 3) = 0;
  v117 = sub_1D6708BB8;
  v118 = v38;
  v142 = 0;
  v39 = v17;
  v40 = v20;
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = v142;
  v126 = v35;
  *(v41 + 40) = v35;
  *(v41 + 48) = v34;
  sub_1D66C2960();
  v43 = v42;
  v44 = sub_1D5B58B84(&qword_1EDF02E18, sub_1D66C2960);
  swift_retain_n();
  v133 = v44;
  v134 = v43;
  v45 = sub_1D72647CC();
  v142 = 0;
  v46 = swift_allocObject();
  *(v46 + 24) = 0;
  *(v46 + 32) = 0;
  *(v46 + 16) = v45;
  *(v46 + 40) = v142;
  v47 = *(v39 + 36);
  v48 = v15;
  v135 = v40;
  v49 = &v40[v47];
  v50 = __swift_project_boxed_opaque_existential_1(&v40[v47], *&v40[v47 + 24]);
  MEMORY[0x1EEE9AC00](v50, v51);
  MEMORY[0x1EEE9AC00](v52, v53);
  *(&v119 - 4) = sub_1D615B4A4;
  *(&v119 - 3) = (&v119 - 6);
  v117 = sub_1D6708BB8;
  v118 = v41;
  v54 = v137;
  sub_1D5D2BC70(v48, sub_1D615B49C, v55, sub_1D615B4A4, (&v119 - 6));
  if (v54)
  {
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

    v56 = v135;
  }

  else
  {
    v57 = v132;
    v119 = v49;
    *&v137 = v34;

    sub_1D5D3E60C();
    v56 = v135;
    sub_1D72647EC();
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

    v59 = v127;
    v130(v127, v57, v131);
    swift_storeEnumTagMultiPayload();
    v136 = xmmword_1D728CF30;
    v138 = xmmword_1D728CF30;
    v139 = 0;
    LOBYTE(v140) = 0;
    v60 = swift_allocObject();
    v62 = v60;
    *(v60 + 16) = v136;
    *(v60 + 32) = v140;
    v63 = v126;
    v64 = v137;
    *(v60 + 40) = v126;
    *(v60 + 48) = v64;
    if (v124 == 2)
    {

      v65 = v125;
    }

    else
    {
      v132 = &v119;
      LOBYTE(v140) = v124 & 1;
      MEMORY[0x1EEE9AC00](v60, v61);
      v124 = &v119 - 6;
      *(&v119 - 4) = sub_1D5B4AA6C;
      *(&v119 - 3) = 0;
      v117 = sub_1D6708BB8;
      v118 = v62;
      v142 = 0;
      v78 = swift_allocObject();
      v79 = v63;
      v80 = v78;
      *(v78 + 16) = v136;
      *(v78 + 32) = v142;
      *(v78 + 40) = v79;
      *(v78 + 48) = v64;
      swift_retain_n();
      v81 = sub_1D72647CC();
      v142 = 0;
      v82 = swift_allocObject();
      *(v82 + 16) = v81;
      *(v82 + 24) = v136;
      *(v82 + 40) = v142;
      v83 = __swift_project_boxed_opaque_existential_1(v119, *(v119 + 3));
      MEMORY[0x1EEE9AC00](v83, v84);
      MEMORY[0x1EEE9AC00](v85, v86);
      v87 = v124;
      *(&v119 - 4) = sub_1D615B4A4;
      *(&v119 - 3) = v87;
      v117 = sub_1D6708BB8;
      v118 = v80;
      v89 = sub_1D5D2F7A4(v59, sub_1D615B49C, v88, sub_1D615B4A4, (&v119 - 6));
      v114 = v89;

      v65 = v125;
      if (v114)
      {
        sub_1D72647EC();
      }

      v64 = v137;
      v63 = v126;
    }

    v66 = v122 | (v143 << 16);
    sub_1D5D2CFE8(v127, type metadata accessor for FormatVersionRequirement);

    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v67 = v131;
    v68 = __swift_project_value_buffer(v131, qword_1EDFFCD50);
    v130(v65, v68, v67);
    swift_storeEnumTagMultiPayload();
    v136 = xmmword_1D7297410;
    v138 = xmmword_1D7297410;
    v139 = 0;
    LOBYTE(v140) = 0;
    v69 = swift_allocObject();
    v71 = v69;
    *(v69 + 16) = v136;
    *(v69 + 32) = v140;
    *(v69 + 40) = v63;
    *(v69 + 48) = v64;
    if (BYTE2(v66) == 255)
    {

      sub_1D5D2CFE8(v65, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v132 = &v119;
      v90 = v120;
      v140 = v120;
      LOWORD(v141) = v66;
      BYTE2(v141) = BYTE2(v66);
      MEMORY[0x1EEE9AC00](v69, v70);
      *(&v119 - 4) = sub_1D5B4AA6C;
      *(&v119 - 3) = 0;
      v117 = sub_1D6708BB8;
      v118 = v71;
      v142 = 0;
      v91 = swift_allocObject();
      v92 = v63;
      v93 = v91;
      *(v91 + 16) = v136;
      *(v91 + 32) = v142;
      *(v91 + 40) = v92;
      *(v91 + 48) = v64;
      swift_retain_n();
      sub_1D62B7DCC(v90, v66);
      v94 = sub_1D72647CC();
      v142 = 0;
      v95 = swift_allocObject();
      *(v95 + 16) = v94;
      *(v95 + 24) = v136;
      *(v95 + 40) = v142;
      v96 = __swift_project_boxed_opaque_existential_1(v119, *(v119 + 3));
      MEMORY[0x1EEE9AC00](v96, v97);
      MEMORY[0x1EEE9AC00](v98, v99);
      *(&v119 - 4) = sub_1D615B4A4;
      *(&v119 - 3) = (&v119 - 6);
      v100 = v125;
      v117 = sub_1D6708BB8;
      v118 = v93;
      v102 = sub_1D5D2F7A4(v125, sub_1D615B49C, v101, sub_1D615B4A4, (&v119 - 6));
      v115 = v102;

      if (v115)
      {
        sub_1D610BD84();
        sub_1D72647EC();
        v64 = v137;
        v63 = v126;

        sub_1D610CA74(v140, v141, SBYTE2(v141), sub_1D60CF6A8, sub_1D60CF6DC);
        sub_1D5D2CFE8(v100, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D610CA74(v140, v141, SBYTE2(v141), sub_1D60CF6A8, sub_1D60CF6DC);
        sub_1D5D2CFE8(v100, type metadata accessor for FormatVersionRequirement);
        v64 = v137;
        v63 = v126;
      }
    }

    v72 = v123;
    v73 = v131;
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v74 = __swift_project_value_buffer(v73, qword_1EDFFCD68);
    v130(v72, v74, v73);
    swift_storeEnumTagMultiPayload();
    v137 = xmmword_1D72BAA60;
    v138 = xmmword_1D72BAA60;
    v139 = 0;
    LOBYTE(v140) = 0;
    v75 = swift_allocObject();
    v77 = v75;
    *(v75 + 16) = v137;
    *(v75 + 32) = v140;
    *(v75 + 40) = v63;
    *(v75 + 48) = v64;
    if (v121 == 3)
    {
    }

    else
    {
      *&v136 = &v119;
      LOBYTE(v140) = v121;
      MEMORY[0x1EEE9AC00](v75, v76);
      *(&v119 - 4) = sub_1D5B4AA6C;
      *(&v119 - 3) = 0;
      v117 = sub_1D6708BB8;
      v118 = v77;
      v142 = 0;
      v103 = swift_allocObject();
      v104 = v63;
      v105 = v103;
      *(v103 + 16) = v137;
      *(v103 + 32) = v142;
      *(v103 + 40) = v104;
      *(v103 + 48) = v64;
      swift_retain_n();
      v106 = sub_1D72647CC();
      v142 = 0;
      v107 = swift_allocObject();
      *(v107 + 16) = v106;
      *(v107 + 24) = v137;
      *(v107 + 40) = v142;
      v108 = __swift_project_boxed_opaque_existential_1(v119, *(v119 + 3));
      MEMORY[0x1EEE9AC00](v108, v109);
      MEMORY[0x1EEE9AC00](v110, v111);
      *(&v119 - 4) = sub_1D615B4A4;
      *(&v119 - 3) = (&v119 - 6);
      v117 = sub_1D66C29F4;
      v118 = v105;
      v113 = sub_1D5D2F7A4(v123, sub_1D615B49C, v112, sub_1D615B4A4, (&v119 - 6));
      v116 = v113;

      if (v116)
      {
        sub_1D5F23DE4();
        sub_1D72647EC();
      }

      v72 = v123;
    }

    sub_1D5D2CFE8(v72, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v56, sub_1D66C28CC);
}

uint64_t sub_1D65B5F5C()
{
  v1 = *v0;
  v2 = 0x726F7463656C6573;
  v3 = 7235952;
  v4 = 0x6162726562627572;
  if (v1 != 3)
  {
    v4 = 1885433183;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x426F547370696C63;
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

uint64_t sub_1D65B5FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66C2CD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65B6030(uint64_t a1)
{
  v2 = sub_1D66C2824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65B606C(uint64_t a1)
{
  v2 = sub_1D66C2824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSwitchListValue.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v37 - v11;
  v13 = *(a2 + 16);
  v43 = *(a2 + 24);
  v44 = v13;
  v14 = _s10CodingKeysOMa_46();
  WitnessTable = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  *&v47 = v14;
  *(&v47 + 1) = WitnessTable;
  v48 = v16;
  v49 = v17;
  v18 = type metadata accessor for FormatCodingKeysContainer();
  v19 = swift_getWitnessTable();
  sub_1D726446C();
  swift_getWitnessTable();
  v45 = type metadata accessor for VersionedKeyedEncodingContainer();
  v42 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v20);
  v22 = &v37 - v21;
  v23 = *v3;
  v39 = v3[1];
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);

  sub_1D5D2EE70(a2, v18, v26, v24, a2, v18, &type metadata for FormatVersions.JazzkonC, v25, v22, v19, &off_1F51F6C78);
  v50 = v23;
  v47 = 0uLL;
  LOBYTE(v48) = 0;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v27 = sub_1D725BD1C();
  v28 = __swift_project_value_buffer(v27, qword_1EDFFCD30);
  v37 = *(*(v27 - 8) + 16);
  v38 = v28;
  v37(v12);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for FormatSwitchListValue.CaseValue();
  v29 = sub_1D72627FC();
  v46 = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  v31 = v41;
  sub_1D5D38930(&v50, &v47, v12, sub_1D5B4AA6C, 0, v45, v29, v30);
  sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);

  if (v31)
  {
    return (*(v42 + 8))(v22, v45);
  }

  v33 = v40;
  v50 = v39;
  v47 = xmmword_1D728CF30;
  LOBYTE(v48) = 0;
  (v37)(v40, v38, v27);
  swift_storeEnumTagMultiPayload();
  v34 = type metadata accessor for FormatSwitchListValue.DefaultValue();

  v35 = swift_getWitnessTable();
  v36 = v45;
  sub_1D5D432A4(&v50, &v47, v33, sub_1D5B4AA6C, 0, v45, v34, v35);
  sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);

  return (*(v42 + 8))(v22, v36);
}

uint64_t sub_1D65B65BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D65DA43C(*(a1 + 16), *(a1 + 24), _s10CodingKeysOMa_46);
  *a2 = result;
  return result;
}

uint64_t sub_1D65B6600(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D65B6654(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D65B66A8(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v39 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v37 - v10;
  v12 = *(a2 + 24);
  v37[1] = *(a2 + 16);
  v38 = v12;
  v13 = _s10CodingKeysOMa_309();
  WitnessTable = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  *&v44 = v13;
  *(&v44 + 1) = WitnessTable;
  v45 = v15;
  v46 = v16;
  v17 = type metadata accessor for FormatCodingKeysContainer();
  v18 = swift_getWitnessTable();
  sub_1D726446C();
  swift_getWitnessTable();
  v19 = type metadata accessor for VersionedKeyedEncodingContainer();
  v41 = *(v19 - 8);
  v42 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v37 - v21;
  v23 = *v2;
  v37[0] = v2[1];
  v25 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);

  sub_1D5D2EE70(a2, v17, v26, v25, a2, v17, &type metadata for FormatVersions.JazzkonC, v24, v22, v18, &off_1F51F6C78);
  v47 = v23;
  v44 = 0uLL;
  LOBYTE(v45) = 0;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v27 = sub_1D725BD1C();
  v28 = __swift_project_value_buffer(v27, qword_1EDFFCD30);
  v29 = *(*(v27 - 8) + 16);
  v29(v11, v28, v27);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v30 = sub_1D66596F4();
  v31 = v40;
  sub_1D5D38930(&v47, &v44, v11, sub_1D5B4AA6C, 0, v42, &type metadata for FormatExpression, v30);
  sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);

  if (v31)
  {
    return (*(v41 + 8))(v22, v42);
  }

  v47 = v37[0];
  v44 = xmmword_1D728CF30;
  LOBYTE(v45) = 0;
  v33 = v39;
  v29(v39, v28, v27);
  swift_storeEnumTagMultiPayload();
  v34 = sub_1D72627FC();
  v43 = *(v38 + 16);

  v35 = swift_getWitnessTable();
  v36 = v42;
  sub_1D5D38930(&v47, &v44, v33, sub_1D5B4AA6C, 0, v42, v34, v35);
  sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);

  return (*(v41 + 8))(v22, v36);
}

uint64_t sub_1D65B6B78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6973736572707865 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D65B6C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D65B6B78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65B6CC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D65DA43C(*(a1 + 16), *(a1 + 24), _s10CodingKeysOMa_309);
  *a2 = result;
  return result;
}

uint64_t sub_1D65B6D08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D65B6D5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatSwitchListValue.DefaultValue.encode(to:)(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 24);
  v33 = *(a2 + 16);
  v34 = v9;
  v10 = _s10CodingKeysOMa_45();
  WitnessTable = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v36 = v10;
  v37 = WitnessTable;
  v38 = v12;
  v39 = v13;
  v14 = type metadata accessor for FormatCodingKeysContainer();
  v15 = swift_getWitnessTable();
  sub_1D726446C();
  swift_getWitnessTable();
  v16 = type metadata accessor for VersionedKeyedEncodingContainer();
  v17 = *(v16 - 8);
  v31 = v16;
  v32 = v17;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v31 - v19;
  v21 = *v2;
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);

  sub_1D5D2EE70(a2, v14, v24, v22, a2, v14, &type metadata for FormatVersions.JazzkonC, v23, v20, v15, &off_1F51F6C78);
  v40 = v21;
  v36 = 0;
  v37 = 0;
  LOBYTE(v38) = 0;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v25 = sub_1D725BD1C();
  v26 = __swift_project_value_buffer(v25, qword_1EDFFCD30);
  (*(*(v25 - 8) + 16))(v8, v26, v25);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v27 = sub_1D72627FC();
  v35 = *(v34 + 16);
  v28 = swift_getWitnessTable();
  v29 = v31;
  sub_1D5D38930(&v40, &v36, v8, sub_1D5B4AA6C, 0, v31, v27, v28);
  sub_1D5D2CFE8(v8, type metadata accessor for FormatVersionRequirement);

  return (*(v32 + 8))(v20, v29);
}

uint64_t sub_1D65B7154(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365756C6176 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D65B7234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D65B7154(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65B7264@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D65DFB88(*(a1 + 16), *(a1 + 24), _s10CodingKeysOMa_45);
  *a2 = result;
  return result;
}

uint64_t sub_1D65B72A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D65B72FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatSwitchNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v189 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v194 = &v189 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v195 = &v189 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v196 = &v189 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v197 = &v189 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  *&v207 = &v189 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v189 - v26;
  sub_1D66C2E94();
  v206 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v189 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_1D5C5534C();
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EDF25678, sub_1D5C5534C);
  sub_1D5D2EE70(v4, v35, v37, v32, v4, v35, &type metadata for FormatVersions.JazzkonC, v33, v31, v36, &off_1F51F6C78);
  swift_beginAccess();
  v39 = v2[2];
  v38 = v2[3];
  v203 = v2;
  v40 = qword_1EDF31EB0;

  if (v40 != -1)
  {
    swift_once();
  }

  v41 = sub_1D725BD1C();
  v42 = __swift_project_value_buffer(v41, qword_1EDFFCD30);
  v43 = *(v41 - 8);
  v44 = *(v43 + 16);
  v45 = v43 + 16;
  v204 = v42;
  v205 = v41;
  v44(v27);
  v46 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v47 = sub_1D725895C();
  v48 = (*(*(v47 - 8) + 48))(v8, 1, v47);
  v199 = v44;
  v201 = v45;
  v200 = v46;
  if (v48 == 1)
  {
    v198 = v39;
    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v49 = v206;
    v50 = &v31[*(v206 + 11)];
    v52 = *v50;
    v51 = *(v50 + 1);
    LOBYTE(v210) = 0;
    v53 = swift_allocObject();
    *(v53 + 16) = 0;
    *(v53 + 24) = 0;
    *(v53 + 32) = v210;
    *(v53 + 40) = v52;
    *(v53 + 48) = v51;
    sub_1D66C2F28();
    v55 = v54;
    v56 = sub_1D5B58B84(&qword_1EDF036F8, sub_1D66C2F28);

    *&v208 = v55;
    v57 = sub_1D72647CC();
    LOBYTE(v210) = 0;
    v58 = v31;
    v59 = swift_allocObject();
    *(v59 + 24) = 0;
    *(v59 + 32) = 0;
    *(v59 + 16) = v57;
    *(v59 + 40) = v210;
    v60 = __swift_project_boxed_opaque_existential_1(&v58[*(v49 + 9)], *&v58[*(v49 + 9) + 24]);
    MEMORY[0x1EEE9AC00](v60, v61);
    MEMORY[0x1EEE9AC00](v62, v63);
    *(&v189 - 4) = sub_1D5B4AA6C;
    *(&v189 - 3) = 0;
    v187 = sub_1D66C2FBC;
    v188 = v53;
    v64 = v209;
    v66 = sub_1D5D2F7A4(v27, sub_1D615B49C, v65, sub_1D615B4A4, (&v189 - 6));
    if (v64)
    {
      sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

LABEL_14:
      v92 = v58;
      return sub_1D5D2CFE8(v92, sub_1D66C2E94);
    }

    v67 = v66;
    v209 = v56;

    if (v67)
    {
      v210 = 0uLL;
      LOBYTE(v211) = 0;
      v218 = v198;
      v219 = v38;
      v31 = v58;
      sub_1D72647EC();

      sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
      v209 = 0;
    }

    else
    {
      v209 = 0;
      sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

      v31 = v58;
    }

    v44 = v199;
  }

  else
  {
    sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  v68 = *(v203 + 32);
  (v44)(v207, v204, v205);
  swift_storeEnumTagMultiPayload();
  v218 = v68;
  v208 = xmmword_1D728CF30;
  v210 = xmmword_1D728CF30;
  LOBYTE(v211) = 0;
  v69 = v206;
  v70 = &v31[*(v206 + 11)];
  v72 = *v70;
  v71 = *(v70 + 1);
  v217 = 0;
  v73 = swift_allocObject();
  v198 = &v189;
  *(v73 + 16) = v208;
  *(v73 + 32) = v217;
  *(v73 + 40) = v72;
  *(v73 + 48) = v71;
  MEMORY[0x1EEE9AC00](v73, v74);
  *(&v189 - 4) = sub_1D5B4AA6C;
  *(&v189 - 3) = 0;
  v187 = sub_1D6708BBC;
  v188 = v75;
  v217 = 0;
  v76 = swift_allocObject();
  *(v76 + 16) = v208;
  *(v76 + 32) = v217;
  v191 = v72;
  *(v76 + 40) = v72;
  *(v76 + 48) = v71;
  sub_1D66C2F28();
  v78 = v77;
  v79 = sub_1D5B58B84(&qword_1EDF036F8, sub_1D66C2F28);
  swift_retain_n();
  v192 = v78;
  v193 = v79;
  v80 = sub_1D72647CC();
  v217 = 0;
  v81 = swift_allocObject();
  *(v81 + 16) = v80;
  *(v81 + 24) = v208;
  *(v81 + 40) = v217;
  v82 = *(v69 + 9);
  v202 = v31;
  v83 = &v31[v82];
  v84 = __swift_project_boxed_opaque_existential_1(&v31[v82], *&v31[v82 + 24]);
  MEMORY[0x1EEE9AC00](v84, v85);
  MEMORY[0x1EEE9AC00](v86, v87);
  *(&v189 - 4) = sub_1D615B4A4;
  *(&v189 - 3) = (&v189 - 6);
  v88 = v207;
  v187 = sub_1D6708BBC;
  v188 = v76;
  v89 = v209;
  sub_1D5D2BC70(v207, sub_1D615B49C, v90, sub_1D615B4A4, (&v189 - 6));
  if (v89)
  {
    sub_1D5D2CFE8(v88, type metadata accessor for FormatVersionRequirement);

    v58 = v202;
    goto LABEL_14;
  }

  v206 = v83;
  *&v208 = v71;

  sub_1D5B5BF78(0, &qword_1EDF1B0E8, type metadata accessor for FormatSwitchNodeCase, MEMORY[0x1E69E62F8]);
  sub_1D66C3038();
  v91 = v202;
  sub_1D72647EC();
  v209 = 0;
  sub_1D5D2CFE8(v88, type metadata accessor for FormatVersionRequirement);

  v94 = v203;
  v95 = *(v203 + 40);
  v96 = v197;
  v97 = v199;
  (v199)(v197, v204, v205);
  swift_storeEnumTagMultiPayload();
  v207 = xmmword_1D7297410;
  v210 = xmmword_1D7297410;
  LOBYTE(v211) = 0;
  LOBYTE(v218) = 0;
  v99 = swift_allocObject();
  *(v99 + 16) = v207;
  *(v99 + 32) = v218;
  v100 = v191;
  *(v99 + 40) = v191;
  v101 = v208;
  *(v99 + 48) = v208;
  if (v95)
  {
    v198 = &v189;
    v218 = v95;
    MEMORY[0x1EEE9AC00](v101, v98);
    v190 = &v189 - 6;
    *(&v189 - 4) = sub_1D5B4AA6C;
    *(&v189 - 3) = 0;
    v187 = sub_1D6708BBC;
    v188 = v99;
    v217 = 0;
    v103 = v102;
    v104 = swift_allocObject();
    *(v104 + 16) = v207;
    *(v104 + 32) = v217;
    *(v104 + 40) = v100;
    *(v104 + 48) = v103;
    swift_retain_n();

    v105 = sub_1D72647CC();
    v217 = 0;
    v106 = swift_allocObject();
    *(v106 + 16) = v105;
    *(v106 + 24) = v207;
    *(v106 + 40) = v217;
    v107 = __swift_project_boxed_opaque_existential_1(v206, *(v206 + 3));
    MEMORY[0x1EEE9AC00](v107, v108);
    MEMORY[0x1EEE9AC00](v109, v110);
    v111 = v190;
    *(&v189 - 4) = sub_1D615B4A4;
    *(&v189 - 3) = v111;
    v187 = sub_1D6708BBC;
    v188 = v104;
    v112 = v209;
    v114 = sub_1D5D2F7A4(v96, sub_1D615B49C, v113, sub_1D615B4A4, (&v189 - 6));
    v209 = v112;
    v115 = v196;
    if (v112)
    {

      v91 = v202;
LABEL_19:
      sub_1D5D2CFE8(v96, type metadata accessor for FormatVersionRequirement);
      v92 = v91;
      return sub_1D5D2CFE8(v92, sub_1D66C2E94);
    }

    v117 = v114;

    if (v117)
    {
      type metadata accessor for FormatSwitchNodeDefault();
      sub_1D5B58B84(&qword_1EDF0D318, type metadata accessor for FormatSwitchNodeDefault);
      v91 = v202;
      v118 = v209;
      sub_1D72647EC();
      v209 = v118;
      if (v118)
      {

        v96 = v197;
        goto LABEL_19;
      }

      v116 = v203;
      v97 = v199;
    }

    else
    {

      v91 = v202;
      v116 = v203;
      v97 = v199;
    }
  }

  else
  {

    v115 = v196;
    v116 = v94;
  }

  sub_1D5D2CFE8(v197, type metadata accessor for FormatVersionRequirement);
  swift_beginAccess();
  v119 = *(v116 + 48);
  v97(v115, v204, v205);
  swift_storeEnumTagMultiPayload();
  if ((v119 & 1) == 0)
  {
    sub_1D5D2CFE8(v115, type metadata accessor for FormatVersionRequirement);
    v130 = v209;
    goto LABEL_33;
  }

  LOBYTE(v210) = 0;
  v120 = swift_allocObject();
  v207 = xmmword_1D72BAA60;
  *(v120 + 16) = xmmword_1D72BAA60;
  *(v120 + 32) = v210;
  *(v120 + 40) = v191;
  *(v120 + 48) = v208;

  v121 = sub_1D72647CC();
  LOBYTE(v210) = 0;
  v122 = swift_allocObject();
  *(v122 + 16) = v121;
  *(v122 + 24) = v207;
  *(v122 + 40) = v210;
  v123 = __swift_project_boxed_opaque_existential_1(v206, *(v206 + 3));
  MEMORY[0x1EEE9AC00](v123, v124);
  MEMORY[0x1EEE9AC00](v125, v126);
  *(&v189 - 4) = sub_1D5B4AA6C;
  *(&v189 - 3) = 0;
  v187 = sub_1D6708BBC;
  v188 = v120;
  v127 = v209;
  v129 = sub_1D5D2F7A4(v115, sub_1D615B49C, v128, sub_1D615B4A4, (&v189 - 6));
  if (!v127)
  {
    v131 = v129;

    if (v131)
    {
      v210 = v207;
      LOBYTE(v211) = 0;
      v217 = 1;
      sub_1D72647EC();
      v130 = 0;
      sub_1D5D2CFE8(v115, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v115, type metadata accessor for FormatVersionRequirement);
      v130 = 0;
    }

LABEL_33:
    v209 = v130;
    swift_beginAccess();
    v133 = *(v116 + 56);
    v132 = *(v116 + 64);
    v134 = qword_1EDF31F58[0];

    if (v134 != -1)
    {
      swift_once();
    }

    v135 = v205;
    v136 = __swift_project_value_buffer(v205, qword_1EDFFCE98);
    v137 = v195;
    (v199)(v195, v136, v135);
    swift_storeEnumTagMultiPayload();
    v207 = xmmword_1D72BAA70;
    v210 = xmmword_1D72BAA70;
    LOBYTE(v211) = 0;
    LOBYTE(v215) = 0;
    v139 = swift_allocObject();
    *(v139 + 16) = v207;
    *(v139 + 32) = v215;
    v140 = v191;
    *(v139 + 40) = v191;
    v141 = v208;
    *(v139 + 48) = v208;
    if (v132)
    {
      v204 = &v189;
      *&v215 = v133;
      *(&v215 + 1) = v132;
      MEMORY[0x1EEE9AC00](v141, v138);
      *(&v189 - 4) = sub_1D5B4AA6C;
      *(&v189 - 3) = 0;
      v187 = sub_1D6708BBC;
      v188 = v139;
      v220 = 0;
      v143 = v142;
      v144 = swift_allocObject();
      *(v144 + 16) = v207;
      *(v144 + 32) = v220;
      *(v144 + 40) = v140;
      *(v144 + 48) = v143;
      swift_retain_n();

      v145 = sub_1D72647CC();
      v220 = 0;
      v146 = swift_allocObject();
      *(v146 + 16) = v145;
      *(v146 + 24) = v207;
      *(v146 + 40) = v220;
      v147 = __swift_project_boxed_opaque_existential_1(v206, *(v206 + 3));
      MEMORY[0x1EEE9AC00](v147, v148);
      MEMORY[0x1EEE9AC00](v149, v150);
      *(&v189 - 4) = sub_1D615B4A4;
      *(&v189 - 3) = (&v189 - 6);
      v137 = v195;
      v187 = sub_1D6708BBC;
      v188 = v144;
      v151 = v209;
      v153 = sub_1D5D2F7A4(v195, sub_1D615B49C, v152, sub_1D615B4A4, (&v189 - 6));
      v209 = v151;
      if (v151)
      {
        swift_bridgeObjectRelease_n();

        v154 = v202;
LABEL_38:
        sub_1D5D2CFE8(v137, type metadata accessor for FormatVersionRequirement);
        v92 = v154;
        return sub_1D5D2CFE8(v92, sub_1D66C2E94);
      }

      v155 = v153;

      if (v155)
      {
        v154 = v202;
        v156 = v209;
        sub_1D72647EC();
        v209 = v156;
        if (v156)
        {
          swift_bridgeObjectRelease_n();

          goto LABEL_38;
        }
      }

      swift_bridgeObjectRelease_n();
    }

    else
    {
    }

    sub_1D5D2CFE8(v137, type metadata accessor for FormatVersionRequirement);
    v157 = *(v116 + 72);
    v158 = *(v116 + 80);
    v159 = *(v116 + 88);
    v160 = *(v116 + 96);
    v161 = *(v116 + 104);
    v162 = *(v116 + 112);
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v163 = v205;
    v164 = __swift_project_value_buffer(v205, qword_1EDFFCE38);
    v165 = v194;
    (v199)(v194, v164, v163);
    swift_storeEnumTagMultiPayload();
    v207 = xmmword_1D72BAA80;
    v215 = xmmword_1D72BAA80;
    v216 = 0;
    LOBYTE(v210) = 0;
    v167 = swift_allocObject();
    *(v167 + 16) = v207;
    *(v167 + 32) = v210;
    v168 = v191;
    *(v167 + 40) = v191;
    v169 = v208;
    *(v167 + 48) = v208;
    if (v157)
    {
      v205 = &v189;
      v203 = v157;
      *&v210 = v157;
      *(&v210 + 1) = v158;
      v211 = v159;
      v212 = v160;
      v204 = v161;
      v213 = v161;
      v214 = v162;
      MEMORY[0x1EEE9AC00](v169, v166);
      *(&v189 - 4) = sub_1D5B4AA6C;
      *(&v189 - 3) = 0;
      v187 = sub_1D6708BBC;
      v188 = v167;
      v220 = 0;
      v171 = v170;
      v172 = swift_allocObject();
      *(v172 + 16) = v207;
      *(v172 + 32) = v220;
      *(v172 + 40) = v168;
      *(v172 + 48) = v171;
      swift_retain_n();
      sub_1D5EB1D80(v203, v158, v159, v160, v204);
      v173 = sub_1D72647CC();
      v220 = 0;
      v174 = swift_allocObject();
      *(v174 + 16) = v173;
      *(v174 + 24) = v207;
      *(v174 + 40) = v220;
      v175 = __swift_project_boxed_opaque_existential_1(v206, *(v206 + 3));
      MEMORY[0x1EEE9AC00](v175, v176);
      MEMORY[0x1EEE9AC00](v177, v178);
      *(&v189 - 4) = sub_1D615B4A4;
      *(&v189 - 3) = (&v189 - 6);
      v187 = sub_1D6708BBC;
      v188 = v172;
      v179 = v194;
      v180 = v209;
      v182 = sub_1D5D2F7A4(v194, sub_1D615B49C, v181, sub_1D615B4A4, (&v189 - 6));
      if (v180)
      {

        v183 = v202;
LABEL_52:
        v185 = v213;

        sub_1D5CBF568(v185);

        sub_1D5D2CFE8(v179, type metadata accessor for FormatVersionRequirement);
LABEL_55:
        v92 = v183;
        return sub_1D5D2CFE8(v92, sub_1D66C2E94);
      }

      v184 = v182;

      if (v184)
      {
        sub_1D6659A24();
        v183 = v202;
        sub_1D72647EC();

        goto LABEL_52;
      }

      v186 = v213;

      sub_1D5CBF568(v186);

      sub_1D5D2CFE8(v179, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v165, type metadata accessor for FormatVersionRequirement);
    }

    v183 = v202;
    goto LABEL_55;
  }

  sub_1D5D2CFE8(v115, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v91, sub_1D66C2E94);
}

uint64_t sub_1D65B8FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66C3110(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65B8FF8(uint64_t a1)
{
  v2 = sub_1D5C55450();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65B9034(uint64_t a1)
{
  v2 = sub_1D5C55450();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSwitchNodeCase.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v70 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v64 - v10;
  sub_1D66C3354();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D5C55BF8();
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF25368, sub_1D5C55BF8);
  sub_1D5D2EE70(v4, v20, v22, v17, v4, v20, &type metadata for FormatVersions.JazzkonC, v18, v16, v21, &off_1F51F6C78);
  v69 = v2;
  v23 = v2[2];
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
  v26 = *(v24 - 8);
  v27 = *(v26 + 16);
  v67 = v25;
  v68 = v24;
  v64[1] = v26 + 16;
  v65 = v27;
  (v27)(v11);
  v64[0] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v76 = v23;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v28 = &v16[*(v13 + 44)];
  v29 = *v28;
  v30 = *(v28 + 1);
  LOBYTE(v81) = 0;
  v31 = swift_allocObject();
  *&v73 = v64;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v81;
  *(v31 + 40) = v29;
  *(v31 + 48) = v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v64[-4] = sub_1D5B4AA6C;
  v64[-3] = 0;
  v62 = sub_1D6708BC0;
  v63 = v33;
  LOBYTE(v81) = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v81;
  v66 = v29;
  *(v34 + 40) = v29;
  *(v34 + 48) = v30;
  sub_1D66C33E8();
  v36 = v35;
  v37 = sub_1D5B58B84(&qword_1EDF03398, sub_1D66C33E8);
  swift_retain_n();
  v71 = v37;
  v72 = v36;
  v38 = sub_1D72647CC();
  LOBYTE(v81) = 0;
  v39 = swift_allocObject();
  *(v39 + 24) = 0;
  *(v39 + 32) = 0;
  *(v39 + 16) = v38;
  *(v39 + 40) = v81;
  v40 = *(v13 + 36);
  v74 = v16;
  v41 = &v16[v40];
  v42 = __swift_project_boxed_opaque_existential_1(v41, *(v41 + 3));
  MEMORY[0x1EEE9AC00](v42, v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  v64[-4] = sub_1D615B4A4;
  v64[-3] = &v64[-6];
  v62 = sub_1D6708BC0;
  v63 = v34;
  v46 = v75;
  sub_1D5D2BC70(v11, sub_1D615B49C, v47, sub_1D615B4A4, &v64[-6]);
  if (v46)
  {
    sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);

    v48 = v74;
  }

  else
  {
    v75 = v30;

    sub_1D66596F4();
    v48 = v74;
    sub_1D72647EC();
    sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);

    v49 = v69;
    swift_beginAccess();
    v50 = v49[3];
    v51 = v70;
    v65(v70, v67, v68);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v76) = 0;
    v52 = swift_allocObject();
    v73 = xmmword_1D728CF30;
    *(v52 + 16) = xmmword_1D728CF30;
    *(v52 + 32) = v76;
    *(v52 + 40) = v66;
    *(v52 + 48) = v75;

    v75 = v50;

    v53 = sub_1D72647CC();
    LOBYTE(v76) = 0;
    v54 = swift_allocObject();
    *(v54 + 16) = v53;
    *(v54 + 24) = v73;
    *(v54 + 40) = v76;
    v55 = __swift_project_boxed_opaque_existential_1(v41, *(v41 + 3));
    MEMORY[0x1EEE9AC00](v55, v56);
    MEMORY[0x1EEE9AC00](v57, v58);
    v64[-4] = sub_1D5B4AA6C;
    v64[-3] = 0;
    v62 = sub_1D66C347C;
    v63 = v52;
    LOBYTE(v53) = sub_1D5D2F7A4(v51, sub_1D615B49C, v59, sub_1D615B4A4, &v64[-6]);
    v60 = v75;

    if (v53)
    {
      v76 = v73;
      v77 = 0;
      v81 = v60;
      sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
      sub_1D66594A0();
      sub_1D72647EC();

      sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
    }
  }

  return sub_1D5D2CFE8(v48, sub_1D66C3354);
}