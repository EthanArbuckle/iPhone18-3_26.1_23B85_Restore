void sub_1D5D40A38()
{
  if (!qword_1EDF08E80)
  {
    sub_1D5D409FC(255);
    sub_1D5B58B84(&qword_1EDF036E8, sub_1D5D409FC);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08E80);
    }
  }
}

void sub_1D5D40ACC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1D5D40B60(a4, a5);
    v8 = sub_1D726446C();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D5D40B60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5D40BA8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatRecipeOverrides();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D5D40BEC()
{
  result = qword_1EDF113A8;
  if (!qword_1EDF113A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF113A8);
  }

  return result;
}

uint64_t FormatFontWeight.encode(to:)(void *a1)
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

uint64_t sub_1D5D415DC(char a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4 & 1;
  sub_1D5D30DC4();
  v10 = (v5 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D670925C;
  v16[3] = v13;

  v14 = sub_1D5D31088(a5, 0, 0, sub_1D6709140, v16);
  if (!v6 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D5D382F0();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D5C30060(0, &qword_1EDF309E0, sub_1D5C48F64, &type metadata for FormatSystemColor, type metadata accessor for FormatAlphaColor);
    sub_1D5D417C0();
    sub_1D72647EC();
  }
}

unint64_t sub_1D5D417C0()
{
  result = qword_1EDF115E8;
  if (!qword_1EDF115E8)
  {
    sub_1D5C30060(255, &qword_1EDF309E0, sub_1D5C48F64, &type metadata for FormatSystemColor, type metadata accessor for FormatAlphaColor);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF115E8);
  }

  return result;
}

uint64_t FormatAlphaColor.encode(to:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v36 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v34 - v9;
  v11 = *(a2 + 16);
  v37 = *(a2 + 24);
  v38 = v11;
  v12 = _s10CodingKeysOMa_227();
  WitnessTable = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  *&v44 = v12;
  *(&v44 + 1) = WitnessTable;
  v45 = v14;
  v46 = v15;
  v16 = type metadata accessor for FormatCodingKeysContainer();
  v17 = swift_getWitnessTable();
  sub_1D726446C();
  swift_getWitnessTable();
  v47 = type metadata accessor for VersionedKeyedEncodingContainer();
  v39 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v18);
  v20 = &v34 - v19;
  v22 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v35 = a2;
  sub_1D5D2EE70(a2, v16, v23, v22, a2, v16, &type metadata for FormatVersions.JazzkonC, v21, v20, v17, &off_1F51F6C78);
  v44 = 0uLL;
  LOBYTE(v45) = 0;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
  v26 = *(*(v24 - 8) + 16);
  v26(v10, v25, v24);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v27 = v40;
  sub_1D5D38930(v41, &v44, v10, sub_1D5B4AA6C, 0, v47, v38, *(v37 + 16));
  sub_1D5D2CFE8(v10, type metadata accessor for FormatVersionRequirement);
  if (v27)
  {
    return (*(v39 + 8))(v20, v47);
  }

  v29 = v36;
  v30 = (v41 + *(v35 + 36));
  v31 = *v30;
  LOBYTE(v30) = *(v30 + 8);
  v42 = v31;
  v43 = v30;
  v44 = xmmword_1D728CF30;
  LOBYTE(v45) = 0;
  v26(v36, v25, v24);
  swift_storeEnumTagMultiPayload();
  v32 = sub_1D5B578C4();
  v33 = v47;
  sub_1D5D432A4(&v42, &v44, v29, sub_1D5B4AA6C, 0, v47, MEMORY[0x1E69E7DE0], v32);
  sub_1D5D2CFE8(v29, type metadata accessor for FormatVersionRequirement);
  return (*(v39 + 8))(v20, v33);
}

