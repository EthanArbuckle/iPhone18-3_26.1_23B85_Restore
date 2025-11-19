uint64_t sub_1D64D0AEC(uint64_t a1)
{
  v2 = sub_1D5C9ED6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64D0B28(uint64_t a1)
{
  v2 = sub_1D5C9ED6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatHOverlayNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v240 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v245 = &v240 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v246 = &v240 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v247 = &v240 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v248 = &v240 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v249 = &v240 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v251 = &v240 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v250 = &v240 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v252 = &v240 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v261 = &v240 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v240 - v38;
  sub_1D6694E04();
  v265 = v40;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v240 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1[3];
  v45 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v44);
  sub_1D6694F2C();
  v47 = v46;
  v48 = sub_1D5B58B84(&qword_1EDF255A8, sub_1D6694F2C);
  v262 = v43;
  sub_1D5D2EE70(v4, v47, v49, v44, v4, v47, &type metadata for FormatVersions.JazzkonC, v45, v43, v48, &off_1F51F6C78);
  swift_beginAccess();
  v50 = v2[2];
  v51 = v2[3];
  v52 = qword_1EDF31EB0;

  if (v52 != -1)
  {
    swift_once();
  }

  v53 = sub_1D725BD1C();
  v54 = __swift_project_value_buffer(v53, qword_1EDFFCD30);
  v55 = *(v53 - 8);
  v56 = *(v55 + 16);
  v57 = (v55 + 16);
  v56(v39, v54, v53);
  v260 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v58 = sub_1D725895C();
  v59 = (*(*(v58 - 8) + 48))(v8, 1, v58);
  v256 = v2;
  v258 = v53;
  v257 = v56;
  v259 = v57;
  v255 = v54;
  if (v59 == 1)
  {
    v254 = v50;
    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v60 = v265;
    v61 = v262;
    v62 = &v262[*(v265 + 11)];
    v64 = *v62;
    v63 = *(v62 + 1);
    LOBYTE(v266) = 0;
    v65 = swift_allocObject();
    *(v65 + 16) = 0;
    *(v65 + 24) = 0;
    *(v65 + 32) = v266;
    *(v65 + 40) = v64;
    *(v65 + 48) = v63;
    sub_1D6694E98();
    v67 = v66;
    sub_1D5B58B84(&qword_1EDF03608, sub_1D6694E98);

    *&v264 = v67;
    v68 = sub_1D72647CC();
    LOBYTE(v266) = 0;
    v69 = swift_allocObject();
    *(v69 + 24) = 0;
    *(v69 + 32) = 0;
    *(v69 + 16) = v68;
    *(v69 + 40) = v266;
    v70 = __swift_project_boxed_opaque_existential_1((v61 + *(v60 + 9)), *(v61 + *(v60 + 9) + 24));
    MEMORY[0x1EEE9AC00](v70, v71);
    MEMORY[0x1EEE9AC00](v72, v73);
    *(&v240 - 4) = sub_1D5B4AA6C;
    *(&v240 - 3) = 0;
    v238 = sub_1D66950AC;
    v239 = v65;
    v74 = v263;
    v76 = sub_1D5D2F7A4(v39, sub_1D615B49C, v75, sub_1D615B4A4, (&v240 - 6));
    if (v74)
    {
      sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);

      v77 = v61;
      return sub_1D5D2CFE8(v77, sub_1D6694E04);
    }

    v103 = v76;

    if (v103)
    {
      v266 = 0uLL;
      LOBYTE(v267) = 0;
      v278 = v254;
      v279 = v51;
      sub_1D72647EC();

      sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);
      v53 = v258;
      v56 = v257;
      v54 = v255;
      v263 = 0;
      v2 = v256;
    }

    else
    {
      v263 = 0;
      sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);

      v2 = v256;
      v53 = v258;
      v56 = v257;
      v54 = v255;
    }
  }

  else
  {
    sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  v78 = v2[4];
  v79 = v2[5];
  v80 = v261;
  v56(v261, v54, v53);
  swift_storeEnumTagMultiPayload();
  v278 = v78;
  v279 = v79;
  v264 = xmmword_1D728CF30;
  v266 = xmmword_1D728CF30;
  LOBYTE(v267) = 0;
  v81 = v262;
  v82 = &v262[*(v265 + 11)];
  v84 = *v82;
  v83 = *(v82 + 1);
  LOBYTE(v277) = 0;
  v85 = swift_allocObject();
  v254 = &v240;
  *(v85 + 16) = v264;
  *(v85 + 32) = v277;
  *(v85 + 40) = v84;
  *(v85 + 48) = v83;
  MEMORY[0x1EEE9AC00](v85, v86);
  v253 = &v240 - 6;
  *(&v240 - 4) = sub_1D5B4AA6C;
  *(&v240 - 3) = 0;
  v238 = sub_1D6708A74;
  v239 = v87;
  LOBYTE(v277) = 0;
  v88 = swift_allocObject();
  *(v88 + 16) = v264;
  *(v88 + 32) = v277;
  v242 = v84;
  *(v88 + 40) = v84;
  *(v88 + 48) = v83;
  sub_1D6694E98();
  v90 = v89;
  v91 = sub_1D5B58B84(&qword_1EDF03608, sub_1D6694E98);
  v241 = v83;
  swift_retain_n();
  v244 = v90;
  v243 = v91;
  v92 = sub_1D72647CC();
  LOBYTE(v277) = 0;
  v93 = swift_allocObject();
  *(v93 + 16) = v92;
  *(v93 + 24) = v264;
  *(v93 + 40) = v277;
  v94 = (v81 + *(v265 + 9));
  v95 = __swift_project_boxed_opaque_existential_1(v94, v94[3]);
  MEMORY[0x1EEE9AC00](v95, v96);
  MEMORY[0x1EEE9AC00](v97, v98);
  v99 = v253;
  *(&v240 - 4) = sub_1D615B4A4;
  *(&v240 - 3) = v99;
  v238 = sub_1D6708A74;
  v239 = v88;
  v100 = v263;
  sub_1D5D2BC70(v80, sub_1D615B49C, v101, sub_1D615B4A4, (&v240 - 6));
  if (v100)
  {
    sub_1D5D2CFE8(v80, type metadata accessor for FormatVersionRequirement);

    v77 = v81;
    return sub_1D5D2CFE8(v77, sub_1D6694E04);
  }

  v265 = v94;

  sub_1D72647EC();
  sub_1D5D2CFE8(v261, type metadata accessor for FormatVersionRequirement);

  v104 = v256;
  swift_beginAccess();
  v105 = v104[6];
  v106 = qword_1EDF31ED0;

  if (v106 != -1)
  {
    swift_once();
  }

  v107 = v258;
  v108 = __swift_project_value_buffer(v258, qword_1EDFFCD50);
  v109 = v252;
  v110 = v257;
  v257(v252, v108, v107);
  swift_storeEnumTagMultiPayload();
  if (*(v105 + 16))
  {
    v263 = v105;
    LOBYTE(v266) = 0;
    v111 = swift_allocObject();
    v264 = xmmword_1D7297410;
    *(v111 + 16) = xmmword_1D7297410;
    *(v111 + 32) = v266;
    *(v111 + 40) = v242;
    *(v111 + 48) = v241;

    v112 = sub_1D72647CC();
    LOBYTE(v266) = 0;
    v113 = swift_allocObject();
    *(v113 + 16) = v112;
    *(v113 + 24) = v264;
    *(v113 + 40) = v266;
    v114 = __swift_project_boxed_opaque_existential_1(v265, v265[3]);
    MEMORY[0x1EEE9AC00](v114, v115);
    MEMORY[0x1EEE9AC00](v116, v117);
    *(&v240 - 4) = sub_1D5B4AA6C;
    *(&v240 - 3) = 0;
    v238 = sub_1D6708A74;
    v239 = v111;
    v119 = sub_1D5D2F7A4(v109, sub_1D615B49C, v118, sub_1D615B4A4, (&v240 - 6));
    v120 = v119;

    if (v120)
    {
      v266 = v264;
      LOBYTE(v267) = 0;
      v277 = v263;
      sub_1D5C34D84(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1D668E23C();
      sub_1D72647EC();
      v107 = v258;
      v110 = v257;
      v121 = v252;

      sub_1D5D2CFE8(v121, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v252, type metadata accessor for FormatVersionRequirement);

      v107 = v258;
      v110 = v257;
    }
  }

  else
  {
    sub_1D5D2CFE8(v109, type metadata accessor for FormatVersionRequirement);
  }

  v122 = v250;
  v123 = v255;
  v110(v250, v255, v107);
  swift_storeEnumTagMultiPayload();
  sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);
  v110(v122, v123, v107);
  swift_storeEnumTagMultiPayload();
  sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);
  v124 = v256;
  swift_beginAccess();
  v125 = v124[11];
  v110(v251, v123, v107);
  swift_storeEnumTagMultiPayload();
  if (((v125 >> 59) & 0x1E | (v125 >> 2) & 1) == 0x16 && v125 == 0xB000000000000000)
  {
    sub_1D5D2CFE8(v251, type metadata accessor for FormatVersionRequirement);
    v126 = v249;
    v127 = v110;
    v128 = v258;
    v129 = v256;
  }

  else
  {
    LOBYTE(v266) = 0;
    v141 = swift_allocObject();
    v264 = xmmword_1D72BAA80;
    *(v141 + 16) = xmmword_1D72BAA80;
    *(v141 + 32) = v266;
    *(v141 + 40) = v242;
    *(v141 + 48) = v241;

    sub_1D5C82CD8(v125);
    v263 = v125;
    v142 = sub_1D72647CC();
    LOBYTE(v266) = 0;
    v143 = swift_allocObject();
    *(v143 + 16) = v142;
    *(v143 + 24) = v264;
    *(v143 + 40) = v266;
    v144 = __swift_project_boxed_opaque_existential_1(v265, v265[3]);
    MEMORY[0x1EEE9AC00](v144, v145);
    MEMORY[0x1EEE9AC00](v146, v147);
    *(&v240 - 4) = sub_1D5B4AA6C;
    *(&v240 - 3) = 0;
    v238 = sub_1D6708A74;
    v239 = v141;
    v149 = sub_1D5D2F7A4(v251, sub_1D615B49C, v148, sub_1D615B4A4, (&v240 - 6));
    v150 = v149;
    v151 = v263;

    if (v150)
    {
      v266 = v264;
      LOBYTE(v267) = 0;
      v276 = v151;
      sub_1D5CA1E90();
      sub_1D72647EC();
      v128 = v258;
      v152 = v257;
      v153 = v251;
      sub_1D5C92A8C(v276);
      sub_1D5D2CFE8(v153, type metadata accessor for FormatVersionRequirement);
      v129 = v256;
      v126 = v249;
      v127 = v152;
    }

    else
    {
      sub_1D5C92A8C(v151);
      sub_1D5D2CFE8(v251, type metadata accessor for FormatVersionRequirement);
      v129 = v256;
      v128 = v258;
      v127 = v257;
      v126 = v249;
    }
  }

  swift_beginAccess();
  v130 = v129[12];
  v127(v126, v255, v128);
  swift_storeEnumTagMultiPayload();
  if (*(v130 + 16))
  {
    LOBYTE(v266) = 0;
    v131 = swift_allocObject();
    v264 = xmmword_1D72BAA90;
    *(v131 + 16) = xmmword_1D72BAA90;
    *(v131 + 32) = v266;
    *(v131 + 40) = v242;
    *(v131 + 48) = v241;

    v132 = v126;
    v133 = sub_1D72647CC();
    LOBYTE(v266) = 0;
    v134 = swift_allocObject();
    v263 = v130;
    *(v134 + 16) = v133;
    *(v134 + 24) = v264;
    *(v134 + 40) = v266;
    v135 = __swift_project_boxed_opaque_existential_1(v265, v265[3]);
    MEMORY[0x1EEE9AC00](v135, v136);
    MEMORY[0x1EEE9AC00](v137, v138);
    *(&v240 - 4) = sub_1D5B4AA6C;
    *(&v240 - 3) = 0;
    v238 = sub_1D6708A74;
    v239 = v131;
    v140 = sub_1D5D2F7A4(v132, sub_1D615B49C, v139, sub_1D615B4A4, (&v240 - 6));
    v154 = v263;
    v155 = v140;

    if (v155)
    {
      v266 = v264;
      LOBYTE(v267) = 0;
      v275 = v154;
      sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
      sub_1D6659C88();
      sub_1D72647EC();
      v128 = v258;
      v127 = v257;

      sub_1D5D2CFE8(v249, type metadata accessor for FormatVersionRequirement);
      v129 = v256;
    }

    else
    {
      sub_1D5D2CFE8(v249, type metadata accessor for FormatVersionRequirement);

      v129 = v256;
      v128 = v258;
      v127 = v257;
    }
  }

  else
  {
    sub_1D5D2CFE8(v126, type metadata accessor for FormatVersionRequirement);
  }

  swift_beginAccess();
  v156 = v129[13];
  v157 = v248;
  v127(v248, v255, v128);
  v158 = v156;
  swift_storeEnumTagMultiPayload();
  LOBYTE(v266) = 0;
  v159 = swift_allocObject();
  v264 = xmmword_1D72BAAA0;
  *(v159 + 16) = xmmword_1D72BAAA0;
  *(v159 + 32) = v266;
  *(v159 + 40) = v242;
  *(v159 + 48) = v241;

  v160 = sub_1D72647CC();
  LOBYTE(v266) = 0;
  v161 = swift_allocObject();
  *(v161 + 16) = v160;
  *(v161 + 24) = v264;
  *(v161 + 40) = v266;
  v162 = __swift_project_boxed_opaque_existential_1(v265, v265[3]);
  MEMORY[0x1EEE9AC00](v162, v163);
  MEMORY[0x1EEE9AC00](v164, v165);
  *(&v240 - 4) = sub_1D5B4AA6C;
  *(&v240 - 3) = 0;
  v238 = sub_1D6708A74;
  v239 = v159;
  LOBYTE(v160) = sub_1D5D2F7A4(v157, sub_1D615B49C, v166, sub_1D615B4A4, (&v240 - 6));

  if (v160)
  {
    v266 = v264;
    LOBYTE(v267) = 0;
    v274 = v158;
    sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
    sub_1D66594A0();
    sub_1D72647EC();
    v167 = v258;
    v168 = v257;
    v169 = v248;

    sub_1D5D2CFE8(v169, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    sub_1D5D2CFE8(v248, type metadata accessor for FormatVersionRequirement);

    v167 = v258;
    v168 = v257;
  }

  v170 = v256;
  swift_beginAccess();
  LODWORD(v264) = *(v170 + 112);
  sub_1D5B58478();
  v172 = *(v171 + 48);
  v173 = v247;
  v174 = &v247[*(v171 + 64)];
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v263 = 0;
  v175 = __swift_project_value_buffer(v167, qword_1EDFFCD98);
  v168(v173, v175, v167);
  if (qword_1EDF31F40 != -1)
  {
    swift_once();
  }

  v176 = __swift_project_value_buffer(v167, qword_1EDFFCE50);
  v168(v173 + v172, v176, v167);
  *v174 = 0;
  *(v174 + 1) = 0;
  swift_storeEnumTagMultiPayload();
  if (!v264)
  {
    goto LABEL_49;
  }

  LOBYTE(v266) = 0;
  v177 = swift_allocObject();
  v264 = xmmword_1D72BAAB0;
  *(v177 + 16) = xmmword_1D72BAAB0;
  *(v177 + 32) = v266;
  *(v177 + 40) = v242;
  *(v177 + 48) = v241;

  v178 = sub_1D72647CC();
  LOBYTE(v266) = 0;
  v179 = swift_allocObject();
  *(v179 + 16) = v178;
  *(v179 + 24) = v264;
  *(v179 + 40) = v266;
  v180 = __swift_project_boxed_opaque_existential_1(v265, v265[3]);
  MEMORY[0x1EEE9AC00](v180, v181);
  MEMORY[0x1EEE9AC00](v182, v183);
  *(&v240 - 4) = sub_1D5B4AA6C;
  *(&v240 - 3) = 0;
  v238 = sub_1D6708A74;
  v239 = v177;
  v184 = v263;
  v186 = sub_1D5D2F7A4(v173, sub_1D615B49C, v185, sub_1D615B4A4, (&v240 - 6));
  v263 = v184;
  if (!v184)
  {
    v187 = v186;

    if ((v187 & 1) == 0)
    {
      v189 = v81;
      sub_1D5D2CFE8(v173, type metadata accessor for FormatVersionRequirement);
      v167 = v258;
LABEL_50:
      v190 = v256;
      swift_beginAccess();
      v192 = v190[15];
      v191 = v190[16];
      v193 = *(v190 + 136);
      v194 = v246;
      v257(v246, v176, v167);
      swift_storeEnumTagMultiPayload();
      if (v193)
      {
        sub_1D5C75A4C(v192, v191, 1);

        sub_1D5D2F2C8(v192, v191, 1);
        sub_1D5D2F2C8(0, 0, 0);
        v195 = v265;
      }

      else
      {
        sub_1D5D2F2C8(v192, v191, 0);
        sub_1D5D2F2C8(0, 0, 0);
        v195 = v265;
        if ((v192 & 1) == 0)
        {
          sub_1D5D2CFE8(v194, type metadata accessor for FormatVersionRequirement);
          goto LABEL_60;
        }
      }

      LODWORD(v261) = v193;
      LOBYTE(v266) = 0;
      v196 = swift_allocObject();
      v264 = xmmword_1D72BAAC0;
      *(v196 + 16) = xmmword_1D72BAAC0;
      *(v196 + 32) = v266;
      *(v196 + 40) = v242;
      *(v196 + 48) = v241;

      v197 = v189;
      v198 = sub_1D72647CC();
      LOBYTE(v266) = 0;
      v199 = swift_allocObject();
      *(v199 + 16) = v198;
      *(v199 + 24) = v264;
      *(v199 + 40) = v266;
      v200 = __swift_project_boxed_opaque_existential_1(v195, v195[3]);
      MEMORY[0x1EEE9AC00](v200, v201);
      MEMORY[0x1EEE9AC00](v202, v203);
      *(&v240 - 4) = sub_1D5B4AA6C;
      *(&v240 - 3) = 0;
      v238 = sub_1D6708A74;
      v239 = v196;
      v204 = v263;
      v206 = sub_1D5D2F7A4(v194, sub_1D615B49C, v205, sub_1D615B4A4, (&v240 - 6));
      if (v204)
      {
        sub_1D5D2CFE8(v194, type metadata accessor for FormatVersionRequirement);

        sub_1D5D2F2C8(v192, v191, v261);
        v77 = v197;
        return sub_1D5D2CFE8(v77, sub_1D6694E04);
      }

      v207 = v206;

      if (v207)
      {
        v266 = v264;
        LOBYTE(v267) = 0;
        *&v271 = v192;
        *(&v271 + 1) = v191;
        v272 = v261;
        sub_1D60ED320();
        sub_1D72647EC();
        v167 = v258;
        v263 = 0;
        sub_1D5D2F2C8(v271, *(&v271 + 1), v272);
        sub_1D5D2CFE8(v246, type metadata accessor for FormatVersionRequirement);
        v190 = v256;
      }

      else
      {
        v263 = 0;
        sub_1D5D2CFE8(v246, type metadata accessor for FormatVersionRequirement);
        sub_1D5D2F2C8(v192, v191, v261);
        v190 = v256;
        v167 = v258;
      }

LABEL_60:
      v208 = v190[18];
      v209 = v190[19];
      v210 = v190[21];
      v261 = v190[20];
      v212 = v190[22];
      v211 = v190[23];
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v213 = __swift_project_value_buffer(v167, qword_1EDFFCE38);
      v214 = v167;
      v215 = v245;
      v257(v245, v213, v214);
      swift_storeEnumTagMultiPayload();
      v264 = xmmword_1D72BAAD0;
      v271 = xmmword_1D72BAAD0;
      v272 = 0;
      LOBYTE(v266) = 0;
      v216 = swift_allocObject();
      v218 = v216;
      *(v216 + 16) = v264;
      *(v216 + 32) = v266;
      v219 = v241;
      *(v216 + 40) = v242;
      *(v216 + 48) = v219;
      if (v208)
      {
        v260 = &v240;
        *&v266 = v208;
        *(&v266 + 1) = v209;
        v267 = v261;
        v268 = v210;
        v269 = v212;
        v270 = v211;
        MEMORY[0x1EEE9AC00](v216, v217);
        v258 = v210;
        v259 = &v240 - 6;
        *(&v240 - 4) = sub_1D5B4AA6C;
        *(&v240 - 3) = 0;
        v238 = sub_1D6708A74;
        v239 = v218;
        v280 = 0;
        v221 = v220;
        v222 = swift_allocObject();
        *(v222 + 16) = v264;
        *(v222 + 32) = v280;
        *(v222 + 40) = v242;
        *(v222 + 48) = v219;
        swift_retain_n();
        sub_1D5EB1D80(v208, v209, v221, v258, v212);
        v223 = sub_1D72647CC();
        v280 = 0;
        v224 = swift_allocObject();
        *(v224 + 16) = v223;
        *(v224 + 24) = v264;
        *(v224 + 40) = v280;
        v225 = __swift_project_boxed_opaque_existential_1(v265, v265[3]);
        MEMORY[0x1EEE9AC00](v225, v226);
        MEMORY[0x1EEE9AC00](v227, v228);
        v229 = v259;
        *(&v240 - 4) = sub_1D615B4A4;
        *(&v240 - 3) = v229;
        v238 = sub_1D6708A74;
        v239 = v222;
        v230 = v245;
        v231 = v263;
        v233 = sub_1D5D2F7A4(v245, sub_1D615B49C, v232, sub_1D615B4A4, (&v240 - 6));
        if (v231)
        {

          v234 = v262;
LABEL_68:
          v236 = v269;

          sub_1D5CBF568(v236);

          sub_1D5D2CFE8(v230, type metadata accessor for FormatVersionRequirement);
LABEL_71:
          v77 = v234;
          return sub_1D5D2CFE8(v77, sub_1D6694E04);
        }

        v235 = v233;

        if (v235)
        {
          sub_1D6659A24();
          v234 = v262;
          sub_1D72647EC();

          goto LABEL_68;
        }

        v237 = v269;

        sub_1D5CBF568(v237);

        sub_1D5D2CFE8(v230, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v215, type metadata accessor for FormatVersionRequirement);
      }

      v234 = v262;
      goto LABEL_71;
    }

    v266 = v264;
    LOBYTE(v267) = 0;
    v273 = 1;
    v188 = v263;
    sub_1D72647EC();
    v263 = v188;
    v167 = v258;
    if (v188)
    {
      sub_1D5D2CFE8(v173, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v81, sub_1D6694E04);
    }

LABEL_49:
    v189 = v81;
    sub_1D5D2CFE8(v173, type metadata accessor for FormatVersionRequirement);
    goto LABEL_50;
  }

  sub_1D5D2CFE8(v173, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v81, sub_1D6694E04);
}

uint64_t sub_1D64D362C(uint64_t a1)
{
  v2 = sub_1D6695004();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64D3668(uint64_t a1)
{
  v2 = sub_1D6695004();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatHeadlineBinding.Action.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatHeadlineBinding.Action, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatHeadlineBinding.Action, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v17, v14, v18, &off_1F51F6CD8);
  if (v15)
  {
    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCCE8);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641E61C(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCD50);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641E61C(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D64D39DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 1970169197;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0x80000001D73BB1E0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 1970169197;
  }

  if (*a2)
  {
    v6 = 0x80000001D73BB1E0;
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

uint64_t sub_1D64D3A80()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64D3B00()
{
  sub_1D72621EC();
}

uint64_t sub_1D64D3B6C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D64D3BF4(unint64_t *a1@<X8>)
{
  v2 = 0x80000001D73BB1E0;
  v3 = 1970169197;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t FormatHeadlineBinding.ActivityItemsConfiguration.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatHeadlineBinding.ActivityItemsConfiguration, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatHeadlineBinding.ActivityItemsConfiguration, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v11, v9, v12, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCD50);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D641EF68(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatHeadlineBinding.Bool.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v155 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v154 = &v136 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v153 = &v136 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v152 = &v136 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v151 = &v136 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v150 = &v136 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v149 = &v136 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v148 = &v136 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v147 = &v136 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v146 = &v136 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v145 = &v136 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v144 = &v136 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v142 = &v136 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v141 = &v136 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v140 = &v136 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v139 = &v136 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v138 = &v136 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v137 = &v136 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v143 = &v136 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v136 = &v136 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v66 = &v136 - v65;
  MEMORY[0x1EEE9AC00](v67, v68);
  v70 = &v136 - v69;
  MEMORY[0x1EEE9AC00](v71, v72);
  v74 = &v136 - v73;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v75 - 8, v76);
  v78 = &v136 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = *v1;
  v80 = a1[3];
  v81 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v80);
  v82 = sub_1D5C30408();
  v156 = v78;
  sub_1D5D2EE70(&type metadata for FormatHeadlineBinding.Bool, &type metadata for FormatCodingKeys, v83, v80, &type metadata for FormatHeadlineBinding.Bool, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v81, v78, v82, &off_1F51F6C78);
  switch(v79)
  {
    case 1:
      if (qword_1EDF31F10 != -1)
      {
        swift_once();
      }

      v111 = sub_1D725BD1C();
      v112 = __swift_project_value_buffer(v111, qword_1EDFFCDF8);
      (*(*(v111 - 8) + 16))(v70, v112, v111);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v103 = v156;
      sub_1D641ECC0(1, v70);
      v104 = v70;
      break;
    case 2:
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v101 = sub_1D725BD1C();
      v102 = __swift_project_value_buffer(v101, qword_1EDFFCD18);
      (*(*(v101 - 8) + 16))(v66, v102, v101);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v103 = v156;
      sub_1D641ECC0(2, v66);
      v104 = v66;
      break;
    case 3:
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v107 = sub_1D725BD1C();
      v108 = __swift_project_value_buffer(v107, qword_1EDFFCCE8);
      v74 = v136;
      (*(*(v107 - 8) + 16))(v136, v108, v107);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v86 = 3;
      goto LABEL_32;
    case 4:
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v95 = sub_1D725BD1C();
      v96 = __swift_project_value_buffer(v95, qword_1EDFFCD18);
      v89 = v143;
      (*(*(v95 - 8) + 16))(v143, v96, v95);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 4;
      goto LABEL_72;
    case 5:
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v117 = sub_1D725BD1C();
      v118 = __swift_project_value_buffer(v117, qword_1EDFFCD00);
      v89 = v137;
      (*(*(v117 - 8) + 16))(v137, v118, v117);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 5;
      goto LABEL_72;
    case 6:
      if (qword_1EDF31EF8 != -1)
      {
        swift_once();
      }

      v123 = sub_1D725BD1C();
      v124 = __swift_project_value_buffer(v123, qword_1EDFFCDC8);
      v89 = v138;
      (*(*(v123 - 8) + 16))(v138, v124, v123);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 6;
      goto LABEL_72;
    case 7:
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v109 = sub_1D725BD1C();
      v110 = __swift_project_value_buffer(v109, qword_1EDFFCD30);
      v89 = v139;
      (*(*(v109 - 8) + 16))(v139, v110, v109);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 7;
      goto LABEL_72;
    case 8:
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v129 = sub_1D725BD1C();
      v130 = __swift_project_value_buffer(v129, qword_1EDFFCD30);
      v89 = v140;
      (*(*(v129 - 8) + 16))(v140, v130, v129);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 8;
      goto LABEL_72;
    case 9:
      if (qword_1EDF31F58[0] != -1)
      {
        swift_once();
      }

      v99 = sub_1D725BD1C();
      v100 = __swift_project_value_buffer(v99, qword_1EDFFCE98);
      v89 = v141;
      (*(*(v99 - 8) + 16))(v141, v100, v99);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 21;
      goto LABEL_72;
    case 10:
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v127 = sub_1D725BD1C();
      v128 = __swift_project_value_buffer(v127, qword_1EDFFCD30);
      v89 = v142;
      (*(*(v127 - 8) + 16))(v142, v128, v127);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 9;
      goto LABEL_72;
    case 11:
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v93 = sub_1D725BD1C();
      v94 = __swift_project_value_buffer(v93, qword_1EDFFCD30);
      v89 = v144;
      (*(*(v93 - 8) + 16))(v144, v94, v93);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 10;
      goto LABEL_72;
    case 12:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v97 = sub_1D725BD1C();
      v98 = __swift_project_value_buffer(v97, qword_1EDFFCD50);
      v89 = v145;
      (*(*(v97 - 8) + 16))(v145, v98, v97);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 11;
      goto LABEL_72;
    case 13:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v121 = sub_1D725BD1C();
      v122 = __swift_project_value_buffer(v121, qword_1EDFFCD50);
      v89 = v146;
      (*(*(v121 - 8) + 16))(v146, v122, v121);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 12;
      goto LABEL_72;
    case 14:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v91 = sub_1D725BD1C();
      v92 = __swift_project_value_buffer(v91, qword_1EDFFCD50);
      v89 = v147;
      (*(*(v91 - 8) + 16))(v147, v92, v91);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 13;
      goto LABEL_72;
    case 15:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v105 = sub_1D725BD1C();
      v106 = __swift_project_value_buffer(v105, qword_1EDFFCD50);
      v89 = v148;
      (*(*(v105 - 8) + 16))(v148, v106, v105);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 14;
      goto LABEL_72;
    case 16:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v87 = sub_1D725BD1C();
      v88 = __swift_project_value_buffer(v87, qword_1EDFFCD80);
      v89 = v149;
      (*(*(v87 - 8) + 16))(v149, v88, v87);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 15;
      goto LABEL_72;
    case 17:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v113 = sub_1D725BD1C();
      v114 = __swift_project_value_buffer(v113, qword_1EDFFCD80);
      v89 = v150;
      (*(*(v113 - 8) + 16))(v150, v114, v113);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 16;
      goto LABEL_72;
    case 18:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v125 = sub_1D725BD1C();
      v126 = __swift_project_value_buffer(v125, qword_1EDFFCD80);
      v89 = v151;
      (*(*(v125 - 8) + 16))(v151, v126, v125);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 17;
      goto LABEL_72;
    case 19:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v133 = sub_1D725BD1C();
      v134 = __swift_project_value_buffer(v133, qword_1EDFFCD80);
      v89 = v152;
      (*(*(v133 - 8) + 16))(v152, v134, v133);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 18;
      goto LABEL_72;
    case 20:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v115 = sub_1D725BD1C();
      v116 = __swift_project_value_buffer(v115, qword_1EDFFCD80);
      v89 = v153;
      (*(*(v115 - 8) + 16))(v153, v116, v115);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 19;
      goto LABEL_72;
    case 21:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v119 = sub_1D725BD1C();
      v120 = __swift_project_value_buffer(v119, qword_1EDFFCCA8);
      v89 = v154;
      (*(*(v119 - 8) + 16))(v154, v120, v119);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 20;
      goto LABEL_72;
    case 22:
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v131 = sub_1D725BD1C();
      v132 = __swift_project_value_buffer(v131, qword_1EDFFCE38);
      v89 = v155;
      (*(*(v131 - 8) + 16))(v155, v132, v131);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 22;
LABEL_72:
      v103 = v156;
      sub_1D641ECC0(v90, v89);
      v104 = v89;
      break;
    default:
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v84 = sub_1D725BD1C();
      v85 = __swift_project_value_buffer(v84, qword_1EDFFCD30);
      (*(*(v84 - 8) + 16))(v74, v85, v84);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v86 = 0;
LABEL_32:
      v103 = v156;
      sub_1D641ECC0(v86, v74);
      v104 = v74;
      break;
  }

  sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v103, sub_1D5D30DC4);
}

