uint64_t FormatLayeredMediaNodeStyle.encode(to:)(void *a1)
{
  *&v377 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v353 - v5;
  v7 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v355 = &v353 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v356 = &v353 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v357 = &v353 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v358 = &v353 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v359 = &v353 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v362 = &v353 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v364 = &v353 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v363 = &v353 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v366 = &v353 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v365 = &v353 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  *&v378 = &v353 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v353 - v42;
  sub_1D669EDE4();
  v375 = v44;
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v353 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1[3];
  v49 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v48);
  sub_1D5CDBB34();
  v51 = v50;
  v52 = sub_1D5B58B84(&qword_1EDF24F58, sub_1D5CDBB34);
  v376 = v47;
  v53 = v48;
  v54 = v1;
  sub_1D5D2EE70(v377, v51, v55, v53, v377, v51, &type metadata for FormatVersions.AzdenC, v49, v47, v52, &off_1F51F6BB8);
  swift_beginAccess();
  v56 = v1[2];
  v57 = v54[3];
  v58 = qword_1EDF31EF0;

  if (v58 != -1)
  {
    swift_once();
  }

  v59 = sub_1D725BD1C();
  v60 = __swift_project_value_buffer(v59, qword_1EDFFCDB0);
  v61 = *(v59 - 8);
  v62 = *(v61 + 16);
  v63 = v61 + 16;
  v374 = v60;
  v62(v43);
  v373 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v64 = sub_1D725895C();
  v65 = (*(*(v64 - 8) + 48))(v6, 1, v64);
  v369 = v59;
  v370 = v54;
  v371 = v62;
  v372 = v63;
  if (v65 != 1)
  {
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v6, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
LABEL_8:
    v85 = v378;
    goto LABEL_9;
  }

  v367 = v56;
  sub_1D5D35558(v6, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v66 = v375;
  v67 = v376;
  v68 = &v376[*(v375 + 11)];
  v70 = *v68;
  v69 = *(v68 + 1);
  LOBYTE(v393) = 0;
  v71 = swift_allocObject();
  *(v71 + 16) = 0;
  *(v71 + 24) = 0;
  *(v71 + 32) = v393;
  *(v71 + 40) = v70;
  *(v71 + 48) = v69;
  sub_1D669EE78();
  v73 = v72;
  sub_1D5B58B84(&qword_1EDF02ED8, sub_1D669EE78);

  v368 = v73;
  v74 = sub_1D72647CC();
  LOBYTE(v393) = 0;
  v75 = swift_allocObject();
  *(v75 + 24) = 0;
  *(v75 + 32) = 0;
  *(v75 + 16) = v74;
  *(v75 + 40) = v393;
  v76 = __swift_project_boxed_opaque_existential_1((v67 + *(v66 + 9)), *(v67 + *(v66 + 9) + 24));
  *&v377 = &v353;
  MEMORY[0x1EEE9AC00](v76, v77);
  MEMORY[0x1EEE9AC00](v78, v79);
  *(&v353 - 4) = sub_1D5B4AA6C;
  *(&v353 - 3) = 0;
  v351 = sub_1D669EF0C;
  v352 = v71;
  v80 = v404;
  v82 = sub_1D5D2F7A4(v43, sub_1D615B49C, v81, sub_1D615B4A4, (&v353 - 6));
  v404 = v80;
  if (v80)
  {
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

    v83 = v67;
    return sub_1D5D2CFE8(v83, sub_1D669EDE4);
  }

  v113 = v82;

  if ((v113 & 1) == 0)
  {
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

    v59 = v369;
    v54 = v370;
    v62 = v371;
    goto LABEL_8;
  }

  v393 = 0uLL;
  LOBYTE(v394) = 0;
  *&v385 = v367;
  *(&v385 + 1) = v57;
  v114 = v376;
  v115 = v404;
  sub_1D72647EC();

  sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);
  v59 = v369;
  v54 = v370;
  v62 = v371;
  v85 = v378;
  if (!v115)
  {
    v404 = 0;
LABEL_9:
    v86 = v54[4];
    v87 = v54[5];
    (v62)(v85, v374, v59);
    swift_storeEnumTagMultiPayload();
    *&v385 = v86;
    *(&v385 + 1) = v87;
    v377 = xmmword_1D728CF30;
    v393 = xmmword_1D728CF30;
    LOBYTE(v394) = 0;
    v89 = v375;
    v88 = v376;
    v90 = &v376[*(v375 + 11)];
    v91 = *v90;
    v92 = *(v90 + 1);
    LOBYTE(v379) = 0;
    v93 = swift_allocObject();
    v368 = &v353;
    *(v93 + 16) = v377;
    *(v93 + 32) = v379;
    *(v93 + 40) = v91;
    *(v93 + 48) = v92;
    MEMORY[0x1EEE9AC00](v93, v94);
    v367 = &v353 - 6;
    *(&v353 - 4) = sub_1D5B4AA6C;
    *(&v353 - 3) = 0;
    v351 = sub_1D6708AB8;
    v352 = v95;
    LOBYTE(v379) = 0;
    v96 = swift_allocObject();
    *(v96 + 16) = v377;
    *(v96 + 32) = v379;
    v354 = v91;
    *(v96 + 40) = v91;
    *(v96 + 48) = v92;
    sub_1D669EE78();
    v98 = v97;
    v99 = sub_1D5B58B84(&qword_1EDF02ED8, sub_1D669EE78);
    v353 = v92;
    swift_retain_n();
    v360 = v99;
    v361 = v98;
    v100 = sub_1D72647CC();
    LOBYTE(v379) = 0;
    v101 = swift_allocObject();
    *(v101 + 16) = v100;
    *(v101 + 24) = v377;
    *(v101 + 40) = v379;
    v102 = *(v89 + 9);
    v103 = v88;
    v104 = &v88[v102];
    v105 = __swift_project_boxed_opaque_existential_1(v104, *(v104 + 3));
    MEMORY[0x1EEE9AC00](v105, v106);
    MEMORY[0x1EEE9AC00](v107, v108);
    v109 = v367;
    *(&v353 - 4) = sub_1D615B4A4;
    *(&v353 - 3) = v109;
    v351 = sub_1D6708AB8;
    v352 = v96;
    v110 = v378;
    v111 = v404;
    sub_1D5D2BC70(v378, sub_1D615B49C, v112, sub_1D615B4A4, (&v353 - 6));
    if (v111)
    {
      sub_1D5D2CFE8(v110, type metadata accessor for FormatVersionRequirement);

      v83 = v103;
      return sub_1D5D2CFE8(v83, sub_1D669EDE4);
    }

    *&v377 = v104;

    sub_1D72647EC();
    v404 = 0;
    sub_1D5D2CFE8(v378, type metadata accessor for FormatVersionRequirement);

    v116 = v370;
    swift_beginAccess();
    v117 = v116[6];
    v118 = v365;
    v119 = v374;
    v120 = v369;
    v121 = v371;
    (v371)(v365, v374, v369);
    swift_storeEnumTagMultiPayload();
    if (*(v117 + 16))
    {
      LOBYTE(v393) = 0;
      v122 = swift_allocObject();
      v378 = xmmword_1D7297410;
      *(v122 + 16) = xmmword_1D7297410;
      *(v122 + 32) = v393;
      *(v122 + 40) = v354;
      *(v122 + 48) = v353;

      v123 = v376;
      v124 = sub_1D72647CC();
      LOBYTE(v393) = 0;
      v125 = swift_allocObject();
      *(v125 + 16) = v124;
      *(v125 + 24) = v378;
      *(v125 + 40) = v393;
      v126 = __swift_project_boxed_opaque_existential_1(v377, *(v377 + 24));
      MEMORY[0x1EEE9AC00](v126, v127);
      MEMORY[0x1EEE9AC00](v128, v129);
      *(&v353 - 4) = sub_1D5B4AA6C;
      *(&v353 - 3) = 0;
      v351 = sub_1D6708AB8;
      v352 = v122;
      v130 = v404;
      v132 = sub_1D5D2F7A4(v118, sub_1D615B49C, v131, sub_1D615B4A4, (&v353 - 6));
      if (v130)
      {
        sub_1D5D2CFE8(v118, type metadata accessor for FormatVersionRequirement);

        v83 = v123;
        return sub_1D5D2CFE8(v83, sub_1D669EDE4);
      }

      v134 = v132;

      if (v134)
      {
        v393 = v378;
        LOBYTE(v394) = 0;
        *&v385 = v117;
        sub_1D5C34D84(0, &qword_1EDF04C30, &type metadata for FormatLayeredMediaNodeStyle.Selector, MEMORY[0x1E69E62F8]);
        sub_1D669F08C();
        sub_1D72647EC();
        v120 = v369;
        v116 = v370;
        v119 = v374;
        v133 = v353;
        v404 = 0;
        v121 = v371;

        sub_1D5D2CFE8(v118, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        v404 = 0;
        sub_1D5D2CFE8(v118, type metadata accessor for FormatVersionRequirement);

        v120 = v369;
        v116 = v370;
        v119 = v374;
        v133 = v353;
        v121 = v371;
      }
    }

    else
    {
      sub_1D5D2CFE8(v118, type metadata accessor for FormatVersionRequirement);
      v133 = v353;
    }

    v135 = v116[7];
    v121(v366, v119, v120);
    swift_storeEnumTagMultiPayload();
    v378 = xmmword_1D72BAA60;
    v393 = xmmword_1D72BAA60;
    LOBYTE(v394) = 0;
    LOBYTE(v385) = 0;
    v136 = swift_allocObject();
    v138 = v136;
    *(v136 + 16) = v378;
    *(v136 + 32) = v385;
    v139 = v354;
    *(v136 + 40) = v354;
    *(v136 + 48) = v133;
    if (v135)
    {
      v375 = &v353;
      *&v385 = v135;
      MEMORY[0x1EEE9AC00](v136, v137);
      *(&v353 - 4) = sub_1D5B4AA6C;
      *(&v353 - 3) = 0;
      v351 = sub_1D6708AB8;
      v352 = v138;
      LOBYTE(v379) = 0;
      v140 = swift_allocObject();
      *(v140 + 16) = v378;
      *(v140 + 32) = v379;
      *(v140 + 40) = v139;
      *(v140 + 48) = v133;
      swift_retain_n();

      v141 = sub_1D72647CC();
      LOBYTE(v379) = 0;
      v142 = swift_allocObject();
      *(v142 + 16) = v141;
      *(v142 + 24) = v378;
      *(v142 + 40) = v379;
      v143 = __swift_project_boxed_opaque_existential_1(v377, *(v377 + 24));
      MEMORY[0x1EEE9AC00](v143, v144);
      MEMORY[0x1EEE9AC00](v145, v146);
      *(&v353 - 4) = sub_1D615B4A4;
      *(&v353 - 3) = (&v353 - 6);
      v351 = sub_1D6708AB8;
      v352 = v140;
      v147 = v366;
      v148 = v404;
      v150 = sub_1D5D2F7A4(v366, sub_1D615B49C, v149, sub_1D615B4A4, (&v353 - 6));
      if (v148)
      {

        v151 = v376;

        v152 = v147;
LABEL_61:
        sub_1D5D2CFE8(v152, type metadata accessor for FormatVersionRequirement);
        v83 = v151;
        return sub_1D5D2CFE8(v83, sub_1D669EDE4);
      }

      v154 = v150;

      if (v154)
      {
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        sub_1D72647EC();
        v120 = v369;
        v116 = v370;
        v121 = v371;
        v153 = v353;
        v404 = 0;
        v200 = v374;

        sub_1D5D2CFE8(v147, type metadata accessor for FormatVersionRequirement);
        v201 = v200;
        goto LABEL_32;
      }

      v404 = 0;

      sub_1D5D2CFE8(v147, type metadata accessor for FormatVersionRequirement);
      v120 = v369;
      v116 = v370;
      v121 = v371;
      v153 = v353;
    }

    else
    {
      v153 = v133;

      sub_1D5D2CFE8(v366, type metadata accessor for FormatVersionRequirement);
    }

    v201 = v374;
LABEL_32:
    v155 = v116[8];
    v156 = v363;
    v157 = v201;
    (v121)(v363);
    v158 = v156;
    swift_storeEnumTagMultiPayload();
    v378 = xmmword_1D72BAA70;
    v393 = xmmword_1D72BAA70;
    LOBYTE(v394) = 0;
    LOBYTE(v385) = 0;
    v159 = swift_allocObject();
    v161 = v159;
    *(v159 + 16) = v378;
    *(v159 + 32) = v385;
    v162 = v354;
    *(v159 + 40) = v354;
    *(v159 + 48) = v153;
    if ((~v155 & 0xF000000000000007) != 0)
    {
      v375 = &v353;
      *&v385 = v155;
      MEMORY[0x1EEE9AC00](v159, v160);
      v368 = &v353 - 6;
      *(&v353 - 4) = sub_1D5B4AA6C;
      *(&v353 - 3) = 0;
      v351 = sub_1D6708AB8;
      v352 = v161;
      LOBYTE(v379) = 0;
      v182 = swift_allocObject();
      *(v182 + 16) = v378;
      *(v182 + 32) = v379;
      *(v182 + 40) = v162;
      *(v182 + 48) = v153;
      swift_retain_n();
      sub_1D5D04BD4(v155);
      v183 = sub_1D72647CC();
      LOBYTE(v379) = 0;
      v184 = swift_allocObject();
      *(v184 + 16) = v183;
      *(v184 + 24) = v378;
      *(v184 + 40) = v379;
      v185 = __swift_project_boxed_opaque_existential_1(v377, *(v377 + 24));
      MEMORY[0x1EEE9AC00](v185, v186);
      MEMORY[0x1EEE9AC00](v187, v188);
      v189 = v368;
      *(&v353 - 4) = sub_1D615B4A4;
      *(&v353 - 3) = v189;
      v351 = sub_1D6708AB8;
      v352 = v182;
      v190 = v404;
      v192 = sub_1D5D2F7A4(v158, sub_1D615B49C, v191, sub_1D615B4A4, (&v353 - 6));
      if (v190)
      {

        v151 = v376;

LABEL_40:
        v152 = v158;
        goto LABEL_61;
      }

      v196 = v192;

      if (v196)
      {
        sub_1D5D4A808();
        sub_1D72647EC();
        v120 = v369;
        v157 = v374;
        v404 = 0;
      }

      else
      {
        v404 = 0;

        v120 = v369;
        v157 = v374;
      }

      v163 = v353;
    }

    else
    {

      v163 = v153;
    }

    sub_1D5D2CFE8(v158, type metadata accessor for FormatVersionRequirement);
    v164 = v370;
    v165 = v364;
    v166 = v157;
    v167 = v370[9];
    (v371)(v364, v166, v120);
    swift_storeEnumTagMultiPayload();
    v378 = xmmword_1D72BAA80;
    v393 = xmmword_1D72BAA80;
    LOBYTE(v394) = 0;
    LOBYTE(v385) = 0;
    v168 = swift_allocObject();
    v170 = v168;
    *(v168 + 16) = v378;
    *(v168 + 32) = v385;
    v171 = v354;
    *(v168 + 40) = v354;
    *(v168 + 48) = v163;
    if (v167)
    {
      v375 = &v353;
      *&v385 = v167;
      MEMORY[0x1EEE9AC00](v168, v169);
      *(&v353 - 4) = sub_1D5B4AA6C;
      *(&v353 - 3) = 0;
      v351 = sub_1D6708AB8;
      v352 = v170;
      LOBYTE(v379) = 0;
      v172 = swift_allocObject();
      *(v172 + 16) = v378;
      *(v172 + 32) = v379;
      *(v172 + 40) = v171;
      *(v172 + 48) = v163;
      swift_retain_n();

      v173 = sub_1D72647CC();
      LOBYTE(v379) = 0;
      v174 = swift_allocObject();
      *(v174 + 16) = v173;
      *(v174 + 24) = v378;
      *(v174 + 40) = v379;
      v175 = __swift_project_boxed_opaque_existential_1(v377, *(v377 + 24));
      MEMORY[0x1EEE9AC00](v175, v176);
      MEMORY[0x1EEE9AC00](v177, v178);
      *(&v353 - 4) = sub_1D615B4A4;
      *(&v353 - 3) = (&v353 - 6);
      v351 = sub_1D6708AB8;
      v352 = v172;
      v179 = v404;
      v181 = sub_1D5D2F7A4(v165, sub_1D615B49C, v180, sub_1D615B4A4, (&v353 - 6));
      v404 = v179;
      if (v179)
      {

        v151 = v376;
LABEL_37:
        v152 = v364;
        goto LABEL_61;
      }

      v197 = v181;

      if (v197)
      {
        sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
        sub_1D66612AC();
        v151 = v376;
        v198 = v404;
        sub_1D72647EC();
        v199 = v370;
        if (v198)
        {

          goto LABEL_37;
        }

        v404 = 0;
        v202 = v374;
        v203 = v371;

        sub_1D5D2CFE8(v364, type metadata accessor for FormatVersionRequirement);
        v193 = v203;
        v195 = v202;
        v194 = v353;
        v164 = v199;
      }

      else
      {

        sub_1D5D2CFE8(v364, type metadata accessor for FormatVersionRequirement);
        v164 = v370;
        v193 = v371;
        v194 = v353;
        v195 = v374;
      }
    }

    else
    {

      sub_1D5D2CFE8(v165, type metadata accessor for FormatVersionRequirement);

      v193 = v371;
      v194 = v163;
      v195 = v166;
    }

    v204 = v164[10];
    v205 = v164[11];
    v206 = *(v164 + 96);
    v207 = v362;
    v208 = v193;
    v193(v362, v195, v369);
    swift_storeEnumTagMultiPayload();
    v378 = xmmword_1D72BAA90;
    v402 = xmmword_1D72BAA90;
    v403 = 0;
    LOBYTE(v393) = 0;
    v209 = swift_allocObject();
    v211 = v209;
    *(v209 + 16) = v378;
    *(v209 + 32) = v393;
    v212 = v354;
    *(v209 + 40) = v354;
    *(v209 + 48) = v194;
    if (v206 <= 0xFD)
    {
      v375 = &v353;
      v399 = v204;
      v400 = v205;
      v401 = v206;
      MEMORY[0x1EEE9AC00](v209, v210);
      *(&v353 - 4) = sub_1D5B4AA6C;
      *(&v353 - 3) = 0;
      v351 = sub_1D6708AB8;
      v352 = v211;
      LOBYTE(v393) = 0;
      v248 = swift_allocObject();
      v249 = v194;
      v250 = v248;
      *(v248 + 16) = v378;
      *(v248 + 32) = v393;
      *(v248 + 40) = v212;
      *(v248 + 48) = v249;
      swift_retain_n();
      sub_1D5ED34B0(v204, v205, v206);
      v251 = sub_1D72647CC();
      LOBYTE(v393) = 0;
      v252 = swift_allocObject();
      *(v252 + 16) = v251;
      *(v252 + 24) = v378;
      *(v252 + 40) = v393;
      v253 = v377;
      v254 = __swift_project_boxed_opaque_existential_1(v377, *(v377 + 24));
      MEMORY[0x1EEE9AC00](v254, v255);
      MEMORY[0x1EEE9AC00](v256, v257);
      *(&v353 - 4) = sub_1D615B4A4;
      *(&v353 - 3) = (&v353 - 6);
      v351 = sub_1D6708AB8;
      v352 = v250;
      v258 = v404;
      v260 = sub_1D5D2F7A4(v207, sub_1D615B49C, v259, sub_1D615B4A4, (&v353 - 6));
      if (v258)
      {

        v151 = v376;
        sub_1D5ED34A0(v399, v400, v401);
        v152 = v207;
        goto LABEL_61;
      }

      v271 = v260;

      if (v271)
      {
        sub_1D6661258();
        sub_1D72647EC();
        v212 = v354;
        v404 = 0;
        v310 = v369;
        v311 = v374;
        v208 = v371;

        sub_1D5ED34A0(v399, v400, v401);
        sub_1D5D2CFE8(v362, type metadata accessor for FormatVersionRequirement);
        v215 = v311;
        v213 = v310;
        v214 = v353;
      }

      else
      {
        v404 = 0;

        sub_1D5ED34A0(v399, v400, v401);
        sub_1D5D2CFE8(v207, type metadata accessor for FormatVersionRequirement);
        v213 = v369;
        v208 = v371;
        v215 = v374;
        v214 = v353;
        v212 = v354;
      }

      v216 = v253;
    }

    else
    {

      sub_1D5D2CFE8(v207, type metadata accessor for FormatVersionRequirement);

      v213 = v369;
      v214 = v194;
      v215 = v374;
      v216 = v377;
    }

    v217 = *(v370 + 19);
    v395 = *(v370 + 17);
    v396 = v217;
    v397 = *(v370 + 21);
    v398 = *(v370 + 184);
    v218 = *(v370 + 15);
    v393 = *(v370 + 13);
    v394 = v218;
    v219 = v359;
    v220 = v208;
    v208(v359, v215, v213);
    swift_storeEnumTagMultiPayload();
    v378 = xmmword_1D72BAAA0;
    v391 = xmmword_1D72BAAA0;
    v392 = 0;
    LOBYTE(v385) = 0;
    v221 = swift_allocObject();
    v223 = v221;
    *(v221 + 16) = v378;
    *(v221 + 32) = v385;
    *(v221 + 40) = v212;
    *(v221 + 48) = v214;
    v224 = v214;
    if (v398 == 254)
    {

      v225 = v358;
      v226 = v370;
    }

    else
    {
      v375 = &v353;
      v387 = v395;
      v388 = v396;
      v389 = v397;
      v390 = v398;
      v385 = v393;
      v386 = v394;
      MEMORY[0x1EEE9AC00](v221, v222);
      *(&v353 - 4) = sub_1D5B4AA6C;
      *(&v353 - 3) = 0;
      v351 = sub_1D6708AB8;
      v352 = v223;
      LOBYTE(v379) = 0;
      v261 = swift_allocObject();
      *(v261 + 16) = v378;
      *(v261 + 32) = v379;
      *(v261 + 40) = v212;
      *(v261 + 48) = v214;
      swift_retain_n();
      sub_1D5D355B8(&v393, &v379, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
      v262 = sub_1D72647CC();
      LOBYTE(v379) = 0;
      v263 = swift_allocObject();
      *(v263 + 16) = v262;
      *(v263 + 24) = v378;
      *(v263 + 40) = v379;
      v264 = __swift_project_boxed_opaque_existential_1(v216, v216[3]);
      MEMORY[0x1EEE9AC00](v264, v265);
      MEMORY[0x1EEE9AC00](v266, v267);
      *(&v353 - 4) = sub_1D615B4A4;
      *(&v353 - 3) = (&v353 - 6);
      v351 = sub_1D6708AB8;
      v352 = v261;
      v268 = v404;
      v270 = sub_1D5D2F7A4(v219, sub_1D615B49C, v269, sub_1D615B4A4, (&v353 - 6));
      v404 = v268;
      if (v268)
      {

        v381 = v387;
        v382 = v388;
        v383 = v389;
        v384 = v390;
        v379 = v385;
        v380 = v386;
        sub_1D601144C(&v379);
        v247 = v376;
        goto LABEL_64;
      }

      v272 = v270;

      v225 = v358;
      if (v272)
      {
        sub_1D6661204();
        v247 = v376;
        v273 = v404;
        sub_1D72647EC();
        v226 = v370;
        v220 = v371;
        v224 = v353;
        v404 = v273;
        if (v273)
        {

          v381 = v387;
          v382 = v388;
          v383 = v389;
          v384 = v390;
          v379 = v385;
          v380 = v386;
          sub_1D601144C(&v379);
          goto LABEL_64;
        }

        v381 = v387;
        v382 = v388;
        v383 = v389;
        v384 = v390;
        v379 = v385;
        v380 = v386;
        sub_1D601144C(&v379);
      }

      else
      {

        v381 = v387;
        v382 = v388;
        v383 = v389;
        v384 = v390;
        v379 = v385;
        v380 = v386;
        sub_1D601144C(&v379);
        v226 = v370;
        v220 = v371;
        v224 = v353;
      }
    }

    sub_1D5D2CFE8(v219, type metadata accessor for FormatVersionRequirement);
    v227 = v226[24];
    v228 = v226[25];
    v229 = *(v226 + 208);
    v220(v225, v374, v369);
    swift_storeEnumTagMultiPayload();
    v378 = xmmword_1D72BAAB0;
    v385 = xmmword_1D72BAAB0;
    LOBYTE(v386) = 0;
    LOBYTE(v379) = 0;
    v230 = swift_allocObject();
    v232 = v230;
    *(v230 + 16) = v378;
    *(v230 + 32) = v379;
    v233 = v225;
    v234 = v354;
    *(v230 + 40) = v354;
    *(v230 + 48) = v224;
    if (v229 == 255)
    {

      sub_1D5D2CFE8(v233, type metadata accessor for FormatVersionRequirement);

      v158 = v357;
    }

    else
    {
      v375 = &v353;
      *&v379 = v227;
      *(&v379 + 1) = v228;
      LOBYTE(v380) = v229 & 1;
      MEMORY[0x1EEE9AC00](v230, v231);
      *(&v353 - 4) = sub_1D5B4AA6C;
      *(&v353 - 3) = 0;
      v351 = sub_1D6708AB8;
      v352 = v232;
      LOBYTE(v391) = 0;
      v235 = swift_allocObject();
      v236 = v224;
      v237 = v235;
      *(v235 + 16) = v378;
      *(v235 + 32) = v391;
      *(v235 + 40) = v234;
      *(v235 + 48) = v236;
      swift_retain_n();
      sub_1D6189668(v227, v228, v229);
      v238 = sub_1D72647CC();
      LOBYTE(v391) = 0;
      v239 = swift_allocObject();
      *(v239 + 16) = v238;
      *(v239 + 24) = v378;
      *(v239 + 40) = v391;
      v240 = __swift_project_boxed_opaque_existential_1(v377, *(v377 + 24));
      MEMORY[0x1EEE9AC00](v240, v241);
      MEMORY[0x1EEE9AC00](v242, v243);
      *(&v353 - 4) = sub_1D615B4A4;
      *(&v353 - 3) = (&v353 - 6);
      v351 = sub_1D6708AB8;
      v352 = v237;
      v244 = v404;
      v246 = sub_1D5D2F7A4(v233, sub_1D615B49C, v245, sub_1D615B4A4, (&v353 - 6));
      v219 = v233;
      v404 = v244;
      if (v244)
      {

        v247 = v376;
LABEL_58:
        sub_1D5D2F2C8(v379, *(&v379 + 1), v380);
LABEL_64:
        sub_1D5D2CFE8(v219, type metadata accessor for FormatVersionRequirement);
        v83 = v247;
        return sub_1D5D2CFE8(v83, sub_1D669EDE4);
      }

      v274 = v246;

      v158 = v357;
      if (v274)
      {
        sub_1D60ED320();
        v247 = v376;
        v275 = v404;
        sub_1D72647EC();
        v226 = v370;
        v276 = v374;
        v404 = v275;
        if (v275)
        {

          goto LABEL_58;
        }

        sub_1D5D2F2C8(v379, *(&v379 + 1), v380);
        sub_1D5D2CFE8(v219, type metadata accessor for FormatVersionRequirement);
LABEL_79:
        v277 = v226[28];
        v375 = v226[27];
        v368 = v277;
        v278 = *(v226 + 232);
        sub_1D5B58478();
        v280 = *(v279 + 48);
        v281 = (v158 + *(v279 + 64));
        v282 = v276;
        v283 = v369;
        v284 = v371;
        (v371)(v158, v282, v369);
        if (qword_1EDF31F48 != -1)
        {
          swift_once();
        }

        v285 = __swift_project_value_buffer(v283, qword_1EDFFCE68);
        v284(v158 + v280, v285, v283);
        *v281 = 0;
        v281[1] = 0;
        swift_storeEnumTagMultiPayload();
        v378 = xmmword_1D72BAAC0;
        v385 = xmmword_1D72BAAC0;
        LOBYTE(v386) = 0;
        LOBYTE(v379) = 0;
        v286 = swift_allocObject();
        v288 = v286;
        *(v286 + 16) = v378;
        *(v286 + 32) = v379;
        v289 = v353;
        v290 = v354;
        *(v286 + 40) = v354;
        *(v286 + 48) = v289;
        if (v278 == 255)
        {
          v304 = v283;

          sub_1D5D2CFE8(v158, type metadata accessor for FormatVersionRequirement);

          v305 = v356;
          v306 = v371;
          v307 = v370;
        }

        else
        {
          v374 = &v353;
          v291 = v375;
          v292 = v368;
          *&v379 = v375;
          *(&v379 + 1) = v368;
          LOBYTE(v380) = v278 & 1;
          MEMORY[0x1EEE9AC00](v286, v287);
          v367 = &v353 - 6;
          *(&v353 - 4) = sub_1D5B4AA6C;
          *(&v353 - 3) = 0;
          v351 = sub_1D6708AB8;
          v352 = v288;
          LOBYTE(v391) = 0;
          v293 = swift_allocObject();
          *(v293 + 16) = v378;
          *(v293 + 32) = v391;
          *(v293 + 40) = v290;
          *(v293 + 48) = v289;
          swift_retain_n();
          sub_1D6189668(v291, v292, v278);
          v294 = sub_1D72647CC();
          LOBYTE(v391) = 0;
          v295 = swift_allocObject();
          *(v295 + 16) = v294;
          *(v295 + 24) = v378;
          *(v295 + 40) = v391;
          v296 = __swift_project_boxed_opaque_existential_1(v377, *(v377 + 24));
          MEMORY[0x1EEE9AC00](v296, v297);
          MEMORY[0x1EEE9AC00](v298, v299);
          v300 = v367;
          *(&v353 - 4) = sub_1D615B4A4;
          *(&v353 - 3) = v300;
          v351 = sub_1D6708AB8;
          v352 = v293;
          v301 = v404;
          v303 = sub_1D5D2F7A4(v158, sub_1D615B49C, v302, sub_1D615B4A4, (&v353 - 6));
          v404 = v301;
          if (v301)
          {

            v151 = v376;
LABEL_84:
            sub_1D5D2F2C8(v379, *(&v379 + 1), v380);
            goto LABEL_40;
          }

          v308 = v303;

          if (v308)
          {
            sub_1D60ED320();
            v151 = v376;
            v309 = v404;
            sub_1D72647EC();
            if (v309)
            {

              goto LABEL_84;
            }

            v404 = 0;
          }

          sub_1D5D2F2C8(v379, *(&v379 + 1), v380);
          sub_1D5D2CFE8(v158, type metadata accessor for FormatVersionRequirement);
          v304 = v369;
          v307 = v370;
          v305 = v356;
          v306 = v371;
        }

        v312 = *(v307 + 233);
        if (qword_1EDF31F08 != -1)
        {
          swift_once();
        }

        v313 = __swift_project_value_buffer(v304, qword_1EDFFCDE0);
        v306(v305, v313, v304);
        swift_storeEnumTagMultiPayload();
        v378 = xmmword_1D72BAAD0;
        v385 = xmmword_1D72BAAD0;
        LOBYTE(v386) = 0;
        LOBYTE(v379) = 0;
        v314 = swift_allocObject();
        v316 = v314;
        *(v314 + 16) = v378;
        *(v314 + 32) = v379;
        v317 = v353;
        v318 = v354;
        *(v314 + 40) = v354;
        *(v314 + 48) = v317;
        if (v312 == 2)
        {

          v319 = v355;
        }

        else
        {
          v375 = &v353;
          LOBYTE(v379) = v312 & 1;
          MEMORY[0x1EEE9AC00](v314, v315);
          *(&v353 - 4) = sub_1D5B4AA6C;
          *(&v353 - 3) = 0;
          v351 = sub_1D6708AB8;
          v352 = v316;
          LOBYTE(v391) = 0;
          v320 = v305;
          v321 = swift_allocObject();
          *(v321 + 16) = v378;
          *(v321 + 32) = v391;
          *(v321 + 40) = v318;
          *(v321 + 48) = v317;
          swift_retain_n();
          v322 = sub_1D72647CC();
          LOBYTE(v391) = 0;
          v323 = swift_allocObject();
          *(v323 + 16) = v322;
          *(v323 + 24) = v378;
          *(v323 + 40) = v391;
          v324 = __swift_project_boxed_opaque_existential_1(v377, *(v377 + 24));
          MEMORY[0x1EEE9AC00](v324, v325);
          MEMORY[0x1EEE9AC00](v326, v327);
          *(&v353 - 4) = sub_1D615B4A4;
          *(&v353 - 3) = (&v353 - 6);
          v351 = sub_1D6708AB8;
          v352 = v321;
          v328 = v404;
          v330 = sub_1D5D2F7A4(v320, sub_1D615B49C, v329, sub_1D615B4A4, (&v353 - 6));
          if (v328)
          {
            sub_1D5D2CFE8(v320, type metadata accessor for FormatVersionRequirement);

            v83 = v376;
            return sub_1D5D2CFE8(v83, sub_1D669EDE4);
          }

          v331 = v330;

          if (v331)
          {
            sub_1D72647EC();
          }

          v404 = 0;
          v319 = v355;
          v305 = v356;
          v304 = v369;
          v306 = v371;
        }

        sub_1D5D2CFE8(v305, type metadata accessor for FormatVersionRequirement);

        v332 = v370[30];
        if (qword_1EDF31E98 != -1)
        {
          swift_once();
        }

        v333 = __swift_project_value_buffer(v304, qword_1EDFFCD00);
        v306(v319, v333, v304);
        swift_storeEnumTagMultiPayload();
        v378 = xmmword_1D72BAAE0;
        v385 = xmmword_1D72BAAE0;
        LOBYTE(v386) = 0;
        LOBYTE(v379) = 0;
        v334 = swift_allocObject();
        v336 = v334;
        *(v334 + 16) = v378;
        *(v334 + 32) = v379;
        v337 = v353;
        v338 = v354;
        *(v334 + 40) = v354;
        *(v334 + 48) = v337;
        if (v332)
        {
          v375 = &v353;
          *&v379 = v332;
          MEMORY[0x1EEE9AC00](v334, v335);
          *(&v353 - 4) = sub_1D5B4AA6C;
          *(&v353 - 3) = 0;
          v351 = sub_1D6708AB8;
          v352 = v336;
          LOBYTE(v391) = 0;
          v339 = swift_allocObject();
          *(v339 + 16) = v378;
          *(v339 + 32) = v391;
          *(v339 + 40) = v338;
          *(v339 + 48) = v337;
          swift_retain_n();

          v340 = sub_1D72647CC();
          LOBYTE(v391) = 0;
          v341 = swift_allocObject();
          *(v341 + 16) = v340;
          *(v341 + 24) = v378;
          *(v341 + 40) = v391;
          v342 = __swift_project_boxed_opaque_existential_1(v377, *(v377 + 24));
          MEMORY[0x1EEE9AC00](v342, v343);
          MEMORY[0x1EEE9AC00](v344, v345);
          *(&v353 - 4) = sub_1D615B4A4;
          *(&v353 - 3) = (&v353 - 6);
          v351 = sub_1D6708AB8;
          v352 = v339;
          v346 = v404;
          v348 = sub_1D5D2F7A4(v319, sub_1D615B49C, v347, sub_1D615B4A4, (&v353 - 6));
          v404 = v346;
          if (v346)
          {
          }

          else
          {
            v349 = v348;

            if (v349)
            {
              sub_1D5C34D84(0, &unk_1EDF1B040, &type metadata for FormatLayeredMediaFilter, MEMORY[0x1E69E62F8]);
              sub_1D669EF9C();
              v350 = v404;
              sub_1D72647EC();
              v404 = v350;
            }
          }

          sub_1D5D2CFE8(v355, type metadata accessor for FormatVersionRequirement);
        }

        else
        {

          sub_1D5D2CFE8(v319, type metadata accessor for FormatVersionRequirement);
        }

        v83 = v376;
        return sub_1D5D2CFE8(v83, sub_1D669EDE4);
      }

      sub_1D5D2F2C8(v379, *(&v379 + 1), v380);
      sub_1D5D2CFE8(v219, type metadata accessor for FormatVersionRequirement);
      v226 = v370;
    }

    v276 = v374;
    goto LABEL_79;
  }

  return sub_1D5D2CFE8(v114, sub_1D669EDE4);
}

uint64_t sub_1D6510424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66A0B64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D651045C(uint64_t a1)
{
  v2 = sub_1D5CDBC0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6510498(uint64_t a1)
{
  v2 = sub_1D5CDBC0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatLayeredMediaNodeStyle.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v274 = &v268 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v273 = &v268 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v278 = &v268 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v282 = &v268 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v284 = (&v268 - v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v285 = &v268 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v288 = (&v268 - v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  v290 = (&v268 - v26);
  MEMORY[0x1EEE9AC00](v27, v28);
  v294 = (&v268 - v29);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v268 - v32;
  sub_1D669F128();
  v35 = v34;
  MEMORY[0x1EEE9AC00](v34, v36);
  v38 = &v268 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v1 + 8);
  *&v302 = *v1;
  v40 = *(v1 + 24);
  v289 = *(v1 + 16);
  v41 = *(v1 + 32);
  v42 = *(v1 + 40);
  v286 = v40;
  v287 = v41;
  v280 = *(v1 + 48);
  v281 = v42;
  v283 = *(v1 + 56);
  v43 = *(v1 + 112);
  v325 = *(v1 + 96);
  v326 = v43;
  v327 = *(v1 + 128);
  v328 = *(v1 + 144);
  v44 = *(v1 + 80);
  v323 = *(v1 + 64);
  v324 = v44;
  v45 = *(v1 + 152);
  v276 = *(v1 + 160);
  v277 = v45;
  v279 = *(v1 + 168);
  v46 = *(v1 + 176);
  v271 = *(v1 + 184);
  v272 = v46;
  v275 = *(v1 + 192);
  v270 = *(v1 + 193);
  v269 = *(v1 + 200);
  v47 = a1[3];
  v48 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v47);
  sub_1D5CDCA60();
  v50 = v49;
  v51 = sub_1D5B58B84(&qword_1EDF24F48, sub_1D5CDCA60);
  sub_1D5D2EE70(&type metadata for FormatLayeredMediaNodeStyle.Selector, v50, v52, v47, &type metadata for FormatLayeredMediaNodeStyle.Selector, v50, &type metadata for FormatVersions.AzdenC, v48, v38, v51, &off_1F51F6BB8);
  if (qword_1EDF31EF0 != -1)
  {
    swift_once();
  }

  v53 = sub_1D725BD1C();
  v54 = __swift_project_value_buffer(v53, qword_1EDFFCDB0);
  v55 = *(v53 - 8);
  v56 = *(v55 + 16);
  v298 = v54;
  v292 = v53;
  v295 = v56;
  v296 = v55 + 16;
  v56(v33);
  v297 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v304 = v302;
  *(&v304 + 1) = v39;
  v310 = 0uLL;
  LOBYTE(v311) = 0;
  v57 = &v38[*(v35 + 44)];
  v59 = *v57;
  v58 = *(v57 + 1);
  LOBYTE(v321) = 0;
  v60 = swift_allocObject();
  *&v302 = &v268;
  *(v60 + 16) = 0;
  *(v60 + 24) = 0;
  *(v60 + 32) = v321;
  *(v60 + 40) = v59;
  *(v60 + 48) = v58;
  MEMORY[0x1EEE9AC00](v60, v61);
  v301 = &v268 - 6;
  *(&v268 - 4) = sub_1D5B4AA6C;
  *(&v268 - 3) = 0;
  v266 = sub_1D6708ABC;
  v267 = v62;
  LOBYTE(v321) = 0;
  v63 = swift_allocObject();
  *(v63 + 16) = 0;
  *(v63 + 24) = 0;
  *(v63 + 32) = v321;
  v291 = v59;
  *(v63 + 40) = v59;
  *(v63 + 48) = v58;
  sub_1D669F1BC();
  v65 = v64;
  v66 = sub_1D5B58B84(&qword_1EDF02EC8, sub_1D669F1BC);
  v293 = v58;
  swift_retain_n();
  v299 = v65;
  v300 = v66;
  v67 = sub_1D72647CC();
  LOBYTE(v321) = 0;
  v68 = swift_allocObject();
  *(v68 + 24) = 0;
  *(v68 + 32) = 0;
  *(v68 + 16) = v67;
  *(v68 + 40) = v321;
  v69 = *(v35 + 36);
  v70 = v33;
  v329 = v38;
  v71 = &v38[v69];
  v72 = __swift_project_boxed_opaque_existential_1(&v38[v69], *&v38[v69 + 24]);
  MEMORY[0x1EEE9AC00](v72, v73);
  MEMORY[0x1EEE9AC00](v74, v75);
  v76 = v301;
  *(&v268 - 4) = sub_1D615B4A4;
  *(&v268 - 3) = v76;
  v266 = sub_1D6708ABC;
  v267 = v63;
  v77 = v303;
  sub_1D5D2BC70(v70, sub_1D615B49C, v78, sub_1D615B4A4, (&v268 - 6));
  if (v77)
  {
    sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);

    v79 = v329;
    return sub_1D5D2CFE8(v79, sub_1D669F128);
  }

  v303 = v71;

  sub_1D5D3E60C();
  sub_1D72647EC();
  sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);

  v82 = v294;
  v81 = v295;
  v83 = v292;
  v295(v294, v298, v292);
  swift_storeEnumTagMultiPayload();
  v302 = xmmword_1D728CF30;
  v310 = xmmword_1D728CF30;
  LOBYTE(v311) = 0;
  LOBYTE(v304) = 0;
  v84 = swift_allocObject();
  v86 = v84;
  *(v84 + 16) = v302;
  *(v84 + 32) = v304;
  v87 = v291;
  v88 = v293;
  *(v84 + 40) = v291;
  *(v84 + 48) = v88;
  v301 = 0;
  if (!v289)
  {

    sub_1D5D2CFE8(v82, type metadata accessor for FormatVersionRequirement);

    goto LABEL_14;
  }

  v268 = &v268;
  *&v304 = v289;
  MEMORY[0x1EEE9AC00](v84, v85);
  *(&v268 - 4) = sub_1D5B4AA6C;
  *(&v268 - 3) = 0;
  v266 = sub_1D6708ABC;
  v267 = v86;
  LOBYTE(v321) = 0;
  v89 = swift_allocObject();
  *(v89 + 16) = v302;
  *(v89 + 32) = v321;
  *(v89 + 40) = v87;
  *(v89 + 48) = v88;
  swift_retain_n();

  v90 = sub_1D72647CC();
  LOBYTE(v321) = 0;
  v91 = swift_allocObject();
  *(v91 + 16) = v90;
  *(v91 + 24) = v302;
  *(v91 + 40) = v321;
  v92 = __swift_project_boxed_opaque_existential_1(v303, *(v303 + 3));
  MEMORY[0x1EEE9AC00](v92, v93);
  MEMORY[0x1EEE9AC00](v94, v95);
  *(&v268 - 4) = sub_1D615B4A4;
  *(&v268 - 3) = (&v268 - 6);
  v266 = sub_1D6708ABC;
  v267 = v89;
  v96 = v301;
  v98 = sub_1D5D2F7A4(v82, sub_1D615B49C, v97, sub_1D615B4A4, (&v268 - 6));
  if (!v96)
  {
    v101 = v98;

    if (v101)
    {
      sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
      sub_1D66582DC();
      sub_1D72647EC();
      v88 = v293;
      v81 = v295;
      v301 = 0;

      sub_1D5D2CFE8(v294, type metadata accessor for FormatVersionRequirement);
      v87 = v291;
      v83 = v292;
    }

    else
    {
      v301 = 0;

      sub_1D5D2CFE8(v294, type metadata accessor for FormatVersionRequirement);
      v83 = v292;
      v88 = v293;
      v87 = v291;
      v81 = v295;
    }

LABEL_14:
    v102 = v290;
    v81(v290, v298, v83);
    swift_storeEnumTagMultiPayload();
    v302 = xmmword_1D7297410;
    v310 = xmmword_1D7297410;
    LOBYTE(v311) = 0;
    LOBYTE(v304) = 0;
    v103 = swift_allocObject();
    v105 = v103;
    *(v103 + 16) = v302;
    *(v103 + 32) = v304;
    *(v103 + 40) = v87;
    *(v103 + 48) = v88;
    if ((~v286 & 0xF000000000000007) != 0)
    {
      v294 = &v268;
      *&v304 = v286;
      MEMORY[0x1EEE9AC00](v103, v104);
      v289 = &v268 - 6;
      *(&v268 - 4) = sub_1D5B4AA6C;
      *(&v268 - 3) = 0;
      v266 = sub_1D6708ABC;
      v267 = v105;
      LOBYTE(v321) = 0;
      v123 = v122;
      v124 = swift_allocObject();
      *(v124 + 16) = v302;
      *(v124 + 32) = v321;
      *(v124 + 40) = v87;
      *(v124 + 48) = v88;
      swift_retain_n();
      sub_1D5D04BD4(v123);
      v125 = v329;
      v126 = sub_1D72647CC();
      LOBYTE(v321) = 0;
      v127 = swift_allocObject();
      *(v127 + 16) = v126;
      *(v127 + 24) = v302;
      *(v127 + 40) = v321;
      v128 = __swift_project_boxed_opaque_existential_1(v303, *(v303 + 3));
      MEMORY[0x1EEE9AC00](v128, v129);
      MEMORY[0x1EEE9AC00](v130, v131);
      v132 = v289;
      *(&v268 - 4) = sub_1D615B4A4;
      *(&v268 - 3) = v132;
      v266 = sub_1D6708ABC;
      v267 = v124;
      v133 = v301;
      v135 = sub_1D5D2F7A4(v102, sub_1D615B49C, v134, sub_1D615B4A4, (&v268 - 6));
      if (v133)
      {

        v120 = v125;

        v121 = v290;
        goto LABEL_21;
      }

      v136 = v135;

      if (v136)
      {
        sub_1D5D4A808();
        sub_1D72647EC();
        v88 = v293;
        v81 = v295;
        v301 = 0;

        v87 = v291;
        v83 = v292;
      }

      else
      {
        v301 = 0;

        v83 = v292;
        v88 = v293;
        v87 = v291;
        v81 = v295;
      }
    }

    else
    {
    }

    sub_1D5D2CFE8(v290, type metadata accessor for FormatVersionRequirement);
    v106 = v288;
    v81(v288, v298, v83);
    swift_storeEnumTagMultiPayload();
    v302 = xmmword_1D72BAA60;
    v310 = xmmword_1D72BAA60;
    LOBYTE(v311) = 0;
    LOBYTE(v304) = 0;
    v107 = swift_allocObject();
    v109 = v107;
    *(v107 + 16) = v302;
    *(v107 + 32) = v304;
    *(v107 + 40) = v87;
    *(v107 + 48) = v88;
    if (v287)
    {
      v294 = &v268;
      *&v304 = v287;
      MEMORY[0x1EEE9AC00](v107, v108);
      *(&v268 - 4) = sub_1D5B4AA6C;
      *(&v268 - 3) = 0;
      v266 = sub_1D6708ABC;
      v267 = v109;
      LOBYTE(v321) = 0;
      v110 = swift_allocObject();
      *(v110 + 16) = v302;
      *(v110 + 32) = v321;
      *(v110 + 40) = v87;
      *(v110 + 48) = v88;
      swift_retain_n();

      v111 = sub_1D72647CC();
      LOBYTE(v321) = 0;
      v112 = swift_allocObject();
      *(v112 + 16) = v111;
      *(v112 + 24) = v302;
      *(v112 + 40) = v321;
      v113 = __swift_project_boxed_opaque_existential_1(v303, *(v303 + 3));
      MEMORY[0x1EEE9AC00](v113, v114);
      MEMORY[0x1EEE9AC00](v115, v116);
      *(&v268 - 4) = sub_1D615B4A4;
      *(&v268 - 3) = (&v268 - 6);
      v266 = sub_1D6708ABC;
      v267 = v110;
      v117 = v301;
      v119 = sub_1D5D2F7A4(v106, sub_1D615B49C, v118, sub_1D615B4A4, (&v268 - 6));
      if (v117)
      {

        v120 = v329;
        v121 = v288;
LABEL_21:
        sub_1D5D2CFE8(v121, type metadata accessor for FormatVersionRequirement);
        v79 = v120;
        return sub_1D5D2CFE8(v79, sub_1D669F128);
      }

      v137 = v119;

      if (v137)
      {
        sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
        sub_1D66612AC();
        sub_1D72647EC();
        v88 = v293;
        v301 = 0;

        sub_1D5D2CFE8(v288, type metadata accessor for FormatVersionRequirement);
        v87 = v291;
        v83 = v292;
      }

      else
      {
        v301 = 0;

        sub_1D5D2CFE8(v288, type metadata accessor for FormatVersionRequirement);
        v83 = v292;
        v88 = v293;
        v87 = v291;
      }
    }

    else
    {

      sub_1D5D2CFE8(v106, type metadata accessor for FormatVersionRequirement);
    }

    v138 = v285;
    v139 = v295;
    v295(v285, v298, v83);
    swift_storeEnumTagMultiPayload();
    v302 = xmmword_1D72BAA70;
    v321 = xmmword_1D72BAA70;
    v322 = 0;
    LOBYTE(v310) = 0;
    v140 = swift_allocObject();
    v142 = v140;
    *(v140 + 16) = v302;
    *(v140 + 32) = v310;
    *(v140 + 40) = v87;
    *(v140 + 48) = v88;
    if (v283 <= 0xFD)
    {
      v294 = &v268;
      v167 = v280;
      v168 = v281;
      v318 = v281;
      v319 = v280;
      v320 = v283;
      MEMORY[0x1EEE9AC00](v140, v141);
      v290 = &v268 - 6;
      *(&v268 - 4) = sub_1D5B4AA6C;
      *(&v268 - 3) = 0;
      v266 = sub_1D6708ABC;
      v267 = v142;
      LOBYTE(v310) = 0;
      v170 = v169;
      v171 = swift_allocObject();
      *(v171 + 16) = v302;
      *(v171 + 32) = v310;
      *(v171 + 40) = v87;
      *(v171 + 48) = v88;
      swift_retain_n();
      sub_1D5ED34B0(v168, v167, v170);
      v172 = sub_1D72647CC();
      LOBYTE(v310) = 0;
      v173 = swift_allocObject();
      *(v173 + 16) = v172;
      *(v173 + 24) = v302;
      *(v173 + 40) = v310;
      v174 = __swift_project_boxed_opaque_existential_1(v303, *(v303 + 3));
      MEMORY[0x1EEE9AC00](v174, v175);
      MEMORY[0x1EEE9AC00](v176, v177);
      v178 = v290;
      *(&v268 - 4) = sub_1D615B4A4;
      *(&v268 - 3) = v178;
      v266 = sub_1D6708ABC;
      v267 = v171;
      v179 = v301;
      v181 = sub_1D5D2F7A4(v138, sub_1D615B49C, v180, sub_1D615B4A4, (&v268 - 6));
      if (v179)
      {

        v165 = v329;
        v166 = v285;
        sub_1D5ED34A0(v318, v319, v320);
        goto LABEL_39;
      }

      v193 = v181;

      if (v193)
      {
        sub_1D6661258();
        sub_1D72647EC();
        v88 = v293;
        v139 = v295;
        v301 = 0;

        sub_1D5ED34A0(v318, v319, v320);
        sub_1D5D2CFE8(v285, type metadata accessor for FormatVersionRequirement);
        v87 = v291;
        v83 = v292;
      }

      else
      {
        v301 = 0;

        sub_1D5ED34A0(v318, v319, v320);
        sub_1D5D2CFE8(v285, type metadata accessor for FormatVersionRequirement);
        v83 = v292;
        v88 = v293;
        v87 = v291;
        v139 = v295;
      }
    }

    else
    {

      sub_1D5D2CFE8(v138, type metadata accessor for FormatVersionRequirement);
    }

    v143 = v284;
    v139(v284, v298, v83);
    swift_storeEnumTagMultiPayload();
    v302 = xmmword_1D72BAA80;
    v316 = xmmword_1D72BAA80;
    v317 = 0;
    LOBYTE(v310) = 0;
    v144 = swift_allocObject();
    v146 = v144;
    *(v144 + 16) = v302;
    *(v144 + 32) = v310;
    *(v144 + 40) = v87;
    *(v144 + 48) = v88;
    if (v328 == 254)
    {
    }

    else
    {
      v294 = &v268;
      v312 = v325;
      v313 = v326;
      v314 = v327;
      v315 = v328;
      v310 = v323;
      v311 = v324;
      MEMORY[0x1EEE9AC00](v144, v145);
      *(&v268 - 4) = sub_1D5B4AA6C;
      *(&v268 - 3) = 0;
      v266 = sub_1D6708ABC;
      v267 = v146;
      LOBYTE(v304) = 0;
      v183 = swift_allocObject();
      *(v183 + 16) = v302;
      *(v183 + 32) = v304;
      *(v183 + 40) = v87;
      *(v183 + 48) = v88;
      swift_retain_n();
      sub_1D5D355B8(&v323, &v304, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
      v184 = sub_1D72647CC();
      LOBYTE(v304) = 0;
      v185 = swift_allocObject();
      *(v185 + 16) = v184;
      *(v185 + 24) = v302;
      *(v185 + 40) = v304;
      v186 = __swift_project_boxed_opaque_existential_1(v303, *(v303 + 3));
      MEMORY[0x1EEE9AC00](v186, v187);
      MEMORY[0x1EEE9AC00](v188, v189);
      *(&v268 - 4) = sub_1D615B4A4;
      *(&v268 - 3) = (&v268 - 6);
      v266 = sub_1D6708ABC;
      v267 = v183;
      v190 = v301;
      v192 = sub_1D5D2F7A4(v143, sub_1D615B49C, v191, sub_1D615B4A4, (&v268 - 6));
      if (v190)
      {

        v306 = v312;
        v307 = v313;
        v308 = v314;
        v309 = v315;
        v304 = v310;
        v305 = v311;
        sub_1D601144C(&v304);
        v120 = v329;
        v121 = v284;
        goto LABEL_21;
      }

      v195 = v192;

      if (v195)
      {
        sub_1D6661204();
        sub_1D72647EC();
        v88 = v293;
        v301 = 0;

        v306 = v312;
        v307 = v313;
        v308 = v314;
        v309 = v315;
        v304 = v310;
        v305 = v311;
        sub_1D601144C(&v304);
        v87 = v291;
        v83 = v292;
      }

      else
      {
        v301 = 0;

        v306 = v312;
        v307 = v313;
        v308 = v314;
        v309 = v315;
        v304 = v310;
        v305 = v311;
        sub_1D601144C(&v304);
        v83 = v292;
        v88 = v293;
        v87 = v291;
      }
    }

    sub_1D5D2CFE8(v284, type metadata accessor for FormatVersionRequirement);
    v147 = v282;
    v295(v282, v298, v83);
    swift_storeEnumTagMultiPayload();
    v302 = xmmword_1D72BAA90;
    v310 = xmmword_1D72BAA90;
    LOBYTE(v311) = 0;
    LOBYTE(v304) = 0;
    v148 = swift_allocObject();
    v150 = v148;
    *(v148 + 16) = v302;
    *(v148 + 32) = v304;
    *(v148 + 40) = v87;
    *(v148 + 48) = v88;
    v151 = v279;
    if (v279 == 255)
    {

      sub_1D5D2CFE8(v147, type metadata accessor for FormatVersionRequirement);

      v194 = v298;
      v165 = v329;
    }

    else
    {
      v294 = &v268;
      v153 = v276;
      v152 = v277;
      *&v304 = v277;
      *(&v304 + 1) = v276;
      LOBYTE(v305) = v279 & 1;
      MEMORY[0x1EEE9AC00](v148, v149);
      *(&v268 - 4) = sub_1D5B4AA6C;
      *(&v268 - 3) = 0;
      v266 = sub_1D6708ABC;
      v267 = v150;
      LOBYTE(v316) = 0;
      v154 = swift_allocObject();
      *(v154 + 16) = v302;
      *(v154 + 32) = v316;
      *(v154 + 40) = v87;
      *(v154 + 48) = v88;
      swift_retain_n();
      sub_1D6189668(v152, v153, v151);
      v155 = v329;
      v156 = sub_1D72647CC();
      LOBYTE(v316) = 0;
      v157 = swift_allocObject();
      *(v157 + 16) = v156;
      *(v157 + 24) = v302;
      *(v157 + 40) = v316;
      v158 = __swift_project_boxed_opaque_existential_1(v303, *(v303 + 3));
      MEMORY[0x1EEE9AC00](v158, v159);
      MEMORY[0x1EEE9AC00](v160, v161);
      *(&v268 - 4) = sub_1D615B4A4;
      *(&v268 - 3) = (&v268 - 6);
      v266 = sub_1D6708ABC;
      v267 = v154;
      v162 = v301;
      v164 = sub_1D5D2F7A4(v282, sub_1D615B49C, v163, sub_1D615B4A4, (&v268 - 6));
      if (v162)
      {

        v165 = v155;
        v166 = v282;
LABEL_36:
        sub_1D5D2F2C8(v304, *(&v304 + 1), v305);
LABEL_39:
        v182 = v166;
LABEL_40:
        sub_1D5D2CFE8(v182, type metadata accessor for FormatVersionRequirement);
LABEL_41:
        v79 = v165;
        return sub_1D5D2CFE8(v79, sub_1D669F128);
      }

      v301 = 0;
      v196 = v164;

      if (v196)
      {
        sub_1D60ED320();
        v165 = v155;
        v197 = v301;
        sub_1D72647EC();
        v88 = v293;
        v166 = v282;
        v194 = v298;
        v301 = v197;
        if (v197)
        {

          goto LABEL_36;
        }

        sub_1D5D2F2C8(v304, *(&v304 + 1), v305);
        sub_1D5D2CFE8(v166, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2F2C8(v304, *(&v304 + 1), v305);
        sub_1D5D2CFE8(v282, type metadata accessor for FormatVersionRequirement);
        v165 = v155;
        v88 = v293;
        v194 = v298;
      }
    }

    sub_1D5B58478();
    v199 = *(v198 + 48);
    v200 = v278;
    v201 = (v278 + *(v198 + 64));
    v202 = v194;
    v203 = v292;
    v204 = v295;
    v295(v278, v202, v292);
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v205 = __swift_project_value_buffer(v203, qword_1EDFFCE68);
    v204(v200 + v199, v205, v203);
    *v201 = 0;
    v201[1] = 0;
    swift_storeEnumTagMultiPayload();
    v302 = xmmword_1D72BAAA0;
    v310 = xmmword_1D72BAAA0;
    LOBYTE(v311) = 0;
    LOBYTE(v304) = 0;
    v206 = swift_allocObject();
    *(v206 + 16) = v302;
    *(v206 + 32) = v304;
    v208 = v291;
    *(v206 + 40) = v291;
    *(v206 + 48) = v88;
    if (v275 == 255)
    {
      v226 = v204;

      sub_1D5D2CFE8(v200, type metadata accessor for FormatVersionRequirement);

      v227 = v208;
    }

    else
    {
      v298 = &v268;
      v209 = v272;
      v210 = v271;
      *&v304 = v272;
      *(&v304 + 1) = v271;
      LOBYTE(v305) = v275 & 1;
      MEMORY[0x1EEE9AC00](v206, v207);
      v211 = v88;
      *(&v268 - 4) = sub_1D5B4AA6C;
      *(&v268 - 3) = 0;
      v266 = sub_1D6708ABC;
      v267 = v212;
      LOBYTE(v316) = 0;
      v294 = v212;
      v214 = v213;
      v215 = swift_allocObject();
      *(v215 + 16) = v302;
      *(v215 + 32) = v316;
      *(v215 + 40) = v208;
      *(v215 + 48) = v211;
      swift_retain_n();
      sub_1D6189668(v209, v210, v214);
      v216 = sub_1D72647CC();
      LOBYTE(v316) = 0;
      v217 = swift_allocObject();
      *(v217 + 16) = v216;
      *(v217 + 24) = v302;
      *(v217 + 40) = v316;
      v218 = __swift_project_boxed_opaque_existential_1(v303, *(v303 + 3));
      MEMORY[0x1EEE9AC00](v218, v219);
      MEMORY[0x1EEE9AC00](v220, v221);
      *(&v268 - 4) = sub_1D615B4A4;
      *(&v268 - 3) = (&v268 - 6);
      v266 = sub_1D6708ABC;
      v267 = v215;
      v222 = v278;
      v223 = v301;
      v225 = sub_1D5D2F7A4(v278, sub_1D615B49C, v224, sub_1D615B4A4, (&v268 - 6));
      if (v223)
      {

        v165 = v329;
LABEL_61:
        sub_1D5D2F2C8(v304, *(&v304 + 1), v305);
        v182 = v222;
        goto LABEL_40;
      }

      v301 = 0;
      v228 = v225;

      if (v228)
      {
        sub_1D60ED320();
        v165 = v329;
        v229 = v301;
        sub_1D72647EC();
        v88 = v293;
        v227 = v291;
        v226 = v295;
        v301 = v229;
        if (v229)
        {

          goto LABEL_61;
        }

        sub_1D5D2F2C8(v304, *(&v304 + 1), v305);
        sub_1D5D2CFE8(v222, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2F2C8(v304, *(&v304 + 1), v305);
        sub_1D5D2CFE8(v222, type metadata accessor for FormatVersionRequirement);
        v165 = v329;
        v88 = v293;
        v227 = v291;
        v226 = v295;
      }
    }

    v230 = v273;
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v231 = v292;
    v232 = __swift_project_value_buffer(v292, qword_1EDFFCDE0);
    v226(v230, v232, v231);
    swift_storeEnumTagMultiPayload();
    v302 = xmmword_1D72BAAB0;
    v310 = xmmword_1D72BAAB0;
    LOBYTE(v311) = 0;
    LOBYTE(v304) = 0;
    v233 = swift_allocObject();
    v235 = v233;
    *(v233 + 16) = v302;
    *(v233 + 32) = v304;
    *(v233 + 40) = v227;
    *(v233 + 48) = v88;
    if (v270 == 2)
    {
    }

    else
    {
      v298 = &v268;
      LOBYTE(v304) = v270 & 1;
      MEMORY[0x1EEE9AC00](v233, v234);
      *(&v268 - 4) = sub_1D5B4AA6C;
      *(&v268 - 3) = 0;
      v266 = sub_1D6708ABC;
      v267 = v235;
      LOBYTE(v316) = 0;
      v236 = swift_allocObject();
      *(v236 + 16) = v302;
      *(v236 + 32) = v316;
      *(v236 + 40) = v227;
      *(v236 + 48) = v88;
      swift_retain_n();
      v237 = v230;
      v238 = sub_1D72647CC();
      LOBYTE(v316) = 0;
      v239 = swift_allocObject();
      *(v239 + 16) = v238;
      *(v239 + 24) = v302;
      *(v239 + 40) = v316;
      v240 = __swift_project_boxed_opaque_existential_1(v303, *(v303 + 3));
      MEMORY[0x1EEE9AC00](v240, v241);
      MEMORY[0x1EEE9AC00](v242, v243);
      *(&v268 - 4) = sub_1D615B4A4;
      *(&v268 - 3) = (&v268 - 6);
      v266 = sub_1D6708ABC;
      v267 = v236;
      v244 = v301;
      v246 = sub_1D5D2F7A4(v237, sub_1D615B49C, v245, sub_1D615B4A4, (&v268 - 6));
      if (v244)
      {
        sub_1D5D2CFE8(v237, type metadata accessor for FormatVersionRequirement);

        v165 = v329;
        goto LABEL_41;
      }

      v247 = v246;
      v301 = 0;

      if (v247)
      {
        v165 = v329;
        v248 = v301;
        sub_1D72647EC();
        v301 = v248;
        if (v248)
        {
          sub_1D5D2CFE8(v273, type metadata accessor for FormatVersionRequirement);
          goto LABEL_85;
        }
      }

      else
      {
        v165 = v329;
      }

      v230 = v273;
      v88 = v293;
      v227 = v291;
      v226 = v295;
    }

    sub_1D5D2CFE8(v230, type metadata accessor for FormatVersionRequirement);

    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v249 = v292;
    v250 = __swift_project_value_buffer(v292, qword_1EDFFCD00);
    v251 = v274;
    v226(v274, v250, v249);
    swift_storeEnumTagMultiPayload();
    v302 = xmmword_1D72BAAC0;
    v310 = xmmword_1D72BAAC0;
    LOBYTE(v311) = 0;
    LOBYTE(v304) = 0;
    v252 = swift_allocObject();
    v254 = v252;
    *(v252 + 16) = v302;
    *(v252 + 32) = v304;
    *(v252 + 40) = v227;
    *(v252 + 48) = v88;
    if (v269)
    {
      v298 = &v268;
      *&v304 = v269;
      MEMORY[0x1EEE9AC00](v252, v253);
      *(&v268 - 4) = sub_1D5B4AA6C;
      *(&v268 - 3) = 0;
      v266 = sub_1D6708ABC;
      v267 = v254;
      LOBYTE(v316) = 0;
      v255 = swift_allocObject();
      *(v255 + 16) = v302;
      *(v255 + 32) = v316;
      *(v255 + 40) = v227;
      *(v255 + 48) = v88;
      swift_retain_n();

      v256 = sub_1D72647CC();
      LOBYTE(v316) = 0;
      v257 = swift_allocObject();
      *(v257 + 16) = v256;
      *(v257 + 24) = v302;
      *(v257 + 40) = v316;
      v258 = __swift_project_boxed_opaque_existential_1(v303, *(v303 + 3));
      MEMORY[0x1EEE9AC00](v258, v259);
      MEMORY[0x1EEE9AC00](v260, v261);
      *(&v268 - 4) = sub_1D615B4A4;
      *(&v268 - 3) = (&v268 - 6);
      v266 = sub_1D669F250;
      v267 = v255;
      v262 = v301;
      v264 = sub_1D5D2F7A4(v274, sub_1D615B49C, v263, sub_1D615B4A4, (&v268 - 6));
      if (v262)
      {

        v165 = v329;
        v182 = v274;
        goto LABEL_40;
      }

      v265 = v264;

      if ((v265 & 1) == 0)
      {

        sub_1D5D2CFE8(v274, type metadata accessor for FormatVersionRequirement);
        v165 = v329;
        goto LABEL_41;
      }

      sub_1D5C34D84(0, &unk_1EDF1B040, &type metadata for FormatLayeredMediaFilter, MEMORY[0x1E69E62F8]);
      sub_1D669EF9C();
      v165 = v329;
      sub_1D72647EC();
      v166 = v274;

      goto LABEL_39;
    }

    sub_1D5D2CFE8(v251, type metadata accessor for FormatVersionRequirement);
LABEL_85:

    goto LABEL_41;
  }

  v99 = v329;
  v100 = v294;

  sub_1D5D2CFE8(v100, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v99, sub_1D669F128);
}

uint64_t sub_1D6512EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66A0F84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6512EF4(uint64_t a1)
{
  v2 = sub_1D5CDCBE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6512F30(uint64_t a1)
{
  v2 = sub_1D5CDCBE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatLayeredMediaRatio.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v22[0] = a2;
  sub_1D669F2E0();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D669F374();
  sub_1D5B58B84(&qword_1EDF251C8, sub_1D669F374);
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

  v13 = v22[0];
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

      v18 = *(v16 - 2);
      v17 = *(v16 - 1);

      v19 = sub_1D6628490(0x676E69646E6962, 0xE700000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v20 = v18;
      *(v20 + 8) = v17;
      *(v20 + 16) = v19;
      *(v20 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D669F4F4();
  v22[1] = 0;
  v22[2] = 0;
  v23 = 0;
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  *v13 = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatLayeredMediaRatio.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D669F548();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D669F374();
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EDF251C8, sub_1D669F374);
  sub_1D5D2EE70(&type metadata for FormatLayeredMediaRatio, v16, v18, v13, &type metadata for FormatLayeredMediaRatio, v16, &type metadata for FormatVersions.AzdenC, v14, v11, v17, &off_1F51F6BB8);
  if (qword_1EDF31EF0 != -1)
  {
    swift_once();
  }

  v19 = sub_1D725BD1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDFFCDB0);
  (*(*(v19 - 8) + 16))(v6, v20, v19);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v44 = v12;
  v41[3] = 0;
  v41[4] = 0;
  v42 = 0;
  v21 = &v11[*(v8 + 44)];
  v23 = *v21;
  v22 = *(v21 + 1);
  v43 = 0;
  v24 = swift_allocObject();
  v41[1] = v41;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v43;
  *(v24 + 40) = v23;
  *(v24 + 48) = v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v41[-4] = sub_1D5B4AA6C;
  v41[-3] = 0;
  v39 = sub_1D6708AC0;
  v40 = v26;
  v43 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v43;
  *(v27 + 40) = v23;
  *(v27 + 48) = v22;
  sub_1D669F5DC();
  v29 = v28;
  sub_1D5B58B84(&qword_1EDF03188, sub_1D669F5DC);
  swift_retain_n();
  v41[0] = v29;
  v30 = sub_1D72647CC();
  v43 = 0;
  v31 = swift_allocObject();
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  *(v31 + 16) = v30;
  *(v31 + 40) = v43;
  v32 = __swift_project_boxed_opaque_existential_1(&v11[*(v8 + 36)], *&v11[*(v8 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v32, v33);
  MEMORY[0x1EEE9AC00](v34, v35);
  v41[-4] = sub_1D615B4A4;
  v41[-3] = &v41[-6];
  v39 = sub_1D669F670;
  v40 = v27;
  v36 = v41[2];
  sub_1D5D2BC70(v6, sub_1D615B49C, v37, sub_1D615B4A4, &v41[-6]);
  if (v36)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D669F6EC();
    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D669F548);
}

uint64_t sub_1D6513758()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x676E69646E6962;
  }
}

uint64_t sub_1D651378C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E69646E6962 && a2 == 0xE700000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

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

uint64_t sub_1D6513878(uint64_t a1)
{
  v2 = sub_1D669F44C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65138B4(uint64_t a1)
{
  v2 = sub_1D669F44C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D651392C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29[0] = a5;
  v29[1] = a4;
  v31 = a3;
  v7 = v5;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v29 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v5)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v7);
    swift_willThrow();
  }

  else
  {
    v14 = v31;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v15 = sub_1D7264AFC();
    v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

    v18 = v30;
    v19 = v13;
    if (v16)
    {
      v20 = sub_1D726433C();
      v21 = (v20 + 40);
      v22 = *(v20 + 16) + 1;
      while (--v22)
      {
        v23 = v21 + 2;
        v24 = *v21;
        v21 += 2;
        if (v24 >= 4)
        {
          v25 = *(v23 - 3);

          sub_1D5E2D970();
          v7 = swift_allocError();
          *v26 = v25;
          *(v26 + 8) = v24;
          *(v26 + 16) = a2;
          *(v26 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v18 + 8))(v19, v10);
          goto LABEL_9;
        }
      }
    }

    v14(v17);
    v32 = 0uLL;
    sub_1D726431C();
    v28 = v33;
    v32 = xmmword_1D7279980;
    if (v33)
    {
      sub_1D665B884();
    }

    else
    {
      sub_1D665B8D8();
    }

    sub_1D726431C();
    (*(v18 + 8))(v19, v10);
    *v29[0] = v28;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatLayeredMediaRatioBinding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatLayeredMediaRatioBinding, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatLayeredMediaRatioBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenC, v17, v14, v18, &off_1F51F6BB8);
  if (v15)
  {
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCD98);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638AD14(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31EF0 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCDB0);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638AB88(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D6513F5C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6575737369;
  }

  else
  {
    v3 = 0x656E696C64616568;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6575737369;
  }

  else
  {
    v5 = 0x656E696C64616568;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
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

uint64_t sub_1D6514000()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6514080()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t FormatLayoutExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v66 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v62 - v8;
  sub_1D669F794();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v65 = *(v1 + 8);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D5C60250();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF25248, sub_1D5C60250);
  sub_1D5D2EE70(&type metadata for FormatLayoutExpression, v19, v21, v16, &type metadata for FormatLayoutExpression, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v67 = v23;
  v63 = v25;
  v64 = v22;
  v62[2] = v24 + 16;
  (v25)(v9);
  v62[1] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v76 = v15;
  v74 = 0uLL;
  v75 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v73 = 0;
  v29 = swift_allocObject();
  v70 = v62;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v73;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v72 = v9;
  v62[-4] = sub_1D5B4AA6C;
  v62[-3] = 0;
  v60 = sub_1D6708AC4;
  v61 = v31;
  v73 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v73;
  v62[0] = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D669F828();
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF03208, sub_1D669F828);
  swift_retain_n();
  v68 = v34;
  v69 = v35;
  v36 = sub_1D72647CC();
  v73 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v73;
  v38 = &v14[*(v11 + 36)];
  v39 = __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
  MEMORY[0x1EEE9AC00](v39, v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  v62[-4] = sub_1D615B4A4;
  v62[-3] = &v62[-6];
  v43 = v71;
  v44 = v72;
  v60 = sub_1D6708AC4;
  v61 = v32;
  sub_1D5D2BC70(v72, sub_1D615B49C, v45, sub_1D615B4A4, &v62[-6]);
  if (v43)
  {
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v46 = v67;
    v71 = v28;

    sub_1D669F8BC();
    sub_1D72647EC();
    sub_1D5D2CFE8(v72, type metadata accessor for FormatVersionRequirement);

    v47 = v66;
    v63(v66, v46, v64);
    swift_storeEnumTagMultiPayload();
    v48 = v65;
    LOBYTE(v74) = v65;
    if (FormatOperator.rawValue.getter() == 0x6C61757165 && v49 == 0xE500000000000000)
    {
    }

    else
    {
      v50 = sub_1D72646CC();

      if ((v50 & 1) == 0)
      {
        LOBYTE(v74) = 0;
        v52 = swift_allocObject();
        v72 = xmmword_1D728CF30;
        *(v52 + 16) = xmmword_1D728CF30;
        *(v52 + 32) = v74;
        *(v52 + 40) = v62[0];
        *(v52 + 48) = v71;

        v53 = sub_1D72647CC();
        LOBYTE(v74) = 0;
        v54 = swift_allocObject();
        *(v54 + 16) = v53;
        *(v54 + 24) = v72;
        *(v54 + 40) = v74;
        v55 = __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
        MEMORY[0x1EEE9AC00](v55, v56);
        MEMORY[0x1EEE9AC00](v57, v58);
        v62[-4] = sub_1D5B4AA6C;
        v62[-3] = 0;
        v60 = sub_1D669F910;
        v61 = v52;
        LOBYTE(v53) = sub_1D5D2F7A4(v47, sub_1D615B49C, v59, sub_1D615B4A4, &v62[-6]);

        if (v53)
        {
          v74 = v72;
          v75 = 0;
          LOBYTE(v76) = v48;
          sub_1D60566E4();
          sub_1D72647EC();
        }
      }
    }

    sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D669F794);
}

uint64_t sub_1D65149E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66A1300(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6514A1C(uint64_t a1)
{
  v2 = sub_1D5C60328();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6514A58(uint64_t a1)
{
  v2 = sub_1D5C60328();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6514A94(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatLayoutOption, &type metadata for FormatCodingKeys, v15, v12, &type metadata for FormatLayoutOption, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v13, v11, v14, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v16 = sub_1D725BD1C();
  v17 = __swift_project_value_buffer(v16, qword_1EDFFCD30);
  (*(*(v16 - 8) + 16))(v7, v17, v16);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63A81E0(a2, v7);
  sub_1D5D2CFE8(v7, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v11, sub_1D5D30DC4);
}

uint64_t FormatLineBreakStrategy.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v26 = &v25 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v25 = &v25 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v25 - v14;
  v28 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  if (qword_1EDF31F50 != -1)
  {
    swift_once();
  }

  v18 = sub_1D725BD1C();
  v19 = __swift_project_value_buffer(v18, qword_1EDFFCE80);
  v20 = *(*(v18 - 8) + 16);
  v20(v15, v19, v18);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v21 = v32;
  sub_1D5D2BEC4(v15, sub_1D5B4AA6C, 0, v16, v17);
  result = sub_1D5D2CFE8(v15, type metadata accessor for FormatVersionRequirement);
  if (!v21)
  {
    v23 = v29[3];
    v32 = v29[4];
    __swift_project_boxed_opaque_existential_1(v29, v23);
    if (v28)
    {
      v24 = v26;
      v20(v26, v19, v18);
    }

    else
    {
      v24 = v25;
      v20(v25, v19, v18);
    }

    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v24, sub_1D5B4AA6C, 0, v23, v32);
    sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  return result;
}

uint64_t FormatLineCap.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v26 = &v25 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v25 = &v25 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v25 - v14;
  v28 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v18 = sub_1D725BD1C();
  v19 = __swift_project_value_buffer(v18, qword_1EDFFCD30);
  v20 = *(*(v18 - 8) + 16);
  v20(v15, v19, v18);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v21 = v32;
  sub_1D5D2BEC4(v15, sub_1D5B4AA6C, 0, v16, v17);
  result = sub_1D5D2CFE8(v15, type metadata accessor for FormatVersionRequirement);
  if (!v21)
  {
    v23 = v29[3];
    v32 = v29[4];
    __swift_project_boxed_opaque_existential_1(v29, v23);
    if (v28)
    {
      v24 = v26;
      v20(v26, v19, v18);
    }

    else
    {
      v24 = v25;
      v20(v25, v19, v18);
    }

    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v24, sub_1D5B4AA6C, 0, v23, v32);
    sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  return result;
}

uint64_t FormatLiveActivityBinding.Command.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a2;
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
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v14 = v31;
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
          *(v21 + 16) = &unk_1F5115F08;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D669F98C();
    v27 = 0uLL;
    sub_1D726431C();
    v26 = xmmword_1D7279980;
    sub_1D667CF44();
    sub_1D726431C();
    (*(v11 + 8))(v10, v6);
    v23 = v30;
    v24 = v28;
    v25 = v29;
    *v14 = v27;
    *(v14 + 16) = v24;
    *(v14 + 32) = v25;
    *(v14 + 48) = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatLiveActivityBinding.Command.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + 32);
  v13 = *(v2 + 40);
  v14 = *(v2 + 48);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatLiveActivityBinding.Command, &type metadata for FormatCodingKeys, v18, v15, &type metadata for FormatLiveActivityBinding.Command, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.DawnburstC, v16, v11, v17, &off_1F51F6B98);
  v19 = *v2;
  v24[1] = *(v2 + 16);
  v24[0] = v19;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  if (qword_1EDF31F58[0] != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCE98);
  (*(*(v20 - 8) + 16))(v7, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63906EC(v24, v7);
  sub_1D5D2CFE8(v7, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v11, sub_1D5D30DC4);
}