uint64_t FormatSystemColor.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v187 = &v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v186 = &v147 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v185 = &v147 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v184 = &v147 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v183 = &v147 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v182 = &v147 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v181 = &v147 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v180 = &v147 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v179 = &v147 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v178 = &v147 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v177 = &v147 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v176 = &v147 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v175 = &v147 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v174 = &v147 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v173 = &v147 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v172 = &v147 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v171 = &v147 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v170 = &v147 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v169 = &v147 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v168 = &v147 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v167 = &v147 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v166 = &v147 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v165 = &v147 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v163 = &v147 - v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  v162 = &v147 - v77;
  MEMORY[0x1EEE9AC00](v78, v79);
  v160 = &v147 - v80;
  MEMORY[0x1EEE9AC00](v81, v82);
  v164 = &v147 - v83;
  MEMORY[0x1EEE9AC00](v84, v85);
  v158 = &v147 - v86;
  MEMORY[0x1EEE9AC00](v87, v88);
  v161 = &v147 - v89;
  MEMORY[0x1EEE9AC00](v90, v91);
  v157 = &v147 - v92;
  MEMORY[0x1EEE9AC00](v93, v94);
  v159 = &v147 - v95;
  MEMORY[0x1EEE9AC00](v96, v97);
  v156 = &v147 - v98;
  MEMORY[0x1EEE9AC00](v99, v100);
  v155 = &v147 - v101;
  MEMORY[0x1EEE9AC00](v102, v103);
  v154 = &v147 - v104;
  MEMORY[0x1EEE9AC00](v105, v106);
  v153 = &v147 - v107;
  MEMORY[0x1EEE9AC00](v108, v109);
  v152 = &v147 - v110;
  MEMORY[0x1EEE9AC00](v111, v112);
  v151 = &v147 - v113;
  MEMORY[0x1EEE9AC00](v114, v115);
  v150 = &v147 - v116;
  MEMORY[0x1EEE9AC00](v117, v118);
  v149 = &v147 - v119;
  MEMORY[0x1EEE9AC00](v120, v121);
  v148 = &v147 - v122;
  MEMORY[0x1EEE9AC00](v123, v124);
  v147 = &v147 - v125;
  MEMORY[0x1EEE9AC00](v126, v127);
  v129 = &v147 - v128;
  v130 = *v1;
  v188 = a1;
  v189 = v130;
  v131 = a1[3];
  v132 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v131);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v133 = sub_1D725BD1C();
  v134 = __swift_project_value_buffer(v133, qword_1EDFFCD30);
  v135 = *(*(v133 - 8) + 16);
  v135(v129, v134, v133);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v136 = v190;
  sub_1D5D2BEC4(v129, sub_1D5B4AA6C, 0, v131, v132);
  if (v136)
  {
    return sub_1D5D2CFE8(v129, type metadata accessor for FormatVersionRequirement);
  }

  v137 = v135;
  sub_1D5D2CFE8(v129, type metadata accessor for FormatVersionRequirement);
  v138 = v188;
  v139 = v188[3];
  v190 = v188[4];
  __swift_project_boxed_opaque_existential_1(v188, v139);
  v140 = v134;
  switch(v189)
  {
    case 1:
      v141 = v148;
      v135(v148, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 2:
      v141 = v149;
      v135(v149, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 3:
      v141 = v150;
      v135(v150, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 4:
      v141 = v151;
      v135(v151, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 5:
      v141 = v152;
      v135(v152, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 6:
      v141 = v153;
      v135(v153, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 7:
      v141 = v154;
      v135(v154, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 8:
      v141 = v155;
      v135(v155, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 9:
      v141 = v156;
      v135(v156, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 10:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v133, qword_1EDFFCDE0);
      v142 = v159;
      (v135)();
      swift_storeEnumTagMultiPayload();
      goto LABEL_44;
    case 11:
      v141 = v157;
      v135(v157, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 12:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v133, qword_1EDFFCDE0);
      v142 = v161;
      (v135)();
      swift_storeEnumTagMultiPayload();
      goto LABEL_44;
    case 13:
      v141 = v158;
      v135(v158, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 14:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v133, qword_1EDFFCDE0);
      v142 = v164;
      (v135)();
      swift_storeEnumTagMultiPayload();
LABEL_44:
      sub_1D5D2BEC4(v142, sub_1D5B4AA6C, 0, v139, v190);
      v144 = v142;
      break;
    case 15:
      v141 = v160;
      v135(v160, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 16:
      v141 = v162;
      v135(v162, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 17:
      v141 = v163;
      v135(v163, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 18:
      v141 = v165;
      v135(v165, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 19:
      v141 = v166;
      v135(v166, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 20:
      v141 = v167;
      v135(v167, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 21:
      v141 = v168;
      v135(v168, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 22:
      v141 = v169;
      v135(v169, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 23:
      v141 = v170;
      v135(v170, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 24:
      v141 = v171;
      v135(v171, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 25:
      v141 = v172;
      v135(v172, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 26:
      v141 = v173;
      v135(v173, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 27:
      v141 = v174;
      v135(v174, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 28:
      v141 = v175;
      v135(v175, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 29:
      v141 = v176;
      v135(v176, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 30:
      v141 = v177;
      v135(v177, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 31:
      v141 = v178;
      v135(v178, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 32:
      v141 = v179;
      v135(v179, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 33:
      v141 = v180;
      v135(v180, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 34:
      v141 = v181;
      v135(v181, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 35:
      v141 = v182;
      v135(v182, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 36:
      v141 = v183;
      v135(v183, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 37:
      v141 = v184;
      v135(v184, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 38:
      v141 = v185;
      v135(v185, v140, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    case 39:
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v145 = __swift_project_value_buffer(v133, qword_1EDFFCD68);
      v144 = v186;
      v137(v186, v145, v133);
      swift_storeEnumTagMultiPayload();
      goto LABEL_52;
    case 40:
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v143 = __swift_project_value_buffer(v133, qword_1EDFFCD68);
      v144 = v187;
      v137(v187, v143, v133);
      swift_storeEnumTagMultiPayload();
LABEL_52:
      sub_1D5D2BEC4(v144, sub_1D5B4AA6C, 0, v139, v190);
      break;
    default:
      v141 = v147;
      v135(v147, v140, v133);
      swift_storeEnumTagMultiPayload();
LABEL_59:
      sub_1D5D2BEC4(v141, sub_1D5B4AA6C, 0, v139, v190);
      v144 = v141;
      break;
  }

  sub_1D5D2CFE8(v144, type metadata accessor for FormatVersionRequirement);
  __swift_project_boxed_opaque_existential_1(v138, v138[3]);
  sub_1D7264B3C();
  v193 = v189;
  FormatSystemColor.rawValue.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v191, v192);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v191);
}

uint64_t sub_1D5D432A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v62 = a8;
  v9 = v8;
  v49 = a4;
  v50 = a5;
  v51 = a3;
  v63 = a2;
  v60 = a1;
  v12 = sub_1D726393C();
  v58 = *(v12 - 8);
  v59 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v57 = v47 - v14;
  v56 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v48 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a6 + 16);
  v18 = *(a6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v23);
  v26 = v47 - v25;
  v52 = a6;
  v53 = v9;
  v27 = (v9 + *(a6 + 44));
  v28 = *v27;
  v54 = v27[1];
  v55 = v28;
  (*(v21 + 16))(v26, v63, AssociatedTypeWitness, v24);
  v29 = (*(v21 + 80) + 48) & ~*(v21 + 80);
  v30 = (v22 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v47[1] = v19;
  v47[2] = v18;
  v31[2] = v19;
  v31[3] = a7;
  v31[4] = v18;
  v33 = v58;
  v32 = v59;
  v31[5] = v62;
  v34 = v31 + v29;
  v35 = v57;
  (*(v21 + 32))(v34, v26, AssociatedTypeWitness);
  v36 = v56;
  v37 = (v31 + v30);
  v38 = a7;
  v39 = v54;
  *v37 = v55;
  v37[1] = v39;
  (*(v33 + 16))(v35, v60, v32);
  if ((*(v36 + 48))(v35, 1, v38) == 1)
  {

    return (*(v33 + 8))(v35, v32);
  }

  else
  {
    v41 = v48;
    v42 = (*(v36 + 32))(v48, v35, v38);
    MEMORY[0x1EEE9AC00](v42, v43);
    v44 = v50;
    v47[-4] = v49;
    v47[-3] = v44;
    v47[-2] = sub_1D71B6920;
    v47[-1] = v31;

    v45 = v61;
    v46 = sub_1D5D45A98(v51, v63, sub_1D71B6A7C, &v47[-6], v52);
    if (!v45 && (v46 & 1) != 0)
    {
      sub_1D72647EC();
    }

    (*(v36 + 8))(v41, v38);
  }
}

unint64_t sub_1D5D436D8()
{
  result = qword_1EDF04D60;
  if (!qword_1EDF04D60)
  {
    sub_1D5C34D84(255, &qword_1EDF1B060, &type metadata for FormatTextNodeTransform, MEMORY[0x1E69E62F8]);
    sub_1D5D43774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04D60);
  }

  return result;
}

unint64_t sub_1D5D43774()
{
  result = qword_1EDF0D300;
  if (!qword_1EDF0D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D300);
  }

  return result;
}

uint64_t FormatTextNodeTransform.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatTextNodeTransform, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatTextNodeTransform, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v21, v18, v22, &off_1F51F6C78);
  if (v19)
  {
    if (v19 == 1)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v24 = sub_1D725BD1C();
      v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
      (*(*(v24 - 8) + 16))(v10, v25, v24);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D5D43BC4(1, v10);
      v26 = v10;
    }

    else
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v29 = sub_1D725BD1C();
      v30 = __swift_project_value_buffer(v29, qword_1EDFFCD30);
      (*(*(v29 - 8) + 16))(v6, v30, v29);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D5D43BC4(2, v6);
      v26 = v6;
    }
  }

  else
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCD30);
    (*(*(v27 - 8) + 16))(v14, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D5D43BC4(0, v14);
    v26 = v14;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D5D43BC4(char a1, uint64_t a2)
{
  v14 = a1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D66F6294;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D5D43D1C();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

unint64_t sub_1D5D43D1C()
{
  result = qword_1EDF0D308;
  if (!qword_1EDF0D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D308);
  }

  return result;
}

void sub_1D5D43DC0(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000065;
  v3 = *v1;
  v4 = 0x7361637265776F6CLL;
  v5 = 0xEA0000000000657ALL;
  if (v3 == 1)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v4 = 0x696C617469706163;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x7361637265707075;
  }

  if (!v6)
  {
    v2 = v5;
  }

  *a1 = v7;
  a1[1] = v2;
}

uint64_t sub_1D5D43E80(char a1, __int128 *a2, uint64_t a3)
{
  v20 = a1;
  v7 = a2[1];
  v17 = *a2;
  v18 = v7;
  v19 = *(a2 + 16);
  sub_1D5D30DC4();
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6709300;
  v15[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D5D3F390();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5D44024();
    sub_1D72647EC();
  }
}

unint64_t sub_1D5D44024()
{
  result = qword_1EDF11500;
  if (!qword_1EDF11500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11500);
  }

  return result;
}

uint64_t FormatCustomFont.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v83 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v86 = &v80 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v80 - v11;
  sub_1D5D44C84();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  *&v94 = *(v1 + 8);
  v19 = *(v1 + 16);
  v81 = *(v1 + 24);
  v82 = *(v1 + 32);
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D5C49698();
  v23 = v22;
  v24 = sub_1D5B58B84(&qword_1EDF0C5F0, sub_1D5C49698);
  sub_1D5D2EE70(&type metadata for FormatCustomFont, v23, v25, v20, &type metadata for FormatCustomFont, v23, &type metadata for FormatVersions.JazzkonC, v21, v17, v24, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v26 = sub_1D725BD1C();
  v27 = __swift_project_value_buffer(v26, qword_1EDFFCD30);
  v28 = *(v26 - 8);
  v29 = *(v28 + 16);
  v85 = v27;
  v88 = v28 + 16;
  v89 = v29;
  (v29)(v12);
  v87 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v99 = v18;
  v100 = v94;
  v97 = 0uLL;
  v98 = 0;
  v30 = &v17[*(v14 + 44)];
  v93 = v12;
  v31 = *v30;
  v32 = *(v30 + 1);
  v96 = 0;
  v33 = swift_allocObject();
  *&v94 = &v80;
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v96;
  *(v33 + 40) = v31;
  *(v33 + 48) = v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  *(&v80 - 4) = sub_1D5B4AA6C;
  *(&v80 - 3) = 0;
  v78 = sub_1D67088F8;
  v79 = v35;
  v96 = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = v96;
  v84 = v31;
  *(v36 + 40) = v31;
  *(v36 + 48) = v32;
  sub_1D5D44BF0();
  v38 = v37;
  v39 = sub_1D5B58B84(&qword_1EDF037A8, sub_1D5D44BF0);
  swift_retain_n();
  v90 = v38;
  v91 = v39;
  v40 = sub_1D72647CC();
  v96 = 0;
  v41 = swift_allocObject();
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;
  *(v41 + 16) = v40;
  *(v41 + 40) = v96;
  v42 = &v17[*(v14 + 36)];
  v92 = v17;
  v43 = __swift_project_boxed_opaque_existential_1(v42, *(v42 + 3));
  MEMORY[0x1EEE9AC00](v43, v44);
  MEMORY[0x1EEE9AC00](v45, v46);
  *(&v80 - 4) = sub_1D615B4A4;
  *(&v80 - 3) = (&v80 - 6);
  v47 = v93;
  v78 = sub_1D67088F8;
  v79 = v36;
  v48 = v95;
  sub_1D5D2BC70(v93, sub_1D615B49C, v49, sub_1D615B4A4, (&v80 - 6));
  if (v48)
  {
    sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);

    v50 = v92;
    return sub_1D5D2CFE8(v50, sub_1D5D44C84);
  }

  v80 = v42;
  *&v95 = v32;

  v50 = v92;
  sub_1D72647EC();
  sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);

  v51 = v85;
  v52 = v86;
  v53 = v26;
  v89(v86, v85, v26);
  swift_storeEnumTagMultiPayload();
  if (v19 == 16.0)
  {
    sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);
    v54 = v83;
LABEL_7:
    v55 = v95;
    goto LABEL_8;
  }

  LOBYTE(v97) = 0;
  v58 = swift_allocObject();
  v94 = xmmword_1D728CF30;
  *(v58 + 16) = xmmword_1D728CF30;
  *(v58 + 32) = v97;
  *(v58 + 40) = v84;
  *(v58 + 48) = v95;

  v59 = sub_1D72647CC();
  LOBYTE(v97) = 0;
  v60 = swift_allocObject();
  *(v60 + 16) = v59;
  *(v60 + 24) = v94;
  *(v60 + 40) = v97;
  v61 = __swift_project_boxed_opaque_existential_1(v80, *(v80 + 3));
  MEMORY[0x1EEE9AC00](v61, v62);
  MEMORY[0x1EEE9AC00](v63, v64);
  *(&v80 - 4) = sub_1D5B4AA6C;
  *(&v80 - 3) = 0;
  v78 = sub_1D6666F40;
  v79 = v58;
  v66 = sub_1D5D2F7A4(v52, sub_1D615B49C, v65, sub_1D615B4A4, (&v80 - 6));
  v54 = v83;

  if (v66)
  {
    v97 = v94;
    v98 = 0;
    v99 = v19;
    sub_1D5B578C4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v86, type metadata accessor for FormatVersionRequirement);
    v51 = v85;
    v53 = v26;
    goto LABEL_7;
  }

  sub_1D5D2CFE8(v86, type metadata accessor for FormatVersionRequirement);
  v53 = v26;
  v55 = v95;
  v51 = v85;
LABEL_8:
  v89(v54, v51, v53);
  swift_storeEnumTagMultiPayload();
  v56 = v84;
  v57 = v80;
  if ((v82 & 0xFF00) != 0xC00)
  {
    LOBYTE(v97) = 0;
    v67 = swift_allocObject();
    v95 = xmmword_1D7297410;
    *(v67 + 16) = xmmword_1D7297410;
    *(v67 + 32) = v97;
    *(v67 + 40) = v56;
    *(v67 + 48) = v55;

    v68 = sub_1D72647CC();
    LOBYTE(v97) = 0;
    v69 = swift_allocObject();
    *(v69 + 16) = v68;
    *(v69 + 24) = v95;
    *(v69 + 40) = v97;
    v70 = __swift_project_boxed_opaque_existential_1(v57, *(v57 + 3));
    MEMORY[0x1EEE9AC00](v70, v71);
    MEMORY[0x1EEE9AC00](v72, v73);
    *(&v80 - 4) = sub_1D5B4AA6C;
    *(&v80 - 3) = 0;
    v78 = sub_1D67088F8;
    v79 = v67;
    v75 = sub_1D5D2F7A4(v54, sub_1D615B49C, v74, sub_1D615B4A4, (&v80 - 6));
    v77 = v75;

    if (v77)
    {
      v97 = v95;
      v98 = 0;
      v99 = v81;
      LOWORD(v100) = v82;
      sub_1D5FC8148();
      sub_1D72647EC();
    }
  }

  sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v50, sub_1D5D44C84);
}

void sub_1D5D44BF0()
{
  if (!qword_1EDF037A0)
  {
    sub_1D5C49698();
    sub_1D5B58B84(&qword_1EDF0C5F0, sub_1D5C49698);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF037A0);
    }
  }
}

void sub_1D5D44C84()
{
  if (!qword_1EDF08EE0)
  {
    sub_1D5D44BF0();
    sub_1D5B58B84(&qword_1EDF037A8, sub_1D5D44BF0);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08EE0);
    }
  }
}

uint64_t sub_1D5D44D6C(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D6709230;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D5D35E8C();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5D44F04();
    sub_1D72647EC();
  }
}

unint64_t sub_1D5D44F04()
{
  result = qword_1EDF127E0;
  if (!qword_1EDF127E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF127E0);
  }

  return result;
}

uint64_t FormatShine.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v72 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v71 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v71 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v71 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v71 - v20;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v1;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = sub_1D5C30408();
  v73 = v25;
  sub_1D5D2EE70(&type metadata for FormatShine, &type metadata for FormatCodingKeys, v30, v27, &type metadata for FormatShine, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v28, v25, v29, &off_1F51F6C78);
  v74 = v26;
  v31 = v26 & 7;
  if (v31 <= 1)
  {
    if ((v26 & 7) != 0)
    {
      sub_1D5B58478();
      v64 = *(v63 + 48);
      v65 = &v17[*(v63 + 64)];
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v66 = sub_1D725BD1C();
      v67 = __swift_project_value_buffer(v66, qword_1EDFFCD30);
      v68 = *(*(v66 - 8) + 16);
      v68(v17, v67, v66);
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v69 = __swift_project_value_buffer(v66, qword_1EDFFCE68);
      v68(&v17[v64], v69, v66);
      type metadata accessor for FormatVersionRequirement.Value(0);
      *v65 = 0;
      *(v65 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v39 = v73;
      sub_1D5D457AC(1, v74 & 0xFFFFFFFFFFFFFFF8, v17);
      v40 = v17;
    }

    else
    {
      sub_1D5B58478();
      v42 = *(v41 + 48);
      v43 = &v21[*(v41 + 64)];
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v44 = sub_1D725BD1C();
      v45 = __swift_project_value_buffer(v44, qword_1EDFFCD30);
      v46 = *(*(v44 - 8) + 16);
      v46(v21, v45, v44);
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v47 = __swift_project_value_buffer(v44, qword_1EDFFCE68);
      v46(&v21[v42], v47, v44);
      type metadata accessor for FormatVersionRequirement.Value(0);
      *v43 = 0;
      *(v43 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v39 = v73;
      sub_1D5D457AC(0, v74, v21);
      v40 = v21;
    }
  }

  else if (v31 == 2)
  {
    sub_1D5B58478();
    v49 = *(v48 + 48);
    v50 = &v13[*(v48 + 64)];
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v51 = sub_1D725BD1C();
    v52 = __swift_project_value_buffer(v51, qword_1EDFFCD30);
    v53 = *(*(v51 - 8) + 16);
    v53(v13, v52, v51);
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v54 = __swift_project_value_buffer(v51, qword_1EDFFCE68);
    v53(&v13[v49], v54, v51);
    type metadata accessor for FormatVersionRequirement.Value(0);
    *v50 = 0;
    *(v50 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    v39 = v73;
    sub_1D5D457AC(2, v74 & 0xFFFFFFFFFFFFFFF8, v13);
    v40 = v13;
  }

  else if (v31 == 3)
  {
    sub_1D5B58478();
    v33 = *(v32 + 48);
    v34 = &v9[*(v32 + 64)];
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v35 = sub_1D725BD1C();
    v36 = __swift_project_value_buffer(v35, qword_1EDFFCD30);
    v37 = *(*(v35 - 8) + 16);
    v37(v9, v36, v35);
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v35, qword_1EDFFCE68);
    v37(&v9[v33], v38, v35);
    type metadata accessor for FormatVersionRequirement.Value(0);
    *v34 = 0;
    *(v34 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    v39 = v73;
    sub_1D5D457AC(3, v74 & 0xFFFFFFFFFFFFFFF8, v9);
    v40 = v9;
  }

  else
  {
    sub_1D5B58478();
    v56 = *(v55 + 48);
    v57 = v72;
    v58 = &v72[*(v55 + 64)];
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v59 = sub_1D725BD1C();
    v60 = __swift_project_value_buffer(v59, qword_1EDFFCD50);
    v61 = *(*(v59 - 8) + 16);
    v61(v57, v60, v59);
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v62 = __swift_project_value_buffer(v59, qword_1EDFFCE68);
    v61(v57 + v56, v62, v59);
    type metadata accessor for FormatVersionRequirement.Value(0);
    *v58 = 0;
    *(v58 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    v39 = v73;
    sub_1D5D457AC(4, v74 & 0xFFFFFFFFFFFFFFF8, v57);
    v40 = v57;
  }

  sub_1D5D2CFE8(v40, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v39, sub_1D5D30DC4);
}

uint64_t sub_1D5D457AC(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D66F9044;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D5D45944();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5B55CBC();
    sub_1D72647EC();
  }
}

unint64_t sub_1D5D45944()
{
  result = qword_1EDF127F8;
  if (!qword_1EDF127F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF127F8);
  }

  return result;
}

void sub_1D5D459E8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x6E69685364726163;
  v5 = 0xD000000000000011;
  v6 = 0x80000001D73B8BC0;
  v7 = 0x80000001D73B8BE0;
  v8 = 0xD000000000000015;
  if (v2 != 3)
  {
    v8 = 0x69685370756F7267;
    v7 = 0xEA0000000000656ELL;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0x696853656C746974;
    v3 = 0xEA0000000000656ELL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1D5D45A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a1;
  v40 = a3;
  v41 = a4;
  v36 = a2;
  v8 = *(a5 + 16);
  v7 = *(a5 + 24);
  v39 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v37 = *(v10 + 64);
  v11 = v37;
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v12);
  v15 = &AssociatedTypeWitness - v14;
  v16 = (v5 + *(a5 + 44));
  v17 = v16[1];
  v31 = *v16;
  v18 = *(v10 + 16);
  v34 = v10 + 16;
  v35 = v18;
  (v18)(v15, a2, v13);
  v19 = *(v10 + 80);
  v20 = (v19 + 32) & ~v19;
  v21 = (v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v8;
  *(v22 + 24) = v7;
  v32 = *(v10 + 32);
  v33 = v10 + 32;
  v23 = v22 + v20;
  v24 = v22;
  v38 = v22;
  v25 = AssociatedTypeWitness;
  v32(v23, v15, AssociatedTypeWitness);
  v26 = (v24 + v21);
  *v26 = v31;
  v26[1] = v17;

  v27 = sub_1D72647CC();
  v35(v15, v36, v25);
  v28 = swift_allocObject();
  v28[2] = v8;
  v28[3] = v7;
  v28[4] = v27;
  v32(v28 + ((v19 + 40) & ~v19), v15, v25);
  __swift_project_boxed_opaque_existential_1((v51 + *(v39 + 36)), *(v51 + *(v39 + 36) + 24));
  v49 = sub_1D71B6390;
  v50 = v28;
  v44 = v40;
  v45 = v41;
  v46 = sub_1D71B638C;
  v47 = v38;
  LOBYTE(v7) = sub_1D5D2F7A4(v42, sub_1D71B6394, v48, sub_1D71B63BC, v43);

  return v7 & 1;
}

uint64_t sub_1D5D45D90(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67091E0;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D5D312F0();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    type metadata accessor for FormatViewNodeStyle();
    sub_1D5B58B84(&qword_1EDF2BA98, type metadata accessor for FormatViewNodeStyle);
    sub_1D72647EC();
  }
}

uint64_t FormatViewNodeStyle.encode(to:)(void *a1)
{
  v3 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  *&v280 = &v260 - v6;
  v7 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v266 = &v260 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v265 = &v260 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v267 = &v260 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v268 = &v260 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v269 = &v260 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v270 = &v260 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v271 = &v260 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  *&v281 = &v260 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v260 - v33;
  sub_1D5D48664();
  v282 = v35;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v260 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1[3];
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v39);
  sub_1D5C8C1A8();
  v42 = v41;
  v43 = sub_1D5B58B84(&qword_1EDF25438, sub_1D5C8C1A8);
  v309 = v38;
  v44 = v42;
  v45 = v42;
  v46 = v1;
  sub_1D5D2EE70(v3, v44, v47, v39, v3, v45, &type metadata for FormatVersions.JazzkonC, v40, v38, v43, &off_1F51F6C78);
  swift_beginAccess();
  v49 = v1[2];
  v48 = v1[3];
  v50 = qword_1EDF31EB0;

  if (v50 != -1)
  {
    swift_once();
  }

  v51 = sub_1D725BD1C();
  v52 = __swift_project_value_buffer(v51, qword_1EDFFCD30);
  v53 = *(v51 - 8);
  v54 = *(v53 + 16);
  v55 = v53 + 16;
  v278 = v52;
  v54(v34);
  v279 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v56 = v280;
  sub_1D725892C();
  v57 = sub_1D725895C();
  v58 = (*(*(v57 - 8) + 48))(v56, 1, v57);
  v276 = v54;
  v277 = v46;
  v274 = v55;
  v275 = v51;
  if (v58 != 1)
  {
    sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v56, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v79 = v309;
    goto LABEL_8;
  }

  v272 = v49;
  sub_1D5D35558(v56, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v59 = v282;
  v60 = v309;
  v61 = &v309[*(v282 + 11)];
  v63 = *v61;
  v62 = *(v61 + 1);
  v64 = v34;
  LOBYTE(v298) = 0;
  v65 = swift_allocObject();
  *(v65 + 16) = 0;
  *(v65 + 24) = 0;
  *(v65 + 32) = v298;
  *(v65 + 40) = v63;
  *(v65 + 48) = v62;
  sub_1D5D486F8();
  v67 = v66;
  sub_1D5B58B84(&qword_1EDF03478, sub_1D5D486F8);

  v273 = v67;
  v68 = sub_1D72647CC();
  LOBYTE(v298) = 0;
  v69 = swift_allocObject();
  *(v69 + 24) = 0;
  *(v69 + 32) = 0;
  *(v69 + 16) = v68;
  *(v69 + 40) = v298;
  v70 = __swift_project_boxed_opaque_existential_1((v60 + *(v59 + 9)), *(v60 + *(v59 + 9) + 24));
  *&v280 = &v260;
  MEMORY[0x1EEE9AC00](v70, v71);
  MEMORY[0x1EEE9AC00](v72, v73);
  *(&v260 - 4) = sub_1D5B4AA6C;
  *(&v260 - 3) = 0;
  v258 = sub_1D66D2F10;
  v259 = v65;
  v74 = v283;
  v76 = sub_1D5D2F7A4(v64, sub_1D615B49C, v75, sub_1D615B4A4, (&v260 - 6));
  *&v283 = v74;
  if (!v74)
  {
    v105 = v76;

    if (v105)
    {
      v298 = 0uLL;
      LOBYTE(v299) = 0;
      *&v290 = v272;
      *(&v290 + 1) = v48;
      v79 = v309;
      v106 = v283;
      sub_1D72647EC();

      sub_1D5D2CFE8(v64, type metadata accessor for FormatVersionRequirement);
      *&v283 = v106;
      v54 = v276;
      v46 = v277;
      v51 = v275;
      v80 = v281;
      if (v106)
      {
        v77 = v79;
        return sub_1D5D2CFE8(v77, sub_1D5D48664);
      }

LABEL_9:
      v82 = v46[4];
      v81 = v46[5];
      (v54)(v80, v278, v51);
      swift_storeEnumTagMultiPayload();
      *&v290 = v82;
      *(&v290 + 1) = v81;
      v280 = xmmword_1D728CF30;
      v298 = xmmword_1D728CF30;
      LOBYTE(v299) = 0;
      v83 = (v79 + *(v282 + 11));
      v85 = *v83;
      v84 = v83[1];
      LOBYTE(v284) = 0;
      v86 = swift_allocObject();
      v273 = &v260;
      *(v86 + 16) = v280;
      *(v86 + 32) = v284;
      *(v86 + 40) = v85;
      *(v86 + 48) = v84;
      MEMORY[0x1EEE9AC00](v86, v87);
      v272 = &v260 - 6;
      *(&v260 - 4) = sub_1D5B4AA6C;
      *(&v260 - 3) = 0;
      v258 = sub_1D6708C2C;
      v259 = v88;
      LOBYTE(v284) = 0;
      v89 = swift_allocObject();
      *(v89 + 16) = v280;
      *(v89 + 32) = v284;
      v262 = v85;
      *(v89 + 40) = v85;
      *(v89 + 48) = v84;
      sub_1D5D486F8();
      v91 = v90;
      v92 = sub_1D5B58B84(&qword_1EDF03478, sub_1D5D486F8);
      v261 = v84;
      swift_retain_n();
      v263 = v92;
      v264 = v91;
      v93 = sub_1D72647CC();
      v94 = v281;
      v95 = v93;
      LOBYTE(v284) = 0;
      v96 = swift_allocObject();
      *(v96 + 16) = v95;
      *(v96 + 24) = v280;
      *(v96 + 40) = v284;
      v97 = (v79 + *(v282 + 9));
      v98 = __swift_project_boxed_opaque_existential_1(v97, v97[3]);
      MEMORY[0x1EEE9AC00](v98, v99);
      MEMORY[0x1EEE9AC00](v100, v101);
      v102 = v272;
      *(&v260 - 4) = sub_1D615B4A4;
      *(&v260 - 3) = v102;
      v258 = sub_1D6708C2C;
      v259 = v89;
      v103 = v283;
      sub_1D5D2BC70(v94, sub_1D615B49C, v104, sub_1D615B4A4, (&v260 - 6));
      if (v103)
      {
        sub_1D5D2CFE8(v94, type metadata accessor for FormatVersionRequirement);

        v77 = v309;
        return sub_1D5D2CFE8(v77, sub_1D5D48664);
      }

      v282 = v97;

      sub_1D72647EC();
      sub_1D5D2CFE8(v281, type metadata accessor for FormatVersionRequirement);

      v107 = v277;
      swift_beginAccess();
      v108 = v107[6];
      v109 = v271;
      v111 = v275;
      v110 = v276;
      (v276)(v271, v278, v275);
      swift_storeEnumTagMultiPayload();
      if (*(v108 + 16))
      {
        LOBYTE(v298) = 0;
        v112 = swift_allocObject();
        v283 = xmmword_1D7297410;
        *(v112 + 16) = xmmword_1D7297410;
        *(v112 + 32) = v298;
        *(v112 + 40) = v262;
        *(v112 + 48) = v261;

        v113 = v109;
        v114 = sub_1D72647CC();
        LOBYTE(v298) = 0;
        v115 = swift_allocObject();
        *(v115 + 16) = v114;
        *(v115 + 24) = v283;
        *(v115 + 40) = v298;
        v116 = __swift_project_boxed_opaque_existential_1(v282, v282[3]);
        MEMORY[0x1EEE9AC00](v116, v117);
        MEMORY[0x1EEE9AC00](v118, v119);
        *(&v260 - 4) = sub_1D5B4AA6C;
        *(&v260 - 3) = 0;
        v258 = sub_1D6708C2C;
        v259 = v112;
        v121 = sub_1D5D2F7A4(v113, sub_1D615B49C, v120, sub_1D615B4A4, (&v260 - 6));
        v122 = v121;

        if (v122)
        {
          v298 = v283;
          LOBYTE(v299) = 0;
          *&v290 = v108;
          sub_1D5C34D84(0, &qword_1EDF04EF0, &type metadata for FormatViewNodeStyle.Selector, MEMORY[0x1E69E62F8]);
          sub_1D5D4878C();
          sub_1D72647EC();
          v111 = v275;
          v110 = v276;
          v123 = v270;

          sub_1D5D2CFE8(v271, type metadata accessor for FormatVersionRequirement);
          goto LABEL_24;
        }

        sub_1D5D2CFE8(v271, type metadata accessor for FormatVersionRequirement);

        v111 = v275;
        v110 = v276;
      }

      else
      {
        sub_1D5D2CFE8(v109, type metadata accessor for FormatVersionRequirement);
      }

      v123 = v270;
LABEL_24:
      v124 = v277[7];
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v125 = __swift_project_value_buffer(v111, qword_1EDFFCD18);
      v110(v123, v125, v111);
      swift_storeEnumTagMultiPayload();
      v283 = xmmword_1D72BAA60;
      v298 = xmmword_1D72BAA60;
      LOBYTE(v299) = 0;
      LOBYTE(v290) = 0;
      v126 = swift_allocObject();
      v128 = v126;
      *(v126 + 16) = v283;
      *(v126 + 32) = v290;
      v129 = v123;
      v130 = v261;
      v131 = v262;
      *(v126 + 40) = v262;
      *(v126 + 48) = v130;
      if (v124)
      {
        *&v281 = &v260;
        *&v290 = v124;
        MEMORY[0x1EEE9AC00](v126, v127);
        *(&v260 - 4) = sub_1D5B4AA6C;
        *(&v260 - 3) = 0;
        v258 = sub_1D6708C2C;
        v259 = v128;
        LOBYTE(v284) = 0;
        v133 = v132;
        v134 = swift_allocObject();
        *(v134 + 16) = v283;
        *(v134 + 32) = v284;
        *(v134 + 40) = v131;
        *(v134 + 48) = v133;
        swift_retain_n();

        v135 = sub_1D72647CC();
        LOBYTE(v284) = 0;
        v136 = swift_allocObject();
        *(v136 + 16) = v135;
        *(v136 + 24) = v283;
        *(v136 + 40) = v284;
        v137 = __swift_project_boxed_opaque_existential_1(v282, v282[3]);
        MEMORY[0x1EEE9AC00](v137, v138);
        MEMORY[0x1EEE9AC00](v139, v140);
        *(&v260 - 4) = sub_1D615B4A4;
        *(&v260 - 3) = (&v260 - 6);
        v258 = sub_1D6708C2C;
        v259 = v134;
        v141 = v270;
        v143 = sub_1D5D2F7A4(v270, sub_1D615B49C, v142, sub_1D615B4A4, (&v260 - 6));
        v147 = v143;

        if (v147)
        {
          sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
          sub_1D66582DC();
          sub_1D72647EC();
          v110 = v276;
          v146 = v277;
          v111 = v275;
          v148 = v278;

          sub_1D5D2CFE8(v270, type metadata accessor for FormatVersionRequirement);
          v145 = v148;
        }

        else
        {

          sub_1D5D2CFE8(v141, type metadata accessor for FormatVersionRequirement);
          v110 = v276;
          v146 = v277;
          v111 = v275;
          v145 = v278;
        }

        v144 = v261;
      }

      else
      {
        v144 = v130;

        sub_1D5D2CFE8(v129, type metadata accessor for FormatVersionRequirement);

        v146 = v277;
        v145 = v278;
      }

      v149 = v146[8];
      v110(v269, v145, v111);
      swift_storeEnumTagMultiPayload();
      v283 = xmmword_1D72BAA70;
      v298 = xmmword_1D72BAA70;
      LOBYTE(v299) = 0;
      LOBYTE(v290) = 0;
      v150 = swift_allocObject();
      v152 = v150;
      *(v150 + 16) = v283;
      *(v150 + 32) = v290;
      v153 = v262;
      *(v150 + 40) = v262;
      *(v150 + 48) = v144;
      if ((~v149 & 0xF000000000000007) != 0)
      {
        *&v281 = &v260;
        *&v290 = v149;
        MEMORY[0x1EEE9AC00](v150, v151);
        *(&v260 - 4) = sub_1D5B4AA6C;
        *(&v260 - 3) = 0;
        v258 = sub_1D6708C2C;
        v259 = v152;
        LOBYTE(v284) = 0;
        v172 = swift_allocObject();
        *(v172 + 16) = v283;
        *(v172 + 32) = v284;
        *(v172 + 40) = v153;
        *(v172 + 48) = v144;
        swift_retain_n();
        sub_1D5D04BD4(v149);
        v173 = sub_1D72647CC();
        LOBYTE(v284) = 0;
        v174 = swift_allocObject();
        *(v174 + 16) = v173;
        *(v174 + 24) = v283;
        *(v174 + 40) = v284;
        v175 = __swift_project_boxed_opaque_existential_1(v282, v282[3]);
        MEMORY[0x1EEE9AC00](v175, v176);
        MEMORY[0x1EEE9AC00](v177, v178);
        *(&v260 - 4) = sub_1D615B4A4;
        *(&v260 - 3) = (&v260 - 6);
        v258 = sub_1D6708C2C;
        v259 = v172;
        v180 = sub_1D5D2F7A4(v269, sub_1D615B49C, v179, sub_1D615B4A4, (&v260 - 6));
        v184 = v180;

        if (v184)
        {
          sub_1D5D4A808();
          sub_1D72647EC();
          v154 = v277;
          v111 = v275;
          v153 = v262;
          *&v283 = 0;

          v144 = v261;
        }

        else
        {
          *&v283 = 0;

          v154 = v277;
          v111 = v275;
          v144 = v261;
          v153 = v262;
        }
      }

      else
      {
        *&v283 = 0;

        v154 = v277;
      }

      sub_1D5D2CFE8(v269, type metadata accessor for FormatVersionRequirement);
      v155 = v154[9];
      v156 = v278;
      (v276)(v268, v278, v111);
      swift_storeEnumTagMultiPayload();
      v281 = xmmword_1D72BAA80;
      v298 = xmmword_1D72BAA80;
      LOBYTE(v299) = 0;
      LOBYTE(v290) = 0;
      v157 = swift_allocObject();
      v159 = v157;
      *(v157 + 16) = v281;
      *(v157 + 32) = v290;
      *(v157 + 40) = v153;
      *(v157 + 48) = v144;
      if (v155)
      {
        v273 = &v260;
        *&v290 = v155;
        MEMORY[0x1EEE9AC00](v157, v158);
        *(&v260 - 4) = sub_1D5B4AA6C;
        *(&v260 - 3) = 0;
        v258 = sub_1D6708C2C;
        v259 = v159;
        LOBYTE(v284) = 0;
        v160 = swift_allocObject();
        *(v160 + 16) = v281;
        *(v160 + 32) = v284;
        *(v160 + 40) = v153;
        *(v160 + 48) = v144;
        swift_retain_n();
        *&v280 = v155;

        v161 = sub_1D72647CC();
        LOBYTE(v284) = 0;
        v162 = swift_allocObject();
        *(v162 + 16) = v161;
        *(v162 + 24) = v281;
        *(v162 + 40) = v284;
        v163 = __swift_project_boxed_opaque_existential_1(v282, v282[3]);
        MEMORY[0x1EEE9AC00](v163, v164);
        MEMORY[0x1EEE9AC00](v165, v166);
        *(&v260 - 4) = sub_1D615B4A4;
        *(&v260 - 3) = (&v260 - 6);
        v258 = sub_1D6708C2C;
        v259 = v160;
        v167 = v268;
        v168 = v283;
        v170 = sub_1D5D2F7A4(v268, sub_1D615B49C, v169, sub_1D615B4A4, (&v260 - 6));
        if (v168)
        {

          v171 = v309;
          sub_1D5D2CFE8(v167, type metadata accessor for FormatVersionRequirement);
          v77 = v171;
          return sub_1D5D2CFE8(v77, sub_1D5D48664);
        }

        v185 = v170;

        if (v185)
        {
          sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
          sub_1D66612AC();
          sub_1D72647EC();
          v182 = 0;
          v154 = v277;
          v186 = v278;

          sub_1D5D2CFE8(v268, type metadata accessor for FormatVersionRequirement);
          v183 = v186;
        }

        else
        {

          sub_1D5D2CFE8(v167, type metadata accessor for FormatVersionRequirement);
          v182 = 0;
          v154 = v277;
          v183 = v278;
        }

        v181 = v261;
      }

      else
      {
        v181 = v144;

        sub_1D5D2CFE8(v268, type metadata accessor for FormatVersionRequirement);

        v182 = v283;
        v183 = v156;
      }

      v187 = v154[10];
      *&v281 = v154[11];
      v188 = *(v154 + 96);
      v189 = v267;
      (v276)(v267, v183, v275);
      swift_storeEnumTagMultiPayload();
      v283 = xmmword_1D72BAA90;
      v307 = xmmword_1D72BAA90;
      v308 = 0;
      LOBYTE(v298) = 0;
      v190 = swift_allocObject();
      v192 = v190;
      *(v190 + 16) = v283;
      *(v190 + 32) = v298;
      v193 = v262;
      *(v190 + 40) = v262;
      *(v190 + 48) = v181;
      if (v188 <= 0xFD)
      {
        *&v280 = &v260;
        v214 = v281;
        v304 = v187;
        v305 = v281;
        v306 = v188;
        MEMORY[0x1EEE9AC00](v190, v191);
        v273 = &v260 - 6;
        *(&v260 - 4) = sub_1D5B4AA6C;
        *(&v260 - 3) = 0;
        v258 = sub_1D6708C2C;
        v259 = v192;
        LOBYTE(v298) = 0;
        v216 = v215;
        v217 = swift_allocObject();
        *(v217 + 16) = v283;
        *(v217 + 32) = v298;
        *(v217 + 40) = v193;
        *(v217 + 48) = v216;
        v218 = v282;
        swift_retain_n();
        sub_1D5ED34B0(v187, v214, v188);
        v219 = sub_1D72647CC();
        LOBYTE(v298) = 0;
        v220 = swift_allocObject();
        *(v220 + 16) = v219;
        *(v220 + 24) = v283;
        *(v220 + 40) = v298;
        v221 = __swift_project_boxed_opaque_existential_1(v218, v218[3]);
        MEMORY[0x1EEE9AC00](v221, v222);
        MEMORY[0x1EEE9AC00](v223, v224);
        v225 = v273;
        *(&v260 - 4) = sub_1D615B4A4;
        *(&v260 - 3) = v225;
        v226 = v267;
        v258 = sub_1D6708C2C;
        v259 = v217;
        v228 = sub_1D5D2F7A4(v267, sub_1D615B49C, v227, sub_1D615B4A4, (&v260 - 6));
        if (v182)
        {

          v229 = v309;
          sub_1D5ED34A0(v304, v305, v306);
          sub_1D5D2CFE8(v226, type metadata accessor for FormatVersionRequirement);
          v77 = v229;
          return sub_1D5D2CFE8(v77, sub_1D5D48664);
        }

        v254 = v228;

        v195 = v266;
        if (v254)
        {
          sub_1D6661258();
          sub_1D72647EC();
          v154 = v277;
          v255 = v278;
          *&v283 = 0;

          sub_1D5ED34A0(v304, v305, v306);
          sub_1D5D2CFE8(v267, type metadata accessor for FormatVersionRequirement);
          v196 = v255;
          v194 = v261;
LABEL_50:
          v197 = *(v154 + 19);
          v300 = *(v154 + 17);
          v301 = v197;
          v302 = *(v154 + 21);
          v303 = *(v154 + 184);
          v198 = v154;
          v199 = *(v154 + 15);
          v298 = *(v154 + 13);
          v299 = v199;
          v200 = v265;
          (v276)(v265, v196, v275);
          swift_storeEnumTagMultiPayload();
          v281 = xmmword_1D72BAAA0;
          v296 = xmmword_1D72BAAA0;
          v297 = 0;
          LOBYTE(v290) = 0;
          v201 = swift_allocObject();
          v203 = v201;
          *(v201 + 16) = v281;
          *(v201 + 32) = v290;
          v204 = v262;
          *(v201 + 40) = v262;
          *(v201 + 48) = v194;
          if (v303 == 254)
          {

            v205 = v283;
            v206 = v309;
          }

          else
          {
            *&v280 = &v260;
            v292 = v300;
            v293 = v301;
            v294 = v302;
            v295 = v303;
            v290 = v298;
            v291 = v299;
            MEMORY[0x1EEE9AC00](v201, v202);
            *(&v260 - 4) = sub_1D5B4AA6C;
            *(&v260 - 3) = 0;
            v258 = sub_1D6708C2C;
            v259 = v203;
            LOBYTE(v284) = 0;
            v230 = swift_allocObject();
            *(v230 + 16) = v281;
            *(v230 + 32) = v284;
            *(v230 + 40) = v204;
            *(v230 + 48) = v194;
            swift_retain_n();
            sub_1D5D355B8(&v298, &v284, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
            v231 = v282;
            v232 = v200;
            v233 = sub_1D72647CC();
            LOBYTE(v284) = 0;
            v234 = swift_allocObject();
            *(v234 + 16) = v233;
            *(v234 + 24) = v281;
            *(v234 + 40) = v284;
            v235 = __swift_project_boxed_opaque_existential_1(v231, v231[3]);
            MEMORY[0x1EEE9AC00](v235, v236);
            MEMORY[0x1EEE9AC00](v237, v238);
            *(&v260 - 4) = sub_1D615B4A4;
            *(&v260 - 3) = (&v260 - 6);
            v258 = sub_1D6708C2C;
            v259 = v230;
            v239 = v283;
            v241 = sub_1D5D2F7A4(v232, sub_1D615B49C, v240, sub_1D615B4A4, (&v260 - 6));
            v205 = v239;
            if (v239)
            {

              v286 = v292;
              v287 = v293;
              v288 = v294;
              v289 = v295;
              v284 = v290;
              v285 = v291;
              sub_1D601144C(&v284);
              v206 = v309;
              sub_1D5D2CFE8(v265, type metadata accessor for FormatVersionRequirement);
              goto LABEL_63;
            }

            v256 = v241;

            v195 = v266;
            if (v256)
            {
              sub_1D6661204();
              v206 = v309;
              sub_1D72647EC();
              v198 = v277;

              v286 = v292;
              v287 = v293;
              v288 = v294;
              v289 = v295;
              v284 = v290;
              v285 = v291;
              sub_1D601144C(&v284);
              v200 = v265;
            }

            else
            {

              v286 = v292;
              v287 = v293;
              v288 = v294;
              v289 = v295;
              v284 = v290;
              v285 = v291;
              sub_1D601144C(&v284);
              v206 = v309;
              v200 = v265;
              v198 = v277;
            }
          }

          sub_1D5D2CFE8(v200, type metadata accessor for FormatVersionRequirement);
          v207 = *(v198 + 185);
          if (qword_1EDF31F08 != -1)
          {
            swift_once();
          }

          v208 = v275;
          v209 = __swift_project_value_buffer(v275, qword_1EDFFCDE0);
          (v276)(v195, v209, v208);
          swift_storeEnumTagMultiPayload();
          v283 = xmmword_1D72BAAB0;
          v290 = xmmword_1D72BAAB0;
          LOBYTE(v291) = 0;
          LOBYTE(v284) = 0;
          v211 = swift_allocObject();
          *(v211 + 16) = v283;
          *(v211 + 32) = v284;
          v212 = v262;
          *(v211 + 40) = v262;
          v213 = v261;
          *(v211 + 48) = v261;
          if (v207 == 2)
          {
          }

          else
          {
            v242 = v282;
            *&v281 = &v260;
            LOBYTE(v284) = v207 & 1;
            MEMORY[0x1EEE9AC00](v213, v210);
            *(&v260 - 4) = sub_1D5B4AA6C;
            *(&v260 - 3) = 0;
            v258 = sub_1D6708C2C;
            v259 = v211;
            LOBYTE(v296) = 0;
            v244 = v243;
            v245 = swift_allocObject();
            *(v245 + 16) = v283;
            *(v245 + 32) = v296;
            *(v245 + 40) = v212;
            *(v245 + 48) = v244;
            swift_retain_n();
            v246 = sub_1D72647CC();
            LOBYTE(v296) = 0;
            v247 = swift_allocObject();
            *(v247 + 16) = v246;
            *(v247 + 24) = v283;
            *(v247 + 40) = v296;
            v248 = __swift_project_boxed_opaque_existential_1(v242, v242[3]);
            MEMORY[0x1EEE9AC00](v248, v249);
            MEMORY[0x1EEE9AC00](v250, v251);
            *(&v260 - 4) = sub_1D615B4A4;
            *(&v260 - 3) = (&v260 - 6);
            v195 = v266;
            v258 = sub_1D6708C2C;
            v259 = v245;
            v253 = sub_1D5D2F7A4(v266, sub_1D615B49C, v252, sub_1D615B4A4, (&v260 - 6));
            if (v205)
            {
              sub_1D5D2CFE8(v195, type metadata accessor for FormatVersionRequirement);

              v206 = v309;
              goto LABEL_63;
            }

            v257 = v253;

            v206 = v309;
            if (v257)
            {
              sub_1D72647EC();
            }
          }

          sub_1D5D2CFE8(v195, type metadata accessor for FormatVersionRequirement);

LABEL_63:
          v77 = v206;
          return sub_1D5D2CFE8(v77, sub_1D5D48664);
        }

        *&v283 = 0;

        sub_1D5ED34A0(v304, v305, v306);
        sub_1D5D2CFE8(v267, type metadata accessor for FormatVersionRequirement);
        v154 = v277;
        v194 = v261;
      }

      else
      {
        *&v283 = v182;
        v194 = v181;

        sub_1D5D2CFE8(v189, type metadata accessor for FormatVersionRequirement);

        v195 = v266;
      }

      v196 = v278;
      goto LABEL_50;
    }

    sub_1D5D2CFE8(v64, type metadata accessor for FormatVersionRequirement);

    v79 = v309;
    v54 = v276;
    v46 = v277;
    v51 = v275;
LABEL_8:
    v80 = v281;
    goto LABEL_9;
  }

  sub_1D5D2CFE8(v64, type metadata accessor for FormatVersionRequirement);

  v77 = v60;
  return sub_1D5D2CFE8(v77, sub_1D5D48664);
}

void sub_1D5D48664()
{
  if (!qword_1EDF08D48)
  {
    sub_1D5D486F8();
    sub_1D5B58B84(&qword_1EDF03478, sub_1D5D486F8);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08D48);
    }
  }
}

void sub_1D5D486F8()
{
  if (!qword_1EDF03470)
  {
    sub_1D5C8C1A8();
    sub_1D5B58B84(&qword_1EDF25438, sub_1D5C8C1A8);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03470);
    }
  }
}

unint64_t sub_1D5D4878C()
{
  result = qword_1EDF04EE8;
  if (!qword_1EDF04EE8)
  {
    sub_1D5C34D84(255, &qword_1EDF04EF0, &type metadata for FormatViewNodeStyle.Selector, MEMORY[0x1E69E62F8]);
    sub_1D5C8C154();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04EE8);
  }

  return result;
}

uint64_t FormatViewNodeStyle.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v183 = &v179 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v187 = &v179 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v189 = &v179 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v191 = &v179 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v190 = &v179 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v197 = (&v179 - v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v179 - v23;
  sub_1D5D4A774();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v179 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v1 + 8);
  *&v205 = *v1;
  v31 = *(v1 + 24);
  v192 = *(v1 + 16);
  v193 = v31;
  v32 = *(v1 + 32);
  v185 = *(v1 + 40);
  v186 = v32;
  v188 = *(v1 + 48);
  v33 = *(v1 + 104);
  v227 = *(v1 + 88);
  v228 = v33;
  v229 = *(v1 + 120);
  v230 = *(v1 + 136);
  v34 = *(v1 + 72);
  v225 = *(v1 + 56);
  v226 = v34;
  v184 = *(v1 + 144);
  v182 = *(v1 + 152);
  v35 = a1[3];
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v35);
  sub_1D5C4A640();
  v38 = v37;
  v39 = sub_1D5B58B84(&qword_1EDF25428, sub_1D5C4A640);
  sub_1D5D2EE70(&type metadata for FormatViewNodeStyle.Selector, v38, v40, v35, &type metadata for FormatViewNodeStyle.Selector, v38, &type metadata for FormatVersions.JazzkonC, v36, v29, v39, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v41 = sub_1D725BD1C();
  v42 = __swift_project_value_buffer(v41, qword_1EDFFCD30);
  v43 = *(v41 - 8);
  v44 = *(v43 + 16);
  v199 = v43 + 16;
  v200 = v42;
  v196 = v41;
  v198 = v44;
  (v44)(v24);
  v201 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v206 = v205;
  *(&v206 + 1) = v30;
  v212 = 0uLL;
  LOBYTE(v213) = 0;
  v45 = &v29[*(v26 + 44)];
  v46 = *v45;
  v47 = *(v45 + 1);
  v204 = v24;
  LOBYTE(v223) = 0;
  v48 = swift_allocObject();
  *&v205 = &v179;
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  *(v48 + 32) = v223;
  *(v48 + 40) = v46;
  *(v48 + 48) = v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  *(&v179 - 4) = sub_1D5B4AA6C;
  *(&v179 - 3) = 0;
  v177 = sub_1D6708C30;
  v178 = v50;
  LOBYTE(v223) = 0;
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  *(v51 + 24) = 0;
  *(v51 + 32) = v223;
  v195 = v46;
  *(v51 + 40) = v46;
  *(v51 + 48) = v47;
  sub_1D5D4A6E0();
  v53 = v52;
  v54 = sub_1D5B58B84(&qword_1EDF03468, sub_1D5D4A6E0);
  v194 = v47;
  swift_retain_n();
  v202 = v53;
  v203 = v54;
  v55 = sub_1D72647CC();
  LOBYTE(v223) = 0;
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  *(v56 + 32) = 0;
  *(v56 + 16) = v55;
  *(v56 + 40) = v223;
  v57 = v29;
  v58 = &v29[*(v26 + 36)];
  v59 = __swift_project_boxed_opaque_existential_1(v58, *(v58 + 3));
  MEMORY[0x1EEE9AC00](v59, v60);
  MEMORY[0x1EEE9AC00](v61, v62);
  *(&v179 - 4) = sub_1D615B4A4;
  *(&v179 - 3) = (&v179 - 6);
  v177 = sub_1D6708C30;
  v178 = v51;
  v63 = v204;
  v64 = v231;
  sub_1D5D2BC70(v204, sub_1D615B49C, v65, sub_1D615B4A4, (&v179 - 6));
  if (!v64)
  {
    v231 = v58;

    sub_1D5D3E60C();
    sub_1D72647EC();
    v181 = v57;
    sub_1D5D2CFE8(v63, type metadata accessor for FormatVersionRequirement);

    v67 = v197;
    v68 = v196;
    v69 = v198;
    (v198)(v197, v200);
    swift_storeEnumTagMultiPayload();
    v205 = xmmword_1D728CF30;
    v212 = xmmword_1D728CF30;
    LOBYTE(v213) = 0;
    LOBYTE(v206) = 0;
    v70 = swift_allocObject();
    v72 = v70;
    *(v70 + 16) = v205;
    *(v70 + 32) = v206;
    v73 = v194;
    v74 = v195;
    *(v70 + 40) = v195;
    *(v70 + 48) = v73;
    v75 = v192;
    if ((~v192 & 0xF000000000000007) != 0)
    {
      v204 = &v179;
      *&v206 = v192;
      MEMORY[0x1EEE9AC00](v70, v71);
      v180 = &v179 - 6;
      *(&v179 - 4) = sub_1D5B4AA6C;
      *(&v179 - 3) = 0;
      v177 = sub_1D6708C30;
      v178 = v72;
      LOBYTE(v223) = 0;
      v93 = swift_allocObject();
      *(v93 + 16) = v205;
      *(v93 + 32) = v223;
      *(v93 + 40) = v74;
      *(v93 + 48) = v73;
      swift_retain_n();
      sub_1D5D04BD4(v75);
      v94 = sub_1D72647CC();
      LOBYTE(v223) = 0;
      v95 = swift_allocObject();
      *(v95 + 16) = v94;
      *(v95 + 24) = v205;
      *(v95 + 40) = v223;
      v96 = __swift_project_boxed_opaque_existential_1(v231, *(v231 + 3));
      MEMORY[0x1EEE9AC00](v96, v97);
      MEMORY[0x1EEE9AC00](v98, v99);
      v100 = v180;
      *(&v179 - 4) = sub_1D615B4A4;
      *(&v179 - 3) = v100;
      v177 = sub_1D6708C30;
      v178 = v93;
      v102 = sub_1D5D2F7A4(v67, sub_1D615B49C, v101, sub_1D615B4A4, (&v179 - 6));
      v106 = v102;

      if (v106)
      {
        sub_1D5D4A808();
        sub_1D72647EC();
        v74 = v195;
        v68 = v196;
        v67 = v197;
        v107 = v198;
        v204 = 0;

        v73 = v194;
        v76 = v107;
      }

      else
      {
        v204 = 0;

        v73 = v194;
        v74 = v195;
        v68 = v196;
        v67 = v197;
        v76 = v198;
      }
    }

    else
    {
      v204 = 0;

      v76 = v69;
    }

    sub_1D5D2CFE8(v67, type metadata accessor for FormatVersionRequirement);
    v77 = v190;
    v76(v190, v200, v68);
    swift_storeEnumTagMultiPayload();
    v205 = xmmword_1D7297410;
    v212 = xmmword_1D7297410;
    LOBYTE(v213) = 0;
    LOBYTE(v206) = 0;
    v78 = swift_allocObject();
    v80 = v78;
    *(v78 + 16) = v205;
    *(v78 + 32) = v206;
    *(v78 + 40) = v74;
    *(v78 + 48) = v73;
    if (v193)
    {
      v197 = &v179;
      *&v206 = v193;
      MEMORY[0x1EEE9AC00](v78, v79);
      *(&v179 - 4) = sub_1D5B4AA6C;
      *(&v179 - 3) = 0;
      v177 = sub_1D6708C30;
      v178 = v80;
      LOBYTE(v223) = 0;
      v81 = swift_allocObject();
      *(v81 + 16) = v205;
      *(v81 + 32) = v223;
      *(v81 + 40) = v74;
      *(v81 + 48) = v73;
      swift_retain_n();

      v82 = sub_1D72647CC();
      LOBYTE(v223) = 0;
      v83 = swift_allocObject();
      *(v83 + 16) = v82;
      *(v83 + 24) = v205;
      *(v83 + 40) = v223;
      v84 = __swift_project_boxed_opaque_existential_1(v231, *(v231 + 3));
      MEMORY[0x1EEE9AC00](v84, v85);
      MEMORY[0x1EEE9AC00](v86, v87);
      *(&v179 - 4) = sub_1D615B4A4;
      *(&v179 - 3) = (&v179 - 6);
      v177 = sub_1D6708C30;
      v178 = v81;
      v88 = v204;
      v90 = sub_1D5D2F7A4(v77, sub_1D615B49C, v89, sub_1D615B4A4, (&v179 - 6));
      if (v88)
      {

        v91 = v181;
        sub_1D5D2CFE8(v77, type metadata accessor for FormatVersionRequirement);
        v66 = v91;
        return sub_1D5D2CFE8(v66, sub_1D5D4A774);
      }

      v108 = v90;

      if (v108)
      {
        sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
        sub_1D66612AC();
        v105 = v181;
        sub_1D72647EC();
        v104 = v196;
        v76 = v198;
        v204 = 0;

        sub_1D5D2CFE8(v190, type metadata accessor for FormatVersionRequirement);
        v73 = v194;
        v103 = v195;
        v76(v191, v200, v104);
      }

      else
      {
        v204 = 0;

        sub_1D5D2CFE8(v77, type metadata accessor for FormatVersionRequirement);
        v105 = v181;
        v73 = v194;
        v103 = v195;
        v104 = v196;
        v76 = v198;
        v198(v191, v200, v196);
      }
    }

    else
    {

      sub_1D5D2CFE8(v77, type metadata accessor for FormatVersionRequirement);

      v103 = v74;
      v104 = v68;
      v105 = v181;
      v76(v191, v200, v68);
    }

    swift_storeEnumTagMultiPayload();
    v205 = xmmword_1D72BAA60;
    v223 = xmmword_1D72BAA60;
    v224 = 0;
    LOBYTE(v212) = 0;
    v109 = swift_allocObject();
    v111 = v109;
    *(v109 + 16) = v205;
    *(v109 + 32) = v212;
    *(v109 + 40) = v103;
    *(v109 + 48) = v73;
    v112 = v188;
    if (v188 <= 0xFD)
    {
      v197 = &v179;
      v134 = v185;
      v133 = v186;
      v220 = v186;
      v221 = v185;
      v222 = v188;
      MEMORY[0x1EEE9AC00](v109, v110);
      v193 = &v179 - 6;
      *(&v179 - 4) = sub_1D5B4AA6C;
      *(&v179 - 3) = 0;
      v177 = sub_1D6708C30;
      v178 = v111;
      LOBYTE(v212) = 0;
      v135 = swift_allocObject();
      *(v135 + 16) = v205;
      *(v135 + 32) = v212;
      *(v135 + 40) = v103;
      *(v135 + 48) = v73;
      swift_retain_n();
      sub_1D5ED34B0(v133, v134, v112);
      v136 = sub_1D72647CC();
      LOBYTE(v212) = 0;
      v137 = swift_allocObject();
      *(v137 + 16) = v136;
      *(v137 + 24) = v205;
      *(v137 + 40) = v212;
      v138 = __swift_project_boxed_opaque_existential_1(v231, *(v231 + 3));
      MEMORY[0x1EEE9AC00](v138, v139);
      MEMORY[0x1EEE9AC00](v140, v141);
      v142 = v193;
      *(&v179 - 4) = sub_1D615B4A4;
      *(&v179 - 3) = v142;
      v177 = sub_1D6708C30;
      v178 = v135;
      v143 = v191;
      v144 = v204;
      v146 = sub_1D5D2F7A4(v191, sub_1D615B49C, v145, sub_1D615B4A4, (&v179 - 6));
      if (v144)
      {

        v105 = v181;
        sub_1D5ED34A0(v220, v221, v222);
        goto LABEL_30;
      }

      v157 = v146;

      if (v157)
      {
        sub_1D6661258();
        sub_1D72647EC();
        v104 = v196;
        v76 = v198;
        v204 = 0;

        sub_1D5ED34A0(v220, v221, v222);
        sub_1D5D2CFE8(v191, type metadata accessor for FormatVersionRequirement);
        v113 = v187;
        v73 = v194;
        v103 = v195;
        v105 = v181;
        v76(v189, v200, v104);
      }

      else
      {
        v204 = 0;

        sub_1D5ED34A0(v220, v221, v222);
        sub_1D5D2CFE8(v143, type metadata accessor for FormatVersionRequirement);
        v105 = v181;
        v113 = v187;
        v73 = v194;
        v103 = v195;
        v104 = v196;
        v76 = v198;
        v198(v189, v200, v196);
      }
    }

    else
    {

      sub_1D5D2CFE8(v191, type metadata accessor for FormatVersionRequirement);

      v113 = v187;
      v76(v189, v200, v104);
    }

    swift_storeEnumTagMultiPayload();
    v205 = xmmword_1D72BAA70;
    v218 = xmmword_1D72BAA70;
    v219 = 0;
    LOBYTE(v212) = 0;
    v114 = swift_allocObject();
    v116 = v114;
    *(v114 + 16) = v205;
    *(v114 + 32) = v212;
    *(v114 + 40) = v103;
    *(v114 + 48) = v73;
    if (v230 == 254)
    {

LABEL_23:
      sub_1D5D2CFE8(v189, type metadata accessor for FormatVersionRequirement);
      v76(v113, v200, v104);
      swift_storeEnumTagMultiPayload();
      v205 = xmmword_1D72BAA80;
      v212 = xmmword_1D72BAA80;
      LOBYTE(v213) = 0;
      LOBYTE(v206) = 0;
      v117 = swift_allocObject();
      v119 = v117;
      *(v117 + 16) = v205;
      *(v117 + 32) = v206;
      *(v117 + 40) = v103;
      *(v117 + 48) = v73;
      if (v184)
      {
        v200 = &v179;
        *&v206 = v184;
        MEMORY[0x1EEE9AC00](v117, v118);
        v197 = &v179 - 6;
        *(&v179 - 4) = sub_1D5B4AA6C;
        *(&v179 - 3) = 0;
        v177 = sub_1D6708C30;
        v178 = v119;
        LOBYTE(v218) = 0;
        v120 = swift_allocObject();
        *(v120 + 16) = v205;
        *(v120 + 32) = v218;
        *(v120 + 40) = v103;
        *(v120 + 48) = v73;
        swift_retain_n();

        v121 = sub_1D72647CC();
        LOBYTE(v218) = 0;
        v122 = swift_allocObject();
        *(v122 + 16) = v121;
        *(v122 + 24) = v205;
        *(v122 + 40) = v218;
        v123 = __swift_project_boxed_opaque_existential_1(v231, *(v231 + 3));
        MEMORY[0x1EEE9AC00](v123, v124);
        MEMORY[0x1EEE9AC00](v125, v126);
        v127 = v197;
        *(&v179 - 4) = sub_1D615B4A4;
        *(&v179 - 3) = v127;
        v177 = sub_1D6708C30;
        v178 = v120;
        v128 = v204;
        v130 = sub_1D5D2F7A4(v113, sub_1D615B49C, v129, sub_1D615B4A4, (&v179 - 6));
        v131 = v128;
        if (v128)
        {

          v132 = v181;

          sub_1D5D2CFE8(v187, type metadata accessor for FormatVersionRequirement);
          v66 = v132;
          return sub_1D5D2CFE8(v66, sub_1D5D4A774);
        }

        v159 = v130;

        if (v159)
        {
          sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
          sub_1D66582DC();
          v160 = v181;
          sub_1D72647EC();
          v104 = v196;

          sub_1D5D2CFE8(v187, type metadata accessor for FormatVersionRequirement);
          v73 = v194;
          v105 = v160;
        }

        else
        {

          sub_1D5D2CFE8(v187, type metadata accessor for FormatVersionRequirement);
          v105 = v181;
          v73 = v194;
          v104 = v196;
        }
      }

      else
      {

        sub_1D5D2CFE8(v113, type metadata accessor for FormatVersionRequirement);

        v131 = v204;
      }

      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v161 = __swift_project_value_buffer(v104, qword_1EDFFCDE0);
      v162 = v183;
      v198(v183, v161, v104);
      swift_storeEnumTagMultiPayload();
      v205 = xmmword_1D72BAA90;
      v212 = xmmword_1D72BAA90;
      LOBYTE(v213) = 0;
      LOBYTE(v206) = 0;
      v163 = swift_allocObject();
      v165 = v163;
      *(v163 + 16) = v205;
      *(v163 + 32) = v206;
      v166 = v195;
      *(v163 + 40) = v195;
      *(v163 + 48) = v73;
      if (v182 == 2)
      {

        v167 = v162;
      }

      else
      {
        v204 = &v179;
        LOBYTE(v206) = v182 & 1;
        MEMORY[0x1EEE9AC00](v163, v164);
        v201 = &v179 - 6;
        *(&v179 - 4) = sub_1D5B4AA6C;
        *(&v179 - 3) = 0;
        v177 = sub_1D6708C30;
        v178 = v165;
        LOBYTE(v218) = 0;
        v168 = swift_allocObject();
        *(v168 + 16) = v205;
        *(v168 + 32) = v218;
        *(v168 + 40) = v166;
        *(v168 + 48) = v73;
        swift_retain_n();
        v169 = sub_1D72647CC();
        LOBYTE(v218) = 0;
        v170 = swift_allocObject();
        *(v170 + 16) = v169;
        *(v170 + 24) = v205;
        *(v170 + 40) = v218;
        v171 = __swift_project_boxed_opaque_existential_1(v231, *(v231 + 3));
        MEMORY[0x1EEE9AC00](v171, v172);
        MEMORY[0x1EEE9AC00](v173, v174);
        v175 = v201;
        *(&v179 - 4) = sub_1D615B4A4;
        *(&v179 - 3) = v175;
        v177 = sub_1D66D2FA0;
        v178 = v168;
        sub_1D5D2F7A4(v162, sub_1D615B49C, v176, sub_1D615B4A4, (&v179 - 6));
        if (v131)
        {
          sub_1D5D2CFE8(v162, type metadata accessor for FormatVersionRequirement);

          v66 = v181;
          return sub_1D5D2CFE8(v66, sub_1D5D4A774);
        }

        v105 = v181;
        sub_1D72647EC();
        v167 = v183;
      }

      sub_1D5D2CFE8(v167, type metadata accessor for FormatVersionRequirement);

LABEL_31:
      v66 = v105;
      return sub_1D5D2CFE8(v66, sub_1D5D4A774);
    }

    v197 = &v179;
    v214 = v227;
    v215 = v228;
    v216 = v229;
    v217 = v230;
    v212 = v225;
    v213 = v226;
    MEMORY[0x1EEE9AC00](v114, v115);
    *(&v179 - 4) = sub_1D5B4AA6C;
    *(&v179 - 3) = 0;
    v177 = sub_1D6708C30;
    v178 = v116;
    LOBYTE(v206) = 0;
    v147 = swift_allocObject();
    *(v147 + 16) = v205;
    *(v147 + 32) = v206;
    *(v147 + 40) = v103;
    *(v147 + 48) = v73;
    swift_retain_n();
    sub_1D5D355B8(&v225, &v206, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
    v148 = sub_1D72647CC();
    LOBYTE(v206) = 0;
    v149 = swift_allocObject();
    *(v149 + 16) = v148;
    *(v149 + 24) = v205;
    *(v149 + 40) = v206;
    v150 = __swift_project_boxed_opaque_existential_1(v231, *(v231 + 3));
    MEMORY[0x1EEE9AC00](v150, v151);
    MEMORY[0x1EEE9AC00](v152, v153);
    *(&v179 - 4) = sub_1D615B4A4;
    *(&v179 - 3) = (&v179 - 6);
    v177 = sub_1D6708C30;
    v178 = v147;
    v143 = v189;
    v154 = v204;
    v156 = sub_1D5D2F7A4(v189, sub_1D615B49C, v155, sub_1D615B4A4, (&v179 - 6));
    if (!v154)
    {
      v158 = v156;

      if (v158)
      {
        sub_1D6661204();
        sub_1D72647EC();
        v104 = v196;
        v76 = v198;
        v204 = 0;

        v208 = v214;
        v209 = v215;
        v210 = v216;
        v211 = v217;
        v206 = v212;
        v207 = v213;
        sub_1D601144C(&v206);
        v113 = v187;
        v73 = v194;
        v103 = v195;
        v105 = v181;
      }

      else
      {
        v204 = 0;

        v208 = v214;
        v209 = v215;
        v210 = v216;
        v211 = v217;
        v206 = v212;
        v207 = v213;
        sub_1D601144C(&v206);
        v113 = v187;
        v73 = v194;
        v103 = v195;
        v104 = v196;
        v76 = v198;
      }

      goto LABEL_23;
    }

    v208 = v214;
    v209 = v215;
    v210 = v216;
    v211 = v217;
    v206 = v212;
    v207 = v213;
    sub_1D601144C(&v206);
LABEL_30:
    sub_1D5D2CFE8(v143, type metadata accessor for FormatVersionRequirement);
    goto LABEL_31;
  }

  sub_1D5D2CFE8(v63, type metadata accessor for FormatVersionRequirement);

  v66 = v57;
  return sub_1D5D2CFE8(v66, sub_1D5D4A774);
}

void sub_1D5D4A6E0()
{
  if (!qword_1EDF03460)
  {
    sub_1D5C4A640();
    sub_1D5B58B84(&qword_1EDF25428, sub_1D5C4A640);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03460);
    }
  }
}

void sub_1D5D4A774()
{
  if (!qword_1EDF08D40)
  {
    sub_1D5D4A6E0();
    sub_1D5B58B84(&qword_1EDF03468, sub_1D5D4A6E0);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08D40);
    }
  }
}

unint64_t sub_1D5D4A808()
{
  result = qword_1EDF11588;
  if (!qword_1EDF11588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11588);
  }

  return result;
}

uint64_t FormatBackground.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v98 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v97 = &v94 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v94 = &v94 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v95 = &v94 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v96 = &v94 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v94 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v94 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v94 - v29;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v34 = &v94 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *v2;
  v36 = a1[3];
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v36);
  v38 = sub_1D5C30408();
  v108 = v34;
  sub_1D5D2EE70(&type metadata for FormatBackground, &type metadata for FormatCodingKeys, v39, v36, &type metadata for FormatBackground, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v37, v34, v38, &off_1F51F6C78);
  v40 = v35 >> 61;
  if ((v35 >> 61) <= 3)
  {
    if (v40 <= 1)
    {
      if (v40)
      {
        v65 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v100[0] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v100[1] = v65;
        v66 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
        v100[2] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
        v100[3] = v66;
        sub_1D6086694(v100, v99);
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v67 = sub_1D725BD1C();
        v68 = __swift_project_value_buffer(v67, qword_1EDFFCD30);
        (*(*(v67 - 8) + 16))(v26, v68, v67);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v45 = v108;
        sub_1D63B63D4(1, v100, v26);
        sub_1D60866F0(v100);
        v46 = v26;
      }

      else
      {
        v41 = *(v35 + 16);
        v42 = qword_1EDF31EB0;

        if (v42 != -1)
        {
          swift_once();
        }

        v43 = sub_1D725BD1C();
        v44 = __swift_project_value_buffer(v43, qword_1EDFFCD30);
        (*(*(v43 - 8) + 16))(v30, v44, v43);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v45 = v108;
        sub_1D5D4B368(0, v41, v30);

        v46 = v30;
      }

      goto LABEL_32;
    }

    if (v40 == 2)
    {
      v53 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
      v101[4] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      v101[5] = v53;
      v54 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
      v101[6] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
      v101[7] = v54;
      v55 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v101[0] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v101[1] = v55;
      v56 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v101[2] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v101[3] = v56;
      sub_1D60865E4(v101, v99);
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v57 = sub_1D725BD1C();
      v58 = __swift_project_value_buffer(v57, qword_1EDFFCCE8);
      (*(*(v57 - 8) + 16))(v22, v58, v57);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v45 = v108;
      sub_1D63B6574(2, v101, v22);
      sub_1D6086640(v101);
    }

    else
    {
      v75 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D5B58478();
      v77 = *(v76 + 48);
      v78 = v96;
      v79 = &v96[*(v76 + 64)];
      sub_1D6086744(v75);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v80 = sub_1D725BD1C();
      v81 = __swift_project_value_buffer(v80, qword_1EDFFCD30);
      v82 = *(*(v80 - 8) + 16);
      v82(v78, v81, v80);
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v83 = __swift_project_value_buffer(v80, qword_1EDFFCE68);
      v82(v78 + v77, v83, v80);
      type metadata accessor for FormatVersionRequirement.Value(0);
      *v79 = 0;
      *(v79 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v45 = v108;
      sub_1D63B6724(3, v75, v78);
      sub_1D6086768(v75);
      v22 = v78;
    }

LABEL_31:
    v46 = v22;
LABEL_32:
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);
    v84 = v45;
    return sub_1D5D2CFE8(v84, sub_1D5D30DC4);
  }

  if (v40 <= 5)
  {
    if (v40 == 4)
    {
      v47 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x90);
      v102[7] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
      v102[8] = v47;
      v103[0] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0xA0);
      *(v103 + 9) = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0xA9);
      v48 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      v102[3] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v102[4] = v48;
      v49 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
      v102[5] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
      v102[6] = v49;
      v50 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v102[0] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v102[1] = v50;
      v102[2] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      sub_1D62B4F54(v102, v99);
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v51 = sub_1D725BD1C();
      v52 = __swift_project_value_buffer(v51, qword_1EDFFCD68);
      v22 = v95;
      (*(*(v51 - 8) + 16))(v95, v52, v51);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v45 = v108;
      sub_1D63B68B8(4, v102, v22);
      sub_1D62B4FB0(v102);
    }

    else
    {
      v69 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v70 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v71 = qword_1EDF31F10;

      if (v71 != -1)
      {
        swift_once();
      }

      v72 = sub_1D725BD1C();
      v73 = __swift_project_value_buffer(v72, qword_1EDFFCDF8);
      v74 = v94;
      (*(*(v72 - 8) + 16))(v94, v73, v72);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v45 = v108;
      sub_1D63B6A80(5, v69, v70, v74);

      v22 = v74;
    }

    goto LABEL_31;
  }

  if (v40 == 6)
  {
    v59 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
    v104[6] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
    v104[7] = v59;
    v104[8] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x90);
    v105 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0xA0);
    v60 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
    v104[2] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
    v104[3] = v60;
    v61 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
    v104[4] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
    v104[5] = v61;
    v62 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v104[0] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v104[1] = v62;
    sub_1D62B4EA4(v104, v99);
    if (qword_1EDF31EF8 != -1)
    {
      swift_once();
    }

    v63 = sub_1D725BD1C();
    v64 = __swift_project_value_buffer(v63, qword_1EDFFCDC8);
    v22 = v97;
    (*(*(v63 - 8) + 16))(v97, v64, v63);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v45 = v108;
    sub_1D63B6C14(6, v104, v22);
    sub_1D62B4F00(v104);
    goto LABEL_31;
  }

  v86 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x90);
  v106[7] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
  v106[8] = v86;
  v106[9] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0xA0);
  v107 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0xB0);
  v87 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
  v106[3] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
  v106[4] = v87;
  v88 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
  v106[5] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
  v106[6] = v88;
  v89 = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
  v106[0] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v106[1] = v89;
  v106[2] = *((v35 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
  sub_1D60864C0(v106, v99);
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v90 = sub_1D725BD1C();
  v91 = __swift_project_value_buffer(v90, qword_1EDFFCD98);
  v92 = v98;
  (*(*(v90 - 8) + 16))(v98, v91, v90);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v93 = v108;
  sub_1D63B6DDC(7, v106, v92);
  sub_1D60113F8(v106);
  sub_1D5D2CFE8(v92, type metadata accessor for FormatVersionRequirement);
  v84 = v93;
  return sub_1D5D2CFE8(v84, sub_1D5D30DC4);
}

uint64_t sub_1D5D4B368(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D670927C;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D5D4B500();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D5B55CBC();
    sub_1D72647EC();
  }
}