uint64_t FormatHeadlineBinding.Command.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v143 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v142 = &v127 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v141 = &v127 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v140 = &v127 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v139 = &v127 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v138 = &v127 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v137 = &v127 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v136 = &v127 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v135 = &v127 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v134 = &v127 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v133 = &v127 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v132 = &v127 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v130 = &v127 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v129 = &v127 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v131 = &v127 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v128 = &v127 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v127 - v53;
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = &v127 - v57;
  MEMORY[0x1EEE9AC00](v59, v60);
  v62 = &v127 - v61;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v63 - 8, v64);
  v66 = &v127 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *v1;
  v68 = a1[3];
  v69 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v68);
  v70 = sub_1D5C30408();
  v144 = v66;
  sub_1D5D2EE70(&type metadata for FormatHeadlineBinding.Command, &type metadata for FormatCodingKeys, v71, v68, &type metadata for FormatHeadlineBinding.Command, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v69, v66, v70, &off_1F51F6C78);
  switch(v67)
  {
    case 1:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v105 = sub_1D725BD1C();
      v106 = __swift_project_value_buffer(v105, qword_1EDFFCD50);
      (*(*(v105 - 8) + 16))(v58, v106, v105);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v144;
      sub_1D641E4C8(1, v58);
      v75 = v58;
      break;
    case 2:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v97 = sub_1D725BD1C();
      v98 = __swift_project_value_buffer(v97, qword_1EDFFCD50);
      (*(*(v97 - 8) + 16))(v54, v98, v97);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v144;
      sub_1D641E4C8(2, v54);
      v75 = v54;
      break;
    case 3:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v101 = sub_1D725BD1C();
      v102 = __swift_project_value_buffer(v101, qword_1EDFFCD50);
      v87 = v128;
      (*(*(v101 - 8) + 16))(v128, v102, v101);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v88 = 3;
      goto LABEL_64;
    case 4:
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v91 = sub_1D725BD1C();
      v92 = __swift_project_value_buffer(v91, qword_1EDFFCD30);
      v87 = v131;
      (*(*(v91 - 8) + 16))(v131, v92, v91);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v88 = 4;
      goto LABEL_64;
    case 5:
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v114 = sub_1D725BD1C();
      v115 = __swift_project_value_buffer(v114, qword_1EDFFCD30);
      v87 = v129;
      (*(*(v114 - 8) + 16))(v129, v115, v114);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v88 = 5;
      goto LABEL_64;
    case 6:
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v118 = sub_1D725BD1C();
      v119 = __swift_project_value_buffer(v118, qword_1EDFFCD18);
      v87 = v130;
      (*(*(v118 - 8) + 16))(v130, v119, v118);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v88 = 6;
      goto LABEL_64;
    case 7:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v103 = sub_1D725BD1C();
      v104 = __swift_project_value_buffer(v103, qword_1EDFFCD50);
      v87 = v132;
      (*(*(v103 - 8) + 16))(v132, v104, v103);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v88 = 7;
      goto LABEL_64;
    case 8:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v124 = sub_1D725BD1C();
      v125 = __swift_project_value_buffer(v124, qword_1EDFFCD50);
      v87 = v133;
      (*(*(v124 - 8) + 16))(v133, v125, v124);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v88 = 8;
      goto LABEL_64;
    case 9:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v95 = sub_1D725BD1C();
      v96 = __swift_project_value_buffer(v95, qword_1EDFFCD50);
      v87 = v134;
      (*(*(v95 - 8) + 16))(v134, v96, v95);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v88 = 9;
      goto LABEL_64;
    case 10:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v122 = sub_1D725BD1C();
      v123 = __swift_project_value_buffer(v122, qword_1EDFFCD50);
      v87 = v135;
      (*(*(v122 - 8) + 16))(v135, v123, v122);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v88 = 10;
      goto LABEL_64;
    case 11:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v89 = sub_1D725BD1C();
      v90 = __swift_project_value_buffer(v89, qword_1EDFFCD50);
      v87 = v136;
      (*(*(v89 - 8) + 16))(v136, v90, v89);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v88 = 11;
      goto LABEL_64;
    case 12:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v93 = sub_1D725BD1C();
      v94 = __swift_project_value_buffer(v93, qword_1EDFFCD50);
      v87 = v137;
      (*(*(v93 - 8) + 16))(v137, v94, v93);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v88 = 12;
      goto LABEL_64;
    case 13:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v116 = sub_1D725BD1C();
      v117 = __swift_project_value_buffer(v116, qword_1EDFFCD50);
      v87 = v138;
      (*(*(v116 - 8) + 16))(v138, v117, v116);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v88 = 13;
      goto LABEL_64;
    case 14:
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v85 = sub_1D725BD1C();
      v86 = __swift_project_value_buffer(v85, qword_1EDFFCCE8);
      v87 = v139;
      (*(*(v85 - 8) + 16))(v139, v86, v85);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v88 = 16;
      goto LABEL_64;
    case 15:
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v99 = sub_1D725BD1C();
      v100 = __swift_project_value_buffer(v99, qword_1EDFFCCE8);
      v87 = v140;
      (*(*(v99 - 8) + 16))(v140, v100, v99);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v88 = 17;
      goto LABEL_64;
    case 16:
      sub_1D5B58478();
      v77 = *(v76 + 48);
      v78 = v141;
      v79 = &v141[*(v76 + 64)];
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v80 = sub_1D725BD1C();
      v81 = __swift_project_value_buffer(v80, qword_1EDFFCD00);
      v82 = *(*(v80 - 8) + 16);
      v82(v78, v81, v80);
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v83 = __swift_project_value_buffer(v80, qword_1EDFFCCE8);
      v82(v78 + v77, v83, v80);
      type metadata accessor for FormatVersionRequirement.Value(0);
      *v79 = 0;
      *(v79 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v84 = 14;
      goto LABEL_45;
    case 17:
      sub_1D5B58478();
      v108 = *(v107 + 48);
      v78 = v142;
      v109 = &v142[*(v107 + 64)];
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v110 = sub_1D725BD1C();
      v111 = __swift_project_value_buffer(v110, qword_1EDFFCD00);
      v112 = *(*(v110 - 8) + 16);
      v112(v78, v111, v110);
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v113 = __swift_project_value_buffer(v110, qword_1EDFFCCE8);
      v112(v78 + v108, v113, v110);
      type metadata accessor for FormatVersionRequirement.Value(0);
      *v109 = 0;
      *(v109 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v84 = 15;
LABEL_45:
      v74 = v144;
      sub_1D641E4C8(v84, v78);
      v87 = v78;
      goto LABEL_65;
    case 18:
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v120 = sub_1D725BD1C();
      v121 = __swift_project_value_buffer(v120, qword_1EDFFCE38);
      v87 = v143;
      (*(*(v120 - 8) + 16))(v143, v121, v120);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v88 = 18;
LABEL_64:
      v74 = v144;
      sub_1D641E4C8(v88, v87);
LABEL_65:
      v75 = v87;
      break;
    default:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v72 = sub_1D725BD1C();
      v73 = __swift_project_value_buffer(v72, qword_1EDFFCD50);
      (*(*(v72 - 8) + 16))(v62, v73, v72);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v144;
      sub_1D641E4C8(0, v62);
      v75 = v62;
      break;
  }

  sub_1D5D2CFE8(v75, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v74, sub_1D5D30DC4);
}

uint64_t FormatHeadlineBinding.Float.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v32 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v32 - v13;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatHeadlineBinding.Float, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatHeadlineBinding.Float, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyE, v21, v18, v22, &off_1F51F6CB8);
  if (v19)
  {
    if (v19 == 1)
    {
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v24 = sub_1D725BD1C();
      v25 = __swift_project_value_buffer(v24, qword_1EDFFCCE8);
      (*(*(v24 - 8) + 16))(v10, v25, v24);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641E8C4(1, v10);
      v26 = v10;
    }

    else
    {
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v29 = sub_1D725BD1C();
      v30 = __swift_project_value_buffer(v29, qword_1EDFFCE38);
      (*(*(v29 - 8) + 16))(v6, v30, v29);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641E8C4(2, v6);
      v26 = v6;
    }
  }

  else
  {
    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCCE8);
    (*(*(v27 - 8) + 16))(v14, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641E8C4(0, v14);
    v26 = v14;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D64D6964@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v32 = a5;
  v33 = a4;
  v38 = a3;
  v7 = v5;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v34 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v31 - v12;
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
    v14 = v38;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v15 = sub_1D7264AFC();
    v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

    v18 = v34;
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
    v36 = 0uLL;
    sub_1D726431C();
    v28 = v35;
    v35 = xmmword_1D7279980;
    sub_1D6659898();
    sub_1D726431C();
    (*(v18 + 8))(v19, v10);
    v29 = v37;
    v30 = v32;
    *v32 = v36;
    *(v30 + 8) = v29;
    *(v30 + 18) = v28;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D64D6CD0(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void, char *, double))
{
  v38 = a3;
  v6 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v36 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v36 - v16;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v3;
  v36 = *(v3 + 8);
  v37 = *(v3 + 16);
  v23 = *(v3 + 18);
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = sub_1D5C30408();
  sub_1D5D2EE70(a2, &type metadata for FormatCodingKeys, v27, v24, a2, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v25, v21, v26, &off_1F51F6C78);
  if (v23)
  {
    if (v23 == 1)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v28 = sub_1D725BD1C();
      v29 = __swift_project_value_buffer(v28, qword_1EDFFCD30);
      (*(*(v28 - 8) + 16))(v13, v29, v28);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v38(1, v36, v37, v13, v22);
      v30 = v13;
    }

    else
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v33 = sub_1D725BD1C();
      v34 = __swift_project_value_buffer(v33, qword_1EDFFCD30);
      (*(*(v33 - 8) + 16))(v9, v34, v33);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v38(2, v36, v37, v9, v22);
      v30 = v9;
    }
  }

  else
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v31 = sub_1D725BD1C();
    v32 = __swift_project_value_buffer(v31, qword_1EDFFCD30);
    (*(*(v31 - 8) + 16))(v17, v32, v31);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v38(0, v36, v37, v17, v22);
    v30 = v17;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v21, sub_1D5D30DC4);
}

uint64_t FormatHeadlineBinding.Image.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v45 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v45 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v45 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v45 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v45 - v20;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v1;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = sub_1D5C30408();
  v46 = v25;
  sub_1D5D2EE70(&type metadata for FormatHeadlineBinding.Image, &type metadata for FormatCodingKeys, v30, v27, &type metadata for FormatHeadlineBinding.Image, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v28, v25, v29, &off_1F51F6C78);
  if (v26 <= 1)
  {
    if (v26)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v42 = sub_1D725BD1C();
      v43 = __swift_project_value_buffer(v42, qword_1EDFFCD30);
      (*(*(v42 - 8) + 16))(v17, v43, v42);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v33 = v46;
      sub_1D641E770(1, v17);
      v34 = v17;
    }

    else
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCD30);
      (*(*(v35 - 8) + 16))(v21, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v33 = v46;
      sub_1D641E770(0, v21);
      v34 = v21;
    }
  }

  else if (v26 == 2)
  {
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v37 = sub_1D725BD1C();
    v38 = __swift_project_value_buffer(v37, qword_1EDFFCD00);
    (*(*(v37 - 8) + 16))(v13, v38, v37);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D641E770(2, v13);
    v34 = v13;
  }

  else if (v26 == 3)
  {
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v31 = sub_1D725BD1C();
    v32 = __swift_project_value_buffer(v31, qword_1EDFFCDE0);
    (*(*(v31 - 8) + 16))(v9, v32, v31);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D641E770(3, v9);
    v34 = v9;
  }

  else
  {
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v39 = sub_1D725BD1C();
    v40 = __swift_project_value_buffer(v39, qword_1EDFFCDE0);
    v41 = v45;
    (*(*(v39 - 8) + 16))(v45, v40, v39);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D641E770(4, v41);
    v34 = v41;
  }

  sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v33, sub_1D5D30DC4);
}

uint64_t sub_1D64D7700()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64D7800()
{
  sub_1D72621EC();
}

uint64_t sub_1D64D78EC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D64D79E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE90000000000006CLL;
  v4 = 0x69616E626D756874;
  v5 = 0xEA00000000006C6CLL;
  v6 = 0x6974536F65646976;
  v7 = 0x80000001D73BB1A0;
  if (v2 == 3)
  {
    v8 = 0xD000000000000012;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (v2 != 3)
  {
    v7 = 0x80000001D73BB1C0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656873696C627570;
    v3 = 0xED00006F676F4C72;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t FormatHeadlineBinding.LayeredMedia.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatHeadlineBinding.LayeredMedia, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatHeadlineBinding.LayeredMedia, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenC, v11, v9, v12, &off_1F51F6BB8);
  if (qword_1EDF31EF0 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCDB0);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D641F354(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatHeadlineBinding.SharedItem.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatHeadlineBinding.SharedItem, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatHeadlineBinding.SharedItem, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v11, v9, v12, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCD50);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D641F498(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatHeadlineBinding.SharedMenuItem.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatHeadlineBinding.SharedMenuItem, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatHeadlineBinding.SharedMenuItem, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v17, v14, v18, &off_1F51F6CD8);
  if (v15)
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCD50);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641F0AC(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCD50);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641F0AC(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D64D84D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7261685365646968;
  }

  else
  {
    v3 = 0x536F54796C706572;
  }

  if (v2)
  {
    v4 = 0xED00007265726168;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v5 = 0x7261685365646968;
  }

  else
  {
    v5 = 0x536F54796C706572;
  }

  if (*a2)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v6 = 0xED00007265726168;
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

uint64_t sub_1D64D8588()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64D861C()
{
  sub_1D72621EC();
}

uint64_t sub_1D64D869C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D64D8738(uint64_t *a1@<X8>)
{
  v2 = 0x536F54796C706572;
  if (*v1)
  {
    v2 = 0x7261685365646968;
  }

  v3 = 0xED00007265726168;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatHeadlineBinding.SourceItemTip.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatHeadlineBinding.SourceItemTip, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatHeadlineBinding.SourceItemTip, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowC, v17, v14, v18, &off_1F51F6AF8);
  if (v15)
  {
    if (qword_1EDF31F40 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCE50);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641F200(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31F40 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCE50);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641F200(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatHeadlineBinding.Text.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v139 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v138 = &v138 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v155 = &v138 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v154 = &v138 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v140 = &v138 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v142 = &v138 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v141 = &v138 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v143 = &v138 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v144 = &v138 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v145 = &v138 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v146 = &v138 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v147 = &v138 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v148 = &v138 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v149 = &v138 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v150 = &v138 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v138 - v50;
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = &v138 - v54;
  MEMORY[0x1EEE9AC00](v56, v57);
  v151 = &v138 - v58;
  MEMORY[0x1EEE9AC00](v59, v60);
  v152 = &v138 - v61;
  MEMORY[0x1EEE9AC00](v62, v63);
  v153 = &v138 - v64;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v65 - 8, v66);
  v68 = &v138 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = *v1;
  v70 = v1[1];
  v71 = v1[2];
  v158 = v1[3];
  v159 = v69;
  v72 = v1[5];
  v156 = v1[4];
  v157 = v72;
  v73 = *(v1 + 48);
  v74 = a1[3];
  v75 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v74);
  v76 = sub_1D5C30408();
  v172 = v68;
  sub_1D5D2EE70(&type metadata for FormatHeadlineBinding.Text, &type metadata for FormatCodingKeys, v77, v74, &type metadata for FormatHeadlineBinding.Text, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v75, v68, v76, &off_1F51F6C78);
  if (v73 <= 1)
  {
    if (!v73)
    {
      *&v161 = v159;
      *(&v161 + 1) = v70;
      v162 = v71;
      v163 = v158;
      v164 = v156;
      v165 = v157;
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v81 = sub_1D725BD1C();
      v82 = __swift_project_value_buffer(v81, qword_1EDFFCD50);
      (*(*(v81 - 8) + 16))(v55, v82, v81);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v80 = v172;
      sub_1D6484FBC(3, &v161, v55);
      v83 = v55;
      goto LABEL_24;
    }

    *&v166 = v159;
    *(&v166 + 1) = v70;
    v167 = v71;
    v168 = v158;
    v169 = v156;
    v170 = v157;
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v91 = sub_1D725BD1C();
    v92 = __swift_project_value_buffer(v91, qword_1EDFFCD30);
    (*(*(v91 - 8) + 16))(v51, v92, v91);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v80 = v172;
    sub_1D6484FBC(4, &v166, v51);
LABEL_23:
    v83 = v51;
LABEL_24:
    sub_1D5D2CFE8(v83, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CFE8(v80, sub_1D5D30DC4);
  }

  if (v73 == 2)
  {
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v84 = sub_1D725BD1C();
    v85 = __swift_project_value_buffer(v84, qword_1EDFFCD00);
    v51 = v154;
    (*(*(v84 - 8) + 16))(v154, v85, v84);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v80 = v172;
    sub_1D639FBB4(16, v159 & 1, v51);
    goto LABEL_23;
  }

  if (v73 == 3)
  {
    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v78 = sub_1D725BD1C();
    v79 = __swift_project_value_buffer(v78, qword_1EDFFCCE8);
    v51 = v155;
    (*(*(v78 - 8) + 16))(v155, v79, v78);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v80 = v172;
    sub_1D639FD4C(17, v51);
    goto LABEL_23;
  }

  if (v71 | v70 | v159 | v158 | v156 | v157)
  {
    v86 = v71 | v70 | v158 | v156 | v157;
    if (v159 == 1 && !v86)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v87 = sub_1D725BD1C();
      v88 = __swift_project_value_buffer(v87, qword_1EDFFCD30);
      v89 = v152;
      (*(*(v87 - 8) + 16))(v152, v88, v87);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 1;
LABEL_73:
      v97 = v89;
      v94 = v172;
      goto LABEL_74;
    }

    if (v159 == 2 && !v86)
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v98 = sub_1D725BD1C();
      v99 = __swift_project_value_buffer(v98, qword_1EDFFCD50);
      v89 = v151;
      (*(*(v98 - 8) + 16))(v151, v99, v98);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 2;
      goto LABEL_73;
    }

    if (v159 == 3 && !v86)
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v100 = sub_1D725BD1C();
      v101 = __swift_project_value_buffer(v100, qword_1EDFFCD50);
      v89 = v150;
      (*(*(v100 - 8) + 16))(v150, v101, v100);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 5;
      goto LABEL_73;
    }

    if (v159 == 4 && !v86)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v102 = sub_1D725BD1C();
      v103 = __swift_project_value_buffer(v102, qword_1EDFFCD30);
      v89 = v149;
      (*(*(v102 - 8) + 16))(v149, v103, v102);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 6;
      goto LABEL_73;
    }

    if (v159 == 5 && !v86)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v104 = sub_1D725BD1C();
      v105 = __swift_project_value_buffer(v104, qword_1EDFFCD30);
      v89 = v148;
      (*(*(v104 - 8) + 16))(v148, v105, v104);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 7;
      goto LABEL_73;
    }

    if (v159 == 6 && !v86)
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v106 = sub_1D725BD1C();
      v107 = __swift_project_value_buffer(v106, qword_1EDFFCD50);
      v89 = v147;
      (*(*(v106 - 8) + 16))(v147, v107, v106);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 8;
      goto LABEL_73;
    }

    if (v159 == 7 && !v86)
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v108 = sub_1D725BD1C();
      v109 = __swift_project_value_buffer(v108, qword_1EDFFCD50);
      v89 = v146;
      (*(*(v108 - 8) + 16))(v146, v109, v108);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 14;
      goto LABEL_73;
    }

    if (v159 == 8 && !v86)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v110 = sub_1D725BD1C();
      v111 = __swift_project_value_buffer(v110, qword_1EDFFCD30);
      v89 = v145;
      (*(*(v110 - 8) + 16))(v145, v111, v110);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 9;
      goto LABEL_73;
    }

    if (v159 == 9 && !v86)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v112 = sub_1D725BD1C();
      v113 = __swift_project_value_buffer(v112, qword_1EDFFCD30);
      v89 = v144;
      (*(*(v112 - 8) + 16))(v144, v113, v112);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 10;
      goto LABEL_73;
    }

    if (v159 == 10 && !v86)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v114 = sub_1D725BD1C();
      v115 = __swift_project_value_buffer(v114, qword_1EDFFCD30);
      v89 = v143;
      (*(*(v114 - 8) + 16))(v143, v115, v114);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 11;
      goto LABEL_73;
    }

    if (v159 == 11 && !v86)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v118 = sub_1D725BD1C();
      v119 = __swift_project_value_buffer(v118, qword_1EDFFCD30);
      v89 = v141;
      (*(*(v118 - 8) + 16))(v141, v119, v118);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v94 = v172;
      v120 = v160;
      sub_1D641EB6C(12, v89);
      if (v120)
      {
        goto LABEL_75;
      }

LABEL_76:
      v117 = v89;
      goto LABEL_77;
    }

    if (v159 != 12 || v86)
    {
      if (v159 != 13 || v86)
      {
        if (v159 != 14 || v86)
        {
          if (qword_1EDF31ED8 != -1)
          {
            swift_once();
          }

          v134 = sub_1D725BD1C();
          v135 = __swift_project_value_buffer(v134, qword_1EDFFCD68);
          v136 = v139;
          (*(*(v134 - 8) + 16))(v139, v135, v134);
          type metadata accessor for FormatVersionRequirement.Value(0);
          swift_storeEnumTagMultiPayload();
          v137 = v160;
          sub_1D641EB6C(19, v136);
          if (!v137)
          {
            v94 = v172;
            v117 = v139;
            goto LABEL_77;
          }

          v125 = &v169;
        }

        else
        {
          if (qword_1EDF31EE0 != -1)
          {
            swift_once();
          }

          v130 = sub_1D725BD1C();
          v131 = __swift_project_value_buffer(v130, qword_1EDFFCD80);
          v132 = v138;
          (*(*(v130 - 8) + 16))(v138, v131, v130);
          type metadata accessor for FormatVersionRequirement.Value(0);
          swift_storeEnumTagMultiPayload();
          v133 = v160;
          sub_1D641EB6C(18, v132);
          v125 = &v168;
          if (!v133)
          {
            goto LABEL_101;
          }
        }
      }

      else
      {
        if (qword_1EDF31ED0 != -1)
        {
          swift_once();
        }

        v126 = sub_1D725BD1C();
        v127 = __swift_project_value_buffer(v126, qword_1EDFFCD50);
        v128 = v140;
        (*(*(v126 - 8) + 16))(v140, v127, v126);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v129 = v160;
        sub_1D641EB6C(15, v128);
        v125 = &v170;
        if (!v129)
        {
          goto LABEL_101;
        }
      }
    }

    else
    {
      if (qword_1EDF31F10 != -1)
      {
        swift_once();
      }

      v121 = sub_1D725BD1C();
      v122 = __swift_project_value_buffer(v121, qword_1EDFFCDF8);
      v123 = v142;
      (*(*(v121 - 8) + 16))(v142, v122, v121);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v124 = v160;
      sub_1D641EB6C(13, v123);
      v125 = &v171;
      if (!v124)
      {
LABEL_101:
        v117 = *(v125 - 32);
        v94 = v172;
        goto LABEL_77;
      }
    }

    v89 = *(v125 - 32);
    v94 = v172;
    goto LABEL_75;
  }

  v94 = v172;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v95 = sub_1D725BD1C();
  v96 = __swift_project_value_buffer(v95, qword_1EDFFCD30);
  v89 = v153;
  (*(*(v95 - 8) + 16))(v153, v96, v95);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v90 = 0;
  v97 = v89;
LABEL_74:
  v116 = v160;
  sub_1D641EB6C(v90, v97);
  if (!v116)
  {
    goto LABEL_76;
  }

LABEL_75:
  v117 = v89;
LABEL_77:
  sub_1D5D2CFE8(v117, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v94, sub_1D5D30DC4);
}