uint64_t sub_1D6515BA0()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6515C14()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6515D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66A1414(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6515D7C(uint64_t a1)
{
  v2 = sub_1D5CB00C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6515DB8(uint64_t a1)
{
  v2 = sub_1D5CB00C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatLocalizationString.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v84 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v82 = &v74 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v74 - v11;
  sub_1D669F9E0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v19 = v1[1];
  v83 = v1[4];
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D5CB08E4();
  v23 = v22;
  v24 = sub_1D5B58B84(&qword_1EDF250F8, sub_1D5CB08E4);
  sub_1D5D2EE70(&type metadata for FormatLocalizationString, v23, v25, v20, &type metadata for FormatLocalizationString, v23, &type metadata for FormatVersions.JazzkonC, v21, v17, v24, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v26 = sub_1D725BD1C();
  v27 = __swift_project_value_buffer(v26, qword_1EDFFCD30);
  v28 = *(v26 - 8);
  v29 = *(v28 + 16);
  v80 = v27;
  v81 = v26;
  v78 = v28 + 16;
  v79 = v29;
  (v29)(v12);
  v77 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v92 = v18;
  v93 = v19;
  v90 = 0uLL;
  v91 = 0;
  v30 = &v17[*(v14 + 44)];
  v31 = *v30;
  v32 = *(v30 + 1);
  v94 = 0;
  v33 = swift_allocObject();
  *&v88 = &v74;
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v94;
  *(v33 + 40) = v31;
  *(v33 + 48) = v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  *(&v74 - 4) = sub_1D5B4AA6C;
  *(&v74 - 3) = 0;
  v72 = sub_1D6708AC8;
  v73 = v35;
  v94 = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = v94;
  v76 = v31;
  *(v36 + 40) = v31;
  *(v36 + 48) = v32;
  sub_1D669FA74();
  v38 = v37;
  v39 = sub_1D5B58B84(&qword_1EDF03088, sub_1D669FA74);
  swift_retain_n();
  v85 = v39;
  v86 = v38;
  v40 = sub_1D72647CC();
  v94 = 0;
  v41 = swift_allocObject();
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;
  *(v41 + 16) = v40;
  *(v41 + 40) = v94;
  v42 = *(v14 + 36);
  v87 = v17;
  v43 = &v17[v42];
  v44 = __swift_project_boxed_opaque_existential_1(&v87[v42], *&v87[v42 + 24]);
  MEMORY[0x1EEE9AC00](v44, v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  *(&v74 - 4) = sub_1D615B4A4;
  *(&v74 - 3) = (&v74 - 6);
  v72 = sub_1D6708AC8;
  v73 = v36;
  v48 = v89;
  sub_1D5D2BC70(v12, sub_1D615B49C, v49, sub_1D615B4A4, (&v74 - 6));
  if (v48)
  {
    v50 = v87;
    sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);

    v52 = v50;
  }

  else
  {
    v75 = v43;
    v89 = v32;

    v51 = v87;
    sub_1D72647EC();
    sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);

    v55 = v81;
    v54 = v82;
    v57 = v79;
    v56 = v80;
    v79(v82, v80, v81);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);
    v58 = v84;
    v57(v84, v56, v55);
    v59 = v58;
    swift_storeEnumTagMultiPayload();
    v60 = v83;
    if (*(v83 + 16))
    {
      LOBYTE(v90) = 0;
      v61 = swift_allocObject();
      v88 = xmmword_1D7297410;
      *(v61 + 16) = xmmword_1D7297410;
      *(v61 + 32) = v90;
      *(v61 + 40) = v76;
      *(v61 + 48) = v89;

      v62 = v51;
      v63 = sub_1D72647CC();
      LOBYTE(v90) = 0;
      v64 = swift_allocObject();
      *(v64 + 16) = v63;
      *(v64 + 24) = v88;
      *(v64 + 40) = v90;
      v65 = __swift_project_boxed_opaque_existential_1(v75, *(v75 + 3));
      MEMORY[0x1EEE9AC00](v65, v66);
      MEMORY[0x1EEE9AC00](v67, v68);
      *(&v74 - 4) = sub_1D5B4AA6C;
      *(&v74 - 3) = 0;
      v72 = sub_1D669FB08;
      v73 = v61;
      v70 = sub_1D5D2F7A4(v59, sub_1D615B49C, v69, sub_1D615B4A4, (&v74 - 6));
      v71 = v70;

      if (v71)
      {
        v90 = v88;
        v91 = 0;
        v92 = v60;
        sub_1D5C34D84(0, &qword_1EDF04D08, &type metadata for FormatLocalizationString.Selector, MEMORY[0x1E69E62F8]);
        sub_1D669FB84();
        sub_1D72647EC();

        sub_1D5D2CFE8(v59, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v59, type metadata accessor for FormatVersionRequirement);
      }
    }

    else
    {
      sub_1D5D2CFE8(v58, type metadata accessor for FormatVersionRequirement);
      v62 = v51;
    }

    v52 = v62;
  }

  return sub_1D5D2CFE8(v52, sub_1D669F9E0);
}

uint64_t sub_1D65166E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66A15D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6516718(uint64_t a1)
{
  v2 = sub_1D5CB0A50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6516754(uint64_t a1)
{
  v2 = sub_1D5CB0A50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatLocalizationString.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v75 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v65 - v8;
  sub_1D669FC20();
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
  sub_1D5CB109C();
  v21 = v20;
  v22 = sub_1D5B58B84(&qword_1EDF250E8, sub_1D5CB109C);
  sub_1D5D2EE70(&type metadata for FormatLocalizationString.Selector, v21, v23, v18, &type metadata for FormatLocalizationString.Selector, v21, &type metadata for FormatVersions.JazzkonC, v19, v14, v22, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
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
  v63 = sub_1D6708ACC;
  v64 = v32;
  v86 = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v86;
  v72 = v28;
  *(v33 + 40) = v28;
  *(v33 + 48) = v29;
  sub_1D669FCB4();
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EDF03078, sub_1D669FCB4);
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
  v63 = sub_1D669FD48;
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

    sub_1D5D3E60C();
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
    v63 = sub_1D6708ACC;
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
    v63 = sub_1D6708ACC;
    v64 = v55;
    sub_1D5D2BC70(v49, sub_1D615B49C, v62, sub_1D615B4A4, (&v65 - 6));

    sub_1D72647EC();
    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D669FC20);
}

uint64_t sub_1D6517004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D657D04C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D651703C(uint64_t a1)
{
  v2 = sub_1D5CB1220();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6517078(uint64_t a1)
{
  v2 = sub_1D5CB1220();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatMediaTiming.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v52 = a2;
  sub_1D669FDC4();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D669FE58();
  sub_1D5B58B84(&qword_1EDF0C5C0, sub_1D669FE58);
  sub_1D7264B0C();
  if (!v2)
  {
    v51 = v7;
    v11 = v52;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v14 = v10;
    if (v13)
    {
      v15 = sub_1D726433C();
      v16 = *(v15 + 16);
      v17 = v51;
      if (v16)
      {
        v18 = (v15 + 48);
        while (*v18 != 1)
        {
          v18 += 24;
          if (!--v16)
          {
            goto LABEL_7;
          }
        }

        v21 = *(v18 - 2);
        v20 = *(v18 - 1);

        v22 = sub_1D661EF58();
        sub_1D5E2D970();
        v3 = swift_allocError();
        *v23 = v21;
        *(v23 + 8) = v20;
        *(v23 + 16) = v22;
        *(v23 + 24) = xmmword_1D72874E0;
        swift_willThrow();
        (*(v17 + 8))(v14, v6);
        goto LABEL_10;
      }

LABEL_7:
    }

    sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    sub_1D5C35368();
    v55 = 0uLL;
    LOBYTE(v56) = 0;
    sub_1D726427C();
    v19 = v59;
    v55 = xmmword_1D728CF30;
    LOBYTE(v56) = 0;
    sub_1D726427C();
    v24 = v59;
    v55 = xmmword_1D7297410;
    LOBYTE(v56) = 0;
    sub_1D726427C();
    v50 = v24;
    v25 = v59;
    v55 = xmmword_1D72BAA60;
    LOBYTE(v56) = 0;
    sub_1D726427C();
    v49 = v25;
    v26 = v59;
    v55 = xmmword_1D72BAA70;
    LOBYTE(v56) = 0;
    sub_1D669FFD8();
    sub_1D726427C();
    v48 = v26;
    LODWORD(v26) = v59;
    v55 = xmmword_1D72BAA80;
    LOBYTE(v56) = 0;
    sub_1D726427C();
    v47 = v26;
    v27 = v59;
    v55 = xmmword_1D72BAA90;
    LOBYTE(v56) = 0;
    sub_1D726427C();
    v46 = v27;
    v28 = v59;
    v59 = xmmword_1D72BAAA0;
    v60 = 0;
    v45 = sub_1D5CDCE98();
    sub_1D726427C();
    v44 = v28;
    v43 = v55;
    LODWORD(v28) = v56;
    v59 = xmmword_1D72BAAB0;
    v60 = 0;
    sub_1D61888A4();
    sub_1D726427C();
    v42 = v28;
    v38 = v55;
    v39 = v56;
    v40 = v57;
    v41 = v58;
    v59 = xmmword_1D72BAAC0;
    v60 = 0;
    sub_1D726427C();
    (*(v51 + 8))(v14, v6);
    v29 = v56;
    v31 = v49;
    v30 = v50;
    *v11 = v19;
    *(v11 + 8) = v30;
    v32 = v48;
    *(v11 + 16) = v31;
    *(v11 + 24) = v32;
    *(v11 + 32) = v47;
    *(v11 + 33) = *v61;
    *(v11 + 36) = *&v61[3];
    v33 = v44;
    *(v11 + 40) = v46;
    *(v11 + 48) = v33;
    v34 = *(&v43 + 1);
    *(v11 + 56) = v43;
    *(v11 + 64) = v34;
    *(v11 + 72) = v42;
    *(v11 + 73) = *v54;
    *(v11 + 76) = *&v54[3];
    v35 = *(&v38 + 1);
    *(v11 + 80) = v38;
    *(v11 + 88) = v35;
    v36 = v40;
    *(v11 + 96) = v39;
    *(v11 + 104) = v36;
    *(v11 + 112) = v41;
    *(v11 + 113) = *v53;
    *(v11 + 116) = *&v53[3];
    *(v11 + 120) = v55;
    *(v11 + 136) = v29;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

LABEL_10:
  sub_1D61E4FBC(a1, v3);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatMediaTiming.encode(to:)(void *a1)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v334 = v310 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v323 = v310 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v324 = v310 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v326 = v310 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v328 = v310 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v329 = v310 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v331 = v310 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v336 = (v310 - v27);
  MEMORY[0x1EEE9AC00](v28, v29);
  *&v342 = v310 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = v310 - v33;
  sub_1D66A002C();
  v36 = v35;
  MEMORY[0x1EEE9AC00](v35, v37);
  v39 = v310 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *v1;
  v338 = v1[1];
  v41 = v1[3];
  v332 = v1[2];
  v330 = v41;
  v357 = *(v1 + 32);
  v42 = v1[6];
  v327 = v1[5];
  v325 = v42;
  v43 = v1[8];
  v321 = v1[7];
  v320 = v43;
  v322 = *(v1 + 72);
  v44 = v1[11];
  v318 = v1[10];
  v317 = v44;
  v45 = v1[13];
  v316 = v1[12];
  v315 = v45;
  v319 = *(v1 + 112);
  v46 = v1[16];
  v313 = v1[15];
  v312 = v46;
  v314 = *(v1 + 136);
  v47 = a1[3];
  v48 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v47);
  sub_1D669FE58();
  v50 = v49;
  v51 = sub_1D5B58B84(&qword_1EDF0C5C0, sub_1D669FE58);
  sub_1D5D2EE70(&type metadata for FormatMediaTiming, v50, v52, v47, &type metadata for FormatMediaTiming, v50, &type metadata for FormatVersions.AzdenB, v48, v39, v51, &off_1F51F6AD8);
  if (qword_1EDF31EF8 != -1)
  {
    swift_once();
  }

  v53 = sub_1D725BD1C();
  v54 = __swift_project_value_buffer(v53, qword_1EDFFCDC8);
  v55 = *(v53 - 8);
  v56 = *(v55 + 16);
  v341 = v54;
  v344 = (v55 + 16);
  *&v345 = v56;
  v56(v34);
  v343 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v348 = 0uLL;
  LOBYTE(v349) = 0;
  v57 = &v39[*(v36 + 44)];
  v58 = v39;
  v60 = *v57;
  v59 = *(v57 + 1);
  LOBYTE(v353) = 0;
  v61 = swift_allocObject();
  v63 = v61;
  *(v61 + 16) = 0;
  *(v61 + 24) = 0;
  *(v61 + 32) = v353;
  *(v61 + 40) = v60;
  *(v61 + 48) = v59;
  v347 = v59;
  v337 = v53;
  v346 = v58;
  v335 = v60;
  v333 = v36;
  if (!v40)
  {
    v340 = v2;

    sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);

    goto LABEL_10;
  }

  v340 = v310;
  *&v353 = v40;
  MEMORY[0x1EEE9AC00](v61, v62);
  *&v339 = v34;
  v310[-4] = sub_1D5B4AA6C;
  v310[-3] = 0;
  v308 = sub_1D6708AD0;
  v309 = v63;
  v356 = 0;
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  *(v64 + 24) = 0;
  *(v64 + 32) = v356;
  v65 = v347;
  *(v64 + 40) = v60;
  *(v64 + 48) = v65;
  sub_1D66A00C0();
  v66 = v2;
  v68 = v67;
  v69 = sub_1D5B58B84(&qword_1EDF03698, sub_1D66A00C0);
  swift_retain_n();

  v311 = v68;
  v310[1] = v69;
  v70 = sub_1D72647CC();
  v356 = 0;
  v71 = swift_allocObject();
  *(v71 + 24) = 0;
  *(v71 + 32) = 0;
  *(v71 + 16) = v70;
  *(v71 + 40) = v356;
  v72 = __swift_project_boxed_opaque_existential_1(&v58[*(v36 + 36)], *&v58[*(v36 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v72, v73);
  MEMORY[0x1EEE9AC00](v74, v75);
  v310[-4] = sub_1D615B4A4;
  v310[-3] = &v310[-6];
  v76 = v339;
  v308 = sub_1D6708AD0;
  v309 = v64;
  v78 = sub_1D5D2F7A4(v339, sub_1D615B49C, v77, sub_1D615B4A4, &v310[-6]);
  if (!v66)
  {
    v80 = v78;
    v36 = v333;

    if (v80)
    {
      sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
      sub_1D66582DC();
      sub_1D72647EC();
      v60 = v335;
      v53 = v337;
      v340 = 0;

      sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v340 = 0;

      sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);
      v60 = v335;
      v53 = v337;
    }

LABEL_10:
    v81 = v342;
    (v345)(v342, v341, v53);
    swift_storeEnumTagMultiPayload();
    v339 = xmmword_1D728CF30;
    v348 = xmmword_1D728CF30;
    LOBYTE(v349) = 0;
    LOBYTE(v353) = 0;
    v82 = swift_allocObject();
    v84 = v82;
    *(v82 + 16) = v339;
    *(v82 + 32) = v353;
    v85 = v347;
    *(v82 + 40) = v60;
    *(v82 + 48) = v85;
    if (v338)
    {
      v311 = v310;
      *&v353 = v338;
      MEMORY[0x1EEE9AC00](v82, v83);
      v310[-4] = sub_1D5B4AA6C;
      v310[-3] = 0;
      v308 = sub_1D6708AD0;
      v309 = v84;
      v356 = 0;
      v86 = swift_allocObject();
      *(v86 + 16) = v339;
      *(v86 + 32) = v356;
      v87 = v347;
      *(v86 + 40) = v60;
      *(v86 + 48) = v87;
      sub_1D66A00C0();
      v88 = sub_1D5B58B84(&qword_1EDF03698, sub_1D66A00C0);
      swift_retain_n();

      v89 = v81;
      v90 = v346;
      v338 = v88;
      v91 = sub_1D72647CC();
      v356 = 0;
      v92 = swift_allocObject();
      *(v92 + 16) = v91;
      *(v92 + 24) = v339;
      *(v92 + 40) = v356;
      v93 = __swift_project_boxed_opaque_existential_1((v90 + *(v36 + 36)), *(v90 + *(v36 + 36) + 24));
      MEMORY[0x1EEE9AC00](v93, v94);
      MEMORY[0x1EEE9AC00](v95, v96);
      v310[-4] = sub_1D615B4A4;
      v310[-3] = &v310[-6];
      v308 = sub_1D6708AD0;
      v309 = v86;
      v97 = v340;
      v99 = sub_1D5D2F7A4(v89, sub_1D615B49C, v98, sub_1D615B4A4, &v310[-6]);
      v100 = v97;
      if (v97)
      {

        v101 = v346;
        v102 = v342;
LABEL_45:

        sub_1D5D2CFE8(v102, type metadata accessor for FormatVersionRequirement);
        v79 = v101;
        return sub_1D5D2CFE8(v79, sub_1D66A002C);
      }

      v103 = v99;
      v104 = v335;

      if (v103)
      {
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        sub_1D72647EC();
        v53 = v337;
        v60 = v104;

        sub_1D5D2CFE8(v342, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v342, type metadata accessor for FormatVersionRequirement);
        v60 = v104;
        v53 = v337;
      }
    }

    else
    {

      sub_1D5D2CFE8(v81, type metadata accessor for FormatVersionRequirement);

      v100 = v340;
    }

    v105 = v334;
    v106 = v336;
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v340 = v100;
    v338 = __swift_project_value_buffer(v53, qword_1EDFFCD50);
    (v345)(v106);
    swift_storeEnumTagMultiPayload();
    v342 = xmmword_1D7297410;
    v348 = xmmword_1D7297410;
    LOBYTE(v349) = 0;
    LOBYTE(v353) = 0;
    v107 = swift_allocObject();
    v109 = v107;
    *(v107 + 16) = v342;
    *(v107 + 32) = v353;
    v110 = v347;
    *(v107 + 40) = v60;
    *(v107 + 48) = v110;
    if (v332)
    {
      *&v339 = v310;
      *&v353 = v332;
      MEMORY[0x1EEE9AC00](v107, v108);
      v310[-4] = sub_1D5B4AA6C;
      v310[-3] = 0;
      v308 = sub_1D6708AD0;
      v309 = v109;
      v356 = 0;
      v111 = swift_allocObject();
      *(v111 + 16) = v342;
      *(v111 + 32) = v356;
      v112 = v347;
      *(v111 + 40) = v60;
      *(v111 + 48) = v112;
      sub_1D66A00C0();
      v114 = v113;
      v115 = sub_1D5B58B84(&qword_1EDF03698, sub_1D66A00C0);
      swift_retain_n();

      v116 = v346;
      v332 = v114;
      v311 = v115;
      v117 = sub_1D72647CC();
      v356 = 0;
      v118 = v106;
      v119 = swift_allocObject();
      *(v119 + 16) = v117;
      *(v119 + 24) = v342;
      *(v119 + 40) = v356;
      v120 = __swift_project_boxed_opaque_existential_1((v116 + *(v36 + 36)), *(v116 + *(v36 + 36) + 24));
      MEMORY[0x1EEE9AC00](v120, v121);
      MEMORY[0x1EEE9AC00](v122, v123);
      v310[-4] = sub_1D615B4A4;
      v310[-3] = &v310[-6];
      v308 = sub_1D6708AD0;
      v309 = v111;
      v124 = v340;
      v126 = sub_1D5D2F7A4(v118, sub_1D615B49C, v125, sub_1D615B4A4, &v310[-6]);
      if (v124)
      {

        v101 = v346;
        v127 = &v360;
LABEL_44:
        v102 = *(v127 - 32);
        goto LABEL_45;
      }

      v128 = v126;
      v129 = v333;

      if (v128)
      {
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        sub_1D72647EC();
        v53 = v337;
        v130 = v336;
        v340 = 0;

        sub_1D5D2CFE8(v130, type metadata accessor for FormatVersionRequirement);
        v105 = v334;
        v36 = v129;
      }

      else
      {
        v340 = 0;

        sub_1D5D2CFE8(v336, type metadata accessor for FormatVersionRequirement);
        v105 = v334;
        v36 = v129;
        v53 = v337;
      }
    }

    else
    {

      sub_1D5D2CFE8(v106, type metadata accessor for FormatVersionRequirement);
    }

    v131 = v331;
    (v345)(v331, v341, v53);
    swift_storeEnumTagMultiPayload();
    v342 = xmmword_1D72BAA60;
    v348 = xmmword_1D72BAA60;
    LOBYTE(v349) = 0;
    LOBYTE(v353) = 0;
    v132 = swift_allocObject();
    v134 = v132;
    *(v132 + 16) = v342;
    *(v132 + 32) = v353;
    v135 = v347;
    *(v132 + 40) = v60;
    *(v132 + 48) = v135;
    if (v330)
    {
      *&v339 = v310;
      *&v353 = v330;
      MEMORY[0x1EEE9AC00](v132, v133);
      v336 = &v310[-6];
      v310[-4] = sub_1D5B4AA6C;
      v310[-3] = 0;
      v308 = sub_1D6708AD0;
      v309 = v134;
      v356 = 0;
      v136 = swift_allocObject();
      v137 = v347;
      v138 = v36;
      v139 = v136;
      *(v136 + 16) = v342;
      *(v136 + 32) = v356;
      *(v136 + 40) = v60;
      *(v136 + 48) = v137;
      sub_1D66A00C0();
      v141 = v140;
      sub_1D5B58B84(&qword_1EDF03698, sub_1D66A00C0);
      swift_retain_n();

      v142 = v346;
      v332 = v141;
      v143 = sub_1D72647CC();
      v356 = 0;
      v144 = swift_allocObject();
      *(v144 + 16) = v143;
      *(v144 + 24) = v342;
      *(v144 + 40) = v356;
      v145 = __swift_project_boxed_opaque_existential_1((v142 + *(v138 + 36)), *(v142 + *(v138 + 36) + 24));
      MEMORY[0x1EEE9AC00](v145, v146);
      MEMORY[0x1EEE9AC00](v147, v148);
      v149 = v336;
      v310[-4] = sub_1D615B4A4;
      v310[-3] = v149;
      v308 = sub_1D6708AD0;
      v309 = v139;
      v150 = v340;
      v152 = sub_1D5D2F7A4(v131, sub_1D615B49C, v151, sub_1D615B4A4, &v310[-6]);
      if (v150)
      {

        v101 = v346;
        v127 = &v358;
        goto LABEL_44;
      }

      v153 = v152;
      v154 = v333;

      if (v153)
      {
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        sub_1D72647EC();
        v53 = v337;
        v36 = v154;
        v340 = 0;

        sub_1D5D2CFE8(v331, type metadata accessor for FormatVersionRequirement);
        v105 = v334;
        v60 = v335;
      }

      else
      {
        v340 = 0;

        sub_1D5D2CFE8(v331, type metadata accessor for FormatVersionRequirement);
        v105 = v334;
        v36 = v154;
        v60 = v335;
        v53 = v337;
      }
    }

    else
    {

      sub_1D5D2CFE8(v131, type metadata accessor for FormatVersionRequirement);
    }

    v155 = v329;
    (v345)(v329, v341, v53);
    swift_storeEnumTagMultiPayload();
    v342 = xmmword_1D72BAA70;
    v348 = xmmword_1D72BAA70;
    LOBYTE(v349) = 0;
    LOBYTE(v353) = 0;
    v156 = swift_allocObject();
    v158 = v156;
    *(v156 + 16) = v342;
    *(v156 + 32) = v353;
    v159 = v347;
    *(v156 + 40) = v60;
    *(v156 + 48) = v159;
    if (v357 == 4)
    {

      v160 = v155;
    }

    else
    {
      *&v339 = v310;
      LOBYTE(v353) = v357;
      MEMORY[0x1EEE9AC00](v156, v157);
      v336 = &v310[-6];
      v310[-4] = sub_1D5B4AA6C;
      v310[-3] = 0;
      v308 = sub_1D6708AD0;
      v309 = v158;
      v356 = 0;
      v161 = swift_allocObject();
      *(v161 + 16) = v342;
      *(v161 + 32) = v356;
      v162 = v347;
      *(v161 + 40) = v60;
      *(v161 + 48) = v162;
      sub_1D66A00C0();
      v164 = v163;
      sub_1D5B58B84(&qword_1EDF03698, sub_1D66A00C0);
      v165 = v164;
      swift_retain_n();
      v166 = v346;
      v332 = v165;
      v167 = sub_1D72647CC();
      v356 = 0;
      v168 = swift_allocObject();
      *(v168 + 16) = v167;
      *(v168 + 24) = v342;
      *(v168 + 40) = v356;
      v169 = __swift_project_boxed_opaque_existential_1((v166 + *(v36 + 36)), *(v166 + *(v36 + 36) + 24));
      MEMORY[0x1EEE9AC00](v169, v170);
      MEMORY[0x1EEE9AC00](v171, v172);
      v173 = v336;
      v310[-4] = sub_1D615B4A4;
      v310[-3] = v173;
      v308 = sub_1D6708AD0;
      v309 = v161;
      v174 = v340;
      v176 = sub_1D5D2F7A4(v155, sub_1D615B49C, v175, sub_1D615B4A4, &v310[-6]);
      if (v174)
      {
        sub_1D5D2CFE8(v155, type metadata accessor for FormatVersionRequirement);

        v79 = v346;
        return sub_1D5D2CFE8(v79, sub_1D66A002C);
      }

      v177 = v176;
      v60 = v335;

      if (v177)
      {
        sub_1D66A01FC();
        sub_1D72647EC();
        v53 = v337;
        v340 = 0;
        v105 = v334;
      }

      else
      {
        v340 = 0;
        v105 = v334;
        v53 = v337;
      }

      v160 = v329;
    }

    sub_1D5D2CFE8(v160, type metadata accessor for FormatVersionRequirement);

    v178 = v328;
    (v345)(v328, v341, v53);
    swift_storeEnumTagMultiPayload();
    v342 = xmmword_1D72BAA80;
    v348 = xmmword_1D72BAA80;
    LOBYTE(v349) = 0;
    LOBYTE(v353) = 0;
    v179 = swift_allocObject();
    v181 = v179;
    *(v179 + 16) = v342;
    *(v179 + 32) = v353;
    v182 = v347;
    *(v179 + 40) = v60;
    *(v179 + 48) = v182;
    if (v327)
    {
      *&v339 = v310;
      *&v353 = v327;
      MEMORY[0x1EEE9AC00](v179, v180);
      v336 = &v310[-6];
      v310[-4] = sub_1D5B4AA6C;
      v310[-3] = 0;
      v308 = sub_1D6708AD0;
      v309 = v181;
      v356 = 0;
      v183 = swift_allocObject();
      v184 = v347;
      v185 = v36;
      v186 = v183;
      *(v183 + 16) = v342;
      *(v183 + 32) = v356;
      *(v183 + 40) = v60;
      *(v183 + 48) = v184;
      sub_1D66A00C0();
      v188 = v187;
      sub_1D5B58B84(&qword_1EDF03698, sub_1D66A00C0);
      swift_retain_n();

      v189 = v346;
      v332 = v188;
      v190 = sub_1D72647CC();
      v356 = 0;
      v191 = swift_allocObject();
      *(v191 + 16) = v190;
      *(v191 + 24) = v342;
      *(v191 + 40) = v356;
      v192 = __swift_project_boxed_opaque_existential_1((v189 + *(v185 + 36)), *(v189 + *(v185 + 36) + 24));
      MEMORY[0x1EEE9AC00](v192, v193);
      MEMORY[0x1EEE9AC00](v194, v195);
      v196 = v336;
      v310[-4] = sub_1D615B4A4;
      v310[-3] = v196;
      v308 = sub_1D6708AD0;
      v309 = v186;
      v197 = v340;
      v199 = sub_1D5D2F7A4(v178, sub_1D615B49C, v198, sub_1D615B4A4, &v310[-6]);
      if (v197)
      {

        v101 = v346;
        v127 = &v355;
        goto LABEL_44;
      }

      v201 = v199;
      v202 = v333;

      if (v201)
      {
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        sub_1D72647EC();
        v53 = v337;
        v36 = v202;
        v340 = 0;

        sub_1D5D2CFE8(v328, type metadata accessor for FormatVersionRequirement);
        v105 = v334;
        v60 = v335;
      }

      else
      {
        v340 = 0;

        sub_1D5D2CFE8(v328, type metadata accessor for FormatVersionRequirement);
        v105 = v334;
        v36 = v202;
        v60 = v335;
        v53 = v337;
      }
    }

    else
    {

      sub_1D5D2CFE8(v178, type metadata accessor for FormatVersionRequirement);
    }

    v203 = v326;
    (v345)(v326, v341, v53);
    swift_storeEnumTagMultiPayload();
    v342 = xmmword_1D72BAA90;
    v348 = xmmword_1D72BAA90;
    LOBYTE(v349) = 0;
    LOBYTE(v353) = 0;
    v204 = swift_allocObject();
    v206 = v204;
    *(v204 + 16) = v342;
    *(v204 + 32) = v353;
    v207 = v347;
    *(v204 + 40) = v60;
    *(v204 + 48) = v207;
    if (v325)
    {
      *&v339 = v310;
      *&v353 = v325;
      MEMORY[0x1EEE9AC00](v204, v205);
      v336 = &v310[-6];
      v310[-4] = sub_1D5B4AA6C;
      v310[-3] = 0;
      v308 = sub_1D6708AD0;
      v309 = v206;
      v356 = 0;
      v208 = swift_allocObject();
      v209 = v347;
      v210 = v36;
      v211 = v208;
      *(v208 + 16) = v342;
      *(v208 + 32) = v356;
      *(v208 + 40) = v60;
      *(v208 + 48) = v209;
      sub_1D66A00C0();
      v213 = v212;
      sub_1D5B58B84(&qword_1EDF03698, sub_1D66A00C0);
      swift_retain_n();

      v214 = v346;
      v332 = v213;
      v215 = sub_1D72647CC();
      v356 = 0;
      v216 = swift_allocObject();
      *(v216 + 16) = v215;
      *(v216 + 24) = v342;
      *(v216 + 40) = v356;
      v217 = __swift_project_boxed_opaque_existential_1((v214 + *(v210 + 36)), *(v214 + *(v210 + 36) + 24));
      MEMORY[0x1EEE9AC00](v217, v218);
      MEMORY[0x1EEE9AC00](v219, v220);
      v221 = v336;
      v310[-4] = sub_1D615B4A4;
      v310[-3] = v221;
      v308 = sub_1D6708AD0;
      v309 = v211;
      v222 = v340;
      v224 = sub_1D5D2F7A4(v203, sub_1D615B49C, v223, sub_1D615B4A4, &v310[-6]);
      if (v222)
      {

        v225 = v346;
        v226 = v326;

LABEL_76:
        v306 = v226;
LABEL_77:
        sub_1D5D2CFE8(v306, type metadata accessor for FormatVersionRequirement);
LABEL_78:
        v79 = v225;
        return sub_1D5D2CFE8(v79, sub_1D66A002C);
      }

      v227 = v224;

      if (v227)
      {
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        sub_1D72647EC();
        v36 = v210;
        v53 = v337;
        v340 = 0;

        sub_1D5D2CFE8(v326, type metadata accessor for FormatVersionRequirement);
        v105 = v334;
        v60 = v335;
      }

      else
      {
        v340 = 0;

        sub_1D5D2CFE8(v326, type metadata accessor for FormatVersionRequirement);
        v105 = v334;
        v36 = v210;
        v60 = v335;
        v53 = v337;
      }
    }

    else
    {

      sub_1D5D2CFE8(v203, type metadata accessor for FormatVersionRequirement);
    }

    v228 = v324;
    (v345)(v324, v341, v53);
    swift_storeEnumTagMultiPayload();
    v342 = xmmword_1D72BAAA0;
    v348 = xmmword_1D72BAAA0;
    LOBYTE(v349) = 0;
    LOBYTE(v353) = 0;
    v229 = swift_allocObject();
    v231 = v229;
    *(v229 + 16) = v342;
    *(v229 + 32) = v353;
    v232 = v347;
    *(v229 + 40) = v60;
    *(v229 + 48) = v232;
    v233 = v322;
    if (v322 == 255)
    {

      sub_1D5D2CFE8(v228, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v341 = v310;
      v234 = v321;
      v235 = v320;
      *&v353 = v321;
      *(&v353 + 1) = v320;
      v354 = v322 & 1;
      MEMORY[0x1EEE9AC00](v229, v230);
      *&v339 = &v310[-6];
      v310[-4] = sub_1D5B4AA6C;
      v310[-3] = 0;
      v308 = sub_1D6708AD0;
      v309 = v231;
      v356 = 0;
      v236 = swift_allocObject();
      v237 = v347;
      v238 = v236;
      *(v236 + 16) = v342;
      *(v236 + 32) = v356;
      *(v236 + 40) = v60;
      *(v236 + 48) = v237;
      swift_retain_n();
      sub_1D6189668(v234, v235, v233);
      sub_1D66A00C0();
      v240 = v239;
      sub_1D5B58B84(&qword_1EDF03698, sub_1D66A00C0);
      v241 = v346;
      v336 = v240;
      v242 = sub_1D72647CC();
      v356 = 0;
      v243 = swift_allocObject();
      *(v243 + 16) = v242;
      *(v243 + 24) = v342;
      *(v243 + 40) = v356;
      v244 = __swift_project_boxed_opaque_existential_1((v241 + *(v36 + 36)), *(v241 + *(v36 + 36) + 24));
      MEMORY[0x1EEE9AC00](v244, v245);
      MEMORY[0x1EEE9AC00](v246, v247);
      v248 = v339;
      v310[-4] = sub_1D615B4A4;
      v310[-3] = v248;
      v308 = sub_1D6708AD0;
      v309 = v238;
      v249 = v340;
      v251 = sub_1D5D2F7A4(v228, sub_1D615B49C, v250, sub_1D615B4A4, &v310[-6]);
      if (v249)
      {

        v225 = v346;
        v252 = &v352;
LABEL_75:
        v226 = *(v252 - 32);
        sub_1D5D2F2C8(v353, *(&v353 + 1), v354);
        goto LABEL_76;
      }

      v253 = v251;
      v60 = v335;

      if (v253)
      {
        sub_1D60ED320();
        sub_1D72647EC();
      }

      v340 = 0;

      sub_1D5D2F2C8(v353, *(&v353 + 1), v354);
      sub_1D5D2CFE8(v324, type metadata accessor for FormatVersionRequirement);
      v105 = v334;
    }

    v254 = v323;
    (v345)(v323, v338, v337);
    swift_storeEnumTagMultiPayload();
    v342 = xmmword_1D72BAAB0;
    v353 = xmmword_1D72BAAB0;
    v354 = 0;
    LOBYTE(v348) = 0;
    v255 = swift_allocObject();
    v257 = v255;
    *(v255 + 16) = v342;
    *(v255 + 32) = v348;
    v258 = v347;
    *(v255 + 40) = v60;
    *(v255 + 48) = v258;
    v259 = v319;
    if (v319 == 255)
    {

      sub_1D5D2CFE8(v254, type metadata accessor for FormatVersionRequirement);

      v280 = v340;
    }

    else
    {
      v341 = v310;
      v260 = v318;
      v261 = v317;
      *&v348 = v318;
      *(&v348 + 1) = v317;
      v262 = v316;
      v263 = v315;
      v349 = v316;
      v350 = v315;
      v351 = v319 & 1;
      MEMORY[0x1EEE9AC00](v255, v256);
      *&v339 = &v310[-6];
      v310[-4] = sub_1D5B4AA6C;
      v310[-3] = 0;
      v308 = sub_1D6708AD0;
      v309 = v257;
      v356 = 0;
      v264 = swift_allocObject();
      v265 = v347;
      v266 = v264;
      *(v264 + 16) = v342;
      *(v264 + 32) = v356;
      *(v264 + 40) = v60;
      *(v264 + 48) = v265;
      swift_retain_n();
      sub_1D66A01E4(v260, v261, v262, v263, v259);
      sub_1D66A00C0();
      v268 = v267;
      sub_1D5B58B84(&qword_1EDF03698, sub_1D66A00C0);
      v269 = v346;
      v336 = v268;
      v270 = sub_1D72647CC();
      v356 = 0;
      v271 = swift_allocObject();
      *(v271 + 16) = v270;
      *(v271 + 24) = v342;
      *(v271 + 40) = v356;
      v272 = __swift_project_boxed_opaque_existential_1((v269 + *(v36 + 36)), *(v269 + *(v36 + 36) + 24));
      MEMORY[0x1EEE9AC00](v272, v273);
      MEMORY[0x1EEE9AC00](v274, v275);
      v276 = v339;
      v310[-4] = sub_1D615B4A4;
      v310[-3] = v276;
      v308 = sub_1D6708AD0;
      v309 = v266;
      v277 = v340;
      v279 = sub_1D5D2F7A4(v323, sub_1D615B49C, v278, sub_1D615B4A4, &v310[-6]);
      v280 = v277;
      if (v277)
      {

        v225 = v346;
        v226 = v323;
        sub_1D618909C(v348, *(&v348 + 1), v349, v350, v351);
        goto LABEL_76;
      }

      v281 = v279;

      if (v281)
      {
        sub_1D61888F8();
        sub_1D72647EC();
      }

      sub_1D618909C(v348, *(&v348 + 1), v349, v350, v351);
      sub_1D5D2CFE8(v323, type metadata accessor for FormatVersionRequirement);
      v105 = v334;
      v60 = v335;
    }

    (v345)(v105, v338, v337);
    swift_storeEnumTagMultiPayload();
    v345 = xmmword_1D72BAAC0;
    v348 = xmmword_1D72BAAC0;
    LOBYTE(v349) = 0;
    LOBYTE(v353) = 0;
    v282 = swift_allocObject();
    v284 = v282;
    *(v282 + 16) = v345;
    *(v282 + 32) = v353;
    v285 = v347;
    *(v282 + 40) = v60;
    *(v282 + 48) = v285;
    v286 = v60;
    v287 = v314;
    if (v314 == 255)
    {

      sub_1D5D2CFE8(v105, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v344 = v310;
      v288 = v313;
      v289 = v312;
      *&v353 = v313;
      *(&v353 + 1) = v312;
      v354 = v314 & 1;
      MEMORY[0x1EEE9AC00](v282, v283);
      v340 = v280;
      v310[-4] = sub_1D5B4AA6C;
      v310[-3] = 0;
      v308 = sub_1D6708AD0;
      v309 = v284;
      v356 = 0;
      v290 = swift_allocObject();
      v291 = v347;
      v292 = v290;
      *(v290 + 16) = v345;
      *(v290 + 32) = v356;
      *(v290 + 40) = v286;
      *(v290 + 48) = v291;
      swift_retain_n();
      sub_1D6189668(v288, v289, v287);
      sub_1D66A00C0();
      v294 = v293;
      sub_1D5B58B84(&qword_1EDF03698, sub_1D66A00C0);
      v295 = v105;
      v296 = v346;
      v347 = v294;
      v297 = sub_1D72647CC();
      v356 = 0;
      v298 = swift_allocObject();
      *(v298 + 16) = v297;
      *(v298 + 24) = v345;
      *(v298 + 40) = v356;
      v299 = __swift_project_boxed_opaque_existential_1((v296 + *(v36 + 36)), *(v296 + *(v36 + 36) + 24));
      MEMORY[0x1EEE9AC00](v299, v300);
      MEMORY[0x1EEE9AC00](v301, v302);
      v310[-4] = sub_1D615B4A4;
      v310[-3] = &v310[-6];
      v308 = sub_1D66A0154;
      v309 = v292;
      v303 = v340;
      v305 = sub_1D5D2F7A4(v295, sub_1D615B49C, v304, sub_1D615B4A4, &v310[-6]);
      if (v303)
      {

        v225 = v346;
        v252 = &v359;
        goto LABEL_75;
      }

      v307 = v305;

      if (v307)
      {
        sub_1D60ED320();
        v225 = v346;
        sub_1D72647EC();

        sub_1D5D2F2C8(v353, *(&v353 + 1), v354);
        v306 = v334;
        goto LABEL_77;
      }

      sub_1D5D2F2C8(v353, *(&v353 + 1), v354);
      sub_1D5D2CFE8(v334, type metadata accessor for FormatVersionRequirement);
    }

    v225 = v346;
    goto LABEL_78;
  }

  sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);
  v79 = v346;
  return sub_1D5D2CFE8(v79, sub_1D66A002C);
}

uint64_t sub_1D651A868(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6E6F697461727564;
    v7 = 0x6D69546E69676562;
    v8 = 0x7366664F656D6974;
    if (a1 != 3)
    {
      v8 = 0x65646F4D6C6C6966;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6465657073;
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
    v1 = 0x7546676E696D6974;
    v2 = 0xD000000000000012;
    if (a1 != 9)
    {
      v2 = 1885433183;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6F43746165706572;
    v4 = 0x7544746165706572;
    if (a1 != 6)
    {
      v4 = 0x657665726F747561;
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

uint64_t sub_1D651A9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66A1748(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D651AA30(uint64_t a1)
{
  v2 = sub_1D669FF30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D651AA6C(uint64_t a1)
{
  v2 = sub_1D669FF30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatMediaTimingFillMode.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v33 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v32 = &v29 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v31 = &v29 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v30 = &v29 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v29 - v17;
  v34 = *v1;
  v19 = a1[3];
  v20 = a1[4];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  if (qword_1EDF31EF8 != -1)
  {
    swift_once();
  }

  v21 = sub_1D725BD1C();
  v22 = __swift_project_value_buffer(v21, qword_1EDFFCDC8);
  v23 = *(*(v21 - 8) + 16);
  v23(v18, v22, v21);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v24 = v38;
  sub_1D5D2BEC4(v18, sub_1D5B4AA6C, 0, v19, v20);
  result = sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);
  if (!v24)
  {
    v26 = v35[3];
    v27 = v35[4];
    v38 = __swift_project_boxed_opaque_existential_1(v35, v26);
    if (v34 > 1)
    {
      v28 = v32;
      v23(v32, v22, v21);
    }

    else
    {
      v28 = v30;
      v23(v30, v22, v21);
    }

    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v28, sub_1D5B4AA6C, 0, v26, v27);
    sub_1D5D2CFE8(v28, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v35, v35[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  return result;
}

uint64_t sub_1D651AFC8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x506C6F72746E6F63;
  }

  else
  {
    v3 = 1701667182;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xED000073746E696FLL;
  }

  if (*a2)
  {
    v5 = 0x506C6F72746E6F63;
  }

  else
  {
    v5 = 1701667182;
  }

  if (*a2)
  {
    v6 = 0xED000073746E696FLL;
  }

  else
  {
    v6 = 0xE400000000000000;
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

uint64_t sub_1D651B074()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D651B0FC()
{
  sub_1D72621EC();
}

uint64_t sub_1D651B170()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D651B200(uint64_t *a1@<X8>)
{
  v2 = 1701667182;
  if (*v1)
  {
    v2 = 0x506C6F72746E6F63;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xED000073746E696FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatMediaTimingFunctionControlPoints.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  sub_1D66A0250();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66A02E4();
  sub_1D5B58B84(&qword_1EC886DC0, sub_1D66A02E4);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v7;
  v11 = v32;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  v14 = v10;
  if (v13)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    v17 = v31;
    if (v16)
    {
      v18 = (v15 + 48);
      while (*v18 != 1)
      {
        v18 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v21 = *(v18 - 2);
      v20 = *(v18 - 1);

      v22 = sub_1D661F230();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v17 + 8))(v14, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  sub_1D5C35368();
  v33 = 0uLL;
  v34 = 0;
  sub_1D726431C();
  v19 = v35;
  v33 = xmmword_1D728CF30;
  v34 = 0;
  sub_1D726431C();
  v24 = v35;
  v33 = xmmword_1D7297410;
  v34 = 0;
  sub_1D726431C();
  v29 = v35;
  v30 = v24;
  v33 = xmmword_1D72BAA60;
  v34 = 0;
  sub_1D726431C();
  (*(v31 + 8))(v14, v6);
  v26 = v35;
  v27 = v29;
  v28 = v30;
  *v11 = v19;
  v11[1] = v28;
  v11[2] = v27;
  v11[3] = v26;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatMediaTimingFunctionControlPoints.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v109 = v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v111 = v105 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v119 = v105 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v105 - v14;
  sub_1D66A0464();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v1;
  v112 = v1[1];
  v22 = v1[3];
  v110 = v1[2];
  v108 = v22;
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D66A02E4();
  v26 = v25;
  v27 = sub_1D5B58B84(&qword_1EC886DC0, sub_1D66A02E4);
  sub_1D5D2EE70(&type metadata for FormatMediaTimingFunctionControlPoints, v26, v28, v23, &type metadata for FormatMediaTimingFunctionControlPoints, v26, &type metadata for FormatVersions.StarSky, v24, v20, v27, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v29 = sub_1D725BD1C();
  v30 = __swift_project_value_buffer(v29, qword_1EDFFCD50);
  v31 = *(v29 - 8);
  v32 = *(v31 + 16);
  v116 = v30;
  v117 = v29;
  v114 = v31 + 16;
  v115 = v32;
  (v32)(v15);
  v113 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v128 = v21;
  v126 = 0uLL;
  v127 = 0;
  v33 = &v20[*(v17 + 44)];
  v34 = *v33;
  v35 = *(v33 + 1);
  v125 = 0;
  v36 = swift_allocObject();
  v123 = v105;
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = v125;
  *(v36 + 40) = v34;
  *(v36 + 48) = v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v105[-4] = sub_1D5B4AA6C;
  v105[-3] = 0;
  v103 = sub_1D6708AD4;
  v104 = v38;
  v125 = 0;
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  *(v39 + 32) = v125;
  v118 = v34;
  *(v39 + 40) = v34;
  *(v39 + 48) = v35;
  sub_1D66A04F8();
  v41 = v40;
  v42 = sub_1D5B58B84(&qword_1EC886DD8, sub_1D66A04F8);
  swift_retain_n();
  v120 = v42;
  v121 = v41;
  v43 = sub_1D72647CC();
  v125 = 0;
  v44 = swift_allocObject();
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = v43;
  *(v44 + 40) = v125;
  v45 = *(v17 + 36);
  v46 = v15;
  v47 = &v20[v45];
  v122 = v20;
  v48 = __swift_project_boxed_opaque_existential_1(&v20[v45], *&v20[v45 + 24]);
  MEMORY[0x1EEE9AC00](v48, v49);
  MEMORY[0x1EEE9AC00](v50, v51);
  v105[-4] = sub_1D615B4A4;
  v105[-3] = &v105[-6];
  v103 = sub_1D66A058C;
  v104 = v39;
  v52 = v124;
  sub_1D5D2BC70(v46, sub_1D615B49C, v53, sub_1D615B4A4, &v105[-6]);
  if (v52)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

    v58 = v122;
  }

  else
  {
    v106 = v47;
    v107 = v35;

    sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    v55 = v54;
    v56 = sub_1D66582DC();
    v57 = v122;
    sub_1D72647EC();
    v105[0] = v56;
    v105[1] = v55;
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

    v60 = v57;
    v61 = v119;
    v115(v119, v116, v117);
    swift_storeEnumTagMultiPayload();
    v128 = v112;
    v124 = xmmword_1D728CF30;
    v126 = xmmword_1D728CF30;
    v127 = 0;
    v125 = 0;
    v62 = swift_allocObject();
    v123 = v105;
    *(v62 + 16) = v124;
    *(v62 + 32) = v125;
    v63 = v118;
    v64 = v107;
    *(v62 + 40) = v118;
    *(v62 + 48) = v64;
    MEMORY[0x1EEE9AC00](v62, v65);
    v105[-4] = sub_1D5B4AA6C;
    v105[-3] = 0;
    v103 = sub_1D6708AD4;
    v104 = v66;
    v125 = 0;
    v67 = swift_allocObject();
    *(v67 + 16) = v124;
    *(v67 + 32) = v125;
    *(v67 + 40) = v63;
    *(v67 + 48) = v64;
    swift_retain_n();
    v68 = sub_1D72647CC();
    v125 = 0;
    v69 = swift_allocObject();
    *(v69 + 16) = v68;
    *(v69 + 24) = v124;
    *(v69 + 40) = v125;
    v70 = __swift_project_boxed_opaque_existential_1(v106, *(v106 + 3));
    MEMORY[0x1EEE9AC00](v70, v71);
    MEMORY[0x1EEE9AC00](v72, v73);
    v105[-4] = sub_1D615B4A4;
    v105[-3] = &v105[-6];
    sub_1D5D2BC70(v61, sub_1D615B49C, v74, sub_1D615B4A4, &v105[-6]);

    sub_1D72647EC();
    sub_1D5D2CFE8(v119, type metadata accessor for FormatVersionRequirement);

    v75 = v111;
    v115(v111, v116, v117);
    swift_storeEnumTagMultiPayload();
    v128 = v110;
    v124 = xmmword_1D7297410;
    v126 = xmmword_1D7297410;
    v127 = 0;
    v125 = 0;
    v76 = swift_allocObject();
    v123 = v105;
    *(v76 + 16) = v124;
    *(v76 + 32) = v125;
    v77 = v118;
    v78 = v107;
    *(v76 + 40) = v118;
    *(v76 + 48) = v78;
    MEMORY[0x1EEE9AC00](v76, v79);
    v105[-4] = sub_1D5B4AA6C;
    v105[-3] = 0;
    v103 = sub_1D6708AD4;
    v104 = v80;
    v125 = 0;
    v81 = swift_allocObject();
    *(v81 + 16) = v124;
    *(v81 + 32) = v125;
    *(v81 + 40) = v77;
    *(v81 + 48) = v78;
    swift_retain_n();
    v82 = sub_1D72647CC();
    v125 = 0;
    v83 = swift_allocObject();
    *(v83 + 16) = v82;
    *(v83 + 24) = v124;
    *(v83 + 40) = v125;
    v84 = __swift_project_boxed_opaque_existential_1(v106, *(v106 + 3));
    MEMORY[0x1EEE9AC00](v84, v85);
    MEMORY[0x1EEE9AC00](v86, v87);
    v105[-4] = sub_1D615B4A4;
    v105[-3] = &v105[-6];
    sub_1D5D2BC70(v75, sub_1D615B49C, v88, sub_1D615B4A4, &v105[-6]);

    sub_1D72647EC();
    sub_1D5D2CFE8(v111, type metadata accessor for FormatVersionRequirement);

    v89 = v109;
    v115(v109, v116, v117);
    swift_storeEnumTagMultiPayload();
    v128 = v108;
    v124 = xmmword_1D72BAA60;
    v126 = xmmword_1D72BAA60;
    v127 = 0;
    v125 = 0;
    v90 = swift_allocObject();
    v123 = v105;
    *(v90 + 16) = v124;
    *(v90 + 32) = v125;
    v91 = v118;
    v92 = v107;
    *(v90 + 40) = v118;
    *(v90 + 48) = v92;
    MEMORY[0x1EEE9AC00](v90, v93);
    v105[-4] = sub_1D5B4AA6C;
    v105[-3] = 0;
    v103 = sub_1D6708AD4;
    v104 = v94;
    v125 = 0;
    v95 = swift_allocObject();
    *(v95 + 16) = v124;
    *(v95 + 32) = v125;
    *(v95 + 40) = v91;
    *(v95 + 48) = v92;
    swift_retain_n();
    v96 = sub_1D72647CC();
    v125 = 0;
    v97 = swift_allocObject();
    *(v97 + 16) = v96;
    *(v97 + 24) = v124;
    *(v97 + 40) = v125;
    v98 = __swift_project_boxed_opaque_existential_1(v106, *(v106 + 3));
    MEMORY[0x1EEE9AC00](v98, v99);
    MEMORY[0x1EEE9AC00](v100, v101);
    v105[-4] = sub_1D615B4A4;
    v105[-3] = &v105[-6];
    v103 = sub_1D6708AD4;
    v104 = v95;
    sub_1D5D2BC70(v89, sub_1D615B49C, v102, sub_1D615B4A4, &v105[-6]);

    sub_1D72647EC();
    sub_1D5D2CFE8(v89, type metadata accessor for FormatVersionRequirement);

    v58 = v60;
  }

  return sub_1D5D2CFE8(v58, sub_1D66A0464);
}

uint64_t sub_1D651C64C()
{
  v1 = *v0;
  v2 = 0x31746E696F70;
  v3 = 0x33746E696F70;
  v4 = 0x34746E696F70;
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
    v2 = 0x32746E696F70;
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

uint64_t sub_1D651C6D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66A1AF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D651C708(uint64_t a1)
{
  v2 = sub_1D66A03BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D651C744(uint64_t a1)
{
  v2 = sub_1D66A03BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatMediaTimingFunctionName.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v36 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v35 = v33 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v34 = v33 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v33[1] = v33 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v33[0] = v33 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v33 - v20;
  v37 = *v1;
  v22 = a1[3];
  v23 = a1[4];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD50);
  v26 = *(*(v24 - 8) + 16);
  v26(v21, v25, v24);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v27 = v41;
  sub_1D5D2BEC4(v21, sub_1D5B4AA6C, 0, v22, v23);
  result = sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);
  if (!v27)
  {
    v29 = v38[3];
    v30 = v38[4];
    v41 = __swift_project_boxed_opaque_existential_1(v38, v29);
    if (v37 <= 1)
    {
      v32 = v33[0];
      v26(v33[0], v25, v24);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v32, sub_1D5B4AA6C, 0, v29, v30);
      sub_1D5D2CFE8(v32, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      if (v37 == 2)
      {
        v31 = v34;
        v26(v34, v25, v24);
      }

      else
      {
        v31 = v35;
        v26(v35, v25, v24);
      }

      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v31, sub_1D5B4AA6C, 0, v29, v30);
      sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
    }

    __swift_project_boxed_opaque_existential_1(v38, v38[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  return result;
}

uint64_t sub_1D651CD6C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  sub_1D67082CC();
  v7 = v6;
  v41 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6707EA0();
  sub_1D5B58B84(&qword_1EC88A268, sub_1D6707EA0);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v40 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v41;
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

      v23 = sub_1D661F3F4();
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

  sub_1D5C86E18();
  v42 = 0uLL;
  v43 = 0;
  sub_1D726427C();
  v18 = v44;
  v20 = v45;
  v19 = v46;
  v42 = xmmword_1D728CF30;
  v43 = 0;
  sub_1D5C791D8();
  sub_1D726427C();
  v38 = v18;
  v39 = v20;
  v26 = v44;
  v27 = v45;
  v44 = xmmword_1D7297410;
  LOBYTE(v45) = 0;
  sub_1D6708360();
  sub_1D726427C();
  v36 = v26;
  v37 = v19;
  LOBYTE(v19) = v42;
  sub_1D5C34D84(0, &qword_1EDF1B2F8, &type metadata for FormatMenuItem, MEMORY[0x1E69E62F8]);
  v44 = xmmword_1D72BAA60;
  LOBYTE(v45) = 0;
  sub_1D67083B4();
  sub_1D726431C();
  v28 = *(&v38 + 1);
  v29 = v38;
  (*(v13 + 8))(v10, v7);
  v30 = v42;
  v31 = v19;
  v32 = v39;
  v33 = v40;
  *v40 = __PAIR128__(v28, v29);
  v34 = v37;
  *(v33 + 2) = v32;
  *(v33 + 3) = v34;
  v35 = *(&v36 + 1);
  *(v33 + 4) = v36;
  *(v33 + 5) = v35;
  *(v33 + 6) = v27;
  *(v33 + 56) = v31;
  *(v33 + 57) = *v47;
  *(v33 + 15) = *&v47[3];
  *(v33 + 8) = v30;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D651D218(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v133 = &v126 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v140 = &v126 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v126 - v15;
  sub_1D6707D78();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v1 + 8);
  v135 = *v1;
  v23 = *(v1 + 24);
  v134 = *(v1 + 16);
  v141 = v23;
  v24 = *(v1 + 40);
  v137 = *(v1 + 32);
  v130 = v24;
  v138 = *(v1 + 48);
  v156 = *(v1 + 56);
  v129 = *(v1 + 64);
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1D6707EA0();
  v28 = v27;
  v29 = sub_1D5B58B84(&qword_1EC88A268, sub_1D6707EA0);
  sub_1D5D2EE70(&type metadata for FormatMenuGroup, v28, v30, v25, &type metadata for FormatMenuGroup, v28, &type metadata for FormatVersions.StarSky, v26, v21, v29, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v31 = sub_1D725BD1C();
  v32 = __swift_project_value_buffer(v31, qword_1EDFFCD50);
  v33 = *(v31 - 8);
  v34 = *(v33 + 16);
  v146 = v32;
  *&v147 = v31;
  v144 = v33 + 16;
  v145 = v34;
  v34(v16);
  v35 = type metadata accessor for FormatVersionRequirement.Value(0);
  *&v142 = v16;
  v143 = v35;
  swift_storeEnumTagMultiPayload();
  v153 = 0uLL;
  v154 = 0;
  v36 = &v21[*(v18 + 44)];
  v37 = *v36;
  v38 = *(v36 + 1);
  LOBYTE(v150) = 0;
  v39 = swift_allocObject();
  v41 = v39;
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  *(v39 + 32) = v150;
  *(v39 + 40) = v37;
  *(v39 + 48) = v38;
  v149 = v21;
  v136 = v6;
  v42 = v141;
  v139 = v18;
  v131 = v37;
  v132 = v38;
  if ((~v22 & 0xF000000000000007) != 0 || (v141 & 7) != 7)
  {
    v128 = &v126;
    v56 = v135;
    *&v150 = v135;
    *(&v150 + 1) = v22;
    v57 = v134;
    v151 = v134;
    v152 = v141;
    MEMORY[0x1EEE9AC00](v39, v40);
    v58 = v37;
    v59 = v18;
    v127 = &v126 - 6;
    *(&v126 - 4) = sub_1D5B4AA6C;
    *(&v126 - 3) = 0;
    v124 = sub_1D6708C4C;
    v125 = v41;
    v155 = 0;
    v60 = swift_allocObject();
    v61 = v149;
    v62 = v38;
    v63 = v60;
    *(v60 + 16) = 0;
    *(v60 + 24) = 0;
    *(v60 + 32) = v155;
    *(v60 + 40) = v58;
    *(v60 + 48) = v62;
    swift_retain_n();
    sub_1D62B738C(v56, v22, v57, v42);
    sub_1D6707E0C();
    sub_1D5B58B84(&qword_1EC88A270, sub_1D6707E0C);
    v64 = sub_1D72647CC();
    v155 = 0;
    v65 = swift_allocObject();
    *(v65 + 24) = 0;
    *(v65 + 32) = 0;
    *(v65 + 16) = v64;
    *(v65 + 40) = v155;
    v66 = __swift_project_boxed_opaque_existential_1(&v61[*(v59 + 36)], *&v61[*(v59 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v66, v67);
    MEMORY[0x1EEE9AC00](v68, v69);
    v70 = v127;
    *(&v126 - 4) = sub_1D615B4A4;
    *(&v126 - 3) = v70;
    v124 = sub_1D6708C4C;
    v125 = v63;
    v71 = v142;
    v72 = v148;
    v74 = sub_1D5D2F7A4(v142, sub_1D615B49C, v73, sub_1D615B4A4, (&v126 - 6));
    if (v72)
    {

      v75 = v149;
      sub_1D62B7130(v150, *(&v150 + 1), v151, v152);
      sub_1D5D2CFE8(v71, type metadata accessor for FormatVersionRequirement);
      v76 = v75;
      return sub_1D5D2CFE8(v76, sub_1D6707D78);
    }

    v103 = v74;
    v104 = v132;

    if (v103)
    {
      sub_1D6326A60();
      sub_1D72647EC();
      v6 = v136;
      v43 = v138;
      v38 = v104;
      *&v148 = 0;

      sub_1D62B7130(v150, *(&v150 + 1), v151, v152);
      v37 = v131;
      goto LABEL_7;
    }

    *&v148 = 0;

    sub_1D62B7130(v150, *(&v150 + 1), v151, v152);
    v6 = v136;
    v38 = v104;
    v37 = v131;
  }

  else
  {
  }

  v43 = v138;
LABEL_7:
  sub_1D5D2CFE8(v142, type metadata accessor for FormatVersionRequirement);
  v44 = v140;
  v145(v140, v146, v147);
  swift_storeEnumTagMultiPayload();
  v142 = xmmword_1D728CF30;
  v153 = xmmword_1D728CF30;
  v154 = 0;
  LOBYTE(v150) = 0;
  v45 = swift_allocObject();
  v47 = v45;
  *(v45 + 16) = v142;
  *(v45 + 32) = v150;
  *(v45 + 40) = v37;
  *(v45 + 48) = v38;
  v48 = v137;
  if ((~(v137 & v43) & 0x3000000000000007) != 0)
  {
    v141 = &v126;
    v77 = v130;
    *&v150 = v137;
    *(&v150 + 1) = v130;
    v151 = v43;
    MEMORY[0x1EEE9AC00](v45, v46);
    *(&v126 - 4) = sub_1D5B4AA6C;
    *(&v126 - 3) = 0;
    v124 = sub_1D6708C4C;
    v125 = v47;
    v155 = 0;
    v78 = v44;
    v79 = swift_allocObject();
    *(v79 + 16) = v142;
    *(v79 + 32) = v155;
    *(v79 + 40) = v37;
    *(v79 + 48) = v38;
    swift_retain_n();
    sub_1D670818C(v48, v77, v43);
    sub_1D6707E0C();
    sub_1D5B58B84(&qword_1EC88A270, sub_1D6707E0C);
    v80 = v149;
    v81 = sub_1D72647CC();
    v155 = 0;
    v82 = swift_allocObject();
    *(v82 + 16) = v81;
    *(v82 + 24) = v142;
    *(v82 + 40) = v155;
    v83 = __swift_project_boxed_opaque_existential_1(&v80[*(v139 + 36)], *&v80[*(v139 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v83, v84);
    MEMORY[0x1EEE9AC00](v85, v86);
    *(&v126 - 4) = sub_1D615B4A4;
    *(&v126 - 3) = (&v126 - 6);
    v124 = sub_1D6708C4C;
    v125 = v79;
    v87 = v148;
    v89 = sub_1D5D2F7A4(v78, sub_1D615B49C, v88, sub_1D615B4A4, (&v126 - 6));
    v49 = v87;
    if (v87)
    {

      v90 = v140;
      v91 = v149;
      sub_1D62B703C(v150, *(&v150 + 1), v151);
      sub_1D5D2CFE8(v90, type metadata accessor for FormatVersionRequirement);
      v76 = v91;
      return sub_1D5D2CFE8(v76, sub_1D6707D78);
    }

    v105 = v89;
    v37 = v131;
    v38 = v132;

    if (v105)
    {
      sub_1D66F3A48();
      v51 = v149;
      sub_1D72647EC();
      v44 = v140;

      sub_1D62B703C(v150, *(&v150 + 1), v151);
      v50 = v136;
    }

    else
    {

      sub_1D62B703C(v150, *(&v150 + 1), v151);
      v51 = v149;
      v50 = v136;
      v44 = v140;
    }
  }

  else
  {

    v49 = v148;
    v50 = v6;
    v51 = v149;
  }

  sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);
  v52 = v133;
  v145(v133, v146, v147);
  swift_storeEnumTagMultiPayload();
  v148 = xmmword_1D7297410;
  v150 = xmmword_1D7297410;
  LOBYTE(v151) = 0;
  LOBYTE(v153) = 0;
  v53 = swift_allocObject();
  v55 = v53;
  *(v53 + 16) = v148;
  *(v53 + 32) = v153;
  *(v53 + 40) = v37;
  *(v53 + 48) = v38;
  if (v156 == 3)
  {
    *&v148 = v49;
  }

  else
  {
    *&v142 = &v126;
    LOBYTE(v153) = v156;
    MEMORY[0x1EEE9AC00](v53, v54);
    *(&v126 - 4) = sub_1D5B4AA6C;
    *(&v126 - 3) = 0;
    v124 = sub_1D6708C4C;
    v125 = v55;
    v155 = 0;
    v92 = swift_allocObject();
    *(v92 + 16) = v148;
    *(v92 + 32) = v155;
    *(v92 + 40) = v37;
    *(v92 + 48) = v38;
    sub_1D6707E0C();
    v94 = v93;
    sub_1D5B58B84(&qword_1EC88A270, sub_1D6707E0C);
    swift_retain_n();
    v141 = v94;
    v95 = sub_1D72647CC();
    v155 = 0;
    v96 = swift_allocObject();
    *(v96 + 16) = v95;
    *(v96 + 24) = v148;
    *(v96 + 40) = v155;
    v97 = __swift_project_boxed_opaque_existential_1(&v51[*(v139 + 36)], *&v51[*(v139 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v97, v98);
    MEMORY[0x1EEE9AC00](v99, v100);
    *(&v126 - 4) = sub_1D615B4A4;
    *(&v126 - 3) = (&v126 - 6);
    v124 = sub_1D67080BC;
    v125 = v92;
    v102 = sub_1D5D2F7A4(v52, sub_1D615B49C, v101, sub_1D615B4A4, (&v126 - 6));
    if (v49)
    {
      sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);

      v76 = v149;
      return sub_1D5D2CFE8(v76, sub_1D6707D78);
    }

    v106 = v102;
    v37 = v131;
    v38 = v132;

    v50 = v136;
    if (v106)
    {
      sub_1D6708138();
      sub_1D72647EC();
    }

    *&v148 = 0;
    v52 = v133;
  }

  sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);

  v145(v50, v146, v147);
  swift_storeEnumTagMultiPayload();
  *&v153 = v129;
  v147 = xmmword_1D72BAA60;
  v150 = xmmword_1D72BAA60;
  LOBYTE(v151) = 0;
  v155 = 0;
  v107 = swift_allocObject();
  v146 = &v126;
  *(v107 + 16) = v147;
  *(v107 + 32) = v155;
  *(v107 + 40) = v37;
  *(v107 + 48) = v38;
  MEMORY[0x1EEE9AC00](v107, v108);
  *(&v126 - 4) = sub_1D5B4AA6C;
  *(&v126 - 3) = 0;
  v124 = sub_1D6708C4C;
  v125 = v109;
  v155 = 0;
  v110 = swift_allocObject();
  *(v110 + 16) = v147;
  *(v110 + 32) = v155;
  *(v110 + 40) = v37;
  *(v110 + 48) = v38;
  sub_1D6707E0C();
  v112 = v111;
  sub_1D5B58B84(&qword_1EC88A270, sub_1D6707E0C);
  swift_retain_n();
  v113 = v149;
  v145 = v112;
  v114 = sub_1D72647CC();
  v155 = 0;
  v115 = swift_allocObject();
  *(v115 + 16) = v114;
  *(v115 + 24) = v147;
  *(v115 + 40) = v155;
  v116 = __swift_project_boxed_opaque_existential_1((v113 + *(v139 + 36)), *(v113 + *(v139 + 36) + 24));
  MEMORY[0x1EEE9AC00](v116, v117);
  MEMORY[0x1EEE9AC00](v118, v119);
  *(&v126 - 4) = sub_1D615B4A4;
  *(&v126 - 3) = (&v126 - 6);
  v120 = v136;
  v124 = sub_1D6708C4C;
  v125 = v110;
  v121 = v148;
  sub_1D5D2BC70(v136, sub_1D615B49C, v122, sub_1D615B4A4, (&v126 - 6));
  if (v121)
  {
    sub_1D5D2CFE8(v120, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D5C34D84(0, &qword_1EDF1B2F8, &type metadata for FormatMenuItem, MEMORY[0x1E69E62F8]);
    sub_1D6708020();
    sub_1D72647EC();
    sub_1D5D2CFE8(v120, type metadata accessor for FormatVersionRequirement);
  }

  v76 = v113;
  return sub_1D5D2CFE8(v76, sub_1D6707D78);
}

uint64_t sub_1D651E458()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x656C797473;
  v4 = 0x736D657469;
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
    v2 = 0x6567616D69;
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

uint64_t sub_1D651E4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66A1C90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D651E514(uint64_t a1)
{
  v2 = sub_1D6707F78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D651E550(uint64_t a1)
{
  v2 = sub_1D6707F78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D651E58C(void *a1, unint64_t a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v59 = &v58 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v58 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v58 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v58 - v21;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v29 = sub_1D5C30408();
  v64 = v26;
  sub_1D5D2EE70(&type metadata for FormatMenuGroupable, &type metadata for FormatCodingKeys, v30, v28, &type metadata for FormatMenuGroupable, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v27, v26, v29, &off_1F51F6CD8);
  v31 = a2 >> 61;
  if ((a2 >> 61) <= 1)
  {
    if (v31)
    {
      v54 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v62[1] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v62[2] = v54;
      v62[3] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v63 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      v62[0] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D62B72DC(v62, v60);
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v55 = sub_1D725BD1C();
      v56 = __swift_project_value_buffer(v55, qword_1EDFFCD50);
      (*(*(v55 - 8) + 16))(v18, v56, v55);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v39 = v64;
      sub_1D63A6540(1, v62, v18);
      sub_1D62B7338(v62);
      v44 = v18;
    }

    else
    {
      v40 = *(a2 + 32);
      v61[0] = *(a2 + 16);
      v61[1] = v40;
      v41 = *(a2 + 64);
      v61[2] = *(a2 + 48);
      v61[3] = v41;
      sub_1D5CFBAA8(v61, v60);
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v42 = sub_1D725BD1C();
      v43 = __swift_project_value_buffer(v42, qword_1EDFFCD50);
      (*(*(v42 - 8) + 16))(v22, v43, v42);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v39 = v64;
      sub_1D63A63A0(0, v61, v22);
      sub_1D5D08954(v61);
      v44 = v22;
    }
  }

  else if (v31 == 2)
  {
    v45 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v46 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v47 = qword_1EDF31ED0;

    if (v47 != -1)
    {
      swift_once();
    }

    v48 = sub_1D725BD1C();
    v49 = __swift_project_value_buffer(v48, qword_1EDFFCD50);
    (*(*(v48 - 8) + 16))(v14, v49, v48);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v39 = v64;
    sub_1D63A66E8(2, v45, v46, v14);

    v44 = v14;
  }

  else
  {
    if (v31 == 3)
    {
      v32 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v33 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v34 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v35 = qword_1EDF31ED0;

      if (v35 != -1)
      {
        swift_once();
      }

      v36 = sub_1D725BD1C();
      v37 = __swift_project_value_buffer(v36, qword_1EDFFCD50);
      v38 = v59;
      (*(*(v36 - 8) + 16))(v59, v37, v36);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v39 = v64;
      sub_1D63A68BC(3, v32, v33, v34, v38);
    }

    else
    {
      v50 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v51 = sub_1D725BD1C();
      v52 = __swift_project_value_buffer(v51, qword_1EDFFCD50);
      (*(*(v51 - 8) + 16))(v7, v52, v51);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v53 = v50;
      v39 = v64;
      sub_1D63A6A88(4, v53, v7);
      v38 = v7;
    }

    v44 = v38;
  }

  sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v39, sub_1D5D30DC4);
}

uint64_t sub_1D651EC74()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D651ED48()
{
  sub_1D72621EC();
}

uint64_t sub_1D651EE08()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D651EED8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6663C18();
  *a1 = result;
  return result;
}

void sub_1D651EF08(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1835365481;
  v5 = 0xE600000000000000;
  v6 = 0x686374697773;
  v7 = 0x646E616D6D6F63;
  if (v2 != 3)
  {
    v7 = 0x676E69646E6962;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = 0x70756F7267;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t FormatMenuImage.encode(to:)(void *a1)
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
  v16 = v1[1];
  v17 = v1[2];
  v19 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v20 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatMenuImage, &type metadata for FormatCodingKeys, v21, v19, &type metadata for FormatMenuImage, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Azden, v18, v14, v20, &off_1F51F6B78);
  if ((v17 & 0x2000000000000000) != 0)
  {
    if (qword_1EDF31F10 != -1)
    {
      swift_once();
    }

    v25 = sub_1D725BD1C();
    v26 = __swift_project_value_buffer(v25, qword_1EDFFCDF8);
    (*(*(v25 - 8) + 16))(v6, v26, v25);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63BA574(1, v15, v6);
    v24 = v6;
  }

  else
  {
    if (qword_1EDF31F10 != -1)
    {
      swift_once();
    }

    v22 = sub_1D725BD1C();
    v23 = __swift_project_value_buffer(v22, qword_1EDFFCDF8);
    (*(*(v22 - 8) + 16))(v10, v23, v22);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63BA3A4(0, v15, v16, v17, v10);
    v24 = v10;
  }

  sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D651F35C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6567616D69;
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
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6567616D69;
  }

  else
  {
    v5 = 0x646E616D6D6F63;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
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

uint64_t sub_1D651F400()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D651F480()
{
  sub_1D72621EC();
}

uint64_t sub_1D651F4EC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D651F568(uint64_t *a1@<X8>)
{
  v2 = 0x646E616D6D6F63;
  if (*v1)
  {
    v2 = 0x6567616D69;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D651F5F4(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v84 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v94 = &v81 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v81 - v11;
  sub_1D66F38A4();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v97 = *(v1 + 16);
  v98 = v18;
  v19 = *(v1 + 40);
  v87 = *(v1 + 32);
  v86 = v19;
  v20 = *(v1 + 56);
  v85 = *(v1 + 48);
  v83 = v20;
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D5C76BC4();
  v24 = v23;
  v25 = sub_1D5B58B84(&qword_1EDF24C28, sub_1D5C76BC4);
  sub_1D5D2EE70(&type metadata for FormatMenuItem, v24, v26, v21, &type metadata for FormatMenuItem, v24, &type metadata for FormatVersions.Azden, v22, v17, v25, &off_1F51F6B78);
  if (qword_1EDF31F10 != -1)
  {
    swift_once();
  }

  v27 = sub_1D725BD1C();
  v28 = __swift_project_value_buffer(v27, qword_1EDFFCDF8);
  v29 = *(v27 - 8);
  v30 = *(v29 + 16);
  v91 = v28;
  v92 = v27;
  v90 = v30;
  v89 = v29 + 16;
  (v30)(v12);
  v88 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v102 = v98;
  v103 = v97;
  v100 = 0uLL;
  v101 = 0;
  v31 = &v17[*(v14 + 44)];
  *&v97 = v14;
  v32 = *v31;
  v33 = *(v31 + 1);
  v104 = 0;
  v34 = swift_allocObject();
  *&v98 = &v81;
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v104;
  *(v34 + 40) = v32;
  *(v34 + 48) = v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  *(&v81 - 4) = sub_1D5B4AA6C;
  *(&v81 - 3) = 0;
  v79 = sub_1D6708C44;
  v80 = v36;
  v104 = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v104;
  v93 = v32;
  *(v37 + 40) = v32;
  *(v37 + 48) = v33;
  sub_1D66F3938();
  v39 = v38;
  v40 = sub_1D5B58B84(&qword_1EDF02AE8, sub_1D66F3938);
  swift_retain_n();
  v95 = v40;
  v96 = v39;
  v41 = sub_1D72647CC();
  v104 = 0;
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  *(v42 + 32) = 0;
  *(v42 + 16) = v41;
  *(v42 + 40) = v104;
  v43 = &v17[*(v97 + 36)];
  *&v97 = v17;
  v44 = __swift_project_boxed_opaque_existential_1(v43, *(v43 + 3));
  MEMORY[0x1EEE9AC00](v44, v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  *(&v81 - 4) = sub_1D615B4A4;
  *(&v81 - 3) = (&v81 - 6);
  v79 = sub_1D66F39CC;
  v80 = v37;
  v48 = v99;
  sub_1D5D2BC70(v12, sub_1D615B49C, v49, sub_1D615B4A4, (&v81 - 6));
  if (v48)
  {
    sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);

    v50 = v97;
  }

  else
  {
    v82 = v43;

    sub_1D6326A60();
    v50 = v97;
    sub_1D72647EC();
    sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);

    v51 = v94;
    v90(v94, v91, v92);
    swift_storeEnumTagMultiPayload();
    *&v102 = v87;
    *(&v102 + 1) = v86;
    *&v103 = v85;
    v99 = xmmword_1D728CF30;
    v100 = xmmword_1D728CF30;
    v101 = 0;
    v104 = 0;
    v52 = swift_allocObject();
    *&v98 = &v81;
    *(v52 + 16) = v99;
    *(v52 + 32) = v104;
    v53 = v93;
    *(v52 + 40) = v93;
    *(v52 + 48) = v33;
    MEMORY[0x1EEE9AC00](v52, v54);
    v87 = 0;
    *(&v81 - 4) = sub_1D5B4AA6C;
    *(&v81 - 3) = 0;
    v79 = sub_1D6708C44;
    v80 = v55;
    v104 = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = v99;
    *(v56 + 32) = v104;
    *(v56 + 40) = v53;
    *(v56 + 48) = v33;
    swift_retain_n();
    v57 = sub_1D72647CC();
    v104 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v57;
    *(v58 + 24) = v99;
    *(v58 + 40) = v104;
    v59 = __swift_project_boxed_opaque_existential_1(v82, *(v82 + 3));
    MEMORY[0x1EEE9AC00](v59, v60);
    MEMORY[0x1EEE9AC00](v61, v62);
    *(&v81 - 4) = sub_1D615B4A4;
    *(&v81 - 3) = (&v81 - 6);
    v79 = sub_1D6708C44;
    v80 = v56;
    v63 = v87;
    sub_1D5D2BC70(v51, sub_1D615B49C, v64, sub_1D615B4A4, (&v81 - 6));
    if (v63)
    {
      sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D66F3A48();
      sub_1D72647EC();
      sub_1D5D2CFE8(v94, type metadata accessor for FormatVersionRequirement);

      v66 = v84;
      v90(v84, v91, v92);
      swift_storeEnumTagMultiPayload();
      *&v100 = v83;
      v99 = xmmword_1D7297410;
      v102 = xmmword_1D7297410;
      LOBYTE(v103) = 0;
      v104 = 0;
      v67 = swift_allocObject();
      *&v98 = &v81;
      *(v67 + 16) = v99;
      *(v67 + 32) = v104;
      v68 = v93;
      *(v67 + 40) = v93;
      *(v67 + 48) = v33;
      MEMORY[0x1EEE9AC00](v67, v69);
      *(&v81 - 4) = sub_1D5B4AA6C;
      *(&v81 - 3) = 0;
      v79 = sub_1D6708C44;
      v80 = v70;
      v104 = 0;
      v71 = swift_allocObject();
      *(v71 + 16) = v99;
      *(v71 + 32) = v104;
      *(v71 + 40) = v68;
      *(v71 + 48) = v33;
      swift_retain_n();
      v72 = sub_1D72647CC();
      v104 = 0;
      v73 = swift_allocObject();
      *(v73 + 16) = v72;
      *(v73 + 24) = v99;
      *(v73 + 40) = v104;
      v74 = __swift_project_boxed_opaque_existential_1(v82, *(v82 + 3));
      MEMORY[0x1EEE9AC00](v74, v75);
      MEMORY[0x1EEE9AC00](v76, v77);
      *(&v81 - 4) = sub_1D615B4A4;
      *(&v81 - 3) = (&v81 - 6);
      v79 = sub_1D6708C44;
      v80 = v71;
      sub_1D5D2BC70(v66, sub_1D615B49C, v78, sub_1D615B4A4, (&v81 - 6));

      sub_1D5C8892C();
      sub_1D72647EC();
      sub_1D5D2CFE8(v66, type metadata accessor for FormatVersionRequirement);
    }
  }

  return sub_1D5D2CFE8(v50, sub_1D66F38A4);
}

uint64_t sub_1D6520198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66A2434(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65201D0(uint64_t a1)
{
  v2 = sub_1D5C76CDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D652020C(uint64_t a1)
{
  v2 = sub_1D5C76CDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6520248(void *a1, unint64_t a2)
{
  v4 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v51 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v51 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v51 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v51 - v21;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v29 = sub_1D5C30408();
  v52 = v26;
  sub_1D5D2EE70(&type metadata for FormatMenuItemAction, &type metadata for FormatCodingKeys, v30, v28, &type metadata for FormatMenuItemAction, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Azden, v27, v26, v29, &off_1F51F6B78);
  v31 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v31 == 2)
    {
      v39 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v40 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v41 = qword_1EDF31F10;

      if (v41 != -1)
      {
        swift_once();
      }

      v42 = sub_1D725BD1C();
      v43 = __swift_project_value_buffer(v42, qword_1EDFFCDF8);
      (*(*(v42 - 8) + 16))(v10, v43, v42);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v36 = v52;
      sub_1D63A2AAC(3, v39, v40, v10);

      v37 = type metadata accessor for FormatVersionRequirement;
      v38 = v10;
    }

    else
    {
      if (qword_1EDF31F10 != -1)
      {
        swift_once();
      }

      v48 = sub_1D725BD1C();
      v49 = __swift_project_value_buffer(v48, qword_1EDFFCDF8);
      (*(*(v48 - 8) + 16))(v22, v49, v48);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v36 = v52;
      sub_1D64201C0(0, v22);
      v37 = type metadata accessor for FormatVersionRequirement;
      v38 = v22;
    }
  }

  else if (v31)
  {
    v44 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v45 = qword_1EDF31F10;

    if (v45 != -1)
    {
      swift_once();
    }

    v46 = sub_1D725BD1C();
    v47 = __swift_project_value_buffer(v46, qword_1EDFFCDF8);
    (*(*(v46 - 8) + 16))(v14, v47, v46);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v36 = v52;
    sub_1D63A2918(2, v44, v14);

    v37 = type metadata accessor for FormatVersionRequirement;
    v38 = v14;
  }

  else
  {
    v32 = swift_projectBox();
    v33 = v51;
    sub_1D6706BB4(v32, v51, type metadata accessor for FormatCommandOpenURL);
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v34 = sub_1D725BD1C();
    v35 = __swift_project_value_buffer(v34, qword_1EDFFCDE0);
    (*(*(v34 - 8) + 16))(v18, v35, v34);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v36 = v52;
    sub_1D63A2744(1, v33, v18);
    sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);
    v37 = type metadata accessor for FormatCommandOpenURL;
    v38 = v33;
  }

  sub_1D5D2CFE8(v38, v37);
  return sub_1D5D2CFE8(v36, sub_1D5D30DC4);
}

uint64_t sub_1D652081C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65208D4()
{
  sub_1D72621EC();
}

uint64_t sub_1D6520978()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6520A2C(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701736302;
  v4 = 0xE700000000000000;
  v5 = 0x646E616D6D6F63;
  if (*v1 != 2)
  {
    v5 = 0x686374697773;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x4C52556E65706FLL;
    v2 = 0xE700000000000000;
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

uint64_t FormatMenuItemBinding.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v24 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v23 - v9;
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
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v14 = v24;
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
          *(v21 + 16) = &unk_1F5116048;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66A0608();
    v25 = 0uLL;
    sub_1D726431C();
    v25 = xmmword_1D7279980;
    sub_1D66A065C();
    sub_1D726431C();
    (*(v11 + 8))(v10, v6);
    *v14 = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D6520E3C(void *a1, uint64_t a2, void (*a3)(uint64_t, char *))
{
  v7 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v3;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(a2, &type metadata for FormatCodingKeys, v19, v16, a2, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v17, v14, v18, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCD50);
  (*(*(v20 - 8) + 16))(v10, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  a3(v15, v10);
  sub_1D5D2CFE8(v10, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D6521118(void *a1, int a2)
{
  v28 = a2;
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v26 = &v25 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v25 = &v25 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v25 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v18 = sub_1D725BD1C();
  v19 = __swift_project_value_buffer(v18, qword_1EDFFCD50);
  v20 = *(*(v18 - 8) + 16);
  v20(v15, v19, v18);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v21 = v32;
  sub_1D5D2BEC4(v15, sub_1D5B4AA6C, 0, v16, v17);
  result = sub_1D5D2CFE8(v15, type metadata accessor for FormatVersionRequirement);
  if (!v21)
  {
    v23 = v29[3];
    v32 = v29[4];
    __swift_project_boxed_opaque_existential_1(v29, v23);
    if (v28)
    {
      v24 = v26;
      v20(v26, v19, v18);
    }

    else
    {
      v24 = v25;
      v20(v25, v19, v18);
    }

    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v24, sub_1D5B4AA6C, 0, v23, v32);
    sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  return result;
}

uint64_t sub_1D6521580(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1954047348;
  }

  else
  {
    v3 = 0x686374697773;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1954047348;
  }

  else
  {
    v5 = 0x686374697773;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
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

uint64_t sub_1D652161C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6521694()
{
  sub_1D72621EC();
}

uint64_t sub_1D65216F8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D652176C(uint64_t *a1@<X8>)
{
  v2 = 1954047348;
  if (!*v1)
  {
    v2 = 0x686374697773;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatMicaBackground.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v37 = a2;
  sub_1D66A06B0();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66A0744();
  sub_1D5B58B84(&qword_1EC886E10, sub_1D66A0744);
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

  v13 = v37;
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

      v20 = sub_1D6627E68(0x746E65746E6F63, 0xE700000000000000, 0x6D6954616964656DLL, 0xEB00000000676E69);
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

  sub_1D66A08C4();
  v29 = 0uLL;
  LOBYTE(v30) = 0;
  sub_1D726431C();
  v17 = v27;
  v27 = xmmword_1D728CF30;
  v28 = 0;
  sub_1D66A0918();
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v23 = v33;
  *(v13 + 88) = v34;
  v24 = v36[0];
  *(v13 + 104) = v35;
  *(v13 + 120) = v24;
  *(v13 + 129) = *(v36 + 9);
  v25 = v29;
  *(v13 + 24) = v30;
  v26 = v32;
  *(v13 + 40) = v31;
  *(v13 + 56) = v26;
  *(v13 + 72) = v23;
  *v13 = v17;
  *(v13 + 8) = v25;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatMicaBackground.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v73 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v69 - v8;
  sub_1D66A096C();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = *(v1 + 11);
  v17 = *(v1 + 15);
  v109 = *(v1 + 13);
  v110[0] = v17;
  *(v110 + 9) = *(v1 + 129);
  v18 = *(v1 + 3);
  v19 = *(v1 + 7);
  v105 = *(v1 + 5);
  v106 = v19;
  v107 = *(v1 + 9);
  v108 = v16;
  v103 = *(v1 + 1);
  v104 = v18;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D66A0744();
  v23 = v22;
  v24 = sub_1D5B58B84(&qword_1EC886E10, sub_1D66A0744);
  sub_1D5D2EE70(&type metadata for FormatMicaBackground, v23, v25, v20, &type metadata for FormatMicaBackground, v23, &type metadata for FormatVersions.AzdenB, v21, v14, v24, &off_1F51F6AD8);
  if (qword_1EDF31EF8 != -1)
  {
    swift_once();
  }

  v26 = sub_1D725BD1C();
  v27 = __swift_project_value_buffer(v26, qword_1EDFFCDC8);
  v28 = *(v26 - 8);
  v29 = *(v28 + 16);
  v71 = v27;
  v72 = v26;
  v69[1] = v28 + 16;
  v70 = v29;
  (v29)(v9);
  v69[0] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v102 = v15;
  v100 = 0;
  v99 = 0;
  v101 = 0;
  v30 = &v14[*(v11 + 44)];
  v31 = v11;
  v32 = *v30;
  v33 = *(v30 + 1);
  LOBYTE(v97[0]) = 0;
  v34 = swift_allocObject();
  *&v78 = v69;
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v97[0];
  *(v34 + 40) = v32;
  *(v34 + 48) = v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v77 = &v69[-6];
  v69[-4] = sub_1D5B4AA6C;
  v69[-3] = 0;
  v67 = sub_1D6708AD8;
  v68 = v36;
  LOBYTE(v97[0]) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v97[0];
  v75 = v32;
  *(v37 + 40) = v32;
  *(v37 + 48) = v33;
  sub_1D66A0A00();
  v39 = v38;
  v40 = sub_1D5B58B84(&qword_1EC886E28, sub_1D66A0A00);
  swift_retain_n();
  v76 = v39;
  v74 = v40;
  v41 = sub_1D72647CC();
  LOBYTE(v97[0]) = 0;
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  *(v42 + 32) = 0;
  *(v42 + 16) = v41;
  *(v42 + 40) = v97[0];
  v43 = &v14[*(v31 + 36)];
  v111 = v14;
  v44 = __swift_project_boxed_opaque_existential_1(v43, *(v43 + 3));
  MEMORY[0x1EEE9AC00](v44, v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  v48 = v77;
  v69[-4] = sub_1D615B4A4;
  v69[-3] = v48;
  v67 = sub_1D6708AD8;
  v68 = v37;
  v49 = v79;
  sub_1D5D2BC70(v9, sub_1D615B49C, v50, sub_1D615B4A4, &v69[-6]);
  if (v49)
  {
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v51 = v111;
  }

  else
  {
    v79 = v43;
    v52 = v75;

    sub_1D66A0A94();
    v51 = v111;
    sub_1D72647EC();
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v53 = v73;
    v70(v73, v71, v72);
    swift_storeEnumTagMultiPayload();
    v78 = xmmword_1D728CF30;
    v95[2] = xmmword_1D728CF30;
    v96 = 0;
    LOBYTE(v88) = 0;
    v54 = swift_allocObject();
    *(v54 + 16) = v78;
    *(v54 + 32) = v88;
    *(v54 + 40) = v52;
    *(v54 + 48) = v33;
    v97[6] = v109;
    v98[0] = v110[0];
    *(v98 + 9) = *(v110 + 9);
    v97[2] = v105;
    v97[3] = v106;
    v97[4] = v107;
    v97[5] = v108;
    v97[0] = v103;
    v97[1] = v104;
    v55 = sub_1D60486AC(v97);
    if (v55 == 1)
    {

      sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v77 = v69;
      v94 = v109;
      v95[0] = v110[0];
      *(v95 + 9) = *(v110 + 9);
      v90 = v105;
      v91 = v106;
      v92 = v107;
      v93 = v108;
      v88 = v103;
      v89 = v104;
      MEMORY[0x1EEE9AC00](v55, v56);
      v69[-4] = sub_1D5B4AA6C;
      v69[-3] = 0;
      v67 = sub_1D6708AD8;
      v68 = v54;
      LOBYTE(v80) = 0;
      v58 = swift_allocObject();
      *(v58 + 16) = v78;
      *(v58 + 32) = v80;
      *(v58 + 40) = v52;
      *(v58 + 48) = v33;
      swift_retain_n();
      sub_1D5D355B8(&v103, &v80, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
      v59 = sub_1D72647CC();
      LOBYTE(v80) = 0;
      v60 = swift_allocObject();
      *(v60 + 16) = v59;
      *(v60 + 24) = v78;
      *(v60 + 40) = v80;
      v61 = __swift_project_boxed_opaque_existential_1(v79, *(v79 + 3));
      MEMORY[0x1EEE9AC00](v61, v62);
      MEMORY[0x1EEE9AC00](v63, v64);
      v69[-4] = sub_1D615B4A4;
      v69[-3] = &v69[-6];
      v65 = v73;
      v67 = sub_1D66A0AE8;
      v68 = v58;
      LOBYTE(v59) = sub_1D5D2F7A4(v73, sub_1D615B49C, v66, sub_1D615B4A4, &v69[-6]);

      if (v59)
      {
        sub_1D6662A38();
        v51 = v111;
        sub_1D72647EC();

        v86 = v94;
        v87[0] = v95[0];
        *(v87 + 9) = *(v95 + 9);
        v82 = v90;
        v83 = v91;
        v84 = v92;
        v85 = v93;
        v80 = v88;
        v81 = v89;
        sub_1D62B49F0(&v80);
        sub_1D5D2CFE8(v65, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        v86 = v94;
        v87[0] = v95[0];
        *(v87 + 9) = *(v95 + 9);
        v82 = v90;
        v83 = v91;
        v84 = v92;
        v85 = v93;
        v80 = v88;
        v81 = v89;
        sub_1D62B49F0(&v80);
        sub_1D5D2CFE8(v65, type metadata accessor for FormatVersionRequirement);
        v51 = v111;
      }
    }
  }

  return sub_1D5D2CFE8(v51, sub_1D66A096C);
}

uint64_t sub_1D65225C0()
{
  v1 = 0x6D6954616964656DLL;
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
    return 0x746E65746E6F63;
  }
}

uint64_t sub_1D652261C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66A258C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6522654(uint64_t a1)
{
  v2 = sub_1D66A081C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6522690(uint64_t a1)
{
  v2 = sub_1D66A081C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatMicaNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  *&v370 = &v344 - v7;
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v346 = (&v344 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v347 = &v344 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v349 = &v344 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v348 = &v344 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v350 = &v344 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v351 = &v344 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v352 = &v344 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v353 = &v344 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v356 = &v344 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v357 = &v344 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v358 = &v344 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v359 = (&v344 - v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  v369 = (&v344 - v46);
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v344 - v49;
  sub_1D66A373C();
  v371 = v51;
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v344 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1[3];
  v56 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v55);
  sub_1D5E1AE68();
  v58 = v57;
  v59 = sub_1D5B58B84(&qword_1EC87F978, sub_1D5E1AE68);
  v368 = v54;
  sub_1D5D2EE70(v4, v58, v60, v55, v4, v58, &type metadata for FormatVersions.AzdenB, v56, v54, v59, &off_1F51F6AD8);
  swift_beginAccess();
  v62 = v2[2];
  v61 = v2[3];
  v366 = v2;
  v63 = qword_1EDF31EF8;

  if (v63 != -1)
  {
    swift_once();
  }

  v64 = sub_1D725BD1C();
  v65 = __swift_project_value_buffer(v64, qword_1EDFFCDC8);
  v66 = *(v64 - 1);
  v67 = *(v66 + 16);
  v68 = v66 + 16;
  v367 = v64;
  v67(v50, v65, v64);
  v69 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v70 = v370;
  v361 = v62;
  sub_1D725892C();
  v71 = sub_1D725895C();
  v72 = (*(*(v71 - 8) + 48))(v70, 1, v71);
  v363 = v67;
  v364 = v68;
  v365 = v69;
  v362 = v65;
  if (v72 != 1)
  {
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v70, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v94 = v67;
    goto LABEL_9;
  }

  v360 = v61;
  sub_1D5D35558(v70, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v73 = v371;
  v74 = v368;
  v75 = &v368[*(v371 + 11)];
  v77 = *v75;
  v76 = *(v75 + 1);
  v78 = v50;
  LOBYTE(v405) = 0;
  v79 = swift_allocObject();
  *(v79 + 16) = 0;
  *(v79 + 24) = 0;
  *(v79 + 32) = v405;
  *(v79 + 40) = v77;
  *(v79 + 48) = v76;
  sub_1D5E1AE2C(0);
  v81 = v80;
  v82 = sub_1D5B58B84(&qword_1EC87F980, sub_1D5E1AE2C);

  *&v370 = v81;
  v355 = v82;
  v83 = sub_1D72647CC();
  LOBYTE(v405) = 0;
  v84 = swift_allocObject();
  *(v84 + 24) = 0;
  *(v84 + 32) = 0;
  *(v84 + 16) = v83;
  *(v84 + 40) = v405;
  v85 = __swift_project_boxed_opaque_existential_1((v74 + *(v73 + 9)), *(v74 + *(v73 + 9) + 24));
  MEMORY[0x1EEE9AC00](v85, v86);
  MEMORY[0x1EEE9AC00](v87, v88);
  *(&v344 - 4) = sub_1D5B4AA6C;
  *(&v344 - 3) = 0;
  v342 = sub_1D66A37D0;
  v343 = v79;
  v89 = v415;
  v91 = sub_1D5D2F7A4(v78, sub_1D615B49C, v90, sub_1D615B4A4, (&v344 - 6));
  v415 = v89;
  if (v89)
  {
    sub_1D5D2CFE8(v78, type metadata accessor for FormatVersionRequirement);

LABEL_6:
    v92 = v74;
    return sub_1D5D2CFE8(v92, sub_1D66A373C);
  }

  v118 = v91;

  if ((v118 & 1) == 0)
  {
    sub_1D5D2CFE8(v78, type metadata accessor for FormatVersionRequirement);

    v94 = v363;
    v65 = v362;
    goto LABEL_9;
  }

  v405 = 0uLL;
  LOBYTE(v406) = 0;
  *&v397 = v361;
  *(&v397 + 1) = v360;
  v119 = v368;
  v120 = v415;
  sub_1D72647EC();

  sub_1D5D2CFE8(v78, type metadata accessor for FormatVersionRequirement);
  v94 = v363;
  v65 = v362;
  if (!v120)
  {
    v415 = 0;
LABEL_9:
    v95 = v366[4];
    v94(v369, v65, v367);
    swift_storeEnumTagMultiPayload();
    *&v397 = v95;
    v370 = xmmword_1D728CF30;
    v405 = xmmword_1D728CF30;
    LOBYTE(v406) = 0;
    v96 = v368;
    v97 = &v368[*(v371 + 11)];
    v99 = *v97;
    v98 = *(v97 + 1);
    LOBYTE(v389) = 0;
    v100 = swift_allocObject();
    v361 = &v344;
    *(v100 + 16) = v370;
    *(v100 + 32) = v389;
    *(v100 + 40) = v99;
    *(v100 + 48) = v98;
    MEMORY[0x1EEE9AC00](v100, v101);
    v360 = &v344 - 6;
    *(&v344 - 4) = sub_1D5B4AA6C;
    *(&v344 - 3) = 0;
    v342 = sub_1D6708ADC;
    v343 = v102;
    LOBYTE(v389) = 0;
    v103 = swift_allocObject();
    *(v103 + 16) = v370;
    *(v103 + 32) = v389;
    v345 = v99;
    *(v103 + 40) = v99;
    *(v103 + 48) = v98;
    sub_1D5E1AE2C(0);
    v105 = v104;
    v106 = sub_1D5B58B84(&qword_1EC87F980, sub_1D5E1AE2C);
    v344 = v98;
    swift_retain_n();
    v354 = v105;
    v355 = v106;
    v107 = sub_1D72647CC();
    LOBYTE(v389) = 0;
    v108 = swift_allocObject();
    *(v108 + 16) = v107;
    *(v108 + 24) = v370;
    *(v108 + 40) = v389;
    v109 = (v96 + *(v371 + 9));
    v110 = __swift_project_boxed_opaque_existential_1(v109, v109[3]);
    MEMORY[0x1EEE9AC00](v110, v111);
    MEMORY[0x1EEE9AC00](v112, v113);
    v114 = v360;
    *(&v344 - 4) = sub_1D615B4A4;
    *(&v344 - 3) = v114;
    v342 = sub_1D6708ADC;
    v343 = v103;
    v115 = v369;
    v116 = v415;
    sub_1D5D2BC70(v369, sub_1D615B49C, v117, sub_1D615B4A4, (&v344 - 6));
    if (v116)
    {
      sub_1D5D2CFE8(v115, type metadata accessor for FormatVersionRequirement);

      v92 = v96;
      return sub_1D5D2CFE8(v92, sub_1D66A373C);
    }

    v371 = v109;

    sub_1D5CA1E90();
    sub_1D72647EC();
    v415 = 0;
    sub_1D5D2CFE8(v369, type metadata accessor for FormatVersionRequirement);

    v121 = v366;
    v122 = v366[5];
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v123 = v367;
    v124 = __swift_project_value_buffer(v367, qword_1EDFFCD68);
    v125 = v363;
    v363(v359, v124, v123);
    swift_storeEnumTagMultiPayload();
    v370 = xmmword_1D7297410;
    v405 = xmmword_1D7297410;
    LOBYTE(v406) = 0;
    LOBYTE(v397) = 0;
    v126 = swift_allocObject();
    v128 = v126;
    *(v126 + 16) = v370;
    *(v126 + 32) = v397;
    v130 = v344;
    v129 = v345;
    *(v126 + 40) = v345;
    *(v126 + 48) = v130;
    if (v122)
    {
      v369 = &v344;
      *&v397 = v122;
      MEMORY[0x1EEE9AC00](v126, v127);
      *(&v344 - 4) = sub_1D5B4AA6C;
      *(&v344 - 3) = 0;
      v342 = sub_1D6708ADC;
      v343 = v128;
      LOBYTE(v389) = 0;
      v131 = swift_allocObject();
      *(v131 + 16) = v370;
      *(v131 + 32) = v389;
      *(v131 + 40) = v129;
      *(v131 + 48) = v130;
      swift_retain_n();

      v132 = sub_1D72647CC();
      LOBYTE(v389) = 0;
      v133 = swift_allocObject();
      *(v133 + 16) = v132;
      *(v133 + 24) = v370;
      *(v133 + 40) = v389;
      v134 = __swift_project_boxed_opaque_existential_1(v371, v371[3]);
      MEMORY[0x1EEE9AC00](v134, v135);
      MEMORY[0x1EEE9AC00](v136, v137);
      *(&v344 - 4) = sub_1D615B4A4;
      *(&v344 - 3) = (&v344 - 6);
      v342 = sub_1D6708ADC;
      v343 = v131;
      v138 = v359;
      v139 = v415;
      v141 = sub_1D5D2F7A4(v359, sub_1D615B49C, v140, sub_1D615B4A4, (&v344 - 6));
      if (v139)
      {

        v142 = v368;

        sub_1D5D2CFE8(v138, type metadata accessor for FormatVersionRequirement);
        v92 = v142;
        return sub_1D5D2CFE8(v92, sub_1D66A373C);
      }

      v144 = v141;

      if (v144)
      {
        sub_1D6659D24();
        sub_1D72647EC();
        v121 = v366;
        v125 = v363;
        v129 = v345;
        v415 = 0;

        v143 = v344;
      }

      else
      {
        v415 = 0;

        v121 = v366;
        v125 = v363;
        v143 = v344;
        v129 = v345;
      }
    }

    else
    {

      v143 = v130;
      v138 = v359;
    }

    sub_1D5D2CFE8(v138, type metadata accessor for FormatVersionRequirement);
    swift_beginAccess();
    v145 = v121[6];
    v146 = v358;
    v125(v358, v362, v367);
    swift_storeEnumTagMultiPayload();
    if (*(v145 + 16))
    {
      LOBYTE(v405) = 0;
      v147 = swift_allocObject();
      v370 = xmmword_1D72BAA60;
      *(v147 + 16) = xmmword_1D72BAA60;
      *(v147 + 32) = v405;
      *(v147 + 40) = v129;
      *(v147 + 48) = v143;

      v74 = v368;
      v148 = sub_1D72647CC();
      LOBYTE(v405) = 0;
      v149 = swift_allocObject();
      *(v149 + 16) = v148;
      *(v149 + 24) = v370;
      *(v149 + 40) = v405;
      v150 = __swift_project_boxed_opaque_existential_1(v371, v371[3]);
      MEMORY[0x1EEE9AC00](v150, v151);
      MEMORY[0x1EEE9AC00](v152, v153);
      *(&v344 - 4) = sub_1D5B4AA6C;
      *(&v344 - 3) = 0;
      v342 = sub_1D6708ADC;
      v343 = v147;
      v154 = v415;
      v156 = sub_1D5D2F7A4(v146, sub_1D615B49C, v155, sub_1D615B4A4, (&v344 - 6));
      if (v154)
      {
        sub_1D5D2CFE8(v146, type metadata accessor for FormatVersionRequirement);

LABEL_52:
        v92 = v74;
        return sub_1D5D2CFE8(v92, sub_1D66A373C);
      }

      v157 = v156;

      if (v157)
      {
        v405 = v370;
        LOBYTE(v406) = 0;
        *&v397 = v145;
        sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
        sub_1D6659C88();
        sub_1D72647EC();
        v121 = v366;
        v415 = 0;
        v125 = v363;

        sub_1D5D2CFE8(v358, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        v415 = 0;
        sub_1D5D2CFE8(v146, type metadata accessor for FormatVersionRequirement);

        v121 = v366;
        v125 = v363;
      }

      v143 = v344;
    }

    else
    {
      sub_1D5D2CFE8(v146, type metadata accessor for FormatVersionRequirement);
    }

    v158 = v121[7];
    v159 = v362;
    v125(v357, v362, v367);
    swift_storeEnumTagMultiPayload();
    v370 = xmmword_1D72BAA70;
    v405 = xmmword_1D72BAA70;
    LOBYTE(v406) = 0;
    LOBYTE(v397) = 0;
    v160 = swift_allocObject();
    v162 = v160;
    *(v160 + 16) = v370;
    *(v160 + 32) = v397;
    v163 = v345;
    *(v160 + 40) = v345;
    *(v160 + 48) = v143;
    if (v158)
    {
      v369 = &v344;
      *&v397 = v158;
      MEMORY[0x1EEE9AC00](v160, v161);
      *(&v344 - 4) = sub_1D5B4AA6C;
      *(&v344 - 3) = 0;
      v342 = sub_1D6708ADC;
      v343 = v162;
      LOBYTE(v389) = 0;
      v164 = swift_allocObject();
      *(v164 + 16) = v370;
      *(v164 + 32) = v389;
      *(v164 + 40) = v163;
      *(v164 + 48) = v143;
      swift_retain_n();

      v165 = sub_1D72647CC();
      LOBYTE(v389) = 0;
      v166 = swift_allocObject();
      *(v166 + 16) = v165;
      *(v166 + 24) = v370;
      *(v166 + 40) = v389;
      v167 = __swift_project_boxed_opaque_existential_1(v371, v371[3]);
      MEMORY[0x1EEE9AC00](v167, v168);
      MEMORY[0x1EEE9AC00](v169, v170);
      *(&v344 - 4) = sub_1D615B4A4;
      *(&v344 - 3) = (&v344 - 6);
      v342 = sub_1D6708ADC;
      v343 = v164;
      v171 = v357;
      v172 = v415;
      v174 = sub_1D5D2F7A4(v357, sub_1D615B49C, v173, sub_1D615B4A4, (&v344 - 6));
      v415 = v172;
      if (v172)
      {

        v175 = v368;
LABEL_37:
        sub_1D5D2CFE8(v171, type metadata accessor for FormatVersionRequirement);
        v92 = v175;
        return sub_1D5D2CFE8(v92, sub_1D66A373C);
      }

      v177 = v174;

      if (v177)
      {
        type metadata accessor for FormatMicaNodeStyle();
        sub_1D5B58B84(&qword_1EC886E38, type metadata accessor for FormatMicaNodeStyle);
        v175 = v368;
        v178 = v415;
        sub_1D72647EC();
        v176 = v363;
        v159 = v362;
        v415 = v178;
        if (v178)
        {

          goto LABEL_37;
        }
      }

      else
      {

        v176 = v363;
        v159 = v362;
      }
    }

    else
    {

      v171 = v357;
      v176 = v125;
    }

    sub_1D5D2CFE8(v171, type metadata accessor for FormatVersionRequirement);
    v179 = v366[8];
    v180 = v356;
    v176(v356, v159, v367);
    swift_storeEnumTagMultiPayload();
    v414 = v179;
    v370 = xmmword_1D72BAA80;
    v412[2] = xmmword_1D72BAA80;
    v413 = 0;
    LOBYTE(v405) = 0;
    v181 = swift_allocObject();
    v369 = &v344;
    *(v181 + 16) = v370;
    *(v181 + 32) = v405;
    v183 = v344;
    v182 = v345;
    *(v181 + 40) = v345;
    *(v181 + 48) = v183;
    MEMORY[0x1EEE9AC00](v181, v184);
    *(&v344 - 4) = sub_1D5B4AA6C;
    *(&v344 - 3) = 0;
    v342 = sub_1D6708ADC;
    v343 = v185;
    LOBYTE(v405) = 0;
    v186 = swift_allocObject();
    *(v186 + 16) = v370;
    *(v186 + 32) = v405;
    *(v186 + 40) = v182;
    *(v186 + 48) = v183;
    swift_retain_n();
    v187 = v368;
    v188 = sub_1D72647CC();
    LOBYTE(v405) = 0;
    v189 = swift_allocObject();
    *(v189 + 16) = v188;
    *(v189 + 24) = v370;
    *(v189 + 40) = v405;
    v190 = __swift_project_boxed_opaque_existential_1(v371, v371[3]);
    MEMORY[0x1EEE9AC00](v190, v191);
    MEMORY[0x1EEE9AC00](v192, v193);
    *(&v344 - 4) = sub_1D615B4A4;
    *(&v344 - 3) = (&v344 - 6);
    v342 = sub_1D6708ADC;
    v343 = v186;
    v194 = v415;
    sub_1D5D2BC70(v180, sub_1D615B49C, v195, sub_1D615B4A4, (&v344 - 6));
    if (v194)
    {
      sub_1D5D2CFE8(v180, type metadata accessor for FormatVersionRequirement);

      v74 = v187;
      goto LABEL_52;
    }

    sub_1D66A0A94();
    sub_1D72647EC();
    v74 = v187;
    v415 = 0;
    sub_1D5D2CFE8(v180, type metadata accessor for FormatVersionRequirement);

    v196 = *(v366 + 19);
    v197 = *(v366 + 23);
    v403 = *(v366 + 21);
    v404[0] = v197;
    *(v404 + 9) = *(v366 + 193);
    v198 = *(v366 + 11);
    v199 = *(v366 + 15);
    v399 = *(v366 + 13);
    v400 = v199;
    v401 = *(v366 + 17);
    v402 = v196;
    v397 = *(v366 + 9);
    v398 = v198;
    v200 = v353;
    v201 = v363;
    v363(v353, v362, v367);
    swift_storeEnumTagMultiPayload();
    v370 = xmmword_1D72BAA90;
    v387 = xmmword_1D72BAA90;
    v388 = 0;
    LOBYTE(v389) = 0;
    v202 = swift_allocObject();
    *(v202 + 16) = v370;
    *(v202 + 32) = v389;
    v203 = v344;
    v204 = v345;
    *(v202 + 40) = v345;
    *(v202 + 48) = v203;
    v411 = v403;
    v412[0] = v404[0];
    *(v412 + 9) = *(v404 + 9);
    v407 = v399;
    v408 = v400;
    v409 = v401;
    v410 = v402;
    v405 = v397;
    v406 = v398;
    v205 = sub_1D60486AC(&v405);
    if (v205 == 1)
    {

      sub_1D5D2CFE8(v200, type metadata accessor for FormatVersionRequirement);

      v207 = v366;
    }

    else
    {
      v369 = &v344;
      v395 = v403;
      v396[0] = v404[0];
      *(v396 + 9) = *(v404 + 9);
      v391 = v399;
      v392 = v400;
      v393 = v401;
      v394 = v402;
      v389 = v397;
      v390 = v398;
      MEMORY[0x1EEE9AC00](v205, v206);
      *(&v344 - 4) = sub_1D5B4AA6C;
      *(&v344 - 3) = 0;
      v342 = sub_1D6708ADC;
      v343 = v202;
      LOBYTE(v372) = 0;
      v208 = swift_allocObject();
      *(v208 + 16) = v370;
      *(v208 + 32) = v372;
      *(v208 + 40) = v204;
      *(v208 + 48) = v203;
      swift_retain_n();
      sub_1D5D355B8(&v397, &v372, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
      v209 = sub_1D72647CC();
      LOBYTE(v372) = 0;
      v210 = swift_allocObject();
      *(v210 + 16) = v209;
      *(v210 + 24) = v370;
      *(v210 + 40) = v372;
      v211 = __swift_project_boxed_opaque_existential_1(v371, v371[3]);
      MEMORY[0x1EEE9AC00](v211, v212);
      MEMORY[0x1EEE9AC00](v213, v214);
      *(&v344 - 4) = sub_1D615B4A4;
      *(&v344 - 3) = (&v344 - 6);
      v342 = sub_1D6708ADC;
      v343 = v208;
      v215 = v415;
      v217 = sub_1D5D2F7A4(v200, sub_1D615B49C, v216, sub_1D615B4A4, (&v344 - 6));
      if (v215)
      {

        v378 = v395;
        v379[0] = v396[0];
        *(v379 + 9) = *(v396 + 9);
        v374 = v391;
        v375 = v392;
        v376 = v393;
        v377 = v394;
        v372 = v389;
        v373 = v390;
        sub_1D62B49F0(&v372);
        v74 = v368;
        goto LABEL_50;
      }

      v219 = v217;

      if (v219)
      {
        sub_1D6662A38();
        v74 = v368;
        sub_1D72647EC();
        v415 = 0;

        v378 = v395;
        v379[0] = v396[0];
        *(v379 + 9) = *(v396 + 9);
        v374 = v391;
        v375 = v392;
        v376 = v393;
        v377 = v394;
        v372 = v389;
        v373 = v390;
        sub_1D62B49F0(&v372);
        sub_1D5D2CFE8(v200, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        v415 = 0;

        v378 = v395;
        v379[0] = v396[0];
        *(v379 + 9) = *(v396 + 9);
        v374 = v391;
        v375 = v392;
        v376 = v393;
        v377 = v394;
        v372 = v389;
        v373 = v390;
        sub_1D62B49F0(&v372);
        sub_1D5D2CFE8(v200, type metadata accessor for FormatVersionRequirement);
        v74 = v368;
      }

      v207 = v366;
      v201 = v363;
    }

    swift_beginAccess();
    v220 = *(v207 + 53);
    v221 = *(v207 + 216);
    v222 = v352;
    v223 = v367;
    v201(v352, v362, v367);
    swift_storeEnumTagMultiPayload();
    if (v221 == 2 && v220 == 2)
    {
      sub_1D5D2CFE8(v222, type metadata accessor for FormatVersionRequirement);
      v224 = v351;
      v225 = v345;
    }

    else
    {
      LOBYTE(v389) = 0;
      v226 = swift_allocObject();
      v370 = xmmword_1D72BAAA0;
      *(v226 + 16) = xmmword_1D72BAAA0;
      *(v226 + 32) = v389;
      *(v226 + 40) = v345;
      *(v226 + 48) = v344;

      v227 = sub_1D72647CC();
      LOBYTE(v389) = 0;
      v228 = swift_allocObject();
      *(v228 + 16) = v227;
      *(v228 + 24) = v370;
      *(v228 + 40) = v389;
      v229 = __swift_project_boxed_opaque_existential_1(v371, v371[3]);
      MEMORY[0x1EEE9AC00](v229, v230);
      MEMORY[0x1EEE9AC00](v231, v232);
      *(&v344 - 4) = sub_1D5B4AA6C;
      *(&v344 - 3) = 0;
      v342 = sub_1D6708ADC;
      v343 = v226;
      v233 = v415;
      v235 = sub_1D5D2F7A4(v222, sub_1D615B49C, v234, sub_1D615B4A4, (&v344 - 6));
      v415 = v233;
      if (v233)
      {
        sub_1D5D2CFE8(v222, type metadata accessor for FormatVersionRequirement);

        goto LABEL_62;
      }

      v236 = v235;
      v225 = v345;

      if (v236)
      {
        v389 = v370;
        LOBYTE(v390) = 0;
        LODWORD(v387) = v220;
        BYTE4(v387) = v221;
        sub_1D66740D8();
        v74 = v368;
        v237 = v415;
        sub_1D72647EC();
        if (v237)
        {
          v218 = v352;
          goto LABEL_51;
        }

        v415 = 0;
        sub_1D5D2CFE8(v352, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v352, type metadata accessor for FormatVersionRequirement);
        v74 = v368;
      }

      v207 = v366;
      v223 = v367;
      v201 = v363;
      v224 = v351;
    }

    swift_beginAccess();
    v238 = v207[28];
    v201(v224, v362, v223);
    swift_storeEnumTagMultiPayload();
    if (v238)
    {
      LOBYTE(v389) = 0;
      v239 = v224;
      v240 = swift_allocObject();
      v370 = xmmword_1D72BAAB0;
      *(v240 + 16) = xmmword_1D72BAAB0;
      *(v240 + 32) = v389;
      *(v240 + 40) = v225;
      *(v240 + 48) = v344;

      v241 = sub_1D72647CC();
      LOBYTE(v389) = 0;
      v242 = swift_allocObject();
      *(v242 + 16) = v241;
      *(v242 + 24) = v370;
      *(v242 + 40) = v389;
      v243 = __swift_project_boxed_opaque_existential_1(v371, v371[3]);
      v369 = &v344;
      MEMORY[0x1EEE9AC00](v243, v244);
      MEMORY[0x1EEE9AC00](v245, v246);
      *(&v344 - 4) = sub_1D5B4AA6C;
      *(&v344 - 3) = 0;
      v342 = sub_1D6708ADC;
      v343 = v240;
      v247 = v415;
      v249 = sub_1D5D2F7A4(v239, sub_1D615B49C, v248, sub_1D615B4A4, (&v344 - 6));
      v415 = v247;
      if (v247)
      {
        sub_1D5D2CFE8(v239, type metadata accessor for FormatVersionRequirement);

        goto LABEL_6;
      }

      v250 = v249;

      if (v250)
      {
        v389 = v370;
        LOBYTE(v390) = 0;
        v386 = v238;
        v251 = v415;
        sub_1D72647EC();
        if (v251)
        {
          v218 = v351;
          goto LABEL_51;
        }

        v415 = 0;
      }

      sub_1D5D2CFE8(v351, type metadata accessor for FormatVersionRequirement);
      v207 = v366;
      v201 = v363;
    }

    else
    {
      sub_1D5D2CFE8(v224, type metadata accessor for FormatVersionRequirement);
    }

    swift_beginAccess();
    v252 = v207[29];
    sub_1D5EB1500(v252);
    v253 = v350;
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v254 = v367;
    v255 = __swift_project_value_buffer(v367, qword_1EDFFCD50);
    v201(v253, v255, v254);
    swift_storeEnumTagMultiPayload();
    if (v252 == 0x8000000000000000)
    {
      sub_1D5D2CFE8(v253, type metadata accessor for FormatVersionRequirement);
LABEL_90:
      swift_beginAccess();
      v268 = *(v207 + 240);
      v269 = v367;
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v270 = __swift_project_value_buffer(v269, qword_1EDFFCD00);
      v271 = v348;
      v201(v348, v270, v269);
      swift_storeEnumTagMultiPayload();
      if (v268)
      {
        sub_1D5D2CFE8(v271, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        LOBYTE(v389) = 0;
        v272 = swift_allocObject();
        v370 = xmmword_1D72BAAD0;
        *(v272 + 16) = xmmword_1D72BAAD0;
        *(v272 + 32) = v389;
        *(v272 + 40) = v225;
        *(v272 + 48) = v344;

        v273 = sub_1D72647CC();
        LOBYTE(v389) = 0;
        v274 = swift_allocObject();
        *(v274 + 16) = v273;
        *(v274 + 24) = v370;
        *(v274 + 40) = v389;
        v275 = __swift_project_boxed_opaque_existential_1(v371, v371[3]);
        MEMORY[0x1EEE9AC00](v275, v276);
        MEMORY[0x1EEE9AC00](v277, v278);
        *(&v344 - 4) = sub_1D5B4AA6C;
        *(&v344 - 3) = 0;
        v342 = sub_1D6708ADC;
        v343 = v272;
        v279 = v415;
        v281 = sub_1D5D2F7A4(v271, sub_1D615B49C, v280, sub_1D615B4A4, (&v344 - 6));
        if (v279)
        {
          sub_1D5D2CFE8(v271, type metadata accessor for FormatVersionRequirement);

          goto LABEL_52;
        }

        if (v281)
        {
          v389 = v370;
          LOBYTE(v390) = 0;
          LOBYTE(v383) = 0;
          sub_1D72647EC();
        }

        sub_1D5D2CFE8(v348, type metadata accessor for FormatVersionRequirement);
        v415 = 0;
        v207 = v366;
        v269 = v367;
        v201 = v363;
        v225 = v345;
      }

      v282 = v207[31];
      v283 = *(v207 + 256);
      v284 = v362;
      v201(v349, v362, v269);
      swift_storeEnumTagMultiPayload();
      v370 = xmmword_1D72BAAE0;
      v389 = xmmword_1D72BAAE0;
      LOBYTE(v390) = 0;
      LOBYTE(v383) = 0;
      v285 = swift_allocObject();
      v287 = v285;
      *(v285 + 16) = v370;
      *(v285 + 32) = v383;
      v288 = v344;
      *(v285 + 40) = v225;
      *(v285 + 48) = v288;
      if (v283 > 0xFD)
      {

        goto LABEL_107;
      }

      v383 = v282;
      v384 = v283;
      MEMORY[0x1EEE9AC00](v285, v286);
      *(&v344 - 4) = sub_1D5B4AA6C;
      *(&v344 - 3) = 0;
      v342 = sub_1D6708ADC;
      v343 = v287;
      LOBYTE(v381) = 0;
      v289 = swift_allocObject();
      *(v289 + 16) = v370;
      *(v289 + 32) = v381;
      *(v289 + 40) = v225;
      *(v289 + 48) = v288;
      swift_retain_n();
      v290 = sub_1D72647CC();
      LOBYTE(v381) = 0;
      v291 = swift_allocObject();
      *(v291 + 16) = v290;
      *(v291 + 24) = v370;
      *(v291 + 40) = v381;
      v292 = __swift_project_boxed_opaque_existential_1(v371, v371[3]);
      MEMORY[0x1EEE9AC00](v292, v293);
      MEMORY[0x1EEE9AC00](v294, v295);
      *(&v344 - 4) = sub_1D615B4A4;
      *(&v344 - 3) = (&v344 - 6);
      v342 = sub_1D6708ADC;
      v343 = v289;
      v296 = v415;
      v298 = sub_1D5D2F7A4(v349, sub_1D615B49C, v297, sub_1D615B4A4, (&v344 - 6));
      v415 = v296;
      if (!v296)
      {
        v299 = v298;

        if (v299)
        {
          sub_1D5F8F434();
          v300 = v415;
          sub_1D72647EC();
          v415 = v300;
          if (v300)
          {
            v301 = v349;
            goto LABEL_121;
          }
        }

        v201 = v363;
        v284 = v362;
LABEL_107:
        sub_1D5D2CFE8(v349, type metadata accessor for FormatVersionRequirement);

        v302 = v366;
        swift_beginAccess();
        v303 = v302[33];
        v201(v347, v284, v367);
        swift_storeEnumTagMultiPayload();
        if (*(v303 + 16))
        {
          LOBYTE(v389) = 0;
          v304 = swift_allocObject();
          v370 = xmmword_1D72BAAF0;
          *(v304 + 16) = xmmword_1D72BAAF0;
          *(v304 + 32) = v389;
          *(v304 + 40) = v345;
          *(v304 + 48) = v344;

          v305 = sub_1D72647CC();
          LOBYTE(v389) = 0;
          v306 = swift_allocObject();
          *(v306 + 16) = v305;
          *(v306 + 24) = v370;
          *(v306 + 40) = v389;
          v307 = __swift_project_boxed_opaque_existential_1(v371, v371[3]);
          MEMORY[0x1EEE9AC00](v307, v308);
          MEMORY[0x1EEE9AC00](v309, v310);
          *(&v344 - 4) = sub_1D5B4AA6C;
          *(&v344 - 3) = 0;
          v342 = sub_1D6708ADC;
          v343 = v304;
          v311 = v415;
          v313 = sub_1D5D2F7A4(v347, sub_1D615B49C, v312, sub_1D615B4A4, (&v344 - 6));
          v415 = v311;
          if (v311)
          {

LABEL_110:
            sub_1D5D2CFE8(v347, type metadata accessor for FormatVersionRequirement);
            goto LABEL_62;
          }

          v314 = v313;

          if (v314)
          {
            v315 = v415;
            sub_1D5E08DEC(v303, v368, 0xC, 0, 0);
            v415 = v315;
            if (v315)
            {

              goto LABEL_110;
            }
          }
        }

        sub_1D5D2CFE8(v347, type metadata accessor for FormatVersionRequirement);
        v316 = v366[34];
        v317 = v366[35];
        v318 = v366[36];
        v319 = v366[37];
        v320 = v366[38];
        v321 = v366[39];
        if (qword_1EDF31F38 != -1)
        {
          swift_once();
        }

        v322 = v367;
        v323 = __swift_project_value_buffer(v367, qword_1EDFFCE38);
        v363(v346, v323, v322);
        swift_storeEnumTagMultiPayload();
        v370 = xmmword_1D7282A80;
        v381 = xmmword_1D7282A80;
        v382 = 0;
        LOBYTE(v389) = 0;
        v324 = swift_allocObject();
        v326 = v324;
        *(v324 + 16) = v370;
        *(v324 + 32) = v389;
        v327 = v344;
        *(v324 + 40) = v345;
        *(v324 + 48) = v327;
        if (v316)
        {
          v369 = &v344;
          *&v389 = v316;
          *(&v389 + 1) = v317;
          *&v390 = v318;
          *(&v390 + 1) = v319;
          *&v391 = v320;
          *(&v391 + 1) = v321;
          MEMORY[0x1EEE9AC00](v324, v325);
          v367 = &v344 - 6;
          *(&v344 - 4) = sub_1D5B4AA6C;
          *(&v344 - 3) = 0;
          v342 = sub_1D6708ADC;
          v343 = v326;
          v380 = 0;
          v328 = swift_allocObject();
          *(v328 + 16) = v370;
          *(v328 + 32) = v380;
          *(v328 + 40) = v345;
          *(v328 + 48) = v344;
          swift_retain_n();
          sub_1D5EB1D80(v316, v317, v318, v319, v320);
          v329 = sub_1D72647CC();
          v380 = 0;
          v330 = swift_allocObject();
          *(v330 + 16) = v329;
          *(v330 + 24) = v370;
          *(v330 + 40) = v380;
          v331 = __swift_project_boxed_opaque_existential_1(v371, v371[3]);
          MEMORY[0x1EEE9AC00](v331, v332);
          MEMORY[0x1EEE9AC00](v333, v334);
          v335 = v367;
          *(&v344 - 4) = sub_1D615B4A4;
          *(&v344 - 3) = v335;
          v342 = sub_1D6708ADC;
          v343 = v328;
          v336 = v415;
          v338 = sub_1D5D2F7A4(v346, sub_1D615B49C, v337, sub_1D615B4A4, (&v344 - 6));
          v415 = v336;
          if (v336)
          {
          }

          else
          {
            v339 = v338;

            if (v339)
            {
              sub_1D6659A24();
              v340 = v415;
              sub_1D72647EC();
              v415 = v340;
            }
          }

          v341 = v391;

          sub_1D5CBF568(v341);

          sub_1D5D2CFE8(v346, type metadata accessor for FormatVersionRequirement);
          goto LABEL_62;
        }

        v301 = v346;
LABEL_121:
        sub_1D5D2CFE8(v301, type metadata accessor for FormatVersionRequirement);

        goto LABEL_62;
      }

      sub_1D5D2CFE8(v349, type metadata accessor for FormatVersionRequirement);

LABEL_62:
      v92 = v368;
      return sub_1D5D2CFE8(v92, sub_1D66A373C);
    }

    LOBYTE(v389) = 0;
    v256 = swift_allocObject();
    v370 = xmmword_1D72BAAC0;
    *(v256 + 16) = xmmword_1D72BAAC0;
    *(v256 + 32) = v389;
    *(v256 + 40) = v225;
    *(v256 + 48) = v344;

    v257 = sub_1D72647CC();
    LOBYTE(v389) = 0;
    v258 = swift_allocObject();
    *(v258 + 16) = v257;
    *(v258 + 24) = v370;
    *(v258 + 40) = v389;
    v200 = v253;
    v259 = __swift_project_boxed_opaque_existential_1(v371, v371[3]);
    MEMORY[0x1EEE9AC00](v259, v260);
    MEMORY[0x1EEE9AC00](v261, v262);
    *(&v344 - 4) = sub_1D5B4AA6C;
    *(&v344 - 3) = 0;
    v342 = sub_1D6708ADC;
    v343 = v256;
    v263 = v415;
    v265 = sub_1D5D2F7A4(v253, sub_1D615B49C, v264, sub_1D615B4A4, (&v344 - 6));
    if (!v263)
    {
      v415 = 0;
      v266 = v265;

      if (v266)
      {
        v389 = v370;
        LOBYTE(v390) = 0;
        v385 = v252;
        sub_1D5DF6A60();
        v267 = v415;
        sub_1D72647EC();
        if (v267)
        {
          sub_1D5EB15C4(v385);
          sub_1D5D2CFE8(v350, type metadata accessor for FormatVersionRequirement);
          v92 = v368;
          return sub_1D5D2CFE8(v92, sub_1D66A373C);
        }

        sub_1D5EB15C4(v385);
        sub_1D5D2CFE8(v350, type metadata accessor for FormatVersionRequirement);
        v415 = 0;
        v74 = v368;
      }

      else
      {
        sub_1D5EB15C4(v252);
        sub_1D5D2CFE8(v350, type metadata accessor for FormatVersionRequirement);
      }

      v207 = v366;
      v201 = v363;
      v225 = v345;
      goto LABEL_90;
    }

    sub_1D5EB15C4(v252);
LABEL_50:
    v218 = v200;
LABEL_51:
    sub_1D5D2CFE8(v218, type metadata accessor for FormatVersionRequirement);
    goto LABEL_52;
  }

  return sub_1D5D2CFE8(v119, sub_1D66A373C);
}

unint64_t sub_1D6525B44(char a1)
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
      result = 0x656C797473;
      break;
    case 5:
      result = 0x746E65746E6F63;
      break;
    case 6:
      result = 0x6D6954616964656DLL;
      break;
    case 7:
      result = 0x65646F4D6E7572;
      break;
    case 8:
      result = 0x7865646E497ALL;
      break;
    case 9:
      result = 0x696C696269736976;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x726F7463656C6573;
      break;
    case 13:
      result = 2019912806;
      break;
    case 14:
      result = 1885433183;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D6525CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66A3AD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6525D10(uint64_t a1)
{
  v2 = sub_1D5E1AF40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6525D4C(uint64_t a1)
{
  v2 = sub_1D5E1AF40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatMicaNodeArchive.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v24 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v23 - v9;
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
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v14 = v24;
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
          *(v21 + 16) = &unk_1F5116098;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66A3860();
    v25 = 0uLL;
    sub_1D726431C();
    v25 = xmmword_1D7279980;
    sub_1D5CA2FA0();
    sub_1D726431C();
    (*(v11 + 8))(v10, v6);
    *v14 = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatMicaNodeArchive.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatMicaNodeArchive, &type metadata for FormatCodingKeys, v15, v12, &type metadata for FormatMicaNodeArchive, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenB, v13, v10, v14, &off_1F51F6AD8);
  if (qword_1EDF31EF8 != -1)
  {
    swift_once();
  }

  v16 = sub_1D725BD1C();
  v17 = __swift_project_value_buffer(v16, qword_1EDFFCDC8);
  (*(*(v16 - 8) + 16))(v6, v17, v16);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D639F3B4(v11, v6);
  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v10, sub_1D5D30DC4);
}

uint64_t FormatMicaNodeContent.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v36 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v32 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
    v11 = a1;
LABEL_10:
    sub_1D61E4FBC(v11, v3);
    swift_willThrow();
  }

  else
  {
    v12 = v7;
    v13 = v36;
    v14 = a1[3];
    v33 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v14);
    v15 = sub_1D7264AFC();
    LOBYTE(v14) = Dictionary<>.errorOnUnknownKeys.getter(v15);

    v16 = v10;
    if (v14)
    {
      v17 = sub_1D726433C();
      v18 = (v17 + 40);
      v19 = *(v17 + 16) + 1;
      while (--v19)
      {
        v20 = v18 + 2;
        v21 = *v18;
        v18 += 2;
        if (v21 >= 4)
        {
          v22 = *(v20 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v23 = v22;
          *(v23 + 8) = v21;
          *(v23 + 16) = &unk_1F51160E8;
          *(v23 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v12 + 8))(v16, v6);
          v11 = v33;
          goto LABEL_10;
        }
      }
    }

    sub_1D66A38B4();
    v35 = 0uLL;
    sub_1D726431C();
    if (v34)
    {
      v25 = v13;
      if (v34 == 1)
      {
        sub_1D5C30060(0, &qword_1EC886E68, sub_1D66A3908, &type metadata for FormatMicaNodeContent, type metadata accessor for FormatUserInterfaceValue);
        v34 = xmmword_1D7279980;
        sub_1D66A39EC();
        sub_1D726431C();
        (*(v12 + 8))(v16, v6);
        v26 = v35;
        v27 = swift_allocObject();
        *(v27 + 16) = v26;
        v28 = v27 | 0x4000000000000000;
      }

      else
      {
        sub_1D5C30060(0, &qword_1EC886E50, sub_1D66A3908, &type metadata for FormatMicaNodeContent, type metadata accessor for FormatSelectorValue);
        v34 = xmmword_1D7279980;
        sub_1D66A395C();
        sub_1D726431C();
        (*(v12 + 8))(v16, v6);
        v30 = v35;
        v31 = swift_allocObject();
        *(v31 + 16) = v30;
        v28 = v31 | 0x8000000000000000;
      }

      v11 = v33;
    }

    else
    {
      v35 = xmmword_1D7279980;
      sub_1D66A3A7C();
      sub_1D726431C();
      v11 = v33;
      v25 = v13;
      (*(v12 + 8))(v16, v6);
      v29 = v34;
      v28 = swift_allocObject();
      *(v28 + 16) = v29;
    }

    *v25 = v28;
  }

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t FormatMicaNodeContent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v40 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v40 - v13;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatMicaNodeContent, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatMicaNodeContent, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenB, v21, v18, v22, &off_1F51F6AD8);
  if (v19 >> 62)
  {
    if (v19 >> 62 == 1)
    {
      v24 = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v25 = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v26 = qword_1EDF31EF8;

      if (v26 != -1)
      {
        swift_once();
      }

      v27 = sub_1D725BD1C();
      v28 = __swift_project_value_buffer(v27, qword_1EDFFCDC8);
      (*(*(v27 - 8) + 16))(v10, v28, v27);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D639F00C(1, v24, v25, v10);

      v29 = v10;
    }

    else
    {
      v34 = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v35 = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v36 = qword_1EDF31ED0;

      if (v36 != -1)
      {
        swift_once();
      }

      v37 = sub_1D725BD1C();
      v38 = __swift_project_value_buffer(v37, qword_1EDFFCD50);
      (*(*(v37 - 8) + 16))(v6, v38, v37);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D639F1E0(2, v34, v35, v6);

      v29 = v6;
    }
  }

  else
  {
    v30 = *(v19 + 16);
    v31 = qword_1EDF31EF8;

    if (v31 != -1)
    {
      swift_once();
    }

    v32 = sub_1D725BD1C();
    v33 = __swift_project_value_buffer(v32, qword_1EDFFCDC8);
    (*(*(v32 - 8) + 16))(v14, v33, v32);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D639EE78(0, v30, v14);

    v29 = v14;
  }

  sub_1D5D2CFE8(v29, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D6526D1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x65746E4972657375;
  v4 = 0xED00006563616672;
  if (v2 != 1)
  {
    v3 = 0x726F7463656C6573;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x65766968637261;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x65746E4972657375;
  v8 = 0xED00006563616672;
  if (*a2 != 1)
  {
    v7 = 0x726F7463656C6573;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x65766968637261;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
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

uint64_t sub_1D6526E38()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6526EE8()
{
  sub_1D72621EC();
}

uint64_t sub_1D6526F84()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6527030@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6664040();
  *a1 = result;
  return result;
}

void sub_1D6527060(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xED00006563616672;
  v5 = 0x65746E4972657375;
  if (v2 != 1)
  {
    v5 = 0x726F7463656C6573;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65766968637261;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatMicaNodeStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  *&v246 = &v228 - v7;
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v232 = &v228 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v233 = &v228 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v234 = &v228 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v235 = &v228 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v236 = &v228 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v237 = &v228 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v245 = (&v228 - v28);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v228 - v31;
  sub_1D66A487C();
  v247 = v33;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v228 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1[3];
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v37);
  sub_1D66A49A4();
  v40 = v39;
  v41 = sub_1D5B58B84(&qword_1EC886EA8, sub_1D66A49A4);
  v274 = v36;
  sub_1D5D2EE70(v4, v40, v42, v37, v4, v40, &type metadata for FormatVersions.AzdenB, v38, v36, v41, &off_1F51F6AD8);
  swift_beginAccess();
  v243 = v2;
  v43 = v2[2];
  v44 = v2[3];
  v45 = qword_1EDF31EF8;

  if (v45 != -1)
  {
    swift_once();
  }

  v46 = sub_1D725BD1C();
  v47 = __swift_project_value_buffer(v46, qword_1EDFFCDC8);
  v48 = *(v46 - 8);
  v49 = *(v48 + 16);
  v50 = v48 + 16;
  v244 = v46;
  v49(v32, v47, v46);
  v51 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v52 = v246;
  sub_1D725892C();
  v53 = sub_1D725895C();
  v54 = (*(*(v53 - 8) + 48))(v52, 1, v53);
  v240 = v51;
  v241 = v49;
  v239 = v50;
  v242 = v47;
  if (v54 != 1)
  {
    sub_1D5D2CFE8(v32, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v52, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
LABEL_7:
    v74 = v245;
    goto LABEL_8;
  }

  v231 = v43;
  v55 = v32;
  sub_1D5D35558(v52, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v56 = v247;
  v57 = v274;
  v58 = &v274[*(v247 + 11)];
  v60 = *v58;
  v59 = *(v58 + 1);
  LOBYTE(v263) = 0;
  v61 = swift_allocObject();
  *(v61 + 16) = 0;
  *(v61 + 24) = 0;
  *(v61 + 32) = v263;
  *(v61 + 40) = v60;
  *(v61 + 48) = v59;
  sub_1D66A4910();
  v63 = v62;
  sub_1D5B58B84(&qword_1EC886EB0, sub_1D66A4910);

  v238 = v63;
  v64 = sub_1D72647CC();
  LOBYTE(v263) = 0;
  v65 = swift_allocObject();
  *(v65 + 24) = 0;
  *(v65 + 32) = 0;
  *(v65 + 16) = v64;
  *(v65 + 40) = v263;
  v66 = __swift_project_boxed_opaque_existential_1((v57 + *(v56 + 9)), *(v57 + *(v56 + 9) + 24));
  *&v246 = &v228;
  MEMORY[0x1EEE9AC00](v66, v67);
  MEMORY[0x1EEE9AC00](v68, v69);
  *(&v228 - 4) = sub_1D5B4AA6C;
  *(&v228 - 3) = 0;
  v226 = sub_1D66A4B24;
  v227 = v61;
  v70 = v248;
  v72 = sub_1D5D2F7A4(v55, sub_1D615B49C, v71, sub_1D615B4A4, (&v228 - 6));
  *&v248 = v70;
  if (v70)
  {
    sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v57, sub_1D66A487C);
  }

  v100 = v72;

  if ((v100 & 1) == 0)
  {
    sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);

    v49 = v241;
    v47 = v242;
    goto LABEL_7;
  }

  v263 = 0uLL;
  LOBYTE(v264) = 0;
  *&v255 = v231;
  *(&v255 + 1) = v44;
  v101 = v274;
  v102 = v248;
  sub_1D72647EC();

  sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);
  v49 = v241;
  v47 = v242;
  v74 = v245;
  if (v102)
  {
    goto LABEL_54;
  }

  *&v248 = 0;
LABEL_8:
  v75 = v243[4];
  v76 = v243[5];
  v49(v74, v47, v244);
  swift_storeEnumTagMultiPayload();
  *&v255 = v75;
  *(&v255 + 1) = v76;
  v246 = xmmword_1D728CF30;
  v263 = xmmword_1D728CF30;
  LOBYTE(v264) = 0;
  v77 = v274;
  v78 = &v274[*(v247 + 11)];
  v79 = *v78;
  v80 = *(v78 + 1);
  LOBYTE(v249) = 0;
  v81 = swift_allocObject();
  v238 = &v228;
  *(v81 + 16) = v246;
  *(v81 + 32) = v249;
  *(v81 + 40) = v79;
  *(v81 + 48) = v80;
  MEMORY[0x1EEE9AC00](v81, v82);
  *(&v228 - 4) = sub_1D5B4AA6C;
  *(&v228 - 3) = 0;
  v226 = sub_1D6708AE0;
  v227 = v83;
  LOBYTE(v249) = 0;
  v84 = v74;
  v85 = swift_allocObject();
  *(v85 + 16) = v246;
  *(v85 + 32) = v249;
  v228 = v79;
  *(v85 + 40) = v79;
  *(v85 + 48) = v80;
  sub_1D66A4910();
  v87 = v86;
  v88 = sub_1D5B58B84(&qword_1EC886EB0, sub_1D66A4910);
  v229 = v80;
  swift_retain_n();
  v230 = v87;
  v231 = v88;
  v89 = sub_1D72647CC();
  LOBYTE(v249) = 0;
  v90 = swift_allocObject();
  *(v90 + 16) = v89;
  *(v90 + 24) = v246;
  *(v90 + 40) = v249;
  v91 = &v77[*(v247 + 9)];
  v92 = __swift_project_boxed_opaque_existential_1(v91, *(v91 + 3));
  MEMORY[0x1EEE9AC00](v92, v93);
  MEMORY[0x1EEE9AC00](v94, v95);
  *(&v228 - 4) = sub_1D615B4A4;
  *(&v228 - 3) = (&v228 - 6);
  v226 = sub_1D6708AE0;
  v227 = v85;
  v96 = v248;
  sub_1D5D2BC70(v84, sub_1D615B49C, v97, sub_1D615B4A4, (&v228 - 6));
  if (!v96)
  {
    v247 = v91;

    sub_1D72647EC();
    sub_1D5D2CFE8(v245, type metadata accessor for FormatVersionRequirement);

    v103 = v243;
    swift_beginAccess();
    v104 = v103[6];
    v105 = v237;
    v106 = v241;
    v241(v237, v242, v244);
    swift_storeEnumTagMultiPayload();
    if (*(v104 + 16))
    {
      LOBYTE(v263) = 0;
      v107 = swift_allocObject();
      v248 = xmmword_1D7297410;
      *(v107 + 16) = xmmword_1D7297410;
      *(v107 + 32) = v263;
      *(v107 + 40) = v228;
      *(v107 + 48) = v229;

      v108 = sub_1D72647CC();
      LOBYTE(v263) = 0;
      v109 = swift_allocObject();
      *(v109 + 16) = v108;
      *(v109 + 24) = v248;
      *(v109 + 40) = v263;
      v110 = __swift_project_boxed_opaque_existential_1(v247, *(v247 + 3));
      MEMORY[0x1EEE9AC00](v110, v111);
      MEMORY[0x1EEE9AC00](v112, v113);
      *(&v228 - 4) = sub_1D5B4AA6C;
      *(&v228 - 3) = 0;
      v226 = sub_1D6708AE0;
      v227 = v107;
      v115 = sub_1D5D2F7A4(v105, sub_1D615B49C, v114, sub_1D615B4A4, (&v228 - 6));
      v116 = v115;

      if ((v116 & 1) == 0)
      {
        *&v248 = 0;
        sub_1D5D2CFE8(v237, type metadata accessor for FormatVersionRequirement);

        v103 = v243;
        v106 = v241;
LABEL_24:
        v117 = v103[7];
        v118 = v236;
        v106(v236, v242, v244);
        swift_storeEnumTagMultiPayload();
        v246 = xmmword_1D72BAA60;
        v263 = xmmword_1D72BAA60;
        LOBYTE(v264) = 0;
        LOBYTE(v255) = 0;
        v119 = swift_allocObject();
        v121 = v119;
        *(v119 + 16) = v246;
        *(v119 + 32) = v255;
        v123 = v228;
        v122 = v229;
        *(v119 + 40) = v228;
        *(v119 + 48) = v122;
        if (v117)
        {
          v245 = &v228;
          *&v255 = v117;
          MEMORY[0x1EEE9AC00](v119, v120);
          v238 = &v228 - 6;
          *(&v228 - 4) = sub_1D5B4AA6C;
          *(&v228 - 3) = 0;
          v226 = sub_1D6708AE0;
          v227 = v121;
          LOBYTE(v249) = 0;
          v124 = swift_allocObject();
          *(v124 + 16) = v246;
          *(v124 + 32) = v249;
          *(v124 + 40) = v123;
          *(v124 + 48) = v229;
          swift_retain_n();

          v125 = sub_1D72647CC();
          LOBYTE(v249) = 0;
          v126 = swift_allocObject();
          *(v126 + 16) = v125;
          *(v126 + 24) = v246;
          *(v126 + 40) = v249;
          v127 = __swift_project_boxed_opaque_existential_1(v247, *(v247 + 3));
          MEMORY[0x1EEE9AC00](v127, v128);
          MEMORY[0x1EEE9AC00](v129, v130);
          v131 = v238;
          *(&v228 - 4) = sub_1D615B4A4;
          *(&v228 - 3) = v131;
          v226 = sub_1D6708AE0;
          v227 = v124;
          v132 = v248;
          v134 = sub_1D5D2F7A4(v118, sub_1D615B49C, v133, sub_1D615B4A4, (&v228 - 6));
          if (v132)
          {

            v98 = v274;

            sub_1D5D2CFE8(v118, type metadata accessor for FormatVersionRequirement);
            goto LABEL_11;
          }

          v135 = v134;

          if (v135)
          {
            sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
            sub_1D66582DC();
            sub_1D72647EC();
            v106 = v241;
            v136 = v235;
            *&v248 = 0;

            sub_1D5D2CFE8(v118, type metadata accessor for FormatVersionRequirement);
LABEL_32:
            v137 = v243;
            v138 = v243[8];
            v106(v136, v242, v244);
            swift_storeEnumTagMultiPayload();
            v246 = xmmword_1D72BAA70;
            v263 = xmmword_1D72BAA70;
            LOBYTE(v264) = 0;
            LOBYTE(v255) = 0;
            v139 = swift_allocObject();
            v141 = v139;
            *(v139 + 16) = v246;
            *(v139 + 32) = v255;
            v143 = v228;
            v142 = v229;
            *(v139 + 40) = v228;
            *(v139 + 48) = v142;
            if (v138)
            {
              v245 = &v228;
              *&v255 = v138;
              MEMORY[0x1EEE9AC00](v139, v140);
              *(&v228 - 4) = sub_1D5B4AA6C;
              *(&v228 - 3) = 0;
              v226 = sub_1D6708AE0;
              v227 = v141;
              LOBYTE(v249) = 0;
              v144 = v136;
              v145 = swift_allocObject();
              *(v145 + 16) = v246;
              *(v145 + 32) = v249;
              *(v145 + 40) = v143;
              *(v145 + 48) = v229;
              swift_retain_n();

              v146 = sub_1D72647CC();
              LOBYTE(v249) = 0;
              v147 = swift_allocObject();
              *(v147 + 16) = v146;
              *(v147 + 24) = v246;
              *(v147 + 40) = v249;
              v148 = __swift_project_boxed_opaque_existential_1(v247, *(v247 + 3));
              MEMORY[0x1EEE9AC00](v148, v149);
              MEMORY[0x1EEE9AC00](v150, v151);
              *(&v228 - 4) = sub_1D615B4A4;
              *(&v228 - 3) = (&v228 - 6);
              v226 = sub_1D6708AE0;
              v227 = v145;
              v152 = v248;
              v154 = sub_1D5D2F7A4(v144, sub_1D615B49C, v153, sub_1D615B4A4, (&v228 - 6));
              if (v152)
              {

                v101 = v274;
                v155 = v235;
LABEL_53:
                sub_1D5D2CFE8(v155, type metadata accessor for FormatVersionRequirement);
                goto LABEL_54;
              }

              v157 = v154;

              if (v157)
              {
                sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
                sub_1D66612AC();
                sub_1D72647EC();
                v106 = v241;
                v158 = v235;
                v137 = v243;
                *&v248 = 0;

                sub_1D5D2CFE8(v158, type metadata accessor for FormatVersionRequirement);
              }

              else
              {
                *&v248 = 0;

                sub_1D5D2CFE8(v235, type metadata accessor for FormatVersionRequirement);
                v106 = v241;
                v137 = v243;
              }

              v156 = v229;
            }

            else
            {
              v156 = v229;

              sub_1D5D2CFE8(v136, type metadata accessor for FormatVersionRequirement);
            }

            v159 = v137[10];
            v245 = v137[9];
            v160 = *(v137 + 88);
            v161 = v234;
            v106(v234, v242, v244);
            swift_storeEnumTagMultiPayload();
            v246 = xmmword_1D72BAA80;
            v272 = xmmword_1D72BAA80;
            v273 = 0;
            LOBYTE(v263) = 0;
            v162 = swift_allocObject();
            v164 = v162;
            *(v162 + 16) = v246;
            *(v162 + 32) = v263;
            v165 = v228;
            *(v162 + 40) = v228;
            *(v162 + 48) = v156;
            if (v160 <= 0xFD)
            {
              v238 = &v228;
              v185 = v245;
              v269 = v245;
              v270 = v159;
              v271 = v160;
              MEMORY[0x1EEE9AC00](v162, v163);
              *(&v228 - 4) = sub_1D5B4AA6C;
              *(&v228 - 3) = 0;
              v226 = sub_1D6708AE0;
              v227 = v164;
              LOBYTE(v263) = 0;
              v187 = v186;
              v188 = swift_allocObject();
              *(v188 + 16) = v246;
              *(v188 + 32) = v263;
              *(v188 + 40) = v165;
              *(v188 + 48) = v187;
              swift_retain_n();
              sub_1D5ED34B0(v185, v159, v160);
              v189 = sub_1D72647CC();
              LOBYTE(v263) = 0;
              v190 = swift_allocObject();
              *(v190 + 16) = v189;
              *(v190 + 24) = v246;
              *(v190 + 40) = v263;
              v191 = __swift_project_boxed_opaque_existential_1(v247, *(v247 + 3));
              MEMORY[0x1EEE9AC00](v191, v192);
              MEMORY[0x1EEE9AC00](v193, v194);
              *(&v228 - 4) = sub_1D615B4A4;
              *(&v228 - 3) = (&v228 - 6);
              v226 = sub_1D6708AE0;
              v227 = v188;
              v195 = v248;
              v197 = sub_1D5D2F7A4(v234, sub_1D615B49C, v196, sub_1D615B4A4, (&v228 - 6));
              if (v195)
              {

                v198 = v274;
                v199 = v234;
                sub_1D5ED34A0(v269, v270, v271);
                sub_1D5D2CFE8(v199, type metadata accessor for FormatVersionRequirement);
                v99 = v198;
                return sub_1D5D2CFE8(v99, sub_1D66A487C);
              }

              v222 = v197;

              if (v222)
              {
                sub_1D6661258();
                sub_1D72647EC();
                v106 = v241;
                v223 = v234;
                *&v248 = 0;
                v166 = v187;

                sub_1D5ED34A0(v269, v270, v271);
                sub_1D5D2CFE8(v223, type metadata accessor for FormatVersionRequirement);
              }

              else
              {
                *&v248 = 0;

                sub_1D5ED34A0(v269, v270, v271);
                sub_1D5D2CFE8(v234, type metadata accessor for FormatVersionRequirement);
                v106 = v241;
                v166 = v187;
              }
            }

            else
            {
              v166 = v156;

              sub_1D5D2CFE8(v161, type metadata accessor for FormatVersionRequirement);
            }

            v167 = *(v243 + 9);
            v265 = *(v243 + 8);
            v266 = v167;
            v267 = *(v243 + 10);
            v268 = *(v243 + 176);
            v168 = *(v243 + 7);
            v263 = *(v243 + 6);
            v264 = v168;
            v169 = v233;
            v106(v233, v242, v244);
            swift_storeEnumTagMultiPayload();
            v246 = xmmword_1D72BAA90;
            v261 = xmmword_1D72BAA90;
            v262 = 0;
            LOBYTE(v255) = 0;
            v170 = swift_allocObject();
            v172 = v170;
            *(v170 + 16) = v246;
            *(v170 + 32) = v255;
            v173 = v228;
            *(v170 + 40) = v228;
            *(v170 + 48) = v166;
            if (v268 == 254)
            {

              v174 = v248;
            }

            else
            {
              v245 = &v228;
              v257 = v265;
              v258 = v266;
              v259 = v267;
              v260 = v268;
              v255 = v263;
              v256 = v264;
              MEMORY[0x1EEE9AC00](v170, v171);
              *(&v228 - 4) = sub_1D5B4AA6C;
              *(&v228 - 3) = 0;
              v226 = sub_1D6708AE0;
              v227 = v172;
              LOBYTE(v249) = 0;
              v200 = swift_allocObject();
              *(v200 + 16) = v246;
              *(v200 + 32) = v249;
              *(v200 + 40) = v173;
              *(v200 + 48) = v166;
              swift_retain_n();
              sub_1D5D355B8(&v263, &v249, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
              v201 = v247;
              v202 = v169;
              v203 = sub_1D72647CC();
              LOBYTE(v249) = 0;
              v204 = swift_allocObject();
              *(v204 + 16) = v203;
              *(v204 + 24) = v246;
              *(v204 + 40) = v249;
              v205 = __swift_project_boxed_opaque_existential_1(v201, *(v201 + 3));
              MEMORY[0x1EEE9AC00](v205, v206);
              MEMORY[0x1EEE9AC00](v207, v208);
              *(&v228 - 4) = sub_1D615B4A4;
              *(&v228 - 3) = (&v228 - 6);
              v226 = sub_1D6708AE0;
              v227 = v200;
              v209 = v248;
              v211 = sub_1D5D2F7A4(v202, sub_1D615B49C, v210, sub_1D615B4A4, (&v228 - 6));
              v174 = v209;
              if (v209)
              {

                v251 = v257;
                v252 = v258;
                v253 = v259;
                v254 = v260;
                v249 = v255;
                v250 = v256;
                sub_1D601144C(&v249);
                v101 = v274;
                v155 = v233;
                goto LABEL_53;
              }

              v224 = v211;

              if (v224)
              {
                sub_1D6661204();
                sub_1D72647EC();
                v106 = v241;

                v251 = v257;
                v252 = v258;
                v253 = v259;
                v254 = v260;
                v249 = v255;
                v250 = v256;
                sub_1D601144C(&v249);
                v169 = v233;
              }

              else
              {

                v251 = v257;
                v252 = v258;
                v253 = v259;
                v254 = v260;
                v249 = v255;
                v250 = v256;
                sub_1D601144C(&v249);
                v169 = v233;
                v106 = v241;
              }
            }

            sub_1D5D2CFE8(v169, type metadata accessor for FormatVersionRequirement);
            v175 = *(v243 + 177);
            if (qword_1EDF31F08 != -1)
            {
              swift_once();
            }

            v176 = v244;
            v177 = __swift_project_value_buffer(v244, qword_1EDFFCDE0);
            v178 = v232;
            v106(v232, v177, v176);
            swift_storeEnumTagMultiPayload();
            v246 = xmmword_1D72BAAA0;
            v255 = xmmword_1D72BAAA0;
            LOBYTE(v256) = 0;
            LOBYTE(v249) = 0;
            v179 = swift_allocObject();
            v181 = v179;
            *(v179 + 16) = v246;
            *(v179 + 32) = v249;
            v182 = v228;
            v183 = v229;
            *(v179 + 40) = v228;
            *(v179 + 48) = v183;
            if (v175 == 2)
            {

              v184 = v178;
              v101 = v274;
            }

            else
            {
              v245 = &v228;
              LOBYTE(v249) = v175 & 1;
              MEMORY[0x1EEE9AC00](v179, v180);
              *&v248 = v174;
              *(&v228 - 4) = sub_1D5B4AA6C;
              *(&v228 - 3) = 0;
              v226 = sub_1D6708AE0;
              v227 = v181;
              LOBYTE(v261) = 0;
              v212 = swift_allocObject();
              *(v212 + 16) = v246;
              *(v212 + 32) = v261;
              *(v212 + 40) = v182;
              *(v212 + 48) = v183;
              swift_retain_n();
              v213 = sub_1D72647CC();
              LOBYTE(v261) = 0;
              v214 = swift_allocObject();
              *(v214 + 16) = v213;
              *(v214 + 24) = v246;
              *(v214 + 40) = v261;
              v215 = __swift_project_boxed_opaque_existential_1(v247, *(v247 + 3));
              MEMORY[0x1EEE9AC00](v215, v216);
              MEMORY[0x1EEE9AC00](v217, v218);
              *(&v228 - 4) = sub_1D615B4A4;
              *(&v228 - 3) = (&v228 - 6);
              v226 = sub_1D6708AE0;
              v227 = v212;
              v219 = v248;
              v221 = sub_1D5D2F7A4(v178, sub_1D615B49C, v220, sub_1D615B4A4, (&v228 - 6));
              if (v219)
              {
                sub_1D5D2CFE8(v178, type metadata accessor for FormatVersionRequirement);

                v101 = v274;
                goto LABEL_54;
              }

              v225 = v221;

              if (v225)
              {
                v101 = v274;
                sub_1D72647EC();
              }

              else
              {
                v101 = v274;
              }

              v184 = v232;
            }

            sub_1D5D2CFE8(v184, type metadata accessor for FormatVersionRequirement);

LABEL_54:
            v99 = v101;
            return sub_1D5D2CFE8(v99, sub_1D66A487C);
          }

          *&v248 = 0;

          sub_1D5D2CFE8(v118, type metadata accessor for FormatVersionRequirement);
          v106 = v241;
        }

        else
        {

          sub_1D5D2CFE8(v118, type metadata accessor for FormatVersionRequirement);
        }

        v136 = v235;
        goto LABEL_32;
      }

      v263 = v248;
      LOBYTE(v264) = 0;
      *&v255 = v104;
      sub_1D5C34D84(0, &qword_1EC886EB8, &type metadata for FormatMicaNodeStyle.Selector, MEMORY[0x1E69E62F8]);
      sub_1D66A4BB4();
      sub_1D72647EC();
      v103 = v243;
      v106 = v241;
      v105 = v237;
      *&v248 = 0;
    }

    else
    {
      *&v248 = 0;
    }

    sub_1D5D2CFE8(v105, type metadata accessor for FormatVersionRequirement);
    goto LABEL_24;
  }

  sub_1D5D2CFE8(v84, type metadata accessor for FormatVersionRequirement);

  v98 = v274;
LABEL_11:
  v99 = v98;
  return sub_1D5D2CFE8(v99, sub_1D66A487C);
}