unint64_t sub_1D5D4B500()
{
  result = qword_1EDF11590;
  if (!qword_1EDF11590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11590);
  }

  return result;
}

void sub_1D5D4B5A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x726F6C6F63;
  v5 = 0xE400000000000000;
  v6 = 1633905005;
  if (v2 != 6)
  {
    v6 = 0x66456C6175736976;
    v5 = 0xEC00000074636566;
  }

  v7 = 0x74696C7073;
  if (v2 != 4)
  {
    v7 = 0x6567616D69;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = 0xE500000000000000;
  }

  v8 = 0xEE00746E65696461;
  v9 = 0x72476C6169646172;
  if (v2 != 2)
  {
    v9 = 0x656E696873;
    v8 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x746E656964617267;
    v3 = 0xE800000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 3u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_1D5D4B704(uint64_t result)
{
  if (*(result + 16))
  {
    sub_1D5D2D628(0, &qword_1EDF02630, sub_1D5C2B194, &type metadata for FormatPackageInventory.CodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D2D690(&qword_1EDF02638, &qword_1EDF02630, sub_1D5C2B194, &type metadata for FormatPackageInventory.CodingKeys);
    sub_1D5D4B80C();

    sub_1D72647EC();
  }

  return result;
}

unint64_t sub_1D5D4B80C()
{
  result = qword_1EDF23410;
  if (!qword_1EDF23410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF23410);
  }

  return result;
}

uint64_t FormatDecorationCollection.encode(to:)(void *a1)
{
  sub_1D5C8CBC8(0, &qword_1EDF025E0, sub_1D5C4C500, &type metadata for FormatDecorationCollection.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C4C500();

  sub_1D7264B5C();
  v11[3] = v9;
  sub_1D5C8CC30();
  sub_1D5C4C558(&qword_1EDF05130, qword_1EDF12460);
  sub_1D726443C();

  return (*(v5 + 8))(v8, v4);
}

uint64_t FeedLayoutSolverOptions.PluginOptions.init(layoutOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D725E23C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1D5D4BAD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725E23C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D5D4BB4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

NewsFeed::FeedLayoutSolverOptions::CoverOptions __swiftcall FeedLayoutSolverOptions.CoverOptions.init(alwaysShowTitle:alwaysIncludeBottomInset:)(Swift::Bool alwaysShowTitle, Swift::Bool alwaysIncludeBottomInset)
{
  *v2 = alwaysShowTitle;
  v2[1] = alwaysIncludeBottomInset;
  result.alwaysShowTitle = alwaysShowTitle;
  return result;
}

void *sub_1D5D4BBA8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1D5D4BBC8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t FeedLayoutSolverOptions.init(blueprintRunOptions:cursorTracking:headlineOptions:categoryOptions:coverOptions:issueStripOptions:pluginOptions:layoutCacheOptions:traits:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10)
{
  v11 = *a2;
  v12 = a2[1];
  v13 = *(a2 + 16);
  v14 = *a3;
  v15 = a3[1];
  v16 = a3[2];
  v17 = *a4;
  v18 = a4[1];
  v24 = a5[1];
  v25 = *a5;
  v23 = *a6;
  v27 = a8[1];
  v28 = *a8;
  v29 = *a10;
  v19 = type metadata accessor for FeedLayoutSolverOptions(0);
  *(a9 + v19[11]) = a1;
  *a9 = v11;
  *(a9 + 8) = v12;
  *(a9 + 16) = v13;
  *(a9 + 17) = v14;
  *(a9 + 18) = v15;
  *(a9 + 19) = v16;
  *(a9 + 20) = v17;
  *(a9 + 21) = v18;
  *(a9 + 22) = v25;
  *(a9 + 23) = v24;
  *(a9 + 24) = v23;
  result = sub_1D5D4BD04(a7, a9 + v19[9]);
  v21 = (a9 + v19[10]);
  *v21 = v28;
  v21[1] = v27;
  *(a9 + v19[13]) = v29;
  v22 = a9 + v19[12];
  *v22 = 0;
  *(v22 + 8) = 1;
  return result;
}

uint64_t sub_1D5D4BD04(uint64_t a1, uint64_t a2)
{
  sub_1D5B7F4C8(0, &qword_1EDF42AD0, type metadata accessor for FeedLayoutSolverOptions.PluginOptions);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5D4BD84(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_1D5D4BDE0(a1, a2);
  v5 = *(v3 + 96);
  type metadata accessor for FeedLayoutContext();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;

  return v6;
}

uint64_t sub_1D5D4BDE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v24[1] = a2;
  v4 = sub_1D725A19C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7259C8C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v24 - v16;
  sub_1D7259CBC();
  sub_1D7259C7C();
  sub_1D5D4C05C();
  v18 = sub_1D7263B0C();
  v19 = *(v10 + 8);
  v19(v13, v9);
  v19(v17, v9);
  v20 = v3[10];
  v21 = v3[11];
  __swift_project_boxed_opaque_existential_1(v3 + 7, v20);
  LOBYTE(v25[0]) = (v18 & 1) != 0;
  sub_1D7259EDC();
  (*(v21 + 8))(v26, v25, v8, v20, v21);
  (*(v5 + 8))(v8, v4);
  sub_1D5B68374((v3 + 2), v25);
  type metadata accessor for FeedLayoutStylerFactory();
  v22 = swift_allocObject();
  sub_1D5B63F14(v26, v22 + 16);
  sub_1D5B63F14(v25, v22 + 56);
  *(v22 + 96) = 0x3FF0000000000000;
  return v22;
}

unint64_t sub_1D5D4C05C()
{
  result = qword_1EDF3C0A8;
  if (!qword_1EDF3C0A8)
  {
    sub_1D7259C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C0A8);
  }

  return result;
}

void sub_1D5D4C0B4(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1D725A19C();
  v7 = *(v6 - 8);
  v10 = MEMORY[0x1EEE9AC00](v6, v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*a1)
  {
    v13 = &type metadata for DefaultFontBook;
    v14 = &protocol witness table for DefaultFontBook;
    goto LABEL_5;
  }

  if (*a1 == 1)
  {
    v13 = &type metadata for CondensedFontBook;
    v14 = &protocol witness table for CondensedFontBook;
LABEL_5:
    a3[3] = v13;
    a3[4] = v14;
    return;
  }

  v15 = v9;
  (*(v7 + 16))(v12, a2, v9, v10);
  v16 = type metadata accessor for ScalingFontBook();
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + OBJC_IVAR____TtC8NewsFeed15ScalingFontBook_contentResizeScale, v12, v15);
  a3[3] = v16;
  a3[4] = &protocol witness table for ScalingFontBook;
  *a3 = v17;
}

uint64_t sub_1D5D4C214(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D4C27C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D5BFCA6C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t FeedGroupBindingOptions.init(formatFeedGroup:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FormatFeedGroup();
  v5 = a1;
  v6 = a1 + v4[12];
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = v5 + v4[14];
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v8)
  {
    v12 = v7;
  }

  if (v11)
  {
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v12 >= v10)
  {
    goto LABEL_8;
  }

  v7 = 0;
  v10 = 0;
  LOBYTE(v8) = 1;
  v11 = 1;
LABEL_8:
  v13 = v5 + v4[13];
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = v5 + v4[15];
  v17 = *v16;
  v18 = *(v16 + 8);
  result = sub_1D5D4C448(v5);
  v20 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v15)
  {
    v20 = v14;
  }

  if (v18)
  {
    if (v20 < 0)
    {
      goto LABEL_14;
    }
  }

  else if (v20 < v17)
  {
LABEL_14:
    v14 = 0;
    v17 = 0;
    LOBYTE(v15) = 1;
    v18 = 1;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  *(a2 + 48) = v17;
  *(a2 + 56) = v18;
  return result;
}

uint64_t sub_1D5D4C448(uint64_t a1)
{
  v2 = type metadata accessor for FormatFeedGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5D4C4A4(uint64_t result, int a2, int a3)
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

uint64_t BlueprintSection<>.mapToRegions(content:additionalGroupItems:additionalGroupOptions:feedDescriptor:feedGroupBindingOptions:feedGroupContextIdentifier:feedGroupRevision:nativeAdContext:pluginModels:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v33 = a8;
  v35 = a7;
  v36 = a6;
  v38 = a4;
  v37 = a2;
  v34 = a1;
  v31 = a10;
  v30 = a9;
  v29 = a12;
  sub_1D725CE8C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v32 = sub_1D725B15C();
  v14 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v15);
  v17 = &v29 - v16;
  v19 = *a3;
  v18 = a3[1];
  v20 = a5[1];
  v40[0] = *a5;
  v40[1] = v20;
  v41[0] = a5[2];
  *(v41 + 10) = *(a5 + 42);
  type metadata accessor for FeedGroupRegionMapper();
  v21 = sub_1D725D62C();
  v23 = v22;
  sub_1D725D63C();
  v24 = v29;
  BlueprintSection<>.layoutOrder.getter(a11, v29);
  v44[0] = v44[1];
  BlueprintSection<>.feedGroupDebug.getter(a11, v24);
  v42[0] = v19;
  v42[1] = v18;
  v25 = v30[1];
  v39[0] = *v30;
  v39[1] = v25;
  *(&v28 + 1) = v35;
  *&v28 = v36;
  v26 = sub_1D5D4C808(v34, v21, v23, v17, v44, v43, v38, v37, v42, v40, v28, v33, v39, v31);

  sub_1D5BCA9EC(v43, sub_1D5D6013C);
  (*(v14 + 8))(v17, v32);
  return v26;
}

uint64_t sub_1D5D4C808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, _OWORD *a10, __int128 a11, uint64_t a12, __int128 *a13, uint64_t a14)
{
  v19 = *a5;
  v21 = *a9;
  v20 = a9[1];
  v22 = a10[1];
  v47[0] = *a10;
  v47[1] = v22;
  v48[0] = a10[2];
  *(v48 + 10) = *(a10 + 42);
  v23 = *(a1 + *(type metadata accessor for FormatContent.Resolved() + 36));
  v30 = a14;
  v31 = a2;
  v32 = a3;
  v33 = a6;
  v34 = v26;
  v35 = a1;
  v36 = a4;
  v37 = v19;
  v38 = a7;
  v39 = a8;
  v40 = v21;
  v41 = v20;
  v42 = v47;
  v43 = a11;
  v44 = a12;
  v24 = a13[1];
  v45 = *a13;
  v46 = v24;
  return sub_1D5D4C914(sub_1D5D4CDB0, v29, v23);
}