uint64_t FormatHeadlineBinding.URL.encode(to:)(void *a1)
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
  v23 = *v1;
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatHeadlineBinding.URL, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatHeadlineBinding.URL, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyC, v25, v22, v26, &off_1F51F6B18);
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCD80);
      (*(*(v31 - 8) + 16))(v10, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641EE14(2, v10);
      v30 = v10;
    }

    else
    {
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCD80);
      (*(*(v35 - 8) + 16))(v6, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641EE14(3, v6);
      v30 = v6;
    }
  }

  else if (v23)
  {
    if (qword_1EDF31EE0 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCD80);
    (*(*(v33 - 8) + 16))(v14, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641EE14(1, v14);
    v30 = v14;
  }

  else
  {
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCD00);
    (*(*(v28 - 8) + 16))(v18, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641EE14(0, v18);
    v30 = v18;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t FormatHeadlineTrackDurationFormat.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatHeadlineTrackDurationFormat, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatHeadlineTrackDurationFormat, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyE, v17, v14, v18, &off_1F51F6CB8);
  if (v15)
  {
    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCCE8);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D64248E8(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCCE8);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D64248E8(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D64DA830(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6269737365636361;
  }

  else
  {
    v3 = 0x746C7561666564;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xED00007974696C69;
  }

  if (*a2)
  {
    v5 = 0x6269737365636361;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (*a2)
  {
    v6 = 0xED00007974696C69;
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

uint64_t sub_1D64DA8E4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64DA974()
{
  sub_1D72621EC();
}

uint64_t sub_1D64DA9F0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D64DAA88(uint64_t *a1@<X8>)
{
  v2 = 0x746C7561666564;
  if (*v1)
  {
    v2 = 0x6269737365636361;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xED00007974696C69;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatHeadlineTrackProgressFormat.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatHeadlineTrackProgressFormat, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatHeadlineTrackProgressFormat, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyE, v11, v9, v12, &off_1F51F6CB8);
  if (qword_1EDF31E90 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCCE8);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D64247A4(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t sub_1D64DAEEC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x646E656C62;
  if (v2 != 1)
  {
    v4 = 0x7265746C6966;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1802723693;
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
  v8 = 0x646E656C62;
  if (*a2 != 1)
  {
    v8 = 0x7265746C6966;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1802723693;
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

uint64_t sub_1D64DAFD8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64DB06C()
{
  sub_1D72621EC();
}

uint64_t sub_1D64DB0EC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64DB17C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6663FF4();
  *a1 = result;
  return result;
}

void sub_1D64DB1AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x646E656C62;
  if (v2 != 1)
  {
    v5 = 0x7265746C6966;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1802723693;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatImageAdjustmentBlend.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v66 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v34 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v33 - v8;
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
    v10 = sub_1D7264AFC();
    v11 = Dictionary<>.errorOnUnknownKeys.getter(v10);

    v12 = v66;
    v13 = v6;
    v14 = v34;
    v15 = v9;
    if (v11)
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
          v3 = swift_allocError();
          *v22 = v21;
          *(v22 + 8) = v20;
          *(v22 + 16) = &unk_1F5115828;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v14 + 8))(v15, v13);
          goto LABEL_9;
        }
      }
    }

    sub_1D6695580();
    v63 = 0;
    v64 = 0;
    sub_1D726431C();
    v24 = v14;
    v25 = v12;
    v26 = (v24 + 8);
    if (v65)
    {
      v35 = xmmword_1D7279980;
      sub_1D66955D4();
      sub_1D726431C();
      (*v26)(v15, v13);
      *&v45 = v44;
      BYTE8(v45) = BYTE8(v44);
      sub_1D6011240(&v45);
      v60 = v51;
      v61 = v52;
      v62 = v53;
      v56 = v47;
      v57 = v48;
      v58 = v49;
      v59 = v50;
      v28 = v45;
      v27 = v46;
    }

    else
    {
      v44 = xmmword_1D7279980;
      sub_1D6695628();
      sub_1D726431C();
      (*v26)(v15, v13);
      v41 = v51;
      v42 = v52;
      v43 = v53;
      v37 = v47;
      v38 = v48;
      v39 = v49;
      v40 = v50;
      v35 = v45;
      v36 = v46;
      sub_1D601128C(&v35);
      v60 = v41;
      v61 = v42;
      v62 = v43;
      v56 = v37;
      v57 = v38;
      v58 = v39;
      v59 = v40;
      v28 = v35;
      v27 = v36;
    }

    v54 = v28;
    v55 = v27;
    v29 = v61;
    *(v25 + 96) = v60;
    *(v25 + 112) = v29;
    *(v25 + 128) = v62;
    v30 = v57;
    *(v25 + 32) = v56;
    *(v25 + 48) = v30;
    v31 = v59;
    *(v25 + 64) = v58;
    *(v25 + 80) = v31;
    v32 = v55;
    *v25 = v54;
    *(v25 + 16) = v32;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatImageAdjustmentBlend.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v37 - v10;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatImageAdjustmentBlend, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatImageAdjustmentBlend, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonG, v17, v15, v18, &off_1F51F6BF8);
  v20 = *(v2 + 112);
  v39[6] = *(v2 + 96);
  v39[7] = v20;
  v40 = *(v2 + 128);
  v21 = *(v2 + 48);
  v39[2] = *(v2 + 32);
  v39[3] = v21;
  v22 = *(v2 + 80);
  v39[4] = *(v2 + 64);
  v39[5] = v22;
  v23 = *(v2 + 16);
  v39[0] = *v2;
  v39[1] = v23;
  LODWORD(a1) = sub_1D6011234(v39);
  v24 = sub_1D5D756B8(v39);
  if (a1 == 1)
  {
    v25 = *v24;
    v26 = *(v24 + 8);
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCD00);
    (*(*(v27 - 8) + 16))(v7, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638D2A0(1, v25, v26, v7);
    v29 = v7;
  }

  else
  {
    v30 = *(v24 + 112);
    v37[6] = *(v24 + 96);
    v37[7] = v30;
    v38 = *(v24 + 128);
    v31 = *(v24 + 48);
    v37[2] = *(v24 + 32);
    v37[3] = v31;
    v32 = *(v24 + 80);
    v37[4] = *(v24 + 64);
    v37[5] = v32;
    v33 = *(v24 + 16);
    v37[0] = *v24;
    v37[1] = v33;
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v34 = sub_1D725BD1C();
    v35 = __swift_project_value_buffer(v34, qword_1EDFFCD18);
    (*(*(v34 - 8) + 16))(v11, v35, v34);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638D0E8(0, v37, v11);
    v29 = v11;
  }

  sub_1D5D2CFE8(v29, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v15, sub_1D5D30DC4);
}

uint64_t sub_1D64DBA6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726F6C6F63;
  }

  else
  {
    v3 = 0x746E656964617267;
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
    v5 = 0x726F6C6F63;
  }

  else
  {
    v5 = 0x746E656964617267;
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

uint64_t sub_1D64DBB10()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64DBB90()
{
  sub_1D72621EC();
}

uint64_t sub_1D64DBBFC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D64DBC84(uint64_t *a1@<X8>)
{
  v2 = 0x746E656964617267;
  if (*v1)
  {
    v2 = 0x726F6C6F63;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatImageAdjustmentBlend.ColorData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D669567C();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6695710();
  sub_1D5B58B84(&qword_1EDF25008, sub_1D6695710);
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

      v20 = sub_1D6627E68(0x726F6C6F63, 0xE500000000000000, 0x646F4D646E656C62, 0xE900000000000065);
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

  sub_1D5B570F8();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726431C();
  v17 = v28;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D5E4FBA0();
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  *(v13 + 8) = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatImageAdjustmentBlend.ColorData.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v72 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v65 - v8;
  sub_1D6695890();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v71 = *(v1 + 8);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D6695710();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF25008, sub_1D6695710);
  sub_1D5D2EE70(&type metadata for FormatImageAdjustmentBlend.ColorData, v19, v21, v16, &type metadata for FormatImageAdjustmentBlend.ColorData, v19, &type metadata for FormatVersions.StarSkyC, v17, v14, v20, &off_1F51F6B18);
  if (qword_1EDF31E98 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD00);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v73 = v23;
  v74 = v22;
  v68 = v24 + 16;
  v69 = v25;
  (v25)(v9);
  v67 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v83 = v15;
  v81 = 0uLL;
  v82 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v80 = 0;
  v29 = swift_allocObject();
  v77 = &v65;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v80;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v79 = v9;
  *(&v65 - 4) = sub_1D5B4AA6C;
  *(&v65 - 3) = 0;
  v63 = sub_1D6708A78;
  v64 = v31;
  v80 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v80;
  v70 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D6695924();
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF02F88, sub_1D6695924);
  swift_retain_n();
  v75 = v35;
  v76 = v34;
  v36 = sub_1D72647CC();
  v80 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v80;
  v38 = &v14[*(v11 + 36)];
  v39 = __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
  MEMORY[0x1EEE9AC00](v39, v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  *(&v65 - 4) = sub_1D615B4A4;
  *(&v65 - 3) = (&v65 - 6);
  v43 = v78;
  v44 = v79;
  v63 = sub_1D66959B8;
  v64 = v32;
  sub_1D5D2BC70(v79, sub_1D615B49C, v45, sub_1D615B4A4, (&v65 - 6));
  if (v43)
  {
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v66 = v38;
    v47 = v73;
    v46 = v74;
    v78 = v28;

    sub_1D5B55CBC();
    sub_1D72647EC();
    sub_1D5D2CFE8(v79, type metadata accessor for FormatVersionRequirement);

    v49 = v72;
    v69(v72, v47, v46);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v83) = v71;
    v79 = xmmword_1D728CF30;
    v81 = xmmword_1D728CF30;
    v82 = 0;
    v80 = 0;
    v50 = swift_allocObject();
    v77 = &v65;
    *(v50 + 16) = v79;
    *(v50 + 32) = v80;
    v51 = v70;
    v52 = v78;
    *(v50 + 40) = v70;
    *(v50 + 48) = v52;
    MEMORY[0x1EEE9AC00](v50, v53);
    *(&v65 - 4) = sub_1D5B4AA6C;
    *(&v65 - 3) = 0;
    v63 = sub_1D6708A78;
    v64 = v54;
    v80 = 0;
    v55 = swift_allocObject();
    *(v55 + 16) = v79;
    *(v55 + 32) = v80;
    *(v55 + 40) = v51;
    *(v55 + 48) = v52;
    swift_retain_n();
    v56 = sub_1D72647CC();
    v80 = 0;
    v57 = swift_allocObject();
    *(v57 + 16) = v56;
    *(v57 + 24) = v79;
    *(v57 + 40) = v80;
    v58 = __swift_project_boxed_opaque_existential_1(v66, *(v66 + 3));
    MEMORY[0x1EEE9AC00](v58, v59);
    MEMORY[0x1EEE9AC00](v60, v61);
    *(&v65 - 4) = sub_1D615B4A4;
    *(&v65 - 3) = (&v65 - 6);
    v63 = sub_1D6708A78;
    v64 = v55;
    sub_1D5D2BC70(v49, sub_1D615B49C, v62, sub_1D615B4A4, (&v65 - 6));

    sub_1D5E4FBF4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D6695890);
}

uint64_t sub_1D64DC928()
{
  v1 = 0x646F4D646E656C62;
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
    return 0x726F6C6F63;
  }
}

uint64_t sub_1D64DC97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66962A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64DC9B4(uint64_t a1)
{
  v2 = sub_1D66957E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64DC9F0(uint64_t a1)
{
  v2 = sub_1D66957E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatImageAdjustmentBlend.GradientData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  sub_1D6695A34();
  v6 = v5;
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6695AC8();
  sub_1D5B58B84(&qword_1EC886CC8, sub_1D6695AC8);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_1D7264AFC();
  v11 = Dictionary<>.errorOnUnknownKeys.getter(v10);

  v13 = v27;
  v12 = v28;
  if (v11)
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

      v19 = sub_1D6627E68(0x746E656964617267, 0xE800000000000000, 0x646F4D646E656C62, 0xE900000000000065);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v20 = v18;
      *(v20 + 8) = v17;
      *(v20 + 16) = v19;
      *(v20 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v9, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D6695C48();
  v39 = 0;
  v40 = 0;
  v41 = 0;
  sub_1D726431C();
  v35 = v46;
  v36 = v47;
  v37 = v48;
  v38 = v49;
  v31 = v42;
  v32 = v43;
  v33 = v44;
  v34 = v45;
  v29 = xmmword_1D728CF30;
  v30 = 0;
  sub_1D5E4FBA0();
  sub_1D726431C();
  (*(v13 + 8))(v9, v6);
  v22 = v50;
  v23 = v36;
  *(v12 + 64) = v35;
  *(v12 + 80) = v23;
  v24 = v38;
  *(v12 + 96) = v37;
  *(v12 + 112) = v24;
  v25 = v32;
  *v12 = v31;
  *(v12 + 16) = v25;
  v26 = v34;
  *(v12 + 32) = v33;
  *(v12 + 48) = v26;
  *(v12 + 128) = v22;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatImageAdjustmentBlend.GradientData.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v73 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v68 - v8;
  sub_1D6695C9C();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 80);
  v95 = *(v1 + 64);
  v96 = v15;
  v16 = *(v1 + 112);
  v97 = *(v1 + 96);
  v98 = v16;
  v17 = *(v1 + 16);
  v91 = *v1;
  v92 = v17;
  v18 = *(v1 + 48);
  v93 = *(v1 + 32);
  v94 = v18;
  v100 = *(v1 + 128);
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D6695AC8();
  v22 = v21;
  v23 = sub_1D5B58B84(&qword_1EC886CC8, sub_1D6695AC8);
  sub_1D5D2EE70(&type metadata for FormatImageAdjustmentBlend.GradientData, v22, v24, v19, &type metadata for FormatImageAdjustmentBlend.GradientData, v22, &type metadata for FormatVersions.JazzkonG, v20, v14, v23, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v25 = sub_1D725BD1C();
  v26 = __swift_project_value_buffer(v25, qword_1EDFFCD18);
  v27 = *(v25 - 8);
  v28 = *(v27 + 16);
  v70 = v26;
  v71 = v25;
  v68[2] = v27 + 16;
  v69 = v28;
  (v28)(v9);
  v68[1] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v87 = v95;
  v88 = v96;
  v89 = v97;
  v90 = v98;
  v83 = v91;
  v84 = v92;
  v85 = v93;
  v86 = v94;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v29 = &v14[*(v11 + 44)];
  v30 = *v29;
  v31 = *(v29 + 1);
  v99 = 0;
  v32 = swift_allocObject();
  v76 = v68;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v99;
  *(v32 + 40) = v30;
  *(v32 + 48) = v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  *&v78 = v9;
  v68[-4] = sub_1D5B4AA6C;
  v68[-3] = 0;
  v66 = sub_1D6708A7C;
  v67 = v34;
  v99 = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v99;
  v72 = v30;
  *(v35 + 40) = v30;
  *(v35 + 48) = v31;
  sub_1D6695D30();
  v37 = v36;
  v38 = sub_1D5B58B84(&qword_1EC886CE8, sub_1D6695D30);
  swift_retain_n();
  v74 = v38;
  v75 = v37;
  v39 = sub_1D72647CC();
  v99 = 0;
  v40 = swift_allocObject();
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 16) = v39;
  *(v40 + 40) = v99;
  v41 = *(v11 + 36);
  v79 = v14;
  v42 = &v14[v41];
  v43 = __swift_project_boxed_opaque_existential_1(v42, *(v42 + 3));
  MEMORY[0x1EEE9AC00](v43, v44);
  MEMORY[0x1EEE9AC00](v45, v46);
  v68[-4] = sub_1D615B4A4;
  v68[-3] = &v68[-6];
  v47 = v77;
  v48 = v78;
  v66 = sub_1D6695DC4;
  v67 = v35;
  sub_1D5D2BC70(v78, sub_1D615B49C, v49, sub_1D615B4A4, &v68[-6]);
  if (v47)
  {
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

    v50 = v79;
  }

  else
  {
    v77 = v42;

    sub_1D6695E40();
    sub_1D72647EC();
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

    v52 = v73;
    v69(v73, v70, v71);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v80) = v100;
    v78 = xmmword_1D728CF30;
    v83 = xmmword_1D728CF30;
    LOBYTE(v84) = 0;
    v99 = 0;
    v53 = swift_allocObject();
    v76 = v68;
    *(v53 + 16) = v78;
    *(v53 + 32) = v99;
    v54 = v72;
    *(v53 + 40) = v72;
    *(v53 + 48) = v31;
    MEMORY[0x1EEE9AC00](v53, v55);
    v68[-4] = sub_1D5B4AA6C;
    v68[-3] = 0;
    v66 = sub_1D6708A7C;
    v67 = v56;
    v99 = 0;
    v57 = swift_allocObject();
    *(v57 + 16) = v78;
    *(v57 + 32) = v99;
    *(v57 + 40) = v54;
    *(v57 + 48) = v31;
    swift_retain_n();
    v58 = sub_1D72647CC();
    v99 = 0;
    v59 = swift_allocObject();
    *(v59 + 16) = v58;
    *(v59 + 24) = v78;
    *(v59 + 40) = v99;
    v60 = __swift_project_boxed_opaque_existential_1(v77, *(v77 + 3));
    MEMORY[0x1EEE9AC00](v60, v61);
    MEMORY[0x1EEE9AC00](v62, v63);
    v68[-4] = sub_1D615B4A4;
    v68[-3] = &v68[-6];
    v66 = sub_1D6708A7C;
    v67 = v57;
    sub_1D5D2BC70(v52, sub_1D615B49C, v64, sub_1D615B4A4, &v68[-6]);

    sub_1D5E4FBF4();
    v65 = v79;
    sub_1D72647EC();
    sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);

    v50 = v65;
  }

  return sub_1D5D2CFE8(v50, sub_1D6695C9C);
}

unint64_t sub_1D64DD684(char a1)
{
  result = 0x6E616964656DLL;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x766E49726F6C6F63;
      break;
    case 4:
      result = 0x6C416F546B73616DLL;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
    case 10:
    case 11:
      result = 0x6666456F746F6870;
      break;
    case 9:
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0x6E6F546169706573;
      break;
    case 16:
      result = 0x6E61697373756167;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D64DD864()
{
  v1 = 0x646F4D646E656C62;
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
    return 0x746E656964617267;
  }
}

uint64_t sub_1D64DD8BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66963BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64DD8F4(uint64_t a1)
{
  v2 = sub_1D6695BA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64DD930(uint64_t a1)
{
  v2 = sub_1D6695BA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D64DD9CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6664598();
  *a1 = result;
  return result;
}

unint64_t sub_1D64DD9FC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D64DD684(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatImageAdjustmentMask.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v22 - v8;
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
    v10 = sub_1D7264AFC();
    v11 = Dictionary<>.errorOnUnknownKeys.getter(v10);

    v12 = v33;
    v13 = v23;
    if (v11)
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
          *(v20 + 16) = &unk_1F5115878;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v13 + 8))(v9, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D6695E94();
    v25 = 0uLL;
    sub_1D726431C();
    v24[8] = xmmword_1D7279980;
    sub_1D6695C48();
    sub_1D726431C();
    (*(v13 + 8))(v9, v6);
    v24[4] = v29;
    v24[5] = v30;
    v24[6] = v31;
    v24[7] = v32;
    v24[0] = v25;
    v24[1] = v26;
    v24[2] = v27;
    v24[3] = v28;
    nullsub_1();
    sub_1D5F78F40(v24, v12);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatImageAdjustmentMask.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F78F40(v1, v19);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatImageAdjustmentMask, &type metadata for FormatCodingKeys, v14, v11, &type metadata for FormatImageAdjustmentMask, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonG, v12, v10, v13, &off_1F51F6BF8);
  sub_1D5F78F40(v19, v20);
  v18[4] = v20[4];
  v18[5] = v20[5];
  v18[6] = v20[6];
  v18[7] = v20[7];
  v18[0] = v20[0];
  v18[1] = v20[1];
  v18[2] = v20[2];
  v18[3] = v20[3];
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v15 = sub_1D725BD1C();
  v16 = __swift_project_value_buffer(v15, qword_1EDFFCD18);
  (*(*(v15 - 8) + 16))(v6, v16, v15);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D6390884(v18, v6);
  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v10, sub_1D5D30DC4);
}

uint64_t FormatImageBackground.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D6695EE8();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6695F7C();
  sub_1D5B58B84(&qword_1EDF0C520, sub_1D6695F7C);
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

      v20 = sub_1D6627E68(0x746E65746E6F63, 0xE700000000000000, 0x656C797473, 0xE500000000000000);
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

  sub_1D5B57A54();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726431C();
  v17 = v28;
  type metadata accessor for FormatImageNodeStyle();
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D5B58B84(&unk_1EDF2B0D8, type metadata accessor for FormatImageNodeStyle);
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  v13[1] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatImageBackground.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v76 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v70 - v8;
  sub_1D66960FC();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v75 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D6695F7C();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF0C520, sub_1D6695F7C);
  sub_1D5D2EE70(&type metadata for FormatImageBackground, v19, v21, v16, &type metadata for FormatImageBackground, v19, &type metadata for FormatVersions.Azden, v17, v14, v20, &off_1F51F6B78);
  if (qword_1EDF31F10 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCDF8);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v72 = v23;
  v73 = v22;
  v70[2] = v24 + 16;
  v71 = v25;
  v25(v9);
  v70[1] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v86 = v15;
  v84 = 0uLL;
  v85 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v83 = 0;
  v29 = swift_allocObject();
  *&v80 = v70;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v83;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v79 = &v70[-6];
  v70[-4] = sub_1D5B4AA6C;
  v70[-3] = 0;
  v68 = sub_1D6708A80;
  v69 = v31;
  v83 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v83;
  v74 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D6696190();
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF03298, sub_1D6696190);
  swift_retain_n();
  v77 = v35;
  v78 = v34;
  v36 = sub_1D72647CC();
  v83 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v83;
  v38 = &v14[*(v11 + 36)];
  v39 = __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
  MEMORY[0x1EEE9AC00](v39, v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  v43 = v79;
  v70[-4] = sub_1D615B4A4;
  v70[-3] = v43;
  v68 = sub_1D6708A80;
  v69 = v32;
  v44 = v81;
  sub_1D5D2BC70(v9, sub_1D615B49C, v45, sub_1D615B4A4, &v70[-6]);
  v82 = v14;
  if (!v44)
  {
    v81 = v28;

    sub_1D5B55E48();
    sub_1D72647EC();
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v48 = v76;
    v71(v76, v72, v73);
    swift_storeEnumTagMultiPayload();
    v80 = xmmword_1D728CF30;
    v84 = xmmword_1D728CF30;
    v85 = 0;
    LOBYTE(v86) = 0;
    v49 = swift_allocObject();
    v51 = v49;
    *(v49 + 16) = v80;
    *(v49 + 32) = v86;
    v52 = v75;
    v53 = v81;
    *(v49 + 40) = v74;
    *(v49 + 48) = v53;
    if (v52)
    {
      v79 = v70;
      v86 = v52;
      MEMORY[0x1EEE9AC00](v49, v50);
      v55 = v54;
      v73 = &v70[-6];
      v70[-4] = sub_1D5B4AA6C;
      v70[-3] = 0;
      v68 = sub_1D6708A80;
      v69 = v51;
      v83 = 0;
      v56 = swift_allocObject();
      *(v56 + 16) = v80;
      *(v56 + 32) = v83;
      *(v56 + 40) = v55;
      *(v56 + 48) = v53;
      swift_retain_n();

      v57 = sub_1D72647CC();
      v83 = 0;
      v58 = swift_allocObject();
      *(v58 + 16) = v57;
      *(v58 + 24) = v80;
      *(v58 + 40) = v83;
      v59 = __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
      MEMORY[0x1EEE9AC00](v59, v60);
      MEMORY[0x1EEE9AC00](v61, v62);
      v63 = v73;
      v70[-4] = sub_1D615B4A4;
      v70[-3] = v63;
      v48 = v76;
      v68 = sub_1D6696224;
      v69 = v56;
      v65 = sub_1D5D2F7A4(v76, sub_1D615B49C, v64, sub_1D615B4A4, &v70[-6]);
      v66 = v65;

      if (v66)
      {
        type metadata accessor for FormatImageNodeStyle();
        sub_1D5B58B84(&qword_1EDF0F0F0, type metadata accessor for FormatImageNodeStyle);
        v67 = v82;
        sub_1D72647EC();

LABEL_14:

        sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);
        v46 = v67;
        return sub_1D5D2CFE8(v46, sub_1D66960FC);
      }
    }

    else
    {
    }

    v67 = v82;
    goto LABEL_14;
  }

  sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

  v46 = v82;
  return sub_1D5D2CFE8(v46, sub_1D66960FC);
}

uint64_t sub_1D64DEE04()
{
  v1 = 0x656C797473;
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

uint64_t sub_1D64DEE54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66964DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64DEE8C(uint64_t a1)
{
  v2 = sub_1D6696054();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64DEEC8(uint64_t a1)
{
  v2 = sub_1D6696054();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatImageGravity.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v72 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v71 = v60 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v70 = v60 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v69 = v60 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v68 = v60 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v67 = v60 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v66 = v60 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v65 = v60 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v64 = v60 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v63 = v60 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v62 = v60 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v61 = v60 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = v60 - v41;
  v77 = *v1;
  v43 = a1[3];
  v44 = a1[4];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v43);
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v45 = sub_1D725BD1C();
  v46 = __swift_project_value_buffer(v45, qword_1EDFFCD98);
  v47 = *(*(v45 - 8) + 16);
  v47(v42, v46, v45);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v48 = v74;
  sub_1D5D2BEC4(v42, sub_1D5B4AA6C, 0, v43, v44);
  if (v48)
  {
    return sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);
  v50 = v73;
  v51 = v73[3];
  v74 = v73[4];
  v60[1] = __swift_project_boxed_opaque_existential_1(v73, v51);
  if (v77 > 5)
  {
    v55 = v47;
    if (v77 > 8)
    {
      if (v77 == 9)
      {
        v53 = 9;
        v56 = v70;
        v55(v70, v46, v45);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v53 = v77;
        if (v77 != 10)
        {
          v59 = v72;
          v55(v72, v46, v45);
          swift_storeEnumTagMultiPayload();
          sub_1D5D2BEC4(v59, sub_1D5B4AA6C, 0, v51, v74);
          v57 = v59;
          goto LABEL_31;
        }

        v56 = v71;
        v55(v71, v46, v45);
        swift_storeEnumTagMultiPayload();
      }
    }

    else if (v77 == 6)
    {
      v53 = 6;
      v56 = v67;
      v55(v67, v46, v45);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v53 = v77;
      if (v77 == 7)
      {
        v56 = v68;
        v55(v68, v46, v45);
      }

      else
      {
        v56 = v69;
        v55(v69, v46, v45);
      }

      swift_storeEnumTagMultiPayload();
    }

LABEL_30:
    sub_1D5D2BEC4(v56, sub_1D5B4AA6C, 0, v51, v74);
    v57 = v56;
LABEL_31:
    sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);
    goto LABEL_32;
  }

  v52 = v47;
  if (v77 <= 2)
  {
    if (v77)
    {
      v53 = v77;
      if (v77 == 1)
      {
        v54 = v62;
        v52(v62, v46, v45);
      }

      else
      {
        v54 = v63;
        v52(v63, v46, v45);
      }

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v53 = 0;
      v54 = v61;
      v52(v61, v46, v45);
      swift_storeEnumTagMultiPayload();
    }

    goto LABEL_27;
  }

  if (v77 == 3)
  {
    v53 = 3;
    v54 = v64;
    v52(v64, v46, v45);
    swift_storeEnumTagMultiPayload();
    goto LABEL_27;
  }

  v53 = v77;
  if (v77 != 4)
  {
    v56 = v66;
    v52(v66, v46, v45);
    swift_storeEnumTagMultiPayload();
    goto LABEL_30;
  }

  v54 = v65;
  v52(v65, v46, v45);
  swift_storeEnumTagMultiPayload();
LABEL_27:
  sub_1D5D2BEC4(v54, sub_1D5B4AA6C, 0, v51, v74);
  sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);
LABEL_32:
  __swift_project_boxed_opaque_existential_1(v50, v50[3]);
  v58 = sub_1D7264B3C();
  v78 = v53;
  FormatImageGravity.rawValue.getter(v58);
  __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v75);
}

uint64_t FormatImageNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v323 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v327 = &v323 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v326 = &v323 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v329 = &v323 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v328 = &v323 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v330 = &v323 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v331 = &v323 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v332 = &v323 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v333 = &v323 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v336 = &v323 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v337 = &v323 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v338 = &v323 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v339 = &v323 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v340 = &v323 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  *&v347 = &v323 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v323 - v53;
  sub_1D66965F0();
  v349 = v55;
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = &v323 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a1[3];
  v60 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v59);
  sub_1D5C92B28();
  v62 = v61;
  v63 = sub_1D5B58B84(&qword_1EDF24B98, sub_1D5C92B28);
  sub_1D5D2EE70(v4, v62, v64, v59, v4, v62, &type metadata for FormatVersions.JazzkonC, v60, v58, v63, &off_1F51F6C78);
  swift_beginAccess();
  v345 = v2;
  v65 = v2[2];
  v66 = v2[3];
  v67 = qword_1EDF31EB0;

  if (v67 != -1)
  {
    swift_once();
  }

  v68 = sub_1D725BD1C();
  v69 = __swift_project_value_buffer(v68, qword_1EDFFCD30);
  v70 = *(v68 - 8);
  v71 = *(v70 + 16);
  v72 = v70 + 16;
  v344 = v69;
  v346 = v68;
  v71(v54);
  v73 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v74 = sub_1D725895C();
  v75 = (*(*(v74 - 8) + 48))(v8, 1, v74);
  v342 = v71;
  v343 = v73;
  if (v75 != 1)
  {
    sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
LABEL_7:
    v93 = v347;
    v94 = v349;
    goto LABEL_8;
  }

  v335 = v65;
  *&v348 = v72;
  sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v76 = v349;
  v77 = &v58[*(v349 + 11)];
  v79 = *v77;
  v78 = *(v77 + 1);
  LOBYTE(v351) = 0;
  v80 = swift_allocObject();
  *(v80 + 16) = 0;
  *(v80 + 24) = 0;
  *(v80 + 32) = v351;
  *(v80 + 40) = v79;
  *(v80 + 48) = v78;
  sub_1D5E1B6EC(0);
  v82 = v81;
  sub_1D5B58B84(&qword_1EDF02A58, sub_1D5E1B6EC);

  v341 = v82;
  v83 = sub_1D72647CC();
  LOBYTE(v351) = 0;
  v84 = swift_allocObject();
  *(v84 + 24) = 0;
  *(v84 + 32) = 0;
  *(v84 + 16) = v83;
  *(v84 + 40) = v351;
  v85 = __swift_project_boxed_opaque_existential_1(&v58[*(v76 + 36)], *&v58[*(v76 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v85, v86);
  MEMORY[0x1EEE9AC00](v87, v88);
  *(&v323 - 4) = sub_1D5B4AA6C;
  *(&v323 - 3) = 0;
  v321 = sub_1D6696684;
  v322 = v80;
  v89 = v350;
  v91 = sub_1D5D2F7A4(v54, sub_1D615B49C, v90, sub_1D615B4A4, (&v323 - 6));
  *&v350 = v89;
  if (v89)
  {
    sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);

    v92 = v58;
    return sub_1D5D2CFE8(v92, sub_1D66965F0);
  }

  v117 = v91;

  if ((v117 & 1) == 0)
  {
    sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);

    v71 = v342;
    v72 = v348;
    goto LABEL_7;
  }

  v351 = 0uLL;
  LOBYTE(v352) = 0;
  v364 = v335;
  v365 = v66;
  v118 = v350;
  sub_1D72647EC();

  sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);
  v71 = v342;
  v72 = v348;
  v93 = v347;
  v94 = v349;
  if (v118)
  {
    v92 = v58;
    return sub_1D5D2CFE8(v92, sub_1D66965F0);
  }

  *&v350 = 0;
