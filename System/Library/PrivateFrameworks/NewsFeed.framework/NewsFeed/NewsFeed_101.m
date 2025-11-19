uint64_t sub_1D6477B6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D6477BC0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  v26 = *(a2 + 32);
  v27 = v8;
  v9 = _s10CodingKeysOMa_310();
  WitnessTable = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v29 = v9;
  v30 = WitnessTable;
  v31 = v11;
  v32 = v12;
  v13 = type metadata accessor for FormatCodingKeysContainer();
  v14 = swift_getWitnessTable();
  sub_1D726446C();
  swift_getWitnessTable();
  v15 = type metadata accessor for VersionedKeyedEncodingContainer();
  v25 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v25 - v17;
  v19 = a1[3];
  v20 = a1[4];
  v21 = __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D5D2EE70(a2, v13, v21, v19, a2, v13, &type metadata for FormatVersions.JazzkonC, v20, v18, v14, &off_1F51F6C78);
  v29 = 0;
  v30 = 0;
  LOBYTE(v31) = 0;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  (*(*(v22 - 8) + 16))(v7, v23, v22);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D5D38930(v28, &v29, v7, sub_1D5B4AA6C, 0, v15, v27, *(v26 + 16));
  sub_1D5D2CFE8(v7, type metadata accessor for FormatVersionRequirement);
  return (*(v25 + 8))(v18, v15);
}

uint64_t sub_1D6477F18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
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

uint64_t sub_1D6477FE0()
{
  _s10CodingKeysOMa_310();
  sub_1D72644CC();
  swift_allocObject();
  v0 = sub_1D726270C();
  *v1 = 256;

  return sub_1D5BFCB60(v0);
}

uint64_t sub_1D6478078()
{
  sub_1D7264A0C();
  sub_1D5DEA254(v2, *v0);
  return sub_1D7264A5C();
}

uint64_t sub_1D64780C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6477F18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64780F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5E31924();
  *a1 = result;
  return result;
}

uint64_t sub_1D6478144@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6477FE0();
  *a1 = result;
  return result;
}

uint64_t sub_1D6478178(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D64781CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatCompilerEnumProperty.encode(to:)(void *a1)
{
  v2 = v1;
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v203 = &v200 - v6;
  v207 = sub_1D725B76C();
  v206 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207, v7);
  v204 = &v200 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v205 = &v200 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v202 = &v200 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v208 = &v200 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v209 = &v200 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v210 = (&v200 - v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  v211 = &v200 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v212 = (&v200 - v29);
  MEMORY[0x1EEE9AC00](v30, v31);
  v220 = (&v200 - v32);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v200 - v35;
  sub_1D6680840();
  v38 = v37;
  MEMORY[0x1EEE9AC00](v37, v39);
  v41 = &v200 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1[3];
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v42);
  v44 = type metadata accessor for FormatCompilerEnumProperty(0);
  sub_1D5CE922C();
  v46 = v45;
  v47 = sub_1D5B58B84(&qword_1EDF25028, sub_1D5CE922C);
  v201 = v44;
  sub_1D5D2EE70(v44, v46, v48, v42, v44, v46, &type metadata for FormatVersions.JazzkonC, v43, v41, v47, &off_1F51F6C78);
  v49 = *v2;
  v50 = v2[1];
  v213 = v2;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v51 = sub_1D725BD1C();
  v52 = __swift_project_value_buffer(v51, qword_1EDFFCD30);
  v53 = *(v51 - 8);
  v54 = *(v53 + 16);
  v215 = v52;
  v218 = v54;
  v219 = v51;
  v217 = v53 + 16;
  (v54)(v36);
  v216 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v229 = v49;
  v230 = v50;
  v227 = 0uLL;
  v228 = 0;
  v55 = &v41[*(v38 + 44)];
  v57 = *v55;
  v56 = *(v55 + 1);
  v231 = 0;
  v58 = swift_allocObject();
  *&v224 = &v200;
  *(v58 + 16) = 0;
  *(v58 + 24) = 0;
  *(v58 + 32) = v231;
  *(v58 + 40) = v57;
  *(v58 + 48) = v56;
  MEMORY[0x1EEE9AC00](v58, v59);
  v223 = (&v200 - 6);
  *(&v200 - 4) = sub_1D5B4AA6C;
  *(&v200 - 3) = 0;
  v198 = sub_1D67089E0;
  v199 = v60;
  v231 = 0;
  v61 = swift_allocObject();
  *(v61 + 16) = 0;
  *(v61 + 24) = 0;
  *(v61 + 32) = v231;
  v214 = v57;
  *(v61 + 40) = v57;
  *(v61 + 48) = v56;
  sub_1D66808D4();
  v63 = v62;
  v64 = sub_1D5B58B84(&qword_1EDF02FA8, sub_1D66808D4);
  swift_retain_n();
  v221 = v64;
  v222 = v63;
  v65 = sub_1D72647CC();
  v231 = 0;
  v66 = swift_allocObject();
  *(v66 + 24) = 0;
  *(v66 + 32) = 0;
  *(v66 + 16) = v65;
  *(v66 + 40) = v231;
  v67 = *(v38 + 36);
  v68 = v36;
  v226 = v41;
  v69 = &v41[v67];
  v70 = __swift_project_boxed_opaque_existential_1(&v41[v67], *&v41[v67 + 24]);
  MEMORY[0x1EEE9AC00](v70, v71);
  MEMORY[0x1EEE9AC00](v72, v73);
  v74 = v223;
  *(&v200 - 4) = sub_1D615B4A4;
  *(&v200 - 3) = v74;
  v198 = sub_1D67089E0;
  v199 = v61;
  v75 = v225;
  sub_1D5D2BC70(v68, sub_1D615B49C, v76, sub_1D615B4A4, (&v200 - 6));
  if (v75)
  {
    sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);

    v93 = v226;
    return sub_1D5D2CFE8(v93, sub_1D6680840);
  }

  v223 = v69;
  v200 = v56;

  sub_1D72647EC();
  sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);

  v77 = v213[2];
  v78 = v213[3];
  v218(v220, v215, v219);
  swift_storeEnumTagMultiPayload();
  v229 = v77;
  v230 = v78;
  v225 = xmmword_1D728CF30;
  v227 = xmmword_1D728CF30;
  v228 = 0;
  v231 = 0;
  v79 = swift_allocObject();
  *&v224 = &v200;
  *(v79 + 16) = v225;
  *(v79 + 32) = v231;
  v80 = v214;
  v81 = v200;
  *(v79 + 40) = v214;
  *(v79 + 48) = v81;
  MEMORY[0x1EEE9AC00](v79, v82);
  *(&v200 - 4) = sub_1D5B4AA6C;
  *(&v200 - 3) = 0;
  v198 = sub_1D67089E0;
  v199 = v83;
  v231 = 0;
  v84 = swift_allocObject();
  *(v84 + 16) = v225;
  *(v84 + 32) = v231;
  *(v84 + 40) = v80;
  *(v84 + 48) = v81;
  swift_retain_n();
  v85 = sub_1D72647CC();
  v231 = 0;
  v86 = swift_allocObject();
  *(v86 + 16) = v85;
  *(v86 + 24) = v225;
  *(v86 + 40) = v231;
  v87 = __swift_project_boxed_opaque_existential_1(v223, *(v223 + 3));
  MEMORY[0x1EEE9AC00](v87, v88);
  MEMORY[0x1EEE9AC00](v89, v90);
  *(&v200 - 4) = sub_1D615B4A4;
  *(&v200 - 3) = (&v200 - 6);
  v91 = v220;
  v198 = sub_1D67089E0;
  v199 = v84;
  sub_1D5D2BC70(v220, sub_1D615B49C, v92, sub_1D615B4A4, (&v200 - 6));

  sub_1D72647EC();
  sub_1D5D2CFE8(v91, type metadata accessor for FormatVersionRequirement);

  v95 = v213[4];
  v96 = v213[5];
  v218(v212, v215, v219);
  swift_storeEnumTagMultiPayload();
  v229 = v95;
  v230 = v96;
  v225 = xmmword_1D7297410;
  v227 = xmmword_1D7297410;
  v228 = 0;
  v231 = 0;
  v97 = swift_allocObject();
  *&v224 = &v200;
  *(v97 + 16) = v225;
  *(v97 + 32) = v231;
  v98 = v214;
  v99 = v200;
  *(v97 + 40) = v214;
  *(v97 + 48) = v99;
  MEMORY[0x1EEE9AC00](v97, v100);
  *(&v200 - 4) = sub_1D5B4AA6C;
  *(&v200 - 3) = 0;
  v198 = sub_1D67089E0;
  v199 = v101;
  v231 = 0;
  v102 = swift_allocObject();
  *(v102 + 16) = v225;
  *(v102 + 32) = v231;
  *(v102 + 40) = v98;
  *(v102 + 48) = v99;
  swift_retain_n();
  v103 = sub_1D72647CC();
  v231 = 0;
  v104 = swift_allocObject();
  *(v104 + 16) = v103;
  *(v104 + 24) = v225;
  *(v104 + 40) = v231;
  v105 = __swift_project_boxed_opaque_existential_1(v223, *(v223 + 3));
  MEMORY[0x1EEE9AC00](v105, v106);
  MEMORY[0x1EEE9AC00](v107, v108);
  *(&v200 - 4) = sub_1D615B4A4;
  *(&v200 - 3) = (&v200 - 6);
  v109 = v212;
  v198 = sub_1D67089E0;
  v199 = v102;
  sub_1D5D2BC70(v212, sub_1D615B49C, v110, sub_1D615B4A4, (&v200 - 6));

  sub_1D72647EC();
  sub_1D5D2CFE8(v109, type metadata accessor for FormatVersionRequirement);

  v111 = v211;
  v218(v211, v215, v219);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v227) = 0;
  v112 = swift_allocObject();
  v225 = xmmword_1D72BAA60;
  *(v112 + 16) = xmmword_1D72BAA60;
  *(v112 + 32) = v227;
  v113 = v200;
  *(v112 + 40) = v214;
  *(v112 + 48) = v113;

  v114 = sub_1D72647CC();
  LOBYTE(v227) = 0;
  v115 = swift_allocObject();
  *(v115 + 16) = v114;
  *(v115 + 24) = v225;
  *(v115 + 40) = v227;
  v116 = __swift_project_boxed_opaque_existential_1(v223, *(v223 + 3));
  MEMORY[0x1EEE9AC00](v116, v117);
  MEMORY[0x1EEE9AC00](v118, v119);
  *(&v200 - 4) = sub_1D5B4AA6C;
  *(&v200 - 3) = 0;
  v198 = sub_1D6680968;
  v199 = v112;
  v121 = sub_1D5D2F7A4(v111, sub_1D615B49C, v120, sub_1D615B4A4, (&v200 - 6));
  v122 = v121;

  if (v122)
  {
    v227 = v225;
    v228 = 0;
    v229 = 0;
    v230 = 0xE000000000000000;
    sub_1D72647EC();
  }

  sub_1D5D2CFE8(v111, type metadata accessor for FormatVersionRequirement);
  v123 = v213;
  v124 = v210;
  v125 = *(v213 + 64);
  v218(v210, v215, v219);
  swift_storeEnumTagMultiPayload();
  if (v125 == 1)
  {
    sub_1D5D2CFE8(v124, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    LOBYTE(v227) = 0;
    v126 = swift_allocObject();
    v225 = xmmword_1D72BAA70;
    *(v126 + 16) = xmmword_1D72BAA70;
    *(v126 + 32) = v227;
    *(v126 + 40) = v214;
    *(v126 + 48) = v113;

    v127 = sub_1D72647CC();
    LOBYTE(v227) = 0;
    v128 = swift_allocObject();
    *(v128 + 16) = v127;
    *(v128 + 24) = v225;
    *(v128 + 40) = v227;
    v129 = __swift_project_boxed_opaque_existential_1(v223, *(v223 + 3));
    MEMORY[0x1EEE9AC00](v129, v130);
    MEMORY[0x1EEE9AC00](v131, v132);
    *(&v200 - 4) = sub_1D5B4AA6C;
    *(&v200 - 3) = 0;
    v198 = sub_1D67089E0;
    v199 = v126;
    LOBYTE(v127) = sub_1D5D2F7A4(v124, sub_1D615B49C, v133, sub_1D615B4A4, (&v200 - 6));

    if (v127)
    {
      v227 = v225;
      v228 = 0;
      LOBYTE(v229) = 0;
      sub_1D72647EC();
      sub_1D5D2CFE8(v210, type metadata accessor for FormatVersionRequirement);
      v123 = v213;
    }

    else
    {
      sub_1D5D2CFE8(v210, type metadata accessor for FormatVersionRequirement);
    }
  }

  v134 = v123[9];
  v135 = v123[10];
  v136 = v209;
  v218(v209, v215, v219);
  swift_storeEnumTagMultiPayload();
  v225 = xmmword_1D72BAA80;
  v227 = xmmword_1D72BAA80;
  v228 = 0;
  LOBYTE(v229) = 0;
  v137 = swift_allocObject();
  v139 = v137;
  *(v137 + 16) = v225;
  *(v137 + 32) = v229;
  v140 = v214;
  v141 = v200;
  *(v137 + 40) = v214;
  *(v137 + 48) = v141;
  if (v135)
  {
    *&v224 = &v200;
    v229 = v134;
    v230 = v135;
    MEMORY[0x1EEE9AC00](v137, v138);
    v220 = &v200 - 6;
    *(&v200 - 4) = sub_1D5B4AA6C;
    *(&v200 - 3) = 0;
    v198 = sub_1D67089E0;
    v199 = v139;
    v231 = 0;
    v142 = swift_allocObject();
    *(v142 + 16) = v225;
    *(v142 + 32) = v231;
    *(v142 + 40) = v140;
    *(v142 + 48) = v141;
    swift_retain_n();

    v143 = sub_1D72647CC();
    v231 = 0;
    v144 = swift_allocObject();
    *(v144 + 16) = v143;
    *(v144 + 24) = v225;
    *(v144 + 40) = v231;
    v145 = __swift_project_boxed_opaque_existential_1(v223, *(v223 + 3));
    MEMORY[0x1EEE9AC00](v145, v146);
    MEMORY[0x1EEE9AC00](v147, v148);
    v149 = v220;
    *(&v200 - 4) = sub_1D615B4A4;
    *(&v200 - 3) = v149;
    v198 = sub_1D67089E0;
    v199 = v142;
    v151 = sub_1D5D2F7A4(v136, sub_1D615B49C, v150, sub_1D615B4A4, (&v200 - 6));
    v152 = v151;

    if (v152)
    {
      sub_1D72647EC();

      v153 = v209;
    }

    else
    {

      v153 = v136;
    }

    sub_1D5D2CFE8(v153, type metadata accessor for FormatVersionRequirement);
    v123 = v213;
    v141 = v200;
  }

  else
  {

    sub_1D5D2CFE8(v136, type metadata accessor for FormatVersionRequirement);
  }

  v154 = *(v123 + 88);
  v155 = v208;
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  *&v225 = 0;
  v156 = v219;
  v157 = __swift_project_value_buffer(v219, qword_1EDFFCD50);
  v218(v155, v157, v156);
  swift_storeEnumTagMultiPayload();
  if (v154)
  {
    LOBYTE(v227) = 0;
    v158 = swift_allocObject();
    v224 = xmmword_1D72BAA90;
    *(v158 + 16) = xmmword_1D72BAA90;
    *(v158 + 32) = v227;
    *(v158 + 40) = v214;
    *(v158 + 48) = v141;

    v159 = v155;
    v160 = sub_1D72647CC();
    LOBYTE(v227) = 0;
    v161 = swift_allocObject();
    *(v161 + 16) = v160;
    *(v161 + 24) = v224;
    *(v161 + 40) = v227;
    v162 = __swift_project_boxed_opaque_existential_1(v223, *(v223 + 3));
    MEMORY[0x1EEE9AC00](v162, v163);
    MEMORY[0x1EEE9AC00](v164, v165);
    *(&v200 - 4) = sub_1D5B4AA6C;
    *(&v200 - 3) = 0;
    v198 = sub_1D67089E0;
    v199 = v158;
    v166 = v225;
    v168 = sub_1D5D2F7A4(v159, sub_1D615B49C, v167, sub_1D615B4A4, (&v200 - 6));
    if (v166)
    {
      sub_1D5D2CFE8(v208, type metadata accessor for FormatVersionRequirement);

LABEL_7:
      v93 = v226;
      return sub_1D5D2CFE8(v93, sub_1D6680840);
    }

    v170 = v168;
    *&v225 = 0;

    if (v170)
    {
      v227 = v224;
      v228 = 0;
      LOBYTE(v229) = 1;
      v171 = v225;
      sub_1D72647EC();
      sub_1D5D2CFE8(v208, type metadata accessor for FormatVersionRequirement);
      *&v225 = v171;
      if (v171)
      {
        return sub_1D5D2CFE8(v226, sub_1D6680840);
      }
    }

    else
    {
      sub_1D5D2CFE8(v208, type metadata accessor for FormatVersionRequirement);
    }

    v169 = v205;
    v123 = v213;
  }

  else
  {
    sub_1D5D2CFE8(v155, type metadata accessor for FormatVersionRequirement);
    v169 = v205;
  }

  v172 = v214;
  if (qword_1EDF31EE0 != -1)
  {
    swift_once();
  }

  v173 = v219;
  v174 = __swift_project_value_buffer(v219, qword_1EDFFCD80);
  v175 = v202;
  v176 = v218;
  v218(v202, v174, v173);
  swift_storeEnumTagMultiPayload();
  sub_1D5D2CFE8(v175, type metadata accessor for FormatVersionRequirement);
  v177 = *(v201 + 48);
  v178 = v173;
  v179 = v169;
  v176(v169, v174, v178);
  swift_storeEnumTagMultiPayload();
  v224 = xmmword_1D72BAAB0;
  v227 = xmmword_1D72BAAB0;
  v228 = 0;
  LOBYTE(v229) = 0;
  v180 = swift_allocObject();
  *(v180 + 16) = v224;
  *(v180 + 32) = v229;
  v181 = v200;
  *(v180 + 40) = v172;
  *(v180 + 48) = v181;
  v182 = v203;
  sub_1D5CDE2EC(v123 + v177, v203, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  v183 = v206;
  v184 = v207;
  if ((*(v206 + 48))(v182, 1, v207) != 1)
  {
    v185 = (*(v183 + 32))(v204, v182, v184);
    MEMORY[0x1EEE9AC00](v185, v186);
    *(&v200 - 4) = sub_1D5B4AA6C;
    *(&v200 - 3) = 0;
    v198 = sub_1D67089E0;
    v199 = v180;
    LOBYTE(v229) = 0;
    v187 = swift_allocObject();
    *(v187 + 16) = v224;
    *(v187 + 32) = v229;
    *(v187 + 40) = v172;
    *(v187 + 48) = v181;
    swift_retain_n();
    v188 = sub_1D72647CC();
    LOBYTE(v229) = 0;
    v189 = swift_allocObject();
    *(v189 + 16) = v188;
    *(v189 + 24) = v224;
    *(v189 + 40) = v229;
    v190 = __swift_project_boxed_opaque_existential_1(v223, *(v223 + 3));
    MEMORY[0x1EEE9AC00](v190, v191);
    MEMORY[0x1EEE9AC00](v192, v193);
    *(&v200 - 4) = sub_1D615B4A4;
    *(&v200 - 3) = (&v200 - 6);
    v198 = sub_1D67089E0;
    v199 = v187;
    v194 = v225;
    v196 = sub_1D5D2F7A4(v179, sub_1D615B49C, v195, sub_1D615B4A4, (&v200 - 6));
    if (v194)
    {
    }

    else
    {
      v197 = v196;

      if (v197)
      {
        sub_1D5B58B84(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58]);
        sub_1D72647EC();
      }
    }

    (*(v206 + 8))(v204, v207);
    sub_1D5D2CFE8(v205, type metadata accessor for FormatVersionRequirement);
    goto LABEL_7;
  }

  sub_1D5D2CFE8(v179, type metadata accessor for FormatVersionRequirement);

  sub_1D5D2CFE8(v226, sub_1D6680840);
  return sub_1D5D35558(v182, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B5BF78);
}