uint64_t sub_1D5D4C914(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1D7263ECC();
    v9 = (a3 + 32);
    for (i = v6 - 1; ; --i)
    {
      v11 = v9[1];
      v12 = v9[3];
      v27 = v9[2];
      v28 = v12;
      v13 = v9[3];
      v29 = v9[4];
      v14 = v9[1];
      v26[0] = *v9;
      v26[1] = v14;
      v22 = v27;
      v23 = v13;
      v24 = v9[4];
      v20 = v26[0];
      v21 = v11;
      sub_1D5CE9930(v26, &v15);
      a1(&v25, &v20);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v17 = v22;
      v18 = v23;
      v19 = v24;
      v15 = v20;
      v16 = v21;
      sub_1D5CEC67C(&v15);
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      if (!i)
      {
        return v30;
      }

      v9 += 5;
    }

    v17 = v22;
    v18 = v23;
    v19 = v24;
    v15 = v20;
    v16 = v21;
    sub_1D5CEC67C(&v15);

    __break(1u);
  }

  return result;
}

uint64_t sub_1D5D4CA7C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, char a9, void *a10, void *a11, uint64_t a12, uint64_t a13, __int128 *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v63 = a3;
  v21 = a8;
  v22 = a1[1];
  v60 = *a1;
  v61 = v22;
  v23 = a1[3];
  *v62 = a1[2];
  *&v62[16] = v23;
  *&v62[32] = a1[4];
  v24 = v60;
  v25 = *(&v61 + 1);
  v45 = v61;
  v46 = *&v62[24];
  v47 = *&v62[8];
  v26 = *v62;
  v27 = *&v62[40];
  if ((*v62 & 0x8000000000000000) != 0)
  {
    v26 = *v62 & 0x7FFFFFFFFFFFFFFFLL;
    *&v52[0] = a2;
    v32 = a1[3];
    *v59 = a1[2];
    *&v59[16] = v32;
    *&v59[32] = a1[4];
    v33 = a1[1];
    v57 = *a1;
    v58 = v33;
    *v59 &= ~0x8000000000000000;
    sub_1D5CB7180(&v57, v56);
    sub_1D5D1D9FC(0);
    sub_1D5EF1E4C(&qword_1EDF05320, sub_1D5D1D9FC);
    sub_1D5EF1E4C(&qword_1EDF17310, MEMORY[0x1E69D7608]);
    v34 = sub_1D72623BC();
    if (*(v34 + 16))
    {

      v35 = sub_1D5B69D90(v24, *(&v24 + 1));
      v37 = v36;

      if (v37)
      {
        v38 = *(*(v34 + 56) + 8 * v35);

        sub_1D5CEB7B8(a5, v56, sub_1D5D6013C);
        type metadata accessor for FeedGroupRegion();
        swift_allocObject();

        v39 = FeedGroupRegion.init(groupIdentifier:pluginModel:feedGroupDebug:)(v63, a4, v38, v56);
        result = sub_1D5CEC67C(&v60);
        *a8 = v39;
        return result;
      }
    }

    v21 = a8;
    v31 = a4;
  }

  else
  {
    v28 = a1[3];
    *v59 = a1[2];
    *&v59[16] = v28;
    *&v59[32] = a1[4];
    v29 = a1[1];
    v57 = *a1;
    v58 = v29;
    *v59 &= ~0x8000000000000000;
    sub_1D5CB7180(&v57, v56);
    v31 = a4;
  }

  v57 = v24;
  *&v58 = v45;
  *(&v58 + 1) = v25;
  *&v59[8] = v47;
  *&v59[24] = v46;
  *v59 = v26;
  *&v59[40] = v27;
  v56[2] = *v59;
  v56[3] = *&v59[16];
  v56[4] = *&v59[32];
  v56[0] = v24;
  v56[1] = v58;
  v55 = a9 & 1;
  v54[0] = a12;
  v54[1] = a13;
  v41 = a14[1];
  v52[0] = *a14;
  v52[1] = v41;
  v53[0] = a14[2];
  *(v53 + 10) = *(a14 + 42);
  v51[0] = a18;
  v51[1] = a19;
  v51[2] = a20;
  v51[3] = a21;
  v42 = sub_1D5D4CE18(a6, v56, v63, v31, a7, &v55, a5, a10, a11, v54, v52, a15, a16, a17, v51);
  result = sub_1D5CB71DC(&v57);
  *v21 = v42;
  return result;
}

uint64_t sub_1D5D4CE18(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7, void *a8, void *a9, uint64_t *a10, __int128 *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = v15;
  v104 = a8;
  v91 = a7;
  v96 = a1;
  v97 = a5;
  v95 = a4;
  v106 = a3;
  v103 = a9;
  v94 = type metadata accessor for FormatContent.Resolved();
  v88 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v19);
  v89 = v20;
  v90 = &v85[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21, v22);
  v87 = &v85[-v23];
  v24 = a2[3];
  v126 = a2[2];
  v127 = v24;
  v25 = a2[4];
  v26 = a2[1];
  v124 = *a2;
  v125 = v26;
  v86 = *a6;
  v27 = *a10;
  v101 = a10[1];
  v102 = v27;
  v28 = *a11;
  v29 = a11[1];
  v128 = v25;
  v129 = v28;
  v30 = a11[2];
  v130 = v29;
  v131[0] = v30;
  *(v131 + 10) = *(a11 + 42);
  v31 = *a15;
  v32 = *(a15 + 8);
  v34 = *(a15 + 16);
  v33 = *(a15 + 24);
  v35 = v16[11];
  v108 = v16[10];
  v109 = v35;
  v105 = v35;
  v110 = v16[12];
  v98 = v110;
  v99 = v108;
  v36 = sub_1D725CE8C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v93 = v36;
  v37 = sub_1D725B15C();
  WitnessTable = swift_getWitnessTable();
  v39 = v97;
  v41 = sub_1D5B874E4(sub_1D5D4DAFC, &v107, v37, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v40);
  v42 = sub_1D5B86020(v41);

  v122[0] = v126;
  v122[1] = v127;
  v123 = v128;
  v120 = v124;
  v121 = v125;
  *v112 = v102;
  *&v112[8] = v101;
  v92 = sub_1D5D4DB4C(v96, &v120, v104, v103, v112, v39);
  v122[0] = v126;
  v122[1] = v127;
  v123 = v128;
  v120 = v124;
  v121 = v125;
  v102 = v32;
  v103 = v31;
  *v112 = v31;
  *&v112[8] = v32;
  v100 = v33;
  v101 = v34;
  *&v112[16] = v34;
  *&v112[24] = v33;
  v104 = sub_1D5D525F4(v106, v95, &v120, v39, v42, v112);
  v43 = *(&v127 + 1);
  v44 = *(*(&v127 + 1) + 16);
  if (v44)
  {
    v119 = MEMORY[0x1E69E7CC0];
    sub_1D5D565AC(0, v44, 0);
    v45 = v95;
    if (!*(v43 + 16))
    {
LABEL_15:
      __break(1u);
      v114 = *v118;
      v115 = *&v118[16];
      v116 = *&v118[32];
      v117 = *&v118[48];
      sub_1D5CB6FB4(&v114);

      __break(1u);
      return result;
    }

    v46 = 0;
    v47 = v119;
    v48 = (v43 + 32);
    v97 = v44 - 1;
    while (1)
    {
      v49 = *v48;
      v50 = v48[1];
      v51 = v48[3];
      v122[0] = v48[2];
      v122[1] = v51;
      v120 = v49;
      v121 = v50;
      v52 = v48[1];
      *v118 = *v48;
      *&v118[16] = v52;
      v53 = v48[3];
      *&v118[32] = v48[2];
      *&v118[48] = v53;
      sub_1D5CB6F58(&v120, &v114);
      sub_1D5D56700(v118, v106, v45, v104, v103, v102, v101, v100, v112, v42, v99, v105, v98);
      v113[0] = *v118;
      v113[1] = *&v118[16];
      v113[2] = *&v118[32];
      v113[3] = *&v118[48];
      sub_1D5CB6FB4(v113);
      v116 = *&v112[32];
      v117 = *&v112[48];
      v114 = *v112;
      v115 = *&v112[16];
      v119 = v47;
      v55 = *(v47 + 16);
      v54 = *(v47 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_1D5D565AC((v54 > 1), v55 + 1, 1);
        v45 = v95;
        v47 = v119;
      }

      *(v47 + 16) = v55 + 1;
      v56 = (v47 + (v55 << 6));
      v57 = v114;
      v58 = v115;
      v59 = v117;
      v56[4] = v116;
      v56[5] = v59;
      v56[2] = v57;
      v56[3] = v58;
      if (v97 == v46)
      {
        break;
      }

      v48 += 4;
      if (++v46 >= *(v43 + 16))
      {
        goto LABEL_15;
      }
    }
  }

  else
  {

    v47 = MEMORY[0x1E69E7CC0];
  }

  v60 = v91;
  v102 = a14;
  v103 = a12;
  v61 = v96;
  v62 = v96[1];
  v64 = *(&v124 + 1);
  v63 = v124;
  *&v120 = *v96;
  *(&v120 + 1) = v62;

  MEMORY[0x1DA6F9910](v63, v64);
  v65 = v120;
  v66 = v87;
  sub_1D5CEB7B8(v61, v87, type metadata accessor for FormatContent.Resolved);
  v122[0] = v126;
  v122[1] = v127;
  v123 = v128;
  v120 = v124;
  v121 = v125;
  sub_1D5CB7180(&v124, v112);
  FormatGroupLayoutFactoryModel.init(content:subgroup:)(v66, &v120, v112);
  *v118 = *v112 | 0x4000000000000000;
  *&v118[8] = *&v112[8];
  *&v118[24] = *&v112[24];
  *&v118[40] = *&v112[40];
  LOBYTE(v113[0]) = v86;
  sub_1D5CEB7B8(v60, &v114, sub_1D5D6013C);
  v67 = v90;
  sub_1D5CEB7B8(v61, v90, type metadata accessor for FormatContent.Resolved);
  v68 = (*(v88 + 80) + 16) & ~*(v88 + 80);
  v69 = (v89 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  sub_1D5CED910(v67, v70 + v68, type metadata accessor for FormatContent.Resolved);
  v71 = (v70 + v69);
  v72 = v127;
  v71[2] = v126;
  v71[3] = v72;
  v71[4] = v128;
  v73 = v125;
  *v71 = v124;
  v71[1] = v73;
  v74 = type metadata accessor for FeedGroupDebug();
  v75 = swift_allocObject();
  if (*(&v115 + 1))
  {
    sub_1D5B63F14(&v114, v75 + 16);
    *(v75 + 56) = sub_1D5EF1D08;
    *(v75 + 64) = v70;
    sub_1D5CB7180(&v124, &v120);
    v76 = &protocol witness table for FeedGroupDebug;
  }

  else
  {
    sub_1D5CB7180(&v124, &v120);

    sub_1D5BCA74C(&v114, sub_1D5D6013C);
    swift_deallocPartialClassInstance();
    v75 = 0;
    v74 = 0;
    v76 = 0;
    *(&v114 + 1) = 0;
    *&v115 = 0;
  }

  *&v114 = v75;
  *(&v115 + 1) = v74;
  *&v116 = v76;
  type metadata accessor for FeedGroupRegion();
  *(v122 + 10) = *(v131 + 10);
  v120 = v129;
  v121 = v130;
  v122[0] = v131[0];
  v77 = *(v96 + *(v94 + 48));

  v79 = sub_1D5D6021C(v78, v77);
  v111 = v105;

  v80 = v95;

  v81 = v93;
  v82 = swift_getWitnessTable();
  v83 = sub_1D5D60320(v104, v106, v80, v92, v65, *(&v65 + 1), v118, v47, v113, &v114, &v120, v79, v103, a13, v102, v81, v82);

  return v83;
}

uint64_t sub_1D5D4D5D4()
{
  v1 = type metadata accessor for FormatContent.Resolved();
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);

  v4 = v1[5];
  v5 = sub_1D725891C();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v6 = v3 + v1[16];
  v7 = type metadata accessor for FormatWebEmbed.Resolved();
  if (!(*(*(v7 - 1) + 48))(v6, 1, v7))
  {

    v8 = v6 + v7[5];

    v9 = type metadata accessor for FormatWebEmbed();
    v10 = *(v9 + 20);
    v11 = sub_1D72585BC();
    v12 = *(v11 - 8);
    v25 = *(v12 + 8);
    v25(v8 + v10, v11);
    v13 = *(v9 + 24);
    if (!(*(v12 + 48))(v8 + v13, 1, v11))
    {
      v25(v8 + v13, v11);
    }

    v14 = v6 + v7[8];
    v15 = type metadata accessor for WebEmbedDataVisualization();
    if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v16 = type metadata accessor for GenericDataVisualization();
        v25(v14 + *(v16 + 20), v11);
      }

      else
      {
      }
    }

    v17 = v7[9];
    sub_1D5B5D194();
    v19 = v18;
    v20 = *(v18 - 8);
    if (!(*(v20 + 48))(v6 + v17, 1, v18))
    {
      (*(v20 + 8))(v6 + v17, v19);
    }
  }

  v21 = v1[21];
  v22 = sub_1D72608BC();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v3 + v21, 1, v22))
  {
    (*(v23 + 8))(v3 + v21, v22);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D4DAFC@<X0>(uint64_t *a1@<X8>)
{
  sub_1D725CE8C();
  result = sub_1D725CE5C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D5D4DB4C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v303 = a6;
  v277 = a4;
  v278 = a3;
  v311 = a1;
  v274 = type metadata accessor for FeedRecipe.State();
  MEMORY[0x1EEE9AC00](v274, v9);
  v275 = &v250 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v252 = &v250 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v298 = &v250 - v16;
  v17 = *(v6 + 80);
  v304 = v6;
  v18 = *(v6 + 96);
  v301 = v17;
  v302 = v18;
  sub_1D725CE8C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v19 = sub_1D725B15C();
  sub_1D5D5046C(255);
  WitnessTable = swift_getWitnessTable();
  v21 = sub_1D7263F7C();
  swift_getWitnessTable();
  v271 = v21;
  v22 = sub_1D72640BC();
  v23 = type metadata accessor for FeedRecipe();
  swift_getWitnessTable();
  v270 = v22;
  v297 = v23;
  v272 = sub_1D7263F7C();
  v269 = *(v272 - 8);
  MEMORY[0x1EEE9AC00](v272, v24);
  v268 = &v250 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v273 = &v250 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v296 = &v250 - v31;
  v257 = type metadata accessor for WebEmbedDataVisualization();
  v255 = *(v257 - 8);
  MEMORY[0x1EEE9AC00](v257, v32);
  v250 = (&v250 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v254 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v254, v34);
  v258 = (&v250 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v256 = &v250 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v284 = &v250 - v41;
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v42 - 8, v43);
  v285 = &v250 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v300 = sub_1D72585BC();
  v286 = *(v300 - 8);
  MEMORY[0x1EEE9AC00](v300, v45);
  v299 = &v250 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5AFCC(0);
  MEMORY[0x1EEE9AC00](v47 - 8, v48);
  v280 = &v250 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v281 = type metadata accessor for FormatWebEmbed.Resolved();
  v279 = *(v281 - 8);
  MEMORY[0x1EEE9AC00](v281, v50);
  v282 = (&v250 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = type metadata accessor for FeedHeadline(0);
  v265 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v53);
  v267 = &v250 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D504A0(0);
  MEMORY[0x1EEE9AC00](v55 - 8, v56);
  v288 = (&v250 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  v276 = type metadata accessor for FeedHeadline.State(0);
  MEMORY[0x1EEE9AC00](v276, v58);
  v266 = &v250 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60, v61);
  v251 = &v250 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v289 = (&v250 - v65);
  v293 = sub_1D7263D7C();
  v292 = *(v293 - 8);
  MEMORY[0x1EEE9AC00](v293, v66);
  v291 = &v250 - v67;
  sub_1D5B69BE0(255);
  v295 = v19;
  v294 = WitnessTable;
  v68 = sub_1D7263F7C();
  swift_getWitnessTable();
  v260 = v68;
  v69 = sub_1D72640BC();
  swift_getWitnessTable();
  v261 = v69;
  v290 = v52;
  v263 = sub_1D7263F7C();
  v262 = *(v263 - 8);
  MEMORY[0x1EEE9AC00](v263, v70);
  v259 = &v250 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v283 = &v250 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v75, v76);
  v264 = &v250 - v77;
  MEMORY[0x1EEE9AC00](v78, v79);
  v287 = (&v250 - v80);
  sub_1D5B49800(0);
  MEMORY[0x1EEE9AC00](v81 - 8, v82);
  v84 = &v250 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1D72608BC();
  v86 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85, v87);
  v253 = &v250 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = *(a2 + 40);
  v91 = *a5;
  v90 = a5[1];
  sub_1D5B49898(0, &unk_1EDF199D0, type metadata accessor for FeedGroupItem, MEMORY[0x1E69E6F90]);
  v93 = v92;
  v312 = type metadata accessor for FeedGroupItem();
  v94 = *(*(v312 - 8) + 80);
  v95 = (v94 + 32) & ~v94;
  v307 = *(*(v312 - 8) + 72);
  v308 = v94;
  v306 = v93;
  v96 = swift_allocObject();
  v310 = xmmword_1D7273AE0;
  *(v96 + 16) = xmmword_1D7273AE0;
  v305 = v95;
  v97 = (v96 + v95);
  v309 = type metadata accessor for FormatContent.Resolved();
  v98 = *(v311 + *(v309 + 44));
  if (v91)
  {

    v99 = v91;
  }

  else
  {
    v99 = MEMORY[0x1E69E7CC0];
  }

  v317 = v98;

  sub_1D5D505F0(v99);
  v100 = v317;
  if (v91)
  {
  }

  else
  {
    v90 = MEMORY[0x1E69E7CC0];
  }

  v317 = v89;

  sub_1D5D505F0(v90);
  v101 = v317;
  *v97 = v100;
  v97[1] = v101;
  swift_storeEnumTagMultiPayload();
  v102 = v277;

  v103 = sub_1D5D50638(v96, v102);
  swift_setDeallocating();
  sub_1D5BCA74C(v97, type metadata accessor for FeedGroupItem);
  swift_deallocClassInstance();
  v317 = v103;
  v104 = v309;
  v105 = v311;
  sub_1D5CEB7B8(v311 + *(v309 + 84), v84, sub_1D5B49800);
  if ((*(v86 + 48))(v84, 1, v85) == 1)
  {
    sub_1D5BCA74C(v84, sub_1D5B49800);
  }

  else
  {
    v106 = v253;
    (*(v86 + 32))(v253, v84, v85);
    v107 = v305;
    v108 = swift_allocObject();
    *(v108 + 16) = v310;
    v109 = (v108 + v107);
    v110 = sub_1D726084C();
    v112 = v111;
    v113 = type metadata accessor for FeedSponsorshipBannerAd();
    (*(v86 + 16))(v109 + *(v113 + 20), v106, v85);
    *v109 = v110;
    v109[1] = v112;
    v104 = v309;
    swift_storeEnumTagMultiPayload();
    sub_1D5D51F5C(v108);
    swift_setDeallocating();
    sub_1D5BCA74C(v109, type metadata accessor for FeedGroupItem);
    swift_deallocClassInstance();
    (*(v86 + 8))(v106, v85);
  }

  v114 = *(v105 + v104[13]);
  v115 = v305;
  if (v114)
  {
    v116 = swift_allocObject();
    *(v116 + 16) = v310;
    v117 = *(v105 + v104[18]);
    v118 = v116 + v115;
    v119 = *(v105 + v104[19]);
    *v118 = v114;
    *(v118 + 8) = v117;
    *(v118 + 16) = v119;
    swift_storeEnumTagMultiPayload();
    v120 = v117;
    swift_unknownObjectRetain();
    sub_1D5D51F5C(v116);
    swift_setDeallocating();
    sub_1D5BCA74C(v116 + v115, type metadata accessor for FeedGroupItem);
    swift_deallocClassInstance();
  }

  v121 = v278;
  if (v278)
  {
    v122 = swift_allocObject();
    *(v122 + 16) = v310;
    *(v122 + v115) = v121;
    swift_storeEnumTagMultiPayload();
    v123 = v121;
    sub_1D5D51F5C(v122);
    swift_setDeallocating();
    sub_1D5BCA74C(v122 + v115, type metadata accessor for FeedGroupItem);
    swift_deallocClassInstance();
    v124 = [FCFeedDescriptor.feedTag.getter() asSportsEvent];
    swift_unknownObjectRelease();
    if (v124)
    {
      v125 = swift_allocObject();
      *(v125 + 16) = v310;
      v126 = v125 + v115;
      v127 = [swift_unknownObjectRetain() identifier];
      v128 = sub_1D726207C();
      v130 = v129;

      *v126 = v128;
      *(v126 + 8) = v130;
      v105 = v311;
      *(v126 + 16) = v124;
      *(v126 + 24) = 0;
      *(v126 + 32) = 0;
      swift_storeEnumTagMultiPayload();
      sub_1D5D51F5C(v125);
      swift_setDeallocating();
      v104 = v309;
      sub_1D5BCA74C(v125 + v115, type metadata accessor for FeedGroupItem);
      swift_deallocClassInstance();
      swift_unknownObjectRelease();
    }
  }

  v131 = *(v105 + v104[14]);
  if (v131)
  {
    v132 = swift_allocObject();
    *(v132 + 16) = v310;
    v133 = v132 + v115;
    v134 = objc_allocWithZone(MEMORY[0x1E69B52B8]);
    v135 = v131;
    v136 = [v134 init];
    sub_1D5EF0964(v135, v301, *(v304 + 88), v302, v316);
    v137 = v316[0];
    v138 = v135;
    v139 = [v138 identifier];
LABEL_18:
    v140 = v139;
    v141 = sub_1D726207C();
    v143 = v142;

    *v133 = v138;
    *(v133 + 8) = v141;
    *(v133 + 16) = v143;
    *(v133 + 24) = 0;
    *(v133 + 32) = 0;
    *(v133 + 40) = 0;
    *(v133 + 48) = 1;
    *(v133 + 56) = v136;
    *(v133 + 64) = 0;
    *(v133 + 72) = xmmword_1D7279980;
    *(v133 + 88) = 0u;
    *(v133 + 104) = 0u;
    *(v133 + 120) = 0;
    *(v133 + 128) = 5;
    *(v133 + 136) = v137;
    swift_storeEnumTagMultiPayload();
    sub_1D5D51F5C(v132);
    swift_setDeallocating();
    sub_1D5BCA74C(v133, type metadata accessor for FeedGroupItem);
    swift_deallocClassInstance();

    v104 = v309;
    v105 = v311;
    goto LABEL_19;
  }

  v160 = *(v105 + v104[15]);
  if (v160)
  {
    if ([v160 respondsToSelector_])
    {
      v161 = [v160 parentIssue];
      if (v161)
      {
        v162 = v161;
        v132 = swift_allocObject();
        *(v132 + 16) = v310;
        v133 = v132 + v115;
        v136 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
        sub_1D5EF0964(v162, v301, *(v304 + 88), v302, v316);
        v137 = v316[0];
        v138 = v162;
        v139 = [v138 identifier];
        goto LABEL_18;
      }
    }
  }