LABEL_8:
  v95 = v345[4];
  (v71)(v93, v344, v346);
  swift_storeEnumTagMultiPayload();
  v364 = v95;
  v348 = xmmword_1D728CF30;
  v351 = xmmword_1D728CF30;
  LOBYTE(v352) = 0;
  v96 = &v58[*(v94 + 44)];
  v98 = *v96;
  v97 = *(v96 + 1);
  LOBYTE(v363) = 0;
  v99 = swift_allocObject();
  v341 = &v323;
  *(v99 + 16) = v348;
  *(v99 + 32) = v363;
  *(v99 + 40) = v98;
  *(v99 + 48) = v97;
  MEMORY[0x1EEE9AC00](v99, v100);
  *(&v323 - 4) = sub_1D5B4AA6C;
  *(&v323 - 3) = 0;
  v321 = sub_1D6708A84;
  v322 = v101;
  LOBYTE(v363) = 0;
  v102 = v93;
  v103 = swift_allocObject();
  *(v103 + 16) = v348;
  *(v103 + 32) = v363;
  v325 = v98;
  *(v103 + 40) = v98;
  *(v103 + 48) = v97;
  sub_1D5E1B6EC(0);
  v105 = v104;
  v106 = sub_1D5B58B84(&qword_1EDF02A58, sub_1D5E1B6EC);
  v324 = v97;
  swift_retain_n();
  v335 = v105;
  v334 = v106;
  v107 = sub_1D72647CC();
  LOBYTE(v363) = 0;
  v108 = swift_allocObject();
  *(v108 + 16) = v107;
  *(v108 + 24) = v348;
  *(v108 + 40) = v363;
  v109 = *(v349 + 9);
  v349 = v58;
  v110 = &v58[v109];
  v111 = __swift_project_boxed_opaque_existential_1(v110, *(v110 + 3));
  MEMORY[0x1EEE9AC00](v111, v112);
  MEMORY[0x1EEE9AC00](v113, v114);
  *(&v323 - 4) = sub_1D615B4A4;
  *(&v323 - 3) = (&v323 - 6);
  v321 = sub_1D6708A84;
  v322 = v103;
  v115 = v350;
  sub_1D5D2BC70(v102, sub_1D615B49C, v116, sub_1D615B4A4, (&v323 - 6));
  if (v115)
  {
    sub_1D5D2CFE8(v102, type metadata accessor for FormatVersionRequirement);

LABEL_20:
    v92 = v349;
    return sub_1D5D2CFE8(v92, sub_1D66965F0);
  }

  v323 = v110;
  *&v348 = v72;

  sub_1D5CA1E90();
  sub_1D72647EC();
  *&v350 = 0;
  sub_1D5D2CFE8(v347, type metadata accessor for FormatVersionRequirement);

  v119 = v345;
  v120 = v345[5];
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v121 = v346;
  v122 = __swift_project_value_buffer(v346, qword_1EDFFCD68);
  v123 = v340;
  v124 = v342;
  (v342)(v340, v122, v121);
  swift_storeEnumTagMultiPayload();
  v347 = xmmword_1D7297410;
  v351 = xmmword_1D7297410;
  LOBYTE(v352) = 0;
  LOBYTE(v364) = 0;
  v125 = swift_allocObject();
  v127 = v125;
  *(v125 + 16) = v347;
  *(v125 + 32) = v364;
  v128 = v325;
  v129 = v324;
  *(v125 + 40) = v325;
  *(v125 + 48) = v129;
  if (v120)
  {
    v364 = v120;
    MEMORY[0x1EEE9AC00](v125, v126);
    *(&v323 - 4) = sub_1D5B4AA6C;
    *(&v323 - 3) = 0;
    v321 = sub_1D6708A84;
    v322 = v127;
    LOBYTE(v363) = 0;
    v130 = swift_allocObject();
    *(v130 + 16) = v347;
    *(v130 + 32) = v363;
    *(v130 + 40) = v128;
    *(v130 + 48) = v129;
    swift_retain_n();

    v131 = sub_1D72647CC();
    LOBYTE(v363) = 0;
    v132 = swift_allocObject();
    *(v132 + 16) = v131;
    *(v132 + 24) = v347;
    *(v132 + 40) = v363;
    v133 = __swift_project_boxed_opaque_existential_1(v323, *(v323 + 3));
    MEMORY[0x1EEE9AC00](v133, v134);
    MEMORY[0x1EEE9AC00](v135, v136);
    *(&v323 - 4) = sub_1D615B4A4;
    *(&v323 - 3) = (&v323 - 6);
    v321 = sub_1D6708A84;
    v322 = v130;
    v137 = v350;
    v139 = sub_1D5D2F7A4(v123, sub_1D615B49C, v138, sub_1D615B4A4, (&v323 - 6));
    if (v137)
    {

      sub_1D5D2CFE8(v123, type metadata accessor for FormatVersionRequirement);
      goto LABEL_20;
    }

    v144 = v139;

    if (v144)
    {
      sub_1D6659D24();
      sub_1D72647EC();
      v124 = v342;
      v141 = v325;
      v142 = v339;
      v119 = v345;
      v143 = 0;

      v129 = v324;
    }

    else
    {
      v143 = 0;

      v124 = v342;
      v129 = v324;
      v141 = v325;
      v142 = v339;
      v119 = v345;
    }
  }

  else
  {

    v141 = v128;
    v142 = v339;
    v143 = v350;
  }

  sub_1D5D2CFE8(v340, type metadata accessor for FormatVersionRequirement);
  swift_beginAccess();
  v145 = v119[6];
  v124(v142, v344, v346);
  swift_storeEnumTagMultiPayload();
  if (!*(v145 + 16))
  {
    *&v350 = v143;
    sub_1D5D2CFE8(v142, type metadata accessor for FormatVersionRequirement);
    goto LABEL_34;
  }

  LOBYTE(v351) = 0;
  v146 = swift_allocObject();
  v350 = xmmword_1D72BAA60;
  *(v146 + 16) = xmmword_1D72BAA60;
  *(v146 + 32) = v351;
  *(v146 + 40) = v141;
  *(v146 + 48) = v129;

  v147 = v349;
  v148 = sub_1D72647CC();
  LOBYTE(v351) = 0;
  v149 = swift_allocObject();
  *(v149 + 16) = v148;
  *(v149 + 24) = v350;
  *(v149 + 40) = v351;
  v150 = __swift_project_boxed_opaque_existential_1(v323, *(v323 + 3));
  MEMORY[0x1EEE9AC00](v150, v151);
  MEMORY[0x1EEE9AC00](v152, v153);
  *(&v323 - 4) = sub_1D5B4AA6C;
  *(&v323 - 3) = 0;
  v321 = sub_1D6708A84;
  v322 = v146;
  v155 = sub_1D5D2F7A4(v142, sub_1D615B49C, v154, sub_1D615B4A4, (&v323 - 6));
  if (!v143)
  {
    v156 = v155;

    if (v156)
    {
      v351 = v350;
      LOBYTE(v352) = 0;
      v363 = v145;
      sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
      sub_1D6659C88();
      sub_1D72647EC();
      v124 = v342;
      v119 = v345;
      v141 = v325;
      *&v350 = 0;

      sub_1D5D2CFE8(v142, type metadata accessor for FormatVersionRequirement);
      v129 = v324;
    }

    else
    {
      *&v350 = 0;
      sub_1D5D2CFE8(v142, type metadata accessor for FormatVersionRequirement);

      v124 = v342;
      v129 = v324;
      v119 = v345;
      v141 = v325;
    }

LABEL_34:
    v157 = v119[7];
    v158 = v338;
    v124(v338, v344, v346);
    swift_storeEnumTagMultiPayload();
    v347 = xmmword_1D72BAA70;
    v351 = xmmword_1D72BAA70;
    LOBYTE(v352) = 0;
    LOBYTE(v363) = 0;
    v159 = swift_allocObject();
    v161 = v159;
    *(v159 + 16) = v347;
    *(v159 + 32) = v363;
    *(v159 + 40) = v141;
    *(v159 + 48) = v129;
    if (v157)
    {
      v341 = &v323;
      v363 = v157;
      MEMORY[0x1EEE9AC00](v159, v160);
      *(&v323 - 4) = sub_1D5B4AA6C;
      *(&v323 - 3) = 0;
      v321 = sub_1D6708A84;
      v322 = v161;
      LOBYTE(v362) = 0;
      v162 = v141;
      v163 = swift_allocObject();
      *(v163 + 16) = v347;
      *(v163 + 32) = v362;
      *(v163 + 40) = v162;
      *(v163 + 48) = v129;
      swift_retain_n();

      v164 = sub_1D72647CC();
      LOBYTE(v362) = 0;
      v165 = swift_allocObject();
      *(v165 + 16) = v164;
      *(v165 + 24) = v347;
      *(v165 + 40) = v362;
      v166 = __swift_project_boxed_opaque_existential_1(v323, *(v323 + 3));
      MEMORY[0x1EEE9AC00](v166, v167);
      MEMORY[0x1EEE9AC00](v168, v169);
      *(&v323 - 4) = sub_1D615B4A4;
      *(&v323 - 3) = (&v323 - 6);
      v321 = sub_1D6708A84;
      v322 = v163;
      v170 = v350;
      v172 = sub_1D5D2F7A4(v158, sub_1D615B49C, v171, sub_1D615B4A4, (&v323 - 6));
      v173 = v170;
      if (v170)
      {

        sub_1D5D2CFE8(v158, type metadata accessor for FormatVersionRequirement);
LABEL_54:
        v92 = v349;
        return sub_1D5D2CFE8(v92, sub_1D66965F0);
      }

      v176 = v172;

      if (v176)
      {
        type metadata accessor for FormatImageNodeStyle();
        sub_1D5B58B84(&qword_1EDF0F0F0, type metadata accessor for FormatImageNodeStyle);
        sub_1D72647EC();
        v174 = v346;
        v124 = v342;
        v175 = v345;
        v141 = v325;
      }

      else
      {

        v174 = v346;
        v124 = v342;
        v175 = v345;
        v141 = v325;
      }
    }

    else
    {

      v173 = v350;
      v174 = v346;
      v175 = v345;
    }

    sub_1D5D2CFE8(v338, type metadata accessor for FormatVersionRequirement);
    v177 = v175[8];
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v340 = __swift_project_value_buffer(v174, qword_1EDFFCD50);
    (v124)(v337);
    swift_storeEnumTagMultiPayload();
    v347 = xmmword_1D72BAA80;
    v351 = xmmword_1D72BAA80;
    LOBYTE(v352) = 0;
    LOBYTE(v363) = 0;
    v178 = swift_allocObject();
    v180 = v178;
    *(v178 + 16) = v347;
    *(v178 + 32) = v363;
    v181 = v324;
    *(v178 + 40) = v141;
    *(v178 + 48) = v181;
    if (v177)
    {
      v182 = v141;
      v341 = &v323;
      v363 = v177;
      MEMORY[0x1EEE9AC00](v178, v179);
      *&v350 = v173;
      *(&v323 - 4) = sub_1D5B4AA6C;
      *(&v323 - 3) = 0;
      v321 = sub_1D6708A84;
      v322 = v180;
      LOBYTE(v362) = 0;
      v183 = v177;
      v184 = swift_allocObject();
      *(v184 + 16) = v347;
      *(v184 + 32) = v362;
      *(v184 + 40) = v182;
      *(v184 + 48) = v181;
      swift_retain_n();

      v185 = sub_1D72647CC();
      LOBYTE(v362) = 0;
      v186 = swift_allocObject();
      *(v186 + 16) = v185;
      *(v186 + 24) = v347;
      *(v186 + 40) = v362;
      v187 = __swift_project_boxed_opaque_existential_1(v323, *(v323 + 3));
      MEMORY[0x1EEE9AC00](v187, v188);
      MEMORY[0x1EEE9AC00](v189, v190);
      *(&v323 - 4) = sub_1D615B4A4;
      *(&v323 - 3) = (&v323 - 6);
      v321 = sub_1D6708A84;
      v322 = v184;
      v191 = v337;
      v192 = v350;
      v194 = sub_1D5D2F7A4(v337, sub_1D615B49C, v193, sub_1D615B4A4, (&v323 - 6));
      v173 = v192;
      if (v192)
      {

        sub_1D5D2CFE8(v191, type metadata accessor for FormatVersionRequirement);
        goto LABEL_54;
      }

      v195 = v194;
      *&v350 = v183;

      if (v195)
      {
        type metadata accessor for FormatAnimationNodeStyle();
        sub_1D5B58B84(&unk_1EDF0D098, type metadata accessor for FormatAnimationNodeStyle);
        sub_1D72647EC();
        v174 = v346;
        v124 = v342;
      }

      else
      {

        v174 = v346;
        v124 = v342;
      }

      v181 = v324;
    }

    else
    {

      v191 = v337;
    }

    sub_1D5D2CFE8(v191, type metadata accessor for FormatVersionRequirement);
    v196 = v345[9];
    v124(v336, v344, v174);
    swift_storeEnumTagMultiPayload();
    v363 = v196;
    v350 = xmmword_1D72BAA90;
    v351 = xmmword_1D72BAA90;
    LOBYTE(v352) = 0;
    LOBYTE(v362) = 0;
    v197 = swift_allocObject();
    *&v347 = &v323;
    *(v197 + 16) = v350;
    *(v197 + 32) = v362;
    v198 = v325;
    *(v197 + 40) = v325;
    *(v197 + 48) = v181;
    MEMORY[0x1EEE9AC00](v197, v199);
    *(&v323 - 4) = sub_1D5B4AA6C;
    *(&v323 - 3) = 0;
    v321 = sub_1D6708A84;
    v322 = v200;
    LOBYTE(v362) = 0;
    v201 = swift_allocObject();
    *(v201 + 16) = v350;
    *(v201 + 32) = v362;
    *(v201 + 40) = v198;
    *(v201 + 48) = v181;
    swift_retain_n();
    v202 = sub_1D72647CC();
    LOBYTE(v362) = 0;
    v203 = swift_allocObject();
    *(v203 + 16) = v202;
    *(v203 + 24) = v350;
    *(v203 + 40) = v362;
    v204 = __swift_project_boxed_opaque_existential_1(v323, *(v323 + 3));
    MEMORY[0x1EEE9AC00](v204, v205);
    MEMORY[0x1EEE9AC00](v206, v207);
    *(&v323 - 4) = sub_1D615B4A4;
    *(&v323 - 3) = (&v323 - 6);
    v208 = v336;
    v321 = sub_1D6708A84;
    v322 = v201;
    sub_1D5D2BC70(v336, sub_1D615B49C, v209, sub_1D615B4A4, (&v323 - 6));
    if (v173)
    {
      sub_1D5D2CFE8(v208, type metadata accessor for FormatVersionRequirement);

      goto LABEL_54;
    }

    sub_1D5B55E48();
    sub_1D72647EC();
    sub_1D5D2CFE8(v208, type metadata accessor for FormatVersionRequirement);

    v210 = v345;
    swift_beginAccess();
    v211 = v210[10];
    v212 = v333;
    v213 = v346;
    v214 = v342;
    (v342)(v333, v344, v346);
    swift_storeEnumTagMultiPayload();
    if (v211)
    {
      LOBYTE(v351) = 0;
      v215 = swift_allocObject();
      v350 = xmmword_1D72BAAA0;
      *(v215 + 16) = xmmword_1D72BAAA0;
      *(v215 + 32) = v351;
      *(v215 + 40) = v325;
      *(v215 + 48) = v324;

      v216 = sub_1D72647CC();
      LOBYTE(v351) = 0;
      v217 = swift_allocObject();
      *(v217 + 16) = v216;
      *(v217 + 24) = v350;
      *(v217 + 40) = v351;
      v218 = __swift_project_boxed_opaque_existential_1(v323, *(v323 + 3));
      MEMORY[0x1EEE9AC00](v218, v219);
      MEMORY[0x1EEE9AC00](v220, v221);
      *(&v323 - 4) = sub_1D5B4AA6C;
      *(&v323 - 3) = 0;
      v321 = sub_1D6708A84;
      v322 = v215;
      sub_1D5D2F7A4(v212, sub_1D615B49C, v222, sub_1D615B4A4, (&v323 - 6));

      v351 = v350;
      LOBYTE(v352) = 0;
      v362 = v211;
      sub_1D72647EC();
      sub_1D5D2CFE8(v333, type metadata accessor for FormatVersionRequirement);
      v213 = v346;
      v214 = v342;
    }

    else
    {
      sub_1D5D2CFE8(v212, type metadata accessor for FormatVersionRequirement);
    }

    v223 = v324;
    v224 = v332;
    v225 = v345;
    swift_beginAccess();
    v226 = v225[11];
    v214(v224, v340, v213);
    swift_storeEnumTagMultiPayload();
    if (v226 == 0x8000000000000000)
    {
      sub_1D5D2CFE8(v224, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      LOBYTE(v351) = 0;
      v227 = swift_allocObject();
      v350 = xmmword_1D72BAAB0;
      *(v227 + 16) = xmmword_1D72BAAB0;
      *(v227 + 32) = v351;
      *(v227 + 40) = v325;
      *(v227 + 48) = v223;

      sub_1D5EB1500(v226);
      v228 = sub_1D72647CC();
      LOBYTE(v351) = 0;
      v229 = swift_allocObject();
      *(v229 + 16) = v228;
      *(v229 + 24) = v350;
      *(v229 + 40) = v351;
      v230 = __swift_project_boxed_opaque_existential_1(v323, *(v323 + 3));
      MEMORY[0x1EEE9AC00](v230, v231);
      MEMORY[0x1EEE9AC00](v232, v233);
      *(&v323 - 4) = sub_1D5B4AA6C;
      *(&v323 - 3) = 0;
      v321 = sub_1D6708A84;
      v322 = v227;
      LOBYTE(v228) = sub_1D5D2F7A4(v224, sub_1D615B49C, v234, sub_1D615B4A4, (&v323 - 6));

      if (v228)
      {
        v351 = v350;
        LOBYTE(v352) = 0;
        v361 = v226;
        sub_1D5DF6A60();
        sub_1D72647EC();
        sub_1D5EB15C4(v361);
        sub_1D5D2CFE8(v332, type metadata accessor for FormatVersionRequirement);
        v225 = v345;
      }

      else
      {
        sub_1D5EB15C4(v226);
        sub_1D5D2CFE8(v332, type metadata accessor for FormatVersionRequirement);
      }

      v213 = v346;
      v214 = v342;
    }

    swift_beginAccess();
    v235 = *(v225 + 96);
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v236 = __swift_project_value_buffer(v213, qword_1EDFFCD00);
    v237 = v331;
    v214(v331, v236, v213);
    swift_storeEnumTagMultiPayload();
    if (v235)
    {
      sub_1D5D2CFE8(v237, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      LOBYTE(v351) = 0;
      v238 = swift_allocObject();
      v350 = xmmword_1D72BAAC0;
      *(v238 + 16) = xmmword_1D72BAAC0;
      *(v238 + 32) = v351;
      *(v238 + 40) = v325;
      *(v238 + 48) = v324;

      v239 = sub_1D72647CC();
      LOBYTE(v351) = 0;
      v240 = swift_allocObject();
      *(v240 + 16) = v239;
      *(v240 + 24) = v350;
      *(v240 + 40) = v351;
      v241 = __swift_project_boxed_opaque_existential_1(v323, *(v323 + 3));
      MEMORY[0x1EEE9AC00](v241, v242);
      MEMORY[0x1EEE9AC00](v243, v244);
      *(&v323 - 4) = sub_1D5B4AA6C;
      *(&v323 - 3) = 0;
      v321 = sub_1D6708A84;
      v322 = v238;
      sub_1D5D2F7A4(v237, sub_1D615B49C, v245, sub_1D615B4A4, (&v323 - 6));

      v351 = v350;
      LOBYTE(v352) = 0;
      v360 = 0;
      sub_1D72647EC();
      sub_1D5D2CFE8(v331, type metadata accessor for FormatVersionRequirement);
      v225 = v345;
      v213 = v346;
      v214 = v342;
    }

    swift_beginAccess();
    v246 = *(v225 + 97);
    v247 = v330;
    v214(v330, v236, v213);
    swift_storeEnumTagMultiPayload();
    if (v246)
    {
      LOBYTE(v351) = 0;
      v248 = swift_allocObject();
      v347 = xmmword_1D72BAAD0;
      *(v248 + 16) = xmmword_1D72BAAD0;
      *(v248 + 32) = v351;
      *(v248 + 40) = v325;
      *(v248 + 48) = v324;

      v249 = sub_1D72647CC();
      LOBYTE(v351) = 0;
      v250 = swift_allocObject();
      *(v250 + 16) = v249;
      *(v250 + 24) = v347;
      *(v250 + 40) = v351;
      v251 = __swift_project_boxed_opaque_existential_1(v323, *(v323 + 3));
      MEMORY[0x1EEE9AC00](v251, v252);
      MEMORY[0x1EEE9AC00](v253, v254);
      *(&v323 - 4) = sub_1D5B4AA6C;
      *(&v323 - 3) = 0;
      v321 = sub_1D6708A84;
      v322 = v248;
      v256 = sub_1D5D2F7A4(v247, sub_1D615B49C, v255, sub_1D615B4A4, (&v323 - 6));
      *&v350 = 0;

      if (v256)
      {
        v351 = v347;
        LOBYTE(v352) = 0;
        LOBYTE(v358) = 1;
        v257 = v350;
        sub_1D72647EC();
        *&v350 = v257;
        if (v257)
        {
          v258 = (&v356 + 8);
LABEL_104:
          sub_1D5D2CFE8(*(v258 - 32), type metadata accessor for FormatVersionRequirement);
          goto LABEL_105;
        }
      }

      sub_1D5D2CFE8(v330, type metadata accessor for FormatVersionRequirement);
      v225 = v345;
      v213 = v346;
      v214 = v342;
    }

    else
    {
      *&v350 = 0;
      sub_1D5D2CFE8(v247, type metadata accessor for FormatVersionRequirement);
    }

    v259 = v225[13];
    v260 = *(v225 + 112);
    v261 = v328;
    v214(v328, v344, v213);
    swift_storeEnumTagMultiPayload();
    v347 = xmmword_1D72BAAE0;
    v351 = xmmword_1D72BAAE0;
    LOBYTE(v352) = 0;
    LOBYTE(v358) = 0;
    v262 = swift_allocObject();
    v264 = v262;
    *(v262 + 16) = v347;
    *(v262 + 32) = v358;
    v265 = v324;
    *(v262 + 40) = v325;
    *(v262 + 48) = v265;
    if (v260 <= 0xFD)
    {
      v358 = v259;
      v359 = v260;
      MEMORY[0x1EEE9AC00](v262, v263);
      *(&v323 - 4) = sub_1D5B4AA6C;
      *(&v323 - 3) = 0;
      v321 = sub_1D6708A84;
      v322 = v264;
      LOBYTE(v356) = 0;
      v266 = swift_allocObject();
      *(v266 + 16) = v347;
      *(v266 + 32) = v356;
      *(v266 + 40) = v325;
      *(v266 + 48) = v265;
      swift_retain_n();
      v267 = sub_1D72647CC();
      LOBYTE(v356) = 0;
      v268 = swift_allocObject();
      *(v268 + 16) = v267;
      *(v268 + 24) = v347;
      *(v268 + 40) = v356;
      v269 = __swift_project_boxed_opaque_existential_1(v323, *(v323 + 3));
      MEMORY[0x1EEE9AC00](v269, v270);
      MEMORY[0x1EEE9AC00](v271, v272);
      *(&v323 - 4) = sub_1D615B4A4;
      *(&v323 - 3) = (&v323 - 6);
      v321 = sub_1D6708A84;
      v322 = v266;
      v273 = v350;
      v275 = sub_1D5D2F7A4(v261, sub_1D615B49C, v274, sub_1D615B4A4, (&v323 - 6));
      *&v350 = v273;
      if (v273)
      {
        sub_1D5D2CFE8(v328, type metadata accessor for FormatVersionRequirement);

LABEL_105:
        v92 = v349;
        return sub_1D5D2CFE8(v92, sub_1D66965F0);
      }

      v276 = v275;

      if (v276)
      {
        sub_1D5F8F434();
        v277 = v350;
        sub_1D72647EC();
        *&v350 = v277;
        if (v277)
        {
          v278 = &v355;
LABEL_99:
          sub_1D5D2CFE8(*(v278 - 32), type metadata accessor for FormatVersionRequirement);

          goto LABEL_105;
        }
      }

      v225 = v345;
      v261 = v328;
    }

    else
    {
    }

    sub_1D5D2CFE8(v261, type metadata accessor for FormatVersionRequirement);

    swift_beginAccess();
    v279 = v225[15];
    v280 = qword_1EDF31EA8;

    if (v280 != -1)
    {
      swift_once();
    }

    v281 = v346;
    v282 = __swift_project_value_buffer(v346, qword_1EDFFCD18);
    (v342)(v329, v282, v281);
    swift_storeEnumTagMultiPayload();
    if (*(v279 + 16))
    {
      LOBYTE(v351) = 0;
      v283 = swift_allocObject();
      v347 = xmmword_1D72BAAF0;
      *(v283 + 16) = xmmword_1D72BAAF0;
      *(v283 + 32) = v351;
      *(v283 + 40) = v325;
      *(v283 + 48) = v324;

      v284 = sub_1D72647CC();
      LOBYTE(v351) = 0;
      v285 = swift_allocObject();
      *(v285 + 16) = v284;
      *(v285 + 24) = v347;
      *(v285 + 40) = v351;
      v286 = __swift_project_boxed_opaque_existential_1(v323, *(v323 + 3));
      MEMORY[0x1EEE9AC00](v286, v287);
      MEMORY[0x1EEE9AC00](v288, v289);
      *(&v323 - 4) = sub_1D5B4AA6C;
      *(&v323 - 3) = 0;
      v321 = sub_1D6708A84;
      v322 = v283;
      v290 = v350;
      v292 = sub_1D5D2F7A4(v329, sub_1D615B49C, v291, sub_1D615B4A4, (&v323 - 6));
      *&v350 = v290;
      if (v290)
      {

LABEL_89:
        v258 = &v356;
        goto LABEL_104;
      }

      v293 = v292;

      if (v293)
      {
        v294 = v350;
        sub_1D5E08C6C(v279, v349, 0xC, 0, 0);
        *&v350 = v294;
        if (v294)
        {

          goto LABEL_89;
        }
      }
    }

    sub_1D5D2CFE8(v329, type metadata accessor for FormatVersionRequirement);
    v295 = v326;
    (v342)(v326, v340, v346);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v295, type metadata accessor for FormatVersionRequirement);
    v296 = v345[18];
    v297 = v345[19];
    v298 = v345[20];
    v299 = v345[21];
    v300 = v345[22];
    v301 = v345[23];
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v302 = v346;
    v303 = __swift_project_value_buffer(v346, qword_1EDFFCE38);
    (v342)(v327, v303, v302);
    swift_storeEnumTagMultiPayload();
    v348 = xmmword_1D72BAB00;
    v356 = xmmword_1D72BAB00;
    v357 = 0;
    LOBYTE(v351) = 0;
    v304 = swift_allocObject();
    v306 = v304;
    *(v304 + 16) = v348;
    *(v304 + 32) = v351;
    v307 = v324;
    *(v304 + 40) = v325;
    *(v304 + 48) = v307;
    if (v296)
    {
      *&v347 = &v323;
      *&v351 = v296;
      *(&v351 + 1) = v297;
      v352 = v298;
      v353 = v299;
      v354 = v300;
      v355 = v301;
      MEMORY[0x1EEE9AC00](v304, v305);
      *(&v323 - 4) = sub_1D5B4AA6C;
      *(&v323 - 3) = 0;
      v321 = sub_1D6708A84;
      v322 = v306;
      v366 = 0;
      v308 = swift_allocObject();
      *(v308 + 16) = v348;
      *(v308 + 32) = v366;
      *(v308 + 40) = v325;
      *(v308 + 48) = v324;
      swift_retain_n();
      sub_1D5EB1D80(v296, v297, v298, v299, v300);
      v309 = sub_1D72647CC();
      v366 = 0;
      v310 = swift_allocObject();
      *(v310 + 16) = v309;
      *(v310 + 24) = v348;
      *(v310 + 40) = v366;
      v311 = __swift_project_boxed_opaque_existential_1(v323, *(v323 + 3));
      MEMORY[0x1EEE9AC00](v311, v312);
      MEMORY[0x1EEE9AC00](v313, v314);
      *(&v323 - 4) = sub_1D615B4A4;
      *(&v323 - 3) = (&v323 - 6);
      v321 = sub_1D6708A84;
      v322 = v308;
      v315 = v350;
      v317 = sub_1D5D2F7A4(v327, sub_1D615B49C, v316, sub_1D615B4A4, (&v323 - 6));
      *&v350 = v315;
      if (v315)
      {
      }

      else
      {
        v318 = v317;

        if (v318)
        {
          sub_1D6659A24();
          v319 = v350;
          sub_1D72647EC();
          *&v350 = v319;
        }
      }

      v320 = v354;

      sub_1D5CBF568(v320);

      v258 = &v354;
      goto LABEL_104;
    }

    v278 = &v354;
    goto LABEL_99;
  }

  sub_1D5D2CFE8(v142, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v147, sub_1D66965F0);
}