uint64_t sub_1D647A118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66833E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D647A150(uint64_t a1)
{
  v2 = sub_1D5CE9398();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D647A18C(uint64_t a1)
{
  v2 = sub_1D5CE9398();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatCompilerFlag.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v32 = &v31 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v31 = &v31 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v31 - v14;
  v34 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  if (qword_1EDF31EE0 != -1)
  {
    swift_once();
  }

  v18 = sub_1D725BD1C();
  v19 = __swift_project_value_buffer(v18, qword_1EDFFCD80);
  v20 = *(*(v18 - 8) + 16);
  v20(v15, v19, v18);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v21 = v38;
  sub_1D5D2BEC4(v15, sub_1D5B4AA6C, 0, v16, v17);
  result = sub_1D5D2CFE8(v15, type metadata accessor for FormatVersionRequirement);
  if (!v21)
  {
    v24 = v35[3];
    v23 = v35[4];
    v25 = __swift_project_boxed_opaque_existential_1(v35, v24);
    if (v34)
    {
      if (v34 == 1)
      {
        if (qword_1EDF31F58[0] != -1)
        {
          swift_once();
        }

        v26 = __swift_project_value_buffer(v18, qword_1EDFFCE98);
        v27 = v32;
        v20(v32, v26, v18);
        swift_storeEnumTagMultiPayload();
        sub_1D5D2BEC4(v27, sub_1D5B4AA6C, 0, v24, v23);
        sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
        __swift_project_boxed_opaque_existential_1(v35, v35[3]);
        sub_1D7264B3C();
      }

      else
      {
        if (qword_1EDF31F58[0] != -1)
        {
          swift_once();
        }

        v29 = __swift_project_value_buffer(v18, qword_1EDFFCE98);
        v30 = v33;
        v20(v33, v29, v18);
        swift_storeEnumTagMultiPayload();
        sub_1D5D2BEC4(v30, sub_1D5B4AA6C, 0, v24, v23);
        sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
        __swift_project_boxed_opaque_existential_1(v35, v35[3]);
        sub_1D7264B3C();
      }
    }

    else
    {
      v38 = v25;
      v28 = v31;
      v20(v31, v19, v18);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v28, sub_1D5B4AA6C, 0, v24, v23);
      sub_1D5D2CFE8(v28, type metadata accessor for FormatVersionRequirement);
      __swift_project_boxed_opaque_existential_1(v35, v35[3]);
      sub_1D7264B3C();
    }

    __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  return result;
}

uint64_t sub_1D647A708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6683738(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D647A740(uint64_t a1)
{
  v2 = sub_1D5C7CB14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D647A77C(uint64_t a1)
{
  v2 = sub_1D5C7CB14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D647A7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6683948(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D647A7F0(uint64_t a1)
{
  v2 = sub_1D5C8F138();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D647A82C(uint64_t a1)
{
  v2 = sub_1D5C8F138();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D647A878(uint64_t a1)
{
  v2 = sub_1D5C8F718();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D647A8B4(uint64_t a1)
{
  v2 = sub_1D5C8F718();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D647A8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6683A6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D647A928(uint64_t a1)
{
  v2 = sub_1D5C4FFEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D647A964(uint64_t a1)
{
  v2 = sub_1D5C4FFEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatCompilerPrimitiveProperty.encode(to:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v88 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v90 = &v88 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v89 = &v88 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v93 = &v88 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v94 = &v88 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v95 = &v88 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v97 = (&v88 - v24);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v88 - v27;
  v29 = *(a2 + 16);
  v91 = *(a2 + 24);
  v92 = v29;
  v30 = _s10CodingKeysOMa_182();
  WitnessTable = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  *&v104 = v30;
  *(&v104 + 1) = WitnessTable;
  v105 = v32;
  v106 = v33;
  v34 = type metadata accessor for FormatCodingKeysContainer();
  v35 = swift_getWitnessTable();
  sub_1D726446C();
  swift_getWitnessTable();
  v36 = type metadata accessor for VersionedKeyedEncodingContainer();
  v101 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v88 - v38;
  v41 = a1[3];
  v40 = a1[4];
  v42 = __swift_project_boxed_opaque_existential_1(a1, v41);
  v96 = a2;
  sub_1D5D2EE70(a2, v34, v42, v41, a2, v34, &type metadata for FormatVersions.JazzkonC, v40, v39, v35, &off_1F51F6C78);
  v43 = v107[1];
  v44 = v107;
  v102 = *v107;
  v103 = v43;
  v104 = 0uLL;
  LOBYTE(v105) = 0;
  v45 = qword_1EDF31EB0;

  if (v45 != -1)
  {
    swift_once();
  }

  v46 = sub_1D725BD1C();
  v47 = __swift_project_value_buffer(v46, qword_1EDFFCD30);
  v48 = *(v46 - 8);
  v49 = *(v48 + 16);
  v50 = (v48 + 16);
  v98 = v47;
  v49(v28);
  v99 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v51 = v100;
  sub_1D5D38930(&v102, &v104, v28, sub_1D5B4AA6C, 0, v36, MEMORY[0x1E69E6158], MEMORY[0x1E69E6160]);
  if (v51)
  {
    sub_1D5D2CFE8(v28, type metadata accessor for FormatVersionRequirement);

    return (*(v101 + 8))(v39, v36);
  }

  else
  {
    sub_1D5D2CFE8(v28, type metadata accessor for FormatVersionRequirement);

    v52 = v49;
    v53 = v44;
    v54 = v44[3];
    v102 = v44[2];
    v103 = v54;
    v104 = xmmword_1D728CF30;
    LOBYTE(v105) = 0;
    v55 = v97;
    (v52)(v97, v98, v46);
    swift_storeEnumTagMultiPayload();

    sub_1D5D38930(&v102, &v104, v55, sub_1D5B4AA6C, 0, v36, MEMORY[0x1E69E6158], MEMORY[0x1E69E6160]);
    sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);

    v97 = 0;
    v102 = sub_1D707D8D8();
    v103 = v57;
    v104 = xmmword_1D7297410;
    LOBYTE(v105) = 0;
    v58 = v95;
    (v52)(v95, v98, v46);
    swift_storeEnumTagMultiPayload();

    v100 = v36;
    v59 = v97;
    sub_1D71B5F54(&v102, &type metadata for FormatCodingEmptyDescriptiveStrategy, &v104, v58, sub_1D5B4AA6C, 0, v36, &type metadata for FormatCodingEmptyDescriptiveStrategy, &protocol witness table for FormatCodingEmptyDescriptiveStrategy);
    v60 = v39;
    if (v59)
    {
      sub_1D5D2CFE8(v58, type metadata accessor for FormatVersionRequirement);

      return (*(v101 + 8))(v39, v100);
    }

    else
    {
      sub_1D5D2CFE8(v58, type metadata accessor for FormatVersionRequirement);

      LOBYTE(v102) = FormatCompilerPrimitiveProperty.required.getter() & 1;
      v104 = xmmword_1D72BAA60;
      LOBYTE(v105) = 0;
      v61 = v94;
      (v52)(v94, v98, v46);
      swift_storeEnumTagMultiPayload();
      sub_1D71B5F54(&v102, &type metadata for FormatCodingTrueStrategy, &v104, v61, sub_1D5B4AA6C, 0, v100, &type metadata for FormatCodingTrueStrategy, &protocol witness table for FormatCodingTrueStrategy);
      v62 = v46;
      sub_1D5D2CFE8(v61, type metadata accessor for FormatVersionRequirement);
      v63 = v96;
      v64 = *(v96 + 48);
      v104 = xmmword_1D72BAA70;
      LOBYTE(v105) = 0;
      v65 = v93;
      (v52)(v93, v98, v62);
      swift_storeEnumTagMultiPayload();
      sub_1D5D432A4(v53 + v64, &v104, v65, sub_1D5B4AA6C, 0, v100, v92, *(v91 + 16));
      v66 = v63;
      v67 = v100;
      v97 = 0;
      v98 = v60;
      sub_1D5D2CFE8(v65, type metadata accessor for FormatVersionRequirement);
      LOBYTE(v102) = FormatCompilerPrimitiveProperty.deprecated.getter(v66) & 1;
      v104 = xmmword_1D72BAA80;
      LOBYTE(v105) = 0;
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v68 = __swift_project_value_buffer(v62, qword_1EDFFCD50);
      v69 = v89;
      (v52)(v89, v68, v62);
      swift_storeEnumTagMultiPayload();
      v70 = v67;
      v72 = v97;
      v71 = v98;
      sub_1D71B5F54(&v102, &type metadata for FormatCodingFalseStrategy, &v104, v69, sub_1D5B4AA6C, 0, v67, &type metadata for FormatCodingFalseStrategy, &protocol witness table for FormatCodingFalseStrategy);
      v73 = v90;
      if (v72)
      {
        sub_1D5D2CFE8(v69, type metadata accessor for FormatVersionRequirement);
        return (*(v101 + 8))(v71, v67);
      }

      else
      {
        v95 = v62;
        v97 = v52;
        sub_1D5D2CFE8(v69, type metadata accessor for FormatVersionRequirement);
        v74 = v96;
        v102 = sub_1D707D8E0(v96);
        sub_1D5B56DC4();
        v76 = v75;
        v104 = xmmword_1D72BAA90;
        LOBYTE(v105) = 0;
        v77 = qword_1EDF31EE0;

        if (v77 != -1)
        {
          swift_once();
        }

        v78 = v95;
        v79 = __swift_project_value_buffer(v95, qword_1EDFFCD80);
        v93 = v50;
        v94 = v79;
        v97(v73);
        swift_storeEnumTagMultiPayload();
        v80 = sub_1D5B58B84(&qword_1EDF21380, sub_1D5B56DC4);
        v81 = v76;
        v82 = v76;
        v83 = v98;
        sub_1D71B5F54(&v102, v81, &v104, v73, sub_1D5B4AA6C, 0, v70, v82, v80);
        sub_1D5D2CFE8(v73, type metadata accessor for FormatVersionRequirement);

        v84 = *(v74 + 60);
        v104 = xmmword_1D72BAAA0;
        LOBYTE(v105) = 0;
        v85 = v88;
        (v97)(v88, v94, v78);
        swift_storeEnumTagMultiPayload();
        v86 = sub_1D725B76C();
        v87 = sub_1D5B58B84(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58]);
        sub_1D5D432A4(v107 + v84, &v104, v85, sub_1D5B4AA6C, 0, v70, v86, v87);
        sub_1D5D2CFE8(v85, type metadata accessor for FormatVersionRequirement);
        return (*(v101 + 8))(v83, v70);
      }
    }
  }
}

uint64_t sub_1D647B5F4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6465726975716572 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746C7561666564 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461636572706564 && a2 == 0xEA00000000006465 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x72656C69706D6F63 && a2 == 0xED00007367616C46 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73B8F40 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 8;
  }

  else
  {
    v5 = sub_1D72646CC();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1D647B8F8()
{
  _s10CodingKeysOMa_182();
  sub_1D72644CC();
  swift_allocObject();
  v0 = sub_1D726270C();
  *v1 = 0x706050403020100;
  *(v1 + 8) = 8;

  return sub_1D5BFCB60(v0);
}

uint64_t sub_1D647B970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D647B5F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D647B9A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6683BD0();
  *a1 = result;
  return result;
}

uint64_t sub_1D647B9CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D647B8F8();
  *a1 = result;
  return result;
}

uint64_t sub_1D647B9FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D647BA50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatCompilerProperty.encode(to:)(void *a1)
{
  sub_1D5C30060(0, &qword_1EDF44038, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v142 = &v125 - v4;
  sub_1D5C30060(0, &qword_1EDF44030, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v141 = &v125 - v7;
  sub_1D5CB3BF0();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v140 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C34074(0, &qword_1EDF44020, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v139 = &v125 - v13;
  sub_1D5C34074(0, &qword_1EDF44010, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v138 = &v125 - v16;
  sub_1D5C30060(0, &qword_1EDF44040, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v137 = &v125 - v19;
  v20 = type metadata accessor for FormatCompilerEnumProperty(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v136 = &v125 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B58AF0();
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v135 = &v125 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C30060(0, &qword_1EDF44028, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v134 = &v125 - v28;
  v29 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v133 = &v125 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v132 = &v125 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v131 = &v125 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v130 = &v125 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v129 = &v125 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v128 = &v125 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v127 = &v125 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v126 = &v125 - v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  v56 = &v125 - v55;
  MEMORY[0x1EEE9AC00](v57, v58);
  v60 = &v125 - v59;
  sub_1D5C34074(0, &qword_1EDF44018, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v61 - 8, v62);
  v64 = &v125 - v63;
  v65 = type metadata accessor for FormatCompilerProperty(0);
  MEMORY[0x1EEE9AC00](v65, v66);
  v68 = &v125 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v69 - 8, v70);
  v72 = &v125 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a1[3];
  v73 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v74);
  v75 = sub_1D5C30408();
  v144 = v72;
  sub_1D5D2EE70(v65, &type metadata for FormatCodingKeys, v76, v74, v65, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v73, v72, v75, &off_1F51F6C78);
  sub_1D6706BB4(v143, v68, type metadata accessor for FormatCompilerProperty);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v92 = v68;
        v93 = v138;
        sub_1D6680CD4(v92, v138);
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v94 = sub_1D725BD1C();
        v95 = __swift_project_value_buffer(v94, qword_1EDFFCD30);
        v96 = v129;
        (*(*(v94 - 8) + 16))(v129, v95, v94);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v83 = v144;
        sub_1D639B7F0(5, v93, v96);
        sub_1D5D2CFE8(v96, type metadata accessor for FormatVersionRequirement);
        sub_1D66810E4(v93);
      }

      else
      {
        v119 = v68;
        v120 = v139;
        sub_1D5CB5494(v119, v139);
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v121 = sub_1D725BD1C();
        v122 = __swift_project_value_buffer(v121, qword_1EDFFCD30);
        v123 = v130;
        (*(*(v121 - 8) + 16))(v130, v122, v121);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v83 = v144;
        sub_1D639B9C0(6, v120, v123);
        sub_1D5D2CFE8(v123, type metadata accessor for FormatVersionRequirement);
        sub_1D5D67638(v120);
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 7)
      {
        v101 = v68;
        v79 = v140;
        sub_1D5C8F76C(v101, v140, sub_1D5CB3BF0);
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v102 = sub_1D725BD1C();
        v103 = __swift_project_value_buffer(v102, qword_1EDFFCD30);
        v104 = v131;
        (*(*(v102 - 8) + 16))(v131, v103, v102);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v83 = v144;
        sub_1D639BB90(7, v79, v104);
        sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);
        v84 = sub_1D5CB3BF0;
        goto LABEL_28;
      }

      if (EnumCaseMultiPayload == 8)
      {
        v85 = v68;
        v86 = v141;
        sub_1D6680BB4(v85, v141);
        if (qword_1EDF31ED0 != -1)
        {
          swift_once();
        }

        v87 = sub_1D725BD1C();
        v88 = __swift_project_value_buffer(v87, qword_1EDFFCD50);
        v89 = v132;
        (*(*(v87 - 8) + 16))(v132, v88, v87);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v83 = v144;
        sub_1D639BD64(8, v86, v89);
        sub_1D5D2CFE8(v89, type metadata accessor for FormatVersionRequirement);
        sub_1D6681050(v86);
      }

      else
      {
        v110 = v68;
        v111 = v142;
        sub_1D6680A88(v110, v142);
        if (qword_1EDF31E98 != -1)
        {
          swift_once();
        }

        v112 = sub_1D725BD1C();
        v113 = __swift_project_value_buffer(v112, qword_1EDFFCD00);
        v114 = v133;
        (*(*(v112 - 8) + 16))(v133, v113, v112);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v83 = v144;
        sub_1D639BF40(9, v111, v114);
        sub_1D5D2CFE8(v114, type metadata accessor for FormatVersionRequirement);
        sub_1D6680FBC(v111);
      }
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v115 = v68;
      v116 = v134;
      sub_1D6680F20(v115, v134);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v117 = sub_1D725BD1C();
      v118 = __swift_project_value_buffer(v117, qword_1EDFFCD30);
      (*(*(v117 - 8) + 16))(v56, v118, v117);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v83 = v144;
      sub_1D639B090(1, v116, v56);
      sub_1D5D2CFE8(v56, type metadata accessor for FormatVersionRequirement);
      sub_1D6681200(v116);
    }

    else
    {
      sub_1D5CB55A8(v68, v64);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v90 = sub_1D725BD1C();
      v91 = __swift_project_value_buffer(v90, qword_1EDFFCD30);
      (*(*(v90 - 8) + 16))(v60, v91, v90);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v83 = v144;
      sub_1D639AEC0(0, v64, v60);
      sub_1D5D2CFE8(v60, type metadata accessor for FormatVersionRequirement);
      sub_1D5D676C0(v64);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v97 = v68;
      v79 = v135;
      sub_1D5C8F76C(v97, v135, sub_1D5B58AF0);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v98 = sub_1D725BD1C();
      v99 = __swift_project_value_buffer(v98, qword_1EDFFCD30);
      v100 = v126;
      (*(*(v98 - 8) + 16))(v126, v99, v98);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v83 = v144;
      sub_1D639B26C(2, v79, v100);
      sub_1D5D2CFE8(v100, type metadata accessor for FormatVersionRequirement);
      v84 = sub_1D5B58AF0;
      goto LABEL_28;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v78 = v68;
      v79 = v136;
      sub_1D5C8F76C(v78, v136, type metadata accessor for FormatCompilerEnumProperty);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v80 = sub_1D725BD1C();
      v81 = __swift_project_value_buffer(v80, qword_1EDFFCD30);
      v82 = v127;
      (*(*(v80 - 8) + 16))(v127, v81, v80);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v83 = v144;
      sub_1D639B440(3, v79, v82);
      sub_1D5D2CFE8(v82, type metadata accessor for FormatVersionRequirement);
      v84 = type metadata accessor for FormatCompilerEnumProperty;
LABEL_28:
      sub_1D5D2CFE8(v79, v84);
      return sub_1D5D2CFE8(v83, sub_1D5D30DC4);
    }

    v105 = v68;
    v106 = v137;
    sub_1D6680DF4(v105, v137);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v107 = sub_1D725BD1C();
    v108 = __swift_project_value_buffer(v107, qword_1EDFFCD30);
    v109 = v128;
    (*(*(v107 - 8) + 16))(v128, v108, v107);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v83 = v144;
    sub_1D639B614(4, v106, v109);
    sub_1D5D2CFE8(v109, type metadata accessor for FormatVersionRequirement);
    sub_1D668116C(v106);
  }

  return sub_1D5D2CFE8(v83, sub_1D5D30DC4);
}

uint64_t sub_1D647CB44(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 7107189;
    v6 = 1953394534;
    if (a1 != 8)
    {
      v6 = 0x6567616D69;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x72656765746E69;
    if (a1 != 5)
    {
      v7 = 0x676E69727473;
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
    v1 = 0x6E61656C6F6F62;
    v2 = 1702125924;
    v3 = 1836412517;
    if (a1 != 3)
    {
      v3 = 0x74616F6C66;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x726F6C6F63;
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

uint64_t sub_1D647CCB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D647CB44(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D647CD2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6683BD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D647CD64(uint64_t a1)
{
  v2 = sub_1D5CB2BEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D647CDA0(uint64_t a1)
{
  v2 = sub_1D5CB2BEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatCompilerSlotDefinitionItemSet.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v46 = a2;
  v3 = MEMORY[0x1E69E6720];
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v48 = &v42 - v6;
  sub_1D5B5BF78(0, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary, v3);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v45 = &v42 - v9;
  sub_1D5C8EAD0();
  v11 = v10;
  v44 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6681294();
  v16 = v15;
  v47 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6681328();
  sub_1D5B58B84(&qword_1EDF24D78, sub_1D6681328);
  v20 = v54;
  sub_1D7264B0C();
  v21 = v20;
  if (v20)
  {
LABEL_2:
    sub_1D61E4FBC(a1, v21);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v43 = v14;
  v54 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v23 = sub_1D7264AFC();
  v24 = Dictionary<>.errorOnUnknownKeys.getter(v23);

  v25 = v16;
  v26 = v48;
  if (v24)
  {
    v27 = sub_1D726433C();
    v28 = *(v27 + 16);
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

      v34 = *(v29 - 2);
      v33 = *(v29 - 1);

      v35 = sub_1D6619EF0(0x7261696C69787561, 0xE900000000000079);
      sub_1D5E2D970();
      v21 = swift_allocError();
      *v36 = v34;
      *(v36 + 8) = v33;
      *(v36 + 16) = v35;
      *(v36 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v47 + 8))(v19, v16);
      goto LABEL_2;
    }

LABEL_9:
  }

  v52 = 0uLL;
  v53 = 0;
  if (sub_1D726434C())
  {
    sub_1D5B58B84(&qword_1EDF3BC98, sub_1D5C8EAD0);
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v30 = v43;
    v31 = v54;
    sub_1D726431C();
    v32 = v47;
    v42 = sub_1D725A74C();
    (*(v44 + 8))(v30, v31);
    v26 = v48;
  }

  else
  {
    v42 = MEMORY[0x1E69E7CC0];
    v32 = v47;
  }

  type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary();
  v52 = xmmword_1D728CF30;
  v53 = 0;
  sub_1D5B58B84(&qword_1EDF1C0A0, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
  v37 = v45;
  sub_1D726427C();
  v38 = v46;
  sub_1D725B76C();
  v52 = xmmword_1D7297410;
  v53 = 0;
  sub_1D5B58B84(&qword_1EDF3BAA0, MEMORY[0x1E69D6A58]);
  sub_1D726427C();
  (*(v32 + 8))(v19, v25);
  v39 = type metadata accessor for FormatCompilerSlotDefinitionItemSet();
  v40 = v37;
  v41 = v39;
  sub_1D5C4E944(v40, v38 + *(v39 + 20), qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
  sub_1D5C4E944(v26, v38 + *(v41 + 24), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  *v38 = v42;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatCompilerSlotDefinitionItemSet.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6720];
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v129 = v127 - v7;
  v8 = sub_1D725B76C();
  v136 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v131 = v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5BF78(0, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary, v4);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v134 = (v127 - v13);
  v137 = type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary();
  v133 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137, v14);
  v135 = v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v130 = v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  *&v145 = v127 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v127 - v24;
  sub_1D66814A8();
  v146 = v26;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v30);
  v32 = type metadata accessor for FormatCompilerSlotDefinitionItemSet();
  sub_1D6681328();
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF24D78, sub_1D6681328);
  v143 = v32;
  sub_1D5D2EE70(v32, v34, v36, v30, v32, v34, &type metadata for FormatVersions.StarSky, v31, v29, v35, &off_1F51F6CD8);
  v144 = v2;
  v37 = *v2;
  v38 = qword_1EDF31ED0;

  if (v38 != -1)
  {
    swift_once();
  }

  v39 = sub_1D725BD1C();
  v40 = __swift_project_value_buffer(v39, qword_1EDFFCD50);
  v41 = *(v39 - 8);
  v42 = *(v41 + 16);
  v141 = v41 + 16;
  v142 = v42;
  v42(v25, v40, v39);
  v140 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v43 = *(v37 + 16);
  v132 = v8;
  if (v43)
  {
    v128 = v39;
    v44 = v146;
    v45 = &v29[*(v146 + 44)];
    v46 = *v45;
    v47 = *(v45 + 1);
    LOBYTE(v148) = 0;
    v48 = swift_allocObject();
    *(v48 + 16) = 0;
    *(v48 + 24) = 0;
    *(v48 + 32) = v148;
    *(v48 + 40) = v46;
    *(v48 + 48) = v47;
    sub_1D668153C();
    v138 = v29;
    v50 = v49;
    sub_1D5B58B84(&qword_1EDF02C68, sub_1D668153C);

    *&v139 = v50;
    v51 = sub_1D72647CC();
    LOBYTE(v148) = 0;
    v52 = swift_allocObject();
    *(v52 + 24) = 0;
    *(v52 + 32) = 0;
    *(v52 + 16) = v51;
    *(v52 + 40) = v148;
    v53 = __swift_project_boxed_opaque_existential_1(&v29[*(v44 + 36)], *&v29[*(v44 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v53, v54);
    MEMORY[0x1EEE9AC00](v55, v56);
    v127[-4] = sub_1D5B4AA6C;
    v127[-3] = 0;
    v125 = sub_1D66815D0;
    v126 = v48;
    v57 = v147;
    v59 = sub_1D5D2F7A4(v25, sub_1D615B49C, v58, sub_1D615B4A4, &v127[-6]);
    v60 = v57;
    if (v57)
    {
      sub_1D5D2CFE8(v25, type metadata accessor for FormatVersionRequirement);

      v61 = v138;
      return sub_1D5D2CFE8(v61, sub_1D66814A8);
    }

    v64 = v59;
    v29 = v138;

    if (v64)
    {
      v148 = 0uLL;
      v149 = 0;
      v150 = v37;
      sub_1D5B5BF78(0, &qword_1EDF1B098, type metadata accessor for FormatCompilerProperty, MEMORY[0x1E69E62F8]);
      sub_1D665F3C8();
      sub_1D72647EC();

      sub_1D5D2CFE8(v25, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v25, type metadata accessor for FormatVersionRequirement);
    }

    v62 = v146;
    v63 = v145;
    v39 = v128;
  }

  else
  {
    sub_1D5D2CFE8(v25, type metadata accessor for FormatVersionRequirement);

    v62 = v146;
    v60 = v147;
    v63 = v145;
  }

  v65 = *(v143 + 20);
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v66 = __swift_project_value_buffer(v39, qword_1EDFFCD68);
  v142(v63, v66, v39);
  swift_storeEnumTagMultiPayload();
  v139 = xmmword_1D728CF30;
  v148 = xmmword_1D728CF30;
  v149 = 0;
  v67 = &v29[*(v62 + 44)];
  v68 = *v67;
  v69 = *(v67 + 1);
  LOBYTE(v150) = 0;
  v70 = swift_allocObject();
  *(v70 + 16) = v139;
  *(v70 + 32) = v150;
  *(v70 + 40) = v68;
  *(v70 + 48) = v69;
  v71 = v144 + v65;
  v72 = v134;
  sub_1D5CDE2EC(v71, v134, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
  if ((v133[6])(v72, 1, v137) == 1)
  {
    *&v139 = v69;

    sub_1D5D2CFE8(v63, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v72, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary, MEMORY[0x1E69E6720], sub_1D5B5BF78);
LABEL_15:
    v73 = v136;
    goto LABEL_16;
  }

  v128 = v39;
  v84 = sub_1D5C8F76C(v72, v135, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
  v134 = v127;
  MEMORY[0x1EEE9AC00](v84, v85);
  v133 = &v127[-6];
  v127[-4] = sub_1D5B4AA6C;
  v127[-3] = 0;
  v125 = sub_1D67089E4;
  v126 = v70;
  LOBYTE(v150) = 0;
  v86 = swift_allocObject();
  v147 = v60;
  v87 = v86;
  *(v86 + 16) = v139;
  *(v86 + 32) = v150;
  *(v86 + 40) = v68;
  *(v86 + 48) = v69;
  sub_1D668153C();
  v89 = v88;
  v90 = sub_1D5B58B84(&qword_1EDF02C68, sub_1D668153C);
  swift_retain_n();
  v127[2] = v89;
  v127[1] = v90;
  v91 = sub_1D72647CC();
  LOBYTE(v150) = 0;
  v92 = v63;
  v93 = swift_allocObject();
  *(v93 + 16) = v91;
  *(v93 + 24) = v139;
  *(v93 + 40) = v150;
  v94 = __swift_project_boxed_opaque_existential_1(&v29[*(v62 + 36)], *&v29[*(v62 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v94, v95);
  MEMORY[0x1EEE9AC00](v96, v97);
  v98 = v133;
  v127[-4] = sub_1D615B4A4;
  v127[-3] = v98;
  v125 = sub_1D67089E4;
  v126 = v87;
  v99 = v147;
  v101 = sub_1D5D2F7A4(v92, sub_1D615B49C, v100, sub_1D615B4A4, &v127[-6]);
  if (v99)
  {

    v102 = v145;
    sub_1D5D2CFE8(v135, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
    sub_1D5D2CFE8(v102, type metadata accessor for FormatVersionRequirement);
    v61 = v29;
    return sub_1D5D2CFE8(v61, sub_1D66814A8);
  }

  v118 = v101;
  *&v139 = v69;

  v73 = v136;
  if (v118)
  {
    sub_1D5B58B84(&qword_1EDF06118, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
    v119 = v135;
    sub_1D72647EC();
    v60 = 0;
    v120 = v145;

    sub_1D5D2CFE8(v119, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
    sub_1D5D2CFE8(v120, type metadata accessor for FormatVersionRequirement);
    v39 = v128;
    goto LABEL_15;
  }

  sub_1D5D2CFE8(v135, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
  sub_1D5D2CFE8(v145, type metadata accessor for FormatVersionRequirement);
  v60 = 0;
  v39 = v128;
LABEL_16:
  v74 = *(v143 + 24);
  if (qword_1EDF31E80 != -1)
  {
    swift_once();
  }

  v75 = __swift_project_value_buffer(v39, qword_1EDFFCCA8);
  v76 = v39;
  v77 = v130;
  v142(v130, v75, v76);
  swift_storeEnumTagMultiPayload();
  v145 = xmmword_1D7297410;
  v148 = xmmword_1D7297410;
  v149 = 0;
  LOBYTE(v150) = 0;
  v78 = swift_allocObject();
  *(v78 + 16) = v145;
  *(v78 + 32) = v150;
  v79 = v139;
  *(v78 + 40) = v68;
  *(v78 + 48) = v79;
  v80 = v144 + v74;
  v81 = v129;
  sub_1D5CDE2EC(v80, v129, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  v82 = v132;
  if ((*(v73 + 48))(v81, 1, v132) == 1)
  {

    sub_1D5D2CFE8(v77, type metadata accessor for FormatVersionRequirement);

    sub_1D5D2CFE8(v29, sub_1D66814A8);
    return sub_1D5D35558(v81, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  v103 = (*(v73 + 32))(v131, v81, v82);
  v147 = v60;
  v144 = v127;
  MEMORY[0x1EEE9AC00](v103, v104);
  v127[-4] = sub_1D5B4AA6C;
  v127[-3] = 0;
  v125 = sub_1D67089E4;
  v126 = v78;
  LOBYTE(v150) = 0;
  v105 = v29;
  v106 = swift_allocObject();
  *(v106 + 16) = v145;
  *(v106 + 32) = v150;
  *(v106 + 40) = v68;
  *(v106 + 48) = v79;
  sub_1D668153C();
  sub_1D5B58B84(&qword_1EDF02C68, sub_1D668153C);
  swift_retain_n();
  v107 = sub_1D72647CC();
  LOBYTE(v150) = 0;
  v108 = swift_allocObject();
  *(v108 + 16) = v107;
  *(v108 + 24) = v145;
  *(v108 + 40) = v150;
  v109 = *(v146 + 36);
  v138 = v105;
  v110 = __swift_project_boxed_opaque_existential_1((v105 + v109), *(v105 + v109 + 24));
  MEMORY[0x1EEE9AC00](v110, v111);
  MEMORY[0x1EEE9AC00](v112, v113);
  v127[-4] = sub_1D615B4A4;
  v127[-3] = &v127[-6];
  v125 = sub_1D67089E4;
  v126 = v106;
  v114 = v147;
  v116 = sub_1D5D2F7A4(v77, sub_1D615B49C, v115, sub_1D615B4A4, &v127[-6]);
  if (v114)
  {

    v117 = v138;
    (*(v136 + 8))(v131, v132);
LABEL_24:
    sub_1D5D2CFE8(v77, type metadata accessor for FormatVersionRequirement);
    v61 = v117;
    return sub_1D5D2CFE8(v61, sub_1D66814A8);
  }

  v121 = v116;

  if (v121)
  {
    sub_1D5B58B84(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58]);
    v122 = v131;
    v123 = v132;
    v117 = v138;
    sub_1D72647EC();
    v124 = v136;

    (*(v124 + 8))(v122, v123);
    goto LABEL_24;
  }

  (*(v136 + 8))(v131, v132);
  sub_1D5D2CFE8(v77, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v138, sub_1D66814A8);
}

unint64_t sub_1D647E788()
{
  v1 = 0x69747265706F7270;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x7261696C69787561;
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

uint64_t sub_1D647E808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6683EC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D647E840(uint64_t a1)
{
  v2 = sub_1D6681400();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D647E87C(uint64_t a1)
{
  v2 = sub_1D6681400();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatCompilerSlotDefinitionItemSetAuxiliary.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a2;
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v43 = &v40 - v5;
  sub_1D5C8EAD0();
  v7 = v6;
  v41 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D668164C();
  v12 = v11;
  v44 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66816E0();
  sub_1D5B58B84(&qword_1EDF24D28, sub_1D66816E0);
  v16 = v50;
  sub_1D7264B0C();
  v17 = v16;
  if (v16)
  {
LABEL_2:
    sub_1D61E4FBC(a1, v17);
    swift_willThrow();

    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  v20 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v21 = sub_1D7264AFC();
  LOBYTE(v20) = Dictionary<>.errorOnUnknownKeys.getter(v21);

  v22 = v12;
  v23 = v43;
  if (v20)
  {
    v24 = sub_1D726433C();
    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = (v24 + 48);
      while (*v26 != 1)
      {
        v26 += 24;
        if (!--v25)
        {
          goto LABEL_9;
        }
      }

      v28 = v22;
      v30 = *(v26 - 2);
      v29 = *(v26 - 1);

      v31 = sub_1D6619EF0(0x736D657469, 0xE500000000000000);
      sub_1D5E2D970();
      v17 = swift_allocError();
      *v32 = v30;
      *(v32 + 8) = v29;
      *(v32 + 16) = v31;
      *(v32 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v44 + 8))(v15, v28);
      a1 = v50;
      goto LABEL_2;
    }

LABEL_9:
  }

  v48 = 0uLL;
  v49 = 0;
  if (sub_1D726434C())
  {
    sub_1D5B58B84(&qword_1EDF3BC98, sub_1D5C8EAD0);
    v45 = 0;
    v46 = 0;
    v47 = 0;
    sub_1D726431C();
    v27 = v44;
    v33 = sub_1D725A74C();
    v34 = v7;
    v35 = v33;
    (*(v41 + 8))(v10, v34);
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
    v27 = v44;
  }

  v48 = xmmword_1D728CF30;
  v49 = 0;
  sub_1D6681860();
  sub_1D726427C();
  v36 = v42;
  v37 = v35;
  v38 = v45;
  sub_1D725B76C();
  v48 = xmmword_1D7297410;
  v49 = 0;
  sub_1D5B58B84(&qword_1EDF3BAA0, MEMORY[0x1E69D6A58]);
  sub_1D726427C();
  (*(v27 + 8))(v15, v22);
  v39 = type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary();
  sub_1D5C4E944(v23, v36 + *(v39 + 24), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  *v36 = v37;
  v36[1] = v38;
  v18 = v50;
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t FormatCompilerSlotDefinitionItemSetAuxiliary.encode(to:)(void *a1)
{
  v2 = v1;
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v121 = v117 - v6;
  v7 = sub_1D725B76C();
  v124 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v122 = v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v125 = v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  *&v130 = v117 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v117 - v18;
  sub_1D66818B4();
  v131 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v117 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary();
  sub_1D66816E0();
  v28 = v27;
  v29 = sub_1D5B58B84(&qword_1EDF24D28, sub_1D66816E0);
  v120 = v26;
  sub_1D5D2EE70(v26, v28, v30, v24, v26, v28, &type metadata for FormatVersions.SydroF, v25, v23, v29, &off_1F51F6C58);
  v129 = v2;
  v31 = *v2;
  v32 = qword_1EDF31ED8;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = sub_1D725BD1C();
  v34 = __swift_project_value_buffer(v33, qword_1EDFFCD68);
  v35 = *(v33 - 8);
  v36 = *(v35 + 16);
  v128 = v35 + 16;
  v36(v19, v34, v33);
  v127 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v37 = *(v31 + 16);
  v132 = v23;
  v123 = v7;
  v119 = v33;
  v118 = v36;
  if (v37)
  {
    *&v126 = v34;
    v38 = v131;
    v39 = &v23[*(v131 + 44)];
    v41 = *v39;
    v40 = *(v39 + 1);
    LOBYTE(v135) = 0;
    v42 = swift_allocObject();
    *(v42 + 16) = 0;
    *(v42 + 24) = 0;
    *(v42 + 32) = v135;
    *(v42 + 40) = v41;
    *(v42 + 48) = v40;
    sub_1D6681948();
    v44 = v43;
    sub_1D5B58B84(&qword_1EDF02C08, sub_1D6681948);

    v45 = sub_1D72647CC();
    LOBYTE(v135) = 0;
    v46 = swift_allocObject();
    *(v46 + 24) = 0;
    *(v46 + 32) = 0;
    *(v46 + 16) = v45;
    *(v46 + 40) = v135;
    v47 = __swift_project_boxed_opaque_existential_1(&v23[*(v38 + 36)], *&v23[*(v38 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v47, v48);
    MEMORY[0x1EEE9AC00](v49, v50);
    v117[-4] = sub_1D5B4AA6C;
    v117[-3] = 0;
    v115 = sub_1D66819DC;
    v116 = v42;
    v51 = v133;
    v53 = sub_1D5D2F7A4(v19, sub_1D615B49C, v52, sub_1D615B4A4, &v117[-6]);
    if (v51)
    {
      sub_1D5D2CFE8(v19, type metadata accessor for FormatVersionRequirement);

LABEL_28:
      v58 = v132;
      return sub_1D5D2CFE8(v58, sub_1D66818B4);
    }

    v56 = v53;
    v133 = v44;
    v57 = v132;

    v55 = v130;
    if (v56)
    {
      v135 = 0uLL;
      v136 = 0;
      v137 = v31;
      sub_1D5B5BF78(0, &qword_1EDF1B098, type metadata accessor for FormatCompilerProperty, MEMORY[0x1E69E62F8]);
      sub_1D665F3C8();
      sub_1D72647EC();

      sub_1D5D2CFE8(v19, type metadata accessor for FormatVersionRequirement);
      v54 = v131;
      v34 = v126;
      v133 = 0;
      v23 = v57;
      v7 = v123;
      v33 = v119;
      v36 = v118;
    }

    else
    {
      v133 = 0;
      sub_1D5D2CFE8(v19, type metadata accessor for FormatVersionRequirement);

      v23 = v57;
      v7 = v123;
      v54 = v131;
      v33 = v119;
      v36 = v118;
      v34 = v126;
    }
  }

  else
  {
    sub_1D5D2CFE8(v19, type metadata accessor for FormatVersionRequirement);

    v54 = v131;
    v55 = v130;
  }

  v59 = v129[1];
  v36(v55, v34, v33);
  swift_storeEnumTagMultiPayload();
  v126 = xmmword_1D728CF30;
  v135 = xmmword_1D728CF30;
  v136 = 0;
  v60 = &v23[*(v54 + 44)];
  v62 = *v60;
  v61 = *(v60 + 1);
  LOBYTE(v137) = 0;
  v63 = swift_allocObject();
  v65 = v63;
  *(v63 + 16) = v126;
  *(v63 + 32) = v137;
  *(v63 + 40) = v62;
  *(v63 + 48) = v61;
  if (v59)
  {
    v117[3] = v117;
    v137 = v59;
    MEMORY[0x1EEE9AC00](v63, v64);
    v67 = v66;
    v117[-4] = sub_1D5B4AA6C;
    v117[-3] = 0;
    v115 = sub_1D67089E8;
    v116 = v65;
    v134 = 0;
    v68 = swift_allocObject();
    *(v68 + 16) = v126;
    *(v68 + 32) = v134;
    *(v68 + 40) = v62;
    *(v68 + 48) = v61;
    sub_1D6681948();
    v70 = v69;
    v71 = sub_1D5B58B84(&qword_1EDF02C08, sub_1D6681948);
    swift_retain_n();

    v117[2] = v70;
    v117[1] = v71;
    v72 = sub_1D72647CC();
    v134 = 0;
    v73 = swift_allocObject();
    *(v73 + 16) = v72;
    *(v73 + 24) = v126;
    *(v73 + 40) = v134;
    v74 = *(v67 + 36);
    v75 = v130;
    v76 = __swift_project_boxed_opaque_existential_1(&v23[v74], *&v23[v74 + 24]);
    MEMORY[0x1EEE9AC00](v76, v77);
    MEMORY[0x1EEE9AC00](v78, v79);
    v117[-4] = sub_1D615B4A4;
    v117[-3] = &v117[-6];
    v115 = sub_1D67089E8;
    v116 = v68;
    v80 = v133;
    v82 = sub_1D5D2F7A4(v75, sub_1D615B49C, v81, sub_1D615B4A4, &v117[-6]);
    v83 = v80;
    if (v80)
    {

      v84 = v75;
LABEL_27:
      sub_1D5D2CFE8(v84, type metadata accessor for FormatVersionRequirement);
      goto LABEL_28;
    }

    v87 = v82;
    *&v126 = v61;

    if (v87)
    {
      sub_1D6681A58();
      sub_1D72647EC();
      v85 = v125;

      sub_1D5D2CFE8(v130, type metadata accessor for FormatVersionRequirement);
      v7 = v123;
      v86 = v124;
    }

    else
    {

      sub_1D5D2CFE8(v130, type metadata accessor for FormatVersionRequirement);
      v7 = v123;
      v86 = v124;
      v85 = v125;
    }

    v33 = v119;
    v36 = v118;
  }

  else
  {
    *&v126 = v61;

    sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);

    v83 = v133;
    v86 = v124;
    v85 = v125;
  }

  v88 = *(v120 + 24);
  if (qword_1EDF31F40 != -1)
  {
    swift_once();
  }

  v89 = __swift_project_value_buffer(v33, qword_1EDFFCE50);
  v36(v85, v89, v33);
  swift_storeEnumTagMultiPayload();
  v130 = xmmword_1D7297410;
  v135 = xmmword_1D7297410;
  v136 = 0;
  LOBYTE(v137) = 0;
  v90 = swift_allocObject();
  *(v90 + 16) = v130;
  *(v90 + 32) = v137;
  v91 = v126;
  *(v90 + 40) = v62;
  *(v90 + 48) = v91;
  v92 = v129 + v88;
  v93 = v121;
  sub_1D5CDE2EC(v92, v121, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  if ((*(v86 + 48))(v93, 1, v7) == 1)
  {

    sub_1D5D2CFE8(v85, type metadata accessor for FormatVersionRequirement);

    sub_1D5D2CFE8(v132, sub_1D66818B4);
    return sub_1D5D35558(v93, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  v95 = (*(v86 + 32))(v122, v93, v7);
  v129 = v117;
  MEMORY[0x1EEE9AC00](v95, v96);
  v133 = v83;
  v117[-4] = sub_1D5B4AA6C;
  v117[-3] = 0;
  v115 = sub_1D67089E8;
  v116 = v90;
  LOBYTE(v137) = 0;
  v97 = swift_allocObject();
  *(v97 + 16) = v130;
  *(v97 + 32) = v137;
  *(v97 + 40) = v62;
  *(v97 + 48) = v91;
  sub_1D6681948();
  sub_1D5B58B84(&qword_1EDF02C08, sub_1D6681948);
  v98 = v85;
  swift_retain_n();
  v99 = v132;
  v100 = sub_1D72647CC();
  LOBYTE(v137) = 0;
  v101 = swift_allocObject();
  *(v101 + 16) = v100;
  *(v101 + 24) = v130;
  *(v101 + 40) = v137;
  v102 = __swift_project_boxed_opaque_existential_1((v99 + *(v131 + 36)), *(v99 + *(v131 + 36) + 24));
  MEMORY[0x1EEE9AC00](v102, v103);
  MEMORY[0x1EEE9AC00](v104, v105);
  v117[-4] = sub_1D615B4A4;
  v117[-3] = &v117[-6];
  v115 = sub_1D67089E8;
  v116 = v97;
  v106 = v133;
  v108 = sub_1D5D2F7A4(v98, sub_1D615B49C, v107, sub_1D615B4A4, &v117[-6]);
  if (v106)
  {

    v109 = v125;
    (*(v124 + 8))(v122, v123);
    v84 = v109;
    goto LABEL_27;
  }

  v110 = v108;

  if ((v110 & 1) == 0)
  {

    (*(v124 + 8))(v122, v123);
    v84 = v125;
    goto LABEL_27;
  }

  sub_1D5B58B84(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58]);
  v111 = v122;
  v112 = v123;
  v113 = v132;
  sub_1D72647EC();
  v114 = v124;

  (*(v114 + 8))(v111, v112);
  sub_1D5D2CFE8(v125, type metadata accessor for FormatVersionRequirement);
  v58 = v113;
  return sub_1D5D2CFE8(v58, sub_1D66818B4);
}

unint64_t sub_1D647FEE8()
{
  v1 = 0x69747265706F7270;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x736D657469;
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

uint64_t sub_1D647FF60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6684040(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D647FF98(uint64_t a1)
{
  v2 = sub_1D66817B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D647FFD4(uint64_t a1)
{
  v2 = sub_1D66817B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatCompilerSlotDefinitionItemSetAuxiliaryItemSet.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a2;
  sub_1D5C8EAD0();
  v5 = v4;
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6681AAC();
  v34 = v9;
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6681B40();
  sub_1D5B58B84(&qword_1EC8869F8, sub_1D6681B40);
  sub_1D7264B0C();
  if (v2)
  {
    v13 = v2;
LABEL_3:
    sub_1D61E4FBC(a1, v13);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_1D7264AFC();
  v15 = Dictionary<>.errorOnUnknownKeys.getter(v14);

  v16 = v34;
  if (v15)
  {
    v17 = sub_1D726433C();
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = (v17 + 48);
      while (*v19 != 1)
      {
        v19 += 24;
        if (!--v18)
        {
          goto LABEL_9;
        }
      }

      v22 = v12;
      v24 = *(v19 - 2);
      v23 = *(v19 - 1);

      v25 = v16;
      v26 = sub_1D6628490(0x69747265706F7270, 0xEA00000000007365);
      sub_1D5E2D970();
      v13 = swift_allocError();
      *v27 = v24;
      *(v27 + 8) = v23;
      *(v27 + 16) = v26;
      *(v27 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v41 + 8))(v22, v25);
      goto LABEL_3;
    }

LABEL_9:
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  if (sub_1D726434C())
  {
    sub_1D5B58B84(&qword_1EDF3BC98, sub_1D5C8EAD0);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v20 = v8;
    sub_1D726431C();
    v21 = v33;
    v28 = sub_1D725A74C();
    (*(v32 + 8))(v20, v5);
    v29 = v41;
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
    v29 = v41;
    v21 = v33;
  }

  (*(v29 + 8))(v12, v16);
  *v21 = v28;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatCompilerSlotDefinitionItemSetAuxiliaryItemSet.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6681CC0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D6681B40();
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EC8869F8, sub_1D6681B40);
  sub_1D5D2EE70(&type metadata for FormatCompilerSlotDefinitionItemSetAuxiliaryItemSet, v16, v18, v13, &type metadata for FormatCompilerSlotDefinitionItemSetAuxiliaryItemSet, v16, &type metadata for FormatVersions.SydroF, v14, v11, v17, &off_1F51F6C58);
  v19 = qword_1EDF31ED8;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCD68);
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
  sub_1D6681D54();
  v27 = v26;
  v28 = sub_1D5B58B84(&qword_1EC886A10, sub_1D6681D54);

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
  v40 = sub_1D6681DE8;
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
      sub_1D5B5BF78(0, &qword_1EDF1B098, type metadata accessor for FormatCompilerProperty, MEMORY[0x1E69E62F8]);
      sub_1D665F3C8();
      sub_1D72647EC();

      sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v11, sub_1D6681CC0);
    }

LABEL_9:
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v11, sub_1D6681CC0);
  }

  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v11, sub_1D6681CC0);
}

uint64_t sub_1D6480930(uint64_t a1)
{
  v2 = sub_1D6681C18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D648096C(uint64_t a1)
{
  v2 = sub_1D6681C18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatComputedInvalidation.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v30 - v9;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v30 = *(v1 + 16);
  v31 = v15;
  v16 = *(v1 + 32);
  v17 = *(v1 + 40);
  v18 = *(v1 + 48) | (*(v1 + 50) << 16);
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v21 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatComputedInvalidation, &type metadata for FormatCodingKeys, v22, v19, &type metadata for FormatComputedInvalidation, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Azden, v20, v14, v21, &off_1F51F6B78);
  if ((v18 & 0x800000) != 0)
  {
    v37 = BYTE2(v18) & 1;
    v32[0] = v31;
    v32[1] = v30;
    v33 = v16;
    v34 = v17;
    v35 = v18;
    v36 = BYTE2(v18) & 1;
    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCCE8);
    (*(*(v27 - 8) + 16))(v6, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638DFFC(1, v32, v6);
    v26 = v6;
  }

  else
  {
    v23 = v31;
    if (qword_1EDF31F10 != -1)
    {
      swift_once();
    }

    v24 = sub_1D725BD1C();
    v25 = __swift_project_value_buffer(v24, qword_1EDFFCDF8);
    (*(*(v24 - 8) + 16))(v10, v25, v24);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638DE30(0, v23, v10);
    v26 = v10;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D6480CF4(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x646E616D6D6F63;
  }

  else
  {
    v2 = 0x73646E6F636573;
  }

  if (*a2)
  {
    v3 = 0x646E616D6D6F63;
  }

  else
  {
    v3 = 0x73646E6F636573;
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

uint64_t sub_1D6480D7C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6480DF4()
{
  sub_1D72621EC();
}

uint64_t sub_1D6480E50()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6480EC4(uint64_t *a1@<X8>)
{
  v2 = 0x73646E6F636573;
  if (*v1)
  {
    v2 = 0x646E616D6D6F63;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t FormatContentBackground.encode(to:)(void *a1)
{
  v3 = *v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D668459C();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D66846C4();
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EC886A48, sub_1D66846C4);
  sub_1D5D2EE70(v3, v16, v18, v13, v3, v16, &type metadata for FormatVersions.StarSkyC, v14, v12, v17, &off_1F51F6B18);
  v41[1] = OBJC_IVAR____TtC8NewsFeed23FormatContentBackground_content;
  if (qword_1EDF31E98 != -1)
  {
    swift_once();
  }

  v19 = sub_1D725BD1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDFFCD00);
  (*(*(v19 - 8) + 16))(v7, v20, v19);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v41[5] = 0;
  v41[6] = 0;
  v42 = 0;
  v21 = &v12[*(v9 + 44)];
  v23 = *v21;
  v22 = *(v21 + 1);
  v43 = 0;
  v24 = swift_allocObject();
  v41[3] = v41;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v43;
  *(v24 + 40) = v23;
  *(v24 + 48) = v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v41[-4] = sub_1D5B4AA6C;
  v41[-3] = 0;
  v39 = sub_1D67089EC;
  v40 = v26;
  v43 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v43;
  *(v27 + 40) = v23;
  *(v27 + 48) = v22;
  sub_1D6684630();
  v29 = v28;
  sub_1D5B58B84(&qword_1EC886A50, sub_1D6684630);
  swift_retain_n();
  v41[0] = v29;
  v30 = sub_1D72647CC();
  v43 = 0;
  v31 = swift_allocObject();
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  *(v31 + 16) = v30;
  *(v31 + 40) = v43;
  v32 = __swift_project_boxed_opaque_existential_1(&v12[*(v9 + 36)], *&v12[*(v9 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v32, v33);
  MEMORY[0x1EEE9AC00](v34, v35);
  v41[-4] = sub_1D615B4A4;
  v41[-3] = &v41[-6];
  v39 = sub_1D6684844;
  v40 = v27;
  v36 = v41[4];
  sub_1D5D2BC70(v7, sub_1D615B49C, v37, sub_1D615B4A4, &v41[-6]);
  if (v36)
  {
    sub_1D5D2CFE8(v7, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    type metadata accessor for FormatContent(0);
    sub_1D5B58B84(&qword_1EC886280, type metadata accessor for FormatContent);
    sub_1D72647EC();
    sub_1D5D2CFE8(v7, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v12, sub_1D668459C);
}

uint64_t sub_1D64814D4()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

uint64_t sub_1D6481508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
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

uint64_t sub_1D64815F4(uint64_t a1)
{
  v2 = sub_1D668479C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6481630(uint64_t a1)
{
  v2 = sub_1D668479C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatContentMode.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v54 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v53 = v47 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v52 = v47 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v51 = v47 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v50 = v47 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v49 = v47 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v48 = v47 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v47[1] = v47 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v47[0] = v47 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = v47 - v32;
  v55 = *v1;
  v35 = a1[3];
  v34 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v35);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v36 = sub_1D725BD1C();
  v37 = __swift_project_value_buffer(v36, qword_1EDFFCD30);
  v38 = *(*(v36 - 8) + 16);
  v38(v33, v37, v36);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v39 = v59;
  sub_1D5D2BEC4(v33, sub_1D5B4AA6C, 0, v35, v34);
  if (v39)
  {
    return sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);
  v41 = v56;
  v42 = v56[3];
  v59 = v56[4];
  __swift_project_boxed_opaque_existential_1(v56, v42);
  if (v55 <= 3)
  {
    v45 = v37;
    if (v55 > 1)
    {
      v44 = v48;
      v38(v48, v45, v36);
    }

    else
    {
      v44 = v47[0];
      v38(v47[0], v45, v36);
    }
  }

  else if (v55 <= 5)
  {
    v46 = v37;
    if (v55 == 4)
    {
      v44 = v50;
      v38(v50, v46, v36);
    }

    else
    {
      v44 = v51;
      v38(v51, v46, v36);
    }
  }

  else
  {
    v43 = v37;
    if (v55 == 6)
    {
      v44 = v52;
      v38(v52, v43, v36);
    }

    else
    {
      v44 = v53;
      v38(v53, v43, v36);
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_1D5D2BEC4(v44, sub_1D5B4AA6C, 0, v42, v59);
  sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);
  __swift_project_boxed_opaque_existential_1(v41, v41[3]);
  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t FormatContentOverlayValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a4;
  v56 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v59 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v54 = &v49 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v55 = &v49 - v13;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v15 = v14;
  v58 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v49 - v17;
  v60 = a2;
  v61 = a3;
  v19 = type metadata accessor for FormatContentOverlayValue();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v49 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  v24 = v62;
  sub_1D7264B0C();
  v25 = v24;
  if (v24)
  {
    v26 = a1;
LABEL_10:
    sub_1D61E4FBC(v26, v25);
    swift_willThrow();

    v39 = v26;
  }

  else
  {
    v51 = v23;
    v52 = v20;
    v53 = v19;
    v62 = v18;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v27 = sub_1D7264AFC();
    v28 = Dictionary<>.errorOnUnknownKeys.getter(v27);

    v26 = a1;
    v29 = v60;
    v30 = v59;
    if (v28)
    {
      v31 = sub_1D726433C();
      v32 = (v31 + 40);
      v33 = *(v31 + 16) + 1;
      while (--v33)
      {
        v34 = v32 + 2;
        v35 = *v32;
        v32 += 2;
        if (v35 >= 4)
        {
          v36 = *(v34 - 3);

          sub_1D5E2D970();
          v25 = swift_allocError();
          *v37 = v36;
          *(v37 + 8) = v35;
          *(v37 + 16) = &unk_1F51148D8;
          *(v37 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v58 + 8))(v62, v15);
          goto LABEL_10;
        }
      }
    }

    _s10CodingTypeOMa_123();
    v63 = 0uLL;
    swift_getWitnessTable();
    v38 = v15;
    sub_1D726431C();
    v50 = a1;
    if (v64)
    {
      v41 = v57;
      v63 = xmmword_1D7279980;
      v45 = v62;
      sub_1D726431C();
      (*(v58 + 8))(v45, v15);
      v46 = v30;
    }

    else
    {
      v63 = xmmword_1D7279980;
      v42 = v55;
      v43 = v62;
      sub_1D726431C();
      v44 = v38;
      v41 = v57;
      (*(v58 + 8))(v43, v44);
      v46 = v42;
    }

    v47 = v51;
    (*(v56 + 32))(v51, v46, v29);
    v48 = v53;
    swift_storeEnumTagMultiPayload();
    (*(v52 + 32))(v41, v47, v48);
    v39 = v50;
  }

  return __swift_destroy_boxed_opaque_existential_1(v39);
}

uint64_t FormatContentOverlayValue.encode(to:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v68 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v67 = &v64 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v64 = &v64 - v12;
  v72 = *(a2 + 16);
  v13 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v66 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v65 = &v64 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v64 - v22;
  v24 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4();
  v70 = v29;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v34);
  v35 = sub_1D5C30408();
  v71 = v32;
  sub_1D5D2EE70(a2, &type metadata for FormatCodingKeys, v36, v34, a2, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowC, v33, v32, v35, &off_1F51F6AF8);
  (*(v24 + 16))(v28, v69, a2);
  v37 = v13;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v39 = *(v13 + 32);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v40 = v65;
      v41 = v72;
      v39(v65, v28, v72);
      v74 = 1;
      if (qword_1EDF31F40 != -1)
      {
        swift_once();
      }

      v42 = sub_1D725BD1C();
      v43 = __swift_project_value_buffer(v42, qword_1EDFFCE50);
      v44 = v67;
      (*(*(v42 - 8) + 16))(v67, v43, v42);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v45 = *(a2 + 24);
      v46 = _s10CodingTypeOMa_123();
      WitnessTable = swift_getWitnessTable();
      v48 = *(v45 + 16);
      v49 = &v74;
    }

    else
    {
      v40 = v66;
      v41 = v72;
      v39(v66, v28, v72);
      v75 = 2;
      if (qword_1EDF31F40 != -1)
      {
        swift_once();
      }

      v59 = sub_1D725BD1C();
      v60 = __swift_project_value_buffer(v59, qword_1EDFFCE50);
      v44 = v68;
      (*(*(v59 - 8) + 16))(v68, v60, v59);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v61 = *(a2 + 24);
      v46 = _s10CodingTypeOMa_123();
      WitnessTable = swift_getWitnessTable();
      v48 = *(v61 + 16);
      v49 = &v75;
    }

    v62 = v46;
    v58 = v71;
    sub_1D71B5D20(v49, v40, v44, v70, v62, v41, WitnessTable, v48);
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);
    (*(v37 + 8))(v40, v41);
  }

  else
  {
    v50 = v64;
    v51 = v72;
    v39(v23, v28, v72);
    v73 = 0;
    if (qword_1EDF31F40 != -1)
    {
      swift_once();
    }

    v52 = sub_1D725BD1C();
    v53 = __swift_project_value_buffer(v52, qword_1EDFFCE50);
    (*(*(v52 - 8) + 16))(v50, v53, v52);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v54 = *(a2 + 24);
    v55 = _s10CodingTypeOMa_123();
    v56 = swift_getWitnessTable();
    v57 = v55;
    v58 = v71;
    sub_1D71B5D20(&v73, v23, v50, v70, v57, v51, v56, *(v54 + 16));
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
    (*(v37 + 8))(v23, v51);
  }

  return sub_1D5D2CFE8(v58, sub_1D5D30DC4);
}

uint64_t sub_1D6482C50()
{
  v0 = sub_1D72641CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6482C9C(char a1)
{
  if (!a1)
  {
    return 0x6563616C706572;
  }

  if (a1 == 1)
  {
    return 0x646E65707061;
  }

  return 0x646E6570657270;
}

uint64_t sub_1D6482CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D6482D64(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1D6482DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D6482E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D6482EB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6482C50();
  *a1 = result;
  return result;
}

uint64_t sub_1D6482EE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6482C9C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatContentSizeCategoryExpression.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v22[0] = a2;
  sub_1D66848D8();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D668496C();
  sub_1D5B58B84(&qword_1EDF0C3D0, sub_1D668496C);
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

      v19 = sub_1D6628490(0x65756C6176, 0xE500000000000000);
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

  sub_1D5CB9318();
  v22[1] = 0;
  v22[2] = 0;
  v23 = 0;
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  *v13 = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatContentSizeCategoryExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6684AEC();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D668496C();
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EDF0C3D0, sub_1D668496C);
  sub_1D5D2EE70(&type metadata for FormatContentSizeCategoryExpression, v16, v18, v13, &type metadata for FormatContentSizeCategoryExpression, v16, &type metadata for FormatVersions.JazzkonC, v14, v11, v17, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v19 = sub_1D725BD1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDFFCD30);
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
  v39 = sub_1D67089F0;
  v40 = v26;
  v43 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v43;
  *(v27 + 40) = v23;
  *(v27 + 48) = v22;
  sub_1D6684B80();
  v29 = v28;
  sub_1D5B58B84(&qword_1EDF02C58, sub_1D6684B80);
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
  v39 = sub_1D6684C14;
  v40 = v27;
  v36 = v41[2];
  sub_1D5D2BC70(v6, sub_1D615B49C, v37, sub_1D615B4A4, &v41[-6]);
  if (v36)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D6684C90();
    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D6684AEC);
}

uint64_t sub_1D64837D8()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1D6483808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
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

uint64_t sub_1D64838F0(uint64_t a1)
{
  v2 = sub_1D6684A44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D648392C(uint64_t a1)
{
  v2 = sub_1D6684A44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatContentSizeCategoryValue.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v119 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v118 = &v95 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v117 = &v95 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v116 = &v95 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v115 = &v95 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v114 = &v95 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v113 = &v95 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v112 = &v95 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v111 = &v95 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v110 = &v95 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v109 = &v95 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v108 = &v95 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v107 = &v95 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v106 = &v95 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v105 = &v95 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v104 = &v95 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v103 = &v95 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v102 = &v95 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v101 = &v95 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v100 = &v95 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v99 = &v95 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v98 = &v95 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v97 = &v95 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v96 = &v95 - v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  v78 = &v95 - v77;
  v79 = *v1;
  v120 = a1;
  v121 = v79;
  v80 = a1[3];
  v81 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v80);
  if (qword_1EDF31F50 != -1)
  {
    swift_once();
  }

  v82 = sub_1D725BD1C();
  v83 = __swift_project_value_buffer(v82, qword_1EDFFCE80);
  v84 = *(*(v82 - 8) + 16);
  v84(v78, v83, v82);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v85 = v122;
  sub_1D5D2BEC4(v78, sub_1D5B4AA6C, 0, v80, v81);
  if (v85)
  {
    return sub_1D5D2CFE8(v78, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v78, type metadata accessor for FormatVersionRequirement);
  v86 = v120;
  v87 = v120[3];
  v122 = v120[4];
  v95 = __swift_project_boxed_opaque_existential_1(v120, v87);
  v88 = v84;
  switch(v121)
  {
    case 1:
      v89 = v97;
      v84(v97, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_18;
    case 2:
      v89 = v98;
      v84(v98, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_18;
    case 3:
      v89 = v99;
      v84(v99, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_18;
    case 4:
      v90 = v100;
      v84(v100, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 5:
      v90 = v101;
      v84(v101, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 6:
      v90 = v102;
      v84(v102, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 7:
      v90 = v103;
      v84(v103, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 8:
      v90 = v104;
      v84(v104, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 9:
      v90 = v105;
      v84(v105, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 10:
      v90 = v106;
      v84(v106, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 11:
      v90 = v107;
      v84(v107, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 12:
      v90 = v108;
      v84(v108, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 13:
      v90 = v109;
      v84(v109, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 14:
      v90 = v110;
      v84(v110, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 15:
      v90 = v111;
      v84(v111, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 16:
      v90 = v112;
      v84(v112, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 17:
      v90 = v113;
      v84(v113, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 18:
      v90 = v114;
      v84(v114, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 19:
      v90 = v115;
      v84(v115, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 20:
      v90 = v116;
      v84(v116, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 21:
      v90 = v117;
      v84(v117, v83, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_30;
    case 22:
      v90 = v118;
      v84(v118, v83, v82);
      swift_storeEnumTagMultiPayload();
LABEL_30:
      sub_1D5D2BEC4(v90, sub_1D5B4AA6C, 0, v87, v122);
      v92 = v90;
      goto LABEL_31;
    case 23:
      v94 = v119;
      v88(v119, v83, v82);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v94, sub_1D5B4AA6C, 0, v87, v122);
      v92 = v94;
LABEL_31:
      sub_1D5D2CFE8(v92, type metadata accessor for FormatVersionRequirement);
      break;
    default:
      v89 = v96;
      v84(v96, v83, v82);
      swift_storeEnumTagMultiPayload();
LABEL_18:
      sub_1D5D2BEC4(v89, sub_1D5B4AA6C, 0, v87, v122);
      sub_1D5D2CFE8(v89, type metadata accessor for FormatVersionRequirement);
      break;
  }

  v93 = v121;
  __swift_project_boxed_opaque_existential_1(v86, v86[3]);
  sub_1D7264B3C();
  v125 = v93;
  FormatContentSizeCategoryValue.rawValue.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v123, v124);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v123);
}

uint64_t FormatCorner.encode(to:)(void *a1)
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
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
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

uint64_t FormatCornerRadius.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v28 - v9;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v1;
  v15 = *(v1 + 8);
  v17 = *(v1 + 16);
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatCornerRadius, &type metadata for FormatCodingKeys, v21, v18, &type metadata for FormatCornerRadius, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v19, v14, v20, &off_1F51F6C78);
  if (v17 < 0)
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v25 = sub_1D725BD1C();
    v26 = __swift_project_value_buffer(v25, qword_1EDFFCD30);
    (*(*(v25 - 8) + 16))(v6, v26, v25);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6485670(1, LOBYTE(v16) & 1, v6);
    v24 = v6;
  }

  else
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v22 = sub_1D725BD1C();
    v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
    (*(*(v22 - 8) + 16))(v10, v23, v22);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63AD93C(0, v15, v17 & 1, v10, v16);
    v24 = v10;
  }

  sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D6484FBC(char a1, __int128 *a2, uint64_t a3)
{
  v24 = a1;
  v7 = a2[1];
  v21 = *a2;
  v22 = v7;
  v23 = a2[2];
  sub_1D5D30DC4();
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v18 = sub_1D66FCE04;
  v19 = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v17);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FCE2C();
    v20 = 0uLL;
    sub_1D72647EC();
    v14 = v21;
    v15 = v22;
    if (v22 == 1)
    {
      sub_1D5E1E088(v21, *(&v21 + 1), 1);
      sub_1D5E1E088(0, 0, 1);
    }

    else
    {
      sub_1D5E1DC5C(v21, *(&v21 + 1), v22);
      sub_1D5E1E088(v14, *(&v14 + 1), v15);
      sub_1D5E1E088(0, 0, 1);
      v20 = xmmword_1D7279980;
      sub_1D66C69CC();
      sub_1D72647EC();
    }
  }
}

uint64_t sub_1D64851F8(char a1, __int128 *a2, uint64_t a3)
{
  v24 = a1;
  v7 = a2[1];
  v21 = *a2;
  v22 = v7;
  v23 = a2[2];
  sub_1D5D30DC4();
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v18 = sub_1D66F9894;
  v19 = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v17);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F9840();
    v20 = 0uLL;
    sub_1D72647EC();
    v14 = v21;
    v15 = v22;
    if (v22 == 1)
    {
      sub_1D5E1E088(v21, *(&v21 + 1), 1);
      sub_1D5E1E088(0, 0, 1);
    }

    else
    {
      sub_1D5E1DC5C(v21, *(&v21 + 1), v22);
      sub_1D5E1E088(v14, *(&v14 + 1), v15);
      sub_1D5E1E088(0, 0, 1);
      v20 = xmmword_1D7279980;
      sub_1D66C69CC();
      sub_1D72647EC();
    }
  }
}

uint64_t sub_1D6485434(char a1, __int128 *a2, uint64_t a3)
{
  v24 = a1;
  v7 = a2[1];
  v21 = *a2;
  v22 = v7;
  v23 = a2[2];
  sub_1D5D30DC4();
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v18 = sub_1D66FA120;
  v19 = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v17);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FA148();
    v20 = 0uLL;
    sub_1D72647EC();
    v14 = v21;
    v15 = v22;
    if (v22 == 1)
    {
      sub_1D5E1E088(v21, *(&v21 + 1), 1);
      sub_1D5E1E088(0, 0, 1);
    }

    else
    {
      sub_1D5E1DC5C(v21, *(&v21 + 1), v22);
      sub_1D5E1E088(v14, *(&v14 + 1), v15);
      sub_1D5E1E088(0, 0, 1);
      v20 = xmmword_1D7279980;
      sub_1D66C69CC();
      sub_1D72647EC();
    }
  }
}

uint64_t sub_1D6485670(char a1, char a2, uint64_t a3)
{
  v7 = a1 & 1;
  v18 = a1 & 1;
  v17 = a2;
  sub_1D5D30DC4();
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D66FF44C;
  v15[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FF3A4();
    v16 = 0uLL;
    sub_1D72647EC();
    if ((a2 & 1) == 0)
    {
      v16 = xmmword_1D7279980;
      sub_1D66FF474();
      sub_1D72647EC();
    }
  }
}

uint64_t sub_1D6485814(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a2;
  v18 = a1;
  sub_1D5D30DC4();
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D66F6A0C;
  v15[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D66F1248, v15);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F6910();
    v16 = 0uLL;
    sub_1D72647EC();
    if ((sub_1D633A250(a2, MEMORY[0x1E69E7CC0]) & 1) == 0)
    {
      v16 = xmmword_1D7279980;
      sub_1D66F6A34();
      sub_1D72647EC();
    }
  }
}

uint64_t sub_1D64859C4(char a1, char a2, uint64_t a3)
{
  v16[1] = a1;
  v16[0] = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D66FE9A0;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FE9C8();
    v15 = 0uLL;
    sub_1D72647EC();
    LOBYTE(v15) = 3;
    if ((_s8NewsFeed24FormatFlexibleExpressionV2eeoiySbAC_ACtFZ_0(v16, &v15) & 1) == 0)
    {
      v15 = xmmword_1D7279980;
      sub_1D66FEA1C();
      sub_1D72647EC();
    }
  }
}

uint64_t sub_1D6485B70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6465646E756F72;
  }

  else
  {
    v3 = 0x65756C6176;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x6465646E756F72;
  }

  else
  {
    v5 = 0x65756C6176;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
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

uint64_t sub_1D6485C14()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6485C94()
{
  sub_1D72621EC();
}

uint64_t sub_1D6485D00()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6485D7C(uint64_t *a1@<X8>)
{
  v2 = 0x65756C6176;
  if (*v1)
  {
    v2 = 0x6465646E756F72;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatCornerRadius.RoundedValue.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D6684CE4();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6684D78();
  sub_1D5B58B84(&qword_1EDF255D8, sub_1D6684D78);
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

      v20 = sub_1D6628490(0x6F756E69746E6F63, 0xEA00000000007375);
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

  v23[1] = 0;
  v23[2] = 0;
  v24 = 0;
  v17 = sub_1D72642CC();
  (*(v7 + 8))(v10, v6);
  *v13 = v17 & 1;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatCornerRadius.RoundedValue.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6684EF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D6684D78();
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EDF255D8, sub_1D6684D78);
  sub_1D5D2EE70(&type metadata for FormatCornerRadius.RoundedValue, v16, v18, v13, &type metadata for FormatCornerRadius.RoundedValue, v16, &type metadata for FormatVersions.StarSkyC, v14, v11, v17, &off_1F51F6B18);
  if (qword_1EDF31E98 != -1)
  {
    swift_once();
  }

  v19 = sub_1D725BD1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDFFCD00);
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
  v39 = sub_1D67089F4;
  v40 = v26;
  v43 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v43;
  *(v27 + 40) = v23;
  *(v27 + 48) = v22;
  sub_1D6684F8C();
  v29 = v28;
  sub_1D5B58B84(&qword_1EDF03638, sub_1D6684F8C);
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
  v39 = sub_1D6685020;
  v40 = v27;
  v36 = v41[2];
  sub_1D5D2BC70(v6, sub_1D615B49C, v37, sub_1D615B4A4, &v41[-6]);
  if (v36)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D6684EF8);
}

uint64_t sub_1D64865E0()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x6F756E69746E6F63;
  }
}

uint64_t sub_1D6486618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F756E69746E6F63 && a2 == 0xEA00000000007375;
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

uint64_t sub_1D648670C(uint64_t a1)
{
  v2 = sub_1D6684E50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6486748(uint64_t a1)
{
  v2 = sub_1D6684E50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatCornerRadius.Value.encode(to:)(void *a1)
{
  v3 = v2;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v97 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v89 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v89 - v14;
  sub_1D668509C();
  *&v100 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v1;
  v99 = *(v1 + 8);
  v96 = *(v1 + 16);
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D5CD5460();
  v24 = v23;
  v25 = sub_1D5B58B84(&qword_1EDF255C8, sub_1D5CD5460);
  sub_1D5D2EE70(&type metadata for FormatCornerRadius.Value, v24, v26, v21, &type metadata for FormatCornerRadius.Value, v24, &type metadata for FormatVersions.JazzkonC, v22, v19, v25, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v27 = sub_1D725BD1C();
  v28 = __swift_project_value_buffer(v27, qword_1EDFFCD30);
  v29 = *(v27 - 8);
  v30 = *(v29 + 16);
  v31 = v29 + 16;
  v30(v15, v28, v27);
  v32 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v98 = v32;
  if (v20 == 0.0)
  {
    v95 = v2;
    sub_1D5D2CFE8(v15, type metadata accessor for FormatVersionRequirement);
    v30(v11, v28, v27);
    goto LABEL_5;
  }

  v93 = v31;
  v94 = v30;
  v92 = v28;
  *&v91 = v11;
  v38 = v100;
  v39 = &v19[*(v100 + 44)];
  v41 = *v39;
  v40 = *(v39 + 1);
  LOBYTE(v102) = 0;
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  *(v42 + 32) = v102;
  *(v42 + 40) = v41;
  *(v42 + 48) = v40;
  sub_1D6685130();
  v44 = v43;
  v45 = sub_1D5B58B84(&qword_1EDF03628, sub_1D6685130);

  v95 = v44;
  v90 = v45;
  v46 = sub_1D72647CC();
  LOBYTE(v102) = 0;
  v47 = swift_allocObject();
  *(v47 + 24) = 0;
  *(v47 + 32) = 0;
  *(v47 + 16) = v46;
  *(v47 + 40) = v102;
  v48 = __swift_project_boxed_opaque_existential_1(&v19[*(v38 + 36)], *&v19[*(v38 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v48, v49);
  MEMORY[0x1EEE9AC00](v50, v51);
  *(&v89 - 4) = sub_1D5B4AA6C;
  *(&v89 - 3) = 0;
  v87 = sub_1D66851C4;
  v88 = v42;
  v53 = sub_1D5D2F7A4(v15, sub_1D615B49C, v52, sub_1D615B4A4, (&v89 - 6));
  if (!v3)
  {
    v69 = v53;

    v11 = v91;
    if (v69)
    {
      v102 = 0uLL;
      v103 = 0;
      v101 = v20;
      sub_1D5B578C4();
      sub_1D72647EC();
      v31 = v93;
      v30 = v94;
      v95 = 0;
      sub_1D5D2CFE8(v15, type metadata accessor for FormatVersionRequirement);
      v28 = v92;
      v30(v11, v92, v27);
    }

    else
    {
      v95 = 0;
      sub_1D5D2CFE8(v15, type metadata accessor for FormatVersionRequirement);
      v28 = v92;
      v31 = v93;
      v30 = v94;
      v94(v11, v92, v27);
    }

LABEL_5:
    swift_storeEnumTagMultiPayload();

    v34 = sub_1D635B040(v33, &unk_1F50F2EE0);
    v35 = v100;
    if (v34)
    {
      sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);

      v36 = v95;
      v37 = v97;
    }

    else
    {
      v93 = v31;
      v94 = v30;
      v92 = v28;
      v54 = &v19[*(v100 + 44)];
      v56 = *v54;
      v55 = *(v54 + 1);
      LOBYTE(v102) = 0;
      v57 = v100;
      v58 = swift_allocObject();
      v91 = xmmword_1D728CF30;
      *(v58 + 16) = xmmword_1D728CF30;
      *(v58 + 32) = v102;
      *(v58 + 40) = v56;
      *(v58 + 48) = v55;
      sub_1D6685130();
      sub_1D5B58B84(&qword_1EDF03628, sub_1D6685130);

      v59 = sub_1D72647CC();
      LOBYTE(v102) = 0;
      v60 = swift_allocObject();
      *(v60 + 16) = v59;
      *(v60 + 24) = v91;
      *(v60 + 40) = v102;
      v61 = __swift_project_boxed_opaque_existential_1(&v19[*(v57 + 36)], *&v19[*(v57 + 36) + 24]);
      v90 = &v89;
      MEMORY[0x1EEE9AC00](v61, v62);
      MEMORY[0x1EEE9AC00](v63, v64);
      *(&v89 - 4) = sub_1D5B4AA6C;
      *(&v89 - 3) = 0;
      v87 = sub_1D67089F8;
      v88 = v58;
      v65 = v95;
      v67 = sub_1D5D2F7A4(v11, sub_1D615B49C, v66, sub_1D615B4A4, (&v89 - 6));
      if (v65)
      {
        sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);

        return sub_1D5D2CFE8(v19, sub_1D668509C);
      }

      v70 = v67;

      if (v70)
      {
        v102 = v91;
        v103 = 0;
        v101 = *&v99;
        sub_1D5C34D84(0, &qword_1EDF1B3C0, &type metadata for FormatCorner, MEMORY[0x1E69E62F8]);
        sub_1D6685240();
        sub_1D72647EC();
        v36 = 0;

        sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);

        v36 = 0;
      }

      v37 = v97;
      v35 = v100;
      v28 = v92;
      v30 = v94;
    }

    v30(v37, v28, v27);
    swift_storeEnumTagMultiPayload();
    if ((v96 & 1) == 0)
    {
      v72 = &v19[*(v35 + 44)];
      v73 = *v72;
      v74 = *(v72 + 1);
      LOBYTE(v102) = 0;
      v75 = swift_allocObject();
      v100 = xmmword_1D7297410;
      *(v75 + 16) = xmmword_1D7297410;
      *(v75 + 32) = v102;
      *(v75 + 40) = v73;
      *(v75 + 48) = v74;
      sub_1D6685130();
      v77 = v76;
      sub_1D5B58B84(&qword_1EDF03628, sub_1D6685130);

      v98 = v77;
      v78 = sub_1D72647CC();
      LOBYTE(v102) = 0;
      v79 = swift_allocObject();
      *(v79 + 16) = v78;
      *(v79 + 24) = v100;
      *(v79 + 40) = v102;
      v80 = __swift_project_boxed_opaque_existential_1(&v19[*(v35 + 36)], *&v19[*(v35 + 36) + 24]);
      v99 = &v89;
      MEMORY[0x1EEE9AC00](v80, v81);
      MEMORY[0x1EEE9AC00](v82, v83);
      *(&v89 - 4) = sub_1D5B4AA6C;
      *(&v89 - 3) = 0;
      v87 = sub_1D67089F8;
      v88 = v75;
      v85 = sub_1D5D2F7A4(v37, sub_1D615B49C, v84, sub_1D615B4A4, (&v89 - 6));
      if (v36)
      {
        sub_1D5D2CFE8(v37, type metadata accessor for FormatVersionRequirement);

        return sub_1D5D2CFE8(v19, sub_1D668509C);
      }

      v86 = v85;

      if (v86)
      {
        v102 = v100;
        v103 = 0;
        LOBYTE(v101) = 0;
        sub_1D72647EC();
        v71 = v97;
        goto LABEL_20;
      }

      v37 = v97;
    }

    v71 = v37;
LABEL_20:
    sub_1D5D2CFE8(v71, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CFE8(v19, sub_1D668509C);
  }

  sub_1D5D2CFE8(v15, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v19, sub_1D668509C);
}

uint64_t sub_1D6487374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6687788(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64873AC(uint64_t a1)
{
  v2 = sub_1D5CD55E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64873E8(uint64_t a1)
{
  v2 = sub_1D5CD55E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6487424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66878F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D648745C(uint64_t a1)
{
  v2 = sub_1D5C8AFD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6487498(uint64_t a1)
{
  v2 = sub_1D5C8AFD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatCustomItemBinding.Text.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatCustomItemBinding.Text, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatCustomItemBinding.Text, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.SydroF, v17, v14, v18, &off_1F51F6C58);
  if (v15)
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCD68);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641CE74(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCD68);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641CE74(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatCustomItemDefinition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v22[0] = a2;
  sub_1D6685330();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66853C4();
  sub_1D5B58B84(&qword_1EDF25018, sub_1D66853C4);
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

      v19 = sub_1D6628490(0x69747265706F7270, 0xEA00000000007365);
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

  sub_1D5B5BF78(0, &unk_1EDF43BB0, type metadata accessor for FormatPropertyDefinition, MEMORY[0x1E69E62F8]);
  sub_1D5CABC04();
  v22[1] = 0;
  v22[2] = 0;
  v23 = 0;
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  *v13 = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatCustomItemDefinition.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6685544();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D66853C4();
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EDF25018, sub_1D66853C4);
  sub_1D5D2EE70(&type metadata for FormatCustomItemDefinition, v16, v18, v13, &type metadata for FormatCustomItemDefinition, v16, &type metadata for FormatVersions.AzdenB, v14, v11, v17, &off_1F51F6AD8);
  if (qword_1EDF31EF8 != -1)
  {
    swift_once();
  }

  v19 = sub_1D725BD1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDFFCDC8);
  (*(*(v19 - 8) + 16))(v6, v20, v19);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v46 = v12;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v21 = &v11[*(v8 + 44)];
  v23 = *v21;
  v22 = *(v21 + 1);
  v42 = 0;
  v24 = swift_allocObject();
  v41[2] = v41;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v42;
  *(v24 + 40) = v23;
  *(v24 + 48) = v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v41[-4] = sub_1D5B4AA6C;
  v41[-3] = 0;
  v39 = sub_1D67089FC;
  v40 = v26;
  v42 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v42;
  *(v27 + 40) = v23;
  *(v27 + 48) = v22;
  sub_1D66855D8();
  v29 = v28;
  sub_1D5B58B84(&qword_1EDF02F98, sub_1D66855D8);
  swift_retain_n();
  v41[1] = v29;
  v30 = sub_1D72647CC();
  v42 = 0;
  v31 = swift_allocObject();
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  *(v31 + 16) = v30;
  *(v31 + 40) = v42;
  v32 = __swift_project_boxed_opaque_existential_1(&v11[*(v8 + 36)], *&v11[*(v8 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v32, v33);
  MEMORY[0x1EEE9AC00](v34, v35);
  v41[-4] = sub_1D615B4A4;
  v41[-3] = &v41[-6];
  v39 = sub_1D67089FC;
  v40 = v27;
  v36 = v41[3];
  sub_1D5D2BC70(v6, sub_1D615B49C, v37, sub_1D615B4A4, &v41[-6]);
  if (v36)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D5B5BF78(0, &unk_1EDF43BB0, type metadata accessor for FormatPropertyDefinition, MEMORY[0x1E69E62F8]);
    sub_1D66856D0();
    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D6685544);
}

uint64_t sub_1D6488060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365;
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

uint64_t sub_1D6488154(uint64_t a1)
{
  v2 = sub_1D668549C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6488190(uint64_t a1)
{
  v2 = sub_1D668549C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D64881CC(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000018;
    v7 = 2019912806;
    if (a1 != 10)
    {
      v7 = 1885433183;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x6F6974616D696E61;
    v9 = 0x7865646E497ALL;
    if (a1 != 7)
    {
      v9 = 0x696C696269736976;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
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
    v1 = 0x696669746E656469;
    v2 = 0x657A69736572;
    v3 = 0x656D7473756A6461;
    if (a1 != 4)
    {
      v3 = 0x656C797473;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 1701667182;
    if (a1 != 1)
    {
      v4 = 1702521203;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D6488338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6687A54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6488370(uint64_t a1)
{
  v2 = sub_1D666FE8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64883AC(uint64_t a1)
{
  v2 = sub_1D666FE8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D64883E8()
{
  v1 = 0x726F7463656C6573;
  v2 = 0x736E6F6974706FLL;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0xD000000000000018;
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

uint64_t sub_1D6488460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6687E2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6488498(uint64_t a1)
{
  v2 = sub_1D666896C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64884D4(uint64_t a1)
{
  v2 = sub_1D666896C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatDateFormat.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v37 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v37 - v13;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v1;
  v19 = v1[1];
  v22 = v1[2];
  v21 = v1[3];
  v23 = v1[5];
  v40 = v1[4];
  v41 = v21;
  v38 = v19;
  v39 = v23;
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = sub_1D5C30408();
  v42 = v18;
  sub_1D5D2EE70(&type metadata for FormatDateFormat, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatDateFormat, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v25, v18, v26, &off_1F51F6C78);
  if (v22 == 1)
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v32 = sub_1D725BD1C();
    v33 = __swift_project_value_buffer(v32, qword_1EDFFCD30);
    (*(*(v32 - 8) + 16))(v14, v33, v32);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v30 = v42;
    sub_1D6424F8C(0, v14);
    v31 = v14;
  }

  else if (v22 == 2)
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCD30);
    (*(*(v28 - 8) + 16))(v10, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v30 = v42;
    sub_1D6424F8C(1, v10);
    v31 = v10;
  }

  else
  {
    LOWORD(v43) = v20;
    *(&v43 + 1) = v38;
    v44 = v22;
    v45 = v41;
    v46 = v40;
    v47 = v39;
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v34 = sub_1D725BD1C();
    v35 = __swift_project_value_buffer(v34, qword_1EDFFCD30);
    (*(*(v34 - 8) + 16))(v6, v35, v34);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v30 = v42;
    sub_1D63C6840(2, &v43, v6);
    v31 = v6;
  }

  sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v30, sub_1D5D30DC4);
}

uint64_t sub_1D6488948(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4C6F6741656D6974;
  v4 = 0xEB00000000676E6FLL;
  if (v2 != 1)
  {
    v3 = 0x6D6F74737563;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x4D6F6741656D6974;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xED00006D75696465;
  }

  v7 = 0x4C6F6741656D6974;
  v8 = 0xEB00000000676E6FLL;
  if (*a2 != 1)
  {
    v7 = 0x6D6F74737563;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x4D6F6741656D6974;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xED00006D75696465;
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

uint64_t sub_1D6488A5C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6488B10()
{
  sub_1D72621EC();
}

uint64_t sub_1D6488BB0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6488C60(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006D75696465;
  v4 = 0xEB00000000676E6FLL;
  v5 = 0x4C6F6741656D6974;
  if (v2 != 1)
  {
    v5 = 0x6D6F74737563;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x4D6F6741656D6974;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatDateFormat.Context.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v45 = &v40 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v43 = &v40 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v42 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v41 = &v40 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v44 = &v40 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v40 - v23;
  v47 = *v1;
  v25 = a1[3];
  v26 = a1[4];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v27 = sub_1D725BD1C();
  v28 = __swift_project_value_buffer(v27, qword_1EDFFCD30);
  v29 = *(*(v27 - 8) + 16);
  v29(v24, v28, v27);
  v30 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v31 = v51;
  sub_1D5D2BEC4(v24, sub_1D5B4AA6C, 0, v25, v26);
  if (v31)
  {
    return sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
  }

  v40 = v30;
  sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
  v33 = v48;
  v34 = v48[3];
  v35 = v48[4];
  v51 = __swift_project_boxed_opaque_existential_1(v48, v34);
  if (v47 > 2)
  {
    if (v47 == 3)
    {
      v39 = v43;
      v29(v43, v28, v27);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v39, sub_1D5B4AA6C, 0, v34, v35);
      sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);
      __swift_project_boxed_opaque_existential_1(v33, v33[3]);
      sub_1D7264B3C();
      goto LABEL_19;
    }

    if (v47 == 4)
    {
      v36 = v45;
      v29(v45, v28, v27);
    }

    else
    {
      v36 = v46;
      v29(v46, v28, v27);
    }
  }

  else
  {
    if (!v47)
    {
      if (qword_1EDF31F58[0] != -1)
      {
        swift_once();
      }

      v37 = __swift_project_value_buffer(v27, qword_1EDFFCE98);
      v38 = v44;
      v29(v44, v37, v27);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v38, sub_1D5B4AA6C, 0, v34, v35);
      sub_1D5D2CFE8(v38, type metadata accessor for FormatVersionRequirement);
      __swift_project_boxed_opaque_existential_1(v33, v33[3]);
      sub_1D7264B3C();
      goto LABEL_19;
    }

    if (v47 == 1)
    {
      v36 = v41;
      v29(v41, v28, v27);
    }

    else
    {
      v36 = v42;
      v29(v42, v28, v27);
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_1D5D2BEC4(v36, sub_1D5B4AA6C, 0, v34, v35);
  sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  sub_1D7264B3C();
LABEL_19:
  __swift_mutable_project_boxed_opaque_existential_1(v49, v50);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t FormatDateFormat.Custom.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D66857FC();
  v7 = v6;
  v38 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6685890();
  sub_1D5B58B84(&qword_1EDF24B48, sub_1D6685890);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v38;
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

      v22 = v10;
      v23 = v7;
      v24 = v13;
      v26 = *(v17 - 2);
      v25 = *(v17 - 1);

      v27 = sub_1D661A214();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v28 = v26;
      *(v28 + 8) = v25;
      *(v28 + 16) = v27;
      *(v28 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v24 + 8))(v22, v23);
      goto LABEL_9;
    }

LABEL_7:
  }

  sub_1D6685A10();
  v39 = 0uLL;
  v40 = 0;
  sub_1D726427C();
  v18 = v42;
  v39 = xmmword_1D728CF30;
  v40 = 0;
  sub_1D726427C();
  v19 = v42;
  v39 = xmmword_1D7297410;
  v40 = 0;
  v20 = sub_1D726422C();
  v30 = v29;
  v37 = v20;
  v39 = xmmword_1D72BAA60;
  v40 = 0;
  sub_1D6685A64();
  sub_1D726431C();
  v41 = v19;
  v36 = v42;
  v39 = xmmword_1D72BAA70;
  v40 = 0;
  v31 = sub_1D726422C();
  v32 = v14;
  v34 = v33;
  (*(v13 + 8))(v32, v7);
  *a2 = v18;
  *(a2 + 1) = v41;
  *(a2 + 8) = v37;
  *(a2 + 16) = v30;
  *(a2 + 24) = v36;
  *(a2 + 32) = v31;
  *(a2 + 40) = v34;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatDateFormat.Custom.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v148 = v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v149 = v144 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v154 = v144 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v157 = v144 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v144 - v17;
  sub_1D6685AB8();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = v144 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v1;
  LODWORD(v155) = v1[1];
  v25 = *(v1 + 2);
  v150 = *(v1 + 1);
  v156 = v25;
  v170 = v1[24];
  v26 = *(v1 + 5);
  v146 = *(v1 + 4);
  v147 = v26;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_1D6685890();
  v30 = v29;
  v31 = sub_1D5B58B84(&qword_1EDF24B48, sub_1D6685890);
  sub_1D5D2EE70(&type metadata for FormatDateFormat.Custom, v30, v32, v27, &type metadata for FormatDateFormat.Custom, v30, &type metadata for FormatVersions.JazzkonC, v28, v23, v31, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v33 = sub_1D725BD1C();
  v34 = __swift_project_value_buffer(v33, qword_1EDFFCD30);
  v35 = *(v33 - 8);
  v36 = *(v35 + 16);
  v37 = v35 + 16;
  *&v162 = v34;
  v36(v18);
  v160 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v167 = 0uLL;
  v168 = 0;
  v38 = &v23[*(v20 + 44)];
  v40 = *v38;
  v39 = *(v38 + 1);
  LOBYTE(v165) = 0;
  v41 = swift_allocObject();
  v43 = v20;
  v44 = v41;
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = v165;
  *(v41 + 40) = v40;
  *(v41 + 48) = v39;
  v164 = v23;
  v152 = v40;
  v153 = v33;
  v151 = v36;
  v158 = v37;
  v159 = v43;
  if (v24 == 5)
  {
  }

  else
  {
    *&v161 = v144;
    LOBYTE(v165) = v24;
    v45 = v43;
    MEMORY[0x1EEE9AC00](v41, v42);
    v145 = &v144[-6];
    v144[-4] = sub_1D5B4AA6C;
    v144[-3] = 0;
    v142 = sub_1D6708A00;
    v143 = v44;
    v169 = 0;
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    *(v46 + 24) = 0;
    *(v46 + 32) = v169;
    *(v46 + 40) = v40;
    *(v46 + 48) = v39;
    sub_1D6685B4C();
    v48 = v47;
    sub_1D5B58B84(&qword_1EDF029D8, sub_1D6685B4C);
    swift_retain_n();
    v144[1] = v48;
    v49 = sub_1D72647CC();
    v169 = 0;
    v50 = swift_allocObject();
    *(v50 + 24) = 0;
    *(v50 + 32) = 0;
    *(v50 + 16) = v49;
    *(v50 + 40) = v169;
    v51 = __swift_project_boxed_opaque_existential_1(&v23[*(v45 + 36)], *&v23[*(v45 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v51, v52);
    MEMORY[0x1EEE9AC00](v53, v54);
    v55 = v145;
    v144[-4] = sub_1D615B4A4;
    v144[-3] = v55;
    v142 = sub_1D6708A00;
    v143 = v46;
    v56 = v163;
    v58 = sub_1D5D2F7A4(v18, sub_1D615B49C, v57, sub_1D615B4A4, &v144[-6]);
    if (v56)
    {
      sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);

      goto LABEL_17;
    }

    v59 = v58;

    if (v59)
    {
      sub_1D6685CB0();
      sub_1D72647EC();
    }

    v163 = 0;
    v40 = v152;
    v33 = v153;
    v36 = v151;
  }

  sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);

  v60 = v157;
  (v36)(v157, v162, v33);
  swift_storeEnumTagMultiPayload();
  v161 = xmmword_1D728CF30;
  v167 = xmmword_1D728CF30;
  v168 = 0;
  LOBYTE(v165) = 0;
  v61 = swift_allocObject();
  v63 = v61;
  *(v61 + 16) = v161;
  *(v61 + 32) = v165;
  *(v61 + 40) = v40;
  *(v61 + 48) = v39;
  if (v155 != 5)
  {
    v145 = v144;
    LOBYTE(v165) = v155;
    MEMORY[0x1EEE9AC00](v61, v62);
    v144[-4] = sub_1D5B4AA6C;
    v144[-3] = 0;
    v142 = sub_1D6708A00;
    v143 = v63;
    v169 = 0;
    v83 = swift_allocObject();
    v84 = v40;
    v85 = v83;
    *(v83 + 16) = v161;
    *(v83 + 32) = v169;
    *(v83 + 40) = v84;
    *(v83 + 48) = v39;
    sub_1D6685B4C();
    v87 = v86;
    sub_1D5B58B84(&qword_1EDF029D8, sub_1D6685B4C);
    swift_retain_n();
    v88 = v164;
    v155 = v87;
    v89 = sub_1D72647CC();
    v169 = 0;
    v90 = swift_allocObject();
    *(v90 + 16) = v89;
    *(v90 + 24) = v161;
    *(v90 + 40) = v169;
    v91 = __swift_project_boxed_opaque_existential_1(&v88[*(v159 + 36)], *&v88[*(v159 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v91, v92);
    MEMORY[0x1EEE9AC00](v93, v94);
    v144[-4] = sub_1D615B4A4;
    v144[-3] = &v144[-6];
    v142 = sub_1D6708A00;
    v143 = v85;
    v95 = v163;
    v97 = sub_1D5D2F7A4(v60, sub_1D615B49C, v96, sub_1D615B4A4, &v144[-6]);
    if (!v95)
    {
      v99 = v97;
      v100 = v152;

      if (v99)
      {
        sub_1D6685CB0();
        v64 = v164;
        sub_1D72647EC();
        v40 = v100;
        v33 = v153;
        v36 = v151;
        v163 = 0;
      }

      else
      {
        v163 = 0;
        v64 = v164;
        v40 = v100;
        v33 = v153;
        v36 = v151;
      }

      v60 = v157;
      goto LABEL_12;
    }

    sub_1D5D2CFE8(v60, type metadata accessor for FormatVersionRequirement);

LABEL_17:
    v98 = v164;
    return sub_1D5D2CFE8(v98, sub_1D6685AB8);
  }

  v64 = v164;
LABEL_12:
  sub_1D5D2CFE8(v60, type metadata accessor for FormatVersionRequirement);

  v65 = v154;
  (v36)(v154, v162, v33);
  swift_storeEnumTagMultiPayload();
  v161 = xmmword_1D7297410;
  v167 = xmmword_1D7297410;
  v168 = 0;
  LOBYTE(v165) = 0;
  v66 = swift_allocObject();
  v68 = v66;
  *(v66 + 16) = v161;
  *(v66 + 32) = v165;
  *(v66 + 40) = v40;
  *(v66 + 48) = v39;
  v144[0] = v39;
  if (v156)
  {
    v157 = v144;
    v165 = v150;
    v166 = v156;
    MEMORY[0x1EEE9AC00](v66, v67);
    v144[-4] = sub_1D5B4AA6C;
    v144[-3] = 0;
    v142 = sub_1D6708A00;
    v143 = v68;
    v169 = 0;
    v69 = swift_allocObject();
    *(v69 + 16) = v161;
    *(v69 + 32) = v169;
    *(v69 + 40) = v40;
    *(v69 + 48) = v39;
    sub_1D6685B4C();
    v71 = v70;
    sub_1D5B58B84(&qword_1EDF029D8, sub_1D6685B4C);
    swift_retain_n();

    v155 = v71;
    v72 = sub_1D72647CC();
    v169 = 0;
    v73 = swift_allocObject();
    *(v73 + 16) = v72;
    *(v73 + 24) = v161;
    *(v73 + 40) = v169;
    v74 = __swift_project_boxed_opaque_existential_1(&v64[*(v159 + 36)], *&v64[*(v159 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v74, v75);
    MEMORY[0x1EEE9AC00](v76, v77);
    v144[-4] = sub_1D615B4A4;
    v144[-3] = &v144[-6];
    v142 = sub_1D6708A00;
    v143 = v69;
    v78 = v163;
    v80 = sub_1D5D2F7A4(v65, sub_1D615B49C, v79, sub_1D615B4A4, &v144[-6]);
    if (v78)
    {

      v81 = v164;
      sub_1D5D2CFE8(v65, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v81, sub_1D6685AB8);
    }

    v101 = v80;
    v102 = v152;

    if (v101)
    {
      sub_1D72647EC();
      v33 = v153;
      v36 = v151;
      v40 = v102;
      v163 = 0;

      sub_1D5D2CFE8(v154, type metadata accessor for FormatVersionRequirement);
      v39 = v144[0];
    }

    else
    {
      v163 = 0;

      sub_1D5D2CFE8(v65, type metadata accessor for FormatVersionRequirement);
      v39 = v144[0];
      v40 = v102;
      v33 = v153;
      v36 = v151;
    }
  }

  else
  {

    sub_1D5D2CFE8(v65, type metadata accessor for FormatVersionRequirement);
  }

  v103 = v149;
  (v36)(v149, v162, v33);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v165) = v170;
  v162 = xmmword_1D72BAA60;
  v167 = xmmword_1D72BAA60;
  v168 = 0;
  v169 = 0;
  v104 = swift_allocObject();
  *&v161 = v144;
  *(v104 + 16) = v162;
  *(v104 + 32) = v169;
  *(v104 + 40) = v40;
  *(v104 + 48) = v39;
  MEMORY[0x1EEE9AC00](v104, v105);
  v144[-4] = sub_1D5B4AA6C;
  v144[-3] = 0;
  v142 = sub_1D6708A00;
  v143 = v106;
  v169 = 0;
  v107 = swift_allocObject();
  *(v107 + 16) = v162;
  *(v107 + 32) = v169;
  *(v107 + 40) = v40;
  *(v107 + 48) = v39;
  sub_1D6685B4C();
  v109 = v108;
  v110 = sub_1D5B58B84(&qword_1EDF029D8, sub_1D6685B4C);
  swift_retain_n();
  v111 = v164;
  v156 = v110;
  v157 = v109;
  v112 = sub_1D72647CC();
  v169 = 0;
  v113 = swift_allocObject();
  *(v113 + 16) = v112;
  *(v113 + 24) = v162;
  *(v113 + 40) = v169;
  v114 = (v111 + *(v159 + 36));
  v115 = __swift_project_boxed_opaque_existential_1(v114, v114[3]);
  MEMORY[0x1EEE9AC00](v115, v116);
  MEMORY[0x1EEE9AC00](v117, v118);
  v144[-4] = sub_1D615B4A4;
  v144[-3] = &v144[-6];
  v142 = sub_1D6708A00;
  v143 = v107;
  v119 = v163;
  sub_1D5D2BC70(v103, sub_1D615B49C, v120, sub_1D615B4A4, &v144[-6]);
  if (v119)
  {
    sub_1D5D2CFE8(v103, type metadata accessor for FormatVersionRequirement);

    v98 = v111;
  }

  else
  {
    v163 = v114;
    v122 = v152;
    v121 = v153;

    sub_1D6685BE0();
    sub_1D72647EC();
    sub_1D5D2CFE8(v103, type metadata accessor for FormatVersionRequirement);

    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v123 = __swift_project_value_buffer(v121, qword_1EDFFCE68);
    v124 = v148;
    (v151)(v148, v123, v121);
    swift_storeEnumTagMultiPayload();
    v162 = xmmword_1D72BAA70;
    v167 = xmmword_1D72BAA70;
    v168 = 0;
    LOBYTE(v165) = 0;
    v125 = swift_allocObject();
    v127 = v125;
    *(v125 + 16) = v162;
    *(v125 + 32) = v165;
    v128 = v122;
    v129 = v144[0];
    *(v125 + 40) = v122;
    *(v125 + 48) = v129;
    v130 = v163;
    if (v147)
    {
      *&v161 = v144;
      v165 = v146;
      v166 = v147;
      MEMORY[0x1EEE9AC00](v125, v126);
      v144[-4] = sub_1D5B4AA6C;
      v144[-3] = 0;
      v142 = sub_1D6708A00;
      v143 = v127;
      v169 = 0;
      v131 = swift_allocObject();
      *(v131 + 16) = v162;
      *(v131 + 32) = v169;
      *(v131 + 40) = v128;
      *(v131 + 48) = v129;
      swift_retain_n();

      v132 = sub_1D72647CC();
      v169 = 0;
      v133 = swift_allocObject();
      *(v133 + 16) = v132;
      *(v133 + 24) = v162;
      *(v133 + 40) = v169;
      v134 = __swift_project_boxed_opaque_existential_1(v130, v130[3]);
      MEMORY[0x1EEE9AC00](v134, v135);
      MEMORY[0x1EEE9AC00](v136, v137);
      v144[-4] = sub_1D615B4A4;
      v144[-3] = &v144[-6];
      v138 = v148;
      v142 = sub_1D6685C34;
      v143 = v131;
      v140 = sub_1D5D2F7A4(v148, sub_1D615B49C, v139, sub_1D615B4A4, &v144[-6]);
      v141 = v140;

      if (v141)
      {
        sub_1D72647EC();
      }

      sub_1D5D2CFE8(v138, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v124, type metadata accessor for FormatVersionRequirement);
    }

    v98 = v164;
  }

  return sub_1D5D2CFE8(v98, sub_1D6685AB8);
}

uint64_t sub_1D648AE9C()
{
  v1 = *v0;
  v2 = 0x6C79745365746164;
  v3 = 0x747865746E6F63;
  v4 = 0x656E6F5A656D6974;
  if (v1 != 4)
  {
    v4 = 1885433183;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C797453656D6974;
  if (v1 != 1)
  {
    v5 = 0x6574616C706D6574;
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

uint64_t sub_1D648AF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6687F98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D648AF88(uint64_t a1)
{
  v2 = sub_1D6685968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D648AFC4(uint64_t a1)
{
  v2 = sub_1D6685968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatDateFormat.Style.encode(to:)(void *a1)
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
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
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

uint64_t sub_1D648B5DC()
{
  sub_1D72621EC();
}

uint64_t sub_1D648B6DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6663758();
  *a1 = result;
  return result;
}

void sub_1D648B70C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x676E69646E6962;
  v5 = 0xE300000000000000;
  v6 = 7827310;
  v7 = 0xED00006572757475;
  v8 = 0x46746E6174736964;
  if (v2 != 4)
  {
    v8 = 0x50746E6174736964;
    v7 = 0xEB00000000747361;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x74657366666FLL;
  if (v2 != 1)
  {
    v10 = 0x313036386F7369;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t FormatDateTimeBinding.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28[-1] - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v14 = v10;
    v11 = a1;
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
          *(v21 + 16) = &unk_1F5114A68;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v14, v6);
          goto LABEL_10;
        }
      }
    }

    sub_1D6685D04();
    v28[0] = 0uLL;
    sub_1D726431C();
    v23 = v27;
    if (v27 > 3u)
    {
      if (v27 > 5u)
      {
        if (v27 == 6)
        {
          v28[0] = xmmword_1D7279980;
          sub_1D6685DAC();
LABEL_24:
          sub_1D726431C();
          (*(v7 + 8))(v14, v6);
          v24 = 0;
LABEL_29:
          v25 = 0uLL;
          goto LABEL_30;
        }

        v28[0] = xmmword_1D7279980;
        sub_1D6685D58();
      }

      else
      {
        v28[0] = xmmword_1D7279980;
        if (v27 == 4)
        {
          sub_1D6139ED4();
        }

        else
        {
          sub_1D6685E00();
        }
      }
    }

    else
    {
      if (v27 <= 1u)
      {
        if (!v27)
        {
          v27 = xmmword_1D7279980;
          sub_1D5C6A164();
          sub_1D726431C();
          (*(v7 + 8))(v14, v6);
          v24 = *&v28[0];
          v25 = *(v28 + 8);
LABEL_30:
          v26 = v29;
          *v29 = v24;
          *(v26 + 1) = v25;
          *(v26 + 24) = v23;
          return __swift_destroy_boxed_opaque_existential_1(v11);
        }

        v28[0] = xmmword_1D7279980;
        sub_1D6685EA8();
        goto LABEL_24;
      }

      v28[0] = xmmword_1D7279980;
      if (v27 == 2)
      {
        sub_1D5DF40A8();
      }

      else
      {
        sub_1D6685E54();
      }
    }

    sub_1D726431C();
    (*(v7 + 8))(v14, v6);
    v24 = v27;
    goto LABEL_29;
  }

  v11 = a1;
LABEL_10:
  sub_1D61E4FBC(v11, v3);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t FormatDateTimeBinding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v67 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v65 = &v62 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v66 = &v62 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v64 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v62 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v62 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v62 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v62 - v29;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v34 = &v62 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v1 + 8);
  v68 = *v1;
  v62 = *(v1 + 16);
  v63 = v35;
  v36 = *(v1 + 24);
  v37 = a1[3];
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v37);
  v39 = sub_1D5C30408();
  v69 = v34;
  sub_1D5D2EE70(&type metadata for FormatDateTimeBinding, &type metadata for FormatCodingKeys, v40, v37, &type metadata for FormatDateTimeBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v38, v34, v39, &off_1F51F6CF8);
  if (v36 > 3)
  {
    if (v36 > 5)
    {
      v45 = v69;
      if (v36 == 6)
      {
        if (qword_1EDF31E80 != -1)
        {
          swift_once();
        }

        v50 = sub_1D725BD1C();
        v51 = __swift_project_value_buffer(v50, qword_1EDFFCCA8);
        v22 = v65;
        (*(*(v50 - 8) + 16))(v65, v51, v50);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63A09EC(6, v22);
      }

      else
      {
        if (qword_1EDF31F38 != -1)
        {
          swift_once();
        }

        v60 = sub_1D725BD1C();
        v61 = __swift_project_value_buffer(v60, qword_1EDFFCE38);
        v22 = v67;
        (*(*(v60 - 8) + 16))(v67, v61, v60);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63A0B78(7, v68, v22);
      }
    }

    else
    {
      v45 = v69;
      if (v36 == 4)
      {
        if (qword_1EDF31E80 != -1)
        {
          swift_once();
        }

        v46 = sub_1D725BD1C();
        v47 = __swift_project_value_buffer(v46, qword_1EDFFCCA8);
        v22 = v64;
        (*(*(v46 - 8) + 16))(v64, v47, v46);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63A06C4(4, v68, v22);
      }

      else
      {
        if (qword_1EDF31E80 != -1)
        {
          swift_once();
        }

        v55 = sub_1D725BD1C();
        v56 = __swift_project_value_buffer(v55, qword_1EDFFCCA8);
        v22 = v66;
        (*(*(v55 - 8) + 16))(v66, v56, v55);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63A0858(5, v68, v22);
      }
    }

    goto LABEL_32;
  }

  if (v36 > 1)
  {
    if (v36 != 2)
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v57 = sub_1D725BD1C();
      v58 = __swift_project_value_buffer(v57, qword_1EDFFCCA8);
      (*(*(v57 - 8) + 16))(v18, v58, v57);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v45 = v69;
      sub_1D63A052C(3, v68 & 1, v18);
      v59 = v18;
      goto LABEL_33;
    }

    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v48 = sub_1D725BD1C();
    v49 = __swift_project_value_buffer(v48, qword_1EDFFCCA8);
    (*(*(v48 - 8) + 16))(v22, v49, v48);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v45 = v69;
    sub_1D63A0398(2, v68, v22);
LABEL_32:
    v59 = v22;
LABEL_33:
    sub_1D5D2CFE8(v59, type metadata accessor for FormatVersionRequirement);
    v54 = v45;
    return sub_1D5D2CFE8(v54, sub_1D5D30DC4);
  }

  v41 = v69;
  if (v36)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v52 = sub_1D725BD1C();
    v53 = __swift_project_value_buffer(v52, qword_1EDFFCCA8);
    (*(*(v52 - 8) + 16))(v26, v53, v52);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63A020C(1, v26);
    sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
    v54 = v41;
    return sub_1D5D2CFE8(v54, sub_1D5D30DC4);
  }

  if (qword_1EDF31E80 != -1)
  {
    swift_once();
  }

  v42 = sub_1D725BD1C();
  v43 = __swift_project_value_buffer(v42, qword_1EDFFCCA8);
  (*(*(v42 - 8) + 16))(v30, v43, v42);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63A0074(0, v68, v63, v62, v30);
  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v41, sub_1D5D30DC4);
}

uint64_t sub_1D648C5D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6663F5C();
  *a1 = result;
  return result;
}

void sub_1D648C600(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6E6F6974706FLL;
  v5 = 0xEB00000000746E65;
  v6 = 0x76457374726F7073;
  if (v2 != 6)
  {
    v6 = 0x657069636572;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 6775156;
  if (v2 != 4)
  {
    v8 = 0x70756F7267;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x656E696C64616568;
  if (v2 != 2)
  {
    v10 = 0x6575737369;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x656C7A7A7570;
    v3 = 0xE600000000000000;
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

uint64_t sub_1D648C798()
{
  v1 = 0x656D695465746164;
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
    return 0x73646E6F636573;
  }
}

uint64_t sub_1D648C7EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66881A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D648C824(uint64_t a1)
{
  v2 = sub_1D6661DA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D648C860(uint64_t a1)
{
  v2 = sub_1D6661DA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatDebugAction.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatDebugAction, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatDebugAction, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.DawnburstF, v21, v18, v22, &off_1F51F6BD8);
  if (v19)
  {
    if (v19 == 1)
    {
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v24 = sub_1D725BD1C();
      v25 = __swift_project_value_buffer(v24, qword_1EDFFCE80);
      (*(*(v24 - 8) + 16))(v10, v25, v24);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6423120(1, v10);
      v26 = v10;
    }

    else
    {
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v29 = sub_1D725BD1C();
      v30 = __swift_project_value_buffer(v29, qword_1EDFFCE80);
      (*(*(v29 - 8) + 16))(v6, v30, v29);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6423120(2, v6);
      v26 = v6;
    }
  }

  else
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCE80);
    (*(*(v27 - 8) + 16))(v14, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6423120(0, v14);
    v26 = v14;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D648CCBC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x726F74696465;
  if (v2 != 1)
  {
    v4 = 0x6C616E6F73726570;
    v3 = 0xEF6E6F6974617A69;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6F74636570736E69;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000072;
  }

  v7 = 0xE600000000000000;
  v8 = 0x726F74696465;
  if (*a2 != 1)
  {
    v8 = 0x6C616E6F73726570;
    v7 = 0xEF6E6F6974617A69;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F74636570736E69;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000072;
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

uint64_t sub_1D648CDD0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D648CE80()
{
  sub_1D72621EC();
}

uint64_t sub_1D648CF1C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D648CFC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6663888();
  *a1 = result;
  return result;
}

void sub_1D648CFF8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000072;
  v4 = 0xE600000000000000;
  v5 = 0x726F74696465;
  if (v2 != 1)
  {
    v5 = 0x6C616E6F73726570;
    v4 = 0xEF6E6F6974617A69;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F74636570736E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatDecoration.encode(to:)(void *a1)
{
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v192 - v5;
  v7 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v198 = &v192 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v201 = &v192 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v202 = &v192 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v204 = &v192 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v206 = &v192 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  *&v215 = &v192 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v212 = &v192 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v192 - v30;
  sub_1D6685FEC();
  v214 = v32;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v192 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *v1;
  v36 = *(v1 + 8);
  v38 = *(v1 + 56);
  *&v216 = *(v1 + 48);
  v207 = v38;
  v199 = *(v1 + 64);
  v223 = *(v1 + 72);
  v39 = *(v1 + 88);
  v203 = *(v1 + 80);
  v200 = v39;
  v195 = *(v1 + 96);
  v197 = *(v1 + 106);
  v196 = *(v1 + 104);
  v40 = a1[3];
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v40);
  sub_1D5C4C63C();
  v43 = v42;
  v44 = sub_1D5B58B84(&qword_1EDF256D8, sub_1D5C4C63C);
  sub_1D5D2EE70(&type metadata for FormatDecoration, v43, v45, v40, &type metadata for FormatDecoration, v43, &type metadata for FormatVersions.JazzkonC, v41, v35, v44, &off_1F51F6C78);
  v46 = qword_1EDF31EB0;

  if (v46 != -1)
  {
    swift_once();
  }

  v47 = sub_1D725BD1C();
  v48 = __swift_project_value_buffer(v47, qword_1EDFFCD30);
  v49 = *(v47 - 8);
  v50 = *(v49 + 16);
  v51 = (v49 + 16);
  v213 = v48;
  v50(v31);
  v52 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v205 = v37;
  sub_1D725892C();
  v53 = sub_1D725895C();
  v54 = (*(*(v53 - 8) + 48))(v6, 1, v53);
  v209 = v47;
  v210 = v50;
  v211 = v52;
  if (v54 != 1)
  {
    sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v6, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    goto LABEL_8;
  }

  v194 = v36;
  v208 = v51;
  sub_1D5D35558(v6, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v55 = v214;
  v56 = &v35[*(v214 + 11)];
  v58 = *v56;
  v57 = *(v56 + 1);
  LOBYTE(v220) = 0;
  v59 = swift_allocObject();
  *(v59 + 16) = 0;
  *(v59 + 24) = 0;
  *(v59 + 32) = v220;
  *(v59 + 40) = v58;
  *(v59 + 48) = v57;
  sub_1D5E1BAEC(0);
  sub_1D5B58B84(&qword_1EDF03788, sub_1D5E1BAEC);

  v60 = sub_1D72647CC();
  LOBYTE(v220) = 0;
  v61 = swift_allocObject();
  *(v61 + 24) = 0;
  *(v61 + 32) = 0;
  *(v61 + 16) = v60;
  *(v61 + 40) = v220;
  v62 = __swift_project_boxed_opaque_existential_1(&v35[*(v55 + 9)], *&v35[*(v55 + 9) + 24]);
  MEMORY[0x1EEE9AC00](v62, v63);
  MEMORY[0x1EEE9AC00](v64, v65);
  *(&v192 - 4) = sub_1D5B4AA6C;
  *(&v192 - 3) = 0;
  v190 = sub_1D6686080;
  v191 = v59;
  v66 = v217;
  v68 = sub_1D5D2F7A4(v31, sub_1D615B49C, v67, sub_1D615B4A4, (&v192 - 6));
  v217 = v66;
  if (v66)
  {
LABEL_5:
    sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);

    v69 = v35;
    return sub_1D5D2CFE8(v69, sub_1D6685FEC);
  }

  v96 = v68;

  if ((v96 & 1) == 0)
  {
    sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);

    v47 = v209;
    v50 = v210;
    v51 = v208;
    goto LABEL_8;
  }

  v220 = 0uLL;
  v221 = 0;
  v218 = v205;
  v219 = v194;
  v97 = v217;
  sub_1D72647EC();

  sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
  v47 = v209;
  v50 = v210;
  v51 = v208;
  if (!v97)
  {
    v217 = 0;
LABEL_8:
    v72 = v212;
    v71 = v213;
    (v50)(v212, v213, v47);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v72, type metadata accessor for FormatVersionRequirement);
    (v50)(v72, v71, v47);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v72, type metadata accessor for FormatVersionRequirement);
    (v50)(v215, v71, v47);
    swift_storeEnumTagMultiPayload();
    v218 = v216;
    v216 = xmmword_1D72BAA60;
    v220 = xmmword_1D72BAA60;
    v221 = 0;
    v73 = v214;
    v74 = &v35[*(v214 + 11)];
    v76 = *v74;
    v75 = *(v74 + 1);
    v222 = 0;
    v77 = swift_allocObject();
    v212 = &v192;
    *(v77 + 16) = v216;
    *(v77 + 32) = v222;
    *(v77 + 40) = v76;
    *(v77 + 48) = v75;
    MEMORY[0x1EEE9AC00](v77, v78);
    v208 = &v192 - 6;
    *(&v192 - 4) = sub_1D5B4AA6C;
    *(&v192 - 3) = 0;
    v190 = sub_1D6708A04;
    v191 = v79;
    v222 = 0;
    v80 = swift_allocObject();
    *(v80 + 16) = v216;
    *(v80 + 32) = v222;
    v193 = v76;
    *(v80 + 40) = v76;
    *(v80 + 48) = v75;
    sub_1D5E1BAEC(0);
    v82 = v81;
    v83 = sub_1D5B58B84(&qword_1EDF03788, sub_1D5E1BAEC);
    v192 = v75;
    swift_retain_n();
    v205 = v82;
    v194 = v83;
    v84 = sub_1D72647CC();
    v222 = 0;
    v85 = swift_allocObject();
    *(v85 + 16) = v84;
    *(v85 + 24) = v216;
    *(v85 + 40) = v222;
    v86 = &v35[*(v73 + 9)];
    v87 = __swift_project_boxed_opaque_existential_1(v86, *(v86 + 3));
    MEMORY[0x1EEE9AC00](v87, v88);
    MEMORY[0x1EEE9AC00](v89, v90);
    v91 = v208;
    *(&v192 - 4) = sub_1D615B4A4;
    *(&v192 - 3) = v91;
    v190 = sub_1D6708A04;
    v191 = v80;
    v92 = v215;
    v93 = v217;
    sub_1D5D2BC70(v215, sub_1D615B49C, v94, sub_1D615B4A4, (&v192 - 6));
    if (v93)
    {
      v95 = v35;
      sub_1D5D2CFE8(v92, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v95, sub_1D6685FEC);
    }

    *&v216 = v86;
    v208 = v51;

    sub_1D6686110();
    v95 = v35;
    sub_1D72647EC();
    v217 = 0;
    sub_1D5D2CFE8(v215, type metadata accessor for FormatVersionRequirement);

    v98 = v206;
    v100 = v209;
    v99 = v210;
    (v210)(v206, v213, v209);
    swift_storeEnumTagMultiPayload();
    v101 = sub_1D5C8DCC0(&unk_1F50F2F08);
    v102 = sub_1D5E21790(v207, v101);

    if (v102)
    {
      v103 = v192;
    }

    else
    {
      LOBYTE(v220) = 0;
      v110 = swift_allocObject();
      v215 = xmmword_1D72BAA70;
      *(v110 + 16) = xmmword_1D72BAA70;
      *(v110 + 32) = v220;
      *(v110 + 40) = v193;
      *(v110 + 48) = v192;

      v111 = sub_1D72647CC();
      LOBYTE(v220) = 0;
      v112 = swift_allocObject();
      *(v112 + 16) = v111;
      *(v112 + 24) = v215;
      *(v112 + 40) = v220;
      v113 = __swift_project_boxed_opaque_existential_1(v216, *(v216 + 24));
      MEMORY[0x1EEE9AC00](v113, v114);
      MEMORY[0x1EEE9AC00](v115, v116);
      *(&v192 - 4) = sub_1D5B4AA6C;
      *(&v192 - 3) = 0;
      v190 = sub_1D6708A04;
      v191 = v110;
      v117 = v217;
      v119 = sub_1D5D2F7A4(v98, sub_1D615B49C, v118, sub_1D615B4A4, (&v192 - 6));
      v217 = v117;
      if (v117)
      {
        sub_1D5D2CFE8(v98, type metadata accessor for FormatVersionRequirement);

        return sub_1D5D2CFE8(v95, sub_1D6685FEC);
      }

      v132 = v119;

      if (v132)
      {
        v133 = v217;
        sub_1D5E085C0(v207, v35, 4, 0, 0);
        v99 = v210;
        if (v133)
        {
          sub_1D5D2CFE8(v206, type metadata accessor for FormatVersionRequirement);

          return sub_1D5D2CFE8(v95, sub_1D6685FEC);
        }

        v217 = 0;
        v103 = v192;
        v98 = v206;
      }

      else
      {
        v99 = v210;
        v103 = v192;
        v98 = v206;
      }
    }

    sub_1D5D2CFE8(v98, type metadata accessor for FormatVersionRequirement);

    v104 = v193;
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v105 = __swift_project_value_buffer(v100, qword_1EDFFCD50);
    v106 = v204;
    v99(v204, v105, v100);
    swift_storeEnumTagMultiPayload();
    v215 = xmmword_1D72BAA80;
    v220 = xmmword_1D72BAA80;
    v221 = 0;
    LOBYTE(v218) = 0;
    v108 = swift_allocObject();
    *(v108 + 16) = v215;
    *(v108 + 32) = v218;
    *(v108 + 40) = v104;
    *(v108 + 48) = v103;
    if (v223)
    {

      v109 = v106;
      v31 = v202;
    }

    else
    {
      v214 = &v192;
      v218 = v199;
      MEMORY[0x1EEE9AC00](v103, v107);
      v121 = v120;
      *(&v192 - 4) = sub_1D5B4AA6C;
      *(&v192 - 3) = 0;
      v190 = sub_1D6708A04;
      v191 = v108;
      v222 = 0;
      v122 = swift_allocObject();
      *(v122 + 16) = v215;
      *(v122 + 32) = v222;
      *(v122 + 40) = v104;
      *(v122 + 48) = v121;
      swift_retain_n();
      v123 = sub_1D72647CC();
      v222 = 0;
      v124 = swift_allocObject();
      *(v124 + 16) = v123;
      *(v124 + 24) = v215;
      *(v124 + 40) = v222;
      v125 = __swift_project_boxed_opaque_existential_1(v216, *(v216 + 24));
      MEMORY[0x1EEE9AC00](v125, v126);
      MEMORY[0x1EEE9AC00](v127, v128);
      *(&v192 - 4) = sub_1D615B4A4;
      *(&v192 - 3) = (&v192 - 6);
      v190 = sub_1D6708A04;
      v191 = v122;
      v129 = v217;
      v131 = sub_1D5D2F7A4(v106, sub_1D615B49C, v130, sub_1D615B4A4, (&v192 - 6));
      v217 = v129;
      if (v129)
      {
        sub_1D5D2CFE8(v106, type metadata accessor for FormatVersionRequirement);

        return sub_1D5D2CFE8(v95, sub_1D6685FEC);
      }

      v134 = v131;

      v31 = v202;
      if (v134)
      {
        v135 = v217;
        sub_1D72647EC();
        v100 = v209;
        v99 = v210;
        if (v135)
        {
          sub_1D5D2CFE8(v204, type metadata accessor for FormatVersionRequirement);

          return sub_1D5D2CFE8(v95, sub_1D6685FEC);
        }

        v217 = 0;
      }

      else
      {
        v100 = v209;
        v99 = v210;
      }

      v103 = v192;
      v104 = v193;
      v109 = v204;
    }

    sub_1D5D2CFE8(v109, type metadata accessor for FormatVersionRequirement);

    v99(v31, v213, v100);
    swift_storeEnumTagMultiPayload();
    v136 = v216;
    if (*(v203 + 16))
    {
      LOBYTE(v220) = 0;
      v137 = swift_allocObject();
      v215 = xmmword_1D72BAA90;
      *(v137 + 16) = xmmword_1D72BAA90;
      *(v137 + 32) = v220;
      *(v137 + 40) = v104;
      *(v137 + 48) = v103;

      v138 = sub_1D72647CC();
      LOBYTE(v220) = 0;
      v139 = swift_allocObject();
      *(v139 + 16) = v138;
      *(v139 + 24) = v215;
      *(v139 + 40) = v220;
      v140 = __swift_project_boxed_opaque_existential_1(v136, v136[3]);
      MEMORY[0x1EEE9AC00](v140, v141);
      MEMORY[0x1EEE9AC00](v142, v143);
      *(&v192 - 4) = sub_1D5B4AA6C;
      *(&v192 - 3) = 0;
      v190 = sub_1D6708A04;
      v191 = v137;
      v144 = v217;
      v146 = sub_1D5D2F7A4(v31, sub_1D615B49C, v145, sub_1D615B4A4, (&v192 - 6));
      v217 = v144;
      if (v144)
      {
        goto LABEL_5;
      }

      v148 = v146;

      if (v148)
      {
        v220 = v215;
        v221 = 0;
        v218 = v203;
        sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
        sub_1D60AD304();
        v149 = v217;
        sub_1D72647EC();
        v100 = v209;
        v99 = v210;
        v136 = v216;
        v217 = v149;
        if (v149)
        {

          sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
          v69 = v35;
          return sub_1D5D2CFE8(v69, sub_1D6685FEC);
        }

        v150 = v192;

        sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
        v147 = v150;
      }

      else
      {
        sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);

        v100 = v209;
        v99 = v210;
        v147 = v192;
        v136 = v216;
      }
    }

    else
    {
      sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
      v147 = v103;
    }

    v151 = qword_1EDF31F08;
    v152 = v200;

    v153 = v201;
    if (v151 != -1)
    {
      swift_once();
    }

    v154 = __swift_project_value_buffer(v100, qword_1EDFFCDE0);
    v99(v153, v154, v100);
    swift_storeEnumTagMultiPayload();
    if (*(v152 + 16))
    {
      LOBYTE(v220) = 0;
      v155 = v153;
      v156 = swift_allocObject();
      v215 = xmmword_1D72BAAA0;
      *(v156 + 16) = xmmword_1D72BAAA0;
      *(v156 + 32) = v220;
      *(v156 + 40) = v193;
      *(v156 + 48) = v147;

      v157 = sub_1D72647CC();
      LOBYTE(v220) = 0;
      v158 = swift_allocObject();
      *(v158 + 16) = v157;
      *(v158 + 24) = v215;
      *(v158 + 40) = v220;
      v159 = __swift_project_boxed_opaque_existential_1(v136, v136[3]);
      MEMORY[0x1EEE9AC00](v159, v160);
      MEMORY[0x1EEE9AC00](v161, v162);
      *(&v192 - 4) = sub_1D5B4AA6C;
      *(&v192 - 3) = 0;
      v190 = sub_1D6708A04;
      v191 = v156;
      v163 = v217;
      v165 = sub_1D5D2F7A4(v155, sub_1D615B49C, v164, sub_1D615B4A4, (&v192 - 6));
      v217 = v163;
      if (v163)
      {

        v153 = v201;
LABEL_52:
        v166 = v153;
        goto LABEL_69;
      }

      v167 = v165;

      if (v167)
      {
        v168 = v217;
        sub_1D5E08580(v200, v35, 7, 0, 0);
        v153 = v201;
        v100 = v209;
        v99 = v210;
        v217 = v168;
        if (v168)
        {

          goto LABEL_52;
        }
      }

      else
      {
        v153 = v201;
        v100 = v209;
        v99 = v210;
      }

      v147 = v192;
      v136 = v216;
    }

    v169 = v196 | (v197 << 16);

    sub_1D5D2CFE8(v153, type metadata accessor for FormatVersionRequirement);
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v170 = __swift_project_value_buffer(v100, qword_1EDFFCE80);
    v99(v198, v170, v100);
    swift_storeEnumTagMultiPayload();
    v216 = xmmword_1D72BAAB0;
    v220 = xmmword_1D72BAAB0;
    v221 = 0;
    LOBYTE(v218) = 0;
    v171 = swift_allocObject();
    v173 = v171;
    *(v171 + 16) = v216;
    *(v171 + 32) = v218;
    v174 = v193;
    *(v171 + 40) = v193;
    *(v171 + 48) = v147;
    if (BYTE2(v169) == 255)
    {

      sub_1D5D2CFE8(v198, type metadata accessor for FormatVersionRequirement);

LABEL_70:
      v69 = v95;
      return sub_1D5D2CFE8(v69, sub_1D6685FEC);
    }

    *&v215 = &v192;
    v175 = v195;
    v218 = v195;
    LOWORD(v219) = v169;
    BYTE2(v219) = BYTE2(v169);
    MEMORY[0x1EEE9AC00](v171, v172);
    v214 = &v192 - 6;
    *(&v192 - 4) = sub_1D5B4AA6C;
    *(&v192 - 3) = 0;
    v190 = sub_1D6708A04;
    v191 = v173;
    v222 = 0;
    v176 = swift_allocObject();
    *(v176 + 16) = v216;
    *(v176 + 32) = v222;
    *(v176 + 40) = v174;
    *(v176 + 48) = v147;
    swift_retain_n();
    sub_1D62B7DCC(v175, v169);
    v177 = sub_1D72647CC();
    v222 = 0;
    v178 = swift_allocObject();
    *(v178 + 16) = v177;
    *(v178 + 24) = v216;
    *(v178 + 40) = v222;
    v179 = __swift_project_boxed_opaque_existential_1(v136, v136[3]);
    MEMORY[0x1EEE9AC00](v179, v180);
    MEMORY[0x1EEE9AC00](v181, v182);
    v183 = v214;
    *(&v192 - 4) = sub_1D615B4A4;
    *(&v192 - 3) = v183;
    v190 = sub_1D6708A04;
    v191 = v176;
    v184 = v198;
    v185 = v217;
    v187 = sub_1D5D2F7A4(v198, sub_1D615B49C, v186, sub_1D615B4A4, (&v192 - 6));
    v217 = v185;
    if (v185)
    {
    }

    else
    {
      v188 = v187;

      if (v188)
      {
        sub_1D610BD84();
        v189 = v217;
        sub_1D72647EC();
        v217 = v189;
      }
    }

    sub_1D610CA74(v218, v219, SBYTE2(v219), sub_1D60CF6A8, sub_1D60CF6DC);
    v166 = v184;
LABEL_69:
    sub_1D5D2CFE8(v166, type metadata accessor for FormatVersionRequirement);
    goto LABEL_70;
  }

  return sub_1D5D2CFE8(v35, sub_1D6685FEC);
}

uint64_t sub_1D648EE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66882BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D648EEC0(uint64_t a1)
{
  v2 = sub_1D5C4C6C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D648EEFC(uint64_t a1)
{
  v2 = sub_1D5C4C6C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatDecorationContent.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v101 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v99 = &v97 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v100 = &v97 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v98 = &v97 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v103 = &v97 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v102 = &v97 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v97 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v97 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v97 = &v97 - v32;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v36 = &v97 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *v2;
  v38 = a1[3];
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v38);
  v40 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatDecorationContent, &type metadata for FormatCodingKeys, v41, v38, &type metadata for FormatDecorationContent, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v39, v36, v40, &off_1F51F6C78);
  v42 = v37 >> 60;
  if ((v37 >> 60) > 3)
  {
    if (v42 <= 5)
    {
      v43 = v36;
      if (v42 == 4)
      {
        v66 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
        v109[6] = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
        v109[7] = v66;
        v109[8] = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
        v110 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0xA0);
        v67 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v109[2] = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v109[3] = v67;
        v68 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
        v109[4] = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
        v109[5] = v68;
        v69 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v109[0] = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v109[1] = v69;
        sub_1D62B4EA4(v109, v104);
        if (qword_1EDF31EF8 != -1)
        {
          swift_once();
        }

        v70 = sub_1D725BD1C();
        v71 = __swift_project_value_buffer(v70, qword_1EDFFCDC8);
        v51 = v98;
        (*(*(v70 - 8) + 16))(v98, v71, v70);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D6395250(5, v109, v51);
        sub_1D62B4F00(v109);
      }

      else
      {
        v87 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        sub_1D5B58478();
        v89 = *(v88 + 48);
        v90 = v100;
        v91 = &v100[*(v88 + 64)];
        sub_1D6086744(v87);
        if (qword_1EDF31ED0 != -1)
        {
          swift_once();
        }

        v92 = sub_1D725BD1C();
        v93 = __swift_project_value_buffer(v92, qword_1EDFFCD50);
        v94 = *(*(v92 - 8) + 16);
        v94(v90, v93, v92);
        if (qword_1EDF31F48 != -1)
        {
          swift_once();
        }

        v95 = __swift_project_value_buffer(v92, qword_1EDFFCE68);
        v94(v90 + v89, v95, v92);
        type metadata accessor for FormatVersionRequirement.Value(0);
        *v91 = 0;
        *(v91 + 1) = 0;
        swift_storeEnumTagMultiPayload();
        sub_1D6395418(6, v87, v90);
        sub_1D6086768(v87);
        v51 = v90;
      }

      goto LABEL_42;
    }

    v43 = v36;
    if (v42 == 6)
    {
      v72 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v73 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v74 = qword_1EDF31F08;

      if (v74 != -1)
      {
        swift_once();
      }

      v75 = sub_1D725BD1C();
      v76 = __swift_project_value_buffer(v75, qword_1EDFFCDE0);
      v51 = v99;
      (*(*(v75 - 8) + 16))(v99, v76, v75);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63955AC(7, v72, v73, v51);
    }

    else
    {
      if (v42 != 7)
      {
        if (qword_1EDF31F08 != -1)
        {
          swift_once();
        }

        v85 = sub_1D725BD1C();
        v86 = __swift_project_value_buffer(v85, qword_1EDFFCDE0);
        v51 = v97;
        (*(*(v85 - 8) + 16))(v97, v86, v85);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D641CD20(0, v51);
        goto LABEL_42;
      }

      v44 = v37 & 0xFFFFFFFFFFFFFFFLL;
      v45 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v46 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v47 = *(v44 + 32);
      v48 = qword_1EDF31F08;

      if (v48 != -1)
      {
        swift_once();
      }

      v49 = sub_1D725BD1C();
      v50 = __swift_project_value_buffer(v49, qword_1EDFFCDE0);
      v51 = v101;
      (*(*(v49 - 8) + 16))(v101, v50, v49);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6395780(8, v45, v46, v47, v51);
    }

LABEL_42:
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
    v81 = v43;
    return sub_1D5D2CFE8(v81, sub_1D5D30DC4);
  }

  v52 = v29;
  v53 = v25;
  v51 = v102;
  v54 = v103;
  if (v42 > 1)
  {
    v43 = v36;
    if (v42 == 2)
    {
      v60 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
      v106[4] = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
      v106[5] = v60;
      v61 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
      v106[6] = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
      v106[7] = v61;
      v62 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v106[0] = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v106[1] = v62;
      v63 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v106[2] = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v106[3] = v63;
      sub_1D60865E4(v106, v104);
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v64 = sub_1D725BD1C();
      v65 = __swift_project_value_buffer(v64, qword_1EDFFCCE8);
      (*(*(v64 - 8) + 16))(v51, v65, v64);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6394F00(3, v106, v51);
      sub_1D6086640(v106);
    }

    else
    {
      v82 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v107 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v108[0] = v82;
      *(v108 + 9) = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x29);
      sub_1D66863E8(&v107, v104);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v83 = sub_1D725BD1C();
      v84 = __swift_project_value_buffer(v83, qword_1EDFFCD30);
      v51 = v54;
      (*(*(v83 - 8) + 16))(v54, v84, v83);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63950B0(4, &v107, v54);
      sub_1D6686444(&v107);
    }

    goto LABEL_42;
  }

  if (v42)
  {
    v77 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v105[0] = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v105[1] = v77;
    v78 = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
    v105[2] = *((v37 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v105[3] = v78;
    sub_1D6086694(v105, v104);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v79 = sub_1D725BD1C();
    v80 = __swift_project_value_buffer(v79, qword_1EDFFCD30);
    (*(*(v79 - 8) + 16))(v53, v80, v79);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6394D60(2, v105, v53);
    sub_1D60866F0(v105);
    v59 = v53;
  }

  else
  {
    v55 = *(v37 + 16);
    v56 = qword_1EDF31EB0;

    if (v56 != -1)
    {
      swift_once();
    }

    v57 = sub_1D725BD1C();
    v58 = __swift_project_value_buffer(v57, qword_1EDFFCD30);
    (*(*(v57 - 8) + 16))(v52, v58, v57);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6394BCC(1, v55, v52);

    v59 = v52;
  }

  sub_1D5D2CFE8(v59, type metadata accessor for FormatVersionRequirement);
  v81 = v36;
  return sub_1D5D2CFE8(v81, sub_1D5D30DC4);
}

uint64_t sub_1D648FA98(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7974706D65;
    v6 = 0x746E656964617267;
    if (a1 != 2)
    {
      v6 = 0x72476C6169646172;
    }

    if (a1)
    {
      v5 = 0x726F6C6F63;
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
    v1 = 0x656E696873;
    v2 = 0x726F7463656C6573;
    if (a1 != 7)
    {
      v2 = 0x7463656C65736E75;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6E726574746170;
    if (a1 != 4)
    {
      v3 = 1633905005;
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

uint64_t sub_1D648FBD0(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  v5 = *v3;
  sub_1D7264A0C();
  a3(v7, v5);
  return sub_1D7264A5C();
}

uint64_t sub_1D648FC40(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D7264A0C();
  a4(v8, v6);
  return sub_1D7264A5C();
}

uint64_t sub_1D648FC8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D648FA98(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatDimensionSizing.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v73 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v66 - v8;
  sub_1D6686498();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v72 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D5C71ACC();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF252D8, sub_1D5C71ACC);
  sub_1D5D2EE70(&type metadata for FormatDimensionSizing, v19, v21, v16, &type metadata for FormatDimensionSizing, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v74 = v23;
  v75 = v22;
  v69 = v24 + 16;
  v70 = v25;
  (v25)(v9);
  v68 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v84 = v15;
  v82 = 0uLL;
  v83 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v81 = 0;
  v29 = swift_allocObject();
  v78 = &v66;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v81;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v80 = v9;
  *(&v66 - 4) = sub_1D5B4AA6C;
  *(&v66 - 3) = 0;
  v64 = sub_1D6708A08;
  v65 = v31;
  v81 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v81;
  v71 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D668652C();
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF032E8, sub_1D668652C);
  swift_retain_n();
  v76 = v35;
  v77 = v34;
  v36 = sub_1D72647CC();
  v81 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v81;
  v38 = &v14[*(v11 + 36)];
  v39 = __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
  MEMORY[0x1EEE9AC00](v39, v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  *(&v66 - 4) = sub_1D615B4A4;
  *(&v66 - 3) = (&v66 - 6);
  v43 = v79;
  v44 = v80;
  v64 = sub_1D6708A08;
  v65 = v32;
  sub_1D5D2BC70(v80, sub_1D615B49C, v45, sub_1D615B4A4, (&v66 - 6));
  if (v43)
  {
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v67 = v38;
    v47 = v74;
    v46 = v75;
    v79 = v28;

    v48 = sub_1D61F84CC();
    sub_1D72647EC();
    v66 = v48;
    sub_1D5D2CFE8(v80, type metadata accessor for FormatVersionRequirement);

    v50 = v73;
    v70(v73, v47, v46);
    swift_storeEnumTagMultiPayload();
    v84 = v72;
    v80 = xmmword_1D728CF30;
    v82 = xmmword_1D728CF30;
    v83 = 0;
    v81 = 0;
    v51 = swift_allocObject();
    v78 = &v66;
    *(v51 + 16) = v80;
    *(v51 + 32) = v81;
    v52 = v71;
    v53 = v79;
    *(v51 + 40) = v71;
    *(v51 + 48) = v53;
    MEMORY[0x1EEE9AC00](v51, v54);
    *(&v66 - 4) = sub_1D5B4AA6C;
    *(&v66 - 3) = 0;
    v64 = sub_1D6708A08;
    v65 = v55;
    v81 = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = v80;
    *(v56 + 32) = v81;
    *(v56 + 40) = v52;
    *(v56 + 48) = v53;
    swift_retain_n();
    v57 = sub_1D72647CC();
    v81 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v57;
    *(v58 + 24) = v80;
    *(v58 + 40) = v81;
    v59 = __swift_project_boxed_opaque_existential_1(v67, *(v67 + 3));
    MEMORY[0x1EEE9AC00](v59, v60);
    MEMORY[0x1EEE9AC00](v61, v62);
    *(&v66 - 4) = sub_1D615B4A4;
    *(&v66 - 3) = (&v66 - 6);
    v64 = sub_1D6708A08;
    v65 = v56;
    sub_1D5D2BC70(v50, sub_1D615B49C, v63, sub_1D615B4A4, (&v66 - 6));

    sub_1D72647EC();
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D6686498);
}

unint64_t sub_1D6490570(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7274654D746E6F66;
    v6 = 0x4664657A69736572;
    if (a1 != 8)
    {
      v6 = 0x61746E6563726570;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000011;
    if (a1 != 5)
    {
      v7 = 0x747265766E69;
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
    v1 = 0x6465786966;
    v2 = 0x736E6D756C6F63;
    v3 = 1819044198;
    if (a1 != 3)
    {
      v3 = 0x69466F54657A6973;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x694664656C616373;
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

uint64_t sub_1D64906C8(uint64_t a1)
{
  v2 = sub_1D5C81764();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6490704(uint64_t a1)
{
  v2 = sub_1D5C81764();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D64907A0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D6490570(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatDirectionalGradient.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v31 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v31 - v8;
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

    v12 = v6;
    v13 = v31;
    v14 = v32;
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
          *(v22 + 16) = &unk_1F5114B98;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v13 + 8))(v15, v12);
          goto LABEL_9;
        }
      }
    }

    sub_1D6686624();
    v58 = 0;
    v59 = 0;
    sub_1D726431C();
    v24 = (v13 + 8);
    v41 = xmmword_1D7279980;
    if (v60)
    {
      sub_1D6676230();
      sub_1D726431C();
      (*v24)(v15, v12);
      v37 = v46;
      v38 = v47;
      v39 = v48;
      v40 = v49;
      v33 = v42;
      v34 = v43;
      v35 = v44;
      v36 = v45;
      sub_1D5C326F0(&v33);
      v54 = v37;
      v55 = v38;
      v56 = v39;
      v57 = v40;
      v50 = v33;
      v51 = v34;
      v25 = v35;
      v26 = v36;
    }

    else
    {
      sub_1D5C4C9E8();
      sub_1D726431C();
      (*v24)(v15, v12);
      v42 = v33;
      v43 = v34;
      v44 = v35;
      v45 = v36;
      sub_1D5C32704(&v42);
      v54 = v46;
      v55 = v47;
      v56 = v48;
      v57 = v49;
      v50 = v42;
      v51 = v43;
      v25 = v44;
      v26 = v45;
    }

    v52 = v25;
    v53 = v26;
    v27 = v55;
    v14[4] = v54;
    v14[5] = v27;
    v28 = v57;
    v14[6] = v56;
    v14[7] = v28;
    v29 = v51;
    *v14 = v50;
    v14[1] = v29;
    v30 = v53;
    v14[2] = v52;
    v14[3] = v30;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatDirectionalGradient.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatDirectionalGradient, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatDirectionalGradient, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonG, v17, v15, v18, &off_1F51F6BF8);
  v20 = v2[5];
  v39[4] = v2[4];
  v39[5] = v20;
  v21 = v2[7];
  v39[6] = v2[6];
  v39[7] = v21;
  v22 = v2[1];
  v39[0] = *v2;
  v39[1] = v22;
  v23 = v2[3];
  v39[2] = v2[2];
  v39[3] = v23;
  LODWORD(a1) = sub_1D6011280(v39);
  v24 = sub_1D5D756C8(v39);
  if (a1 == 1)
  {
    v25 = v24[5];
    v38[4] = v24[4];
    v38[5] = v25;
    v26 = v24[7];
    v38[6] = v24[6];
    v38[7] = v26;
    v27 = v24[1];
    v38[0] = *v24;
    v38[1] = v27;
    v28 = v24[3];
    v38[2] = v24[2];
    v38[3] = v28;
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v29 = sub_1D725BD1C();
    v30 = __swift_project_value_buffer(v29, qword_1EDFFCD18);
    (*(*(v29 - 8) + 16))(v7, v30, v29);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6390BC4(1, v38, v7);
    v31 = v7;
  }

  else
  {
    v32 = v24[1];
    v37[0] = *v24;
    v37[1] = v32;
    v33 = v24[3];
    v37[2] = v24[2];
    v37[3] = v33;
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v34 = sub_1D725BD1C();
    v35 = __swift_project_value_buffer(v34, qword_1EDFFCD18);
    (*(*(v34 - 8) + 16))(v11, v35, v34);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6390A24(0, v37, v11);
    v31 = v11;
  }

  sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v15, sub_1D5D30DC4);
}

uint64_t sub_1D6490FA0(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6C6169646172;
  }

  else
  {
    v2 = 0x7261656E696CLL;
  }

  if (*a2)
  {
    v3 = 0x6C6169646172;
  }

  else
  {
    v3 = 0x7261656E696CLL;
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

uint64_t sub_1D6491020()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6491090()
{
  sub_1D72621EC();
}

uint64_t sub_1D64910E4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D649115C(uint64_t *a1@<X8>)
{
  v2 = 0x7261656E696CLL;
  if (*v1)
  {
    v2 = 0x6C6169646172;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

uint64_t FormatDismissAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a2;
  sub_1D6686678();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D668670C();
  sub_1D5B58B84(&qword_1EC886AD8, sub_1D668670C);
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

  v13 = v31;
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

      v22 = sub_1D661A650();
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

  sub_1D667CF44();
  v25[1] = 0;
  v25[2] = 0;
  v26 = 0;
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v17 = v30;
  v18 = v28;
  v19 = v29;
  *v13 = v27;
  *(v13 + 16) = v18;
  *(v13 + 32) = v19;
  *(v13 + 48) = v17;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatDismissAction.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D668688C();
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v47 = v1[1];
  v48 = v11;
  v12 = *(v1 + 4);
  v13 = *(v1 + 5);
  v14 = *(v1 + 24);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D668670C();
  v18 = v17;
  v19 = sub_1D5B58B84(&qword_1EC886AD8, sub_1D668670C);
  sub_1D5D2EE70(&type metadata for FormatDismissAction, v18, v20, v15, &type metadata for FormatDismissAction, v18, &type metadata for FormatVersions.LuckCheer, v16, v10, v19, &off_1F51F6AB8);
  if (qword_1EDF31E78 != -1)
  {
    swift_once();
  }

  v21 = sub_1D725BD1C();
  v22 = __swift_project_value_buffer(v21, qword_1EDFFCC90);
  (*(*(v21 - 8) + 16))(v6, v22, v21);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v55 = v47;
  v54 = v48;
  v56 = v12;
  v57 = v13;
  v58 = v14;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  *&v48 = v6;
  v23 = v49;
  v24 = &v10[*(v49 + 44)];
  v26 = *v24;
  v25 = *(v24 + 1);
  v59 = 0;
  v27 = swift_allocObject();
  *&v47 = v46;
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v59;
  *(v27 + 40) = v26;
  *(v27 + 48) = v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v46[-4] = sub_1D5B4AA6C;
  v46[-3] = 0;
  v44 = sub_1D6708A0C;
  v45 = v29;
  v59 = 0;
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v59;
  *(v30 + 40) = v26;
  *(v30 + 48) = v25;
  sub_1D6686920();
  v32 = v31;
  sub_1D5B58B84(&qword_1EC886AF0, sub_1D6686920);
  swift_retain_n();
  v46[1] = v32;
  v33 = sub_1D72647CC();
  v59 = 0;
  v34 = swift_allocObject();
  *(v34 + 24) = 0;
  *(v34 + 32) = 0;
  *(v34 + 16) = v33;
  *(v34 + 40) = v59;
  v35 = *(v23 + 36);
  v36 = v48;
  v37 = __swift_project_boxed_opaque_existential_1(&v10[v35], *&v10[v35 + 24]);
  MEMORY[0x1EEE9AC00](v37, v38);
  MEMORY[0x1EEE9AC00](v39, v40);
  v46[-4] = sub_1D615B4A4;
  v46[-3] = &v46[-6];
  v44 = sub_1D66869B4;
  v45 = v30;
  v41 = v50;
  sub_1D5D2BC70(v36, sub_1D615B49C, v42, sub_1D615B4A4, &v46[-6]);
  if (v41)
  {
    sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D6686A30();
    sub_1D72647EC();
    sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v10, sub_1D668688C);
}

uint64_t sub_1D6491A4C()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1D6491A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001D73C1570 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1D6491B7C(uint64_t a1)
{
  v2 = sub_1D66867E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6491BB8(uint64_t a1)
{
  v2 = sub_1D66867E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatDurationFormat.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatDurationFormat, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatDurationFormat, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonG, v17, v14, v18, &off_1F51F6BF8);
  if (v15)
  {
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCD18);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6424E38(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCD18);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6424E38(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D6491F20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1735290732;
  }

  else
  {
    v3 = 0x74726F6873;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1735290732;
  }

  else
  {
    v5 = 0x74726F6873;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
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

uint64_t sub_1D6491FBC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6492034()
{
  sub_1D72621EC();
}

uint64_t sub_1D6492098()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6492118(uint64_t *a1@<X8>)
{
  v2 = 1735290732;
  if (!*v1)
  {
    v2 = 0x74726F6873;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatEdgeInsets.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v106 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v107 = &v103 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v114 = &v103 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v103 - v14;
  sub_1D6686AD8();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v1;
  v21 = v1[1];
  v24 = v1[2];
  v23 = v1[3];
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1D5CD91DC();
  v28 = v27;
  v29 = sub_1D5B58B84(&qword_1EDF256C8, sub_1D5CD91DC);
  sub_1D5D2EE70(&type metadata for FormatEdgeInsets, v28, v30, v25, &type metadata for FormatEdgeInsets, v28, &type metadata for FormatVersions.JazzkonC, v26, v20, v29, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v31 = sub_1D725BD1C();
  v32 = __swift_project_value_buffer(v31, qword_1EDFFCD30);
  v33 = *(v31 - 8);
  v34 = *(v33 + 16);
  v111 = v32;
  v112 = v31;
  v109 = v33 + 16;
  v110 = v34;
  (v34)(v15);
  v108 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v123 = v22;
  v121 = 0uLL;
  v122 = 0;
  v35 = &v20[*(v17 + 44)];
  v36 = *v35;
  v37 = *(v35 + 1);
  v120 = 0;
  v38 = swift_allocObject();
  v118 = &v103;
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = v120;
  *(v38 + 40) = v36;
  *(v38 + 48) = v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  *(&v103 - 4) = sub_1D5B4AA6C;
  *(&v103 - 3) = 0;
  v101 = sub_1D6708A10;
  v102 = v40;
  v120 = 0;
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = v120;
  v113 = v36;
  *(v41 + 40) = v36;
  *(v41 + 48) = v37;
  sub_1D6686B6C();
  v43 = v42;
  v44 = sub_1D5B58B84(&qword_1EDF03778, sub_1D6686B6C);
  swift_retain_n();
  v115 = v44;
  v116 = v43;
  v45 = sub_1D72647CC();
  v120 = 0;
  v46 = swift_allocObject();
  *(v46 + 24) = 0;
  *(v46 + 32) = 0;
  *(v46 + 16) = v45;
  *(v46 + 40) = v120;
  v47 = &v20[*(v17 + 36)];
  v117 = v20;
  v48 = __swift_project_boxed_opaque_existential_1(v47, *(v47 + 3));
  MEMORY[0x1EEE9AC00](v48, v49);
  MEMORY[0x1EEE9AC00](v50, v51);
  *(&v103 - 4) = sub_1D615B4A4;
  *(&v103 - 3) = (&v103 - 6);
  v101 = sub_1D6686C00;
  v102 = v41;
  v52 = v119;
  sub_1D5D2BC70(v15, sub_1D615B49C, v53, sub_1D615B4A4, (&v103 - 6));
  if (v52)
  {
    sub_1D5D2CFE8(v15, type metadata accessor for FormatVersionRequirement);

    v56 = v117;
  }

  else
  {
    v104 = v47;
    v105 = v37;

    v54 = sub_1D5B578C4();
    v55 = v117;
    sub_1D72647EC();
    v103 = v54;
    sub_1D5D2CFE8(v15, type metadata accessor for FormatVersionRequirement);

    v58 = v114;
    v110(v114, v111, v112);
    swift_storeEnumTagMultiPayload();
    v123 = v21;
    v119 = xmmword_1D728CF30;
    v121 = xmmword_1D728CF30;
    v122 = 0;
    v120 = 0;
    v59 = swift_allocObject();
    v118 = &v103;
    *(v59 + 16) = v119;
    *(v59 + 32) = v120;
    v60 = v55;
    v61 = v113;
    v62 = v105;
    *(v59 + 40) = v113;
    *(v59 + 48) = v62;
    MEMORY[0x1EEE9AC00](v59, v63);
    *(&v103 - 4) = sub_1D5B4AA6C;
    *(&v103 - 3) = 0;
    v101 = sub_1D6708A10;
    v102 = v64;
    v120 = 0;
    v65 = swift_allocObject();
    *(v65 + 16) = v119;
    *(v65 + 32) = v120;
    *(v65 + 40) = v61;
    *(v65 + 48) = v62;
    swift_retain_n();
    v66 = sub_1D72647CC();
    v120 = 0;
    v67 = swift_allocObject();
    *(v67 + 16) = v66;
    *(v67 + 24) = v119;
    *(v67 + 40) = v120;
    v68 = __swift_project_boxed_opaque_existential_1(v104, *(v104 + 3));
    MEMORY[0x1EEE9AC00](v68, v69);
    MEMORY[0x1EEE9AC00](v70, v71);
    *(&v103 - 4) = sub_1D615B4A4;
    *(&v103 - 3) = (&v103 - 6);
    sub_1D5D2BC70(v58, sub_1D615B49C, v72, sub_1D615B4A4, (&v103 - 6));

    sub_1D72647EC();
    sub_1D5D2CFE8(v114, type metadata accessor for FormatVersionRequirement);

    v73 = v107;
    v110(v107, v111, v112);
    swift_storeEnumTagMultiPayload();
    v123 = v24;
    v119 = xmmword_1D7297410;
    v121 = xmmword_1D7297410;
    v122 = 0;
    v120 = 0;
    v74 = swift_allocObject();
    v118 = &v103;
    *(v74 + 16) = v119;
    *(v74 + 32) = v120;
    v75 = v113;
    v76 = v105;
    *(v74 + 40) = v113;
    *(v74 + 48) = v76;
    MEMORY[0x1EEE9AC00](v74, v77);
    *(&v103 - 4) = sub_1D5B4AA6C;
    *(&v103 - 3) = 0;
    v101 = sub_1D6708A10;
    v102 = v78;
    v120 = 0;
    v79 = swift_allocObject();
    *(v79 + 16) = v119;
    *(v79 + 32) = v120;
    *(v79 + 40) = v75;
    *(v79 + 48) = v76;
    swift_retain_n();
    v80 = sub_1D72647CC();
    v120 = 0;
    v81 = swift_allocObject();
    *(v81 + 16) = v80;
    *(v81 + 24) = v119;
    *(v81 + 40) = v120;
    v82 = __swift_project_boxed_opaque_existential_1(v104, *(v104 + 3));
    MEMORY[0x1EEE9AC00](v82, v83);
    MEMORY[0x1EEE9AC00](v84, v85);
    *(&v103 - 4) = sub_1D615B4A4;
    *(&v103 - 3) = (&v103 - 6);
    sub_1D5D2BC70(v73, sub_1D615B49C, v86, sub_1D615B4A4, (&v103 - 6));

    sub_1D72647EC();
    sub_1D5D2CFE8(v107, type metadata accessor for FormatVersionRequirement);

    v87 = v106;
    v110(v106, v111, v112);
    swift_storeEnumTagMultiPayload();
    v123 = v23;
    v119 = xmmword_1D72BAA60;
    v121 = xmmword_1D72BAA60;
    v122 = 0;
    v120 = 0;
    v88 = swift_allocObject();
    v118 = &v103;
    *(v88 + 16) = v119;
    *(v88 + 32) = v120;
    v89 = v113;
    v90 = v105;
    *(v88 + 40) = v113;
    *(v88 + 48) = v90;
    MEMORY[0x1EEE9AC00](v88, v91);
    *(&v103 - 4) = sub_1D5B4AA6C;
    *(&v103 - 3) = 0;
    v101 = sub_1D6708A10;
    v102 = v92;
    v120 = 0;
    v93 = swift_allocObject();
    *(v93 + 16) = v119;
    *(v93 + 32) = v120;
    *(v93 + 40) = v89;
    *(v93 + 48) = v90;
    swift_retain_n();
    v94 = sub_1D72647CC();
    v120 = 0;
    v95 = swift_allocObject();
    *(v95 + 16) = v94;
    *(v95 + 24) = v119;
    *(v95 + 40) = v120;
    v96 = __swift_project_boxed_opaque_existential_1(v104, *(v104 + 3));
    MEMORY[0x1EEE9AC00](v96, v97);
    MEMORY[0x1EEE9AC00](v98, v99);
    *(&v103 - 4) = sub_1D615B4A4;
    *(&v103 - 3) = (&v103 - 6);
    v101 = sub_1D6708A10;
    v102 = v93;
    sub_1D5D2BC70(v87, sub_1D615B49C, v100, sub_1D615B4A4, (&v103 - 6));

    sub_1D72647EC();
    sub_1D5D2CFE8(v87, type metadata accessor for FormatVersionRequirement);

    v56 = v60;
  }

  return sub_1D5D2CFE8(v56, sub_1D6686AD8);
}

uint64_t sub_1D64930C4(uint64_t a1)
{
  v2 = sub_1D5CD98E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6493100(uint64_t a1)
{
  v2 = sub_1D5CD98E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatEdgeInsetsEquation.encode(to:)(void *a1)
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
  sub_1D6686C7C();
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
  sub_1D5CBED84();
  v26 = v25;
  v27 = sub_1D5B58B84(&qword_1EDF25138, sub_1D5CBED84);
  sub_1D5D2EE70(&type metadata for FormatEdgeInsetsEquation, v26, v28, v23, &type metadata for FormatEdgeInsetsEquation, v26, &type metadata for FormatVersions.JazzkonC, v24, v20, v27, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v29 = sub_1D725BD1C();
  v30 = __swift_project_value_buffer(v29, qword_1EDFFCD30);
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
  v103 = sub_1D6708A10;
  v104 = v38;
  v125 = 0;
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  *(v39 + 32) = v125;
  v118 = v34;
  *(v39 + 40) = v34;
  *(v39 + 48) = v35;
  sub_1D6686D10();
  v41 = v40;
  v42 = sub_1D5B58B84(&qword_1EDF030C8, sub_1D6686D10);
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
  v103 = sub_1D6708A10;
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
    v103 = sub_1D6708A10;
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
    v103 = sub_1D6708A10;
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
    v103 = sub_1D6708A10;
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
    v103 = sub_1D6708A10;
    v104 = v95;
    sub_1D5D2BC70(v89, sub_1D615B49C, v102, sub_1D615B4A4, &v105[-6]);

    sub_1D72647EC();
    sub_1D5D2CFE8(v89, type metadata accessor for FormatVersionRequirement);

    v58 = v60;
  }

  return sub_1D5D2CFE8(v58, sub_1D6686C7C);
}

uint64_t sub_1D6494038(uint64_t a1)
{
  v2 = sub_1D5CBEF08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6494074(uint64_t a1)
{
  v2 = sub_1D5CBEF08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatEnumPropertyDefinition.encode(to:)(void *a1)
{
  v2 = v1;
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v240 = &v234 - v6;
  v241 = sub_1D725B76C();
  v239 = *(v241 - 8);
  MEMORY[0x1EEE9AC00](v241, v7);
  v238 = &v234 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v242 = &v234 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v237 = &v234 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v243 = (&v234 - v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v244 = (&v234 - v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  v245 = (&v234 - v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  v246 = &v234 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v247 = &v234 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v248 = (&v234 - v32);
  MEMORY[0x1EEE9AC00](v33, v34);
  v249 = (&v234 - v35);
  MEMORY[0x1EEE9AC00](v36, v37);
  v257 = (&v234 - v38);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v234 - v41;
  sub_1D6686E08();
  v44 = v43;
  MEMORY[0x1EEE9AC00](v43, v45);
  v47 = &v234 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1[3];
  v49 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v48);
  v50 = type metadata accessor for FormatEnumPropertyDefinition(0);
  sub_1D5CE8314();
  v52 = v51;
  v53 = sub_1D5B58B84(&qword_1EDF24EE8, sub_1D5CE8314);
  v236 = v50;
  sub_1D5D2EE70(v50, v52, v54, v48, v50, v52, &type metadata for FormatVersions.JazzkonC, v49, v47, v53, &off_1F51F6C78);
  v55 = *v2;
  v56 = v2[1];
  v250 = v2;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v57 = sub_1D725BD1C();
  v58 = __swift_project_value_buffer(v57, qword_1EDFFCD30);
  v59 = *(v57 - 8);
  v60 = *(v59 + 16);
  v254 = v58;
  v251 = v60;
  v252 = v57;
  v256 = v59 + 16;
  (v60)(v42);
  v255 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v266 = v55;
  v267 = v56;
  v264 = 0uLL;
  v265 = 0;
  v61 = &v47[*(v44 + 44)];
  v62 = *v61;
  v63 = *(v61 + 1);
  v268 = 0;
  v64 = swift_allocObject();
  v261 = &v234;
  *(v64 + 16) = 0;
  *(v64 + 24) = 0;
  *(v64 + 32) = v268;
  *(v64 + 40) = v62;
  *(v64 + 48) = v63;
  MEMORY[0x1EEE9AC00](v64, v65);
  v260 = &v234 - 6;
  *(&v234 - 4) = sub_1D5B4AA6C;
  *(&v234 - 3) = 0;
  v232 = sub_1D6708A14;
  v233 = v66;
  v268 = 0;
  v67 = swift_allocObject();
  *(v67 + 16) = 0;
  *(v67 + 24) = 0;
  *(v67 + 32) = v268;
  v253 = v62;
  *(v67 + 40) = v62;
  *(v67 + 48) = v63;
  sub_1D6686E9C();
  v69 = v68;
  v70 = sub_1D5B58B84(&qword_1EDF02E48, sub_1D6686E9C);
  swift_retain_n();
  v258 = v69;
  v259 = v70;
  v71 = sub_1D72647CC();
  v268 = 0;
  v72 = swift_allocObject();
  *(v72 + 24) = 0;
  *(v72 + 32) = 0;
  *(v72 + 16) = v71;
  *(v72 + 40) = v268;
  v73 = *(v44 + 36);
  v74 = v42;
  v263 = v47;
  v75 = &v47[v73];
  v76 = __swift_project_boxed_opaque_existential_1(&v47[v73], *&v47[v73 + 24]);
  MEMORY[0x1EEE9AC00](v76, v77);
  MEMORY[0x1EEE9AC00](v78, v79);
  v80 = v260;
  *(&v234 - 4) = sub_1D615B4A4;
  *(&v234 - 3) = v80;
  v232 = sub_1D6708A14;
  v233 = v67;
  v81 = v262;
  sub_1D5D2BC70(v74, sub_1D615B49C, v82, sub_1D615B4A4, (&v234 - 6));
  if (v81)
  {
    sub_1D5D2CFE8(v74, type metadata accessor for FormatVersionRequirement);

    v83 = v263;
LABEL_6:
    v100 = v83;
    return sub_1D5D2CFE8(v100, sub_1D6686E08);
  }

  v235 = v75;
  v260 = v63;

  sub_1D72647EC();
  sub_1D5D2CFE8(v74, type metadata accessor for FormatVersionRequirement);

  v84 = v250[2];
  v85 = v250[3];
  v251(v257, v254, v252);
  swift_storeEnumTagMultiPayload();
  v266 = v84;
  v267 = v85;
  v262 = xmmword_1D728CF30;
  v264 = xmmword_1D728CF30;
  v265 = 0;
  v268 = 0;
  v86 = swift_allocObject();
  v261 = &v234;
  *(v86 + 16) = v262;
  *(v86 + 32) = v268;
  v87 = v253;
  v88 = v260;
  *(v86 + 40) = v253;
  *(v86 + 48) = v88;
  MEMORY[0x1EEE9AC00](v86, v89);
  *(&v234 - 4) = sub_1D5B4AA6C;
  *(&v234 - 3) = 0;
  v232 = sub_1D6708A14;
  v233 = v90;
  v268 = 0;
  v91 = swift_allocObject();
  *(v91 + 16) = v262;
  *(v91 + 32) = v268;
  *(v91 + 40) = v87;
  *(v91 + 48) = v88;
  swift_retain_n();
  v92 = sub_1D72647CC();
  v268 = 0;
  v93 = swift_allocObject();
  *(v93 + 16) = v92;
  *(v93 + 24) = v262;
  *(v93 + 40) = v268;
  v94 = __swift_project_boxed_opaque_existential_1(v235, *(v235 + 3));
  MEMORY[0x1EEE9AC00](v94, v95);
  MEMORY[0x1EEE9AC00](v96, v97);
  *(&v234 - 4) = sub_1D615B4A4;
  *(&v234 - 3) = (&v234 - 6);
  v98 = v257;
  v232 = sub_1D6708A14;
  v233 = v91;
  sub_1D5D2BC70(v257, sub_1D615B49C, v99, sub_1D615B4A4, (&v234 - 6));

  sub_1D72647EC();
  sub_1D5D2CFE8(v98, type metadata accessor for FormatVersionRequirement);

  v102 = v250[4];
  v103 = v250[5];
  v251(v249, v254, v252);
  swift_storeEnumTagMultiPayload();
  v266 = v102;
  v267 = v103;
  v262 = xmmword_1D7297410;
  v264 = xmmword_1D7297410;
  v265 = 0;
  v268 = 0;
  v104 = swift_allocObject();
  v261 = &v234;
  *(v104 + 16) = v262;
  *(v104 + 32) = v268;
  v105 = v253;
  v106 = v260;
  *(v104 + 40) = v253;
  *(v104 + 48) = v106;
  MEMORY[0x1EEE9AC00](v104, v107);
  *(&v234 - 4) = sub_1D5B4AA6C;
  *(&v234 - 3) = 0;
  v232 = sub_1D6708A14;
  v233 = v108;
  v268 = 0;
  v109 = swift_allocObject();
  *(v109 + 16) = v262;
  *(v109 + 32) = v268;
  *(v109 + 40) = v105;
  *(v109 + 48) = v106;
  swift_retain_n();
  v110 = sub_1D72647CC();
  v268 = 0;
  v111 = swift_allocObject();
  *(v111 + 16) = v110;
  *(v111 + 24) = v262;
  *(v111 + 40) = v268;
  v112 = __swift_project_boxed_opaque_existential_1(v235, *(v235 + 3));
  MEMORY[0x1EEE9AC00](v112, v113);
  MEMORY[0x1EEE9AC00](v114, v115);
  *(&v234 - 4) = sub_1D615B4A4;
  *(&v234 - 3) = (&v234 - 6);
  v116 = v249;
  v232 = sub_1D6708A14;
  v233 = v109;
  sub_1D5D2BC70(v249, sub_1D615B49C, v117, sub_1D615B4A4, (&v234 - 6));

  sub_1D72647EC();
  sub_1D5D2CFE8(v116, type metadata accessor for FormatVersionRequirement);

  v118 = v250;
  v119 = v251;
  v120 = v250[6];
  v121 = v250[7];
  v122 = v248;
  v123 = v252;
  v251(v248, v254, v252);
  swift_storeEnumTagMultiPayload();
  v262 = xmmword_1D72BAA60;
  v264 = xmmword_1D72BAA60;
  v265 = 0;
  LOBYTE(v266) = 0;
  v124 = swift_allocObject();
  v126 = v124;
  v127 = v121;
  *(v124 + 16) = v262;
  *(v124 + 32) = v266;
  v128 = v253;
  v129 = v260;
  *(v124 + 40) = v253;
  *(v124 + 48) = v129;
  if (v127)
  {
    v261 = &v234;
    v266 = v120;
    v267 = v127;
    MEMORY[0x1EEE9AC00](v124, v125);
    v130 = v128;
    *(&v234 - 4) = sub_1D5B4AA6C;
    *(&v234 - 3) = 0;
    v232 = sub_1D6708A14;
    v233 = v126;
    v268 = 0;
    v132 = v131;
    v133 = swift_allocObject();
    *(v133 + 16) = v262;
    *(v133 + 32) = v268;
    *(v133 + 40) = v130;
    *(v133 + 48) = v129;
    swift_retain_n();

    v134 = sub_1D72647CC();
    v268 = 0;
    v135 = swift_allocObject();
    *(v135 + 16) = v134;
    *(v135 + 24) = v262;
    *(v135 + 40) = v268;
    v136 = __swift_project_boxed_opaque_existential_1(v235, *(v235 + 3));
    MEMORY[0x1EEE9AC00](v136, v137);
    MEMORY[0x1EEE9AC00](v138, v139);
    *(&v234 - 4) = sub_1D615B4A4;
    *(&v234 - 3) = (&v234 - 6);
    v232 = sub_1D6708A14;
    v233 = v133;
    v141 = sub_1D5D2F7A4(v122, sub_1D615B49C, v140, sub_1D615B4A4, (&v234 - 6));
    v142 = v141;
    *&v262 = v132;

    if (v142)
    {
      sub_1D72647EC();
      v129 = v260;
      v123 = v252;
      v128 = v253;
      v119 = v251;
      v261 = 0;

      sub_1D5D2CFE8(v248, type metadata accessor for FormatVersionRequirement);
      v118 = v250;
    }

    else
    {
      v261 = 0;

      sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);
      v118 = v250;
      v119 = v251;
      v129 = v260;
      v123 = v252;
      v128 = v253;
    }
  }

  else
  {
    v261 = 0;

    sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);
  }

  v143 = v118[8];
  v144 = v118[9];
  v119(v247, v254, v123);
  swift_storeEnumTagMultiPayload();
  v266 = v143;
  v267 = v144;
  v262 = xmmword_1D72BAA70;
  v264 = xmmword_1D72BAA70;
  v265 = 0;
  v268 = 0;
  v145 = swift_allocObject();
  v257 = &v234;
  *(v145 + 16) = v262;
  *(v145 + 32) = v268;
  *(v145 + 40) = v128;
  *(v145 + 48) = v129;
  MEMORY[0x1EEE9AC00](v145, v146);
  *(&v234 - 4) = sub_1D5B4AA6C;
  *(&v234 - 3) = 0;
  v232 = sub_1D6708A14;
  v233 = v147;
  v268 = 0;
  v148 = swift_allocObject();
  *(v148 + 16) = v262;
  *(v148 + 32) = v268;
  *(v148 + 40) = v128;
  *(v148 + 48) = v129;
  swift_retain_n();
  v83 = v263;
  v149 = sub_1D72647CC();
  v268 = 0;
  v150 = swift_allocObject();
  *(v150 + 16) = v149;
  *(v150 + 24) = v262;
  *(v150 + 40) = v268;
  v151 = __swift_project_boxed_opaque_existential_1(v235, *(v235 + 3));
  MEMORY[0x1EEE9AC00](v151, v152);
  MEMORY[0x1EEE9AC00](v153, v154);
  *(&v234 - 4) = sub_1D615B4A4;
  *(&v234 - 3) = (&v234 - 6);
  v155 = v247;
  v232 = sub_1D6708A14;
  v233 = v148;
  v156 = v261;
  sub_1D5D2BC70(v247, sub_1D615B49C, v157, sub_1D615B4A4, (&v234 - 6));
  if (v156)
  {
    sub_1D5D2CFE8(v155, type metadata accessor for FormatVersionRequirement);

    goto LABEL_6;
  }

  sub_1D72647EC();
  sub_1D5D2CFE8(v155, type metadata accessor for FormatVersionRequirement);

  v158 = *(v250 + 80);
  v159 = v246;
  v251(v246, v254, v252);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v266) = v158;
  v262 = xmmword_1D72BAA80;
  v264 = xmmword_1D72BAA80;
  v265 = 0;
  v268 = 0;
  v160 = swift_allocObject();
  v261 = &v234;
  *(v160 + 16) = v262;
  *(v160 + 32) = v268;
  v161 = v253;
  v162 = v260;
  *(v160 + 40) = v253;
  *(v160 + 48) = v162;
  MEMORY[0x1EEE9AC00](v160, v163);
  *(&v234 - 4) = sub_1D5B4AA6C;
  *(&v234 - 3) = 0;
  v232 = sub_1D6708A14;
  v233 = v164;
  v268 = 0;
  v165 = swift_allocObject();
  *(v165 + 16) = v262;
  *(v165 + 32) = v268;
  *(v165 + 40) = v161;
  *(v165 + 48) = v162;
  swift_retain_n();
  v166 = sub_1D72647CC();
  v268 = 0;
  v167 = swift_allocObject();
  *(v167 + 16) = v166;
  *(v167 + 24) = v262;
  *(v167 + 40) = v268;
  v168 = __swift_project_boxed_opaque_existential_1(v235, *(v235 + 3));
  MEMORY[0x1EEE9AC00](v168, v169);
  MEMORY[0x1EEE9AC00](v170, v171);
  *(&v234 - 4) = sub_1D615B4A4;
  *(&v234 - 3) = (&v234 - 6);
  v232 = sub_1D6708A14;
  v233 = v165;
  sub_1D5D2BC70(v159, sub_1D615B49C, v172, sub_1D615B4A4, (&v234 - 6));

  sub_1D72647EC();
  sub_1D5D2CFE8(v159, type metadata accessor for FormatVersionRequirement);

  v173 = v250[11];
  v174 = v250[12];
  v251(v245, v254, v252);
  swift_storeEnumTagMultiPayload();
  v262 = xmmword_1D72BAA90;
  v264 = xmmword_1D72BAA90;
  v265 = 0;
  LOBYTE(v266) = 0;
  v175 = swift_allocObject();
  v177 = v175;
  *(v175 + 16) = v262;
  *(v175 + 32) = v266;
  v178 = v260;
  *(v175 + 40) = v253;
  *(v175 + 48) = v178;
  if (v174)
  {
    v266 = v173;
    v267 = v174;
    MEMORY[0x1EEE9AC00](v175, v176);
    *(&v234 - 4) = sub_1D5B4AA6C;
    *(&v234 - 3) = 0;
    v232 = sub_1D6708A14;
    v233 = v177;
    v268 = 0;
    v179 = swift_allocObject();
    *(v179 + 16) = v262;
    *(v179 + 32) = v268;
    *(v179 + 40) = v253;
    *(v179 + 48) = v260;
    swift_retain_n();

    v180 = sub_1D72647CC();
    v268 = 0;
    v181 = swift_allocObject();
    *(v181 + 16) = v180;
    *(v181 + 24) = v262;
    *(v181 + 40) = v268;
    v182 = __swift_project_boxed_opaque_existential_1(v235, *(v235 + 3));
    MEMORY[0x1EEE9AC00](v182, v183);
    MEMORY[0x1EEE9AC00](v184, v185);
    *(&v234 - 4) = sub_1D615B4A4;
    *(&v234 - 3) = (&v234 - 6);
    v232 = sub_1D6708A14;
    v233 = v179;
    v187 = sub_1D5D2F7A4(v245, sub_1D615B49C, v186, sub_1D615B4A4, (&v234 - 6));

    if (v187)
    {
      sub_1D72647EC();
    }

    sub_1D5D2CFE8(v245, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D5D2CFE8(v245, type metadata accessor for FormatVersionRequirement);
  }

  v188 = v250[13];
  v189 = v244;
  v251(v244, v254, v252);
  swift_storeEnumTagMultiPayload();
  v266 = v188;
  v262 = xmmword_1D72BAAA0;
  v264 = xmmword_1D72BAAA0;
  v265 = 0;
  v268 = 0;
  v190 = swift_allocObject();
  *(v190 + 16) = v262;
  *(v190 + 32) = v268;
  v191 = v253;
  v192 = v260;
  *(v190 + 40) = v253;
  *(v190 + 48) = v192;
  MEMORY[0x1EEE9AC00](v190, v193);
  *(&v234 - 4) = sub_1D5B4AA6C;
  *(&v234 - 3) = 0;
  v232 = sub_1D6708A14;
  v233 = v194;
  v268 = 0;
  v195 = swift_allocObject();
  *(v195 + 16) = v262;
  *(v195 + 32) = v268;
  *(v195 + 40) = v191;
  *(v195 + 48) = v192;
  swift_retain_n();
  v196 = sub_1D72647CC();
  v268 = 0;
  v197 = swift_allocObject();
  *(v197 + 16) = v196;
  *(v197 + 24) = v262;
  *(v197 + 40) = v268;
  v198 = __swift_project_boxed_opaque_existential_1(v235, *(v235 + 3));
  MEMORY[0x1EEE9AC00](v198, v199);
  MEMORY[0x1EEE9AC00](v200, v201);
  *(&v234 - 4) = sub_1D615B4A4;
  *(&v234 - 3) = (&v234 - 6);
  v232 = sub_1D6708A14;
  v233 = v195;
  sub_1D5D2BC70(v189, sub_1D615B49C, v202, sub_1D615B4A4, (&v234 - 6));

  sub_1D5C34D84(0, &qword_1EDF43BC8, &type metadata for FormatTypeDefinition.Case, MEMORY[0x1E69E62F8]);
  sub_1D6686F30();
  sub_1D72647EC();
  sub_1D5D2CFE8(v244, type metadata accessor for FormatVersionRequirement);

  v203 = *(v250 + 112);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v204 = v252;
  v205 = __swift_project_value_buffer(v252, qword_1EDFFCD50);
  v251(v243, v205, v204);
  swift_storeEnumTagMultiPayload();
  if (v203 & 1) != 0 && (LOBYTE(v264) = 0, v206 = swift_allocObject(), v262 = xmmword_1D72BAAB0, *(v206 + 16) = xmmword_1D72BAAB0, *(v206 + 32) = v264, *(v206 + 40) = v253, *(v206 + 48) = v260, , v207 = sub_1D72647CC(), LOBYTE(v264) = 0, v208 = swift_allocObject(), *(v208 + 16) = v207, *(v208 + 24) = v262, *(v208 + 40) = v264, v209 = __swift_project_boxed_opaque_existential_1(v235, *(v235 + 3)), MEMORY[0x1EEE9AC00](v209, v210), MEMORY[0x1EEE9AC00](v211, v212), *(&v234 - 4) = sub_1D5B4AA6C, *(&v234 - 3) = 0, v232 = sub_1D6708A14, v233 = v206, LOBYTE(v207) = sub_1D5D2F7A4(v243, sub_1D615B49C, v213, sub_1D615B4A4, (&v234 - 6)), , , (v207))
  {
    v264 = v262;
    v265 = 0;
    LOBYTE(v266) = 1;
    sub_1D72647EC();
    sub_1D5D2CFE8(v243, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    sub_1D5D2CFE8(v243, type metadata accessor for FormatVersionRequirement);
  }

  if (qword_1EDF31EE0 != -1)
  {
    swift_once();
  }

  v214 = v252;
  v215 = __swift_project_value_buffer(v252, qword_1EDFFCD80);
  v216 = v237;
  v217 = v251;
  v251(v237, v215, v214);
  swift_storeEnumTagMultiPayload();
  sub_1D5D2CFE8(v216, type metadata accessor for FormatVersionRequirement);
  v218 = *(v236 + 56);
  v217(v242, v215, v214);
  swift_storeEnumTagMultiPayload();
  v262 = xmmword_1D72BAAD0;
  v264 = xmmword_1D72BAAD0;
  v265 = 0;
  LOBYTE(v266) = 0;
  v219 = swift_allocObject();
  *(v219 + 16) = v262;
  *(v219 + 32) = v266;
  v220 = v260;
  *(v219 + 40) = v253;
  *(v219 + 48) = v220;
  v221 = v240;
  sub_1D5CDE2EC(v250 + v218, v240, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  if ((*(v239 + 48))(v221, 1, v241) != 1)
  {
    v222 = (*(v239 + 32))(v238, v240, v241);
    MEMORY[0x1EEE9AC00](v222, v223);
    *(&v234 - 4) = sub_1D5B4AA6C;
    *(&v234 - 3) = 0;
    v232 = sub_1D6708A14;
    v233 = v219;
    LOBYTE(v266) = 0;
    v224 = swift_allocObject();
    *(v224 + 16) = v262;
    *(v224 + 32) = v266;
    *(v224 + 40) = v253;
    *(v224 + 48) = v260;
    swift_retain_n();
    v225 = sub_1D72647CC();
    LOBYTE(v266) = 0;
    v226 = swift_allocObject();
    *(v226 + 16) = v225;
    *(v226 + 24) = v262;
    *(v226 + 40) = v266;
    v227 = __swift_project_boxed_opaque_existential_1(v235, *(v235 + 3));
    MEMORY[0x1EEE9AC00](v227, v228);
    MEMORY[0x1EEE9AC00](v229, v230);
    *(&v234 - 4) = sub_1D615B4A4;
    *(&v234 - 3) = (&v234 - 6);
    v232 = sub_1D6687020;
    v233 = v224;
    LOBYTE(v225) = sub_1D5D2F7A4(v242, sub_1D615B49C, v231, sub_1D615B4A4, (&v234 - 6));

    if (v225)
    {
      sub_1D5B58B84(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58]);
      sub_1D72647EC();
    }

    (*(v239 + 8))(v238, v241);
    sub_1D5D2CFE8(v242, type metadata accessor for FormatVersionRequirement);
    v100 = v263;
    return sub_1D5D2CFE8(v100, sub_1D6686E08);
  }

  sub_1D5D2CFE8(v242, type metadata accessor for FormatVersionRequirement);

  sub_1D5D2CFE8(v263, sub_1D6686E08);
  return sub_1D5D35558(v240, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B5BF78);
}