LABEL_19:
  v144 = *(v105 + v104[15]);
  if (v144)
  {
    swift_unknownObjectRetain();
    v145 = v291;
    MEMORY[0x1DA6F9AF0](v295, v294);
    v146 = swift_allocObject();
    v147 = *(v304 + 88);
    v146[2] = v301;
    v146[3] = v147;
    v146[4] = v302;
    v146[5] = v144;
    swift_unknownObjectRetain();
    v148 = v293;
    swift_getWitnessTable();
    v149 = v259;
    v150 = v290;
    sub_1D726418C();

    v151 = v148;
    v152 = v150;
    (*(v292 + 8))(v145, v151);
    v315 = swift_getWitnessTable();
    v314 = swift_getWitnessTable();
    v313 = swift_getWitnessTable();
    v153 = v263;
    swift_getWitnessTable();
    v154 = v287;
    sub_1D7262C9C();
    (*(v262 + 8))(v149, v153);
    v155 = v264;
    sub_1D5CEB7B8(v154, v264, sub_1D5B69BE0);
    if ((*(v265 + 48))(v155, 1, v150) == 1)
    {
      sub_1D5BCA74C(v155, sub_1D5B69BE0);
      v156 = v276;
      v157 = v276[6];
      v158 = type metadata accessor for SharedItem();
      v159 = v289;
      (*(*(v158 - 8) + 56))(v289 + v157, 1, 1, v158);
      *v159 = 258;
      *(v159 + v156[7]) = 1;
      *(v159 + v156[8]) = 0;
      *(v159 + v156[9]) = 0;
      *(v159 + v156[10]) = 0;
    }

    else
    {
      v163 = v251;
      sub_1D5CEB7B8(v155 + *(v150 + 40), v251, type metadata accessor for FeedHeadline.State);
      sub_1D5BCA74C(v155, type metadata accessor for FeedHeadline);
      v159 = v289;
      sub_1D5CED910(v163, v289, type metadata accessor for FeedHeadline.State);
    }

    v164 = v267;
    v165 = swift_allocObject();
    *(v165 + 16) = v310;
    v166 = sub_1D726045C();
    v167 = v288;
    (*(*(v166 - 8) + 56))(v288, 1, 1, v166);
    v168 = v266;
    sub_1D5CEB7B8(v159, v266, type metadata accessor for FeedHeadline.State);
    *(v164 + *(v152 + 48)) = xmmword_1D727C330;
    swift_getObjectType();
    v169 = [swift_unknownObjectRetain() identifier];
    v170 = sub_1D726207C();
    v172 = v171;

    *v164 = v170;
    *(v164 + 8) = v172;
    v173 = v290;
    *(v164 + 40) = v144;
    *(v164 + 48) = 0;
    sub_1D5CEB7B8(v167, v164 + v173[11], sub_1D5D504A0);
    sub_1D5CEB7B8(v168, v164 + v173[10], type metadata accessor for FeedHeadline.State);
    *(v164 + v173[14]) = 0;
    *(v164 + 56) = 0;
    v174 = [swift_unknownObjectRetain() title];
    if (v174)
    {
      v175 = v174;
      v176 = [v174 ne_isNaturallyRTL];

      v177 = v176;
    }

    else
    {
      v177 = 0;
    }

    v104 = v309;
    *(v164 + 16) = v177;
    *(v164 + 24) = 0;
    sub_1D5BC7BD4(v316);
    swift_unknownObjectRelease();
    v178 = v276;
    v179 = v289;
    v115 = v305;
    if (*(v168 + v276[8]) - 1 <= 1 && (v316[0] & 0x1000) == 0)
    {
      v316[0] |= 0x1000uLL;
    }

    v180 = *(v168 + v276[10]);
    v181 = 0x80000000;
    if (!*(v168 + v276[10]))
    {
      v181 = 0x100000000;
    }

    if ((v316[0] & v181) != 0)
    {
      v181 = 0;
    }

    *(v164 + 32) = v316[0] | v181;
    if (*(v168 + v178[7]))
    {
      if (*(v168 + v178[9]))
      {
        sub_1D5BCA74C(v168, type metadata accessor for FeedHeadline.State);
        sub_1D5BCA74C(v288, sub_1D5D504A0);
        v182 = 1;
      }

      else if (v180)
      {
        v244 = [v144 sourceChannel];
        sub_1D5BCA74C(v168, type metadata accessor for FeedHeadline.State);
        sub_1D5BCA74C(v288, sub_1D5D504A0);
        v182 = 2;
        if (v244)
        {
          v182 = v244;
        }
      }

      else
      {
        sub_1D5BCA74C(v168, type metadata accessor for FeedHeadline.State);
        sub_1D5BCA74C(v288, sub_1D5D504A0);
        v182 = 2;
      }
    }

    else
    {
      sub_1D5BCA74C(v168, type metadata accessor for FeedHeadline.State);
      sub_1D5BCA74C(v288, sub_1D5D504A0);
      v182 = 0;
    }

    *(v164 + v173[13]) = v182;
    sub_1D5CED910(v164, v165 + v115, type metadata accessor for FeedHeadline);
    swift_storeEnumTagMultiPayload();
    sub_1D5D51F5C(v165);
    swift_setDeallocating();
    sub_1D5BCA74C(v165 + v115, type metadata accessor for FeedGroupItem);
    swift_deallocClassInstance();
    swift_unknownObjectRelease();
    sub_1D5BCA74C(v179, type metadata accessor for FeedHeadline.State);
    sub_1D5BCA74C(v287, sub_1D5B69BE0);
    v105 = v311;
  }

  v183 = v280;
  sub_1D5CEB7B8(v105 + v104[16], v280, sub_1D5B5AFCC);
  v184 = v281;
  if ((*(v279 + 48))(v183, 1, v281) == 1)
  {
    sub_1D5BCA74C(v183, sub_1D5B5AFCC);
    goto LABEL_49;
  }

  v185 = v282;
  sub_1D5CED910(v183, v282, type metadata accessor for FormatWebEmbed.Resolved);
  v290 = swift_allocObject();
  *(v290 + 16) = v310;
  v186 = v185[1];
  v289 = *v185;
  v279 = v186;
  v187 = v185 + v184[5];
  v188 = type metadata accessor for FormatWebEmbed();
  v189 = v188[5];
  v288 = *(v286 + 16);
  (v288)(v299, &v187[v189], v300);
  v190 = v188[6];
  v287 = sub_1D5B4D3E0;
  v191 = v285;
  sub_1D5CEB7B8(&v187[v190], v285, sub_1D5B4D3E0);
  v192 = *(v185 + v184[6]);
  v193 = *(v185 + v184[7]);

  v194 = v283;
  sub_1D5EF1350(v185, v283);
  v195 = v284;
  sub_1D5CEB7B8(v185 + v184[8], v284, sub_1D5B4D72C);
  v196 = v188[11];
  LODWORD(v281) = v187[v188[10]];
  v280 = sub_1D5EEC8D4(*&v187[v188[12]], *&v187[v196]);
  v198 = v197;
  v199 = v258;
  *v258 = xmmword_1D727F470;
  *(v199 + 16) = 1;
  *(v199 + 24) = xmmword_1D727F480;
  v200 = v279;
  *(v199 + 5) = v289;
  *(v199 + 6) = v200;
  v201 = v254;
  (v288)(v199 + *(v254 + 32), v299, v300);
  sub_1D5CEB7B8(v191, v199 + v201[9], v287);
  *(v199 + v201[10]) = v192;
  *(v199 + v201[11]) = v193;
  sub_1D5CEB7B8(v194, v199 + v201[12], sub_1D5B69BE0);
  sub_1D5CEB7B8(v195, v199 + v201[13], sub_1D5B4D72C);
  *(v199 + v201[14]) = v281 & 1;
  v202 = (v199 + v201[15]);
  *v202 = v280;
  v202[1] = v198;
  v203 = v256;
  sub_1D5CEB7B8(v195, v256, sub_1D5B4D72C);
  v204 = (*(v255 + 48))(v203, 1, v257);
  v205 = sub_1D5B4D72C;
  if (v204 != 1)
  {
    v206 = v250;
    sub_1D5CEB7B8(v203, v250, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v245 = *v206;
      sub_1D5BCA74C(v203, type metadata accessor for WebEmbedDataVisualization);
      v246 = v245 >> 61;
      if ((v245 >> 61) <= 2)
      {
        if (v246)
        {
          if (v246 == 1)
          {
            sub_1D5BCA74C(v284, sub_1D5B4D72C);
            sub_1D5BCA74C(v283, sub_1D5B69BE0);
            sub_1D5BCA74C(v285, sub_1D5B4D3E0);
            (*(v286 + 8))(v299, v300);
            *v199 = 8390656;
            v247 = 0x2000800800;
          }

          else
          {
            sub_1D5BCA74C(v284, sub_1D5B4D72C);
            sub_1D5BCA74C(v283, sub_1D5B69BE0);
            sub_1D5BCA74C(v285, sub_1D5B4D3E0);
            (*(v286 + 8))(v299, v300);
            *v199 = 536872960;
            v247 = 0x2020000800;
          }
        }

        else
        {
          v247 = 0x2000400800;
          *v199 = 4196352;

          v248 = SportsScoreDataVisualization.isFeatured.getter();

          sub_1D5BCA74C(v284, sub_1D5B4D72C);
          sub_1D5BCA74C(v283, sub_1D5B69BE0);
          sub_1D5BCA74C(v285, sub_1D5B4D3E0);
          (*(v286 + 8))(v299, v300);
          if (v248)
          {
            *v199 = 4196384;
            v247 = 0x2000400820;
          }
        }
      }

      else if (v246 > 4)
      {
        if (v246 == 5)
        {
          sub_1D5BCA74C(v284, sub_1D5B4D72C);
          sub_1D5BCA74C(v283, sub_1D5B69BE0);
          sub_1D5BCA74C(v285, sub_1D5B4D3E0);
          (*(v286 + 8))(v299, v300);
          *v199 = 0x800000800;
          v247 = 0x2800000800;
        }

        else
        {
          sub_1D5BCA74C(v284, sub_1D5B4D72C);
          sub_1D5BCA74C(v283, sub_1D5B69BE0);
          sub_1D5BCA74C(v285, sub_1D5B4D3E0);
          (*(v286 + 8))(v299, v300);
          *v199 = 0x1000000800;
          v247 = 0x3000000800;
        }
      }

      else if (v246 == 3)
      {
        sub_1D5BCA74C(v284, sub_1D5B4D72C);
        sub_1D5BCA74C(v283, sub_1D5B69BE0);
        sub_1D5BCA74C(v285, sub_1D5B4D3E0);
        (*(v286 + 8))(v299, v300);
        *v199 = 0x200000800;
        v247 = 0x2200000800;
      }

      else
      {
        sub_1D5BCA74C(v284, sub_1D5B4D72C);
        sub_1D5BCA74C(v283, sub_1D5B69BE0);
        sub_1D5BCA74C(v285, sub_1D5B4D3E0);
        (*(v286 + 8))(v299, v300);
        *v199 = 0x400000800;
        v247 = 0x2400000800;
      }

      v316[0] = v245;
      v249 = SportsDataVisualization.event.getter();

      if (v249)
      {
        swift_unknownObjectRelease();
        *v199 = v247;
      }

      goto LABEL_48;
    }

    sub_1D5BCA74C(v206, type metadata accessor for WebEmbedDataVisualization);
    v205 = type metadata accessor for WebEmbedDataVisualization;
  }

  sub_1D5BCA74C(v203, v205);
  sub_1D5BCA74C(v284, sub_1D5B4D72C);
  sub_1D5BCA74C(v283, sub_1D5B69BE0);
  sub_1D5BCA74C(v285, sub_1D5B4D3E0);
  (*(v286 + 8))(v299, v300);
LABEL_48:
  v207 = v290;
  v208 = v199;
  v115 = v305;
  sub_1D5CED910(v208, v290 + v305, type metadata accessor for FeedWebEmbed);
  swift_storeEnumTagMultiPayload();
  sub_1D5D51F5C(v207);
  swift_setDeallocating();
  sub_1D5BCA74C(v207 + v115, type metadata accessor for FeedGroupItem);
  swift_deallocClassInstance();
  sub_1D5BCA74C(v282, type metadata accessor for FormatWebEmbed.Resolved);
  v104 = v309;
LABEL_49:
  v209 = *(v311 + v104[17]);
  if (v209)
  {
    v210 = v209;
    v211 = v291;
    MEMORY[0x1DA6F9AF0](v295, v294);
    v212 = swift_allocObject();
    v213 = *(v304 + 88);
    v212[2] = v301;
    v212[3] = v213;
    v212[4] = v302;
    v212[5] = v210;
    v214 = v210;
    v215 = v293;
    swift_getWitnessTable();
    v216 = v268;
    v217 = v297;
    sub_1D726418C();
    v218 = v217;

    (*(v292 + 8))(v211, v215);
    v316[3] = swift_getWitnessTable();
    v316[2] = swift_getWitnessTable();
    v316[1] = swift_getWitnessTable();
    v219 = v272;
    swift_getWitnessTable();
    v220 = v296;
    sub_1D7262C9C();
    (*(v269 + 8))(v216, v219);
    v221 = v220;
    v222 = v273;
    sub_1D5CEB7B8(v221, v273, sub_1D5D5046C);
    if ((*(*(v218 - 1) + 48))(v222, 1, v218) == 1)
    {
      sub_1D5BCA74C(v222, sub_1D5D5046C);
      v223 = v274;
      v224 = *(v274 + 20);
      v225 = type metadata accessor for SharedItem();
      v226 = v298;
      (*(*(v225 - 8) + 56))(&v298[v224], 1, 1, v225);
      *v226 = 0;
      v226[*(v223 + 24)] = 0;
    }

    else
    {
      v227 = v252;
      sub_1D5CEB7B8(v222 + v218[9], v252, type metadata accessor for FeedRecipe.State);
      sub_1D5BCA74C(v222, type metadata accessor for FeedRecipe);
      v226 = v298;
      sub_1D5CED910(v227, v298, type metadata accessor for FeedRecipe.State);
      v223 = v274;
    }

    v228 = swift_allocObject();
    v229 = v115;
    v230 = v228;
    *(v228 + 16) = v310;
    v231 = v228 + v229;
    v232 = v275;
    sub_1D5CEB7B8(v226, v275, type metadata accessor for FeedRecipe.State);
    *(v231 + 16) = 0;
    *(v231 + 24) = 1;
    *(v231 + 32) = xmmword_1D727C320;
    v233 = v214;
    v234 = [v233 identifier];
    v235 = sub_1D726207C();
    v237 = v236;

    *v231 = v235;
    *(v231 + 8) = v237;
    *(v231 + 56) = v233;
    sub_1D5CEB7B8(v232, v231 + v218[9], type metadata accessor for FeedRecipe.State);
    v238 = v231 + v218[10];
    *(v238 + 32) = 0;
    *v238 = 0u;
    *(v238 + 16) = 0u;
    *(v231 + v218[11]) = 0;
    if (*(v232 + *(v223 + 24)) == 1)
    {
      v239 = [v233 sourceChannel];
    }

    else
    {
      v239 = 2;
    }

    sub_1D5BCA74C(v232, type metadata accessor for FeedRecipe.State);
    *(v231 + 48) = v239;
    v240 = v297;
    v241 = v231 + *(v297 + 48);
    *(v241 + 32) = 0;
    *v241 = 0u;
    *(v241 + 16) = 0u;
    v242 = v231 + *(v240 + 52);
    *(v242 + 32) = 0;
    *v242 = 0u;
    *(v242 + 16) = 0u;
    swift_storeEnumTagMultiPayload();
    sub_1D5D51F5C(v230);
    swift_setDeallocating();
    sub_1D5BCA74C(v231, type metadata accessor for FeedGroupItem);
    swift_deallocClassInstance();

    sub_1D5BCA74C(v298, type metadata accessor for FeedRecipe.State);
    sub_1D5BCA74C(v296, sub_1D5D5046C);
  }

  return v317;
}

uint64_t sub_1D5D503F8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D50430()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_1D5D504D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5D50538(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5D5058C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5D50668(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), void (*a5)(char *, char *))
{
  v9 = a3(0) - 8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v22 - v16;
  v23 = a2;
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v20 = *(v15 + 72);
    do
    {
      sub_1D5D507AC(v19, v12, a4);
      a5(v17, v12);
      sub_1D5D51EFC(v17, a4);
      v19 += v20;
      --v18;
    }

    while (v18);
    return v23;
  }

  return a2;
}

uint64_t sub_1D5D507AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D50814(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D5087C(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  sub_1D5D50E70(0, &qword_1EDF34960, type metadata accessor for FeedGroupItem);
  v32 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v27 - v6;
  v8 = type metadata accessor for FeedGroupItem();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v28 = &v27 - v15;
  v29 = v2;
  v16 = *v2;
  sub_1D7264A0C();
  v33 = a2;
  sub_1D5D50ED0();
  sub_1D72621EC();

  v17 = sub_1D7264A5C();
  v18 = -1 << *(v16 + 32);
  v19 = v17 & ~v18;
  if (((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
  {
LABEL_33:
    v22 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v25 = v28;
    sub_1D5BE7354(v33, v28, type metadata accessor for FeedGroupItem);
    v34 = *v22;
    sub_1D5D5131C(v25, v19, isUniquelyReferenced_nonNull_native);
    *v22 = v34;
    sub_1D5BE7424(v24, v30, type metadata accessor for FeedGroupItem);
    return 1;
  }

  v31 = ~v18;
  v20 = *(v9 + 72);
  while (2)
  {
    sub_1D5BE7354(*(v16 + 48) + v20 * v19, v12, type metadata accessor for FeedGroupItem);
    v21 = &v7[*(v32 + 48)];
    sub_1D5BE7424(v12, v7, type metadata accessor for FeedGroupItem);
    sub_1D5BE7354(v33, v21, type metadata accessor for FeedGroupItem);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_1D5BF1AEC(v7, type metadata accessor for FeedGroupItem);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          goto LABEL_5;
        }

        goto LABEL_32;
      case 2u:
        sub_1D5BF1AEC(v7, type metadata accessor for FeedGroupItem);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          goto LABEL_32;
        }

        goto LABEL_5;
      case 3u:
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          goto LABEL_34;
        }

        goto LABEL_4;
      case 4u:
        sub_1D5BF1AEC(v7, type metadata accessor for FeedGroupItem);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          goto LABEL_32;
        }

        goto LABEL_5;
      case 5u:
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_34;
        }

        goto LABEL_4;
      case 6u:
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          goto LABEL_34;
        }

        goto LABEL_4;
      case 7u:
        sub_1D5BF1AEC(v7, type metadata accessor for FeedGroupItem);
        if (swift_getEnumCaseMultiPayload() == 7)
        {
          goto LABEL_32;
        }

        goto LABEL_5;
      case 8u:
        sub_1D5BF1AEC(v7, type metadata accessor for FeedGroupItem);
        if (swift_getEnumCaseMultiPayload() == 8)
        {
          goto LABEL_32;
        }

        goto LABEL_5;
      case 9u:
        if (swift_getEnumCaseMultiPayload() == 9)
        {
          goto LABEL_34;
        }

        goto LABEL_4;
      case 0xAu:
        sub_1D5BF1AEC(v7, type metadata accessor for FeedGroupItem);
        if (swift_getEnumCaseMultiPayload() == 10)
        {
          goto LABEL_32;
        }

        goto LABEL_5;
      case 0xBu:
        if (swift_getEnumCaseMultiPayload() != 11)
        {
          goto LABEL_4;
        }

        goto LABEL_34;
      case 0xCu:
        if (swift_getEnumCaseMultiPayload() == 12)
        {
          goto LABEL_34;
        }

        goto LABEL_4;
      case 0xDu:
        if (swift_getEnumCaseMultiPayload() != 13)
        {
LABEL_4:
          sub_1D5BF1AEC(v7, type metadata accessor for FeedGroupItem);
LABEL_5:
          sub_1D5BF1AEC(v21, type metadata accessor for FeedGroupItem);
          v19 = (v19 + 1) & v31;
          if (((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_33;
          }

          continue;
        }

LABEL_34:
        sub_1D5BF1AEC(v21, type metadata accessor for FeedGroupItem);
LABEL_35:
        sub_1D5BF1AEC(v7, type metadata accessor for FeedGroupItem);
        sub_1D5BF1AEC(v33, type metadata accessor for FeedGroupItem);
        sub_1D5BE7354(*(v16 + 48) + v20 * v19, v30, type metadata accessor for FeedGroupItem);
        return 0;
      default:
        sub_1D5BF1AEC(v7, type metadata accessor for FeedGroupItem);
        if (swift_getEnumCaseMultiPayload())
        {
          goto LABEL_5;
        }

LABEL_32:
        v7 = v21;
        goto LABEL_35;
    }
  }
}

void sub_1D5D50E70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D5D50ED0()
{
  v1 = type metadata accessor for FeedGroupItem();
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D50814(v0, v4, type metadata accessor for FeedGroupItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1D5D5113C(v4, type metadata accessor for FeedGroupItem);
  result = 6775156;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      result = 0x6575737369;
      break;
    case 2:
      result = 0x736E6F6974706FLL;
      break;
    case 3:
      result = 0x72656874616577;
      break;
    case 4:
      result = 0x6C6C6177796170;
      break;
    case 5:
      result = 0x656E696C64616568;
      break;
    case 6:
      result = 0x6465626D45626577;
      break;
    case 7:
      result = 1684366694;
      break;
    case 8:
      result = 0x76457374726F7073;
      break;
    case 9:
      result = 0x656C7A7A7570;
      break;
    case 10:
      result = 0x7954656C7A7A7570;
      break;
    case 11:
      result = 0x7453656C7A7A7570;
      break;
    case 12:
      result = 0x65726F736E6F7073;
      break;
    case 13:
      result = 0x657069636572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5D5113C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D5119C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D511FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D5125C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D512BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D5131C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  sub_1D5D50E70(0, &qword_1EDF34960, type metadata accessor for FeedGroupItem);
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for FeedGroupItem();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*v3 + 16);
  v16 = *(*v3 + 24);
  v28 = v11;
  v29 = v3;
  if (v16 <= v15 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D5D520C8();
    }

    else
    {
      if (v16 > v15)
      {
        sub_1D6001500(type metadata accessor for FeedGroupItem, sub_1D5D51E1C, type metadata accessor for FeedGroupItem, type metadata accessor for FeedGroupItem);
        goto LABEL_40;
      }

      sub_1D5D51924();
    }

    v17 = *v3;
    sub_1D7264A0C();
    sub_1D5D50ED0();
    sub_1D72621EC();

    v3 = &v32;
    v18 = sub_1D7264A5C();
    v19 = -1 << *(v17 + 32);
    a2 = v18 & ~v19;
    if ((*(v17 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v20 = ~v19;
      v21 = *(v11 + 72);
      while (1)
      {
        sub_1D5BE7354(*(v17 + 48) + v21 * a2, v14, type metadata accessor for FeedGroupItem);
        v3 = &v9[*(v30 + 48)];
        sub_1D5BE7424(v14, v9, type metadata accessor for FeedGroupItem);
        sub_1D5BE7354(v31, v3, type metadata accessor for FeedGroupItem);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            sub_1D5BF1AEC(v9, type metadata accessor for FeedGroupItem);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              goto LABEL_39;
            }

            goto LABEL_12;
          case 2u:
            sub_1D5BF1AEC(v9, type metadata accessor for FeedGroupItem);
            if (swift_getEnumCaseMultiPayload() == 2)
            {
              goto LABEL_39;
            }

            goto LABEL_12;
          case 3u:
            if (swift_getEnumCaseMultiPayload() == 3)
            {
              goto LABEL_43;
            }

            goto LABEL_11;
          case 4u:
            sub_1D5BF1AEC(v9, type metadata accessor for FeedGroupItem);
            if (swift_getEnumCaseMultiPayload() == 4)
            {
              goto LABEL_39;
            }

            goto LABEL_12;
          case 5u:
            if (swift_getEnumCaseMultiPayload() == 5)
            {
              goto LABEL_43;
            }

            goto LABEL_11;
          case 6u:
            if (swift_getEnumCaseMultiPayload() == 6)
            {
              goto LABEL_43;
            }

            goto LABEL_11;
          case 7u:
            sub_1D5BF1AEC(v9, type metadata accessor for FeedGroupItem);
            if (swift_getEnumCaseMultiPayload() == 7)
            {
              goto LABEL_39;
            }

            goto LABEL_12;
          case 8u:
            sub_1D5BF1AEC(v9, type metadata accessor for FeedGroupItem);
            if (swift_getEnumCaseMultiPayload() == 8)
            {
              goto LABEL_39;
            }

            goto LABEL_12;
          case 9u:
            if (swift_getEnumCaseMultiPayload() == 9)
            {
              goto LABEL_43;
            }

            goto LABEL_11;
          case 0xAu:
            sub_1D5BF1AEC(v9, type metadata accessor for FeedGroupItem);
            if (swift_getEnumCaseMultiPayload() == 10)
            {
              goto LABEL_39;
            }

            goto LABEL_12;
          case 0xBu:
            if (swift_getEnumCaseMultiPayload() != 11)
            {
              goto LABEL_11;
            }

            goto LABEL_43;
          case 0xCu:
            if (swift_getEnumCaseMultiPayload() == 12)
            {
              goto LABEL_43;
            }

            goto LABEL_11;
          case 0xDu:
            if (swift_getEnumCaseMultiPayload() == 13)
            {
              goto LABEL_43;
            }

LABEL_11:
            sub_1D5BF1AEC(v9, type metadata accessor for FeedGroupItem);
            goto LABEL_12;
          default:
            sub_1D5BF1AEC(v9, type metadata accessor for FeedGroupItem);
            if (!swift_getEnumCaseMultiPayload())
            {
LABEL_39:
              v9 = v3;
              goto LABEL_44;
            }

LABEL_12:
            sub_1D5BF1AEC(v3, type metadata accessor for FeedGroupItem);
            a2 = (a2 + 1) & v20;
            if (((*(v17 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              goto LABEL_40;
            }

            break;
        }
      }
    }
  }

LABEL_40:
  v22 = *v29;
  *(*v29 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D5BE7424(v31, *(v22 + 48) + *(v28 + 72) * a2, type metadata accessor for FeedGroupItem);
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
LABEL_43:
    sub_1D5BF1AEC(v3, type metadata accessor for FeedGroupItem);
LABEL_44:
    sub_1D5BF1AEC(v9, type metadata accessor for FeedGroupItem);
    sub_1D726492C();
    __break(1u);
    JUMPOUT(0x1D5D518ECLL);
  }

  *(v22 + 16) = v26;
  return result;
}

uint64_t sub_1D5D51924()
{
  v1 = v0;
  v2 = type metadata accessor for FeedGroupItem();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v40 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v36 - v7;
  v9 = *v0;
  sub_1D5D51E1C();
  v10 = sub_1D7263CBC();
  v11 = v10;
  if (*(v9 + 16))
  {
    v37 = v0;
    v38 = v9;
    v12 = 0;
    v13 = v9 + 56;
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = v10 + 56;
    v39 = v8;
    while (v16)
    {
      v25 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v28 = *(v9 + 48);
      v29 = *(v41 + 72);
      sub_1D5BE7354(v28 + v29 * (v25 | (v12 << 6)), v8, type metadata accessor for FeedGroupItem);
      sub_1D7264A0C();
      v30 = v8;
      v31 = v40;
      sub_1D5BE7354(v30, v40, type metadata accessor for FeedGroupItem);
      swift_getEnumCaseMultiPayload();
      sub_1D5BF1AEC(v31, type metadata accessor for FeedGroupItem);
      sub_1D72621EC();

      v20 = sub_1D7264A5C();
      v21 = -1 << *(v11 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      v8 = v39;
      if (((-1 << v22) & ~*(v18 + 8 * (v22 >> 6))) != 0)
      {
        v24 = __clz(__rbit64((-1 << v22) & ~*(v18 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v32 = 0;
        v33 = (63 - v21) >> 6;
        do
        {
          if (++v23 == v33 && (v32 & 1) != 0)
          {
            goto LABEL_29;
          }

          v34 = v23 == v33;
          if (v23 == v33)
          {
            v23 = 0;
          }

          v32 |= v34;
          v35 = *(v18 + 8 * v23);
        }

        while (v35 == -1);
        v24 = __clz(__rbit64(~v35)) + (v23 << 6);
      }

      *(v18 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      sub_1D5BE7424(v8, *(v11 + 48) + v24 * v29, type metadata accessor for FeedGroupItem);
      ++*(v11 + 16);
      v9 = v38;
    }

    v26 = v12;
    while (1)
    {
      v12 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        JUMPOUT(0x1D5D51DE4);
      }

      if (v12 >= v17)
      {
        break;
      }

      v27 = *(v13 + 8 * v12);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v16 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    v1 = v37;
  }

  else
  {
  }

  *v1 = v11;
  return result;
}

void sub_1D5D51E1C()
{
  if (!qword_1EDF1A5D0)
  {
    type metadata accessor for FeedGroupItem();
    sub_1D5D51EB4(qword_1EDF41EF8, 255, type metadata accessor for FeedGroupItem);
    v0 = sub_1D7263CEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A5D0);
    }
  }
}

uint64_t sub_1D5D51EB4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D5D51EFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D5D51F9C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(char *, char *))
{
  v7 = a2(0) - 8;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v19 - v14;
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v18 = *(v13 + 72);
    do
    {
      sub_1D5BE8DD8(v17, v10, a3);
      a4(v15, v10);
      sub_1D5BEA7D0(v15, a3);
      v17 += v18;
      --v16;
    }

    while (v16);
  }
}

uint64_t sub_1D5D520C8()
{
  v1 = v0;
  v2 = type metadata accessor for FeedGroupItem();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v36 - v7;
  v9 = *v0;
  sub_1D5D51E1C();
  v10 = sub_1D7263CBC();
  v11 = v10;
  if (*(v9 + 16))
  {
    v36 = v0;
    v37 = v9;
    v12 = 0;
    v13 = (v9 + 56);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = v10 + 56;
    while (v16)
    {
      v24 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_16:
      v27 = *(v9 + 48);
      v28 = *(v39 + 72);
      sub_1D5BE7424(v27 + v28 * (v24 | (v12 << 6)), v8, type metadata accessor for FeedGroupItem);
      sub_1D7264A0C();
      v29 = v38;
      sub_1D5BE7354(v8, v38, type metadata accessor for FeedGroupItem);
      swift_getEnumCaseMultiPayload();
      sub_1D5BF1AEC(v29, type metadata accessor for FeedGroupItem);
      sub_1D72621EC();

      v19 = sub_1D7264A5C();
      v20 = -1 << *(v11 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v18 + 8 * (v21 >> 6))) != 0)
      {
        v23 = __clz(__rbit64((-1 << v21) & ~*(v18 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = 0;
        v31 = (63 - v20) >> 6;
        do
        {
          if (++v22 == v31 && (v30 & 1) != 0)
          {
            goto LABEL_31;
          }

          v32 = v22 == v31;
          if (v22 == v31)
          {
            v22 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v22);
        }

        while (v33 == -1);
        v23 = __clz(__rbit64(~v33)) + (v22 << 6);
      }

      *(v18 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      sub_1D5BE7424(v8, *(v11 + 48) + v23 * v28, type metadata accessor for FeedGroupItem);
      ++*(v11 + 16);
      v9 = v37;
    }

    v25 = v12;
    while (1)
    {
      v12 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        JUMPOUT(0x1D5D525BCLL);
      }

      if (v12 >= v17)
      {
        break;
      }

      v26 = v13[v12];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v16 = (v26 - 1) & v26;
        goto LABEL_16;
      }
    }

    v34 = 1 << *(v9 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v1 = v36;
    *(v9 + 16) = 0;
  }

  *v1 = v11;
  return result;
}

uint64_t sub_1D5D525F4(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v40 = a4;
  v33 = a1;
  v37 = *(v6 + 80);
  v38 = *(v6 + 96);
  sub_1D725CE8C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v36 = sub_1D725B15C();
  v35 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v11);
  v34 = &v33 - v12;
  v13 = a3[1];
  v14 = a3[3];
  v48 = a3[2];
  v49 = v14;
  v15 = a3[3];
  v50 = a3[4];
  v16 = *a3;
  v17 = *a3;
  v47 = a3[1];
  v46 = v16;
  v53 = v48;
  v54 = v15;
  v55 = a3[4];
  v18 = *a6;
  v19 = a6[1];
  v21 = a6[2];
  v20 = a6[3];
  v51 = v17;
  v52 = v13;
  FormatContentSubgroup.Resolved.feedItemIdentifiers.getter();
  v23 = v22;
  sub_1D5D55530(v18, v19);

  v24 = v33;
  v25 = sub_1D5D55574(v23, v18, v19, v21, v20, a5, v33, a2);

  sub_1D5D559EC(v18, v19);

  v26 = sub_1D5B86020(v25);

  v27 = FormatContentSubgroup.Resolved.placeholderIdentifiers.getter();

  v28 = sub_1D5D5600C(v27, v24, a2);

  v29 = sub_1D5B86020(v28);

  (*(v35 + 16))(v34, v40, v36);
  v30 = *(v39 + 88);
  v41 = v37;
  v42 = v30;
  v43 = v38;
  v44 = v26;
  v45 = v29;
  swift_getWitnessTable();
  v31 = sub_1D726247C();

  return v31;
}

void FormatContentSubgroup.Resolved.feedItemIdentifiers.getter()
{
  sub_1D5CEBCF0();
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
  v3 = *(v0 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v0 + 32;
    while (v4 < *(v1 + 16))
    {
      ++v4;
      v6 = FormatContentSlot.Resolved.feedItemIdentifiers.getter();
      sub_1D5D55274(v6);
      v5 += 64;
      if (v3 == v4)
      {
        v2 = v7;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    sub_1D5B86020(v2);
  }
}

uint64_t FormatContentSlot.Resolved.feedItemIdentifiers.getter()
{
  v1 = v0[1];
  v58 = *v0;
  v59 = v1;
  v2 = v0[3];
  v60 = v0[2];
  v61 = v2;
  v57 = MEMORY[0x1E69E7CD0];
  v53 = FormatContentSlot.Resolved.headlines.getter();
  v54 = 0;
  v55 = sub_1D5C450D4;
  v56 = 0;
  v3 = sub_1D5D52E68();
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    do
    {
      sub_1D5B860D0(&v52, v5, v6);

      v5 = sub_1D5D52E68();
      v6 = v7;
    }

    while (v7);
  }

  v53 = FormatContentSlot.Resolved.issues.getter();
  v54 = 0;
  v55 = sub_1D5C450D4;
  v56 = 0;
  v8 = sub_1D5D53154();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    do
    {
      sub_1D5B860D0(&v52, v10, v11);

      v10 = sub_1D5D53154();
      v11 = v12;
    }

    while (v12);
  }

  v53 = FormatContentSlot.Resolved.tags.getter();
  v54 = 0;
  v55 = sub_1D5C450D4;
  v56 = 0;
  v13 = sub_1D5D52E68();
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    do
    {
      sub_1D5B860D0(&v52, v15, v16);

      v15 = sub_1D5D52E68();
      v16 = v17;
    }

    while (v17);
  }

  v53 = FormatContentSlot.Resolved.webEmbeds.getter();
  v54 = 0;
  v55 = sub_1D610B568;
  v56 = 0;
  sub_1D5D53838();
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    do
    {
      sub_1D5B860D0(&v52, v20, v21);

      sub_1D5D53838();
      v20 = v22;
      v21 = v23;
    }

    while (v23);
  }

  v53 = FormatContentSlot.Resolved.puzzles.getter();
  v54 = 0;
  v55 = sub_1D5C450D4;
  v56 = 0;
  v24 = sub_1D5D52E68();
  if (v25)
  {
    v26 = v24;
    v27 = v25;
    do
    {
      sub_1D5B860D0(&v52, v26, v27);

      v26 = sub_1D5D52E68();
      v27 = v28;
    }

    while (v28);
  }

  v53 = FormatContentSlot.Resolved.puzzleTypes.getter();
  v54 = 0;
  v55 = sub_1D5C450D4;
  v56 = 0;
  v29 = sub_1D5D52E68();
  if (v30)
  {
    v31 = v29;
    v32 = v30;
    do
    {
      sub_1D5B860D0(&v52, v31, v32);

      v31 = sub_1D5D52E68();
      v32 = v33;
    }

    while (v33);
  }

  v53 = FormatContentSlot.Resolved.puzzleStatistics.getter();
  v54 = 0;
  v55 = sub_1D6F5AFCC;
  v56 = 0;
  sub_1D5D54458();
  if (v35)
  {
    v36 = v34;
    v37 = v35;
    do
    {
      sub_1D5B860D0(&v52, v36, v37);

      sub_1D5D54458();
      v36 = v38;
      v37 = v39;
    }

    while (v39);
  }

  v53 = FormatContentSlot.Resolved.recipes.getter();
  v54 = 0;
  v55 = sub_1D5C450D4;
  v56 = 0;
  v40 = sub_1D5D53154();
  if (v41)
  {
    v42 = v40;
    v43 = v41;
    do
    {
      sub_1D5B860D0(&v52, v42, v43);

      v42 = sub_1D5D53154();
      v43 = v44;
    }

    while (v44);
  }

  v53 = FormatContentSlot.Resolved.customItems.getter();
  v54 = 0;
  v55 = sub_1D610B568;
  v56 = 0;
  sub_1D5D54E50();
  if (v46)
  {
    v47 = v45;
    v48 = v46;
    do
    {
      sub_1D5B860D0(&v52, v47, v48);

      sub_1D5D54E50();
      v47 = v49;
      v48 = v50;
    }

    while (v50);
  }

  return v57;
}

uint64_t sub_1D5D52E68()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    result = sub_1D7263BFC();
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[1];
  if (v3 == result)
  {
    return 0;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1DA6FB460](v0[1], v1);
    v4 = result;
    v5 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v4 = *(v1 + 8 * v3 + 32);
  result = swift_unknownObjectRetain();
  v5 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_9:
  v0[1] = v5;
  v6 = v0[2];
  v8 = v4;
  v6(&v7, &v8);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t FormatContentSlot.Resolved.issues.getter()
{
  v1 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v17 - v8;
  v10 = *(v0 + 32);
  v11 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v14 = *(v7 + 72);
    do
    {
      sub_1D5CEC8D8(v13, v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
      sub_1D5CEC8D8(v9, v4, type metadata accessor for FormatContentSlotItemObject.Resolved);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v15 = sub_1D5CECA00(v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
        MEMORY[0x1DA6F9CE0](v15);
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v11 = v18;
      }

      else
      {
        sub_1D5CECA00(v4, type metadata accessor for FormatContentSlotItemObject.Resolved);
        sub_1D5CECA00(v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
      }

      v13 += v14;
      --v12;
    }

    while (v12);
  }

  return v11;
}

id sub_1D5D53154()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    result = sub_1D7263BFC();
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[1];
  if (v3 == result)
  {
    return 0;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1DA6FB460](v0[1], v1);
  }

  else
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_15;
    }

    if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_16:
      __break(1u);
      return result;
    }

    result = *(v1 + 8 * v3 + 32);
  }

  v4 = result;
  if (__OFADD__(v3, 1))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v0[1] = v3 + 1;
  v5 = v0[2];
  v7 = result;
  v5(&v6, &v7);

  return v6;
}