uint64_t sub_1D64E3358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66976EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64E3390(uint64_t a1)
{
  v2 = sub_1D5C83F08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64E33CC(uint64_t a1)
{
  v2 = sub_1D5C83F08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatImageNodeBinding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v81 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v80 = &v75 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v79 = &v75 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v78 = &v75 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v75 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v77 = &v75 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v76 = &v75 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v75 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v75 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v75 - v35;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v40 = &v75 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *v1;
  v42 = *(v1 + 8);
  v43 = *(v1 + 24);
  v85 = *(v1 + 16);
  v86 = v41;
  v83 = v43;
  v84 = v42;
  v82 = *(v1 + 32);
  v44 = *(v1 + 40);
  v45 = a1[3];
  v46 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v45);
  v47 = sub_1D5C30408();
  v97 = v40;
  sub_1D5D2EE70(&type metadata for FormatImageNodeBinding, &type metadata for FormatCodingKeys, v48, v45, &type metadata for FormatImageNodeBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v46, v40, v47, &off_1F51F6C78);
  v49 = (v44 >> 1) & 0xF;
  if (v49 > 4)
  {
    if (((v44 >> 1) & 0xF) <= 6)
    {
      v50 = v97;
      if (v49 == 5)
      {
        if (qword_1EDF31E80 != -1)
        {
          swift_once();
        }

        v58 = sub_1D725BD1C();
        v59 = __swift_project_value_buffer(v58, qword_1EDFFCCA8);
        (*(*(v58 - 8) + 16))(v18, v59, v58);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D6399DE4(5, v18);
      }

      else
      {
        if (qword_1EDF31F50 != -1)
        {
          swift_once();
        }

        v73 = sub_1D725BD1C();
        v74 = __swift_project_value_buffer(v73, qword_1EDFFCE80);
        v18 = v78;
        (*(*(v73 - 8) + 16))(v78, v74, v73);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D6399F70(6, v86 & 1, v18);
      }
    }

    else if (v49 == 7)
    {
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v62 = sub_1D725BD1C();
      v63 = __swift_project_value_buffer(v62, qword_1EDFFCD98);
      v18 = v79;
      (*(*(v62 - 8) + 16))(v79, v63, v62);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v50 = v97;
      sub_1D639A108(7, v86, v84, v85, v18);
    }

    else if (v49 == 8)
    {
      *&v92 = v86;
      *(&v92 + 1) = v84;
      v93 = v85;
      v94 = v83;
      v95 = v82;
      v96 = v44 & 1;
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v53 = sub_1D725BD1C();
      v54 = __swift_project_value_buffer(v53, qword_1EDFFCD68);
      v18 = v80;
      (*(*(v53 - 8) + 16))(v80, v54, v53);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v50 = v97;
      sub_1D639A2A0(8, &v92, v18);
    }

    else
    {
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v69 = sub_1D725BD1C();
      v70 = __swift_project_value_buffer(v69, qword_1EDFFCE38);
      v18 = v81;
      (*(*(v69 - 8) + 16))(v81, v70, v69);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v50 = v97;
      sub_1D639A440(9, v86 & 1, v18);
    }

    v57 = v18;
    goto LABEL_42;
  }

  if (((v44 >> 1) & 0xF) <= 1)
  {
    if (v49)
    {
      v50 = v97;
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v71 = sub_1D725BD1C();
      v72 = __swift_project_value_buffer(v71, qword_1EDFFCD98);
      (*(*(v71 - 8) + 16))(v32, v72, v71);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6399780(1, v86 & 1, v32);
      v57 = v32;
    }

    else
    {
      v50 = v97;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v55 = sub_1D725BD1C();
      v56 = __swift_project_value_buffer(v55, qword_1EDFFCD30);
      (*(*(v55 - 8) + 16))(v36, v56, v55);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63995EC(0, v86, v36);
      v57 = v36;
    }

    goto LABEL_42;
  }

  if (v49 == 2)
  {
    *&v87 = v86;
    *(&v87 + 1) = v84;
    v88 = v85;
    v89 = v83;
    v90 = v82;
    v91 = v44 & 0xE1;
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v60 = sub_1D725BD1C();
    v61 = __swift_project_value_buffer(v60, qword_1EDFFCD30);
    (*(*(v60 - 8) + 16))(v28, v61, v60);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v50 = v97;
    sub_1D6399918(2, &v87, v28);
    goto LABEL_25;
  }

  if (v49 == 3)
  {
    v50 = v97;
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v51 = sub_1D725BD1C();
    v52 = __swift_project_value_buffer(v51, qword_1EDFFCD98);
    v28 = v76;
    (*(*(v51 - 8) + 16))(v76, v52, v51);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6399AB8(3, v86, v84, v85, v83, v28);
LABEL_25:
    v57 = v28;
LABEL_42:
    sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CFE8(v50, sub_1D5D30DC4);
  }

  v64 = v97;
  if (qword_1EDF31E80 != -1)
  {
    swift_once();
  }

  v65 = sub_1D725BD1C();
  v66 = __swift_project_value_buffer(v65, qword_1EDFFCCA8);
  v67 = v77;
  (*(*(v65 - 8) + 16))(v77, v66, v65);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D6399C50(4, v86, v67);
  sub_1D5D2CFE8(v67, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v64, sub_1D5D30DC4);
}

uint64_t sub_1D64E3EF4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6E6F6974706FLL;
    v6 = 0x76457374726F7073;
    if (a1 != 8)
    {
      v6 = 0x657069636572;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x7954656C7A7A7570;
    if (a1 != 5)
    {
      v7 = 0x7453656C7A7A7570;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x656E696C64616568;
    v2 = 0x70756F7267;
    v3 = 6775156;
    if (a1 != 3)
    {
      v3 = 0x656C7A7A7570;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6575737369;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D64E408C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D64E3EF4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatImageNodeRequest.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D6696864();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66968F8();
  sub_1D5B58B84(&qword_1EDF25268, sub_1D66968F8);
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

      v20 = sub_1D6627E68(1702521203, 0xE400000000000000, 1752457584, 0xE400000000000000);
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

  sub_1D6696A78();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726427C();
  v17 = v28;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D6696ACC();
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  v13[1] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatImageNodeRequest.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v85 = v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v74 - v8;
  sub_1D6696B20();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  *&v84 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D66968F8();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF25268, sub_1D66968F8);
  sub_1D5D2EE70(&type metadata for FormatImageNodeRequest, v19, v21, v16, &type metadata for FormatImageNodeRequest, v19, &type metadata for FormatVersions.StarSkyC, v17, v14, v20, &off_1F51F6B18);
  if (qword_1EDF31E98 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD00);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v82 = v24 + 16;
  v83 = v25;
  (v25)(v9, v23, v22);
  v81 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v88 = 0uLL;
  v89 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  LOBYTE(v90) = 0;
  v29 = swift_allocObject();
  v31 = v29;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v90;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  if (v15)
  {
    v74[2] = v23;
    v78 = v74;
    v90 = v15;
    MEMORY[0x1EEE9AC00](v29, v30);
    v79 = v9;
    v74[-4] = sub_1D5B4AA6C;
    v74[-3] = 0;
    v72 = sub_1D6708A88;
    v73 = v31;
    v87 = 0;
    v32 = swift_allocObject();
    v33 = v27;
    v34 = v32;
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    *(v32 + 32) = v87;
    v76 = v33;
    *(v32 + 40) = v33;
    *(v32 + 48) = v28;
    sub_1D6696BB4();
    v35 = v14;
    v37 = v36;
    v38 = sub_1D5B58B84(&qword_1EDF03238, sub_1D6696BB4);
    v75 = v28;
    swift_retain_n();

    v39 = v11;
    v74[1] = v37;
    v40 = v38;
    v41 = sub_1D72647CC();
    v87 = 0;
    v42 = swift_allocObject();
    *(v42 + 24) = 0;
    *(v42 + 32) = 0;
    *(v42 + 16) = v41;
    *(v42 + 40) = v87;
    v43 = *(v39 + 36);
    v80 = v35;
    v44 = __swift_project_boxed_opaque_existential_1(&v35[v43], *&v35[v43 + 24]);
    MEMORY[0x1EEE9AC00](v44, v45);
    MEMORY[0x1EEE9AC00](v46, v47);
    v74[-4] = sub_1D615B4A4;
    v74[-3] = &v74[-6];
    v48 = v79;
    v72 = sub_1D6708A88;
    v73 = v34;
    v49 = v86;
    v51 = sub_1D5D2F7A4(v79, sub_1D615B49C, v50, sub_1D615B4A4, &v74[-6]);
    if (v49)
    {

      v14 = v80;

      v52 = v48;
LABEL_18:
      sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v14, sub_1D6696B20);
    }

    v54 = v51;
    v86 = v40;
    v77 = v39;

    if (v54)
    {
      sub_1D6696D18();
      v14 = v80;
      sub_1D72647EC();
      v53 = v84;
      v27 = v76;
      v86 = 0;

      sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);
      v28 = v75;
    }

    else
    {
      v86 = 0;

      sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);
      v14 = v80;
      v53 = v84;
      v28 = v75;
      v27 = v76;
    }
  }

  else
  {
    v77 = v11;

    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v53 = v84;
  }

  v55 = v85;
  v83();
  swift_storeEnumTagMultiPayload();
  v84 = xmmword_1D728CF30;
  v88 = xmmword_1D728CF30;
  v89 = 0;
  LOBYTE(v90) = 0;
  v56 = swift_allocObject();
  v58 = v56;
  *(v56 + 16) = v84;
  *(v56 + 32) = v90;
  *(v56 + 40) = v27;
  *(v56 + 48) = v28;
  if (v53)
  {
    v83 = v74;
    v90 = v53;
    MEMORY[0x1EEE9AC00](v56, v57);
    v74[-4] = sub_1D5B4AA6C;
    v74[-3] = 0;
    v72 = sub_1D6708A88;
    v73 = v58;
    v87 = 0;
    v59 = swift_allocObject();
    *(v59 + 16) = v84;
    *(v59 + 32) = v87;
    *(v59 + 40) = v27;
    *(v59 + 48) = v28;
    sub_1D6696BB4();
    sub_1D5B58B84(&qword_1EDF03238, sub_1D6696BB4);
    swift_retain_n();

    v60 = sub_1D72647CC();
    v87 = 0;
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = v84;
    *(v61 + 40) = v87;
    v62 = __swift_project_boxed_opaque_existential_1(&v14[*(v77 + 36)], *&v14[*(v77 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v62, v63);
    MEMORY[0x1EEE9AC00](v64, v65);
    v74[-4] = sub_1D615B4A4;
    v74[-3] = &v74[-6];
    v67 = v85;
    v66 = v86;
    v72 = sub_1D6696C48;
    v73 = v59;
    v69 = sub_1D5D2F7A4(v85, sub_1D615B49C, v68, sub_1D615B4A4, &v74[-6]);
    if (v66)
    {
    }

    else
    {
      v70 = v69;

      if (v70)
      {
        sub_1D6696CC4();
        sub_1D72647EC();
      }
    }

    v52 = v67;
    goto LABEL_18;
  }

  sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v14, sub_1D6696B20);
}

uint64_t sub_1D64E4DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6697BE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64E4E10(uint64_t a1)
{
  v2 = sub_1D66969D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64E4E4C(uint64_t a1)
{
  v2 = sub_1D66969D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatImageNodeRequestAdjustment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v28[-v8 - 16];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_22:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();
  }

  else
  {
    v11 = v6;
    v12 = v30;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    if (v14)
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
          v10 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F5115918;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v9, v5);
          goto LABEL_22;
        }
      }
    }

    sub_1D6696D6C();
    *v28 = 0uLL;
    sub_1D726431C();
    switch(v27)
    {
      case 1:
        v27 = xmmword_1D7279980;
        sub_1D5CBE83C();
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v25 = 0;
        v22 = *v28;
        v24 = *&v28[8];
        v23 = v29;
        break;
      case 2:
        sub_1D5C71DC8();
        *v28 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v23 = 0;
        v22 = v27;
        v24 = 0uLL;
        v25 = 1;
        break;
      case 3:
        sub_1D5C71DC8();
        *v28 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v23 = 0;
        v22 = v27;
        v24 = 0uLL;
        v25 = 2;
        break;
      case 4:
        sub_1D5C71DC8();
        *v28 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v23 = 0;
        v22 = v27;
        v24 = 0uLL;
        v25 = 3;
        break;
      case 5:
        sub_1D5C71DC8();
        *v28 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v23 = 0;
        v22 = v27;
        v24 = 0uLL;
        v25 = 4;
        break;
      case 6:
        sub_1D5C71DC8();
        *v28 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v23 = 0;
        v22 = v27;
        v24 = 0uLL;
        v25 = 5;
        break;
      case 7:
        sub_1D5C71DC8();
        *v28 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v23 = 0;
        v22 = v27;
        v24 = 0uLL;
        v25 = 6;
        break;
      case 8:
        sub_1D5C71DC8();
        *v28 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v23 = 0;
        v22 = v27;
        v24 = 0uLL;
        v25 = 7;
        break;
      case 9:
        sub_1D5C71DC8();
        *v28 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v23 = 0;
        v22 = v27;
        v24 = 0uLL;
        v25 = 8;
        break;
      case 10:
        sub_1D5C71DC8();
        *v28 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v23 = 0;
        v22 = v27;
        v24 = 0uLL;
        v25 = 9;
        break;
      case 11:
        sub_1D5C71DC8();
        *v28 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v23 = 0;
        v22 = v27;
        v24 = 0uLL;
        v25 = 10;
        break;
      case 12:
        sub_1D5C71DC8();
        *v28 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v23 = 0;
        v22 = v27;
        v24 = 0uLL;
        v25 = 11;
        break;
      default:
        (*(v11 + 8))(v9, v5);
        v22 = 0;
        v23 = 0;
        v24 = 0uLL;
        v25 = 12;
        break;
    }

    *v12 = v22;
    *(v12 + 8) = v24;
    *(v12 + 24) = v23;
    *(v12 + 32) = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatImageNodeRequestAdjustment.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v99 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v98 = &v88 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v97 = &v88 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v96 = &v88 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v95 = &v88 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v94 = &v88 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v93 = &v88 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v92 = &v88 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v91 = &v88 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v88 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v88 - v36;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v88 - v40;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v88 - v44;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v46 - 8, v47);
  v49 = &v88 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(v1 + 8);
  v100 = *v1;
  v51 = *(v1 + 24);
  v89 = *(v1 + 16);
  v90 = v50;
  v88 = v51;
  v52 = *(v1 + 32);
  v53 = a1[3];
  v54 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v53);
  v55 = sub_1D5C30408();
  v101 = v49;
  sub_1D5D2EE70(&type metadata for FormatImageNodeRequestAdjustment, &type metadata for FormatCodingKeys, v56, v53, &type metadata for FormatImageNodeRequestAdjustment, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyC, v54, v49, v55, &off_1F51F6B18);
  switch(v52)
  {
    case 1:
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v77 = sub_1D725BD1C();
      v78 = __swift_project_value_buffer(v77, qword_1EDFFCD00);
      (*(*(v77 - 8) + 16))(v37, v78, v77);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v101;
      sub_1D6388544(2, v100, v37);
      v60 = v37;
      break;
    case 2:
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v70 = sub_1D725BD1C();
      v71 = __swift_project_value_buffer(v70, qword_1EDFFCD00);
      (*(*(v70 - 8) + 16))(v33, v71, v70);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v101;
      sub_1D6388544(3, v100, v33);
      v60 = v33;
      break;
    case 3:
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v72 = sub_1D725BD1C();
      v73 = __swift_project_value_buffer(v72, qword_1EDFFCD00);
      v74 = v91;
      (*(*(v72 - 8) + 16))(v91, v73, v72);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v101;
      sub_1D6388544(4, v100, v74);
      v60 = v74;
      break;
    case 4:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v64 = sub_1D725BD1C();
      v65 = __swift_project_value_buffer(v64, qword_1EDFFCD80);
      v45 = v92;
      (*(*(v64 - 8) + 16))(v92, v65, v64);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v63 = 5;
      goto LABEL_41;
    case 5:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v79 = sub_1D725BD1C();
      v80 = __swift_project_value_buffer(v79, qword_1EDFFCD80);
      v45 = v93;
      (*(*(v79 - 8) + 16))(v93, v80, v79);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v63 = 6;
      goto LABEL_41;
    case 6:
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v81 = sub_1D725BD1C();
      v82 = __swift_project_value_buffer(v81, qword_1EDFFCD00);
      v45 = v94;
      (*(*(v81 - 8) + 16))(v94, v82, v81);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v63 = 7;
      goto LABEL_41;
    case 7:
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v75 = sub_1D725BD1C();
      v76 = __swift_project_value_buffer(v75, qword_1EDFFCD00);
      v45 = v95;
      (*(*(v75 - 8) + 16))(v95, v76, v75);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v63 = 8;
      goto LABEL_41;
    case 8:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v85 = sub_1D725BD1C();
      v86 = __swift_project_value_buffer(v85, qword_1EDFFCD80);
      v45 = v96;
      (*(*(v85 - 8) + 16))(v96, v86, v85);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v63 = 9;
      goto LABEL_41;
    case 9:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v68 = sub_1D725BD1C();
      v69 = __swift_project_value_buffer(v68, qword_1EDFFCD80);
      v45 = v97;
      (*(*(v68 - 8) + 16))(v97, v69, v68);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v63 = 10;
      goto LABEL_41;
    case 10:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v83 = sub_1D725BD1C();
      v84 = __swift_project_value_buffer(v83, qword_1EDFFCD80);
      v45 = v98;
      (*(*(v83 - 8) + 16))(v98, v84, v83);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v63 = 11;
      goto LABEL_41;
    case 11:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v61 = sub_1D725BD1C();
      v62 = __swift_project_value_buffer(v61, qword_1EDFFCD80);
      v45 = v99;
      (*(*(v61 - 8) + 16))(v99, v62, v61);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v63 = 12;
LABEL_41:
      v59 = v101;
      sub_1D6388544(v63, v100, v45);
      goto LABEL_42;
    case 12:
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v66 = sub_1D725BD1C();
      v67 = __swift_project_value_buffer(v66, qword_1EDFFCD00);
      (*(*(v66 - 8) + 16))(v45, v67, v66);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v101;
      sub_1D6419994(0, v45);
LABEL_42:
      v60 = v45;
      break;
    default:
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v57 = sub_1D725BD1C();
      v58 = __swift_project_value_buffer(v57, qword_1EDFFCD00);
      (*(*(v57 - 8) + 16))(v41, v58, v57);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v101;
      sub_1D63883AC(1, v100, v90, v89, v88, v41);
      v60 = v41;
      break;
  }

  sub_1D5D2CFE8(v60, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v59, sub_1D5D30DC4);
}

uint64_t sub_1D64E6584(char a1)
{
  result = 0x6C61726765746E69;
  switch(a1)
  {
    case 1:
      return 0x7465736E69;
    case 2:
      return 0x6874646977;
    case 3:
      return 0x746867696568;
    case 4:
      return 0x656C616373;
    case 5:
      return 0x646957656C616373;
    case 6:
      return 0x696548656C616373;
    case 7:
      v3 = 1467507053;
      return v3 | 0x6874646900000000;
    case 8:
      v4 = 1215848813;
      goto LABEL_15;
    case 9:
      v3 = 1466853741;
      return v3 | 0x6874646900000000;
    case 10:
      v4 = 1215195501;
LABEL_15:
      result = v4 | 0x6867696500000000;
      break;
    case 11:
      result = 0x576563616C706572;
      break;
    case 12:
      result = 0x486563616C706572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D64E6738@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D66647B4();
  *a1 = result;
  return result;
}

uint64_t sub_1D64E6768@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D64E6584(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D64E68A0@<X0>(void *a1@<X0>, uint64_t (*a2)(void, __n128)@<X1>, void (*a3)(void)@<X2>, unint64_t *a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t *a6@<X8>)
{
  v43 = a5;
  v40 = a6;
  sub_1D5C2E60C(0, &qword_1EDF3BBA0, sub_1D6696DC0, sub_1D6696E14);
  v11 = v10;
  v41 = *(v10 - 1);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v39 = &v38 - v14;
  v15 = a2(0, v13);
  v42 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v38 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a3(0);
  sub_1D5B58B84(a4, v43);
  v19 = v50;
  sub_1D7264B0C();
  if (v19)
  {
    v20 = v19;
LABEL_3:
    sub_1D61E4FBC(a1, v20);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v43 = v11;
  v21 = v40;
  v22 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v23 = sub_1D7264AFC();
  LOBYTE(v22) = Dictionary<>.errorOnUnknownKeys.getter(v23);

  v24 = v15;
  v25 = v41;
  v26 = v39;
  if (v22)
  {
    v27 = sub_1D726433C();
    v28 = *(v27 + 16);
    a1 = v50;
    if (v28)
    {
      v29 = (v27 + 48);
      while (*v29 != 1)
      {
        v29 += 24;
        if (!--v28)
        {
          goto LABEL_9;
        }
      }

      v32 = *(v29 - 2);
      v31 = *(v29 - 1);

      v33 = sub_1D6628490(0x656D7473756A6461, 0xEB0000000073746ELL);
      sub_1D5E2D970();
      v20 = swift_allocError();
      *v34 = v32;
      *(v34 + 8) = v31;
      *(v34 + 16) = v33;
      *(v34 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v42 + 8))(v18, v24);
      goto LABEL_3;
    }

LABEL_9:
  }

  v47 = 0;
  v48 = 0;
  v49 = 0;
  if (sub_1D726434C())
  {
    sub_1D669707C();
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v30 = v43;
    sub_1D726431C();
    a1 = v50;
    v35 = sub_1D725A74C();
    (*(v25 + 8))(v26, v30);
    v36 = v42;
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
    v36 = v42;
    a1 = v50;
  }

  (*(v36 + 8))(v18, v24);
  *v21 = v35;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatImageNodeRequestPath.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D669710C();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D6696EFC();
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EDF24FF8, sub_1D6696EFC);
  sub_1D5D2EE70(&type metadata for FormatImageNodeRequestPath, v16, v18, v13, &type metadata for FormatImageNodeRequestPath, v16, &type metadata for FormatVersions.StarSkyC, v14, v11, v17, &off_1F51F6B18);
  v19 = qword_1EDF31E98;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCD00);
  (*(*(v20 - 8) + 16))(v6, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  if (!*(v12 + 16))
  {
    goto LABEL_9;
  }

  v22 = &v11[*(v8 + 44)];
  v24 = *v22;
  v23 = *(v22 + 1);
  LOBYTE(v44) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = v44;
  *(v25 + 40) = v24;
  *(v25 + 48) = v23;
  sub_1D66971A0();
  v27 = v26;
  v28 = sub_1D5B58B84(&qword_1EDF02F78, sub_1D66971A0);

  v42[1] = v27;
  v29 = sub_1D72647CC();
  LOBYTE(v44) = 0;
  v30 = swift_allocObject();
  *(v30 + 24) = 0;
  *(v30 + 32) = 0;
  *(v30 + 16) = v29;
  *(v30 + 40) = v44;
  v31 = __swift_project_boxed_opaque_existential_1(&v11[*(v8 + 36)], *&v11[*(v8 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v31, v32);
  MEMORY[0x1EEE9AC00](v33, v34);
  v42[-4] = sub_1D5B4AA6C;
  v42[-3] = 0;
  v40 = sub_1D6697234;
  v41 = v25;
  v35 = v43;
  v37 = sub_1D5D2F7A4(v6, sub_1D615B49C, v36, sub_1D615B4A4, &v42[-6]);
  if (!v35)
  {
    v38 = v37;
    v43 = v28;

    if (v38)
    {
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = v12;
      sub_1D5C34D84(0, &qword_1EDF04AF8, &type metadata for FormatImageNodeRequestAdjustment, MEMORY[0x1E69E62F8]);
      sub_1D66972B0();
      sub_1D72647EC();

      sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v11, sub_1D669710C);
    }

LABEL_9:
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v11, sub_1D669710C);
  }

  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v11, sub_1D669710C);
}

uint64_t sub_1D64E71CC(uint64_t a1)
{
  v2 = sub_1D6696FD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64E7208(uint64_t a1)
{
  v2 = sub_1D6696FD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatImageNodeRequestSize.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6697560();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D66973E0();
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EDF24FE8, sub_1D66973E0);
  sub_1D5D2EE70(&type metadata for FormatImageNodeRequestSize, v16, v18, v13, &type metadata for FormatImageNodeRequestSize, v16, &type metadata for FormatVersions.StarSkyC, v14, v11, v17, &off_1F51F6B18);
  v19 = qword_1EDF31E98;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCD00);
  (*(*(v20 - 8) + 16))(v6, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  if (!*(v12 + 16))
  {
    goto LABEL_9;
  }

  v22 = &v11[*(v8 + 44)];
  v24 = *v22;
  v23 = *(v22 + 1);
  LOBYTE(v44) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = v44;
  *(v25 + 40) = v24;
  *(v25 + 48) = v23;
  sub_1D66975F4();
  v27 = v26;
  v28 = sub_1D5B58B84(&qword_1EDF02F68, sub_1D66975F4);

  v42[1] = v27;
  v29 = sub_1D72647CC();
  LOBYTE(v44) = 0;
  v30 = swift_allocObject();
  *(v30 + 24) = 0;
  *(v30 + 32) = 0;
  *(v30 + 16) = v29;
  *(v30 + 40) = v44;
  v31 = __swift_project_boxed_opaque_existential_1(&v11[*(v8 + 36)], *&v11[*(v8 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v31, v32);
  MEMORY[0x1EEE9AC00](v33, v34);
  v42[-4] = sub_1D5B4AA6C;
  v42[-3] = 0;
  v40 = sub_1D6708A8C;
  v41 = v25;
  v35 = v43;
  v37 = sub_1D5D2F7A4(v6, sub_1D615B49C, v36, sub_1D615B4A4, &v42[-6]);
  if (!v35)
  {
    v38 = v37;
    v43 = v28;

    if (v38)
    {
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = v12;
      sub_1D5C34D84(0, &qword_1EDF04AF8, &type metadata for FormatImageNodeRequestAdjustment, MEMORY[0x1E69E62F8]);
      sub_1D66972B0();
      sub_1D72647EC();

      sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v11, sub_1D6697560);
    }

LABEL_9:
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v11, sub_1D6697560);
  }

  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v11, sub_1D6697560);
}

uint64_t sub_1D64E779C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D7473756A6461 && a2 == 0xEB0000000073746ELL;
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

uint64_t sub_1D64E788C(uint64_t a1)
{
  v2 = sub_1D66974B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64E78C8(uint64_t a1)
{
  v2 = sub_1D66974B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatImageNodeStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = MEMORY[0x1E69E6720];
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v432 = &v428 - v8;
  v9 = sub_1D725B76C();
  v433 = *(v9 - 8);
  v434 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v431 = &v428 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], v5);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  *&v461 = &v428 - v14;
  v15 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v436 = &v428 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v435 = &v428 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v437 = &v428 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v438 = &v428 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v439 = &v428 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v440 = &v428 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v441 = &v428 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v442 = &v428 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v443 = &v428 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v444 = &v428 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v446 = &v428 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v447 = &v428 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v448 = &v428 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v449 = &v428 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v450 = &v428 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v459 = (&v428 - v62);
  MEMORY[0x1EEE9AC00](v63, v64);
  v66 = &v428 - v65;
  sub_1D6697D00();
  *&v460 = v67;
  MEMORY[0x1EEE9AC00](v67, v68);
  v70 = &v428 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a1[3];
  v72 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v71);
  sub_1D5C84234();
  v74 = v73;
  v75 = sub_1D5B58B84(&qword_1EDF253D8, sub_1D5C84234);
  v483 = v70;
  sub_1D5D2EE70(v4, v74, v76, v71, v4, v74, &type metadata for FormatVersions.JazzkonC, v72, v70, v75, &off_1F51F6C78);
  swift_beginAccess();
  v77 = v2[2];
  v78 = v2[3];
  v457 = v2;
  v79 = qword_1EDF31EB0;

  if (v79 != -1)
  {
    swift_once();
  }

  v80 = sub_1D725BD1C();
  v81 = __swift_project_value_buffer(v80, qword_1EDFFCD30);
  v82 = *(v80 - 8);
  v83 = *(v82 + 16);
  v84 = v82 + 16;
  v458 = v80;
  v83(v66, v81, v80);
  v85 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v86 = v461;
  v452 = v77;
  sub_1D725892C();
  v87 = sub_1D725895C();
  v88 = (*(*(v87 - 8) + 48))(v86, 1, v87);
  v453 = v84;
  v454 = v83;
  v455 = v81;
  v456 = v85;
  if (v88 == 1)
  {
    v451 = v78;
    sub_1D5D35558(v461, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v89 = v460;
    v90 = v483;
    v91 = &v483[*(v460 + 44)];
    v92 = v66;
    v94 = *v91;
    v93 = *(v91 + 1);
    LOBYTE(v477) = 0;
    v95 = swift_allocObject();
    *(v95 + 16) = 0;
    *(v95 + 24) = 0;
    *(v95 + 32) = v477;
    *(v95 + 40) = v94;
    *(v95 + 48) = v93;
    sub_1D6697D94();
    v97 = v96;
    v98 = sub_1D5B58B84(&qword_1EDF03408, sub_1D6697D94);

    *&v461 = v97;
    v445 = v98;
    v99 = sub_1D72647CC();
    LOBYTE(v477) = 0;
    v100 = swift_allocObject();
    *(v100 + 24) = 0;
    *(v100 + 32) = 0;
    *(v100 + 16) = v99;
    *(v100 + 40) = v477;
    v101 = __swift_project_boxed_opaque_existential_1((v90 + *(v89 + 36)), *(v90 + *(v89 + 36) + 24));
    MEMORY[0x1EEE9AC00](v101, v102);
    MEMORY[0x1EEE9AC00](v103, v104);
    *(&v428 - 4) = sub_1D5B4AA6C;
    *(&v428 - 3) = 0;
    v426 = sub_1D6697E28;
    v427 = v95;
    v105 = v462;
    v107 = sub_1D5D2F7A4(v92, sub_1D615B49C, v106, sub_1D615B4A4, (&v428 - 6));
    *&v462 = v105;
    if (v105)
    {
      sub_1D5D2CFE8(v92, type metadata accessor for FormatVersionRequirement);

      v108 = v90;
      return sub_1D5D2CFE8(v108, sub_1D6697D00);
    }

    v134 = v107;
    v430 = v92;

    if (v134)
    {
      v477 = 0uLL;
      LOBYTE(v478) = 0;
      *&v469 = v452;
      *(&v469 + 1) = v451;
      v135 = v483;
      v136 = v462;
      sub_1D72647EC();
      *&v462 = v136;
      v83 = v454;
      v81 = v455;
      if (v136)
      {

        sub_1D5D2CFE8(v430, type metadata accessor for FormatVersionRequirement);
        v108 = v135;
        return sub_1D5D2CFE8(v108, sub_1D6697D00);
      }

      sub_1D5D2CFE8(v430, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v430, type metadata accessor for FormatVersionRequirement);

      v83 = v454;
      v81 = v455;
    }
  }

  else
  {
    sub_1D5D2CFE8(v66, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v461, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  v110 = v457[4];
  v111 = v457[5];
  v112 = v459;
  v83(v459, v81, v458);
  swift_storeEnumTagMultiPayload();
  *&v469 = v110;
  *(&v469 + 1) = v111;
  v461 = xmmword_1D728CF30;
  v477 = xmmword_1D728CF30;
  LOBYTE(v478) = 0;
  v113 = v483;
  v114 = &v483[*(v460 + 44)];
  v115 = *v114;
  v116 = *(v114 + 1);
  LOBYTE(v463) = 0;
  v117 = swift_allocObject();
  v452 = &v428;
  *(v117 + 16) = v461;
  *(v117 + 32) = v463;
  *(v117 + 40) = v115;
  *(v117 + 48) = v116;
  MEMORY[0x1EEE9AC00](v117, v118);
  v451 = &v428 - 6;
  *(&v428 - 4) = sub_1D5B4AA6C;
  *(&v428 - 3) = 0;
  v426 = sub_1D6708A90;
  v427 = v119;
  LOBYTE(v463) = 0;
  v120 = swift_allocObject();
  *(v120 + 16) = v461;
  *(v120 + 32) = v463;
  v429 = v115;
  *(v120 + 40) = v115;
  *(v120 + 48) = v116;
  sub_1D6697D94();
  v122 = v121;
  v123 = sub_1D5B58B84(&qword_1EDF03408, sub_1D6697D94);
  v428 = v116;
  swift_retain_n();
  v430 = v122;
  v445 = v123;
  v124 = sub_1D72647CC();
  LOBYTE(v463) = 0;
  v125 = swift_allocObject();
  *(v125 + 16) = v124;
  *(v125 + 24) = v461;
  *(v125 + 40) = v463;
  v126 = (v113 + *(v460 + 36));
  v127 = __swift_project_boxed_opaque_existential_1(v126, v126[3]);
  MEMORY[0x1EEE9AC00](v127, v128);
  MEMORY[0x1EEE9AC00](v129, v130);
  v131 = v451;
  *(&v428 - 4) = sub_1D615B4A4;
  *(&v428 - 3) = v131;
  v426 = sub_1D6708A90;
  v427 = v120;
  v132 = v462;
  sub_1D5D2BC70(v112, sub_1D615B49C, v133, sub_1D615B4A4, (&v428 - 6));
  if (v132)
  {
    sub_1D5D2CFE8(v112, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v483, sub_1D6697D00);
  }

  *&v461 = v126;

  sub_1D72647EC();
  sub_1D5D2CFE8(v459, type metadata accessor for FormatVersionRequirement);

  v137 = v457;
  swift_beginAccess();
  v138 = v137[6];
  v139 = v450;
  v140 = v454;
  v454(v450, v455, v458);
  swift_storeEnumTagMultiPayload();
  if (!*(v138 + 16))
  {
    *&v462 = 0;
    v150 = v139;
LABEL_19:
    sub_1D5D2CFE8(v150, type metadata accessor for FormatVersionRequirement);
    goto LABEL_23;
  }

  LOBYTE(v477) = 0;
  v141 = swift_allocObject();
  v462 = xmmword_1D7297410;
  *(v141 + 16) = xmmword_1D7297410;
  *(v141 + 32) = v477;
  *(v141 + 40) = v429;
  *(v141 + 48) = v428;

  v142 = sub_1D72647CC();
  LOBYTE(v477) = 0;
  v143 = swift_allocObject();
  *(v143 + 16) = v142;
  *(v143 + 24) = v462;
  *(v143 + 40) = v477;
  v144 = __swift_project_boxed_opaque_existential_1(v461, *(v461 + 24));
  MEMORY[0x1EEE9AC00](v144, v145);
  MEMORY[0x1EEE9AC00](v146, v147);
  *(&v428 - 4) = sub_1D5B4AA6C;
  *(&v428 - 3) = 0;
  v426 = sub_1D6708A90;
  v427 = v141;
  v149 = sub_1D5D2F7A4(v139, sub_1D615B49C, v148, sub_1D615B4A4, (&v428 - 6));
  v151 = v149;

  if (v151)
  {
    v477 = v462;
    LOBYTE(v478) = 0;
    *&v469 = v138;
    sub_1D5C34D84(0, &qword_1EDF04EA8, &type metadata for FormatImageNodeStyle.Selector, MEMORY[0x1E69E62F8]);
    sub_1D669820C();
    sub_1D72647EC();
    v137 = v457;
    v140 = v454;
    *&v462 = 0;

    v150 = v450;
    goto LABEL_19;
  }

  *&v462 = 0;
  sub_1D5D2CFE8(v450, type metadata accessor for FormatVersionRequirement);

  v137 = v457;
  v140 = v454;
LABEL_23:
  v152 = v137[7];
  v153 = v449;
  v140(v449, v455, v458);
  swift_storeEnumTagMultiPayload();
  v460 = xmmword_1D72BAA60;
  v477 = xmmword_1D72BAA60;
  LOBYTE(v478) = 0;
  LOBYTE(v469) = 0;
  v155 = swift_allocObject();
  *(v155 + 16) = v460;
  *(v155 + 32) = v469;
  v156 = v429;
  *(v155 + 40) = v429;
  v157 = v428;
  *(v155 + 48) = v428;
  if (!v152)
  {

    sub_1D5D2CFE8(v153, type metadata accessor for FormatVersionRequirement);

    v163 = v461;
LABEL_34:
    v174 = v448;
    goto LABEL_35;
  }

  v459 = &v428;
  *&v469 = v152;
  MEMORY[0x1EEE9AC00](v157, v154);
  v159 = v158;
  *(&v428 - 4) = sub_1D5B4AA6C;
  *(&v428 - 3) = 0;
  v426 = sub_1D6708A90;
  v427 = v155;
  LOBYTE(v463) = 0;
  v160 = swift_allocObject();
  *(v160 + 16) = v460;
  *(v160 + 32) = v463;
  *(v160 + 40) = v156;
  *(v160 + 48) = v159;
  swift_retain_n();

  v161 = sub_1D72647CC();
  LOBYTE(v463) = 0;
  v162 = swift_allocObject();
  *(v162 + 16) = v161;
  *(v162 + 24) = v460;
  *(v162 + 40) = v463;
  v163 = v461;
  v164 = __swift_project_boxed_opaque_existential_1(v461, *(v461 + 24));
  MEMORY[0x1EEE9AC00](v164, v165);
  MEMORY[0x1EEE9AC00](v166, v167);
  *(&v428 - 4) = sub_1D615B4A4;
  *(&v428 - 3) = (&v428 - 6);
  v426 = sub_1D6708A90;
  v427 = v160;
  v168 = v462;
  v170 = sub_1D5D2F7A4(v153, sub_1D615B49C, v169, sub_1D615B4A4, (&v428 - 6));
  *&v462 = v168;
  if (v168)
  {

LABEL_26:

    v171 = v449;
LABEL_27:
    sub_1D5D2CFE8(v171, type metadata accessor for FormatVersionRequirement);
LABEL_28:
    v108 = v483;
    return sub_1D5D2CFE8(v108, sub_1D6697D00);
  }

  v172 = v170;

  if ((v172 & 1) == 0)
  {

    sub_1D5D2CFE8(v449, type metadata accessor for FormatVersionRequirement);
    v140 = v454;
    v137 = v457;
    goto LABEL_34;
  }

  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  sub_1D66582DC();
  v173 = v462;
  sub_1D72647EC();
  v140 = v454;
  v137 = v457;
  v174 = v448;
  *&v462 = v173;
  if (v173)
  {

    goto LABEL_26;
  }

  sub_1D5D2CFE8(v449, type metadata accessor for FormatVersionRequirement);
LABEL_35:
  swift_beginAccess();
  v175 = v137[8];
  v176 = qword_1EDF31EA8;

  if (v176 != -1)
  {
    swift_once();
  }

  v177 = v458;
  v178 = __swift_project_value_buffer(v458, qword_1EDFFCD18);
  v140(v174, v178, v177);
  swift_storeEnumTagMultiPayload();
  if (!v175)
  {
    v190 = v174;
LABEL_41:
    sub_1D5D2CFE8(v190, type metadata accessor for FormatVersionRequirement);
    goto LABEL_45;
  }

  LOBYTE(v477) = 0;
  v179 = swift_allocObject();
  v460 = xmmword_1D72BAA70;
  *(v179 + 16) = xmmword_1D72BAA70;
  *(v179 + 32) = v477;
  *(v179 + 40) = v429;
  *(v179 + 48) = v428;

  v180 = sub_1D72647CC();
  LOBYTE(v477) = 0;
  v181 = swift_allocObject();
  *(v181 + 16) = v180;
  *(v181 + 24) = v460;
  *(v181 + 40) = v477;
  v182 = __swift_project_boxed_opaque_existential_1(v163, v163[3]);
  MEMORY[0x1EEE9AC00](v182, v183);
  MEMORY[0x1EEE9AC00](v184, v185);
  *(&v428 - 4) = sub_1D5B4AA6C;
  *(&v428 - 3) = 0;
  v426 = sub_1D6708A90;
  v427 = v179;
  v186 = v462;
  v188 = sub_1D5D2F7A4(v174, sub_1D615B49C, v187, sub_1D615B4A4, (&v428 - 6));
  if (v186)
  {

    v189 = v174;
LABEL_51:
    sub_1D5D2CFE8(v189, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CFE8(v483, sub_1D6697D00);
  }

  v191 = v188;

  if (v191)
  {
    v477 = v460;
    LOBYTE(v478) = 0;
    *&v469 = v175;
    sub_1D667412C(0, &qword_1EDF1B0A0, &unk_1EDF1B0B0, &type metadata for FormatImageAdjustment);
    sub_1D66980E0();
    sub_1D72647EC();
    v137 = v457;
    v140 = v454;
    v192 = v448;
    *&v462 = 0;

    v190 = v192;
    goto LABEL_41;
  }

  *&v462 = 0;

  sub_1D5D2CFE8(v448, type metadata accessor for FormatVersionRequirement);
  v137 = v457;
  v140 = v454;
LABEL_45:
  v193 = v137[9];
  v194 = v447;
  v140(v447, v455, v458);
  swift_storeEnumTagMultiPayload();
  v460 = xmmword_1D72BAA80;
  v477 = xmmword_1D72BAA80;
  LOBYTE(v478) = 0;
  LOBYTE(v469) = 0;
  v195 = swift_allocObject();
  v197 = v195;
  *(v195 + 16) = v460;
  *(v195 + 32) = v469;
  v199 = v428;
  v198 = v429;
  *(v195 + 40) = v429;
  *(v195 + 48) = v199;
  if ((~v193 & 0xF000000000000007) == 0)
  {

    v200 = v194;
LABEL_47:
    v201 = v461;
    goto LABEL_48;
  }

  v459 = &v428;
  *&v469 = v193;
  MEMORY[0x1EEE9AC00](v195, v196);
  *(&v428 - 4) = sub_1D5B4AA6C;
  *(&v428 - 3) = 0;
  v426 = sub_1D6708A90;
  v427 = v197;
  LOBYTE(v463) = 0;
  v218 = swift_allocObject();
  *(v218 + 16) = v460;
  *(v218 + 32) = v463;
  *(v218 + 40) = v198;
  *(v218 + 48) = v199;
  swift_retain_n();
  sub_1D5D04BD4(v193);
  v219 = sub_1D72647CC();
  LOBYTE(v463) = 0;
  v220 = swift_allocObject();
  *(v220 + 16) = v219;
  *(v220 + 24) = v460;
  *(v220 + 40) = v463;
  v221 = __swift_project_boxed_opaque_existential_1(v461, *(v461 + 24));
  MEMORY[0x1EEE9AC00](v221, v222);
  MEMORY[0x1EEE9AC00](v223, v224);
  *(&v428 - 4) = sub_1D615B4A4;
  *(&v428 - 3) = (&v428 - 6);
  v426 = sub_1D6708A90;
  v427 = v218;
  v225 = v462;
  v227 = sub_1D5D2F7A4(v194, sub_1D615B49C, v226, sub_1D615B4A4, (&v428 - 6));
  if (v225)
  {

    v228 = v447;

LABEL_55:
    v189 = v228;
    goto LABEL_51;
  }

  v230 = v227;

  if ((v230 & 1) == 0)
  {
    *&v462 = 0;

    v140 = v454;
    v199 = v428;
    v137 = v457;
    v200 = v447;
    goto LABEL_47;
  }

  sub_1D5D4A808();
  sub_1D72647EC();
  v140 = v454;
  v137 = v457;
  v201 = v461;
  *&v462 = 0;

  v199 = v428;
  v200 = v447;
LABEL_48:
  sub_1D5D2CFE8(v200, type metadata accessor for FormatVersionRequirement);
  v202 = v137[10];
  v203 = v446;
  v140(v446, v455, v458);
  swift_storeEnumTagMultiPayload();
  v460 = xmmword_1D72BAA90;
  v477 = xmmword_1D72BAA90;
  LOBYTE(v478) = 0;
  LOBYTE(v469) = 0;
  v204 = swift_allocObject();
  v206 = v204;
  *(v204 + 16) = v460;
  *(v204 + 32) = v469;
  v207 = v429;
  *(v204 + 40) = v429;
  *(v204 + 48) = v199;
  if (v202)
  {
    v459 = &v428;
    *&v469 = v202;
    MEMORY[0x1EEE9AC00](v204, v205);
    *(&v428 - 4) = sub_1D5B4AA6C;
    *(&v428 - 3) = 0;
    v426 = sub_1D6708A90;
    v427 = v206;
    LOBYTE(v463) = 0;
    v208 = swift_allocObject();
    *(v208 + 16) = v460;
    *(v208 + 32) = v463;
    *(v208 + 40) = v207;
    *(v208 + 48) = v199;
    swift_retain_n();

    v209 = sub_1D72647CC();
    LOBYTE(v463) = 0;
    v210 = swift_allocObject();
    *(v210 + 16) = v209;
    *(v210 + 24) = v460;
    *(v210 + 40) = v463;
    v211 = __swift_project_boxed_opaque_existential_1(v201, v201[3]);
    MEMORY[0x1EEE9AC00](v211, v212);
    MEMORY[0x1EEE9AC00](v213, v214);
    *(&v428 - 4) = sub_1D615B4A4;
    *(&v428 - 3) = (&v428 - 6);
    v426 = sub_1D6708A90;
    v427 = v208;
    v215 = v462;
    v217 = sub_1D5D2F7A4(v446, sub_1D615B49C, v216, sub_1D615B4A4, (&v428 - 6));
    if (v215)
    {

      v189 = v446;
      goto LABEL_51;
    }

    v231 = v217;

    v229 = v444;
    if (v231)
    {
      sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
      sub_1D66612AC();
      sub_1D72647EC();
      v140 = v454;
      *&v462 = 0;

      sub_1D5D2CFE8(v446, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      *&v462 = 0;

      sub_1D5D2CFE8(v446, type metadata accessor for FormatVersionRequirement);
      v140 = v454;
    }

    v199 = v428;
  }

  else
  {

    sub_1D5D2CFE8(v203, type metadata accessor for FormatVersionRequirement);

    v229 = v444;
  }

  v232 = *(v457 + 88);
  v140(v229, v455, v458);
  swift_storeEnumTagMultiPayload();
  v460 = xmmword_1D72BAAA0;
  v477 = xmmword_1D72BAAA0;
  LOBYTE(v478) = 0;
  LOBYTE(v469) = 0;
  v233 = swift_allocObject();
  v235 = v233;
  *(v233 + 16) = v460;
  *(v233 + 32) = v469;
  v236 = v429;
  *(v233 + 40) = v429;
  *(v233 + 48) = v199;
  if (v232 == 9)
  {

    v237 = v443;
  }

  else
  {
    v459 = &v428;
    LOBYTE(v469) = v232;
    MEMORY[0x1EEE9AC00](v233, v234);
    *(&v428 - 4) = sub_1D5B4AA6C;
    *(&v428 - 3) = 0;
    v426 = sub_1D6708A90;
    v427 = v235;
    LOBYTE(v463) = 0;
    v248 = swift_allocObject();
    *(v248 + 16) = v460;
    *(v248 + 32) = v463;
    *(v248 + 40) = v236;
    *(v248 + 48) = v199;
    swift_retain_n();
    v249 = sub_1D72647CC();
    LOBYTE(v463) = 0;
    v250 = swift_allocObject();
    *(v250 + 16) = v249;
    *(v250 + 24) = v460;
    *(v250 + 40) = v463;
    v251 = __swift_project_boxed_opaque_existential_1(v201, v201[3]);
    MEMORY[0x1EEE9AC00](v251, v252);
    MEMORY[0x1EEE9AC00](v253, v254);
    *(&v428 - 4) = sub_1D615B4A4;
    *(&v428 - 3) = (&v428 - 6);
    v426 = sub_1D6708A90;
    v427 = v248;
    v255 = v462;
    v257 = sub_1D5D2F7A4(v229, sub_1D615B49C, v256, sub_1D615B4A4, (&v428 - 6));
    if (v255)
    {
      goto LABEL_88;
    }

    v268 = v257;

    if (v268)
    {
      sub_1D669808C();
      sub_1D72647EC();
      v237 = v443;
      v229 = v444;
      *&v462 = 0;
      v199 = v428;
    }

    else
    {
      *&v462 = 0;
      v199 = v428;
      v237 = v443;
      v229 = v444;
    }
  }

  sub_1D5D2CFE8(v229, type metadata accessor for FormatVersionRequirement);

  v239 = v457[12];
  v238 = v457[13];
  v240 = *(v457 + 112);
  v454(v237, v455, v458);
  swift_storeEnumTagMultiPayload();
  v460 = xmmword_1D72BAAB0;
  v477 = xmmword_1D72BAAB0;
  LOBYTE(v478) = 0;
  LOBYTE(v469) = 0;
  v241 = swift_allocObject();
  v243 = v241;
  *(v241 + 16) = v460;
  *(v241 + 32) = v469;
  v244 = v429;
  *(v241 + 40) = v429;
  *(v241 + 48) = v199;
  if (v240 > 0xFD)
  {

    sub_1D5D2CFE8(v237, type metadata accessor for FormatVersionRequirement);

    v245 = v454;
    v246 = v455;
    v247 = v461;
    goto LABEL_80;
  }

  v459 = &v428;
  *&v469 = v239;
  *(&v469 + 1) = v238;
  LOBYTE(v470) = v240;
  MEMORY[0x1EEE9AC00](v241, v242);
  *(&v428 - 4) = sub_1D5B4AA6C;
  *(&v428 - 3) = 0;
  v426 = sub_1D6708A90;
  v427 = v243;
  LOBYTE(v463) = 0;
  v258 = swift_allocObject();
  *(v258 + 16) = v460;
  *(v258 + 32) = v463;
  *(v258 + 40) = v244;
  *(v258 + 48) = v199;
  swift_retain_n();
  sub_1D5ED34B0(v239, v238, v240);
  v259 = sub_1D72647CC();
  LOBYTE(v463) = 0;
  v260 = swift_allocObject();
  *(v260 + 16) = v259;
  *(v260 + 24) = v460;
  *(v260 + 40) = v463;
  v247 = v461;
  v261 = __swift_project_boxed_opaque_existential_1(v461, *(v461 + 24));
  MEMORY[0x1EEE9AC00](v261, v262);
  MEMORY[0x1EEE9AC00](v263, v264);
  *(&v428 - 4) = sub_1D615B4A4;
  *(&v428 - 3) = (&v428 - 6);
  v426 = sub_1D6708A90;
  v427 = v258;
  v265 = v462;
  v267 = sub_1D5D2F7A4(v443, sub_1D615B49C, v266, sub_1D615B4A4, (&v428 - 6));
  if (v265)
  {

    v228 = v443;
    sub_1D5ED34A0(v469, *(&v469 + 1), v470);
    goto LABEL_55;
  }

  v269 = v267;

  if (v269)
  {
    sub_1D6661258();
    sub_1D72647EC();
    v270 = v443;
    *&v462 = 0;

    sub_1D5ED34A0(v469, *(&v469 + 1), v470);
    v271 = v270;
  }

  else
  {
    *&v462 = 0;

    sub_1D5ED34A0(v469, *(&v469 + 1), v470);
    v271 = v443;
  }

  sub_1D5D2CFE8(v271, type metadata accessor for FormatVersionRequirement);
  v245 = v454;
  v199 = v428;
  v244 = v429;
  v246 = v455;
LABEL_80:
  v272 = v457[15];
  v273 = v442;
  v245(v442, v246, v458);
  swift_storeEnumTagMultiPayload();
  v460 = xmmword_1D72BAAC0;
  v477 = xmmword_1D72BAAC0;
  LOBYTE(v478) = 0;
  LOBYTE(v469) = 0;
  v274 = swift_allocObject();
  v276 = v274;
  *(v274 + 16) = v460;
  *(v274 + 32) = v469;
  *(v274 + 40) = v244;
  *(v274 + 48) = v199;
  if (v272 == 3)
  {

    v277 = v199;
    v278 = v462;
  }

  else
  {
    v459 = &v428;
    *&v469 = v272;
    MEMORY[0x1EEE9AC00](v274, v275);
    *(&v428 - 4) = sub_1D5B4AA6C;
    *(&v428 - 3) = 0;
    v426 = sub_1D6708A90;
    v427 = v276;
    LOBYTE(v463) = 0;
    v286 = swift_allocObject();
    *(v286 + 16) = v460;
    *(v286 + 32) = v463;
    *(v286 + 40) = v244;
    *(v286 + 48) = v199;
    swift_retain_n();
    sub_1D5D0AF9C(v272);
    v287 = sub_1D72647CC();
    LOBYTE(v463) = 0;
    v288 = swift_allocObject();
    *(v288 + 16) = v287;
    *(v288 + 24) = v460;
    *(v288 + 40) = v463;
    v289 = __swift_project_boxed_opaque_existential_1(v247, v247[3]);
    MEMORY[0x1EEE9AC00](v289, v290);
    MEMORY[0x1EEE9AC00](v291, v292);
    *(&v428 - 4) = sub_1D615B4A4;
    *(&v428 - 3) = (&v428 - 6);
    v426 = sub_1D6708A90;
    v427 = v286;
    v293 = v462;
    v295 = sub_1D5D2F7A4(v273, sub_1D615B49C, v294, sub_1D615B4A4, (&v428 - 6));
    v278 = v293;
    if (v293)
    {

      v296 = v442;
      sub_1D5D0AFCC(v469);
LABEL_86:
      v189 = v296;
      goto LABEL_51;
    }

    v307 = v295;

    if (v307)
    {
      sub_1D5CD90A4();
      sub_1D72647EC();
      v273 = v442;

      sub_1D5D0AFCC(v469);
      v277 = v428;
    }

    else
    {

      sub_1D5D0AFCC(v469);
      v277 = v428;
      v273 = v442;
    }
  }

  sub_1D5D2CFE8(v273, type metadata accessor for FormatVersionRequirement);
  v279 = *(v457 + 128);
  v229 = v441;
  v454(v441, v455, v458);
  swift_storeEnumTagMultiPayload();
  v460 = xmmword_1D72BAAD0;
  v477 = xmmword_1D72BAAD0;
  LOBYTE(v478) = 0;
  LOBYTE(v469) = 0;
  v280 = swift_allocObject();
  v282 = v280;
  *(v280 + 16) = v460;
  *(v280 + 32) = v469;
  v283 = v429;
  *(v280 + 40) = v429;
  *(v280 + 48) = v277;
  if (v279 == 4)
  {

    v284 = v455;
    v285 = v229;
    goto LABEL_95;
  }

  v459 = &v428;
  LOBYTE(v469) = v279;
  MEMORY[0x1EEE9AC00](v280, v281);
  *&v462 = v278;
  *(&v428 - 4) = sub_1D5B4AA6C;
  *(&v428 - 3) = 0;
  v426 = sub_1D6708A90;
  v427 = v282;
  LOBYTE(v463) = 0;
  v297 = swift_allocObject();
  *(v297 + 16) = v460;
  *(v297 + 32) = v463;
  *(v297 + 40) = v283;
  *(v297 + 48) = v277;
  swift_retain_n();
  v298 = sub_1D72647CC();
  LOBYTE(v463) = 0;
  v299 = swift_allocObject();
  *(v299 + 16) = v298;
  *(v299 + 24) = v460;
  *(v299 + 40) = v463;
  v300 = __swift_project_boxed_opaque_existential_1(v247, v247[3]);
  MEMORY[0x1EEE9AC00](v300, v301);
  MEMORY[0x1EEE9AC00](v302, v303);
  *(&v428 - 4) = sub_1D615B4A4;
  *(&v428 - 3) = (&v428 - 6);
  v426 = sub_1D6708A90;
  v427 = v297;
  v304 = v462;
  v306 = sub_1D5D2F7A4(v229, sub_1D615B49C, v305, sub_1D615B4A4, (&v428 - 6));
  v278 = v304;
  if (v304)
  {
LABEL_88:
    sub_1D5D2CFE8(v229, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v483, sub_1D6697D00);
  }

  v308 = v306;

  if (v308)
  {
    sub_1D6698038();
    sub_1D72647EC();
  }

  v283 = v429;
  v284 = v455;
  v285 = v441;
LABEL_95:
  sub_1D5D2CFE8(v285, type metadata accessor for FormatVersionRequirement);

  v309 = v457;
  swift_beginAccess();
  v310 = v309[17];
  v311 = qword_1EDF31F38;

  if (v311 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v458, qword_1EDFFCE38);
  v312 = v440;
  (v454)();
  swift_storeEnumTagMultiPayload();
  if (v310)
  {
    LOBYTE(v477) = 0;
    v313 = swift_allocObject();
    v462 = xmmword_1D72BAAE0;
    *(v313 + 16) = xmmword_1D72BAAE0;
    *(v313 + 32) = v477;
    *(v313 + 40) = v283;
    *(v313 + 48) = v428;

    v314 = v247;
    v315 = v312;
    v316 = sub_1D72647CC();
    LOBYTE(v477) = 0;
    v317 = swift_allocObject();
    *(v317 + 16) = v316;
    *(v317 + 24) = v462;
    *(v317 + 40) = v477;
    v318 = __swift_project_boxed_opaque_existential_1(v314, v314[3]);
    MEMORY[0x1EEE9AC00](v318, v319);
    MEMORY[0x1EEE9AC00](v320, v321);
    *(&v428 - 4) = sub_1D5B4AA6C;
    *(&v428 - 3) = 0;
    v426 = sub_1D6708A90;
    v427 = v313;
    v323 = sub_1D5D2F7A4(v315, sub_1D615B49C, v322, sub_1D615B4A4, (&v428 - 6));
    if (v278)
    {

      v189 = v315;
      goto LABEL_51;
    }

    v324 = v323;

    if (v324)
    {
      v477 = v462;
      LOBYTE(v478) = 0;
      *&v469 = v310;
      sub_1D667412C(0, &qword_1EDF04E90, &qword_1EDF1B110, &type metadata for FormatImageTransform);
      sub_1D6697F0C();
      sub_1D72647EC();
    }

    sub_1D5D2CFE8(v440, type metadata accessor for FormatVersionRequirement);
    v284 = v455;
    v283 = v429;
    v247 = v461;
  }

  else
  {
    sub_1D5D2CFE8(v312, type metadata accessor for FormatVersionRequirement);
  }

  v325 = *(v457 + 12);
  v479 = *(v457 + 11);
  v480 = v325;
  v481 = *(v457 + 13);
  v482 = *(v457 + 224);
  v326 = *(v457 + 10);
  v477 = *(v457 + 9);
  v478 = v326;
  v296 = v439;
  v454(v439, v284, v458);
  swift_storeEnumTagMultiPayload();
  v460 = xmmword_1D72BAAF0;
  v475 = xmmword_1D72BAAF0;
  v476 = 0;
  LOBYTE(v469) = 0;
  v327 = swift_allocObject();
  v329 = v327;
  *(v327 + 16) = v460;
  *(v327 + 32) = v469;
  v330 = v428;
  *(v327 + 40) = v283;
  *(v327 + 48) = v330;
  if (v482 == 254)
  {

    goto LABEL_111;
  }

  v459 = &v428;
  v471 = v479;
  v472 = v480;
  v473 = v481;
  v474 = v482;
  v469 = v477;
  v470 = v478;
  MEMORY[0x1EEE9AC00](v327, v328);
  *&v462 = v278;
  *(&v428 - 4) = sub_1D5B4AA6C;
  *(&v428 - 3) = 0;
  v426 = sub_1D6708A90;
  v427 = v329;
  LOBYTE(v463) = 0;
  v331 = swift_allocObject();
  *(v331 + 16) = v460;
  *(v331 + 32) = v463;
  *(v331 + 40) = v283;
  *(v331 + 48) = v330;
  swift_retain_n();
  sub_1D5D355B8(&v477, &v463, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
  v332 = sub_1D72647CC();
  LOBYTE(v463) = 0;
  v333 = swift_allocObject();
  *(v333 + 16) = v332;
  *(v333 + 24) = v460;
  *(v333 + 40) = v463;
  v334 = __swift_project_boxed_opaque_existential_1(v247, v247[3]);
  MEMORY[0x1EEE9AC00](v334, v335);
  MEMORY[0x1EEE9AC00](v336, v337);
  *(&v428 - 4) = sub_1D615B4A4;
  *(&v428 - 3) = (&v428 - 6);
  v426 = sub_1D6708A90;
  v427 = v331;
  v338 = v462;
  v340 = sub_1D5D2F7A4(v296, sub_1D615B49C, v339, sub_1D615B4A4, (&v428 - 6));
  v278 = v338;
  if (v338)
  {

    v465 = v471;
    v466 = v472;
    v467 = v473;
    v468 = v474;
    v463 = v469;
    v464 = v470;
    sub_1D601144C(&v463);
    goto LABEL_86;
  }

  v341 = v340;

  if (v341)
  {
    sub_1D6661204();
    sub_1D72647EC();
  }

  v465 = v471;
  v466 = v472;
  v467 = v473;
  v468 = v474;
  v463 = v469;
  v464 = v470;
  sub_1D601144C(&v463);
  v330 = v428;
  v247 = v461;
  v284 = v455;
LABEL_111:
  *&v462 = v278;
  sub_1D5D2CFE8(v439, type metadata accessor for FormatVersionRequirement);
  v342 = v457[29];
  v343 = v284;
  v344 = v454;
  v454(v438, v343, v458);
  swift_storeEnumTagMultiPayload();
  v460 = xmmword_1D7282A80;
  v469 = xmmword_1D7282A80;
  LOBYTE(v470) = 0;
  LOBYTE(v463) = 0;
  v345 = swift_allocObject();
  v347 = v345;
  *(v345 + 16) = v460;
  *(v345 + 32) = v463;
  *(v345 + 40) = v429;
  *(v345 + 48) = v330;
  v348 = v330;
  if ((~v342 & 0xF000000000000007) == 0)
  {

    goto LABEL_120;
  }

  *&v463 = v342;
  MEMORY[0x1EEE9AC00](v345, v346);
  *(&v428 - 4) = sub_1D5B4AA6C;
  *(&v428 - 3) = 0;
  v426 = sub_1D6708A90;
  v427 = v347;
  LOBYTE(v475) = 0;
  v349 = swift_allocObject();
  *(v349 + 16) = v460;
  *(v349 + 32) = v475;
  *(v349 + 40) = v429;
  *(v349 + 48) = v330;
  swift_retain_n();
  sub_1D5CFCFAC(v342);
  v350 = sub_1D72647CC();
  LOBYTE(v475) = 0;
  v351 = swift_allocObject();
  *(v351 + 16) = v350;
  *(v351 + 24) = v460;
  *(v351 + 40) = v475;
  v352 = __swift_project_boxed_opaque_existential_1(v247, v247[3]);
  MEMORY[0x1EEE9AC00](v352, v353);
  MEMORY[0x1EEE9AC00](v354, v355);
  *(&v428 - 4) = sub_1D615B4A4;
  *(&v428 - 3) = (&v428 - 6);
  v426 = sub_1D6708A90;
  v427 = v349;
  v356 = v462;
  v358 = sub_1D5D2F7A4(v438, sub_1D615B49C, v357, sub_1D615B4A4, (&v428 - 6));
  *&v462 = v356;
  if (v356)
  {

LABEL_115:

    v171 = v438;
    goto LABEL_27;
  }

  v359 = v358;

  if (v359)
  {
    sub_1D5B55CBC();
    v360 = v462;
    sub_1D72647EC();
    *&v462 = v360;
    if (v360)
    {

      goto LABEL_115;
    }
  }

  v344 = v454;
  v348 = v428;
LABEL_120:
  sub_1D5D2CFE8(v438, type metadata accessor for FormatVersionRequirement);
  v361 = *(v457 + 240);
  if (qword_1EDF31F08 != -1)
  {
    swift_once();
  }

  v362 = v458;
  v363 = __swift_project_value_buffer(v458, qword_1EDFFCDE0);
  v344(v437, v363, v362);
  swift_storeEnumTagMultiPayload();
  v460 = xmmword_1D72BAB00;
  v469 = xmmword_1D72BAB00;
  LOBYTE(v470) = 0;
  LOBYTE(v463) = 0;
  v364 = swift_allocObject();
  v366 = v364;
  *(v364 + 16) = v460;
  *(v364 + 32) = v463;
  v367 = v429;
  *(v364 + 40) = v429;
  *(v364 + 48) = v348;
  if (v361 == 2)
  {
  }

  else
  {
    LOBYTE(v463) = v361 & 1;
    MEMORY[0x1EEE9AC00](v364, v365);
    *(&v428 - 4) = sub_1D5B4AA6C;
    *(&v428 - 3) = 0;
    v426 = sub_1D6708A90;
    v427 = v366;
    LOBYTE(v475) = 0;
    v377 = swift_allocObject();
    *(v377 + 16) = v460;
    *(v377 + 32) = v475;
    *(v377 + 40) = v367;
    *(v377 + 48) = v348;
    swift_retain_n();
    v378 = sub_1D72647CC();
    LOBYTE(v475) = 0;
    v379 = swift_allocObject();
    *(v379 + 16) = v378;
    *(v379 + 24) = v460;
    *(v379 + 40) = v475;
    v380 = __swift_project_boxed_opaque_existential_1(v461, *(v461 + 24));
    MEMORY[0x1EEE9AC00](v380, v381);
    MEMORY[0x1EEE9AC00](v382, v383);
    *(&v428 - 4) = sub_1D615B4A4;
    *(&v428 - 3) = (&v428 - 6);
    v426 = sub_1D6708A90;
    v427 = v377;
    v384 = v462;
    v386 = sub_1D5D2F7A4(v437, sub_1D615B49C, v385, sub_1D615B4A4, (&v428 - 6));
    *&v462 = v384;
    if (v384)
    {
      sub_1D5D2CFE8(v437, type metadata accessor for FormatVersionRequirement);

      goto LABEL_28;
    }

    v397 = v386;

    if (v397)
    {
      v398 = v462;
      sub_1D72647EC();
      *&v462 = v398;
      if (v398)
      {
        sub_1D5D2CFE8(v437, type metadata accessor for FormatVersionRequirement);

        goto LABEL_28;
      }
    }
  }

  sub_1D5D2CFE8(v437, type metadata accessor for FormatVersionRequirement);

  v368 = v457[31];
  v369 = v457[32];
  if (qword_1EDF31E98 != -1)
  {
    swift_once();
  }

  v370 = v458;
  v371 = __swift_project_value_buffer(v458, qword_1EDFFCD00);
  v372 = v435;
  v454(v435, v371, v370);
  swift_storeEnumTagMultiPayload();
  v460 = xmmword_1D72BAB10;
  v469 = xmmword_1D72BAB10;
  LOBYTE(v470) = 0;
  LOBYTE(v463) = 0;
  v373 = swift_allocObject();
  v375 = v373;
  *(v373 + 16) = v460;
  *(v373 + 32) = v463;
  v376 = v428;
  *(v373 + 40) = v429;
  *(v373 + 48) = v376;
  if (v368 == 1)
  {

    sub_1D5D2CFE8(v372, type metadata accessor for FormatVersionRequirement);

    goto LABEL_140;
  }

  v459 = &v428;
  *&v463 = v368;
  *(&v463 + 1) = v369;
  MEMORY[0x1EEE9AC00](v373, v374);
  *(&v428 - 4) = sub_1D5B4AA6C;
  *(&v428 - 3) = 0;
  v426 = sub_1D6708A90;
  v427 = v375;
  LOBYTE(v475) = 0;
  v387 = swift_allocObject();
  *(v387 + 16) = v460;
  *(v387 + 32) = v475;
  *(v387 + 40) = v429;
  *(v387 + 48) = v376;
  swift_retain_n();
  sub_1D62B5D88(v368);
  v388 = sub_1D72647CC();
  LOBYTE(v475) = 0;
  v389 = swift_allocObject();
  *(v389 + 16) = v388;
  *(v389 + 24) = v460;
  *(v389 + 40) = v475;
  v390 = __swift_project_boxed_opaque_existential_1(v461, *(v461 + 24));
  MEMORY[0x1EEE9AC00](v390, v391);
  MEMORY[0x1EEE9AC00](v392, v393);
  *(&v428 - 4) = sub_1D615B4A4;
  *(&v428 - 3) = (&v428 - 6);
  v426 = sub_1D6708A90;
  v427 = v387;
  v394 = v462;
  v396 = sub_1D5D2F7A4(v372, sub_1D615B49C, v395, sub_1D615B4A4, (&v428 - 6));
  *&v462 = v394;
  if (v394)
  {

LABEL_132:

    v171 = v435;
    goto LABEL_27;
  }

  v399 = v396;

  if (v399)
  {
    sub_1D6697EB8();
    v400 = v462;
    sub_1D72647EC();
    *&v462 = v400;
    if (v400)
    {

      goto LABEL_132;
    }
  }

  sub_1D5D2CFE8(v435, type metadata accessor for FormatVersionRequirement);
LABEL_140:
  v401 = OBJC_IVAR____TtC8NewsFeed20FormatImageNodeStyle_imageMask;
  sub_1D5B58478();
  v403 = *(v402 + 48);
  v404 = &v436[*(v402 + 64)];
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v405 = v458;
  v406 = __swift_project_value_buffer(v458, qword_1EDFFCD50);
  v407 = v436;
  v408 = v454;
  v454(v436, v406, v405);
  v408(v407 + v403, v371, v405);
  *v404 = 0;
  v404[1] = 0;
  swift_storeEnumTagMultiPayload();
  v460 = xmmword_1D72BAB20;
  v469 = xmmword_1D72BAB20;
  LOBYTE(v470) = 0;
  LOBYTE(v463) = 0;
  v409 = swift_allocObject();
  *(v409 + 16) = v460;
  *(v409 + 32) = v463;
  v410 = v428;
  *(v409 + 40) = v429;
  *(v409 + 48) = v410;
  v411 = v457 + v401;
  v412 = v432;
  sub_1D5CDE2EC(v411, v432, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  if ((*(v433 + 48))(v412, 1, v434) != 1)
  {
    v413 = (*(v433 + 32))(v431, v432, v434);
    MEMORY[0x1EEE9AC00](v413, v414);
    *(&v428 - 4) = sub_1D5B4AA6C;
    *(&v428 - 3) = 0;
    v426 = sub_1D6708A90;
    v427 = v409;
    LOBYTE(v463) = 0;
    v415 = swift_allocObject();
    *(v415 + 16) = v460;
    *(v415 + 32) = v463;
    *(v415 + 40) = v429;
    *(v415 + 48) = v428;
    swift_retain_n();
    v416 = sub_1D72647CC();
    LOBYTE(v463) = 0;
    v417 = swift_allocObject();
    *(v417 + 16) = v416;
    *(v417 + 24) = v460;
    *(v417 + 40) = v463;
    v418 = __swift_project_boxed_opaque_existential_1(v461, *(v461 + 24));
    MEMORY[0x1EEE9AC00](v418, v419);
    MEMORY[0x1EEE9AC00](v420, v421);
    *(&v428 - 4) = sub_1D615B4A4;
    *(&v428 - 3) = (&v428 - 6);
    v426 = sub_1D6708A90;
    v427 = v415;
    v422 = v462;
    v424 = sub_1D5D2F7A4(v436, sub_1D615B49C, v423, sub_1D615B4A4, (&v428 - 6));
    if (v422)
    {
    }

    else
    {
      v425 = v424;

      if (v425)
      {
        sub_1D5B58B84(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58]);
        sub_1D72647EC();
      }
    }

    (*(v433 + 8))(v431, v434);
    v189 = v436;
    goto LABEL_51;
  }

  sub_1D5D2CFE8(v436, type metadata accessor for FormatVersionRequirement);

  sub_1D5D2CFE8(v483, sub_1D6697D00);
  return sub_1D5D35558(v432, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B5BF78);
}

uint64_t sub_1D64EBC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6698DBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64EBC94(uint64_t a1)
{
  v2 = sub_1D5C93ED4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64EBCD0(uint64_t a1)
{
  v2 = sub_1D5C93ED4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatImageNodeStyle.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v350 = &v345 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v352 = &v345 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v354 = &v345 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v357 = &v345 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v358 = &v345 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v359 = &v345 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v363 = &v345 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v364 = &v345 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v366 = &v345 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v370 = &v345 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v371 = &v345 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v372 = &v345 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v378 = &v345 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v345 - v44;
  sub_1D66982A8();
  v47 = v46;
  MEMORY[0x1EEE9AC00](v46, v48);
  v50 = &v345 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *(v1 + 8);
  *&v385 = *v1;
  v52 = *(v1 + 16);
  v373 = *(v1 + 24);
  v374 = v52;
  v53 = *(v1 + 32);
  v368 = *(v1 + 40);
  v369 = v53;
  v367 = *(v1 + 48);
  v54 = *(v1 + 104);
  v408 = *(v1 + 88);
  v409 = v54;
  v410 = *(v1 + 120);
  v411 = *(v1 + 136);
  v55 = *(v1 + 72);
  v406 = *(v1 + 56);
  v407 = v55;
  v365 = *(v1 + 144);
  v362 = *(v1 + 152);
  v360 = *(v1 + 153);
  v361 = *(v1 + 160);
  v356 = *(v1 + 168);
  v56 = *(v1 + 184);
  v355 = *(v1 + 176);
  v353 = v56;
  v57 = *(v1 + 200);
  v351 = *(v1 + 192);
  v348 = *(v1 + 208);
  v349 = v57;
  v58 = a1[3];
  v59 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v58);
  sub_1D5C86B30();
  v61 = v60;
  v62 = sub_1D5B58B84(&qword_1EDF253C8, sub_1D5C86B30);
  sub_1D5D2EE70(&type metadata for FormatImageNodeStyle.Selector, v61, v63, v58, &type metadata for FormatImageNodeStyle.Selector, v61, &type metadata for FormatVersions.JazzkonC, v59, v50, v62, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v64 = sub_1D725BD1C();
  v65 = __swift_project_value_buffer(v64, qword_1EDFFCD30);
  v66 = *(v64 - 8);
  v67 = *(v66 + 16);
  v379 = v64;
  v380 = v65;
  v375 = v66 + 16;
  v376 = v67;
  (v67)(v45);
  v381 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v387 = v385;
  *(&v387 + 1) = v51;
  v393 = 0uLL;
  LOBYTE(v394) = 0;
  v68 = &v50[*(v47 + 44)];
  v70 = *v68;
  v69 = *(v68 + 1);
  v412 = v45;
  LOBYTE(v404) = 0;
  v71 = swift_allocObject();
  *&v385 = &v345;
  *(v71 + 16) = 0;
  *(v71 + 24) = 0;
  *(v71 + 32) = v404;
  *(v71 + 40) = v70;
  *(v71 + 48) = v69;
  MEMORY[0x1EEE9AC00](v71, v72);
  *(&v345 - 4) = sub_1D5B4AA6C;
  *(&v345 - 3) = 0;
  v343 = sub_1D6708A94;
  v344 = v73;
  LOBYTE(v404) = 0;
  v74 = swift_allocObject();
  *(v74 + 16) = 0;
  *(v74 + 24) = 0;
  *(v74 + 32) = v404;
  v377 = v70;
  *(v74 + 40) = v70;
  *(v74 + 48) = v69;
  sub_1D669833C();
  v76 = v75;
  v77 = sub_1D5B58B84(&qword_1EDF033F8, sub_1D669833C);
  v384 = v69;
  swift_retain_n();
  v382 = v76;
  v383 = v77;
  v78 = sub_1D72647CC();
  LOBYTE(v404) = 0;
  v79 = swift_allocObject();
  *(v79 + 24) = 0;
  *(v79 + 32) = 0;
  *(v79 + 16) = v78;
  *(v79 + 40) = v404;
  v80 = *(v47 + 36);
  v81 = v50;
  v82 = &v50[v80];
  v83 = __swift_project_boxed_opaque_existential_1(v82, *(v82 + 3));
  MEMORY[0x1EEE9AC00](v83, v84);
  MEMORY[0x1EEE9AC00](v85, v86);
  *(&v345 - 4) = sub_1D615B4A4;
  *(&v345 - 3) = (&v345 - 6);
  v343 = sub_1D6708A94;
  v344 = v74;
  v87 = v412;
  v88 = v386;
  sub_1D5D2BC70(v412, sub_1D615B49C, v89, sub_1D615B4A4, (&v345 - 6));
  if (v88)
  {
    sub_1D5D2CFE8(v87, type metadata accessor for FormatVersionRequirement);

    v90 = v81;
LABEL_6:
    v92 = v90;
    return sub_1D5D2CFE8(v92, sub_1D66982A8);
  }

  v347 = v82;

  sub_1D5D3E60C();
  sub_1D72647EC();
  v91 = v81;
  *&v386 = 0;
  sub_1D5D2CFE8(v87, type metadata accessor for FormatVersionRequirement);

  v95 = v378;
  v94 = v379;
  v96 = v376;
  v376(v378, v380, v379);
  swift_storeEnumTagMultiPayload();
  v385 = xmmword_1D728CF30;
  v393 = xmmword_1D728CF30;
  LOBYTE(v394) = 0;
  LOBYTE(v387) = 0;
  v97 = swift_allocObject();
  v99 = v97;
  *(v97 + 16) = v385;
  *(v97 + 32) = v387;
  v100 = v377;
  v101 = v384;
  *(v97 + 40) = v377;
  *(v97 + 48) = v101;
  v346 = v91;
  if ((~v374 & 0xF000000000000007) == 0)
  {

    goto LABEL_10;
  }

  v412 = &v345;
  *&v387 = v374;
  MEMORY[0x1EEE9AC00](v97, v98);
  *(&v345 - 4) = sub_1D5B4AA6C;
  *(&v345 - 3) = 0;
  v343 = sub_1D6708A94;
  v344 = v99;
  LOBYTE(v404) = 0;
  v120 = v119;
  v121 = swift_allocObject();
  *(v121 + 16) = v385;
  *(v121 + 32) = v404;
  *(v121 + 40) = v100;
  *(v121 + 48) = v384;
  swift_retain_n();
  sub_1D5D04BD4(v120);
  v122 = sub_1D72647CC();
  LOBYTE(v404) = 0;
  v123 = swift_allocObject();
  *(v123 + 16) = v122;
  *(v123 + 24) = v385;
  *(v123 + 40) = v404;
  v124 = __swift_project_boxed_opaque_existential_1(v347, *(v347 + 3));
  MEMORY[0x1EEE9AC00](v124, v125);
  MEMORY[0x1EEE9AC00](v126, v127);
  *(&v345 - 4) = sub_1D615B4A4;
  *(&v345 - 3) = (&v345 - 6);
  v343 = sub_1D6708A94;
  v344 = v121;
  v128 = v386;
  v130 = sub_1D5D2F7A4(v95, sub_1D615B49C, v129, sub_1D615B4A4, (&v345 - 6));
  *&v386 = v128;
  if (v128)
  {

    v117 = v346;
LABEL_16:

    v118 = v95;
    goto LABEL_17;
  }

  v133 = v130;

  if (v133)
  {
    sub_1D5D4A808();
    v117 = v346;
    v134 = v386;
    sub_1D72647EC();
    v96 = v376;
    v100 = v377;
    v94 = v379;
    if (v134)
    {

      v95 = v378;
      goto LABEL_16;
    }

    *&v386 = 0;
  }

  else
  {

    v96 = v376;
    v100 = v377;
    v94 = v379;
  }

LABEL_10:
  sub_1D5D2CFE8(v378, type metadata accessor for FormatVersionRequirement);
  v102 = v372;
  v96(v372, v380, v94);
  swift_storeEnumTagMultiPayload();
  v385 = xmmword_1D7297410;
  v393 = xmmword_1D7297410;
  LOBYTE(v394) = 0;
  LOBYTE(v387) = 0;
  v103 = swift_allocObject();
  v105 = v103;
  *(v103 + 16) = v385;
  *(v103 + 32) = v387;
  v106 = v384;
  *(v103 + 40) = v100;
  *(v103 + 48) = v106;
  if (v373)
  {
    v412 = &v345;
    *&v387 = v373;
    MEMORY[0x1EEE9AC00](v103, v104);
    *(&v345 - 4) = sub_1D5B4AA6C;
    *(&v345 - 3) = 0;
    v343 = sub_1D6708A94;
    v344 = v105;
    LOBYTE(v404) = 0;
    v107 = swift_allocObject();
    *(v107 + 16) = v385;
    *(v107 + 32) = v404;
    *(v107 + 40) = v100;
    *(v107 + 48) = v384;
    swift_retain_n();

    v108 = sub_1D72647CC();
    LOBYTE(v404) = 0;
    v109 = swift_allocObject();
    *(v109 + 16) = v108;
    *(v109 + 24) = v385;
    *(v109 + 40) = v404;
    v110 = __swift_project_boxed_opaque_existential_1(v347, *(v347 + 3));
    MEMORY[0x1EEE9AC00](v110, v111);
    MEMORY[0x1EEE9AC00](v112, v113);
    *(&v345 - 4) = sub_1D615B4A4;
    *(&v345 - 3) = (&v345 - 6);
    v343 = sub_1D6708A94;
    v344 = v107;
    v114 = v386;
    v116 = sub_1D5D2F7A4(v102, sub_1D615B49C, v115, sub_1D615B4A4, (&v345 - 6));
    *&v386 = v114;
    if (v114)
    {

      v117 = v346;
LABEL_13:
      v118 = v102;
LABEL_17:
      sub_1D5D2CFE8(v118, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v117, sub_1D66982A8);
    }

    v135 = v116;

    if (v135)
    {
      sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
      sub_1D66612AC();
      v136 = v346;
      v137 = v386;
      sub_1D72647EC();
      v131 = v376;
      v132 = v377;
      if (v137)
      {

        v117 = v136;
        goto LABEL_13;
      }

      *&v386 = 0;

      sub_1D5D2CFE8(v102, type metadata accessor for FormatVersionRequirement);
      v90 = v136;
    }

    else
    {

      sub_1D5D2CFE8(v102, type metadata accessor for FormatVersionRequirement);
      v90 = v346;
      v131 = v376;
      v132 = v377;
    }
  }

  else
  {
    v131 = v96;
    v132 = v100;

    sub_1D5D2CFE8(v102, type metadata accessor for FormatVersionRequirement);

    v90 = v346;
  }

  v138 = v371;
  v131(v371, v380, v379);
  swift_storeEnumTagMultiPayload();
  v385 = xmmword_1D72BAA60;
  v404 = xmmword_1D72BAA60;
  v405 = 0;
  LOBYTE(v393) = 0;
  v139 = swift_allocObject();
  v141 = v139;
  *(v139 + 16) = v385;
  *(v139 + 32) = v393;
  v142 = v384;
  *(v139 + 40) = v132;
  *(v139 + 48) = v142;
  if (v367 > 0xFD)
  {

    sub_1D5D2CFE8(v138, type metadata accessor for FormatVersionRequirement);

    v143 = v132;
    v144 = v131;
    v145 = v379;
    goto LABEL_31;
  }

  v412 = &v345;
  v401 = v369;
  v402 = v368;
  v184 = v384;
  v403 = v367;
  MEMORY[0x1EEE9AC00](v139, v140);
  *(&v345 - 4) = sub_1D5B4AA6C;
  *(&v345 - 3) = 0;
  v343 = sub_1D6708A94;
  v344 = v141;
  LOBYTE(v393) = 0;
  v186 = v185;
  v187 = swift_allocObject();
  *(v187 + 16) = v385;
  *(v187 + 32) = v393;
  *(v187 + 40) = v132;
  *(v187 + 48) = v184;
  swift_retain_n();
  sub_1D5ED34B0(v369, v368, v186);
  v188 = sub_1D72647CC();
  LOBYTE(v393) = 0;
  v189 = swift_allocObject();
  *(v189 + 16) = v188;
  *(v189 + 24) = v385;
  *(v189 + 40) = v393;
  v190 = __swift_project_boxed_opaque_existential_1(v347, *(v347 + 3));
  MEMORY[0x1EEE9AC00](v190, v191);
  MEMORY[0x1EEE9AC00](v192, v193);
  *(&v345 - 4) = sub_1D615B4A4;
  *(&v345 - 3) = (&v345 - 6);
  v343 = sub_1D6708A94;
  v344 = v187;
  v194 = v371;
  v195 = v386;
  v197 = sub_1D5D2F7A4(v371, sub_1D615B49C, v196, sub_1D615B4A4, (&v345 - 6));
  *&v386 = v195;
  if (v195)
  {

    v90 = v346;
LABEL_48:
    sub_1D5ED34A0(v401, v402, v403);
    sub_1D5D2CFE8(v194, type metadata accessor for FormatVersionRequirement);
    goto LABEL_6;
  }

  v218 = v197;

  if (v218)
  {
    sub_1D6661258();
    v90 = v346;
    v219 = v386;
    sub_1D72647EC();
    v144 = v376;
    v143 = v377;
    v145 = v379;
    if (v219)
    {

      v194 = v371;
      goto LABEL_48;
    }

    *&v386 = 0;

    sub_1D5ED34A0(v401, v402, v403);
    sub_1D5D2CFE8(v371, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D5ED34A0(v401, v402, v403);
    sub_1D5D2CFE8(v194, type metadata accessor for FormatVersionRequirement);
    v90 = v346;
    v144 = v376;
    v143 = v377;
    v145 = v379;
  }

LABEL_31:
  v146 = v370;
  v144(v370, v380, v145);
  swift_storeEnumTagMultiPayload();
  v385 = xmmword_1D72BAA70;
  v399 = xmmword_1D72BAA70;
  v400 = 0;
  LOBYTE(v393) = 0;
  v147 = swift_allocObject();
  v149 = v147;
  *(v147 + 16) = v385;
  *(v147 + 32) = v393;
  v150 = v384;
  *(v147 + 40) = v143;
  *(v147 + 48) = v150;
  if (v411 == 254)
  {

    goto LABEL_33;
  }

  v412 = &v345;
  v395 = v408;
  v396 = v409;
  v397 = v410;
  v398 = v411;
  v393 = v406;
  v394 = v407;
  MEMORY[0x1EEE9AC00](v147, v148);
  *(&v345 - 4) = sub_1D5B4AA6C;
  *(&v345 - 3) = 0;
  v343 = sub_1D6708A94;
  v344 = v149;
  LOBYTE(v387) = 0;
  v198 = swift_allocObject();
  *(v198 + 16) = v385;
  *(v198 + 32) = v387;
  *(v198 + 40) = v143;
  *(v198 + 48) = v384;
  swift_retain_n();
  sub_1D5D355B8(&v406, &v387, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
  v199 = sub_1D72647CC();
  LOBYTE(v387) = 0;
  v200 = swift_allocObject();
  *(v200 + 16) = v199;
  *(v200 + 24) = v385;
  *(v200 + 40) = v387;
  v201 = __swift_project_boxed_opaque_existential_1(v347, *(v347 + 3));
  MEMORY[0x1EEE9AC00](v201, v202);
  MEMORY[0x1EEE9AC00](v203, v204);
  *(&v345 - 4) = sub_1D615B4A4;
  *(&v345 - 3) = (&v345 - 6);
  v343 = sub_1D6708A94;
  v344 = v198;
  v205 = v386;
  v207 = sub_1D5D2F7A4(v146, sub_1D615B49C, v206, sub_1D615B4A4, (&v345 - 6));
  *&v386 = v205;
  if (v205)
  {

    v389 = v395;
    v390 = v396;
    v391 = v397;
    v392 = v398;
    v387 = v393;
    v388 = v394;
    sub_1D601144C(&v387);
    v90 = v346;
LABEL_51:
    sub_1D5D2CFE8(v146, type metadata accessor for FormatVersionRequirement);
    goto LABEL_6;
  }

  v230 = v207;

  if (v230)
  {
    sub_1D6661204();
    v90 = v346;
    v231 = v386;
    sub_1D72647EC();
    v144 = v376;
    v143 = v377;
    v145 = v379;
    if (v231)
    {

      v389 = v395;
      v390 = v396;
      v391 = v397;
      v392 = v398;
      v387 = v393;
      v388 = v394;
      sub_1D601144C(&v387);
      v146 = v370;
      goto LABEL_51;
    }

    *&v386 = 0;

    v389 = v395;
    v390 = v396;
    v391 = v397;
    v392 = v398;
    v387 = v393;
    v388 = v394;
    sub_1D601144C(&v387);
  }

  else
  {

    v389 = v395;
    v390 = v396;
    v391 = v397;
    v392 = v398;
    v387 = v393;
    v388 = v394;
    sub_1D601144C(&v387);
    v90 = v346;
    v144 = v376;
    v143 = v377;
    v145 = v379;
  }

LABEL_33:
  sub_1D5D2CFE8(v370, type metadata accessor for FormatVersionRequirement);
  v151 = v366;
  v144(v366, v380, v145);
  swift_storeEnumTagMultiPayload();
  v385 = xmmword_1D72BAA80;
  v393 = xmmword_1D72BAA80;
  LOBYTE(v394) = 0;
  LOBYTE(v387) = 0;
  v152 = swift_allocObject();
  v154 = v152;
  *(v152 + 16) = v385;
  *(v152 + 32) = v387;
  v155 = v384;
  *(v152 + 40) = v143;
  *(v152 + 48) = v155;
  v156 = v365;
  if ((~v365 & 0xF000000000000007) != 0)
  {
    v412 = &v345;
    *&v387 = v365;
    MEMORY[0x1EEE9AC00](v152, v153);
    *(&v345 - 4) = sub_1D5B4AA6C;
    *(&v345 - 3) = 0;
    v343 = sub_1D6708A94;
    v344 = v154;
    LOBYTE(v399) = 0;
    v208 = swift_allocObject();
    *(v208 + 16) = v385;
    *(v208 + 32) = v399;
    *(v208 + 40) = v143;
    *(v208 + 48) = v384;
    swift_retain_n();
    sub_1D5CFCFAC(v156);
    v209 = sub_1D72647CC();
    LOBYTE(v399) = 0;
    v210 = swift_allocObject();
    *(v210 + 16) = v209;
    *(v210 + 24) = v385;
    *(v210 + 40) = v399;
    v211 = __swift_project_boxed_opaque_existential_1(v347, *(v347 + 3));
    MEMORY[0x1EEE9AC00](v211, v212);
    MEMORY[0x1EEE9AC00](v213, v214);
    *(&v345 - 4) = sub_1D615B4A4;
    *(&v345 - 3) = (&v345 - 6);
    v343 = sub_1D6708A94;
    v344 = v208;
    v215 = v386;
    v217 = sub_1D5D2F7A4(v151, sub_1D615B49C, v216, sub_1D615B4A4, (&v345 - 6));
    if (v215)
    {

      sub_1D5D2CFE8(v151, type metadata accessor for FormatVersionRequirement);
      v92 = v346;
      return sub_1D5D2CFE8(v92, sub_1D66982A8);
    }

    v242 = v217;

    if (v242)
    {
      sub_1D5B55CBC();
      sub_1D72647EC();
      v157 = 0;
      v144 = v376;
      v143 = v377;
      v145 = v379;

      v90 = v346;
    }

    else
    {

      v157 = 0;
      v90 = v346;
      v144 = v376;
      v143 = v377;
      v145 = v379;
    }
  }

  else
  {

    v157 = v386;
  }

  sub_1D5D2CFE8(v366, type metadata accessor for FormatVersionRequirement);
  if (qword_1EDF31F08 != -1)
  {
    swift_once();
  }

  *&v386 = v157;
  v158 = __swift_project_value_buffer(v145, qword_1EDFFCDE0);
  v159 = v364;
  v144(v364, v158, v145);
  swift_storeEnumTagMultiPayload();
  v385 = xmmword_1D72BAA90;
  v393 = xmmword_1D72BAA90;
  LOBYTE(v394) = 0;
  LOBYTE(v387) = 0;
  v160 = swift_allocObject();
  v162 = v160;
  *(v160 + 16) = v385;
  *(v160 + 32) = v387;
  v163 = v384;
  *(v160 + 40) = v143;
  *(v160 + 48) = v163;
  if (v362 == 2)
  {
  }

  else
  {
    v412 = &v345;
    LOBYTE(v387) = v362 & 1;
    MEMORY[0x1EEE9AC00](v160, v161);
    *(&v345 - 4) = sub_1D5B4AA6C;
    *(&v345 - 3) = 0;
    v343 = sub_1D6708A94;
    v344 = v162;
    LOBYTE(v399) = 0;
    v220 = swift_allocObject();
    *(v220 + 16) = v385;
    *(v220 + 32) = v399;
    *(v220 + 40) = v143;
    *(v220 + 48) = v384;
    swift_retain_n();
    v221 = sub_1D72647CC();
    LOBYTE(v399) = 0;
    v222 = swift_allocObject();
    *(v222 + 16) = v221;
    *(v222 + 24) = v385;
    *(v222 + 40) = v399;
    v223 = __swift_project_boxed_opaque_existential_1(v347, *(v347 + 3));
    MEMORY[0x1EEE9AC00](v223, v224);
    MEMORY[0x1EEE9AC00](v225, v226);
    *(&v345 - 4) = sub_1D615B4A4;
    *(&v345 - 3) = (&v345 - 6);
    v343 = sub_1D6708A94;
    v344 = v220;
    v227 = v386;
    v229 = sub_1D5D2F7A4(v159, sub_1D615B49C, v228, sub_1D615B4A4, (&v345 - 6));
    *&v386 = v227;
    if (v227)
    {
      goto LABEL_64;
    }

    v243 = v229;

    if (v243)
    {
      v90 = v346;
      v244 = v386;
      sub_1D72647EC();
      v144 = v376;
      v143 = v377;
      v145 = v379;
      if (v244)
      {
        v245 = v364;
LABEL_90:
        sub_1D5D2CFE8(v245, type metadata accessor for FormatVersionRequirement);

        goto LABEL_6;
      }

      *&v386 = 0;
      v159 = v364;
    }

    else
    {
      v90 = v346;
      v144 = v376;
      v143 = v377;
      v145 = v379;
    }
  }

  sub_1D5D2CFE8(v159, type metadata accessor for FormatVersionRequirement);

  v159 = v363;
  v144(v363, v380, v145);
  swift_storeEnumTagMultiPayload();
  v385 = xmmword_1D72BAAA0;
  v393 = xmmword_1D72BAAA0;
  LOBYTE(v394) = 0;
  LOBYTE(v387) = 0;
  v164 = swift_allocObject();
  v166 = v164;
  *(v164 + 16) = v385;
  *(v164 + 32) = v387;
  v167 = v384;
  *(v164 + 40) = v143;
  *(v164 + 48) = v167;
  if (v360 == 4)
  {

    v168 = v386;
  }

  else
  {
    v412 = &v345;
    LOBYTE(v387) = v360;
    MEMORY[0x1EEE9AC00](v164, v165);
    *(&v345 - 4) = sub_1D5B4AA6C;
    *(&v345 - 3) = 0;
    v343 = sub_1D6708A94;
    v344 = v166;
    LOBYTE(v399) = 0;
    v232 = swift_allocObject();
    *(v232 + 16) = v385;
    *(v232 + 32) = v399;
    *(v232 + 40) = v143;
    *(v232 + 48) = v384;
    swift_retain_n();
    v233 = sub_1D72647CC();
    LOBYTE(v399) = 0;
    v234 = swift_allocObject();
    *(v234 + 16) = v233;
    *(v234 + 24) = v385;
    *(v234 + 40) = v399;
    v235 = __swift_project_boxed_opaque_existential_1(v347, *(v347 + 3));
    MEMORY[0x1EEE9AC00](v235, v236);
    MEMORY[0x1EEE9AC00](v237, v238);
    *(&v345 - 4) = sub_1D615B4A4;
    *(&v345 - 3) = (&v345 - 6);
    v343 = sub_1D6708A94;
    v344 = v232;
    v239 = v386;
    v241 = sub_1D5D2F7A4(v159, sub_1D615B49C, v240, sub_1D615B4A4, (&v345 - 6));
    if (v239)
    {
      goto LABEL_64;
    }

    v246 = v241;

    if (v246)
    {
      sub_1D6698038();
      v90 = v346;
      sub_1D72647EC();
      v168 = 0;
    }

    else
    {
      v168 = 0;
      v90 = v346;
    }

    v144 = v376;
    v143 = v377;
    v145 = v379;
  }

  sub_1D5D2CFE8(v363, type metadata accessor for FormatVersionRequirement);

  v169 = qword_1EDF31F38;
  v170 = v361;

  if (v169 != -1)
  {
    swift_once();
  }

  v171 = __swift_project_value_buffer(v145, qword_1EDFFCE38);
  v172 = v359;
  v144(v359, v171, v145);
  swift_storeEnumTagMultiPayload();
  if (v170)
  {
    LOBYTE(v393) = 0;
    v173 = swift_allocObject();
    v386 = xmmword_1D72BAAB0;
    *(v173 + 16) = xmmword_1D72BAAB0;
    *(v173 + 32) = v393;
    *(v173 + 40) = v143;
    *(v173 + 48) = v384;

    v174 = v172;
    v175 = v168;
    v176 = sub_1D72647CC();
    LOBYTE(v393) = 0;
    v177 = swift_allocObject();
    *(v177 + 16) = v176;
    *(v177 + 24) = v386;
    *(v177 + 40) = v393;
    v178 = __swift_project_boxed_opaque_existential_1(v347, *(v347 + 3));
    *&v385 = &v345;
    MEMORY[0x1EEE9AC00](v178, v179);
    MEMORY[0x1EEE9AC00](v180, v181);
    *(&v345 - 4) = sub_1D5B4AA6C;
    *(&v345 - 3) = 0;
    v343 = sub_1D6708A94;
    v344 = v173;
    v183 = sub_1D5D2F7A4(v174, sub_1D615B49C, v182, sub_1D615B4A4, (&v345 - 6));
    if (v175)
    {

      sub_1D5D2CFE8(v174, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v90, sub_1D66982A8);
    }

    v247 = v183;

    if (v247)
    {
      v393 = v386;
      LOBYTE(v394) = 0;
      *&v387 = v361;
      sub_1D667412C(0, &qword_1EDF04E90, &qword_1EDF1B110, &type metadata for FormatImageTransform);
      sub_1D6697F0C();
      sub_1D72647EC();
      v143 = v377;
      v248 = v359;
      *&v386 = 0;

      sub_1D5D2CFE8(v248, type metadata accessor for FormatVersionRequirement);
      v145 = v379;
      v144 = v376;
    }

    else
    {
      *&v386 = 0;

      sub_1D5D2CFE8(v359, type metadata accessor for FormatVersionRequirement);
      v144 = v376;
      v143 = v377;
      v145 = v379;
    }
  }

  else
  {
    *&v386 = v168;
    sub_1D5D2CFE8(v172, type metadata accessor for FormatVersionRequirement);
  }

  v249 = v358;
  v144(v358, v380, v145);
  swift_storeEnumTagMultiPayload();
  v385 = xmmword_1D72BAAC0;
  v393 = xmmword_1D72BAAC0;
  LOBYTE(v394) = 0;
  LOBYTE(v387) = 0;
  v250 = swift_allocObject();
  v252 = v250;
  *(v250 + 16) = v385;
  *(v250 + 32) = v387;
  v253 = v384;
  *(v250 + 40) = v143;
  *(v250 + 48) = v253;
  if (v356 == 9)
  {

    goto LABEL_94;
  }

  v412 = &v345;
  LOBYTE(v387) = v356;
  MEMORY[0x1EEE9AC00](v250, v251);
  *(&v345 - 4) = sub_1D5B4AA6C;
  *(&v345 - 3) = 0;
  v343 = sub_1D6708A94;
  v344 = v252;
  LOBYTE(v399) = 0;
  v254 = swift_allocObject();
  *(v254 + 16) = v385;
  *(v254 + 32) = v399;
  *(v254 + 40) = v143;
  *(v254 + 48) = v384;
  swift_retain_n();
  v159 = v249;
  v255 = sub_1D72647CC();
  LOBYTE(v399) = 0;
  v256 = swift_allocObject();
  *(v256 + 16) = v255;
  *(v256 + 24) = v385;
  *(v256 + 40) = v399;
  v257 = __swift_project_boxed_opaque_existential_1(v347, *(v347 + 3));
  MEMORY[0x1EEE9AC00](v257, v258);
  MEMORY[0x1EEE9AC00](v259, v260);
  *(&v345 - 4) = sub_1D615B4A4;
  *(&v345 - 3) = (&v345 - 6);
  v343 = sub_1D6708A94;
  v344 = v254;
  v261 = v386;
  v263 = sub_1D5D2F7A4(v159, sub_1D615B49C, v262, sub_1D615B4A4, (&v345 - 6));
  *&v386 = v261;
  if (v261)
  {
LABEL_64:
    sub_1D5D2CFE8(v159, type metadata accessor for FormatVersionRequirement);

    v90 = v346;
    goto LABEL_6;
  }

  v264 = v263;

  if (v264)
  {
    sub_1D669808C();
    v90 = v346;
    v265 = v386;
    sub_1D72647EC();
    if (v265)
    {
      v245 = v159;
      goto LABEL_90;
    }

    *&v386 = 0;
  }

  else
  {
    v90 = v346;
  }

  v144 = v376;
  v143 = v377;
  v145 = v379;
LABEL_94:
  sub_1D5D2CFE8(v358, type metadata accessor for FormatVersionRequirement);

  v266 = v357;
  v144(v357, v380, v145);
  swift_storeEnumTagMultiPayload();
  v385 = xmmword_1D72BAAD0;
  v393 = xmmword_1D72BAAD0;
  LOBYTE(v394) = 0;
  LOBYTE(v387) = 0;
  v267 = swift_allocObject();
  v269 = v267;
  *(v267 + 16) = v385;
  *(v267 + 32) = v387;
  v270 = v384;
  *(v267 + 40) = v143;
  *(v267 + 48) = v270;
  if (v355 == 3)
  {

    goto LABEL_105;
  }

  v412 = &v345;
  *&v387 = v355;
  MEMORY[0x1EEE9AC00](v267, v268);
  *(&v345 - 4) = sub_1D5B4AA6C;
  *(&v345 - 3) = 0;
  v343 = sub_1D6708A94;
  v344 = v269;
  LOBYTE(v399) = 0;
  v272 = v271;
  v273 = swift_allocObject();
  *(v273 + 16) = v385;
  *(v273 + 32) = v399;
  *(v273 + 40) = v143;
  *(v273 + 48) = v384;
  swift_retain_n();
  sub_1D5D0AF9C(v272);
  v274 = v266;
  v275 = sub_1D72647CC();
  LOBYTE(v399) = 0;
  v276 = swift_allocObject();
  *(v276 + 16) = v275;
  *(v276 + 24) = v385;
  *(v276 + 40) = v399;
  v277 = __swift_project_boxed_opaque_existential_1(v347, *(v347 + 3));
  MEMORY[0x1EEE9AC00](v277, v278);
  MEMORY[0x1EEE9AC00](v279, v280);
  *(&v345 - 4) = sub_1D615B4A4;
  *(&v345 - 3) = (&v345 - 6);
  v343 = sub_1D6708A94;
  v344 = v273;
  v281 = v386;
  v283 = sub_1D5D2F7A4(v274, sub_1D615B49C, v282, sub_1D615B4A4, (&v345 - 6));
  *&v386 = v281;
  if (v281)
  {

    v90 = v346;
LABEL_98:
    sub_1D5D0AFCC(v387);
LABEL_109:
    sub_1D5D2CFE8(v274, type metadata accessor for FormatVersionRequirement);
    goto LABEL_6;
  }

  v284 = v283;

  if (v284)
  {
    sub_1D5CD90A4();
    v90 = v346;
    v285 = v386;
    sub_1D72647EC();
    if (v285)
    {

      goto LABEL_98;
    }

    *&v386 = 0;

    sub_1D5D0AFCC(v387);
  }

  else
  {

    sub_1D5D0AFCC(v387);
    v90 = v346;
  }

  v144 = v376;
  v143 = v377;
  v145 = v379;
LABEL_105:
  sub_1D5D2CFE8(v357, type metadata accessor for FormatVersionRequirement);
  v286 = v354;
  v144(v354, v380, v145);
  swift_storeEnumTagMultiPayload();
  v385 = xmmword_1D72BAAE0;
  v393 = xmmword_1D72BAAE0;
  LOBYTE(v394) = 0;
  LOBYTE(v387) = 0;
  v287 = swift_allocObject();
  v289 = v287;
  *(v287 + 16) = v385;
  *(v287 + 32) = v387;
  v290 = v384;
  *(v287 + 40) = v143;
  *(v287 + 48) = v290;
  if (v353)
  {
    v412 = &v345;
    *&v387 = v353;
    MEMORY[0x1EEE9AC00](v287, v288);
    *(&v345 - 4) = sub_1D5B4AA6C;
    *(&v345 - 3) = 0;
    v343 = sub_1D6708A94;
    v344 = v289;
    LOBYTE(v399) = 0;
    v291 = swift_allocObject();
    *(v291 + 16) = v385;
    *(v291 + 32) = v399;
    *(v291 + 40) = v143;
    *(v291 + 48) = v384;
    swift_retain_n();

    v274 = v286;
    v292 = sub_1D72647CC();
    LOBYTE(v399) = 0;
    v293 = swift_allocObject();
    *(v293 + 16) = v292;
    *(v293 + 24) = v385;
    *(v293 + 40) = v399;
    v294 = __swift_project_boxed_opaque_existential_1(v347, *(v347 + 3));
    MEMORY[0x1EEE9AC00](v294, v295);
    MEMORY[0x1EEE9AC00](v296, v297);
    *(&v345 - 4) = sub_1D615B4A4;
    *(&v345 - 3) = (&v345 - 6);
    v343 = sub_1D6708A94;
    v344 = v291;
    v298 = v386;
    v300 = sub_1D5D2F7A4(v274, sub_1D615B49C, v299, sub_1D615B4A4, (&v345 - 6));
    *&v386 = v298;
    if (v298)
    {

      v90 = v346;
LABEL_108:

      goto LABEL_109;
    }

    v301 = v300;

    if (v301)
    {
      sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
      sub_1D66582DC();
      v90 = v346;
      v302 = v386;
      sub_1D72647EC();
      if (v302)
      {

        goto LABEL_108;
      }

      *&v386 = 0;

      sub_1D5D2CFE8(v274, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v274, type metadata accessor for FormatVersionRequirement);
      v90 = v346;
    }

    v144 = v376;
    v143 = v377;
    v145 = v379;
  }

  else
  {

    sub_1D5D2CFE8(v286, type metadata accessor for FormatVersionRequirement);
  }

  v303 = v352;
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v304 = __swift_project_value_buffer(v145, qword_1EDFFCD50);
  v144(v303, v304, v145);
  swift_storeEnumTagMultiPayload();
  v385 = xmmword_1D72BAAF0;
  v393 = xmmword_1D72BAAF0;
  LOBYTE(v394) = 0;
  LOBYTE(v387) = 0;
  v305 = swift_allocObject();
  v307 = v305;
  *(v305 + 16) = v385;
  *(v305 + 32) = v387;
  v308 = v384;
  *(v305 + 40) = v143;
  *(v305 + 48) = v308;
  if (v351)
  {
    v412 = &v345;
    *&v387 = v351;
    MEMORY[0x1EEE9AC00](v305, v306);
    *(&v345 - 4) = sub_1D5B4AA6C;
    *(&v345 - 3) = 0;
    v343 = sub_1D6708A94;
    v344 = v307;
    LOBYTE(v399) = 0;
    v309 = swift_allocObject();
    *(v309 + 16) = v385;
    *(v309 + 32) = v399;
    *(v309 + 40) = v143;
    *(v309 + 48) = v384;
    swift_retain_n();

    v310 = sub_1D72647CC();
    LOBYTE(v399) = 0;
    v311 = swift_allocObject();
    *(v311 + 16) = v310;
    *(v311 + 24) = v385;
    *(v311 + 40) = v399;
    v312 = __swift_project_boxed_opaque_existential_1(v347, *(v347 + 3));
    MEMORY[0x1EEE9AC00](v312, v313);
    MEMORY[0x1EEE9AC00](v314, v315);
    *(&v345 - 4) = sub_1D615B4A4;
    *(&v345 - 3) = (&v345 - 6);
    v343 = sub_1D6708A94;
    v344 = v309;
    v316 = v386;
    v318 = sub_1D5D2F7A4(v303, sub_1D615B49C, v317, sub_1D615B4A4, (&v345 - 6));
    *&v386 = v316;
    if (v316)
    {

LABEL_122:
      v319 = v352;
LABEL_138:
      sub_1D5D2CFE8(v319, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v90, sub_1D66982A8);
    }

    v320 = v318;

    if (v320)
    {
      sub_1D5C34D84(0, &unk_1EDF1B0B0, &type metadata for FormatImageAdjustment, MEMORY[0x1E69E62F8]);
      sub_1D6698170();
      v321 = v386;
      sub_1D72647EC();
      *&v386 = v321;
      if (v321)
      {

        goto LABEL_122;
      }
    }

    sub_1D5D2CFE8(v352, type metadata accessor for FormatVersionRequirement);
    v144 = v376;
    v143 = v377;
    v145 = v379;
  }

  else
  {

    sub_1D5D2CFE8(v303, type metadata accessor for FormatVersionRequirement);
  }

  v322 = v350;
  if (qword_1EDF31E98 != -1)
  {
    swift_once();
  }

  v323 = __swift_project_value_buffer(v145, qword_1EDFFCD00);
  v144(v322, v323, v145);
  swift_storeEnumTagMultiPayload();
  v385 = xmmword_1D7282A80;
  v393 = xmmword_1D7282A80;
  LOBYTE(v394) = 0;
  LOBYTE(v387) = 0;
  v324 = swift_allocObject();
  v326 = v322;
  v327 = v324;
  *(v324 + 16) = v385;
  *(v324 + 32) = v387;
  v328 = v384;
  *(v324 + 40) = v143;
  *(v324 + 48) = v328;
  v329 = v349;
  if (v349 != 1)
  {
    v412 = &v345;
    *&v387 = v349;
    *(&v387 + 1) = v348;
    MEMORY[0x1EEE9AC00](v324, v325);
    v381 = &v345 - 6;
    *(&v345 - 4) = sub_1D5B4AA6C;
    *(&v345 - 3) = 0;
    v343 = sub_1D6708A94;
    v344 = v327;
    LOBYTE(v399) = 0;
    v330 = swift_allocObject();
    *(v330 + 16) = v385;
    *(v330 + 32) = v399;
    *(v330 + 40) = v143;
    *(v330 + 48) = v328;
    swift_retain_n();
    sub_1D62B5D88(v329);
    v331 = sub_1D72647CC();
    LOBYTE(v399) = 0;
    v332 = swift_allocObject();
    *(v332 + 16) = v331;
    *(v332 + 24) = v385;
    *(v332 + 40) = v399;
    v333 = __swift_project_boxed_opaque_existential_1(v347, *(v347 + 3));
    MEMORY[0x1EEE9AC00](v333, v334);
    MEMORY[0x1EEE9AC00](v335, v336);
    v337 = v381;
    *(&v345 - 4) = sub_1D615B4A4;
    *(&v345 - 3) = v337;
    v343 = sub_1D66983D0;
    v344 = v330;
    v338 = v386;
    v340 = sub_1D5D2F7A4(v350, sub_1D615B49C, v339, sub_1D615B4A4, (&v345 - 6));
    *&v386 = v338;
    if (v338)
    {
    }

    else
    {
      v341 = v340;

      if (v341)
      {
        sub_1D6697EB8();
        v342 = v386;
        sub_1D72647EC();
        *&v386 = v342;
      }
    }

    v319 = v350;
    goto LABEL_138;
  }

  sub_1D5D2CFE8(v326, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v90, sub_1D66982A8);
}