uint64_t FormatContentSlot.Resolved.tags.getter()
{
  v1 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v17 - v8;
  v10 = *(v0 + 32);
  v11 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v14 = *(v7 + 72);
    do
    {
      sub_1D5CEC8D8(v13, v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
      sub_1D5CEC8D8(v9, v4, type metadata accessor for FormatContentSlotItemObject.Resolved);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v15 = sub_1D5CECA00(v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
        MEMORY[0x1DA6F9CE0](v15);
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v11 = v18;
      }

      else
      {
        sub_1D5CECA00(v4, type metadata accessor for FormatContentSlotItemObject.Resolved);
        sub_1D5CECA00(v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
      }

      v13 += v14;
      --v12;
    }

    while (v12);
  }

  return v11;
}

void *FormatContentSlot.Resolved.webEmbeds.getter()
{
  sub_1D5B5AFCC(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v31 - v7;
  v36 = type metadata accessor for FormatWebEmbed.Resolved();
  v9 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v10);
  v35 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v34, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v31 - v18;
  v20 = *(v0 + 32);
  v21 = *(v20 + 16);
  if (!v21)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v22 = v20 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v33 = *(v17 + 72);
  v23 = (v9 + 56);
  v31 = v9;
  v24 = (v9 + 48);
  v25 = MEMORY[0x1E69E7CC0];
  v32 = v4;
  do
  {
    sub_1D5CEC8D8(v22, v19, type metadata accessor for FormatContentSlotItemObject.Resolved);
    sub_1D5CEC8D8(v19, v14, type metadata accessor for FormatContentSlotItemObject.Resolved);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1D5D53BB8(v14, v4, type metadata accessor for FormatWebEmbed.Resolved);
      v26 = 0;
    }

    else
    {
      sub_1D5CECA00(v14, type metadata accessor for FormatContentSlotItemObject.Resolved);
      v26 = 1;
    }

    v27 = v36;
    (*v23)(v4, v26, 1, v36);
    sub_1D5D53BB8(v4, v8, sub_1D5B5AFCC);
    sub_1D5CECA00(v19, type metadata accessor for FormatContentSlotItemObject.Resolved);
    if ((*v24)(v8, 1, v27) == 1)
    {
      sub_1D5CECA00(v8, sub_1D5B5AFCC);
    }

    else
    {
      sub_1D5D53BB8(v8, v35, type metadata accessor for FormatWebEmbed.Resolved);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1D5CF237C(0, v25[2] + 1, 1, v25);
      }

      v29 = v25[2];
      v28 = v25[3];
      if (v29 >= v28 >> 1)
      {
        v25 = sub_1D5CF237C(v28 > 1, v29 + 1, 1, v25);
      }

      v25[2] = v29 + 1;
      sub_1D5D53BB8(v35, v25 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v29, type metadata accessor for FormatWebEmbed.Resolved);
      v4 = v32;
    }

    v22 += v33;
    --v21;
  }

  while (v21);
  return v25;
}

void sub_1D5D53838()
{
  v1 = type metadata accessor for FormatWebEmbed.Resolved();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5AFCC(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v19 - v12;
  v15 = v0[1];
  v16 = *(*v0 + 16);
  if (v15 == v16)
  {
    (*(v2 + 56))(&v19 - v12, 1, 1, v1, v13);
  }

  else
  {
    if (v15 >= v16)
    {
      __break(1u);
      return;
    }

    sub_1D5CEC8D8(*v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v15, &v19 - v12, type metadata accessor for FormatWebEmbed.Resolved);
    v0[1] = v15 + 1;
    (*(v2 + 56))(v14, 0, 1, v1, v17);
  }

  v18 = v0[2];
  sub_1D5D53BB8(v14, v9, sub_1D5B5AFCC);
  if ((*(v2 + 48))(v9, 1, v1) != 1)
  {
    sub_1D5D53BB8(v9, v5, type metadata accessor for FormatWebEmbed.Resolved);
    v18(&v19, v5);
    sub_1D5CECA00(v5, type metadata accessor for FormatWebEmbed.Resolved);
  }
}

uint64_t sub_1D5D53A80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D53AE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D53B50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D53BB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t FormatContentSlot.Resolved.puzzles.getter()
{
  v1 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v17 - v8;
  v10 = *(v0 + 32);
  v11 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v14 = *(v7 + 72);
    do
    {
      sub_1D5CEC8D8(v13, v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
      sub_1D5CEC8D8(v9, v4, type metadata accessor for FormatContentSlotItemObject.Resolved);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v15 = sub_1D5CECA00(v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
        MEMORY[0x1DA6F9CE0](v15);
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v11 = v18;
      }

      else
      {
        sub_1D5CECA00(v4, type metadata accessor for FormatContentSlotItemObject.Resolved);
        sub_1D5CECA00(v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
      }

      v13 += v14;
      --v12;
    }

    while (v12);
  }

  return v11;
}

uint64_t FormatContentSlot.Resolved.puzzleTypes.getter()
{
  v1 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v17 - v8;
  v10 = *(v0 + 32);
  v11 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v14 = *(v7 + 72);
    do
    {
      sub_1D5CEC8D8(v13, v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
      sub_1D5CEC8D8(v9, v4, type metadata accessor for FormatContentSlotItemObject.Resolved);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v15 = sub_1D5CECA00(v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
        MEMORY[0x1DA6F9CE0](v15);
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v11 = v18;
      }

      else
      {
        sub_1D5CECA00(v4, type metadata accessor for FormatContentSlotItemObject.Resolved);
        sub_1D5CECA00(v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
      }

      v13 += v14;
      --v12;
    }

    while (v12);
  }

  return v11;
}

void *FormatContentSlot.Resolved.puzzleStatistics.getter()
{
  sub_1D5D54424(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v31 - v7;
  v36 = type metadata accessor for PuzzleStatistic();
  v9 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v10);
  v35 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v34, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v31 - v18;
  v20 = *(v0 + 32);
  v21 = *(v20 + 16);
  if (!v21)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v22 = v20 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v33 = *(v17 + 72);
  v23 = (v9 + 56);
  v31 = v9;
  v24 = (v9 + 48);
  v25 = MEMORY[0x1E69E7CC0];
  v32 = v4;
  do
  {
    sub_1D5CEC8D8(v22, v19, type metadata accessor for FormatContentSlotItemObject.Resolved);
    sub_1D5CEC8D8(v19, v14, type metadata accessor for FormatContentSlotItemObject.Resolved);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1D5D53BB8(v14, v4, type metadata accessor for PuzzleStatistic);
      v26 = 0;
    }

    else
    {
      sub_1D5CECA00(v14, type metadata accessor for FormatContentSlotItemObject.Resolved);
      v26 = 1;
    }

    v27 = v36;
    (*v23)(v4, v26, 1, v36);
    sub_1D5D53BB8(v4, v8, sub_1D5D54424);
    sub_1D5CECA00(v19, type metadata accessor for FormatContentSlotItemObject.Resolved);
    if ((*v24)(v8, 1, v27) == 1)
    {
      sub_1D5CECA00(v8, sub_1D5D54424);
    }

    else
    {
      sub_1D5D53BB8(v8, v35, type metadata accessor for PuzzleStatistic);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1D698C9D8(0, v25[2] + 1, 1, v25);
      }

      v29 = v25[2];
      v28 = v25[3];
      if (v29 >= v28 >> 1)
      {
        v25 = sub_1D698C9D8(v28 > 1, v29 + 1, 1, v25);
      }

      v25[2] = v29 + 1;
      sub_1D5D53BB8(v35, v25 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v29, type metadata accessor for PuzzleStatistic);
      v4 = v32;
    }

    v22 += v33;
    --v21;
  }

  while (v21);
  return v25;
}

void sub_1D5D54458()
{
  v1 = type metadata accessor for PuzzleStatistic();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D54424(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v19 - v12;
  v15 = v0[1];
  v16 = *(*v0 + 16);
  if (v15 == v16)
  {
    (*(v2 + 56))(&v19 - v12, 1, 1, v1, v13);
  }

  else
  {
    if (v15 >= v16)
    {
      __break(1u);
      return;
    }

    sub_1D5CEC8D8(*v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v15, &v19 - v12, type metadata accessor for PuzzleStatistic);
    v0[1] = v15 + 1;
    (*(v2 + 56))(v14, 0, 1, v1, v17);
  }

  v18 = v0[2];
  sub_1D5D53BB8(v14, v9, sub_1D5D54424);
  if ((*(v2 + 48))(v9, 1, v1) != 1)
  {
    sub_1D5D53BB8(v9, v5, type metadata accessor for PuzzleStatistic);
    v18(&v19, v5);
    sub_1D5CECA00(v5, type metadata accessor for PuzzleStatistic);
  }
}

void *sub_1D5D546B4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PuzzleStatisticCategory(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t FormatContentSlot.Resolved.recipes.getter()
{
  v1 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v17 - v8;
  v10 = *(v0 + 32);
  v11 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v14 = *(v7 + 72);
    do
    {
      sub_1D5CEC8D8(v13, v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
      sub_1D5CEC8D8(v9, v4, type metadata accessor for FormatContentSlotItemObject.Resolved);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v15 = sub_1D5CECA00(v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
        MEMORY[0x1DA6F9CE0](v15);
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v11 = v18;
      }

      else
      {
        sub_1D5CECA00(v4, type metadata accessor for FormatContentSlotItemObject.Resolved);
        sub_1D5CECA00(v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
      }

      v13 += v14;
      --v12;
    }

    while (v12);
  }

  return v11;
}

uint64_t sub_1D5D5496C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PuzzleStatisticCategory(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *FormatContentSlot.Resolved.customItems.getter()
{
  sub_1D5D54E1C(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v31 - v7;
  v36 = type metadata accessor for FormatCustomItem.Resolved();
  v9 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v10);
  v35 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v34, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v31 - v18;
  v20 = *(v0 + 32);
  v21 = *(v20 + 16);
  if (!v21)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v22 = v20 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v33 = *(v17 + 72);
  v23 = (v9 + 56);
  v31 = v9;
  v24 = (v9 + 48);
  v25 = MEMORY[0x1E69E7CC0];
  v32 = v4;
  do
  {
    sub_1D5CEC8D8(v22, v19, type metadata accessor for FormatContentSlotItemObject.Resolved);
    sub_1D5CEC8D8(v19, v14, type metadata accessor for FormatContentSlotItemObject.Resolved);
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1D5D53BB8(v14, v4, type metadata accessor for FormatCustomItem.Resolved);
      v26 = 0;
    }

    else
    {
      sub_1D5CECA00(v14, type metadata accessor for FormatContentSlotItemObject.Resolved);
      v26 = 1;
    }

    v27 = v36;
    (*v23)(v4, v26, 1, v36);
    sub_1D5D53BB8(v4, v8, sub_1D5D54E1C);
    sub_1D5CECA00(v19, type metadata accessor for FormatContentSlotItemObject.Resolved);
    if ((*v24)(v8, 1, v27) == 1)
    {
      sub_1D5CECA00(v8, sub_1D5D54E1C);
    }

    else
    {
      sub_1D5D53BB8(v8, v35, type metadata accessor for FormatCustomItem.Resolved);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1D699549C(0, v25[2] + 1, 1, v25);
      }

      v29 = v25[2];
      v28 = v25[3];
      if (v29 >= v28 >> 1)
      {
        v25 = sub_1D699549C(v28 > 1, v29 + 1, 1, v25);
      }

      v25[2] = v29 + 1;
      sub_1D5D53BB8(v35, v25 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v29, type metadata accessor for FormatCustomItem.Resolved);
      v4 = v32;
    }

    v22 += v33;
    --v21;
  }

  while (v21);
  return v25;
}

void sub_1D5D54E50()
{
  v1 = type metadata accessor for FormatCustomItem.Resolved();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D54E1C(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v19 - v12;
  v15 = v0[1];
  v16 = *(*v0 + 16);
  if (v15 == v16)
  {
    (*(v2 + 56))(&v19 - v12, 1, 1, v1, v13);
  }

  else
  {
    if (v15 >= v16)
    {
      __break(1u);
      return;
    }

    sub_1D5CEC8D8(*v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v15, &v19 - v12, type metadata accessor for FormatCustomItem.Resolved);
    v0[1] = v15 + 1;
    (*(v2 + 56))(v14, 0, 1, v1, v17);
  }

  v18 = v0[2];
  sub_1D5D53BB8(v14, v9, sub_1D5D54E1C);
  if ((*(v2 + 48))(v9, 1, v1) != 1)
  {
    sub_1D5D53BB8(v9, v5, type metadata accessor for FormatCustomItem.Resolved);
    v18(&v19, v5);
    sub_1D5CECA00(v5, type metadata accessor for FormatCustomItem.Resolved);
  }
}

uint64_t sub_1D5D550AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D5B5DF98(0, &qword_1EDF40B30, type metadata accessor for FormatCustomItem.Action, MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5D55194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D5B5DF98(0, &qword_1EDF40B30, type metadata accessor for FormatCustomItem.Action, MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D5D55274(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1D5B858EC(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_1D5B9A6EC(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = v16 + result;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = (*(result + 48) + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_1D5B858EC((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (*(result + 48) + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_1D5B87E38();
  *v1 = v4;
  return result;
}

uint64_t sub_1D5D55530(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1D5D55574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v9 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return result;
  }

  v58 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, v9, 0);
  v53 = v8 + 56;
  v54 = v58;
  result = sub_1D7263B7C();
  v13 = result;
  v14 = 0;
  v55 = a6 + 56;
  v43 = v8 + 64;
  v48 = a3;
  v49 = a6;
  v50 = v8;
  v47 = v9;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(v8 + 32))
  {
    v16 = v13 >> 6;
    if ((*(v53 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_44;
    }

    v51 = v14;
    v52 = *(v8 + 36);
    v17 = (*(v8 + 48) + 16 * v13);
    v19 = *v17;
    v18 = v17[1];
    if (!a3 || (v19 == a2 ? (v20 = v18 == a3) : (v20 = 0), !v20 && (sub_1D72646CC() & 1) == 0 || !*(a6 + 16)))
    {

LABEL_25:
      v27 = MEMORY[0x1E69E6158];
      sub_1D5D60AB4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1D7270C10;
      *(v28 + 32) = a7;
      *(v28 + 40) = a8;
      *(v28 + 48) = v19;
      *(v28 + 56) = v18;
      sub_1D5D60AB4(0, &qword_1EDF43BA0, v27, MEMORY[0x1E69E62F8]);
      sub_1D5D56E88(&qword_1EDF3C840, &qword_1EDF43BA0, v27);

      v29 = sub_1D7261F3C();
      v31 = v30;

LABEL_26:

      goto LABEL_27;
    }

    sub_1D7264A0C();

    sub_1D72621EC();
    v21 = sub_1D7264A5C();
    v22 = -1 << *(a6 + 32);
    v23 = v21 & ~v22;
    if (((*(v55 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
LABEL_23:

      goto LABEL_25;
    }

    v24 = ~v22;
    while (1)
    {
      v25 = (*(a6 + 48) + 16 * v23);
      if (*v25 == a4 && v25[1] == a5)
      {
        v31 = a5;
        v29 = a4;
        goto LABEL_26;
      }

      if (sub_1D72646CC())
      {
        break;
      }

      v23 = (v23 + 1) & v24;
      if (((*(v55 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v29 = a4;
    v31 = a5;
LABEL_27:
    v32 = v54;
    v34 = *(v54 + 16);
    v33 = *(v54 + 24);
    if (v34 >= v33 >> 1)
    {
      result = sub_1D5BFC364((v33 > 1), v34 + 1, 1);
      v32 = v54;
    }

    *(v32 + 16) = v34 + 1;
    v35 = v32 + 16 * v34;
    *(v35 + 32) = v29;
    *(v35 + 40) = v31;
    v8 = v50;
    v15 = 1 << *(v50 + 32);
    if (v13 >= v15)
    {
      goto LABEL_45;
    }

    v36 = *(v53 + 8 * v16);
    if ((v36 & (1 << v13)) == 0)
    {
      goto LABEL_46;
    }

    v54 = v32;
    if (v52 != *(v50 + 36))
    {
      goto LABEL_47;
    }

    v37 = v36 & (-2 << (v13 & 0x3F));
    if (v37)
    {
      v15 = __clz(__rbit64(v37)) | v13 & 0x7FFFFFFFFFFFFFC0;
      a3 = v48;
      a6 = v49;
    }

    else
    {
      v38 = v16 << 6;
      v39 = v16 + 1;
      v40 = (v43 + 8 * v16);
      a3 = v48;
      a6 = v49;
      while (v39 < (v15 + 63) >> 6)
      {
        v42 = *v40++;
        v41 = v42;
        v38 += 64;
        ++v39;
        if (v42)
        {
          result = sub_1D5C86234(v13, v52, 0);
          v15 = __clz(__rbit64(v41)) + v38;
          goto LABEL_38;
        }
      }

      result = sub_1D5C86234(v13, v52, 0);
LABEL_38:
      v8 = v50;
    }

    v14 = v51 + 1;
    v13 = v15;
    if (v51 + 1 == v47)
    {
      return v54;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1D5D559EC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t FormatContentSubgroup.Resolved.placeholderIdentifiers.getter()
{
  FormatContentSubgroup.Resolved.placeholders.getter();
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v2, 0);
    v3 = v12;
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v12 + 16);
      v8 = *(v12 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_1D5BFC364((v8 > 1), v7 + 1, 1);
      }

      *(v12 + 16) = v7 + 1;
      v9 = v12 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  else
  {

    v3 = MEMORY[0x1E69E7CC0];
  }

  v10 = sub_1D5B86020(v3);

  return v10;
}

void FormatContentSubgroup.Resolved.placeholders.getter()
{
  v1 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  v33 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v33 - v7;
  v9 = v0[3];
  v43 = v0[2];
  v44 = v9;
  v45 = v0[4];
  v10 = v0[1];
  v41 = *v0;
  v42 = v10;
  sub_1D5CEBCF0();
  v36 = *(v11 + 16);
  if (!v36)
  {
LABEL_30:

    return;
  }

  v12 = 0;
  v35 = v11 + 32;
  v13 = MEMORY[0x1E69E7CC0];
  v39 = v1;
  v34 = v11;
  while (v12 < *(v11 + 16))
  {
    v37 = v12;
    v38 = v13;
    v14 = *(v35 + (v12 << 6) + 32);
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = v14 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
      v17 = *(v33 + 72);
      v18 = MEMORY[0x1E69E7CC0];
      v40 = v17;
      do
      {
        sub_1D5CEC7A0(v16, v8, type metadata accessor for FormatContentSlotItemObject.Resolved);
        sub_1D5CEC7A0(v8, v4, type metadata accessor for FormatContentSlotItemObject.Resolved);
        if (swift_getEnumCaseMultiPayload() <= 8)
        {
          sub_1D5D1EB58(v4, type metadata accessor for FormatContentSlotItemObject.Resolved);
          sub_1D5D1EB58(v8, type metadata accessor for FormatContentSlotItemObject.Resolved);
        }

        else
        {
          v20 = *v4;
          v19 = *(v4 + 1);
          v21 = v4[16];
          sub_1D5D1EB58(v8, type metadata accessor for FormatContentSlotItemObject.Resolved);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_1D5D55EC4(0, *(v18 + 2) + 1, 1, v18);
          }

          v23 = *(v18 + 2);
          v22 = *(v18 + 3);
          if (v23 >= v22 >> 1)
          {
            v18 = sub_1D5D55EC4((v22 > 1), v23 + 1, 1, v18);
          }

          *(v18 + 2) = v23 + 1;
          v24 = &v18[24 * v23];
          *(v24 + 4) = v20;
          *(v24 + 5) = v19;
          v24[48] = v21;
          v17 = v40;
        }

        v16 += v17;
        --v15;
      }

      while (v15);
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    v25 = *(v18 + 2);
    v13 = v38;
    v26 = *(v38 + 2);
    v27 = v26 + v25;
    if (__OFADD__(v26, v25))
    {
      goto LABEL_32;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v27 <= *(v13 + 3) >> 1)
    {
      if (*(v18 + 2))
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v26 <= v27)
      {
        v29 = v26 + v25;
      }

      else
      {
        v29 = v26;
      }

      v13 = sub_1D5D55EC4(isUniquelyReferenced_nonNull_native, v29, 1, v13);
      if (*(v18 + 2))
      {
LABEL_26:
        if ((*(v13 + 3) >> 1) - *(v13 + 2) < v25)
        {
          goto LABEL_34;
        }

        swift_arrayInitWithCopy();

        if (v25)
        {
          v30 = *(v13 + 2);
          v31 = __OFADD__(v30, v25);
          v32 = v30 + v25;
          if (v31)
          {
            goto LABEL_35;
          }

          *(v13 + 2) = v32;
        }

        goto LABEL_4;
      }
    }

    if (v25)
    {
      goto LABEL_33;
    }

LABEL_4:
    v12 = v37 + 1;
    v11 = v34;
    if (v37 + 1 == v36)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

char *sub_1D5D55ED8(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1D5B5A7F0(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t sub_1D5D5600C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v39 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v4, 0);
    v38 = v39;
    v6 = v3 + 56;
    result = sub_1D7263B7C();
    v7 = result;
    v8 = 0;
    v30 = v3 + 64;
    v31 = v4;
    v32 = v3 + 56;
    v33 = v3;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      v36 = v8;
      v37 = *(v3 + 36);
      v11 = (*(v3 + 48) + 16 * v7);
      v12 = *v11;
      v13 = v11[1];
      v14 = MEMORY[0x1E69E6158];
      sub_1D5D60AB4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1D7270C10;
      *(v15 + 32) = a2;
      *(v15 + 40) = a3;
      *(v15 + 48) = v12;
      *(v15 + 56) = v13;
      sub_1D5D60AB4(0, &qword_1EDF43BA0, v14, MEMORY[0x1E69E62F8]);
      sub_1D5D56E88(&qword_1EDF3C840, &qword_1EDF43BA0, v14);
      swift_bridgeObjectRetain_n();

      v16 = sub_1D7261F3C();
      v18 = v17;

      v19 = v38;
      v21 = *(v38 + 16);
      v20 = *(v38 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_1D5BFC364((v20 > 1), v21 + 1, 1);
        v19 = v38;
      }

      *(v19 + 16) = v21 + 1;
      v22 = v19 + 16 * v21;
      *(v22 + 32) = v16;
      *(v22 + 40) = v18;
      v3 = v33;
      v9 = 1 << *(v33 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v6 = v32;
      v23 = *(v32 + 8 * v10);
      if ((v23 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v19;
      if (v37 != *(v33 + 36))
      {
        goto LABEL_25;
      }

      v24 = v23 & (-2 << (v7 & 0x3F));
      if (v24)
      {
        v9 = __clz(__rbit64(v24)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v10 << 6;
        v26 = v10 + 1;
        v27 = (v30 + 8 * v10);
        while (v26 < (v9 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_1D5C86234(v7, v37, 0);
            v9 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_1D5C86234(v7, v37, 0);
      }

LABEL_4:
      v8 = v36 + 1;
      v7 = v9;
      if (v36 + 1 == v31)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5D5633C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1D725CE8C();
  v29 = a1;
  v30 = a5;
  BlueprintItem<>.feedItem.getter(v28, a5);
  v14 = FeedItem.identifier.getter();
  v16 = v15;
  sub_1D5BCA74C(v13, type metadata accessor for FeedItem);
  LOBYTE(v14) = sub_1D5BE240C(v14, v16, a2);

  if (v14)
  {
    return 1;
  }

  else
  {
    v27[0] = v5;
    v27[1] = a3;
    v18 = a3 + 56;
    v19 = 1 << *(a3 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(a3 + 56);
    v22 = (v19 + 63) >> 6;

    v24 = 0;
    while (v21)
    {
LABEL_11:
      v21 &= v21 - 1;

      BlueprintItem<>.feedItem.getter(v28, v30);
      FeedItem.identifier.getter();
      sub_1D5BCA74C(v13, type metadata accessor for FeedItem);
      v26 = sub_1D726230C();

      if (v26)
      {
        v17 = 1;
LABEL_14:

        return v17;
      }
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v22)
      {
        v17 = 0;
        goto LABEL_14;
      }

      v21 = *(v18 + 8 * v25);
      ++v24;
      if (v21)
      {
        v24 = v25;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_1D5D565AC(char *a1, int64_t a2, char a3)
{
  result = sub_1D5D565DC(a1, a2, a3, *v3, &unk_1EDF19A00, &type metadata for FeedSlot);
  *v3 = result;
  return result;
}

char *sub_1D5D565DC(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1D5B5A7F0(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 + 31;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 6);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[64 * v10])
    {
      memmove(v15, v16, v10 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t sub_1D5D56700@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = v14;
  v101 = a7;
  v102 = a8;
  v99 = a5;
  v100 = a6;
  v97 = a3;
  v98 = a4;
  v96 = a2;
  v89 = a9;
  v17 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  v95 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[1];
  v104 = *a1;
  v105 = v21;
  v22 = a1[3];
  v106 = a1[2];
  v107 = v22;
  v23 = v106;
  v24 = MEMORY[0x1E69E7CC0];
  v94 = *(v106 + 16);
  if (v94)
  {
    v25 = 0;
    v92 = a12;
    v93 = a13;
    v91 = a11;
    v90 = a10;
    while (v25 < *(v23 + 16))
    {
      sub_1D5CEB7B8(v23 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v25, v20, type metadata accessor for FormatContentSlotItemObject.Resolved);
      sub_1D5D60B04(v20, v96, v97, v98, v99, v100, v101, v102, &v109, v90, &v104, v91, v92, v93);
      v13 = v15;
      if (v15)
      {
        goto LABEL_60;
      }

      sub_1D5BCA74C(v20, type metadata accessor for FormatContentSlotItemObject.Resolved);
      v26 = v109;
      v27 = *(v109 + 16);
      v28 = *(v24 + 2);
      v29 = v28 + v27;
      if (__OFADD__(v28, v27))
      {
        goto LABEL_54;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v29 > *(v24 + 3) >> 1)
      {
        if (v28 <= v29)
        {
          v31 = v28 + v27;
        }

        else
        {
          v31 = v28;
        }

        v24 = sub_1D5D6149C(isUniquelyReferenced_nonNull_native, v31, 1, v24);
      }

      v15 = 0;
      if (*(v26 + 16))
      {
        if ((*(v24 + 3) >> 1) - *(v24 + 2) < v27)
        {
          goto LABEL_56;
        }

        swift_arrayInitWithCopy();

        if (v27)
        {
          v32 = *(v24 + 2);
          v33 = __OFADD__(v32, v27);
          v34 = v32 + v27;
          if (v33)
          {
            goto LABEL_57;
          }

          *(v24 + 2) = v34;
        }
      }

      else
      {

        if (v27)
        {
          goto LABEL_55;
        }
      }

      if (v94 == ++v25)
      {
        goto LABEL_19;
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

LABEL_19:
  v109 = v24;
  sub_1D5D56DE0(0, &qword_1EDF1B310, &type metadata for SlotReference, MEMORY[0x1E69E62F8]);
  sub_1D5D56E30(&unk_1EDF1B300, &qword_1EDF1B310, &type metadata for SlotReference);
  sub_1D5D56EE0();
  v102 = sub_1D72623BC();
  v35 = *(v24 + 2);
  v100 = *(&v104 + 1);
  v101 = v104;
  if (v35)
  {
    v109 = MEMORY[0x1E69E7CC0];

    sub_1D5BFC364(0, v35, 0);
    v36 = v109;
    v37 = (v24 + 40);
    do
    {
      v39 = *(v37 - 1);
      v38 = *v37;
      v109 = v36;
      v41 = *(v36 + 16);
      v40 = *(v36 + 24);

      if (v41 >= v40 >> 1)
      {
        sub_1D5BFC364((v40 > 1), v41 + 1, 1);
        v36 = v109;
      }

      *(v36 + 16) = v41 + 1;
      v42 = v36 + 16 * v41;
      *(v42 + 32) = v39;
      *(v42 + 40) = v38;
      v37 += 6;
      --v35;
    }

    while (v35);
  }

  else
  {

    v36 = MEMORY[0x1E69E7CC0];
  }

  v99 = sub_1D5B86020(v36);

  sub_1D5D56F34();
  v43 = v102;
  v44 = sub_1D72640FC();
  v45 = v44;
  v46 = 0;
  v49 = *(v43 + 64);
  v48 = v43 + 64;
  v47 = v49;
  v13 = 1;
  v50 = 1 << *(v48 - 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & v47;
  v20 = ((v50 + 63) >> 6);
  v53 = v44 + 64;
  if ((v51 & v47) != 0)
  {
    do
    {
      v54 = __clz(__rbit64(v52));
      v52 &= v52 - 1;
LABEL_35:
      v57 = v54 | (v46 << 6);
      v58 = (*(v102 + 48) + 16 * v57);
      v60 = *v58;
      v59 = v58[1];
      v61 = *(*(v102 + 56) + 48 * v57 + 16);
      *(v53 + ((v57 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v57;
      v62 = (v45[6] + 16 * v57);
      *v62 = v60;
      v62[1] = v59;
      *(v45[7] + 8 * v57) = v61;
      v63 = v45[2];
      v33 = __OFADD__(v63, 1);
      v64 = v63 + 1;
      if (v33)
      {
        goto LABEL_58;
      }

      v45[2] = v64;
    }

    while (v52);
  }

  v55 = v46;
  while (1)
  {
    v46 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (v46 >= v20)
    {
      break;
    }

    v56 = *(v48 + 8 * v46);
    ++v55;
    if (v56)
    {
      v54 = __clz(__rbit64(v56));
      v52 = (v56 - 1) & v56;
      goto LABEL_35;
    }
  }

  sub_1D5D56F9C();
  v65 = v102;
  v66 = sub_1D72640FC();
  v67 = v66;
  v68 = 0;
  v69 = 1 << *(v65 + 32);
  v70 = *(v65 + 64);
  v71 = -1;
  if (v69 < 64)
  {
    v71 = ~(-1 << v69);
  }

  v13 = v71 & v70;
  v72 = (v69 + 63) >> 6;
  v20 = (v66 + 64);
  if ((v71 & v70) == 0)
  {
LABEL_42:
    v74 = v68;
    while (1)
    {
      v68 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        goto LABEL_52;
      }

      if (v68 >= v72)
      {
        v84 = sub_1D5D57034(v102);

        v85 = v105;
        v108 = *(&v105 + 1);
        v109 = v105;
        v86 = v89;
        *v89 = v101;
        v86[1] = v100;
        v86[2] = v99;
        v86[3] = v45;
        v86[4] = v67;
        v86[5] = v84;
        *(v86 + 3) = v85;
        sub_1D5EF1D94(&v109, v103);
        return sub_1D5CEB7B8(&v108, v103, sub_1D5B81B04);
      }

      v75 = *(v48 + 8 * v68);
      ++v74;
      if (v75)
      {
        v73 = __clz(__rbit64(v75));
        v13 = (v75 - 1) & v75;
        goto LABEL_47;
      }
    }
  }

  while (1)
  {
    v73 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_47:
    v76 = v73 | (v68 << 6);
    v77 = (*(v102 + 48) + 16 * v76);
    v79 = *v77;
    v78 = v77[1];
    v80 = *(*(v102 + 56) + 48 * v76 + 24);
    *&v20[(v76 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v76;
    v81 = (v67[6] + 16 * v76);
    *v81 = v79;
    v81[1] = v78;
    *(v67[7] + 8 * v76) = v80;
    v82 = v67[2];
    v33 = __OFADD__(v82, 1);
    v83 = v82 + 1;
    if (v33)
    {
      break;
    }

    v67[2] = v83;

    if (!v13)
    {
      goto LABEL_42;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:

  sub_1D5BCA74C(v20, type metadata accessor for FormatContentSlotItemObject.Resolved);

  __break(1u);
  return result;
}

void sub_1D5D56DE0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D5D56E30(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D5D56DE0(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5D56E88(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D5D60AB4(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D5D56EE0()
{
  result = qword_1EDF32BE0[0];
  if (!qword_1EDF32BE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF32BE0);
  }

  return result;
}

void sub_1D5D56F34()
{
  if (!qword_1EDF1A3A0)
  {
    sub_1D5B81B04();
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A3A0);
    }
  }
}

void sub_1D5D56F9C()
{
  if (!qword_1EDF1A3B0)
  {
    sub_1D5B49898(255, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A3B0);
    }
  }
}

uint64_t sub_1D5D57034(uint64_t a1)
{
  v28 = MEMORY[0x1E69E7CC8];
  v32 = MEMORY[0x1E69E7CC8];
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  if (v4)
  {
    while (1)
    {
      v8 = v7;
LABEL_9:
      v9 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v10 = v9 | (v8 << 6);
      v11 = (*(a1 + 48) + 16 * v10);
      v12 = v11[1];
      v31 = *(*(a1 + 56) + 48 * v10 + 32);
      if (v31)
      {
        v27 = *v11;
        if (*(v28 + 24) <= *(v28 + 16))
        {
          v29 = *(v28 + 16);

          sub_1D5D615EC(v31);
          sub_1D5D615EC(v31);
          sub_1D6D69238(v29 + 1, 1);
          v14 = v32;
        }

        else
        {

          sub_1D5D615EC(v31);
          sub_1D5D615EC(v31);
          v14 = v28;
        }

        v28 = v14;
        sub_1D7264A0C();
        sub_1D72621EC();
        result = sub_1D7264A5C();
        v15 = v28 + 64;
        v16 = -1 << *(v28 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v28 + 64 + 8 * (v17 >> 6))) == 0)
        {
          v21 = 0;
          v22 = (63 - v16) >> 6;
          v20 = v31;
          while (++v18 != v22 || (v21 & 1) == 0)
          {
            v23 = v18 == v22;
            if (v18 == v22)
            {
              v18 = 0;
            }

            v21 |= v23;
            v24 = *(v15 + 8 * v18);
            if (v24 != -1)
            {
              v19 = __clz(__rbit64(~v24)) + (v18 << 6);
              goto LABEL_26;
            }
          }

LABEL_29:
          __break(1u);
          return result;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v28 + 64 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
        v20 = v31;
LABEL_26:
        *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        v25 = 16 * v19;
        v26 = (*(v28 + 48) + v25);
        *v26 = v27;
        v26[1] = v12;
        *(*(v28 + 56) + v25) = v20;
        ++*(v28 + 16);

        v13 = v31;
      }

      else
      {

        sub_1D5D615EC(0);

        v13 = 0;
      }

      result = sub_1D5CDE22C(v13);
      v7 = v8;
      if (!v4)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v8 >= v5)
    {
      break;
    }

    v4 = *(v1 + 8 * v8);
    ++v7;
    if (v4)
    {
      goto LABEL_9;
    }
  }

  return v28;
}

uint64_t FormatGroupLayoutFactoryModel.init(content:subgroup:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v37 = *a2;
  v40 = a2[1];
  v5 = a2[4];
  if (qword_1EDF22230 != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v39 = type metadata accessor for FormatContent.Resolved();
    v41 = a1;
    v6 = *(a1 + *(v39 + 32));
    a1 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__references;
    swift_beginAccess();
    v7 = *(v5 + a1);
    if (v6 >> 62)
    {
      a1 = *(v5 + a1);
      v5 = sub_1D7263BFC();
      v7 = a1;
    }

    else
    {
      v5 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v42 = a3;
    v38 = v7;

    if (!v5)
    {
      break;
    }

    v8 = 0;
    v43 = v6 & 0xC000000000000001;
    a3 = v6 & 0xFFFFFFFFFFFFFF8;
    v9 = MEMORY[0x1E69E7CC0];
    while (v43)
    {
      v10 = v6;
      v11 = MEMORY[0x1DA6FB460](v8, v6);
      a1 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

LABEL_11:
      v12 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__references;
      swift_beginAccess();
      v13 = *(v11 + v12);

      v14 = *(v13 + 16);
      v15 = v9[2];
      v16 = v15 + v14;
      if (__OFADD__(v15, v14))
      {
        goto LABEL_40;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v16 <= v9[3] >> 1)
      {
        if (!*(v13 + 16))
        {
          goto LABEL_6;
        }
      }

      else
      {
        if (v15 <= v16)
        {
          v18 = v15 + v14;
        }

        else
        {
          v18 = v15;
        }

        v9 = sub_1D5D57998(isUniquelyReferenced_nonNull_native, v18, 1, v9);
        if (!*(v13 + 16))
        {
LABEL_6:

          if (v14)
          {
            goto LABEL_41;
          }

          goto LABEL_7;
        }
      }

      v19 = (v9[3] >> 1) - v9[2];
      sub_1D5C2AB28(0);
      if (v19 < v14)
      {
        goto LABEL_42;
      }

      swift_arrayInitWithCopy();

      if (v14)
      {
        v20 = v9[2];
        v21 = __OFADD__(v20, v14);
        v22 = v20 + v14;
        if (v21)
        {
          goto LABEL_43;
        }

        v9[2] = v22;
      }

LABEL_7:
      ++v8;
      v6 = v10;
      if (a1 == v5)
      {
        goto LABEL_28;
      }
    }

    if (v8 < *(a3 + 16))
    {
      v10 = v6;
      v11 = *(v6 + 8 * v8 + 32);

      a1 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_26;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    swift_once();
  }

LABEL_27:
  v9 = MEMORY[0x1E69E7CC0];
LABEL_28:
  sub_1D5D579CC(v9);
  sub_1D5D57A14(v38);
  if (v23)
  {

    sub_1D725B86C();

    v24 = v38;
    v26 = v41;
    v25 = v42;
    if (v38)
    {
    }

    else
    {
      v24 = FormatPackageInventory.merging(with:)(v6);

      sub_1D725B87C();
    }
  }

  else
  {
    v24 = FormatPackageInventory.merging(with:)(v6);
    v26 = v41;
    v25 = v42;
  }

  v28 = *v26;
  v27 = v26[1];
  *v25 = v24;
  v25[1] = v28;
  v25[3] = 0;
  v25[4] = 0;
  v25[2] = v27;
  v29 = *(v26 + *(v39 + 40));
  v30 = *(v29 + 16);

  if (v30)
  {
    v31 = sub_1D5B69D90(v37, v40);
    if (v32)
    {
      v33 = (*(v29 + 56) + 16 * v31);
      v34 = *v33;
      v35 = v33[1];
    }

    else
    {
      v34 = MEMORY[0x1E69E7CD0];
      v35 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v34 = MEMORY[0x1E69E7CD0];
    v35 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5D600E0(v26);

  v25[5] = v34;
  v25[6] = v35;
  return result;
}

uint64_t sub_1D5D57804()
{
  type metadata accessor for FormatPackageInventoryCache();
  v0 = swift_allocObject();
  sub_1D5D57880();
  swift_allocObject();
  result = sub_1D725B83C();
  *(v0 + 16) = result;
  qword_1EDFFCA30 = v0;
  return result;
}

void sub_1D5D57880()
{
  if (!qword_1EDF3BA38)
  {
    type metadata accessor for FormatPackageInventory();
    sub_1D5D578EC();
    v0 = sub_1D725B84C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BA38);
    }
  }
}

unint64_t sub_1D5D578EC()
{
  result = qword_1EDF20748;
  if (!qword_1EDF20748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF20748);
  }

  return result;
}

unint64_t sub_1D5D57944()
{
  result = qword_1EDF20740;
  if (!qword_1EDF20740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF20740);
  }

  return result;
}

void sub_1D5D57A14(uint64_t a1)
{
  v2 = sub_1D72585BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v35 = v27 - v9;
  sub_1D5C2AB28(0);
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a1 + 16);
  if (v32)
  {
    v14 = 0;
    v15 = (v3 + 32);
    v30 = v3;
    v27[1] = v3 + 8;
    v28 = (v3 + 16);
    v16 = MEMORY[0x1E69E7CC0];
    v31 = a1;
    v29 = v6;
    while (1)
    {
      if (v14 >= *(a1 + 16))
      {
        __break(1u);
        return;
      }

      sub_1D5D57DE0(a1 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v14, v13);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        break;
      }

      v18 = *v15;
      v19 = v35;
      (*v15)(v35, v13, v2);
      (*v28)(v6, v19, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1D5D57E44(0, v16[2] + 1, 1, v16);
      }

      v21 = v16[2];
      v20 = v16[3];
      if (v21 >= v20 >> 1)
      {
        v16 = sub_1D5D57E44(v20 > 1, v21 + 1, 1, v16);
      }

      ++v14;
      sub_1D5D57E78(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
      v23 = *(v22 + 48);
      v24 = v30;
      (*(v30 + 8))(v35, v2);
      v16[2] = v21 + 1;
      v25 = v16 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21;
      v6 = v29;
      v18(v25, v29, v2);
      sub_1D5D57F60(&v13[v23], type metadata accessor for FormatMetadata);
      a1 = v31;
      if (v32 == v14)
      {
        goto LABEL_14;
      }
    }

    if (EnumCaseMultiPayload == 1)
    {

      sub_1D5D57E78(0, &unk_1EC88B470, type metadata accessor for FormatPackage);
      sub_1D5D57F60(&v13[*(v26 + 48)], type metadata accessor for FormatMetadata);
      sub_1D5D57F60(v13, type metadata accessor for FormatPackage);
      return;
    }

    goto LABEL_17;
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_14:

  if (!v16[2])
  {
LABEL_17:
  }
}

uint64_t sub_1D5D57DE0(uint64_t a1, uint64_t a2)
{
  sub_1D5C2AB28(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D5D57E78(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for FormatMetadata();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D5D57EEC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for FormatMetadata();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D5D57F60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FormatPackageInventory.merging(with:)(unint64_t a1)
{
  v2 = v1;
  v279 = *v1;
  sub_1D5C2B0C4(0, &qword_1EDF450D0, sub_1D5B5931C, &type metadata for FormatCodingEmptyNewsroomStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v257 - v6);
  v283 = type metadata accessor for FormatCompilerOptions(0);
  v280 = *(v283 - 8);
  MEMORY[0x1EEE9AC00](v283, v8);
  v289 = &v257 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v257 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v290 = &v257 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v277 = &v257 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v257 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v285 = &v257 - v26;
  v287 = sub_1D725BD1C();
  v27 = *(v287 - 8);
  MEMORY[0x1EEE9AC00](v287, v28);
  v298 = &v257 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v257 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = (&v257 - v36);
  v38 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_270;
  }

  v39 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v39)
  {
LABEL_271:

    return v2;
  }

LABEL_3:
  v296 = v39;
  v297 = v23;
  v258 = v13;
  v291 = v7;
  v40 = *(v2 + 24);
  v282 = *(v2 + 16);
  v275 = v40;
  sub_1D5C2AAC4(0, &qword_1EDF19B20, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6F90]);
  v41 = *(v27 + 72);
  v42 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1D7273AE0;
  v44 = *(v27 + 16);
  *&v299 = v42;
  v288 = v2;
  v292 = v44;
  v293 = v27 + 16;
  v44(v43 + v42, v2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_version, v287);
  if (v38)
  {
    v45 = sub_1D7263BFC();
  }

  else
  {
    v45 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v46 = MEMORY[0x1E69E7CC0];
  v276 = v27;
  v295 = a1;
  v300 = v45;
  v284 = v33;
  *&v294 = v45 & ~(v45 >> 63);
  if (v45)
  {
    v338 = MEMORY[0x1E69E7CC0];
    sub_1D5D5A84C(0, v45 & ~(v45 >> 63), 0);
    if (v45 < 0)
    {
      __break(1u);
      goto LABEL_274;
    }

    *&v286 = v43;
    v46 = v338;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v47 = 0;
      v48 = v287;
      do
      {
        v49 = MEMORY[0x1DA6FB460](v47, v295);
        v292(v37, v49 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_version, v48);
        swift_unknownObjectRelease();
        v338 = v46;
        v51 = v46[2];
        v50 = v46[3];
        if (v51 >= v50 >> 1)
        {
          sub_1D5D5A84C(v50 > 1, v51 + 1, 1);
          v46 = v338;
        }

        ++v47;
        v46[2] = v51 + 1;
        (*(v27 + 32))(v46 + v299 + v51 * v41, v37, v48);
      }

      while (v300 != v47);
    }

    else
    {
      v52 = (a1 + 32);
      v53 = (v27 + 32);
      v54 = v45;
      v55 = v287;
      v56 = v298;
      do
      {
        v292(v56, *v52 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_version, v55);
        v338 = v46;
        v58 = v46[2];
        v57 = v46[3];
        if (v58 >= v57 >> 1)
        {
          sub_1D5D5A84C(v57 > 1, v58 + 1, 1);
          v55 = v287;
          v46 = v338;
        }

        v46[2] = v58 + 1;
        (*v53)(v46 + v299 + v58 * v41, v56, v55);
        ++v52;
        --v54;
      }

      while (v54);
    }

    v33 = v284;
    a1 = v295;
    v43 = v286;
  }

  v338 = v43;
  sub_1D5D5A89C(v46);

  v37 = 0;
  sub_1D5D5A8E4(&v338);
  v23 = v296;

  if (!v338[2])
  {
    goto LABEL_285;
  }

  v292(v33, v338 + v299, v287);

  v59 = v288;
  v281 = v288[OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role];
  v60 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__direction;
  swift_beginAccess();
  v272 = v59[v60];
  v61 = &v59[OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__name];
  swift_beginAccess();
  v62 = *(v61 + 1);
  v271 = *v61;
  v63 = &v59[OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__comment];
  swift_beginAccess();
  v64 = *(v63 + 1);
  v274 = *v63;
  v65 = &v59[OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups];
  swift_beginAccess();
  v66 = *v65;
  v37 = *(v65 + 1);
  v67 = *(v65 + 2);
  v333 = v66;
  v334 = v37;
  v335 = v67;
  v2 = v300;
  v273 = v64;
  v270 = v62;
  if (!v300)
  {

    v68 = MEMORY[0x1E69E7CC0];
    goto LABEL_34;
  }

  *&v336 = MEMORY[0x1E69E7CC0];

  sub_1D5D5AEFC(0, v294, 0);
  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_274:
    __break(1u);
    goto LABEL_275;
  }

  v68 = v336;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v69 = 0;
    do
    {
      v70 = (MEMORY[0x1DA6FB460](v69, v295) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups);
      swift_beginAccess();
      v71 = *v70;
      v2 = v70[1];
      v72 = v70[2];

      swift_unknownObjectRelease();
      *&v336 = v68;
      v74 = *(v68 + 16);
      v73 = *(v68 + 24);
      if (v74 >= v73 >> 1)
      {
        sub_1D5D5AEFC((v73 > 1), v74 + 1, 1);
        v68 = v336;
      }

      ++v69;
      *(v68 + 16) = v74 + 1;
      v75 = (v68 + 24 * v74);
      v75[4] = v71;
      v75[5] = v2;
      v75[6] = v72;
    }

    while (v300 != v69);
  }

  else
  {
    v76 = (a1 + 32);
    v77 = v300;
    do
    {
      v78 = (*v76 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups);
      swift_beginAccess();
      v79 = *v78;
      v80 = v78[1];
      v2 = v78[2];
      *&v336 = v68;
      v82 = *(v68 + 16);
      v81 = *(v68 + 24);

      if (v82 >= v81 >> 1)
      {
        sub_1D5D5AEFC((v81 > 1), v82 + 1, 1);
        v68 = v336;
      }

      *(v68 + 16) = v82 + 1;
      v83 = (v68 + 24 * v82);
      v83[4] = v79;
      v83[5] = v80;
      v83[6] = v2;
      ++v76;
      --v77;
    }

    while (v77);
  }

  v59 = v288;
  a1 = v295;
  v23 = v296;
LABEL_34:
  sub_1D5D5AF1C(v68, &v336);

  v269 = v336;
  v37 = v337;
  v84 = &v59[OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__items];
  swift_beginAccess();
  v85 = *v84;
  v86 = *(v84 + 1);
  v329 = v85;
  v330 = v86;
  v33 = v300;
  v268 = v37;
  if (!v300)
  {

    v87 = MEMORY[0x1E69E7CC0];
    goto LABEL_43;
  }

  v328 = MEMORY[0x1E69E7CC0];

  sub_1D5D5B830(0, v294, 0);
  if ((v33 & 0x8000000000000000) != 0)
  {
LABEL_275:
    __break(1u);
    goto LABEL_276;
  }

  v87 = v328;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v88 = 0;
    do
    {
      v89 = MEMORY[0x1DA6FB460](v88, a1);
      v90 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__items;
      swift_beginAccess();
      v299 = *(v89 + v90);

      swift_unknownObjectRelease();
      v328 = v87;
      v33 = *(v87 + 16);
      v91 = *(v87 + 24);
      if (v33 >= v91 >> 1)
      {
        sub_1D5D5B830((v91 > 1), v33 + 1, 1);
        v87 = v328;
      }

      ++v88;
      *(v87 + 16) = v33 + 1;
      *(v87 + 16 * v33 + 32) = v299;
    }

    while (v300 != v88);
  }

  else
  {
    v33 = a1 + 32;
    v141 = v300;
    do
    {
      v142 = *v33;
      v143 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__items;
      swift_beginAccess();
      v299 = *(v142 + v143);
      v328 = v87;
      v2 = *(v87 + 16);
      v144 = *(v87 + 24);

      if (v2 >= v144 >> 1)
      {
        sub_1D5D5B830((v144 > 1), v2 + 1, 1);
        v87 = v328;
      }

      *(v87 + 16) = v2 + 1;
      *(v87 + 16 * v2 + 32) = v299;
      v33 += 8;
      --v141;
    }

    while (v141);
  }

LABEL_43:
  sub_1D5D5B860(v87, v332);

  v267 = v332[0];
  v92 = &v59[OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__snippets];
  swift_beginAccess();
  v93 = *v92;
  v94 = *(v92 + 1);
  v325 = v93;
  v326 = v94;
  v37 = v300;
  if (!v300)
  {

    v95 = MEMORY[0x1E69E7CC0];
    goto LABEL_52;
  }

  v324 = MEMORY[0x1E69E7CC0];

  sub_1D5D5BEA8(0, v294, 0);
  if ((v37 & 0x8000000000000000) != 0)
  {
LABEL_276:
    __break(1u);
    goto LABEL_277;
  }

  v95 = v324;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v96 = 0;
    do
    {
      v97 = MEMORY[0x1DA6FB460](v96, a1);
      v98 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__snippets;
      swift_beginAccess();
      v299 = *(v97 + v98);

      swift_unknownObjectRelease();
      v324 = v95;
      v33 = *(v95 + 16);
      v99 = *(v95 + 24);
      if (v33 >= v99 >> 1)
      {
        sub_1D5D5BEA8((v99 > 1), v33 + 1, 1);
        v95 = v324;
      }

      ++v96;
      *(v95 + 16) = v33 + 1;
      *(v95 + 16 * v33 + 32) = v299;
    }

    while (v300 != v96);
  }

  else
  {
    v33 = a1 + 32;
    v145 = v300;
    do
    {
      v146 = *v33;
      v147 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__snippets;
      swift_beginAccess();
      v299 = *(v146 + v147);
      v324 = v95;
      v2 = *(v95 + 16);
      v148 = *(v95 + 24);

      if (v2 >= v148 >> 1)
      {
        sub_1D5D5BEA8((v148 > 1), v2 + 1, 1);
        v95 = v324;
      }

      *(v95 + 16) = v2 + 1;
      *(v95 + 16 * v2 + 32) = v299;
      v33 += 8;
      --v145;
    }

    while (v145);
  }

LABEL_52:
  sub_1D5D5BED8(v95, v331);

  v266 = v331[0];
  v100 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles;
  swift_beginAccess();
  v37 = *&v59[v100 + 8];
  v101 = v300;
  v286 = *&v59[v100];
  v298 = v37;
  if (!v300)
  {

    v38 = MEMORY[0x1E69E7CC0];
    goto LABEL_61;
  }

  v322 = MEMORY[0x1E69E7CC0];

  sub_1D5D5C33C(0, v294, 0);
  if (v101 < 0)
  {
LABEL_277:
    __break(1u);
    goto LABEL_278;
  }

  v38 = v322;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v102 = 0;
    v2 = &qword_1EDF3EFA0[12];
    do
    {
      v103 = MEMORY[0x1DA6FB460](v102, a1);
      v104 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles;
      swift_beginAccess();
      v299 = *(v103 + v104);

      swift_unknownObjectRelease();
      v322 = v38;
      v33 = v38[2];
      v105 = v38[3];
      if (v33 >= v105 >> 1)
      {
        sub_1D5D5C33C((v105 > 1), v33 + 1, 1);
        v38 = v322;
      }

      ++v102;
      v38[2] = v33 + 1;
      *&v38[2 * v33 + 4] = v299;
    }

    while (v101 != v102);
  }

  else
  {
    v33 = a1 + 32;
    v149 = v101;
    do
    {
      v150 = *v33;
      v151 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles;
      swift_beginAccess();
      v299 = *(v150 + v151);
      v322 = v38;
      v152 = v38[2];
      v2 = v38[3];

      if (v152 >= v2 >> 1)
      {
        sub_1D5D5C33C((v2 > 1), v152 + 1, 1);
        v38 = v322;
      }

      v38[2] = v152 + 1;
      *&v38[2 * v152 + 4] = v299;
      v33 += 8;
      --v149;
    }

    while (v149);
  }

LABEL_61:
  v13 = v38[2];
  if (v13)
  {
    v2 = v286;

    v23 = 32;
    *&v299 = v2;
    v37 = &qword_1EDF33860;
    while (1)
    {
      a1 = *(v38 + v23);
      v7 = *(a1 + 16);
      v33 = *(v2 + 16);
      v27 = v7 + v33;
      if (__OFADD__(v33, v7))
      {
        goto LABEL_262;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v27 <= *(v2 + 24) >> 1)
      {
        if (*(a1 + 16))
        {
          goto LABEL_74;
        }
      }

      else
      {
        if (v33 <= v27)
        {
          v107 = v7 + v33;
        }

        else
        {
          v107 = v33;
        }

        v2 = sub_1D5D5C3FC(isUniquelyReferenced_nonNull_native, v107, 1, v2);
        if (*(a1 + 16))
        {
LABEL_74:
          v33 = *(v2 + 16);
          v27 = (*(v2 + 24) >> 1) - v33;
          sub_1D5C2B0C4(0, &qword_1EDF33860, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatObject);
          if (v27 < v7)
          {
            goto LABEL_266;
          }

          swift_arrayInitWithCopy();

          a1 = v295;
          if (v7)
          {
            v108 = *(v2 + 16);
            v109 = __OFADD__(v108, v7);
            v110 = v7 + v108;
            if (v109)
            {
              goto LABEL_268;
            }

            *(v2 + 16) = v110;
          }

          goto LABEL_64;
        }
      }

      a1 = v295;
      if (v7)
      {
        goto LABEL_263;
      }

LABEL_64:
      v23 += 16;
      if (!--v13)
      {

        sub_1D5C4B5C8(v2, &v327);

        v286 = v327;
        v23 = v296;
        goto LABEL_80;
      }
    }
  }

  v327 = v286;
LABEL_80:
  v13 = v288;
  v111 = &v288[OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__slots];
  swift_beginAccess();
  v112 = *v111;
  v113 = *(v111 + 1);
  v319 = v112;
  v320 = v113;
  v37 = v300;
  if (!v300)
  {

    v114 = MEMORY[0x1E69E7CC0];
    goto LABEL_89;
  }

  v318 = MEMORY[0x1E69E7CC0];

  sub_1D5D5C638(0, v294, 0);
  if ((v37 & 0x8000000000000000) != 0)
  {
LABEL_278:
    __break(1u);
    goto LABEL_279;
  }

  v114 = v318;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v115 = 0;
    do
    {
      v116 = MEMORY[0x1DA6FB460](v115, a1);
      v117 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__slots;
      swift_beginAccess();
      v299 = *(v116 + v117);

      swift_unknownObjectRelease();
      v318 = v114;
      v33 = *(v114 + 16);
      v118 = *(v114 + 24);
      if (v33 >= v118 >> 1)
      {
        sub_1D5D5C638((v118 > 1), v33 + 1, 1);
        v114 = v318;
      }

      ++v115;
      *(v114 + 16) = v33 + 1;
      *(v114 + 16 * v33 + 32) = v299;
    }

    while (v300 != v115);
  }

  else
  {
    v33 = a1 + 32;
    v153 = v300;
    do
    {
      v154 = *v33;
      v155 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__slots;
      swift_beginAccess();
      v299 = *(v154 + v155);
      v318 = v114;
      v2 = *(v114 + 16);
      v156 = *(v114 + 24);

      if (v2 >= v156 >> 1)
      {
        sub_1D5D5C638((v156 > 1), v2 + 1, 1);
        v114 = v318;
      }

      *(v114 + 16) = v2 + 1;
      *(v114 + 16 * v2 + 32) = v299;
      v33 += 8;
      --v153;
    }

    while (v153);
  }

LABEL_89:
  sub_1D5D5C668(v114, &v323);

  v265 = v323;
  v119 = &v13[OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__supplementaries];
  swift_beginAccess();
  v120 = *v119;
  v121 = *(v119 + 1);
  v315 = v120;
  v316 = v121;
  v37 = v300;
  if (!v300)
  {

    v122 = MEMORY[0x1E69E7CC0];
    goto LABEL_98;
  }

  v314 = MEMORY[0x1E69E7CC0];

  sub_1D5D5CABC(0, v294, 0);
  if ((v37 & 0x8000000000000000) != 0)
  {
LABEL_279:
    __break(1u);
    goto LABEL_280;
  }

  v122 = v314;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v123 = 0;
    do
    {
      v124 = MEMORY[0x1DA6FB460](v123, a1);
      v125 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__supplementaries;
      swift_beginAccess();
      v299 = *(v124 + v125);

      swift_unknownObjectRelease();
      v314 = v122;
      v33 = *(v122 + 16);
      v126 = *(v122 + 24);
      if (v33 >= v126 >> 1)
      {
        sub_1D5D5CABC((v126 > 1), v33 + 1, 1);
        v122 = v314;
      }

      ++v123;
      *(v122 + 16) = v33 + 1;
      *(v122 + 16 * v33 + 32) = v299;
    }

    while (v300 != v123);
  }

  else
  {
    v33 = a1 + 32;
    v157 = v300;
    do
    {
      v158 = *v33;
      v159 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__supplementaries;
      swift_beginAccess();
      v299 = *(v158 + v159);
      v314 = v122;
      v2 = *(v122 + 16);
      v160 = *(v122 + 24);

      if (v2 >= v160 >> 1)
      {
        sub_1D5D5CABC((v160 > 1), v2 + 1, 1);
        v122 = v314;
      }

      *(v122 + 16) = v2 + 1;
      *(v122 + 16 * v2 + 32) = v299;
      v33 += 8;
      --v157;
    }

    while (v157);
  }

LABEL_98:
  sub_1D5D5CAEC(v122, &v321);

  v264 = v321;
  v127 = &v13[OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types];
  swift_beginAccess();
  v128 = *v127;
  v129 = *(v127 + 1);
  v312 = v128;
  v313 = v129;
  v37 = v300;
  if (!v300)
  {

    v130 = MEMORY[0x1E69E7CC0];
    goto LABEL_107;
  }

  v311 = MEMORY[0x1E69E7CC0];

  sub_1D5D5D1C4(0, v294, 0);
  if ((v37 & 0x8000000000000000) != 0)
  {
LABEL_280:
    __break(1u);
    goto LABEL_281;
  }

  v130 = v311;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v131 = 0;
    do
    {
      v132 = MEMORY[0x1DA6FB460](v131, a1);
      v133 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types;
      swift_beginAccess();
      v299 = *(v132 + v133);

      swift_unknownObjectRelease();
      v311 = v130;
      v33 = *(v130 + 16);
      v134 = *(v130 + 24);
      if (v33 >= v134 >> 1)
      {
        sub_1D5D5D1C4((v134 > 1), v33 + 1, 1);
        v130 = v311;
      }

      ++v131;
      *(v130 + 16) = v33 + 1;
      *(v130 + 16 * v33 + 32) = v299;
    }

    while (v300 != v131);
  }

  else
  {
    v33 = a1 + 32;
    v161 = v300;
    do
    {
      v162 = *v33;
      v163 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types;
      swift_beginAccess();
      v299 = *(v162 + v163);
      v311 = v130;
      v2 = *(v130 + 16);
      v164 = *(v130 + 24);

      if (v2 >= v164 >> 1)
      {
        sub_1D5D5D1C4((v164 > 1), v2 + 1, 1);
        v130 = v311;
      }

      *(v130 + 16) = v2 + 1;
      *(v130 + 16 * v2 + 32) = v299;
      v33 += 8;
      --v161;
    }

    while (v161);
  }

LABEL_107:
  sub_1D5D5D1F4(v130, &v317);

  v263 = v317;
  v135 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__decorations;
  swift_beginAccess();
  v27 = *&v13[v135];
  v37 = v300;
  *&v299 = v27;
  if (v300)
  {
    v310 = MEMORY[0x1E69E7CC0];

    sub_1D5D5D874(0, v294, 0);
    if ((v37 & 0x8000000000000000) == 0)
    {
      v38 = v310;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v136 = 0;
        do
        {
          v137 = MEMORY[0x1DA6FB460](v136, a1);
          v138 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__decorations;
          swift_beginAccess();
          v139 = *(v137 + v138);

          swift_unknownObjectRelease();
          v310 = v38;
          v33 = v38[2];
          v140 = v38[3];
          if (v33 >= v140 >> 1)
          {
            sub_1D5D5D874((v140 > 1), v33 + 1, 1);
            v38 = v310;
          }

          ++v136;
          v38[2] = v33 + 1;
          v38[v33 + 4] = v139;
        }

        while (v300 != v136);
      }

      else
      {
        v33 = a1 + 32;
        v165 = v300;
        do
        {
          v166 = *v33;
          v167 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__decorations;
          swift_beginAccess();
          v168 = *(v166 + v167);
          v310 = v38;
          v2 = v38[2];
          v169 = v38[3];

          if (v2 >= v169 >> 1)
          {
            sub_1D5D5D874((v169 > 1), v2 + 1, 1);
            v38 = v310;
          }

          v38[2] = v2 + 1;
          v38[v2 + 4] = v168;
          v33 += 8;
          --v165;
          v13 = v288;
        }

        while (v165);
      }

      v27 = v299;
      v37 = v38[2];
      if (v37)
      {
        goto LABEL_152;
      }

LABEL_116:
      v262 = v27;
      goto LABEL_169;
    }

LABEL_281:
    __break(1u);
LABEL_282:
    __break(1u);
LABEL_283:
    __break(1u);
LABEL_284:
    __break(1u);
LABEL_285:

    __break(1u);

    __break(1u);
    return result;
  }

  v38 = MEMORY[0x1E69E7CC0];
  v37 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v37)
  {
    goto LABEL_116;
  }

LABEL_152:
  v13 = (v38 + 4);

  v2 = &type metadata for FormatDecoration;
  do
  {
    a1 = *v13;
    v7 = *(*v13 + 16);
    v33 = *(v27 + 16);
    v23 = v7 + v33;
    if (__OFADD__(v33, v7))
    {
      goto LABEL_264;
    }

    v170 = swift_isUniquelyReferenced_nonNull_native();
    if (v170 && v23 <= *(v27 + 24) >> 1)
    {
      if (!*(a1 + 16))
      {
        goto LABEL_153;
      }
    }

    else
    {
      if (v33 <= v23)
      {
        v171 = v7 + v33;
      }

      else
      {
        v171 = v33;
      }

      v27 = sub_1D5D5D934(v170, v171, 1, v27);
      if (!*(a1 + 16))
      {
LABEL_153:

        a1 = v295;
        v23 = v296;
        if (v7)
        {
          goto LABEL_265;
        }

        goto LABEL_154;
      }
    }

    v33 = *(v27 + 16);
    v23 = (*(v27 + 24) >> 1) - v33;
    sub_1D5C2B0C4(0, qword_1EDF338D8, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatObject);
    if (v23 < v7)
    {
      goto LABEL_267;
    }

    swift_arrayInitWithCopy();

    a1 = v295;
    v23 = v296;
    if (v7)
    {
      v172 = *(v27 + 16);
      v109 = __OFADD__(v172, v7);
      v173 = v7 + v172;
      if (v109)
      {
        goto LABEL_269;
      }

      *(v27 + 16) = v173;
    }

LABEL_154:
    v13 += 8;
    v37 = (v37 - 1);
  }

  while (v37);
  v262 = v27;

  v13 = v288;
LABEL_169:

  v38 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__options;
  swift_beginAccess();
  v7 = *(v38 + v13);
  v309 = MEMORY[0x1E69E7CC0];
  v298 = (a1 & 0xFFFFFFFFFFFFFF8);
  *&v299 = a1 & 0xC000000000000001;
  v278 = (a1 + 32);

  v27 = 0;
  while (2)
  {
    if (!v299)
    {
      if (v27 < *(v298 + 2))
      {
        v174 = *(a1 + 8 * v27 + 32);

        v37 = (v27 + 1);
        if (__OFADD__(v27, 1))
        {
          goto LABEL_177;
        }

LABEL_173:
        v33 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__options;
        swift_beginAccess();
        v2 = *(v174 + v33);

        v38 = &v309;
        sub_1D5D505F0(v2);
        ++v27;
        if (v37 == v23)
        {
          goto LABEL_178;
        }

        continue;
      }

      __break(1u);
LABEL_257:
      __break(1u);
LABEL_258:
      __break(1u);
LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
LABEL_261:
      __break(1u);
LABEL_262:
      __break(1u);
LABEL_263:
      __break(1u);
LABEL_264:
      __break(1u);
LABEL_265:
      __break(1u);
LABEL_266:
      __break(1u);
LABEL_267:
      __break(1u);
LABEL_268:
      __break(1u);
LABEL_269:
      __break(1u);
LABEL_270:
      v39 = sub_1D7263BFC();
      if (!v39)
      {
        goto LABEL_271;
      }

      goto LABEL_3;
    }

    break;
  }

  v174 = MEMORY[0x1DA6FB460](v27, a1);
  v37 = (v27 + 1);
  if (!__OFADD__(v27, 1))
  {
    goto LABEL_173;
  }

LABEL_177:
  __break(1u);
LABEL_178:
  v261 = sub_1D5D5DB70(v309, v7);

  v38 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__selectors;
  swift_beginAccess();
  v7 = *(v38 + v13);
  v307 = MEMORY[0x1E69E7CC0];

  v27 = 0;
  while (2)
  {
    if (v299)
    {
      v175 = MEMORY[0x1DA6FB460](v27, a1);
      v37 = (v27 + 1);
      if (__OFADD__(v27, 1))
      {
        break;
      }

      goto LABEL_182;
    }

    if (v27 >= *(v298 + 2))
    {
      goto LABEL_257;
    }

    v175 = *(a1 + 8 * v27 + 32);

    v37 = (v27 + 1);
    if (!__OFADD__(v27, 1))
    {
LABEL_182:
      v33 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__selectors;
      swift_beginAccess();
      v2 = *(v175 + v33);

      v38 = &v307;
      sub_1D5D55274(v2);
      ++v27;
      if (v37 == v23)
      {
        goto LABEL_187;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_187:
  v176 = sub_1D5BA8750(v307, v7);

  v177 = &v13[OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__localizations];
  swift_beginAccess();
  v178 = *v177;
  v179 = *(v177 + 1);
  v305 = v178;
  v306 = v179;
  v37 = v300;
  v260 = v176;
  if (!v300)
  {

    v180 = MEMORY[0x1E69E7CC0];
    goto LABEL_196;
  }

  v304 = MEMORY[0x1E69E7CC0];

  sub_1D5D5EC14(0, v294, 0);
  if ((v37 & 0x8000000000000000) != 0)
  {
    goto LABEL_282;
  }

  v180 = v304;
  if (v299)
  {
    v181 = 0;
    do
    {
      v182 = MEMORY[0x1DA6FB460](v181, a1);
      v183 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__localizations;
      swift_beginAccess();
      v294 = *(v182 + v183);

      swift_unknownObjectRelease();
      v304 = v180;
      v185 = *(v180 + 16);
      v184 = *(v180 + 24);
      if (v185 >= v184 >> 1)
      {
        sub_1D5D5EC14((v184 > 1), v185 + 1, 1);
        v180 = v304;
      }

      ++v181;
      *(v180 + 16) = v185 + 1;
      *(v180 + 16 * v185 + 32) = v294;
    }

    while (v300 != v181);
  }

  else
  {
    v197 = v278;
    v198 = v300;
    do
    {
      v199 = *v197;
      v200 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__localizations;
      swift_beginAccess();
      v294 = *(v199 + v200);
      v304 = v180;
      v202 = *(v180 + 16);
      v201 = *(v180 + 24);

      if (v202 >= v201 >> 1)
      {
        sub_1D5D5EC14((v201 > 1), v202 + 1, 1);
        v180 = v304;
      }

      *(v180 + 16) = v202 + 1;
      *(v180 + 16 * v202 + 32) = v294;
      ++v197;
      --v198;
    }

    while (v198);
  }

LABEL_196:
  v27 = v283;
  sub_1D5D5EC44(v180, &v308);

  v186 = MEMORY[0x1E69E7CC0];
  v259 = v308;
  v187 = &OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role;
  v37 = v300;
  if (!v300)
  {
    v188 = v280;
    goto LABEL_219;
  }

  v305 = MEMORY[0x1E69E7CC0];
  sub_1D5D5F584(v300, sub_1D5D5F614);
  v188 = v280;
  if ((v37 & 0x8000000000000000) != 0)
  {
    goto LABEL_283;
  }

  v186 = v305;
  if (v299)
  {
    v189 = 0;
    v190 = v290;
    do
    {
      v191 = MEMORY[0x1DA6FB460](v189, a1);
      sub_1D5D054F0(v191 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions, v190, type metadata accessor for FormatCompilerOptions);
      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D5D5F614(0, *(v186 + 16) + 1, 1);
        v186 = v305;
      }

      v193 = *(v186 + 16);
      v192 = *(v186 + 24);
      v194 = v186;
      v195 = v290;
      if (v193 >= v192 >> 1)
      {
        sub_1D5D5F614(v192 > 1, v193 + 1, 1);
        v195 = v290;
        v194 = v305;
      }

      ++v189;
      *(v194 + 16) = v193 + 1;
      v196 = v194 + ((*(v188 + 80) + 32) & ~*(v188 + 80)) + *(v188 + 72) * v193;
      v190 = v195;
      sub_1D5C502D8(v195, v196, type metadata accessor for FormatCompilerOptions);
      v186 = v194;
    }

    while (v300 != v189);
  }

  else
  {
    v203 = v278;
    v204 = v289;
    do
    {
      sub_1D5D054F0(*v203 + v187[1], v204, type metadata accessor for FormatCompilerOptions);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D5D5F614(0, *(v186 + 16) + 1, 1);
        v204 = v289;
        v186 = v305;
      }

      v206 = *(v186 + 16);
      v205 = *(v186 + 24);
      if (v206 >= v205 >> 1)
      {
        sub_1D5D5F614(v205 > 1, v206 + 1, 1);
        v204 = v289;
        v186 = v305;
      }

      *(v186 + 16) = v206 + 1;
      sub_1D5C502D8(v204, v186 + ((*(v188 + 80) + 32) & ~*(v188 + 80)) + *(v188 + 72) * v206, type metadata accessor for FormatCompilerOptions);
      ++v203;
      --v300;
      v187 = &OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role;
    }

    while (v300);
  }

  v27 = v283;
LABEL_219:
  sub_1D5D054F0(&v13[v187[1]], v297, type metadata accessor for FormatCompilerOptions);
  v207 = v186;
  v208 = *(v186 + 16);
  if (v208)
  {
    v209 = *(v27 + 28);
    v300 = *(v27 + 24);
    *&v294 = v209;
    v210 = *(v27 + 32);
    v211 = *(v188 + 80);
    v283 = v207;
    v212 = v207 + ((v211 + 32) & ~v211);
    v289 = *(v188 + 72);
    v290 = v210;
    v213 = v258;
    v214 = v297;
    v215 = v277;
    do
    {
      sub_1D5D054F0(v212, v215, type metadata accessor for FormatCompilerOptions);
      v305 = *v214;

      sub_1D5D5F664(v216);
      v217 = v305;
      v305 = *(v297 + 8);

      sub_1D5D5F6AC(v218);
      v219 = v305;
      v220 = v291;
      sub_1D5CF8338(v297 + v300, v291, &qword_1EDF450D0, sub_1D5B5931C, &type metadata for FormatCodingEmptyNewsroomStrategy, type metadata accessor for FormatCodingDefault);
      sub_1D5C502D8(v220, v213 + *(v27 + 24), type metadata accessor for FormatCompilerOptions.Newsroom);
      sub_1D5D5F6F4(v297 + v294, v215 + v294, (v213 + *(v27 + 28)));
      v221 = *&v290[v297];

      v223 = sub_1D5D5FCA0(v222, v221);
      sub_1D5CF6420(v215, type metadata accessor for FormatCompilerOptions);
      v214 = v297;
      sub_1D5CF6420(v297, type metadata accessor for FormatCompilerOptions);
      *v213 = v217;
      v213[1] = v219;
      *(v213 + *(v27 + 32)) = v223;
      sub_1D5C502D8(v213, v214, type metadata accessor for FormatCompilerOptions);
      v212 += v289;
      --v208;
    }

    while (v208);

    v13 = v288;
    a1 = v295;
    v23 = v296;
  }

  else
  {
  }

  sub_1D5C502D8(v297, v285, type metadata accessor for FormatCompilerOptions);
  v2 = &OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role;
  v224 = &v13[OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_columnSystem];
  v13 = *&v13[OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_columnSystem];
  v38 = *(v224 + 1);
  sub_1D5D5FDA4(v13, v38);
  v37 = 0;
  v7 = v278;
  while (2)
  {
    v33 = v37;
    while (2)
    {
      if (v299)
      {
        v226 = MEMORY[0x1DA6FB460](v33, a1);
        v37 = (v33 + 1);
        if (__OFADD__(v33, 1))
        {
          goto LABEL_284;
        }

        v227 = (v226 + *(v2 + 16));
        v27 = *v227;
        v33 = v227[1];
        sub_1D5D5FDA4(*v227, v33);
        swift_unknownObjectRelease();
        v2 = 0x1EDFFD000;
        if (v33 != 2)
        {
          goto LABEL_236;
        }

        goto LABEL_230;
      }

      if ((v33 & 0x8000000000000000) != 0)
      {
        goto LABEL_258;
      }

      if (v33 >= *(v298 + 2))
      {
        goto LABEL_259;
      }

      v37 = (v33 + 1);
      v225 = v7[v33] + *(v2 + 16);
      v33 = *(v225 + 8);
      if (v33 == 2)
      {
LABEL_230:
        v33 = v37;
        if (v37 == v23)
        {
          v27 = v13;
          v33 = v38;
          goto LABEL_237;
        }

        continue;
      }

      break;
    }

    v27 = *v225;
    sub_1D62B5D30(*v225, *(v225 + 8));
LABEL_236:
    sub_1D5C5D428(v13, v38);
    v38 = v33;
    v13 = v27;
    if (v37 != v23)
    {
      continue;
    }

    break;
  }

LABEL_237:
  v297 = v27;
  v27 = &qword_1EDF3EFA0[12];
  v38 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__references;
  v13 = v288;
  swift_beginAccess();
  v228 = *(v38 + v13);
  v303 = MEMORY[0x1E69E7CC0];
  v300 = v228;

  v2 = 0;
  while (2)
  {
    if (v299)
    {
      v229 = MEMORY[0x1DA6FB460](v2, a1);
      v37 = (v2 + 1);
      if (__OFADD__(v2, 1))
      {
        break;
      }

      goto LABEL_241;
    }

    if (v2 >= *(v298 + 2))
    {
      goto LABEL_260;
    }

    v229 = *(a1 + 8 * v2 + 32);

    v37 = (v2 + 1);
    if (!__OFADD__(v2, 1))
    {
LABEL_241:
      v7 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__references;
      swift_beginAccess();
      v23 = *(v7 + v229);

      v38 = &v303;
      sub_1D5D579CC(v23);
      ++v2;
      if (v37 == v296)
      {
        goto LABEL_246;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_246:
  v230 = v303;
  v303 = v300;
  sub_1D5D579CC(v230);
  v300 = v303;
  v7 = &qword_1EDF3EFA0[12];
  v38 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__traits;
  swift_beginAccess();
  v231 = *(v38 + v13);
  v302 = MEMORY[0x1E69E7CC0];
  v295 = v231;

  v2 = 0;
  while (2)
  {
    if (v299)
    {
      v232 = MEMORY[0x1DA6FB460](v2, a1);
      v37 = (v2 + 1);
      if (__OFADD__(v2, 1))
      {
        break;
      }

      goto LABEL_250;
    }

    if (v2 >= *(v298 + 2))
    {
      goto LABEL_261;
    }

    v232 = *(a1 + 8 * v2 + 32);

    v37 = (v2 + 1);
    if (!__OFADD__(v2, 1))
    {
LABEL_250:
      v13 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__traits;
      swift_beginAccess();
      v23 = *&v13[v232];

      v38 = &v302;
      sub_1D5D55274(v23);
      ++v2;
      if (v37 == v296)
      {
        goto LABEL_255;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_255:
  *&v299 = sub_1D5BA8750(v302, v295);

  v233 = swift_allocObject();
  v234 = (v233 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__name);
  *v234 = 0;
  v234[1] = 0;
  v235 = (v233 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__comment);
  *v235 = 0;
  v235[1] = 0;
  v236 = v275;
  *(v233 + 16) = v282;
  *(v233 + 24) = v236;
  v292((v233 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_version), v284, v287);
  *(v233 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) = v281;
  v237 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__direction;
  swift_beginAccess();
  *(v233 + v237) = v272;
  swift_beginAccess();
  v238 = v270;
  *v234 = v271;
  v234[1] = v238;

  v2 = v233;

  swift_beginAccess();
  v239 = v273;
  *v235 = v274;
  v235[1] = v239;

  v240 = v233 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups;
  swift_beginAccess();
  *v240 = v269;
  *(v240 + 16) = v268;
  v241 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__items;
  swift_beginAccess();
  *(v233 + v241) = v267;
  v242 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__snippets;
  swift_beginAccess();
  *(v233 + v242) = v266;
  v243 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles;
  swift_beginAccess();
  *(v233 + v243) = v286;
  v244 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__slots;
  swift_beginAccess();
  *(v233 + v244) = v265;
  v245 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__supplementaries;
  swift_beginAccess();
  *(v233 + v245) = v264;
  v246 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types;
  swift_beginAccess();
  *(v233 + v246) = v263;
  v247 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__decorations;
  swift_beginAccess();
  *(v233 + v247) = v262;
  v248 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__options;
  swift_beginAccess();
  *(v233 + v248) = v261;
  v301 = v281;
  v249 = sub_1D5D5FDB4(v282, v236);
  v250 = sub_1D5BA8750(v249, v260);

  (*(v276 + 8))(v284, v287);
  v251 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__selectors;
  swift_beginAccess();
  *(v233 + v251) = v250;
  v252 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__localizations;
  swift_beginAccess();
  *(v233 + v252) = v259;
  sub_1D5C502D8(v285, v233 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions, type metadata accessor for FormatCompilerOptions);
  v253 = (v233 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_columnSystem);
  *v253 = v297;
  v253[1] = v33;
  v254 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__references;
  swift_beginAccess();
  *(v233 + v254) = v300;
  v255 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__traits;
  swift_beginAccess();
  *(v233 + v255) = v299;
  return v2;
}