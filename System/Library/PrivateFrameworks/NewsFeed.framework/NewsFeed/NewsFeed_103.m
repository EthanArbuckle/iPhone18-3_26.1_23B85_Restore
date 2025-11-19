void sub_1D64B3778(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v3 = 0x80000001D73BB880;
    v9 = 0xD000000000000017;
    if (v2 != 6)
    {
      v9 = 0xD00000000000001CLL;
      v3 = 0x80000001D73BB8A0;
    }

    v6 = 0xEC00000064657564;
    v10 = 0xD000000000000016;
    if (v2 == 4)
    {
      v10 = 0x6275536563726F66;
    }

    else
    {
      v6 = 0x80000001D73BB860;
    }

    v7 = *v1 <= 5u;
    if (*v1 <= 5u)
    {
      v8 = v10;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xEF776F6461685367;
    v4 = 0x6E6964756C637865;
    if (v2 != 2)
    {
      v4 = 0x7263536563726F66;
      v3 = 0xEA00000000006D69;
    }

    v5 = 0xD000000000000010;
    v6 = 0x80000001D73BB800;
    if (*v1)
    {
      v5 = 0xD000000000000013;
      v6 = 0x80000001D73BB820;
    }

    v7 = *v1 <= 1u;
    if (*v1 <= 1u)
    {
      v8 = v5;
    }

    else
    {
      v8 = v4;
    }
  }

  if (v7)
  {
    v3 = v6;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_1D64B3948(void *a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v38 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v38 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v38 - v18;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v26 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatGlassEffectSize, &type metadata for FormatCodingKeys, v27, v25, &type metadata for FormatGlassEffectSize, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.LuckCheer, v24, v23, v26, &off_1F51F6AB8);
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCC90);
      (*(*(v31 - 8) + 16))(v11, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641F5DC(2, v11);
      v30 = v11;
    }

    else
    {
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCC90);
      (*(*(v35 - 8) + 16))(v7, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641F5DC(3, v7);
      v30 = v7;
    }
  }

  else if (a2)
  {
    if (qword_1EDF31E78 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCC90);
    (*(*(v33 - 8) + 16))(v15, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641F5DC(1, v15);
    v30 = v15;
  }

  else
  {
    if (qword_1EDF31E78 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCC90);
    (*(*(v28 - 8) + 16))(v19, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641F5DC(0, v19);
    v30 = v19;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v23, sub_1D5D30DC4);
}

uint64_t sub_1D64B3E1C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64B3ED0()
{
  sub_1D72621EC();
}

uint64_t sub_1D64B3F70()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64B4020@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6663FA8();
  *a1 = result;
  return result;
}

void sub_1D64B4050(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x63696D616E7964;
  v4 = 0xE600000000000000;
  v5 = 0x6D756964656DLL;
  if (*v1 != 2)
  {
    v5 = 0x656772616CLL;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6C6C616D73;
    v2 = 0xE500000000000000;
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

uint64_t sub_1D64B4170(void *a1, uint64_t a2)
{
  v101 = a2;
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v99 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v98 = &v90 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v97 = &v90 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v96 = &v90 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v95 = &v90 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v94 = &v90 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v93 = &v90 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v92 = &v90 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v91 = &v90 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v90 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v90 - v36;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v90 - v40;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v90 - v44;
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v90 - v48;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v50 - 8, v51);
  v53 = &v90 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1[3];
  v54 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v55);
  v56 = sub_1D5C30408();
  v100 = v53;
  sub_1D5D2EE70(&type metadata for FormatGlassEffectVariant, &type metadata for FormatCodingKeys, v57, v55, &type metadata for FormatGlassEffectVariant, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.LuckCheer, v54, v53, v56, &off_1F51F6AB8);
  switch(v101)
  {
    case 1:
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v77 = sub_1D725BD1C();
      v78 = __swift_project_value_buffer(v77, qword_1EDFFCC90);
      (*(*(v77 - 8) + 16))(v45, v78, v77);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v60 = v100;
      sub_1D641C13C(1, v45);
      v61 = v45;
      break;
    case 2:
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v71 = sub_1D725BD1C();
      v72 = __swift_project_value_buffer(v71, qword_1EDFFCC90);
      (*(*(v71 - 8) + 16))(v41, v72, v71);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v60 = v100;
      sub_1D641C13C(2, v41);
      v61 = v41;
      break;
    case 3:
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v73 = sub_1D725BD1C();
      v74 = __swift_project_value_buffer(v73, qword_1EDFFCC90);
      (*(*(v73 - 8) + 16))(v37, v74, v73);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v60 = v100;
      sub_1D641C13C(3, v37);
      v61 = v37;
      break;
    case 4:
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v65 = sub_1D725BD1C();
      v66 = __swift_project_value_buffer(v65, qword_1EDFFCC90);
      (*(*(v65 - 8) + 16))(v33, v66, v65);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v64 = 4;
      goto LABEL_44;
    case 5:
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v79 = sub_1D725BD1C();
      v80 = __swift_project_value_buffer(v79, qword_1EDFFCC90);
      v33 = v91;
      (*(*(v79 - 8) + 16))(v91, v80, v79);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v64 = 5;
      goto LABEL_44;
    case 6:
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v83 = sub_1D725BD1C();
      v84 = __swift_project_value_buffer(v83, qword_1EDFFCC90);
      v33 = v92;
      (*(*(v83 - 8) + 16))(v92, v84, v83);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v64 = 6;
      goto LABEL_44;
    case 7:
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v75 = sub_1D725BD1C();
      v76 = __swift_project_value_buffer(v75, qword_1EDFFCC90);
      v33 = v93;
      (*(*(v75 - 8) + 16))(v93, v76, v75);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v64 = 7;
      goto LABEL_44;
    case 8:
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v87 = sub_1D725BD1C();
      v88 = __swift_project_value_buffer(v87, qword_1EDFFCC90);
      v33 = v94;
      (*(*(v87 - 8) + 16))(v94, v88, v87);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v64 = 8;
      goto LABEL_44;
    case 9:
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v69 = sub_1D725BD1C();
      v70 = __swift_project_value_buffer(v69, qword_1EDFFCC90);
      v33 = v95;
      (*(*(v69 - 8) + 16))(v95, v70, v69);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v64 = 9;
      goto LABEL_44;
    case 10:
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v85 = sub_1D725BD1C();
      v86 = __swift_project_value_buffer(v85, qword_1EDFFCC90);
      v33 = v96;
      (*(*(v85 - 8) + 16))(v96, v86, v85);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v64 = 10;
      goto LABEL_44;
    case 11:
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v62 = sub_1D725BD1C();
      v63 = __swift_project_value_buffer(v62, qword_1EDFFCC90);
      v33 = v97;
      (*(*(v62 - 8) + 16))(v97, v63, v62);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v64 = 11;
      goto LABEL_44;
    case 12:
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v67 = sub_1D725BD1C();
      v68 = __swift_project_value_buffer(v67, qword_1EDFFCC90);
      v33 = v98;
      (*(*(v67 - 8) + 16))(v98, v68, v67);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v64 = 12;
      goto LABEL_44;
    case 13:
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v81 = sub_1D725BD1C();
      v82 = __swift_project_value_buffer(v81, qword_1EDFFCC90);
      v33 = v99;
      (*(*(v81 - 8) + 16))(v99, v82, v81);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v64 = 13;
LABEL_44:
      v60 = v100;
      sub_1D641C13C(v64, v33);
      v61 = v33;
      break;
    default:
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v58 = sub_1D725BD1C();
      v59 = __swift_project_value_buffer(v58, qword_1EDFFCC90);
      (*(*(v58 - 8) + 16))(v49, v59, v58);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v60 = v100;
      sub_1D641C13C(0, v49);
      v61 = v49;
      break;
  }

  sub_1D5D2CFE8(v61, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v60, sub_1D5D30DC4);
}

uint64_t sub_1D64B4DBC(char a1)
{
  result = 0x72616C75676572;
  switch(a1)
  {
    case 1:
      result = 0x7261656C63;
      break;
    case 2:
      result = 1801678692;
      break;
    case 3:
      result = 0x736E6F6349707061;
      break;
    case 4:
      result = 0x73746567646977;
      break;
    case 5:
      result = 1954047348;
      break;
    case 6:
      result = 0x726579616C707661;
      break;
    case 7:
      result = 0x656D697465636166;
      break;
    case 8:
      result = 0x436C6F72746E6F63;
      break;
    case 9:
      result = 0x72616265646973;
      break;
    case 10:
      result = 0x5364657474756261;
      break;
    case 11:
      result = 0x6F74636570736E69;
      break;
    case 12:
      result = 0x6D6172676F6E6F6DLL;
      break;
    case 13:
      result = 0x73656C62627562;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D64B4F8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D66642EC();
  *a1 = result;
  return result;
}

uint64_t sub_1D64B4FBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D64B4DBC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatGradient.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v121 = (v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6, v7);
  v124 = v117 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v132 = (v117 - v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v117 - v14;
  sub_1D668E868();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v1;
  v131 = v1[1];
  v22 = *(v1 + 1);
  v122 = *(v1 + 2);
  v123 = v22;
  v23 = v1[7];
  v120 = v1[6];
  v119 = v23;
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1D5C4CA84();
  v27 = v26;
  v28 = sub_1D5B58B84(&qword_1EDF24C58, sub_1D5C4CA84);
  sub_1D5D2EE70(&type metadata for FormatGradient, v27, v29, v24, &type metadata for FormatGradient, v27, &type metadata for FormatVersions.JazzkonC, v25, v20, v28, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v30 = sub_1D725BD1C();
  v31 = __swift_project_value_buffer(v30, qword_1EDFFCD30);
  v32 = *(v30 - 8);
  v33 = *(v32 + 16);
  v127 = v31;
  v125 = v30;
  v129 = v32 + 16;
  v130 = v33;
  v33(v15);
  v128 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v138 = v21;
  v140 = 0uLL;
  LOBYTE(v141) = 0;
  v34 = &v20[*(v17 + 44)];
  v35 = *v34;
  v36 = *(v34 + 1);
  v142 = 0;
  v37 = swift_allocObject();
  v38 = v20;
  *&v135 = v117;
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v142;
  *(v37 + 40) = v35;
  *(v37 + 48) = v36;
  MEMORY[0x1EEE9AC00](v37, v39);
  v117[-4] = sub_1D5B4AA6C;
  v117[-3] = 0;
  v115 = sub_1D6708A4C;
  v116 = v40;
  v142 = 0;
  v41 = v17;
  v42 = v15;
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = 0;
  *(v43 + 32) = v142;
  v126 = v35;
  *(v43 + 40) = v35;
  *(v43 + 48) = v36;
  sub_1D668E8FC();
  v45 = v44;
  v46 = sub_1D5B58B84(&qword_1EDF02B18, sub_1D668E8FC);
  swift_retain_n();
  v133 = v46;
  v134 = v45;
  v47 = sub_1D72647CC();
  v142 = 0;
  v48 = swift_allocObject();
  *(v48 + 24) = 0;
  *(v48 + 32) = 0;
  *(v48 + 16) = v47;
  *(v48 + 40) = v142;
  v49 = *(v41 + 36);
  v137 = v38;
  v50 = &v38[v49];
  v51 = __swift_project_boxed_opaque_existential_1(&v38[v49], *&v38[v49 + 24]);
  MEMORY[0x1EEE9AC00](v51, v52);
  MEMORY[0x1EEE9AC00](v53, v54);
  v117[-4] = sub_1D615B4A4;
  v117[-3] = &v117[-6];
  v115 = sub_1D6708A4C;
  v116 = v43;
  v55 = v136;
  sub_1D5D2BC70(v42, sub_1D615B49C, v56, sub_1D615B4A4, &v117[-6]);
  if (v55)
  {
    sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);

    v57 = v137;
  }

  else
  {
    v118 = v50;
    v136 = v36;

    sub_1D5C34D84(0, &qword_1EDF1B418, &type metadata for FormatColor, MEMORY[0x1E69E62F8]);
    sub_1D668E990();
    v57 = v137;
    sub_1D72647EC();
    sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);

    v58 = v132;
    v59 = v125;
    v130(v132, v127, v125);
    swift_storeEnumTagMultiPayload();
    v135 = xmmword_1D728CF30;
    v140 = xmmword_1D728CF30;
    LOBYTE(v141) = 0;
    LOBYTE(v138) = 0;
    v60 = swift_allocObject();
    v62 = v60;
    *(v60 + 16) = v135;
    *(v60 + 32) = v138;
    v63 = v126;
    v64 = v136;
    *(v60 + 40) = v126;
    *(v60 + 48) = v64;
    if (v131)
    {
      v117[1] = v117;
      *&v138 = v131;
      MEMORY[0x1EEE9AC00](v60, v61);
      v117[0] = &v117[-6];
      v117[-4] = sub_1D5B4AA6C;
      v117[-3] = 0;
      v115 = sub_1D6708A4C;
      v116 = v62;
      v142 = 0;
      v65 = swift_allocObject();
      *(v65 + 16) = v135;
      *(v65 + 32) = v142;
      *(v65 + 40) = v63;
      *(v65 + 48) = v64;
      swift_retain_n();

      v66 = sub_1D72647CC();
      v142 = 0;
      v67 = swift_allocObject();
      *(v67 + 16) = v66;
      *(v67 + 24) = v135;
      *(v67 + 40) = v142;
      v68 = __swift_project_boxed_opaque_existential_1(v118, *(v118 + 3));
      MEMORY[0x1EEE9AC00](v68, v69);
      MEMORY[0x1EEE9AC00](v70, v71);
      v72 = v117[0];
      v117[-4] = sub_1D615B4A4;
      v117[-3] = v72;
      v115 = sub_1D6708A4C;
      v116 = v65;
      v74 = sub_1D5D2F7A4(v132, sub_1D615B49C, v73, sub_1D615B4A4, &v117[-6]);
      v76 = v74;

      v75 = v124;
      if (v76)
      {
        v77 = MEMORY[0x1E69E63B0];
        sub_1D5C34D84(0, &qword_1EDF1AF00, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
        sub_1D668EAFC(&unk_1EDF04A78, &qword_1EDF1AF00, v77);
        v57 = v137;
        sub_1D72647EC();

        sub_1D5D2CFE8(v132, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v132, type metadata accessor for FormatVersionRequirement);
        v57 = v137;
      }

      v64 = v136;
      v63 = v126;
      v59 = v125;
    }

    else
    {

      sub_1D5D2CFE8(v58, type metadata accessor for FormatVersionRequirement);

      v75 = v124;
    }

    v130(v75, v127, v59);
    swift_storeEnumTagMultiPayload();
    v140 = v123;
    v141 = v122;
    v135 = xmmword_1D7297410;
    v138 = xmmword_1D7297410;
    v139 = 0;
    v142 = 0;
    v78 = swift_allocObject();
    v133 = v117;
    *(v78 + 16) = v135;
    *(v78 + 32) = v142;
    *(v78 + 40) = v63;
    *(v78 + 48) = v64;
    MEMORY[0x1EEE9AC00](v78, v79);
    v117[-4] = sub_1D5B4AA6C;
    v117[-3] = 0;
    v115 = sub_1D6708A4C;
    v116 = v80;
    v142 = 0;
    v81 = swift_allocObject();
    v82 = v63;
    v83 = v81;
    *(v81 + 16) = v135;
    *(v81 + 32) = v142;
    *(v81 + 40) = v82;
    *(v81 + 48) = v64;
    swift_retain_n();
    v84 = sub_1D72647CC();
    v142 = 0;
    v85 = swift_allocObject();
    *(v85 + 16) = v84;
    *(v85 + 24) = v135;
    *(v85 + 40) = v142;
    v86 = __swift_project_boxed_opaque_existential_1(v118, *(v118 + 3));
    MEMORY[0x1EEE9AC00](v86, v87);
    MEMORY[0x1EEE9AC00](v88, v89);
    v117[-4] = sub_1D615B4A4;
    v117[-3] = &v117[-6];
    v90 = v124;
    v115 = sub_1D6708A4C;
    v116 = v83;
    sub_1D5D2BC70(v124, sub_1D615B49C, v91, sub_1D615B4A4, &v117[-6]);

    sub_1D668EA2C();
    sub_1D72647EC();
    sub_1D5D2CFE8(v90, type metadata accessor for FormatVersionRequirement);

    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v93 = v125;
    v94 = __swift_project_value_buffer(v125, qword_1EDFFCCE8);
    v95 = v121;
    v130(v121, v94, v93);
    swift_storeEnumTagMultiPayload();
    v135 = xmmword_1D72BAA60;
    v140 = xmmword_1D72BAA60;
    LOBYTE(v141) = 0;
    LOBYTE(v138) = 0;
    v96 = swift_allocObject();
    v98 = v96;
    *(v96 + 16) = v135;
    *(v96 + 32) = v138;
    v99 = v126;
    v100 = v136;
    *(v96 + 40) = v126;
    *(v96 + 48) = v100;
    v101 = v120;
    if (v120)
    {
      v133 = v117;
      v102 = v99;
      *&v138 = v120;
      *(&v138 + 1) = v119;
      MEMORY[0x1EEE9AC00](v96, v97);
      v132 = &v117[-6];
      v117[-4] = sub_1D5B4AA6C;
      v117[-3] = 0;
      v115 = sub_1D6708A4C;
      v116 = v98;
      v142 = 0;
      v103 = swift_allocObject();
      *(v103 + 16) = v135;
      *(v103 + 32) = v142;
      *(v103 + 40) = v102;
      *(v103 + 48) = v100;
      swift_retain_n();
      sub_1D5D615EC(v101);
      v104 = sub_1D72647CC();
      v142 = 0;
      v105 = swift_allocObject();
      *(v105 + 16) = v104;
      *(v105 + 24) = v135;
      *(v105 + 40) = v142;
      v106 = __swift_project_boxed_opaque_existential_1(v118, *(v118 + 3));
      MEMORY[0x1EEE9AC00](v106, v107);
      MEMORY[0x1EEE9AC00](v108, v109);
      v110 = v132;
      v117[-4] = sub_1D615B4A4;
      v117[-3] = v110;
      v111 = v121;
      v115 = sub_1D668EA80;
      v116 = v103;
      v113 = sub_1D5D2F7A4(v121, sub_1D615B49C, v112, sub_1D615B4A4, &v117[-6]);
      v114 = v113;

      if (v114)
      {
        sub_1D6676B58();
        v57 = v137;
        sub_1D72647EC();

        sub_1D5D2CFE8(v111, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v111, type metadata accessor for FormatVersionRequirement);
        v57 = v137;
      }
    }

    else
    {

      sub_1D5D2CFE8(v95, type metadata accessor for FormatVersionRequirement);
    }
  }

  return sub_1D5D2CFE8(v57, sub_1D668E868);
}

uint64_t sub_1D64B61A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6690598(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64B61E0(uint64_t a1)
{
  v2 = sub_1D5C4CB20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64B621C(uint64_t a1)
{
  v2 = sub_1D5C4CB20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatGradientDirection.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v75 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v69 - v8;
  sub_1D668EB74();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  v17 = v1[2];
  v18 = v1[3];
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D5C4CDE0();
  v22 = v21;
  v23 = sub_1D5B58B84(&qword_1EDF251D8, sub_1D5C4CDE0);
  sub_1D5D2EE70(&type metadata for FormatGradientDirection, v22, v24, v19, &type metadata for FormatGradientDirection, v22, &type metadata for FormatVersions.JazzkonC, v20, v14, v23, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v25 = sub_1D725BD1C();
  v26 = __swift_project_value_buffer(v25, qword_1EDFFCD30);
  v27 = *(v25 - 8);
  v28 = *(v27 + 16);
  v76 = v26;
  v77 = v25;
  v72 = v27 + 16;
  v73 = v28;
  (v28)(v9);
  v71 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v85 = v15;
  v86 = v16;
  v83 = 0uLL;
  v84 = 0;
  v29 = &v14[*(v11 + 44)];
  v30 = *v29;
  v31 = *(v29 + 1);
  v87 = 0;
  v32 = swift_allocObject();
  v80 = v69;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v87;
  *(v32 + 40) = v30;
  *(v32 + 48) = v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  *&v82 = v9;
  v69[-4] = sub_1D5B4AA6C;
  v69[-3] = 0;
  v67 = sub_1D6708A50;
  v68 = v34;
  v87 = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v87;
  v74 = v30;
  *(v35 + 40) = v30;
  *(v35 + 48) = v31;
  sub_1D668EC08();
  v37 = v36;
  v38 = sub_1D5B58B84(&qword_1EDF03198, sub_1D668EC08);
  swift_retain_n();
  v78 = v38;
  v79 = v37;
  v39 = sub_1D72647CC();
  v87 = 0;
  v40 = swift_allocObject();
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 16) = v39;
  *(v40 + 40) = v87;
  v41 = &v14[*(v11 + 36)];
  v42 = __swift_project_boxed_opaque_existential_1(v41, *(v41 + 3));
  MEMORY[0x1EEE9AC00](v42, v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  v69[-4] = sub_1D615B4A4;
  v69[-3] = &v69[-6];
  v46 = v81;
  v47 = v82;
  v67 = sub_1D668EC9C;
  v68 = v35;
  sub_1D5D2BC70(v82, sub_1D615B49C, v48, sub_1D615B4A4, &v69[-6]);
  if (v46)
  {
    sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v70 = v41;
    v50 = v76;
    v49 = v77;
    v81 = v31;

    v51 = sub_1D5F5A70C();
    sub_1D72647EC();
    v69[1] = v51;
    sub_1D5D2CFE8(v82, type metadata accessor for FormatVersionRequirement);

    v53 = v75;
    v73(v75, v50, v49);
    swift_storeEnumTagMultiPayload();
    v85 = v17;
    v86 = v18;
    v82 = xmmword_1D728CF30;
    v83 = xmmword_1D728CF30;
    v84 = 0;
    v87 = 0;
    v54 = swift_allocObject();
    v80 = v69;
    *(v54 + 16) = v82;
    *(v54 + 32) = v87;
    v55 = v74;
    v56 = v81;
    *(v54 + 40) = v74;
    *(v54 + 48) = v56;
    MEMORY[0x1EEE9AC00](v54, v57);
    v69[-4] = sub_1D5B4AA6C;
    v69[-3] = 0;
    v67 = sub_1D6708A50;
    v68 = v58;
    v87 = 0;
    v59 = swift_allocObject();
    *(v59 + 16) = v82;
    *(v59 + 32) = v87;
    *(v59 + 40) = v55;
    *(v59 + 48) = v56;
    swift_retain_n();
    v60 = sub_1D72647CC();
    v87 = 0;
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = v82;
    *(v61 + 40) = v87;
    v62 = __swift_project_boxed_opaque_existential_1(v70, *(v70 + 3));
    MEMORY[0x1EEE9AC00](v62, v63);
    MEMORY[0x1EEE9AC00](v64, v65);
    v69[-4] = sub_1D615B4A4;
    v69[-3] = &v69[-6];
    v67 = sub_1D6708A50;
    v68 = v59;
    sub_1D5D2BC70(v53, sub_1D615B49C, v66, sub_1D615B4A4, &v69[-6]);

    sub_1D72647EC();
    sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D668EB74);
}

uint64_t sub_1D64B6AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D669074C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64B6B18(uint64_t a1)
{
  v2 = sub_1D5C4D1FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64B6B54(uint64_t a1)
{
  v2 = sub_1D5C4D1FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatGrayscaleColor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  sub_1D668ED18();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D668EDAC();
  sub_1D5B58B84(&qword_1EC886C20, sub_1D668EDAC);
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

  v13 = v26;
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

      v20 = sub_1D6627E68(0x6574696877, 0xE500000000000000, 0x6168706C61, 0xE500000000000000);
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

  sub_1D5B57870();
  v29 = 0uLL;
  v30 = 0;
  sub_1D726431C();
  v17 = v27;
  v29 = xmmword_1D728CF30;
  v30 = 0;
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v23 = v27;
  v24 = v28;
  *v13 = v17;
  *(v13 + 8) = v23;
  *(v13 + 16) = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatGrayscaleColor.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v73 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v66 - v8;
  sub_1D668EF2C();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v1;
  v15 = v1[1];
  v72 = *(v1 + 16);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D668EDAC();
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EC886C20, sub_1D668EDAC);
  sub_1D5D2EE70(&type metadata for FormatGrayscaleColor, v20, v22, v17, &type metadata for FormatGrayscaleColor, v20, &type metadata for FormatVersions.JazzkonC, v18, v14, v21, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD30);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v68 = v24;
  v69 = v23;
  v66[1] = v25 + 16;
  v67 = v26;
  (v26)(v9);
  v66[0] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v82 = v16;
  v80 = 0uLL;
  v81 = 0;
  v27 = &v14[*(v11 + 44)];
  v28 = *v27;
  v29 = *(v27 + 1);
  v79 = 0;
  v30 = swift_allocObject();
  v75 = v66;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v79;
  *(v30 + 40) = v28;
  *(v30 + 48) = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  *&v77 = v9;
  v66[-4] = sub_1D5B4AA6C;
  v66[-3] = 0;
  v64 = sub_1D6708A54;
  v65 = v32;
  v79 = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v79;
  v70 = v28;
  *(v33 + 40) = v28;
  *(v33 + 48) = v29;
  sub_1D668EFC0();
  v35 = v34;
  sub_1D5B58B84(&qword_1EC886C38, sub_1D668EFC0);
  v71 = v29;
  swift_retain_n();
  v74 = v35;
  v36 = sub_1D72647CC();
  v79 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v79;
  v38 = &v14[*(v11 + 36)];
  v39 = __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
  MEMORY[0x1EEE9AC00](v39, v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  v66[-4] = sub_1D615B4A4;
  v66[-3] = &v66[-6];
  v43 = v76;
  v44 = v77;
  v64 = sub_1D6708A54;
  v65 = v33;
  sub_1D5D2BC70(v77, sub_1D615B49C, v45, sub_1D615B4A4, &v66[-6]);
  v78 = v14;
  if (!v43)
  {

    v46 = sub_1D5B578C4();
    sub_1D72647EC();
    v76 = v46;
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);

    v49 = v73;
    v67(v73, v68, v69);
    swift_storeEnumTagMultiPayload();
    v77 = xmmword_1D728CF30;
    v80 = xmmword_1D728CF30;
    v81 = 0;
    LOBYTE(v82) = 0;
    v50 = swift_allocObject();
    v52 = v50;
    *(v50 + 16) = v77;
    *(v50 + 32) = v82;
    v54 = v70;
    v53 = v71;
    *(v50 + 40) = v70;
    *(v50 + 48) = v53;
    if (v72)
    {
    }

    else
    {
      v75 = v66;
      v82 = v15;
      MEMORY[0x1EEE9AC00](v50, v51);
      v66[-4] = sub_1D5B4AA6C;
      v66[-3] = 0;
      v64 = sub_1D6708A54;
      v65 = v52;
      v79 = 0;
      v56 = swift_allocObject();
      *(v56 + 16) = v77;
      *(v56 + 32) = v79;
      *(v56 + 40) = v54;
      *(v56 + 48) = v53;
      swift_retain_n();
      v57 = sub_1D72647CC();
      v79 = 0;
      v58 = swift_allocObject();
      *(v58 + 16) = v57;
      *(v58 + 24) = v77;
      *(v58 + 40) = v79;
      v59 = __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
      MEMORY[0x1EEE9AC00](v59, v60);
      MEMORY[0x1EEE9AC00](v61, v62);
      v66[-4] = sub_1D615B4A4;
      v66[-3] = &v66[-6];
      v49 = v73;
      v64 = sub_1D668F054;
      v65 = v56;
      LOBYTE(v57) = sub_1D5D2F7A4(v73, sub_1D615B49C, v63, sub_1D615B4A4, &v66[-6]);

      if (v57)
      {
        v55 = v78;
        sub_1D72647EC();
        goto LABEL_10;
      }
    }

    v55 = v78;
LABEL_10:
    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);

    v47 = v55;
    return sub_1D5D2CFE8(v47, sub_1D668EF2C);
  }

  sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);

  v47 = v78;
  return sub_1D5D2CFE8(v47, sub_1D668EF2C);
}

uint64_t sub_1D64B7784()
{
  v1 = 0x6168706C61;
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
    return 0x6574696877;
  }
}

uint64_t sub_1D64B77D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6690860(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64B7808(uint64_t a1)
{
  v2 = sub_1D668EE84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64B7844(uint64_t a1)
{
  v2 = sub_1D668EE84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatGroup.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v267 = &v264 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v276 = &v264 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v270 = &v264 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v272 = &v264 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v274 = &v264 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v275 = &v264 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v278 = &v264 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v284 = &v264 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v283 = &v264 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v286 = &v264 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v288 = &v264 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v287 = &v264 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v264 - v41;
  sub_1D668F160();
  v44 = v43;
  MEMORY[0x1EEE9AC00](v43, v45);
  v47 = &v264 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *v1;
  v48 = *(v1 + 8);
  LODWORD(v289) = *(v1 + 48);
  v50 = *(v1 + 64);
  v285 = *(v1 + 56);
  v280 = v50;
  v51 = *(v1 + 80);
  v282 = *(v1 + 72);
  v281 = v51;
  v52 = *(v1 + 96);
  v279 = *(v1 + 88);
  v277 = v52;
  v53 = *(v1 + 112);
  v273 = *(v1 + 104);
  v271 = v53;
  v269 = *(v1 + 120);
  v307 = *(v1 + 128);
  v268 = *(v1 + 136);
  v54 = a1[3];
  v55 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v54);
  sub_1D5C50B9C();
  v57 = v56;
  v58 = sub_1D5B58B84(&qword_1EDF24CE8, sub_1D5C50B9C);
  sub_1D5D2EE70(&type metadata for FormatGroup, v57, v59, v54, &type metadata for FormatGroup, v57, &type metadata for FormatVersions.JazzkonC, v55, v47, v58, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v60 = sub_1D725BD1C();
  v61 = __swift_project_value_buffer(v60, qword_1EDFFCD30);
  v62 = *(v60 - 8);
  v292 = *(v62 + 16);
  v293 = v61;
  v290 = v60;
  v294 = v62 + 16;
  (v292)(v42);
  v295 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v303 = v49;
  v304 = v48;
  v301 = 0uLL;
  v302 = 0;
  v63 = &v47[*(v44 + 44)];
  v64 = *v63;
  v65 = *(v63 + 1);
  v306 = 0;
  v66 = swift_allocObject();
  *&v299 = &v264;
  *(v66 + 16) = 0;
  *(v66 + 24) = 0;
  *(v66 + 32) = v306;
  *(v66 + 40) = v64;
  *(v66 + 48) = v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  *&v298 = &v264 - 6;
  *(&v264 - 4) = sub_1D5B4AA6C;
  *(&v264 - 3) = 0;
  v262 = sub_1D6708A58;
  v263 = v68;
  v306 = 0;
  v69 = swift_allocObject();
  *(v69 + 16) = 0;
  *(v69 + 24) = 0;
  *(v69 + 32) = v306;
  v291 = v64;
  *(v69 + 40) = v64;
  *(v69 + 48) = v65;
  sub_1D5E1B808(0);
  v71 = v70;
  v72 = sub_1D5B58B84(&qword_1EDF02BC8, sub_1D5E1B808);
  swift_retain_n();
  v296 = v71;
  v297 = v72;
  v73 = sub_1D72647CC();
  v306 = 0;
  v74 = swift_allocObject();
  *(v74 + 24) = 0;
  *(v74 + 32) = 0;
  *(v74 + 16) = v73;
  *(v74 + 40) = v306;
  v75 = v47;
  v76 = v42;
  v77 = (v75 + *(v44 + 36));
  v78 = __swift_project_boxed_opaque_existential_1(v77, v77[3]);
  MEMORY[0x1EEE9AC00](v78, v79);
  MEMORY[0x1EEE9AC00](v80, v81);
  v82 = v298;
  *(&v264 - 4) = sub_1D615B4A4;
  *(&v264 - 3) = v82;
  v262 = sub_1D6708A58;
  v263 = v69;
  v83 = v300;
  sub_1D5D2BC70(v76, sub_1D615B49C, v84, sub_1D615B4A4, (&v264 - 6));
  if (!v83)
  {
    v300 = v77;
    v266 = v65;

    sub_1D72647EC();
    *&v299 = 0;
    v265 = v75;
    sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);

    v86 = v287;
    v88 = v292;
    v87 = v293;
    v89 = v290;
    (v292)(v287, v293, v290);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v86, type metadata accessor for FormatVersionRequirement);
    (v88)(v86, v87, v89);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v86, type metadata accessor for FormatVersionRequirement);
    v90 = v288;
    v88();
    swift_storeEnumTagMultiPayload();
    if (v289 > 1)
    {
      v91 = v266;
      if (v289 == 2)
      {

        v92 = v299;
        goto LABEL_10;
      }
    }

    else
    {
      v91 = v266;
    }

    v93 = sub_1D72646CC();

    v92 = v299;
    if ((v93 & 1) == 0)
    {
      LOBYTE(v301) = 0;
      v106 = swift_allocObject();
      v298 = xmmword_1D72BAA60;
      *(v106 + 16) = xmmword_1D72BAA60;
      *(v106 + 32) = v301;
      *(v106 + 40) = v291;
      *(v106 + 48) = v91;

      v107 = v265;
      v108 = sub_1D72647CC();
      LOBYTE(v301) = 0;
      v109 = swift_allocObject();
      *(v109 + 16) = v108;
      *(v109 + 24) = v298;
      *(v109 + 40) = v301;
      v110 = __swift_project_boxed_opaque_existential_1(v300, v300[3]);
      MEMORY[0x1EEE9AC00](v110, v111);
      MEMORY[0x1EEE9AC00](v112, v113);
      *(&v264 - 4) = sub_1D5B4AA6C;
      *(&v264 - 3) = 0;
      v262 = sub_1D668F1F4;
      v263 = v106;
      v115 = sub_1D5D2F7A4(v90, sub_1D615B49C, v114, sub_1D615B4A4, (&v264 - 6));
      if (v92)
      {
        sub_1D5D2CFE8(v90, type metadata accessor for FormatVersionRequirement);

        v85 = v107;
        return sub_1D5D2CFE8(v85, sub_1D668F160);
      }

      v120 = v115;

      if (v120)
      {
        v301 = v298;
        v302 = 0;
        LOBYTE(v303) = v289;
        sub_1D61DEDCC();
        sub_1D72647EC();
        sub_1D5D2CFE8(v90, type metadata accessor for FormatVersionRequirement);
        v94 = v293;
        v92 = 0;
        v89 = v290;
        v91 = v266;
        v88 = v292;
LABEL_12:
        v95 = v286;
        (v88)(v286, v94, v89);
        swift_storeEnumTagMultiPayload();
        LOBYTE(v301) = 0;
        v96 = swift_allocObject();
        v299 = xmmword_1D72BAA70;
        *(v96 + 16) = xmmword_1D72BAA70;
        *(v96 + 32) = v301;
        *(v96 + 40) = v291;
        *(v96 + 48) = v91;

        v97 = sub_1D72647CC();
        LOBYTE(v301) = 0;
        v98 = swift_allocObject();
        *(v98 + 16) = v97;
        *(v98 + 24) = v299;
        *(v98 + 40) = v301;
        v99 = __swift_project_boxed_opaque_existential_1(v300, v300[3]);
        MEMORY[0x1EEE9AC00](v99, v100);
        MEMORY[0x1EEE9AC00](v101, v102);
        *(&v264 - 4) = sub_1D5B4AA6C;
        *(&v264 - 3) = 0;
        v262 = sub_1D6708A58;
        v263 = v96;
        v104 = sub_1D5D2F7A4(v95, sub_1D615B49C, v103, sub_1D615B4A4, (&v264 - 6));
        if (v92)
        {
          sub_1D5D2CFE8(v95, type metadata accessor for FormatVersionRequirement);

          v105 = v265;
LABEL_14:
          v85 = v105;
          return sub_1D5D2CFE8(v85, sub_1D668F160);
        }

        v116 = v104;

        if (v116)
        {
          sub_1D5E093B4(v285, v265, 4, 0, 0);
        }

        v118 = v290;
        v117 = v291;
        v119 = v266;
        sub_1D5D2CFE8(v286, type metadata accessor for FormatVersionRequirement);

        v121 = v284;
        if (qword_1EDF31ED0 != -1)
        {
          swift_once();
        }

        v122 = __swift_project_value_buffer(v118, qword_1EDFFCD50);
        v123 = v283;
        (v292)(v283, v122, v118);
        swift_storeEnumTagMultiPayload();
        v299 = xmmword_1D72BAA80;
        v301 = xmmword_1D72BAA80;
        v302 = 0;
        LOBYTE(v303) = 0;
        v124 = swift_allocObject();
        v126 = v124;
        *(v124 + 16) = v299;
        *(v124 + 32) = v303;
        *(v124 + 40) = v117;
        *(v124 + 48) = v119;
        if (v282 == 2)
        {

          sub_1D5D2CFE8(v123, type metadata accessor for FormatVersionRequirement);
        }

        else
        {
          *&v298 = &v264;
          v137 = v280;
          v303 = v280;
          v304 = v282;
          MEMORY[0x1EEE9AC00](v124, v125);
          v289 = &v264 - 6;
          *(&v264 - 4) = sub_1D5B4AA6C;
          *(&v264 - 3) = 0;
          v262 = sub_1D6708A58;
          v263 = v126;
          v306 = 0;
          v139 = v138;
          v140 = swift_allocObject();
          *(v140 + 16) = v299;
          *(v140 + 32) = v306;
          *(v140 + 40) = v117;
          *(v140 + 48) = v119;
          swift_retain_n();
          sub_1D5D5FDA4(v137, v139);
          v141 = sub_1D72647CC();
          v306 = 0;
          v142 = swift_allocObject();
          *(v142 + 16) = v141;
          *(v142 + 24) = v299;
          *(v142 + 40) = v306;
          v143 = __swift_project_boxed_opaque_existential_1(v300, v300[3]);
          MEMORY[0x1EEE9AC00](v143, v144);
          MEMORY[0x1EEE9AC00](v145, v146);
          v147 = v289;
          *(&v264 - 4) = sub_1D615B4A4;
          *(&v264 - 3) = v147;
          v262 = sub_1D6708A58;
          v263 = v140;
          v149 = sub_1D5D2F7A4(v123, sub_1D615B49C, v148, sub_1D615B4A4, (&v264 - 6));
          v157 = v149;

          if (v157)
          {
            sub_1D668F320();
            sub_1D72647EC();
            v117 = v291;

            sub_1D5F33294(v303, v304);
            sub_1D5D2CFE8(v123, type metadata accessor for FormatVersionRequirement);
            v118 = v290;
          }

          else
          {

            sub_1D5F33294(v303, v304);
            sub_1D5D2CFE8(v123, type metadata accessor for FormatVersionRequirement);
            v118 = v290;
            v117 = v291;
          }

          v119 = v266;
          v121 = v284;
        }

        (v292)(v121, v293, v118);
        swift_storeEnumTagMultiPayload();
        LOBYTE(v301) = 0;
        v127 = swift_allocObject();
        v298 = xmmword_1D72BAA90;
        *(v127 + 16) = xmmword_1D72BAA90;
        *(v127 + 32) = v301;
        *(v127 + 40) = v117;
        *(v127 + 48) = v119;

        v128 = v121;
        v129 = sub_1D72647CC();
        LOBYTE(v301) = 0;
        v130 = swift_allocObject();
        *(v130 + 16) = v129;
        *(v130 + 24) = v298;
        *(v130 + 40) = v301;
        v131 = __swift_project_boxed_opaque_existential_1(v300, v300[3]);
        MEMORY[0x1EEE9AC00](v131, v132);
        MEMORY[0x1EEE9AC00](v133, v134);
        *(&v264 - 4) = sub_1D5B4AA6C;
        *(&v264 - 3) = 0;
        v262 = sub_1D6708A58;
        v263 = v127;
        v136 = sub_1D5D2F7A4(v128, sub_1D615B49C, v135, sub_1D615B4A4, (&v264 - 6));
        *&v299 = 0;
        v150 = v136;
        v151 = v266;
        v152 = v290;

        if (v150)
        {
          v301 = v298;
          v302 = 0;
          v303 = v281;
          sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
          sub_1D66594A0();
          v153 = v265;
          v154 = v299;
          sub_1D72647EC();
          v155 = v291;
          v156 = v279;
          *&v299 = v154;
          if (v154)
          {

            sub_1D5D2CFE8(v284, type metadata accessor for FormatVersionRequirement);
            v85 = v153;
            return sub_1D5D2CFE8(v85, sub_1D668F160);
          }

          sub_1D5D2CFE8(v284, type metadata accessor for FormatVersionRequirement);
          v158 = v155;
        }

        else
        {
          sub_1D5D2CFE8(v284, type metadata accessor for FormatVersionRequirement);

          v158 = v291;
          v156 = v279;
        }

        v159 = v278;
        (v292)(v278, v293, v152);
        swift_storeEnumTagMultiPayload();
        v105 = v265;
        if (*(v156 + 16))
        {
          LOBYTE(v301) = 0;
          v160 = v159;
          v161 = swift_allocObject();
          v298 = xmmword_1D72BAAA0;
          *(v161 + 16) = xmmword_1D72BAAA0;
          *(v161 + 32) = v301;
          *(v161 + 40) = v158;
          *(v161 + 48) = v151;

          v162 = sub_1D72647CC();
          LOBYTE(v301) = 0;
          v163 = swift_allocObject();
          *(v163 + 16) = v162;
          *(v163 + 24) = v298;
          *(v163 + 40) = v301;
          v164 = __swift_project_boxed_opaque_existential_1(v300, v300[3]);
          MEMORY[0x1EEE9AC00](v164, v165);
          MEMORY[0x1EEE9AC00](v166, v167);
          *(&v264 - 4) = sub_1D5B4AA6C;
          *(&v264 - 3) = 0;
          v262 = sub_1D6708A58;
          v263 = v161;
          v168 = v299;
          v170 = sub_1D5D2F7A4(v160, sub_1D615B49C, v169, sub_1D615B4A4, (&v264 - 6));
          *&v299 = v168;
          if (v168)
          {
            sub_1D5D2CFE8(v160, type metadata accessor for FormatVersionRequirement);
LABEL_53:

            goto LABEL_54;
          }

          v172 = v170;

          if ((v172 & 1) == 0)
          {
            sub_1D5D2CFE8(v278, type metadata accessor for FormatVersionRequirement);

            v158 = v291;
LABEL_48:
            v175 = qword_1EDF31EF8;
            v176 = v277;

            v177 = v276;
            if (v175 != -1)
            {
              swift_once();
            }

            v178 = __swift_project_value_buffer(v152, qword_1EDFFCDC8);
            v179 = v275;
            (v292)(v275, v178, v152);
            swift_storeEnumTagMultiPayload();
            if (*(v176 + 16))
            {
              LOBYTE(v301) = 0;
              v180 = swift_allocObject();
              v298 = xmmword_1D72BAAB0;
              *(v180 + 16) = xmmword_1D72BAAB0;
              *(v180 + 32) = v301;
              *(v180 + 40) = v158;
              *(v180 + 48) = v151;

              v181 = sub_1D72647CC();
              LOBYTE(v301) = 0;
              v182 = swift_allocObject();
              *(v182 + 16) = v181;
              *(v182 + 24) = v298;
              *(v182 + 40) = v301;
              v183 = __swift_project_boxed_opaque_existential_1(v300, v300[3]);
              MEMORY[0x1EEE9AC00](v183, v184);
              MEMORY[0x1EEE9AC00](v185, v186);
              *(&v264 - 4) = sub_1D5B4AA6C;
              *(&v264 - 3) = 0;
              v262 = sub_1D6708A58;
              v263 = v180;
              v187 = v299;
              v189 = sub_1D5D2F7A4(v179, sub_1D615B49C, v188, sub_1D615B4A4, (&v264 - 6));
              *&v299 = v187;
              if (v187)
              {
                sub_1D5D2CFE8(v179, type metadata accessor for FormatVersionRequirement);
                goto LABEL_53;
              }

              v191 = v189;

              if (v191)
              {
                v301 = v298;
                v302 = 0;
                v303 = v277;
                sub_1D5C34D84(0, &qword_1EDF1B2E8, &type metadata for FormatItemTrait, MEMORY[0x1E69E62F8]);
                sub_1D66775F8();
                v192 = v299;
                sub_1D72647EC();
                v193 = v275;
                if (v192)
                {

                  sub_1D5D2CFE8(v193, type metadata accessor for FormatVersionRequirement);
                  goto LABEL_14;
                }

                *&v299 = 0;

                sub_1D5D2CFE8(v193, type metadata accessor for FormatVersionRequirement);
                v177 = v276;
                v158 = v291;
              }

              else
              {
                sub_1D5D2CFE8(v275, type metadata accessor for FormatVersionRequirement);

                v177 = v276;
                v158 = v291;
              }
            }

            else
            {
              sub_1D5D2CFE8(v179, type metadata accessor for FormatVersionRequirement);
            }

            v194 = v274;
            (v292)(v274, v293, v152);
            swift_storeEnumTagMultiPayload();
            if (*(v273 + 16))
            {
              LOBYTE(v301) = 0;
              v195 = v194;
              v196 = swift_allocObject();
              v298 = xmmword_1D72BAAC0;
              *(v196 + 16) = xmmword_1D72BAAC0;
              *(v196 + 32) = v301;
              *(v196 + 40) = v158;
              *(v196 + 48) = v151;

              v197 = sub_1D72647CC();
              LOBYTE(v301) = 0;
              v198 = swift_allocObject();
              *(v198 + 16) = v197;
              *(v198 + 24) = v298;
              *(v198 + 40) = v301;
              v199 = __swift_project_boxed_opaque_existential_1(v300, v300[3]);
              MEMORY[0x1EEE9AC00](v199, v200);
              MEMORY[0x1EEE9AC00](v201, v202);
              *(&v264 - 4) = sub_1D5B4AA6C;
              *(&v264 - 3) = 0;
              v262 = sub_1D6708A58;
              v263 = v196;
              v203 = v299;
              v205 = sub_1D5D2F7A4(v195, sub_1D615B49C, v204, sub_1D615B4A4, (&v264 - 6));
              *&v299 = v203;
              if (v203)
              {

LABEL_66:
                v206 = &v302;
LABEL_67:
                sub_1D5D2CFE8(*(v206 - 32), type metadata accessor for FormatVersionRequirement);
                goto LABEL_14;
              }

              v207 = v205;

              if (v207)
              {
                v208 = v299;
                sub_1D5E09374(v273, v105, 9, 0, 0);
                if (v208)
                {

                  goto LABEL_66;
                }

                *&v299 = 0;
                v177 = v276;
                v158 = v291;
              }

              else
              {
                v177 = v276;
                v158 = v291;
              }
            }

            sub_1D5D2CFE8(v274, type metadata accessor for FormatVersionRequirement);
            (v292)(v272, v293, v152);
            swift_storeEnumTagMultiPayload();
            if (*(v271 + 16))
            {
              LOBYTE(v301) = 0;
              v209 = swift_allocObject();
              v298 = xmmword_1D72BAAD0;
              *(v209 + 16) = xmmword_1D72BAAD0;
              *(v209 + 32) = v301;
              *(v209 + 40) = v158;
              *(v209 + 48) = v151;

              v210 = sub_1D72647CC();
              LOBYTE(v301) = 0;
              v211 = swift_allocObject();
              *(v211 + 16) = v210;
              *(v211 + 24) = v298;
              *(v211 + 40) = v301;
              v212 = __swift_project_boxed_opaque_existential_1(v300, v300[3]);
              MEMORY[0x1EEE9AC00](v212, v213);
              MEMORY[0x1EEE9AC00](v214, v215);
              *(&v264 - 4) = sub_1D5B4AA6C;
              *(&v264 - 3) = 0;
              v262 = sub_1D6708A58;
              v263 = v209;
              v216 = v272;
              v217 = v299;
              v219 = sub_1D5D2F7A4(v272, sub_1D615B49C, v218, sub_1D615B4A4, (&v264 - 6));
              *&v299 = v217;
              if (v217)
              {
                goto LABEL_86;
              }

              v220 = v219;

              if (v220)
              {
                v301 = v298;
                v302 = 0;
                v303 = v271;
                sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
                sub_1D60AD304();
                v221 = v299;
                sub_1D72647EC();
                *&v299 = v221;
                if (v221)
                {

                  v174 = &v301;
                  goto LABEL_46;
                }

                sub_1D5D2CFE8(v272, type metadata accessor for FormatVersionRequirement);
                v177 = v276;
                v152 = v290;
                v151 = v266;
              }

              else
              {
                sub_1D5D2CFE8(v272, type metadata accessor for FormatVersionRequirement);

                v177 = v276;
              }

              v158 = v291;
            }

            else
            {
              sub_1D5D2CFE8(v272, type metadata accessor for FormatVersionRequirement);
            }

            (v292)(v270, v293, v152);
            swift_storeEnumTagMultiPayload();
            if (*(v269 + 16))
            {
              LOBYTE(v301) = 0;
              v222 = swift_allocObject();
              v298 = xmmword_1D72BAAE0;
              *(v222 + 16) = xmmword_1D72BAAE0;
              *(v222 + 32) = v301;
              *(v222 + 40) = v158;
              *(v222 + 48) = v151;

              v223 = sub_1D72647CC();
              LOBYTE(v301) = 0;
              v224 = swift_allocObject();
              *(v224 + 16) = v223;
              *(v224 + 24) = v298;
              *(v224 + 40) = v301;
              v225 = __swift_project_boxed_opaque_existential_1(v300, v300[3]);
              MEMORY[0x1EEE9AC00](v225, v226);
              MEMORY[0x1EEE9AC00](v227, v228);
              *(&v264 - 4) = sub_1D5B4AA6C;
              *(&v264 - 3) = 0;
              v262 = sub_1D6708A58;
              v263 = v222;
              v216 = v270;
              v229 = v299;
              v231 = sub_1D5D2F7A4(v270, sub_1D615B49C, v230, sub_1D615B4A4, (&v264 - 6));
              *&v299 = v229;
              if (v229)
              {
LABEL_86:
                sub_1D5D2CFE8(v216, type metadata accessor for FormatVersionRequirement);
                goto LABEL_53;
              }

              v232 = v231;

              if (v232)
              {
                v301 = v298;
                v302 = 0;
                v303 = v269;
                sub_1D5C34D84(0, &qword_1EDF1B448, &type metadata for FormatType, MEMORY[0x1E69E62F8]);
                sub_1D6659404();
                v233 = v299;
                sub_1D72647EC();
                if (v233)
                {

                  sub_1D5D2CFE8(v270, type metadata accessor for FormatVersionRequirement);
                  v85 = v105;
                  return sub_1D5D2CFE8(v85, sub_1D668F160);
                }

                sub_1D5D2CFE8(v270, type metadata accessor for FormatVersionRequirement);
                v152 = v290;
                v158 = v291;
                v151 = v266;
                *&v299 = 0;
                v177 = v276;
              }

              else
              {
                sub_1D5D2CFE8(v270, type metadata accessor for FormatVersionRequirement);

                v177 = v276;
                v158 = v291;
              }
            }

            else
            {
              sub_1D5D2CFE8(v270, type metadata accessor for FormatVersionRequirement);
            }

            (v292)(v177, v293, v152);
            swift_storeEnumTagMultiPayload();
            if (v307 == 192)
            {
              v234 = v177;
              v235 = v299;
            }

            else
            {
              LOBYTE(v301) = 0;
              v236 = swift_allocObject();
              v298 = xmmword_1D72BAAF0;
              *(v236 + 16) = xmmword_1D72BAAF0;
              *(v236 + 32) = v301;
              *(v236 + 40) = v158;
              *(v236 + 48) = v151;

              v237 = sub_1D72647CC();
              LOBYTE(v301) = 0;
              v238 = swift_allocObject();
              *(v238 + 16) = v237;
              *(v238 + 24) = v298;
              *(v238 + 40) = v301;
              v239 = __swift_project_boxed_opaque_existential_1(v300, v300[3]);
              MEMORY[0x1EEE9AC00](v239, v240);
              MEMORY[0x1EEE9AC00](v241, v242);
              *(&v264 - 4) = sub_1D5B4AA6C;
              *(&v264 - 3) = 0;
              v262 = sub_1D6708A58;
              v263 = v236;
              v243 = v299;
              v245 = sub_1D5D2F7A4(v177, sub_1D615B49C, v244, sub_1D615B4A4, (&v264 - 6));
              v235 = v243;
              if (v243)
              {
                sub_1D5D2CFE8(v276, type metadata accessor for FormatVersionRequirement);
LABEL_105:

LABEL_111:
                v85 = v105;
                return sub_1D5D2CFE8(v85, sub_1D668F160);
              }

              v246 = v245;

              if (v246)
              {
                v301 = v298;
                v302 = 0;
                LOBYTE(v303) = v307;
                sub_1D6684C90();
                sub_1D72647EC();
              }

              v234 = v276;
            }

            sub_1D5D2CFE8(v234, type metadata accessor for FormatVersionRequirement);
            v247 = qword_1EDF31E90;
            v248 = v268;

            if (v247 != -1)
            {
              swift_once();
            }

            v249 = v290;
            v250 = __swift_project_value_buffer(v290, qword_1EDFFCCE8);
            v251 = v267;
            (v292)(v267, v250, v249);
            swift_storeEnumTagMultiPayload();
            if (*(v248 + 16))
            {
              LOBYTE(v301) = 0;
              v252 = swift_allocObject();
              v299 = xmmword_1D7282A80;
              *(v252 + 16) = xmmword_1D7282A80;
              *(v252 + 32) = v301;
              *(v252 + 40) = v291;
              *(v252 + 48) = v266;

              v253 = sub_1D72647CC();
              LOBYTE(v301) = 0;
              v254 = swift_allocObject();
              *(v254 + 16) = v253;
              *(v254 + 24) = v299;
              *(v254 + 40) = v301;
              v255 = __swift_project_boxed_opaque_existential_1(v300, v300[3]);
              MEMORY[0x1EEE9AC00](v255, v256);
              MEMORY[0x1EEE9AC00](v257, v258);
              *(&v264 - 4) = sub_1D5B4AA6C;
              *(&v264 - 3) = 0;
              v262 = sub_1D6708A58;
              v263 = v252;
              v260 = sub_1D5D2F7A4(v251, sub_1D615B49C, v259, sub_1D615B4A4, (&v264 - 6));
              if (v235)
              {
                sub_1D5D2CFE8(v267, type metadata accessor for FormatVersionRequirement);

                goto LABEL_105;
              }

              v261 = v260;

              if (v261)
              {
                v301 = v299;
                v302 = 0;
                v303 = v268;
                sub_1D5C34D84(0, &qword_1EDF04DD0, &type metadata for FormatGroupRequirement, MEMORY[0x1E69E62F8]);
                sub_1D668F284();
                sub_1D72647EC();

                v206 = &v298 + 8;
                goto LABEL_67;
              }

              sub_1D5D2CFE8(v267, type metadata accessor for FormatVersionRequirement);
            }

            else
            {
              sub_1D5D2CFE8(v251, type metadata accessor for FormatVersionRequirement);
            }

            goto LABEL_111;
          }

          v301 = v298;
          v302 = 0;
          v303 = v279;
          sub_1D5C34D84(0, &qword_1EDF05000, &type metadata for FormatNodeStyle, MEMORY[0x1E69E62F8]);
          sub_1D5D2FA60();
          v173 = v299;
          sub_1D72647EC();
          v158 = v291;
          *&v299 = v173;
          if (v173)
          {

            v174 = &v305;
LABEL_46:
            sub_1D5D2CFE8(*(v174 - 32), type metadata accessor for FormatVersionRequirement);
LABEL_54:
            v85 = v105;
            return sub_1D5D2CFE8(v85, sub_1D668F160);
          }

          v171 = v278;
        }

        else
        {
          v171 = v159;
        }

        sub_1D5D2CFE8(v171, type metadata accessor for FormatVersionRequirement);
        goto LABEL_48;
      }

      sub_1D5D2CFE8(v90, type metadata accessor for FormatVersionRequirement);
      v89 = v290;
      v91 = v266;
      v88 = v292;
LABEL_11:
      v94 = v293;
      goto LABEL_12;
    }

LABEL_10:
    sub_1D5D2CFE8(v90, type metadata accessor for FormatVersionRequirement);
    goto LABEL_11;
  }

  sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);

  v85 = v75;
  return sub_1D5D2CFE8(v85, sub_1D668F160);
}

uint64_t sub_1D64BA4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6690970(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64BA520(uint64_t a1)
{
  v2 = sub_1D5C50C74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64BA55C(uint64_t a1)
{
  v2 = sub_1D5C50C74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatGroupBindExpression.encode(to:)(void *a1)
{
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v72 - v5;
  v7 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v80 = v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v72 - v12;
  sub_1D668F374();
  v82 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v19 = v1[1];
  v79 = v1[2];
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D5C9B120();
  v23 = v22;
  v24 = sub_1D5B58B84(&qword_1EDF25088, sub_1D5C9B120);
  *&v81 = v17;
  sub_1D5D2EE70(&type metadata for FormatGroupBindExpression, v23, v25, v20, &type metadata for FormatGroupBindExpression, v23, &type metadata for FormatVersions.JazzkonG, v21, v17, v24, &off_1F51F6BF8);
  v26 = qword_1EDF31EA8;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = sub_1D725BD1C();
  v28 = __swift_project_value_buffer(v27, qword_1EDFFCD18);
  v29 = *(v27 - 8);
  v30 = *(v29 + 16);
  v31 = v29 + 16;
  v30(v13, v28, v27);
  v78 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v77 = v18;
  sub_1D725892C();
  v32 = sub_1D725895C();
  if ((*(*(v32 - 8) + 48))(v6, 1, v32) != 1)
  {
    sub_1D5D2CFE8(v13, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v6, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v34 = v81;
    v51 = v82;
    goto LABEL_12;
  }

  v76 = v19;
  v72[1] = v31;
  v73 = v30;
  v74 = v28;
  sub_1D5D35558(v6, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v33 = v82;
  v34 = v81;
  v35 = (v81 + *(v82 + 44));
  v37 = *v35;
  v36 = v35[1];
  LOBYTE(v85) = 0;
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = v85;
  *(v38 + 40) = v37;
  *(v38 + 48) = v36;
  sub_1D5E1B7CC(0);
  v40 = v39;
  sub_1D5B58B84(&qword_1EDF03018, sub_1D5E1B7CC);

  v75 = v40;
  v41 = sub_1D72647CC();
  LOBYTE(v85) = 0;
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  *(v42 + 32) = 0;
  *(v42 + 16) = v41;
  *(v42 + 40) = v85;
  v43 = __swift_project_boxed_opaque_existential_1((v34 + *(v33 + 36)), *(v34 + *(v33 + 36) + 24));
  MEMORY[0x1EEE9AC00](v43, v44);
  MEMORY[0x1EEE9AC00](v45, v46);
  v72[-4] = sub_1D5B4AA6C;
  v72[-3] = 0;
  v70 = sub_1D668F408;
  v71 = v38;
  v47 = v88;
  v49 = sub_1D5D2F7A4(v13, sub_1D615B49C, v48, sub_1D615B4A4, &v72[-6]);
  v88 = v47;
  if (v47)
  {
    sub_1D5D2CFE8(v13, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v34, sub_1D668F374);
  }

  v52 = v49;

  if ((v52 & 1) == 0)
  {
    sub_1D5D2CFE8(v13, type metadata accessor for FormatVersionRequirement);

    v51 = v82;
    goto LABEL_11;
  }

  v85 = 0;
  v86 = 0;
  v87 = 0;
  v83 = v77;
  v84 = v76;
  v53 = v88;
  sub_1D72647EC();

  sub_1D5D2CFE8(v13, type metadata accessor for FormatVersionRequirement);
  v51 = v82;
  if (!v53)
  {
    v88 = 0;
LABEL_11:
    v30 = v73;
    v28 = v74;
LABEL_12:
    v54 = v80;
    v30(v80, v28, v27);
    swift_storeEnumTagMultiPayload();
    v55 = (v34 + *(v51 + 44));
    v57 = *v55;
    v56 = v55[1];
    LOBYTE(v85) = 0;
    v58 = swift_allocObject();
    v81 = xmmword_1D728CF30;
    *(v58 + 16) = xmmword_1D728CF30;
    *(v58 + 32) = v85;
    *(v58 + 40) = v57;
    *(v58 + 48) = v56;
    sub_1D5E1B7CC(0);
    sub_1D5B58B84(&qword_1EDF03018, sub_1D5E1B7CC);
    v59 = v79;

    v60 = sub_1D72647CC();
    LOBYTE(v85) = 0;
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = v81;
    *(v61 + 40) = v85;
    v62 = __swift_project_boxed_opaque_existential_1((v34 + *(v51 + 36)), *(v34 + *(v51 + 36) + 24));
    MEMORY[0x1EEE9AC00](v62, v63);
    MEMORY[0x1EEE9AC00](v64, v65);
    v72[-4] = sub_1D5B4AA6C;
    v72[-3] = 0;
    v70 = sub_1D6708A5C;
    v71 = v58;
    v66 = v88;
    v68 = sub_1D5D2F7A4(v54, sub_1D615B49C, v67, sub_1D615B4A4, &v72[-6]);
    if (v66)
    {
      sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v69 = v68;

      if (v69)
      {
        sub_1D5E06F48(v59, v34, 1, 0, 0);
      }

      sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);
    }
  }

  return sub_1D5D2CFE8(v34, sub_1D668F374);
}

uint64_t sub_1D64BAEF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6690E30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64BAF30(uint64_t a1)
{
  v2 = sub_1D5C9B610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64BAF6C(uint64_t a1)
{
  v2 = sub_1D5C9B610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatGroupBinding.Bool.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v82 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v81 = &v75 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v79 = &v75 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v78 = &v75 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v80 = &v75 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v77 = &v75 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v76 = &v75 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v75 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v75 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v75 - v34;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v39 = &v75 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *v1;
  v40 = *(v1 + 8);
  v41 = *(v1 + 9);
  v42 = a1[3];
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v42);
  v44 = sub_1D5C30408();
  v83 = v39;
  sub_1D5D2EE70(&type metadata for FormatGroupBinding.Bool, &type metadata for FormatCodingKeys, v45, v42, &type metadata for FormatGroupBinding.Bool, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonG, v43, v39, v44, &off_1F51F6BF8);
  v46 = ((2 * v41) | ((v40 & 0x20) != 0));
  if (v46 > 4)
  {
    if (((2 * v41) | ((v40 & 0x20) != 0)) <= 6u)
    {
      v54 = v83;
      if (v46 == 5)
      {
        if (qword_1EDF31ED8 != -1)
        {
          swift_once();
        }

        v58 = sub_1D725BD1C();
        v59 = __swift_project_value_buffer(v58, qword_1EDFFCD68);
        v53 = v80;
        (*(*(v58 - 8) + 16))(v80, v59, v58);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v60 = 5;
      }

      else
      {
        if (qword_1EDF31E78 != -1)
        {
          swift_once();
        }

        v73 = sub_1D725BD1C();
        v74 = __swift_project_value_buffer(v73, qword_1EDFFCC90);
        v53 = v78;
        (*(*(v73 - 8) + 16))(v78, v74, v73);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v60 = 6;
      }

      sub_1D63ABCF4(v60, v84, v53);
    }

    else if (v46 == 7)
    {
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v64 = sub_1D725BD1C();
      v65 = __swift_project_value_buffer(v64, qword_1EDFFCD68);
      v53 = v79;
      (*(*(v64 - 8) + 16))(v79, v65, v64);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v54 = v83;
      sub_1D63AC348(7, v84, v53);
    }

    else if (v46 == 8)
    {
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v51 = sub_1D725BD1C();
      v52 = __swift_project_value_buffer(v51, qword_1EDFFCD68);
      v53 = v81;
      (*(*(v51 - 8) + 16))(v81, v52, v51);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v54 = v83;
      sub_1D63AC4DC(8, v84, v40, v53);
    }

    else
    {
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v69 = sub_1D725BD1C();
      v70 = __swift_project_value_buffer(v69, qword_1EDFFCE80);
      v53 = v82;
      (*(*(v69 - 8) + 16))(v82, v70, v69);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v54 = v83;
      sub_1D63AC674(9, v84, v53);
    }

    v57 = v53;
    goto LABEL_43;
  }

  if (((2 * v41) | ((v40 & 0x20) != 0)) <= 1u)
  {
    v54 = v83;
    if ((2 * v41) | ((v40 & 0x20) != 0))
    {
      if (qword_1EDF31F10 != -1)
      {
        swift_once();
      }

      v71 = sub_1D725BD1C();
      v72 = __swift_project_value_buffer(v71, qword_1EDFFCDF8);
      (*(*(v71 - 8) + 16))(v31, v72, v71);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63ABCF4(1, v84, v31);
      v57 = v31;
    }

    else
    {
      if (qword_1EDF31EF8 != -1)
      {
        swift_once();
      }

      v55 = sub_1D725BD1C();
      v56 = __swift_project_value_buffer(v55, qword_1EDFFCDC8);
      (*(*(v55 - 8) + 16))(v35, v56, v55);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63ABB60(0, v84, v35);
      v57 = v35;
    }

LABEL_43:
    sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);
    v68 = v54;
    return sub_1D5D2CFE8(v68, sub_1D5D30DC4);
  }

  v47 = v83;
  if (v46 != 2)
  {
    if (v46 == 3)
    {
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v48 = sub_1D725BD1C();
      v49 = __swift_project_value_buffer(v48, qword_1EDFFCD18);
      v50 = v76;
      (*(*(v48 - 8) + 16))(v76, v49, v48);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63AC01C(3, v84 & 1, v50);
    }

    else
    {
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v66 = sub_1D725BD1C();
      v67 = __swift_project_value_buffer(v66, qword_1EDFFCD98);
      v50 = v77;
      (*(*(v66 - 8) + 16))(v77, v67, v66);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63AC1B4(4, v84, v50);
    }

    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
    v68 = v47;
    return sub_1D5D2CFE8(v68, sub_1D5D30DC4);
  }

  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v61 = sub_1D725BD1C();
  v62 = __swift_project_value_buffer(v61, qword_1EDFFCD98);
  (*(*(v61 - 8) + 16))(v27, v62, v61);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63ABE88(2, v84, v27);
  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v47, sub_1D5D30DC4);
}

uint64_t sub_1D64BBA48(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6465626D45626577;
    v6 = 0x76457374726F7073;
    if (a1 != 8)
    {
      v6 = 0x7453656C7A7A7570;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 1684366694;
    if (a1 != 5)
    {
      v7 = 0x7463655364656566;
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
    v2 = 0x6575737369;
    v3 = 0x72656874616577;
    if (a1 != 3)
    {
      v3 = 0x6C6C6177796170;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 6775156;
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

uint64_t sub_1D64BBBE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D64BBA48(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatGroupBinding.Color.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v30 = a2;
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
    v11 = v7;
    v12 = a1;
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
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F5115058;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v12;
          goto LABEL_9;
        }
      }
    }

    sub_1D668F4D8();
    v29 = 0uLL;
    sub_1D726431C();
    if (v27 <= 2u)
    {
      v23 = v30;
      a1 = v12;
      if (v27)
      {
        v29 = xmmword_1D7279980;
        if (v27 == 1)
        {
          sub_1D5CDAA88();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v26 = 0;
          v24 = v27;
          v25 = 32;
        }

        else
        {
          sub_1D5FCE1E0();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v25 = 0;
          v24 = v27;
          v26 = 1;
        }
      }

      else
      {
        v29 = xmmword_1D7279980;
        sub_1D63281C4();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v25 = 0;
        v26 = 0;
        v24 = v27;
      }
    }

    else
    {
      v23 = v30;
      a1 = v12;
      if (v27 > 4u)
      {
        v29 = xmmword_1D7279980;
        if (v27 == 5)
        {
          sub_1D5FCE1E0();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = v27;
          v26 = 2;
          v25 = 32;
        }

        else
        {
          sub_1D667EB6C();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = v27;
          v25 = v28;
          v26 = 3;
        }
      }

      else
      {
        v29 = xmmword_1D7279980;
        if (v27 == 3)
        {
          sub_1D667EB18();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = v27;
          v25 = v28 | 0x20;
          v26 = 1;
        }

        else
        {
          sub_1D5FCE1E0();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v25 = 0;
          v24 = v27;
          v26 = 2;
        }
      }
    }

    *v23 = v24;
    *(v23 + 8) = v25;
    *(v23 + 9) = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatGroupBinding.Color.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v61 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v60 = &v58 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v59 = &v58 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v58 = &v58 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v58 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v58 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v58 - v25;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = *v1;
  v31 = *(v1 + 8);
  v32 = *(v1 + 9);
  v33 = a1[3];
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v33);
  v35 = sub_1D5C30408();
  v62 = v30;
  sub_1D5D2EE70(&type metadata for FormatGroupBinding.Color, &type metadata for FormatCodingKeys, v36, v33, &type metadata for FormatGroupBinding.Color, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v34, v30, v35, &off_1F51F6CD8);
  v37 = ((2 * v32) | ((v31 & 0x20) != 0));
  if (v37 > 2)
  {
    if (((2 * v32) | ((v31 & 0x20) != 0)) > 4u)
    {
      v38 = v62;
      if (v37 != 5)
      {
        if (qword_1EDF31ED8 != -1)
        {
          swift_once();
        }

        v56 = sub_1D725BD1C();
        v57 = __swift_project_value_buffer(v56, qword_1EDFFCD68);
        v18 = v61;
        (*(*(v56 - 8) + 16))(v61, v57, v56);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63AA34C(6, v63, v31, v18);
        goto LABEL_30;
      }

      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v44 = sub_1D725BD1C();
      v45 = __swift_project_value_buffer(v44, qword_1EDFFCC90);
      v18 = v60;
      (*(*(v44 - 8) + 16))(v60, v45, v44);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v46 = 5;
    }

    else
    {
      v38 = v62;
      if (v37 == 3)
      {
        if (qword_1EDF31E80 != -1)
        {
          swift_once();
        }

        v39 = sub_1D725BD1C();
        v40 = __swift_project_value_buffer(v39, qword_1EDFFCCA8);
        v18 = v58;
        (*(*(v39 - 8) + 16))(v58, v40, v39);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63AA1B4(3, v63, v31 & 0xDF, v18);
        goto LABEL_30;
      }

      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v54 = sub_1D725BD1C();
      v55 = __swift_project_value_buffer(v54, qword_1EDFFCD68);
      v18 = v59;
      (*(*(v54 - 8) + 16))(v59, v55, v54);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v46 = 4;
    }

    v53 = v63;
LABEL_26:
    sub_1D63AA020(v46, v53, v18);
LABEL_30:
    v43 = v18;
LABEL_31:
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CFE8(v38, sub_1D5D30DC4);
  }

  if ((2 * v32) | ((v31 & 0x20) != 0))
  {
    if (v37 == 1)
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v41 = sub_1D725BD1C();
      v42 = __swift_project_value_buffer(v41, qword_1EDFFCD50);
      (*(*(v41 - 8) + 16))(v22, v42, v41);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v38 = v62;
      sub_1D63A9E8C(1, v63, v22);
      v43 = v22;
      goto LABEL_31;
    }

    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v51 = sub_1D725BD1C();
    v52 = __swift_project_value_buffer(v51, qword_1EDFFCCE8);
    (*(*(v51 - 8) + 16))(v18, v52, v51);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v46 = 2;
    v38 = v62;
    v53 = v63;
    goto LABEL_26;
  }

  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v47 = sub_1D725BD1C();
  v48 = __swift_project_value_buffer(v47, qword_1EDFFCD50);
  (*(*(v47 - 8) + 16))(v26, v48, v47);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v49 = v62;
  sub_1D63A9CF8(0, v63, v26);
  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v49, sub_1D5D30DC4);
}

uint64_t sub_1D64BC9E4()
{
  sub_1D72621EC();
}

uint64_t sub_1D64BCAFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6663A04();
  *a1 = result;
  return result;
}

void sub_1D64BCB2C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6575737369;
  v5 = 0xEB000000006E6F69;
  v6 = 0x7463655364656566;
  if (v2 != 5)
  {
    v6 = 0x76457374726F7073;
    v5 = 0xEB00000000746E65;
  }

  v7 = 0xEA00000000006570;
  v8 = 0x7954656C7A7A7570;
  if (v2 != 3)
  {
    v8 = 1684366694;
    v7 = 0xE400000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x656E696C64616568;
  if (v2 != 1)
  {
    v10 = 6775156;
    v9 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
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

uint64_t sub_1D64BCCC8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64BCDAC()
{
  sub_1D72621EC();
}

uint64_t sub_1D64BCE7C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D64BCF5C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6775156;
  v5 = 0xE400000000000000;
  v6 = 1684366694;
  v7 = 0xEB000000006E6F69;
  v8 = 0x7463655364656566;
  if (v2 != 3)
  {
    v8 = 0x76457374726F7073;
    v7 = 0xEB00000000746E65;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x72656874616577;
    v3 = 0xE700000000000000;
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

uint64_t FormatGroupBinding.DateTime.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v26 = a2;
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
    v12 = a1;
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
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F51150A8;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v12;
          goto LABEL_9;
        }
      }
    }

    sub_1D668F52C();
    v27 = 0uLL;
    sub_1D726431C();
    a1 = v12;
    if (v28 > 2u)
    {
      v23 = v26;
      if (v28 == 3)
      {
        v27 = xmmword_1D7279980;
        sub_1D6139ED4();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v28 | 0x60;
      }

      else
      {
        v27 = xmmword_1D7279980;
        if (v28 == 4)
        {
          sub_1D6139ED4();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = v28 | 0x80;
        }

        else
        {
          sub_1D6139ED4();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = v28 | 0xA0;
        }
      }
    }

    else
    {
      v23 = v26;
      if (v28)
      {
        v27 = xmmword_1D7279980;
        if (v28 == 1)
        {
          sub_1D5DF40A8();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = v28 | 0x20;
        }

        else
        {
          sub_1D6685E54();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = v28 | 0x40;
        }
      }

      else
      {
        v27 = xmmword_1D7279980;
        sub_1D6685EA8();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = 0;
      }
    }

    *v23 = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatGroupBinding.DateTime.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v56 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v55 = &v53 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v54 = &v53 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v53 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v53 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v53 - v23;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *v2;
  v31 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  v32 = sub_1D5C30408();
  v33 = v28;
  sub_1D5D2EE70(&type metadata for FormatGroupBinding.DateTime, &type metadata for FormatCodingKeys, v34, v31, &type metadata for FormatGroupBinding.DateTime, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v30, v28, v32, &off_1F51F6CF8);
  v35 = v29 >> 5;
  if (v29 >> 5 > 2)
  {
    if (v35 == 3)
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v46 = sub_1D725BD1C();
      v47 = __swift_project_value_buffer(v46, qword_1EDFFCCA8);
      v41 = v54;
      (*(*(v46 - 8) + 16))(v54, v47, v46);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v42 = v29 & 0x1F;
      v43 = 3;
    }

    else if (v35 == 4)
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v39 = sub_1D725BD1C();
      v40 = __swift_project_value_buffer(v39, qword_1EDFFCCA8);
      v41 = v55;
      (*(*(v39 - 8) + 16))(v55, v40, v39);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v42 = v29 & 0x1F;
      v43 = 4;
    }

    else
    {
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v50 = sub_1D725BD1C();
      v51 = __swift_project_value_buffer(v50, qword_1EDFFCC90);
      v41 = v56;
      (*(*(v50 - 8) + 16))(v56, v51, v50);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v42 = v29 & 0x1F;
      v43 = 5;
    }

    sub_1D63A89DC(v43, v42, v41);
    v38 = v41;
  }

  else if (v35)
  {
    if (v35 == 1)
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v36 = sub_1D725BD1C();
      v37 = __swift_project_value_buffer(v36, qword_1EDFFCCA8);
      (*(*(v36 - 8) + 16))(v20, v37, v36);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63A86B0(1, v29 & 0x1F, v20);
      v38 = v20;
    }

    else
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v48 = sub_1D725BD1C();
      v49 = __swift_project_value_buffer(v48, qword_1EDFFCCA8);
      (*(*(v48 - 8) + 16))(v16, v49, v48);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63A8844(2, v29 & 1, v16);
      v38 = v16;
    }
  }

  else
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v44 = sub_1D725BD1C();
    v45 = __swift_project_value_buffer(v44, qword_1EDFFCCA8);
    (*(*(v44 - 8) + 16))(v24, v45, v44);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63A8524(0, v24);
    v38 = v24;
  }

  sub_1D5D2CFE8(v38, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v33, sub_1D5D30DC4);
}

uint64_t sub_1D64BDC34()
{
  sub_1D72621EC();
}

uint64_t sub_1D64BDD1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6663A9C();
  *a1 = result;
  return result;
}

void sub_1D64BDD4C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656C7A7A7570;
  v5 = 0xE300000000000000;
  v6 = 6775156;
  v7 = 0xE400000000000000;
  v8 = 1684366694;
  if (v2 != 4)
  {
    v8 = 0x7463655364656566;
    v7 = 0xEB000000006E6F69;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x656E696C64616568;
  if (v2 != 1)
  {
    v10 = 0x6575737369;
    v9 = 0xE500000000000000;
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

uint64_t sub_1D64BDEAC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7453656C7A7A7570;
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
    v4 = 0xEF63697473697461;
  }

  if (*a2)
  {
    v5 = 0x7453656C7A7A7570;
  }

  else
  {
    v5 = 0x656E696C64616568;
  }

  if (*a2)
  {
    v6 = 0xEF63697473697461;
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

uint64_t sub_1D64BDF60()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64BDFF0()
{
  sub_1D72621EC();
}

uint64_t sub_1D64BE06C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D64BE104(uint64_t *a1@<X8>)
{
  v2 = 0x656E696C64616568;
  if (*v1)
  {
    v2 = 0x7453656C7A7A7570;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEF63697473697461;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatGroupBinding.Font.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v30 = a2;
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
    v12 = a1;
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
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F51150F8;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v12;
          goto LABEL_9;
        }
      }
    }

    sub_1D668F580();
    v27 = 0uLL;
    sub_1D726431C();
    if (v26 <= 1u)
    {
      v23 = v30;
      a1 = v12;
      if (v26)
      {
        v26 = xmmword_1D7279980;
        sub_1D5EA7144();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v27;
        v25 = v28 | (v29 << 16) | 0x200000;
      }

      else
      {
        v26 = xmmword_1D7279980;
        sub_1D6664DE4();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v27;
        v25 = v28 | (v29 << 16);
      }
    }

    else
    {
      v23 = v30;
      a1 = v12;
      if (v26 == 2)
      {
        v26 = xmmword_1D7279980;
        sub_1D6664D90();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v27;
        v25 = v28 | 0x400000;
      }

      else if (v26 == 3)
      {
        v26 = xmmword_1D7279980;
        sub_1D5EA7144();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v27;
        v25 = v28 | (v29 << 16) | 0x600000;
      }

      else
      {
        v26 = xmmword_1D7279980;
        sub_1D5EA7144();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v27;
        v25 = v28 | (v29 << 16) | 0xFF800000;
      }
    }

    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 18) = BYTE2(v25);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatGroupBinding.Font.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v49 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v49 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v49 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v49 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v49 - v20;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v1 + 8);
  v50 = *v1;
  v52 = v26;
  v27 = *(v1 + 18);
  v51 = *(v1 + 16) | (*(v1 + 18) << 16);
  v29 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  v30 = sub_1D5C30408();
  v53 = v25;
  sub_1D5D2EE70(&type metadata for FormatGroupBinding.Font, &type metadata for FormatCodingKeys, v31, v29, &type metadata for FormatGroupBinding.Font, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v28, v25, v30, &off_1F51F6C78);
  v32 = v27 >> 5;
  if (v32 <= 1)
  {
    if (v27 >> 5)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v46 = sub_1D725BD1C();
      v47 = __swift_project_value_buffer(v46, qword_1EDFFCD30);
      (*(*(v46 - 8) + 16))(v17, v47, v46);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v44 = v51 & 0x1FFFFF;
      v45 = 1;
      goto LABEL_20;
    }

    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v37 = sub_1D725BD1C();
    v38 = __swift_project_value_buffer(v37, qword_1EDFFCD50);
    (*(*(v37 - 8) + 16))(v21, v38, v37);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v35 = v53;
    sub_1D63AB684(0, *&v50, v52, v51, v21);
    v36 = v21;
  }

  else
  {
    if (v32 != 2)
    {
      if (v32 == 3)
      {
        if (qword_1EDF31ED8 != -1)
        {
          swift_once();
        }

        v33 = sub_1D725BD1C();
        v34 = __swift_project_value_buffer(v33, qword_1EDFFCD68);
        (*(*(v33 - 8) + 16))(v9, v34, v33);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v35 = v53;
        sub_1D63AB824(3, *&v50, v52, v51 & 0x1FFFFF, v9);
        v36 = v9;
        goto LABEL_21;
      }

      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v42 = sub_1D725BD1C();
      v43 = __swift_project_value_buffer(v42, qword_1EDFFCC90);
      v17 = v49;
      (*(*(v42 - 8) + 16))(v49, v43, v42);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v44 = v51 & 0x1FFFFF;
      v45 = 4;
LABEL_20:
      v35 = v53;
      sub_1D63AB824(v45, *&v50, v52, v44, v17);
      v36 = v17;
      goto LABEL_21;
    }

    v39 = v50;
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v40 = sub_1D725BD1C();
    v41 = __swift_project_value_buffer(v40, qword_1EDFFCD98);
    (*(*(v40 - 8) + 16))(v13, v41, v40);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v35 = v53;
    sub_1D63AB9C4(2, v52, v51, v13, v39);
    v36 = v13;
  }

LABEL_21:
  sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v35, sub_1D5D30DC4);
}

uint64_t sub_1D64BED28()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64BEE00()
{
  sub_1D72621EC();
}

uint64_t sub_1D64BEEC4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64BEF98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D66639B8();
  *a1 = result;
  return result;
}

void sub_1D64BEFC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x656E696C64616568;
  v5 = 0xE500000000000000;
  v6 = 0x6575737369;
  v7 = 0xE400000000000000;
  v8 = 1684366694;
  if (v2 != 3)
  {
    v8 = 0x7463655364656566;
    v7 = 0xEB000000006E6F69;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 6775156;
    v3 = 0xE300000000000000;
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

uint64_t FormatGroupBinding.Image.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v30[-v9 - 16];
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
    v12 = a1;
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
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F5115148;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v12;
          goto LABEL_9;
        }
      }
    }

    sub_1D668F5D4();
    *v30 = 0uLL;
    sub_1D726431C();
    a1 = v12;
    if (v29 > 3u)
    {
      v23 = v34;
      if (v29 > 5u)
      {
        if (v29 == 6)
        {
          v29 = xmmword_1D7279980;
          sub_1D668F67C();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v27 = *v30;
          v28 = *&v30[8];
          v24 = v31;
          v25 = v32;
          v26 = v33 | 0xC0;
        }

        else
        {
          *v30 = xmmword_1D7279980;
          sub_1D668F628();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = 0;
          v25 = 0;
          v27 = v29;
          v28 = 0uLL;
          v26 = -32;
        }
      }

      else
      {
        if (v29 == 4)
        {
          v29 = xmmword_1D7279980;
          sub_1D668F6D0();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v25 = 0;
          v27 = *v30;
          v28 = *&v30[8];
          v26 = 0x80;
        }

        else
        {
          v29 = xmmword_1D7279980;
          sub_1D668F6D0();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v25 = 0;
          v27 = *v30;
          v28 = *&v30[8];
          v26 = -96;
        }

        v24 = v31;
      }
    }

    else
    {
      v23 = v34;
      if (v29 > 1u)
      {
        if (v29 == 2)
        {
          *v30 = xmmword_1D7279980;
          sub_1D5CD3BE8();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = 0;
          v25 = 0;
          v27 = v29;
          v28 = 0uLL;
          v26 = 64;
        }

        else
        {
          v29 = xmmword_1D7279980;
          sub_1D5EBCA6C();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = 0;
          v25 = 0;
          *&v28 = *&v30[8];
          v27 = *v30;
          *(&v28 + 1) = *&v30[16];
          v26 = 96;
        }
      }

      else if (v29)
      {
        v29 = xmmword_1D7279980;
        sub_1D668F6D0();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v25 = 0;
        v27 = *v30;
        v28 = *&v30[8];
        v26 = 32;
        v24 = v31;
      }

      else
      {
        *v30 = xmmword_1D7279980;
        sub_1D5CBE610();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = v29;
        v28 = 0uLL;
      }
    }

    *v23 = v27;
    *(v23 + 8) = v28;
    *(v23 + 24) = v24;
    *(v23 + 32) = v25;
    *(v23 + 40) = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatGroupBinding.Image.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v70 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v71 = &v67 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v68 = &v67 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v69 = &v67 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v67 = &v67 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v67 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v67 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v67 - v28;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = &v67 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *v1;
  v35 = *(v1 + 8);
  v36 = *(v1 + 24);
  v74 = *(v1 + 16);
  v75 = v34;
  v72 = v36;
  v73 = v35;
  v37 = *(v1 + 32);
  v38 = *(v1 + 40);
  v39 = a1[3];
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v39);
  v41 = sub_1D5C30408();
  v81 = v33;
  sub_1D5D2EE70(&type metadata for FormatGroupBinding.Image, &type metadata for FormatCodingKeys, v42, v39, &type metadata for FormatGroupBinding.Image, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v40, v33, v41, &off_1F51F6C78);
  v43 = v38 >> 5;
  if (v38 >> 5 > 3)
  {
    if (v38 >> 5 > 5)
    {
      if (v43 == 6)
      {
        *&v76 = v75;
        *(&v76 + 1) = v73;
        v77 = v74;
        v78 = v72;
        v79 = v37;
        v80 = v38 & 1;
        if (qword_1EDF31ED8 != -1)
        {
          swift_once();
        }

        v56 = sub_1D725BD1C();
        v57 = __swift_project_value_buffer(v56, qword_1EDFFCD68);
        v51 = v71;
        (*(*(v56 - 8) + 16))(v71, v57, v56);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v48 = v81;
        sub_1D63A9698(6, &v76, v51);
      }

      else
      {
        if (qword_1EDF31F38 != -1)
        {
          swift_once();
        }

        v65 = sub_1D725BD1C();
        v66 = __swift_project_value_buffer(v65, qword_1EDFFCE38);
        v51 = v70;
        (*(*(v65 - 8) + 16))(v70, v66, v65);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v48 = v81;
        sub_1D63A9838(7, v75 & 1, v51);
      }
    }

    else
    {
      if (v43 == 4)
      {
        v48 = v81;
        if (qword_1EDF31ED8 != -1)
        {
          swift_once();
        }

        v49 = sub_1D725BD1C();
        v50 = __swift_project_value_buffer(v49, qword_1EDFFCD68);
        v51 = v69;
        (*(*(v49 - 8) + 16))(v69, v50, v49);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v52 = 4;
      }

      else
      {
        v48 = v81;
        if (qword_1EDF31E78 != -1)
        {
          swift_once();
        }

        v61 = sub_1D725BD1C();
        v62 = __swift_project_value_buffer(v61, qword_1EDFFCC90);
        v51 = v68;
        (*(*(v61 - 8) + 16))(v68, v62, v61);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v52 = 5;
      }

      sub_1D63A91C4(v52, v75, v73, v74, v72, v51);
    }

    goto LABEL_33;
  }

  if (v38 >> 5 > 1)
  {
    v48 = v81;
    if (v43 == 2)
    {
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v53 = sub_1D725BD1C();
      v54 = __swift_project_value_buffer(v53, qword_1EDFFCD98);
      (*(*(v53 - 8) + 16))(v21, v54, v53);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63A935C(2, v75 & 1, v21);
      v55 = v21;
      goto LABEL_34;
    }

    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v63 = sub_1D725BD1C();
    v64 = __swift_project_value_buffer(v63, qword_1EDFFCDE0);
    v51 = v67;
    (*(*(v63 - 8) + 16))(v67, v64, v63);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63A94F4(3, v75, v73, v74, v51);
LABEL_33:
    v55 = v51;
LABEL_34:
    sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);
    v60 = v48;
    return sub_1D5D2CFE8(v60, sub_1D5D30DC4);
  }

  v44 = v81;
  if (v43)
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v58 = sub_1D725BD1C();
    v59 = __swift_project_value_buffer(v58, qword_1EDFFCD30);
    (*(*(v58 - 8) + 16))(v25, v59, v58);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63A91C4(1, v75, v73, v74, v72, v25);
    sub_1D5D2CFE8(v25, type metadata accessor for FormatVersionRequirement);
    v60 = v44;
    return sub_1D5D2CFE8(v60, sub_1D5D30DC4);
  }

  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v45 = sub_1D725BD1C();
  v46 = __swift_project_value_buffer(v45, qword_1EDFFCD50);
  (*(*(v45 - 8) + 16))(v29, v46, v45);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63A9030(0, v75, v29);
  sub_1D5D2CFE8(v29, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v44, sub_1D5D30DC4);
}

uint64_t sub_1D64C00A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6663A50();
  *a1 = result;
  return result;
}

void sub_1D64C00D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x656E696C64616568;
  v5 = 0xEB00000000746E65;
  v6 = 0x76457374726F7073;
  if (v2 != 6)
  {
    v6 = 0x657069636572;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1684366694;
  if (v2 != 4)
  {
    v8 = 0x7463655364656566;
    v7 = 0xEB000000006E6F69;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x6575737369;
  if (v2 != 2)
  {
    v10 = 0x72656874616577;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = 6775156;
    v3 = 0xE300000000000000;
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

uint64_t FormatGroupBinding.IssueCover.init(from:)(void *a1)
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
          *(v18 + 16) = &unk_1F5115198;
          *(v18 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v6 + 8))(v9, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D668F724();
    v20 = 0uLL;
    sub_1D726431C();
    v20 = xmmword_1D7279980;
    sub_1D668F778();
    sub_1D726431C();
    (*(v6 + 8))(v9, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatGroupBinding.IssueCover.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatGroupBinding.IssueCover, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatGroupBinding.IssueCover, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v11, v9, v12, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCD50);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63AD304(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatGroupBinding.SourceItemTip.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v26 = a2;
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
    v12 = a1;
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
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F51151E8;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v12;
          goto LABEL_9;
        }
      }
    }

    sub_1D668F7CC();
    v27 = 0uLL;
    sub_1D726431C();
    if (v28 <= 1u)
    {
      v23 = v26;
      a1 = v12;
      v27 = xmmword_1D7279980;
      if (v28)
      {
        sub_1D668F874();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v28 | 0x20;
      }

      else
      {
        sub_1D668F874();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v28;
      }
    }

    else
    {
      v23 = v26;
      a1 = v12;
      if (v28 == 2)
      {
        v27 = xmmword_1D7279980;
        sub_1D668F8C8();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v28 | 0x40;
      }

      else
      {
        v27 = xmmword_1D7279980;
        if (v28 == 3)
        {
          sub_1D668F874();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = v28 | 0x60;
        }

        else
        {
          sub_1D668F820();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = 0x80;
        }
      }
    }

    *v23 = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatGroupBinding.SourceItemTip.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v50 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v50 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v50 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v50 - v20;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v1;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = sub_1D5C30408();
  v51 = v25;
  sub_1D5D2EE70(&type metadata for FormatGroupBinding.SourceItemTip, &type metadata for FormatCodingKeys, v30, v27, &type metadata for FormatGroupBinding.SourceItemTip, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlow, v28, v25, v29, &off_1F51F6B38);
  v31 = v26 >> 5;
  if (v26 >> 5 <= 1)
  {
    if (v31)
    {
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v46 = sub_1D725BD1C();
      v47 = __swift_project_value_buffer(v46, qword_1EDFFCC90);
      (*(*(v46 - 8) + 16))(v17, v47, v46);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v48 = v26 & 1;
      v35 = v51;
      sub_1D63ACCC0(1, v48, v17);
      v36 = v17;
    }

    else
    {
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v37 = sub_1D725BD1C();
      v38 = __swift_project_value_buffer(v37, qword_1EDFFCE68);
      (*(*(v37 - 8) + 16))(v21, v38, v37);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v39 = v26 & 1;
      v35 = v51;
      sub_1D63ACCC0(0, v39, v21);
      v36 = v21;
    }
  }

  else if (v31 == 2)
  {
    if (qword_1EDF31F40 != -1)
    {
      swift_once();
    }

    v40 = sub_1D725BD1C();
    v41 = __swift_project_value_buffer(v40, qword_1EDFFCE50);
    (*(*(v40 - 8) + 16))(v13, v41, v40);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v42 = v26 & 1;
    v35 = v51;
    sub_1D63ACE58(2, v42, v13);
    v36 = v13;
  }

  else if (v31 == 3)
  {
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v32 = sub_1D725BD1C();
    v33 = __swift_project_value_buffer(v32, qword_1EDFFCE68);
    (*(*(v32 - 8) + 16))(v9, v33, v32);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v34 = v26 & 1;
    v35 = v51;
    sub_1D63ACCC0(3, v34, v9);
    v36 = v9;
  }

  else
  {
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v43 = sub_1D725BD1C();
    v44 = __swift_project_value_buffer(v43, qword_1EDFFCE68);
    v45 = v50;
    (*(*(v43 - 8) + 16))(v50, v44, v43);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v35 = v51;
    sub_1D63ACFF0(4, v45);
    v36 = v45;
  }

  sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v35, sub_1D5D30DC4);
}

uint64_t sub_1D64C1360()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64C143C()
{
  sub_1D72621EC();
}

uint64_t sub_1D64C1504()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64C15DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6663920();
  *a1 = result;
  return result;
}

void sub_1D64C160C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1684366694;
  v5 = 0xE800000000000000;
  v6 = 0x656E696C64616568;
  v7 = 0xE300000000000000;
  v8 = 6775156;
  if (v2 != 3)
  {
    v8 = 0x6465626D45626577;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7463655364656566;
    v3 = 0xEB000000006E6F69;
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

uint64_t FormatGroupBinding.Sponsorship.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatGroupBinding.Sponsorship, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatGroupBinding.Sponsorship, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowG, v11, v9, v12, &off_1F51F6B58);
  if (qword_1EDF31F30 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCE20);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D6422D34(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatGroupBinding.Temperature.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a2;
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
    v11 = v7;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v14 = v27;
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
          *(v21 + 16) = &unk_1F5115288;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D668F970();
    v25 = 0uLL;
    sub_1D726431C();
    v24 = xmmword_1D7279980;
    sub_1D668F9C4();
    sub_1D726431C();
    (*(v11 + 8))(v10, v6);
    v23 = v26;
    *v14 = v25;
    *(v14 + 16) = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatGroupBinding.Temperature.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v12 = *(v1 + 8);
  v13 = *(v1 + 16);
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatGroupBinding.Temperature, &type metadata for FormatCodingKeys, v17, v14, &type metadata for FormatGroupBinding.Temperature, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonG, v15, v10, v16, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v18 = sub_1D725BD1C();
  v19 = __swift_project_value_buffer(v18, qword_1EDFFCD18);
  (*(*(v18 - 8) + 16))(v6, v19, v18);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63AD17C(v11, v12, v13, v6);
  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v10, sub_1D5D30DC4);
}

uint64_t sub_1D64C2010(char a1)
{
  result = 0x656E696C64616568;
  switch(a1)
  {
    case 1:
      result = 6775156;
      break;
    case 2:
      result = 0x6575737369;
      break;
    case 3:
      result = 0x72656874616577;
      break;
    case 4:
      result = 0x6C6C6177796170;
      break;
    case 5:
      result = 1684366694;
      break;
    case 6:
      result = 0x7463655364656566;
      break;
    case 7:
      result = 0x6465626D45626577;
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
      result = 0x657069636572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D64C22EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D64C2010(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D64C2368(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6465626D45626577;
  if (v2 != 1)
  {
    v5 = 6775156;
    v4 = 0xE300000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x656E696C64616568;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0x6465626D45626577;
  if (*a2 != 1)
  {
    v8 = 6775156;
    v3 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656E696C64616568;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE800000000000000;
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

uint64_t sub_1D64C2458()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64C24F4()
{
  sub_1D72621EC();
}

uint64_t sub_1D64C257C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64C2614@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D666396C();
  *a1 = result;
  return result;
}

void sub_1D64C2644(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6465626D45626577;
  if (v2 != 1)
  {
    v5 = 6775156;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E696C64616568;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatGroupColumnSystem.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
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
          *(v22 + 16) = &unk_1F51152D8;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D668FA18();
    v27 = 0;
    v28 = 0;
    sub_1D726431C();
    if (v26)
    {
      if (v26 == 1)
      {
        (*(v11 + 8))(v15, v5);
        v24 = 0;
        v25 = 1;
      }

      else
      {
        sub_1D5C30060(0, &qword_1EDF2C0F0, sub_1D668FA6C, &type metadata for FormatGroupColumnSystemKind, type metadata accessor for FormatSelectorValue);
        v26 = xmmword_1D7279980;
        sub_1D668FAC0();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v24 = v27;
        v25 = v28;
      }
    }

    else
    {
      (*(v11 + 8))(v15, v5);
      v24 = 0;
      v25 = 0;
    }

    *v12 = v24;
    v12[1] = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatGroupColumnSystem.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v33 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v33 - v13;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v20 = v1[1];
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v23 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatGroupColumnSystem, &type metadata for FormatCodingKeys, v24, v21, &type metadata for FormatGroupColumnSystem, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v22, v18, v23, &off_1F51F6CD8);
  if (v20)
  {
    if (v20 == 1)
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
      sub_1D641CA78(1, v10);
      v27 = v10;
    }

    else
    {
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v30 = sub_1D725BD1C();
      v31 = __swift_project_value_buffer(v30, qword_1EDFFCCE8);
      (*(*(v30 - 8) + 16))(v6, v31, v30);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63949F0(2, v19 & 1, v20, v6);
      v27 = v6;
    }
  }

  else
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
    sub_1D641CA78(0, v14);
    v27 = v14;
  }

  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D64C2EF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x746C7561666564;
  if (v2 != 1)
  {
    v4 = 0x726F7463656C6573;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1685217635;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x746C7561666564;
  if (*a2 != 1)
  {
    v8 = 0x726F7463656C6573;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1685217635;
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

uint64_t sub_1D64C2FF0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64C308C()
{
  sub_1D72621EC();
}

uint64_t sub_1D64C3114()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64C31AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6664254();
  *a1 = result;
  return result;
}

void sub_1D64C31DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x746C7561666564;
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
    v7 = 1685217635;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatGroupColumnSystemKind.encode(to:)(void *a1)
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
  if (qword_1EDF31E90 != -1)
  {
    swift_once();
  }

  v15 = sub_1D725BD1C();
  v16 = __swift_project_value_buffer(v15, qword_1EDFFCCE8);
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

uint64_t FormatGroupItemKind.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v57 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v56 = &v51 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v55 = &v51 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v54 = &v51 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v53 = &v51 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v52 = &v51 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v51 = &v51 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v51 - v26;
  LODWORD(v58) = *v1;
  v28 = a1[3];
  v29 = a1[4];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v30 = sub_1D725BD1C();
  v31 = __swift_project_value_buffer(v30, qword_1EDFFCD18);
  v32 = *(*(v30 - 8) + 16);
  v32(v27, v31, v30);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v33 = v62;
  sub_1D5D2BEC4(v27, sub_1D5B4AA6C, 0, v28, v29);
  if (v33)
  {
    return sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  }

  v35 = v32;
  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  v36 = v59;
  v37 = v59[3];
  v38 = v59[4];
  v62 = __swift_project_boxed_opaque_existential_1(v59, v37);
  if (v58 <= 2)
  {
    if (v58)
    {
      if (v58 == 1)
      {
        v58 = v37;
        v41 = v52;
        v35(v52, v31, v30);
        swift_storeEnumTagMultiPayload();
        sub_1D5D2BEC4(v41, sub_1D5B4AA6C, 0, v58, v38);
        sub_1D5D2CFE8(v41, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        if (qword_1EDF31EE8 != -1)
        {
          swift_once();
        }

        v45 = __swift_project_value_buffer(v30, qword_1EDFFCD98);
        v46 = v53;
        v35(v53, v45, v30);
        swift_storeEnumTagMultiPayload();
        sub_1D5D2BEC4(v46, sub_1D5B4AA6C, 0, v37, v38);
        sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);
      }
    }

    else
    {
      v58 = v37;
      v44 = v51;
      v35(v51, v31, v30);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v44, sub_1D5B4AA6C, 0, v58, v38);
      sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);
    }
  }

  else if (v58 > 4)
  {
    if (v58 == 5)
    {
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v42 = __swift_project_value_buffer(v30, qword_1EDFFCD68);
      v43 = v56;
      v35(v56, v42, v30);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v43, sub_1D5B4AA6C, 0, v37, v38);
      sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v49 = __swift_project_value_buffer(v30, qword_1EDFFCD68);
      v50 = v57;
      v35(v57, v49, v30);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v50, sub_1D5B4AA6C, 0, v37, v38);
      sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
    }
  }

  else if (v58 == 3)
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v39 = __swift_project_value_buffer(v30, qword_1EDFFCD68);
    v40 = v54;
    v35(v54, v39, v30);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v40, sub_1D5B4AA6C, 0, v37, v38);
    sub_1D5D2CFE8(v40, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v47 = __swift_project_value_buffer(v30, qword_1EDFFCD68);
    v48 = v55;
    v35(v55, v47, v30);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v48, sub_1D5B4AA6C, 0, v37, v38);
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);
  }

  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v60, v61);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v60);
}

uint64_t FormatGroupNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  *&v390 = &v369 - v7;
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v370 = &v369 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v371 = &v369 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v372 = &v369 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v373 = &v369 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v374 = &v369 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v375 = &v369 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v379 = (&v369 - v28);
  MEMORY[0x1EEE9AC00](v29, v30);
  v376 = &v369 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v377 = &v369 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v380 = &v369 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v382 = &v369 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v385 = (&v369 - v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  v384 = &v369 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  *&v389 = &v369 - v49;
  sub_1D6690F4C();
  *&v392 = v50;
  MEMORY[0x1EEE9AC00](v50, v51);
  v53 = &v369 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1[3];
  v55 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v54);
  sub_1D5CC8B58();
  v57 = v56;
  v58 = sub_1D5B58B84(&qword_1EDF24BA8, sub_1D5CC8B58);
  v393 = v53;
  sub_1D5D2EE70(v4, v57, v59, v54, v4, v57, &type metadata for FormatVersions.AzdenE, v55, v53, v58, &off_1F51F6C18);
  v60 = v2;
  swift_beginAccess();
  v62 = v2[2];
  v61 = v2[3];
  v63 = qword_1EDF31EE8;

  if (v63 != -1)
  {
    swift_once();
  }

  v64 = sub_1D725BD1C();
  v65 = __swift_project_value_buffer(v64, qword_1EDFFCD98);
  v66 = *(v64 - 8);
  v67 = *(v66 + 16);
  v68 = v389;
  v387 = v65;
  v391 = (v66 + 16);
  v67(v389);
  v69 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v70 = v390;
  v378 = v62;
  sub_1D725892C();
  v71 = sub_1D725895C();
  v72 = (*(*(v71 - 8) + 48))(v70, 1, v71);
  v381 = v60;
  v383 = v64;
  v386 = v67;
  v388 = v69;
  if (v72 != 1)
  {
    v92 = v60;
    sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v70, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v93 = v393;
    v94 = v384;
    goto LABEL_7;
  }

  v369 = v61;
  sub_1D5D35558(v70, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v73 = v392;
  v74 = v393;
  v75 = &v393[*(v392 + 44)];
  v76 = v68;
  v78 = *v75;
  v77 = *(v75 + 1);
  LOBYTE(v395) = 0;
  v79 = swift_allocObject();
  *(v79 + 16) = 0;
  *(v79 + 24) = 0;
  *(v79 + 32) = v395;
  *(v79 + 40) = v78;
  *(v79 + 48) = v77;
  sub_1D5E1B75C(0);
  v81 = v80;
  sub_1D5B58B84(&qword_1EDF02A68, sub_1D5E1B75C);

  *&v390 = v81;
  v82 = sub_1D72647CC();
  LOBYTE(v395) = 0;
  v83 = swift_allocObject();
  *(v83 + 24) = 0;
  *(v83 + 32) = 0;
  *(v83 + 16) = v82;
  *(v83 + 40) = v395;
  v84 = __swift_project_boxed_opaque_existential_1((v74 + *(v73 + 36)), *(v74 + *(v73 + 36) + 24));
  MEMORY[0x1EEE9AC00](v84, v85);
  MEMORY[0x1EEE9AC00](v86, v87);
  *(&v369 - 4) = sub_1D5B4AA6C;
  *(&v369 - 3) = 0;
  v367 = sub_1D6690FE0;
  v368 = v79;
  v88 = v394;
  v90 = sub_1D5D2F7A4(v76, sub_1D615B49C, v89, sub_1D615B4A4, (&v369 - 6));
  *&v394 = v88;
  if (!v88)
  {
    v138 = v90;

    if (v138)
    {
      v139 = v386;
      v395 = 0uLL;
      LOBYTE(v396) = 0;
      v410 = v378;
      v411 = v369;
      v93 = v393;
      v140 = v394;
      sub_1D72647EC();

      sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);
      v94 = v384;
      if (v140)
      {
        goto LABEL_16;
      }

      *&v394 = 0;
      v92 = v381;
      v67 = v139;
      v64 = v383;
    }

    else
    {
      sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);

      v93 = v393;
      v92 = v381;
      v64 = v383;
      v94 = v384;
      v67 = v386;
    }

LABEL_7:
    swift_beginAccess();
    v95 = v92[4];
    (v67)(v94, v387, v64);
    swift_storeEnumTagMultiPayload();
    if (((v95 >> 59) & 0x1E | (v95 >> 2) & 1) == 0x16 && v95 == 0xB000000000000008)
    {
      sub_1D5D2CFE8(v94, type metadata accessor for FormatVersionRequirement);
      v96 = v394;
    }

    else
    {
      v119 = v94;
      v120 = v392;
      v121 = (v93 + *(v392 + 44));
      v122 = *v121;
      v123 = v121[1];
      LOBYTE(v395) = 0;
      v124 = swift_allocObject();
      v390 = xmmword_1D728CF30;
      *(v124 + 16) = xmmword_1D728CF30;
      *(v124 + 32) = v395;
      *(v124 + 40) = v122;
      *(v124 + 48) = v123;
      sub_1D5C82CD8(v95);
      sub_1D5E1B75C(0);
      v126 = v125;
      v127 = sub_1D5B58B84(&qword_1EDF02A68, sub_1D5E1B75C);

      *&v389 = v126;
      v378 = v127;
      v128 = sub_1D72647CC();
      LOBYTE(v395) = 0;
      v129 = swift_allocObject();
      *(v129 + 16) = v128;
      *(v129 + 24) = v390;
      *(v129 + 40) = v395;
      v130 = __swift_project_boxed_opaque_existential_1((v93 + *(v120 + 36)), *(v93 + *(v120 + 36) + 24));
      MEMORY[0x1EEE9AC00](v130, v131);
      MEMORY[0x1EEE9AC00](v132, v133);
      *(&v369 - 4) = sub_1D5B4AA6C;
      *(&v369 - 3) = 0;
      v367 = sub_1D6708A60;
      v368 = v124;
      v134 = v394;
      v136 = sub_1D5D2F7A4(v119, sub_1D615B49C, v135, sub_1D615B4A4, (&v369 - 6));
      if (v134)
      {

        sub_1D5C92A8C(v95);
        v137 = v119;
        goto LABEL_19;
      }

      v141 = v136;

      if (v141)
      {
        v395 = v390;
        LOBYTE(v396) = 0;
        v409 = v95;
        sub_1D5CA1E90();
        v93 = v393;
        sub_1D72647EC();
        v142 = v383;
        v96 = 0;
        sub_1D5C92A8C(v409);
        sub_1D5D2CFE8(v384, type metadata accessor for FormatVersionRequirement);
        v92 = v381;
        v64 = v142;
      }

      else
      {
        v96 = 0;
        sub_1D5C92A8C(v95);
        sub_1D5D2CFE8(v384, type metadata accessor for FormatVersionRequirement);
        v93 = v393;
        v92 = v381;
        v64 = v383;
      }
    }

    *&v389 = v92[5];
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    *&v394 = v96;
    v97 = __swift_project_value_buffer(v64, qword_1EDFFCD68);
    v98 = v386;
    (v386)(v385, v97, v64);
    swift_storeEnumTagMultiPayload();
    v390 = xmmword_1D7297410;
    v395 = xmmword_1D7297410;
    LOBYTE(v396) = 0;
    v99 = (v93 + *(v392 + 44));
    v100 = *v99;
    v101 = v99[1];
    LOBYTE(v409) = 0;
    v102 = swift_allocObject();
    v104 = v102;
    *(v102 + 16) = v390;
    *(v102 + 32) = v409;
    *(v102 + 40) = v100;
    *(v102 + 48) = v101;
    v384 = v100;
    if (v389)
    {
      v369 = &v369;
      v409 = v389;
      MEMORY[0x1EEE9AC00](v102, v103);
      *(&v369 - 4) = sub_1D5B4AA6C;
      *(&v369 - 3) = 0;
      v367 = sub_1D6708A60;
      v368 = v104;
      LOBYTE(v408) = 0;
      v105 = swift_allocObject();
      *(v105 + 16) = v390;
      *(v105 + 32) = v408;
      *(v105 + 40) = v100;
      *(v105 + 48) = v101;
      sub_1D5E1B75C(0);
      v107 = v106;
      sub_1D5B58B84(&qword_1EDF02A68, sub_1D5E1B75C);
      swift_retain_n();

      *&v389 = v107;
      v108 = sub_1D72647CC();
      LOBYTE(v408) = 0;
      v109 = swift_allocObject();
      *(v109 + 16) = v108;
      *(v109 + 24) = v390;
      *(v109 + 40) = v408;
      v110 = __swift_project_boxed_opaque_existential_1((v93 + *(v392 + 36)), *(v93 + *(v392 + 36) + 24));
      MEMORY[0x1EEE9AC00](v110, v111);
      MEMORY[0x1EEE9AC00](v112, v113);
      *(&v369 - 4) = sub_1D615B4A4;
      *(&v369 - 3) = (&v369 - 6);
      v367 = sub_1D6708A60;
      v368 = v105;
      v114 = v385;
      v115 = v394;
      v117 = sub_1D5D2F7A4(v385, sub_1D615B49C, v116, sub_1D615B4A4, (&v369 - 6));
      if (v115)
      {

        v93 = v393;

        v118 = v114;
LABEL_15:
        sub_1D5D2CFE8(v118, type metadata accessor for FormatVersionRequirement);
LABEL_16:
        v91 = v93;
        return sub_1D5D2CFE8(v91, sub_1D6690F4C);
      }

      v143 = v117;
      v378 = v101;

      if (v143)
      {
        sub_1D6659D24();
        sub_1D72647EC();
        *&v394 = 0;
        v64 = v383;

        v92 = v381;
      }

      else
      {
        *&v394 = 0;

        v92 = v381;
        v64 = v383;
      }

      v98 = v386;
      v101 = v378;
    }

    else
    {
    }

    sub_1D5D2CFE8(v385, type metadata accessor for FormatVersionRequirement);
    swift_beginAccess();
    v144 = v92[6];
    v145 = v387;
    v98(v382, v387, v64);
    swift_storeEnumTagMultiPayload();
    v146 = *(v144 + 16);
    v378 = v101;
    if (v146)
    {
      LOBYTE(v395) = 0;
      v147 = swift_allocObject();
      v390 = xmmword_1D72BAA60;
      *(v147 + 16) = xmmword_1D72BAA60;
      *(v147 + 32) = v395;
      *(v147 + 40) = v384;
      *(v147 + 48) = v101;
      sub_1D5E1B75C(0);
      v149 = v148;
      v150 = sub_1D5B58B84(&qword_1EDF02A68, sub_1D5E1B75C);

      v151 = v393;
      *&v389 = v149;
      v385 = v150;
      v152 = sub_1D72647CC();
      LOBYTE(v395) = 0;
      v153 = swift_allocObject();
      *(v153 + 16) = v152;
      *(v153 + 24) = v390;
      *(v153 + 40) = v395;
      v154 = __swift_project_boxed_opaque_existential_1((v151 + *(v392 + 36)), *(v151 + *(v392 + 36) + 24));
      MEMORY[0x1EEE9AC00](v154, v155);
      MEMORY[0x1EEE9AC00](v156, v157);
      *(&v369 - 4) = sub_1D5B4AA6C;
      *(&v369 - 3) = 0;
      v367 = sub_1D6708A60;
      v368 = v147;
      v158 = v382;
      v159 = v394;
      v161 = sub_1D5D2F7A4(v382, sub_1D615B49C, v160, sub_1D615B4A4, (&v369 - 6));
      if (v159)
      {
LABEL_34:
        sub_1D5D2CFE8(v158, type metadata accessor for FormatVersionRequirement);

        goto LABEL_35;
      }

      v163 = v161;

      if (v163)
      {
        v395 = v390;
        LOBYTE(v396) = 0;
        v408 = v144;
        sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
        sub_1D6659C88();
        sub_1D72647EC();
        v164 = v382;
        v165 = v383;
        v166 = v387;
        v167 = v380;
        *&v394 = 0;

        sub_1D5D2CFE8(v164, type metadata accessor for FormatVersionRequirement);
        v92 = v381;
        v64 = v165;
        v145 = v166;
        goto LABEL_42;
      }

      *&v394 = 0;
      sub_1D5D2CFE8(v382, type metadata accessor for FormatVersionRequirement);

      v92 = v381;
      v64 = v383;
      v145 = v387;
    }

    else
    {
      sub_1D5D2CFE8(v382, type metadata accessor for FormatVersionRequirement);
    }

    v167 = v380;
LABEL_42:
    swift_beginAccess();
    v168 = v92[7];
    (v386)(v167, v145, v64);
    swift_storeEnumTagMultiPayload();
    v169 = v384;
    if (v168)
    {
      v385 = v168;
      LOBYTE(v395) = 0;
      v170 = swift_allocObject();
      v390 = xmmword_1D72BAA70;
      *(v170 + 16) = xmmword_1D72BAA70;
      *(v170 + 32) = v395;
      *(v170 + 40) = v169;
      *(v170 + 48) = v378;
      sub_1D5E1B75C(0);
      v172 = v171;
      sub_1D5B58B84(&qword_1EDF02A68, sub_1D5E1B75C);

      v173 = v393;
      *&v389 = v172;
      v174 = sub_1D72647CC();
      LOBYTE(v395) = 0;
      v175 = swift_allocObject();
      *(v175 + 16) = v174;
      *(v175 + 24) = v390;
      *(v175 + 40) = v395;
      v176 = __swift_project_boxed_opaque_existential_1((v173 + *(v392 + 36)), *(v173 + *(v392 + 36) + 24));
      MEMORY[0x1EEE9AC00](v176, v177);
      MEMORY[0x1EEE9AC00](v178, v179);
      *(&v369 - 4) = sub_1D5B4AA6C;
      *(&v369 - 3) = 0;
      v367 = sub_1D6708A60;
      v368 = v170;
      v180 = v394;
      v182 = sub_1D5D2F7A4(v167, sub_1D615B49C, v181, sub_1D615B4A4, (&v369 - 6));
      if (v180)
      {
        sub_1D5D2CFE8(v167, type metadata accessor for FormatVersionRequirement);

        v91 = v393;
        return sub_1D5D2CFE8(v91, sub_1D6690F4C);
      }

      v183 = v182;

      if (v183)
      {
        v395 = v390;
        LOBYTE(v396) = 0;
        v407 = v385;
        sub_1D72647EC();
        v184 = v383;
        v185 = v379;
        *&v394 = 0;
        sub_1D5D2CFE8(v167, type metadata accessor for FormatVersionRequirement);
        v92 = v381;
        v64 = v184;
        goto LABEL_50;
      }

      sub_1D5D2CFE8(v167, type metadata accessor for FormatVersionRequirement);
      *&v394 = 0;
      v92 = v381;
      v64 = v383;
    }

    else
    {
      sub_1D5D2CFE8(v167, type metadata accessor for FormatVersionRequirement);
    }

    v185 = v379;
LABEL_50:
    swift_beginAccess();
    v186 = v92[8];
    sub_1D5EB1500(v186);
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v187 = __swift_project_value_buffer(v64, qword_1EDFFCD50);
    v188 = v377;
    *&v390 = v187;
    v386(v377);
    swift_storeEnumTagMultiPayload();
    if (v186 == 0x8000000000000000)
    {
      sub_1D5D2CFE8(v188, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      LOBYTE(v395) = 0;
      v215 = swift_allocObject();
      v389 = xmmword_1D72BAA80;
      *(v215 + 16) = xmmword_1D72BAA80;
      *(v215 + 32) = v395;
      v216 = v378;
      *(v215 + 40) = v384;
      *(v215 + 48) = v216;
      sub_1D5E1B75C(0);
      v218 = v217;
      v219 = sub_1D5B58B84(&qword_1EDF02A68, sub_1D5E1B75C);

      v220 = v393;
      v382 = v218;
      v380 = v219;
      v221 = sub_1D72647CC();
      LOBYTE(v395) = 0;
      v222 = swift_allocObject();
      *(v222 + 16) = v221;
      *(v222 + 24) = v389;
      *(v222 + 40) = v395;
      v223 = __swift_project_boxed_opaque_existential_1((v220 + *(v392 + 36)), *(v220 + *(v392 + 36) + 24));
      v385 = &v369;
      MEMORY[0x1EEE9AC00](v223, v224);
      MEMORY[0x1EEE9AC00](v225, v226);
      *(&v369 - 4) = sub_1D5B4AA6C;
      *(&v369 - 3) = 0;
      v367 = sub_1D6708A60;
      v368 = v215;
      v227 = v394;
      v229 = sub_1D5D2F7A4(v188, sub_1D615B49C, v228, sub_1D615B4A4, (&v369 - 6));
      if (v227)
      {

        sub_1D5EB15C4(v186);
        sub_1D5D2CFE8(v188, type metadata accessor for FormatVersionRequirement);
        v91 = v220;
        return sub_1D5D2CFE8(v91, sub_1D6690F4C);
      }

      v243 = v229;

      v185 = v379;
      if (v243)
      {
        v395 = v389;
        LOBYTE(v396) = 0;
        v406 = v186;
        sub_1D5DF6A60();
        sub_1D72647EC();
        v244 = v383;
        *&v394 = 0;
        sub_1D5EB15C4(v406);
        sub_1D5D2CFE8(v377, type metadata accessor for FormatVersionRequirement);
        v92 = v381;
        v64 = v244;
      }

      else
      {
        *&v394 = 0;
        sub_1D5EB15C4(v186);
        sub_1D5D2CFE8(v188, type metadata accessor for FormatVersionRequirement);
        v92 = v381;
        v64 = v383;
      }
    }

    swift_beginAccess();
    v189 = *(v92 + 72);
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v190 = __swift_project_value_buffer(v64, qword_1EDFFCD00);
    v191 = v376;
    (v386)(v376, v190, v64);
    swift_storeEnumTagMultiPayload();
    v192 = v394;
    if (v189)
    {
      sub_1D5D2CFE8(v191, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      LOBYTE(v395) = 0;
      v230 = swift_allocObject();
      v389 = xmmword_1D72BAA90;
      *(v230 + 16) = xmmword_1D72BAA90;
      *(v230 + 32) = v395;
      v231 = v378;
      *(v230 + 40) = v384;
      *(v230 + 48) = v231;
      sub_1D5E1B75C(0);
      v233 = v232;
      sub_1D5B58B84(&qword_1EDF02A68, sub_1D5E1B75C);

      v234 = v393;
      v385 = v233;
      v235 = sub_1D72647CC();
      LOBYTE(v395) = 0;
      v236 = swift_allocObject();
      *(v236 + 16) = v235;
      *(v236 + 24) = v389;
      *(v236 + 40) = v395;
      v237 = __swift_project_boxed_opaque_existential_1((v234 + *(v392 + 36)), *(v234 + *(v392 + 36) + 24));
      MEMORY[0x1EEE9AC00](v237, v238);
      MEMORY[0x1EEE9AC00](v239, v240);
      *(&v369 - 4) = sub_1D5B4AA6C;
      *(&v369 - 3) = 0;
      v367 = sub_1D6708A60;
      v368 = v230;
      v242 = sub_1D5D2F7A4(v191, sub_1D615B49C, v241, sub_1D615B4A4, (&v369 - 6));
      if (v192)
      {
        sub_1D5D2CFE8(v191, type metadata accessor for FormatVersionRequirement);

        v91 = v234;
        return sub_1D5D2CFE8(v91, sub_1D6690F4C);
      }

      v245 = v242;

      if (v245)
      {
        v395 = v389;
        LOBYTE(v396) = 0;
        LOBYTE(v405) = 0;
        sub_1D72647EC();
        v192 = 0;
        v185 = v379;
        sub_1D5D2CFE8(v191, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v191, type metadata accessor for FormatVersionRequirement);
        v192 = 0;
        v185 = v379;
      }
    }

    *&v394 = v192;
    v193 = v381;
    v194 = v381[10];
    v195 = v386;
    (v386)(v185, v390, v383);
    swift_storeEnumTagMultiPayload();
    v389 = xmmword_1D72BAAA0;
    v395 = xmmword_1D72BAAA0;
    LOBYTE(v396) = 0;
    LOBYTE(v405) = 0;
    v196 = swift_allocObject();
    v198 = v196;
    *(v196 + 16) = v389;
    *(v196 + 32) = v405;
    v199 = v384;
    v200 = v378;
    *(v196 + 40) = v384;
    *(v196 + 48) = v200;
    v93 = v393;
    if (v194)
    {
      v385 = &v369;
      v405 = v194;
      MEMORY[0x1EEE9AC00](v196, v197);
      *(&v369 - 4) = sub_1D5B4AA6C;
      *(&v369 - 3) = 0;
      v367 = sub_1D6708A60;
      v368 = v198;
      LOBYTE(v403) = 0;
      v201 = swift_allocObject();
      *(v201 + 16) = v389;
      *(v201 + 32) = v403;
      *(v201 + 40) = v199;
      *(v201 + 48) = v200;
      sub_1D5E1B75C(0);
      v203 = v202;
      v204 = sub_1D5B58B84(&qword_1EDF02A68, sub_1D5E1B75C);
      swift_retain_n();

      v382 = v203;
      v380 = v204;
      v205 = sub_1D72647CC();
      LOBYTE(v403) = 0;
      v206 = swift_allocObject();
      *(v206 + 16) = v205;
      *(v206 + 24) = v389;
      *(v206 + 40) = v403;
      v207 = __swift_project_boxed_opaque_existential_1((v93 + *(v392 + 36)), *(v93 + *(v392 + 36) + 24));
      MEMORY[0x1EEE9AC00](v207, v208);
      MEMORY[0x1EEE9AC00](v209, v210);
      *(&v369 - 4) = sub_1D615B4A4;
      *(&v369 - 3) = (&v369 - 6);
      v367 = sub_1D6708A60;
      v368 = v201;
      v211 = v379;
      v212 = v394;
      v214 = sub_1D5D2F7A4(v379, sub_1D615B49C, v213, sub_1D615B4A4, (&v369 - 6));
      *&v394 = v212;
      if (v212)
      {

        v93 = v393;
LABEL_61:
        v118 = v211;
        goto LABEL_15;
      }

      v246 = v214;

      if (v246)
      {
        type metadata accessor for FormatGroupNodeStyle();
        sub_1D5B58B84(&qword_1EDF0F108, type metadata accessor for FormatGroupNodeStyle);
        v93 = v393;
        v247 = v394;
        sub_1D72647EC();
        v248 = v387;
        if (v247)
        {

          v211 = v379;
          goto LABEL_61;
        }

        *&v394 = 0;

        v193 = v381;
        v195 = v386;
        v200 = v378;
        goto LABEL_78;
      }

      v93 = v393;
      v193 = v381;
      v195 = v386;
      v200 = v378;
    }

    else
    {
    }

    v248 = v387;
LABEL_78:

    sub_1D5D2CFE8(v379, type metadata accessor for FormatVersionRequirement);
    swift_beginAccess();
    v249 = v193[11];
    v158 = v375;
    v195(v375, v248, v383);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v395) = 0;
    v250 = swift_allocObject();
    v389 = xmmword_1D72BAAB0;
    *(v250 + 16) = xmmword_1D72BAAB0;
    *(v250 + 32) = v395;
    *(v250 + 40) = v384;
    *(v250 + 48) = v200;
    sub_1D5E1B75C(0);
    v252 = v251;
    v253 = sub_1D5B58B84(&qword_1EDF02A68, sub_1D5E1B75C);

    v385 = v249;

    v382 = v252;
    v254 = sub_1D72647CC();
    LOBYTE(v395) = 0;
    v255 = swift_allocObject();
    *(v255 + 16) = v254;
    *(v255 + 24) = v389;
    *(v255 + 40) = v395;
    v256 = (v93 + *(v392 + 36));
    v257 = __swift_project_boxed_opaque_existential_1(v256, v256[3]);
    *&v392 = &v369;
    MEMORY[0x1EEE9AC00](v257, v258);
    MEMORY[0x1EEE9AC00](v259, v260);
    *(&v369 - 4) = sub_1D5B4AA6C;
    *(&v369 - 3) = 0;
    v367 = sub_1D6708A60;
    v368 = v250;
    v261 = v394;
    v263 = sub_1D5D2F7A4(v158, sub_1D615B49C, v262, sub_1D615B4A4, (&v369 - 6));
    if (v261)
    {
      goto LABEL_34;
    }

    v264 = v385;
    v379 = v256;
    v380 = v253;
    v265 = v263;

    if (v265)
    {
      v395 = v389;
      LOBYTE(v396) = 0;
      v403 = v264;
      sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
      sub_1D66594A0();
      sub_1D72647EC();
      v266 = v383;
      v268 = v374;
      v267 = v375;

      sub_1D5D2CFE8(v267, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v375, type metadata accessor for FormatVersionRequirement);

      v266 = v383;
      v268 = v374;
    }

    v269 = v381[12];
    v270 = *(v381 + 104);
    (v386)(v268, v387, v266);
    swift_storeEnumTagMultiPayload();
    v394 = xmmword_1D72BAAC0;
    v395 = xmmword_1D72BAAC0;
    LOBYTE(v396) = 0;
    LOBYTE(v403) = 0;
    v271 = swift_allocObject();
    v273 = v271;
    *(v271 + 16) = v394;
    *(v271 + 32) = v403;
    v274 = v384;
    v275 = v378;
    *(v271 + 40) = v384;
    *(v271 + 48) = v275;
    if (v270 <= 0xFD)
    {
      *&v392 = &v369;
      v403 = v269;
      v404 = v270;
      MEMORY[0x1EEE9AC00](v271, v272);
      *(&v369 - 4) = sub_1D5B4AA6C;
      *(&v369 - 3) = 0;
      v367 = sub_1D6708A60;
      v368 = v273;
      LOBYTE(v402) = 0;
      v277 = swift_allocObject();
      *(v277 + 16) = v394;
      *(v277 + 32) = v402;
      *(v277 + 40) = v274;
      *(v277 + 48) = v275;
      swift_retain_n();
      v278 = sub_1D72647CC();
      LOBYTE(v402) = 0;
      v279 = swift_allocObject();
      *(v279 + 16) = v278;
      *(v279 + 24) = v394;
      *(v279 + 40) = v402;
      v280 = __swift_project_boxed_opaque_existential_1(v379, v379[3]);
      MEMORY[0x1EEE9AC00](v280, v281);
      MEMORY[0x1EEE9AC00](v282, v283);
      *(&v369 - 4) = sub_1D615B4A4;
      *(&v369 - 3) = (&v369 - 6);
      v268 = v374;
      v367 = sub_1D6708A60;
      v368 = v277;
      LOBYTE(v278) = sub_1D5D2F7A4(v374, sub_1D615B49C, v284, sub_1D615B4A4, (&v369 - 6));

      if (v278)
      {
        sub_1D5F8F434();
        sub_1D72647EC();
      }

      v266 = v383;
      v276 = v387;
    }

    else
    {

      v276 = v387;
    }

    sub_1D5D2CFE8(v268, type metadata accessor for FormatVersionRequirement);

    v285 = v381;
    swift_beginAccess();
    v286 = v285[14];
    v287 = v373;
    (v386)(v373, v276, v266);
    swift_storeEnumTagMultiPayload();
    if (*(v286 + 16))
    {
      LOBYTE(v395) = 0;
      v288 = swift_allocObject();
      v394 = xmmword_1D72BAAD0;
      *(v288 + 16) = xmmword_1D72BAAD0;
      *(v288 + 32) = v395;
      *(v288 + 40) = v384;
      *(v288 + 48) = v378;

      v289 = sub_1D72647CC();
      LOBYTE(v395) = 0;
      v290 = swift_allocObject();
      *(v290 + 16) = v289;
      *(v290 + 24) = v394;
      *(v290 + 40) = v395;
      v291 = __swift_project_boxed_opaque_existential_1(v379, v379[3]);
      MEMORY[0x1EEE9AC00](v291, v292);
      MEMORY[0x1EEE9AC00](v293, v294);
      *(&v369 - 4) = sub_1D5B4AA6C;
      *(&v369 - 3) = 0;
      v367 = sub_1D6708A60;
      v368 = v288;
      LOBYTE(v289) = sub_1D5D2F7A4(v287, sub_1D615B49C, v295, sub_1D615B4A4, (&v369 - 6));

      if (v289)
      {
        sub_1D5E08CAC(v286, v393, 0xA, 0, 0);
      }

      v266 = v383;
    }

    v296 = v381;
    *&v394 = 0;
    sub_1D5D2CFE8(v287, type metadata accessor for FormatVersionRequirement);
    v297 = v296[15];
    v298 = v372;
    v299 = v386;
    (v386)(v372, v390, v266);
    swift_storeEnumTagMultiPayload();
    v392 = xmmword_1D72BAAE0;
    v395 = xmmword_1D72BAAE0;
    LOBYTE(v396) = 0;
    LOBYTE(v402) = 0;
    v300 = swift_allocObject();
    v302 = v300;
    *(v300 + 16) = v392;
    *(v300 + 32) = v402;
    v303 = v384;
    v304 = v378;
    *(v300 + 40) = v384;
    *(v300 + 48) = v304;
    if (v297)
    {
      *&v389 = &v369;
      v402 = v297;
      MEMORY[0x1EEE9AC00](v300, v301);
      *(&v369 - 4) = sub_1D5B4AA6C;
      *(&v369 - 3) = 0;
      v367 = sub_1D6708A60;
      v368 = v302;
      LOBYTE(v400) = 0;
      v305 = swift_allocObject();
      *(v305 + 16) = v392;
      *(v305 + 32) = v400;
      *(v305 + 40) = v303;
      *(v305 + 48) = v304;
      swift_retain_n();

      v306 = sub_1D72647CC();
      LOBYTE(v400) = 0;
      v307 = swift_allocObject();
      *(v307 + 16) = v306;
      *(v307 + 24) = v392;
      *(v307 + 40) = v400;
      v308 = __swift_project_boxed_opaque_existential_1(v379, v379[3]);
      MEMORY[0x1EEE9AC00](v308, v309);
      MEMORY[0x1EEE9AC00](v310, v311);
      *(&v369 - 4) = sub_1D615B4A4;
      *(&v369 - 3) = (&v369 - 6);
      v367 = sub_1D6708A60;
      v368 = v305;
      v312 = v394;
      v314 = sub_1D5D2F7A4(v298, sub_1D615B49C, v313, sub_1D615B4A4, (&v369 - 6));
      *&v394 = v312;
      if (v312)
      {

        v93 = v393;
LABEL_95:
        v118 = v372;
        goto LABEL_15;
      }

      v315 = v314;

      if (v315)
      {
        type metadata accessor for FormatAnimationNodeStyle();
        sub_1D5B58B84(&unk_1EDF0D098, type metadata accessor for FormatAnimationNodeStyle);
        v93 = v393;
        v316 = v394;
        sub_1D72647EC();
        if (v316)
        {

          goto LABEL_95;
        }

        *&v394 = 0;
      }

      v296 = v381;
      v266 = v383;
      v299 = v386;
      v298 = v372;
      v304 = v378;
    }

    else
    {
    }

    sub_1D5D2CFE8(v298, type metadata accessor for FormatVersionRequirement);
    swift_beginAccess();
    v317 = v296[16];
    v318 = v371;
    v299(v371, v390, v266);
    swift_storeEnumTagMultiPayload();
    v392 = xmmword_1D72BAAF0;
    v395 = xmmword_1D72BAAF0;
    LOBYTE(v396) = 0;
    LOBYTE(v400) = 0;
    v319 = swift_allocObject();
    v321 = v319;
    *(v319 + 16) = v392;
    *(v319 + 32) = v400;
    v322 = v384;
    *(v319 + 40) = v384;
    *(v319 + 48) = v304;
    if (v317)
    {
      *&v390 = &v369;
      *&v400 = v317;
      MEMORY[0x1EEE9AC00](v319, v320);
      *(&v369 - 4) = sub_1D5B4AA6C;
      *(&v369 - 3) = 0;
      v367 = sub_1D6708A60;
      v368 = v321;
      v412 = 0;
      v323 = swift_allocObject();
      *(v323 + 16) = v392;
      *(v323 + 32) = v412;
      *(v323 + 40) = v322;
      *(v323 + 48) = v304;
      swift_retain_n();
      swift_retain_n();
      v324 = sub_1D72647CC();
      v412 = 0;
      v325 = swift_allocObject();
      *(v325 + 16) = v324;
      *(v325 + 24) = v392;
      *(v325 + 40) = v412;
      v326 = __swift_project_boxed_opaque_existential_1(v379, v379[3]);
      MEMORY[0x1EEE9AC00](v326, v327);
      MEMORY[0x1EEE9AC00](v328, v329);
      *(&v369 - 4) = sub_1D615B4A4;
      *(&v369 - 3) = (&v369 - 6);
      v367 = sub_1D6708A60;
      v368 = v323;
      v330 = v394;
      v332 = sub_1D5D2F7A4(v318, sub_1D615B49C, v331, sub_1D615B4A4, (&v369 - 6));
      *&v394 = v330;
      if (v330)
      {

LABEL_105:
        v333 = v371;
LABEL_106:
        sub_1D5D2CFE8(v333, type metadata accessor for FormatVersionRequirement);
LABEL_119:
        v91 = v393;
        return sub_1D5D2CFE8(v91, sub_1D6690F4C);
      }

      v334 = v332;

      if (v334)
      {
        type metadata accessor for FormatGroupNodeMask();
        sub_1D5B58B84(&qword_1EDF0FC20, type metadata accessor for FormatGroupNodeMask);
        v335 = v394;
        sub_1D72647EC();
        *&v394 = v335;
        if (v335)
        {

          goto LABEL_105;
        }
      }

      v296 = v381;
      v318 = v371;
    }

    else
    {
    }

    sub_1D5D2CFE8(v318, type metadata accessor for FormatVersionRequirement);
    v336 = v296[17];
    *&v390 = v296[18];
    v338 = v296[19];
    v337 = v296[20];
    v340 = v296[21];
    v339 = v296[22];
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v341 = v383;
    v342 = __swift_project_value_buffer(v383, qword_1EDFFCE38);
    (v386)(v370, v342, v341);
    swift_storeEnumTagMultiPayload();
    v392 = xmmword_1D7282A80;
    v400 = xmmword_1D7282A80;
    v401 = 0;
    LOBYTE(v395) = 0;
    v343 = swift_allocObject();
    v345 = v343;
    *(v343 + 16) = v392;
    *(v343 + 32) = v395;
    v346 = v384;
    v347 = v378;
    *(v343 + 40) = v384;
    *(v343 + 48) = v347;
    if (!v336)
    {

      sub_1D5D2CFE8(v370, type metadata accessor for FormatVersionRequirement);

      goto LABEL_119;
    }

    v391 = &v369;
    *&v395 = v336;
    v348 = v390;
    *(&v395 + 1) = v390;
    v396 = v338;
    v397 = v337;
    v398 = v340;
    v387 = v339;
    v399 = v339;
    MEMORY[0x1EEE9AC00](v343, v344);
    *&v389 = &v369 - 6;
    *(&v369 - 4) = sub_1D5B4AA6C;
    *(&v369 - 3) = 0;
    v367 = sub_1D6708A60;
    v368 = v345;
    v412 = 0;
    v350 = v349;
    v351 = v348;
    v352 = swift_allocObject();
    *(v352 + 16) = v392;
    *(v352 + 32) = v412;
    *(v352 + 40) = v346;
    *(v352 + 48) = v347;
    swift_retain_n();
    sub_1D5EB1D80(v350, v351, v338, v337, v340);
    v353 = sub_1D72647CC();
    v412 = 0;
    v354 = swift_allocObject();
    *(v354 + 16) = v353;
    *(v354 + 24) = v392;
    *(v354 + 40) = v412;
    v355 = __swift_project_boxed_opaque_existential_1(v379, v379[3]);
    MEMORY[0x1EEE9AC00](v355, v356);
    MEMORY[0x1EEE9AC00](v357, v358);
    v359 = v389;
    *(&v369 - 4) = sub_1D615B4A4;
    *(&v369 - 3) = v359;
    v367 = sub_1D6708A60;
    v368 = v352;
    v360 = v394;
    v362 = sub_1D5D2F7A4(v370, sub_1D615B49C, v361, sub_1D615B4A4, (&v369 - 6));
    if (v360)
    {
    }

    else
    {
      v364 = v362;
      *&v394 = 0;

      if ((v364 & 1) == 0 || (sub_1D6659A24(), v365 = v394, sub_1D72647EC(), (*&v394 = v365) == 0))
      {

        v366 = v398;

        sub_1D5CBF568(v366);

        v333 = v370;
        goto LABEL_106;
      }
    }

    v363 = v398;

    sub_1D5CBF568(v363);

    v137 = v370;
LABEL_19:
    sub_1D5D2CFE8(v137, type metadata accessor for FormatVersionRequirement);
LABEL_35:
    v91 = v393;
    return sub_1D5D2CFE8(v91, sub_1D6690F4C);
  }

  sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);

  v91 = v74;
  return sub_1D5D2CFE8(v91, sub_1D6690F4C);
}

uint64_t sub_1D64C7724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6691070(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64C775C(uint64_t a1)
{
  v2 = sub_1D5CC8C30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64C7798(uint64_t a1)
{
  v2 = sub_1D5CC8C30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatGroupNodeMask.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v111 = v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v115 = v109 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  *&v119 = v109 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v109 - v16;
  sub_1D6691B50();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D6691C78();
  v26 = v25;
  v27 = sub_1D5B58B84(&qword_1EDF254E8, sub_1D6691C78);
  sub_1D5D2EE70(v4, v26, v28, v23, v4, v26, &type metadata for FormatVersions.StarSky, v24, v22, v27, &off_1F51F6CD8);
  v124 = v2;
  v29 = v2[2];
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v30 = sub_1D725BD1C();
  v31 = __swift_project_value_buffer(v30, qword_1EDFFCD50);
  v32 = *(v30 - 8);
  v122 = *(v32 + 16);
  v123 = v31;
  v121 = v32 + 16;
  v122(v17);
  v120 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v131 = 0uLL;
  v132 = 0;
  v33 = &v22[*(v19 + 44)];
  v34 = *v33;
  v35 = *(v33 + 1);
  LOBYTE(v129) = 0;
  v36 = swift_allocObject();
  v38 = v36;
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = v129;
  *(v36 + 40) = v34;
  *(v36 + 48) = v35;
  v126 = v22;
  v114 = v35;
  v117 = v30;
  v116 = v34;
  if (!v29)
  {

    goto LABEL_8;
  }

  v113 = v109;
  *&v129 = v29;
  MEMORY[0x1EEE9AC00](v36, v37);
  *&v118 = &v109[-6];
  v109[-4] = sub_1D5B4AA6C;
  v109[-3] = 0;
  v107 = sub_1D6708A64;
  v108 = v38;
  LOBYTE(v127) = 0;
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  *(v39 + 32) = v127;
  *(v39 + 40) = v34;
  *(v39 + 48) = v35;
  sub_1D6691BE4();
  v41 = v40;
  sub_1D5B58B84(&qword_1EDF03528, sub_1D6691BE4);
  swift_retain_n();

  v109[1] = v41;
  v42 = sub_1D72647CC();
  LOBYTE(v127) = 0;
  v43 = swift_allocObject();
  v112 = v29;
  *(v43 + 24) = 0;
  *(v43 + 32) = 0;
  *(v43 + 16) = v42;
  *(v43 + 40) = v127;
  v44 = __swift_project_boxed_opaque_existential_1(&v22[*(v19 + 36)], *&v22[*(v19 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v44, v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  v48 = v118;
  v109[-4] = sub_1D615B4A4;
  v109[-3] = v48;
  v107 = sub_1D6708A64;
  v108 = v39;
  *&v118 = v17;
  v49 = v125;
  sub_1D5D2F7A4(v17, sub_1D615B49C, v50, sub_1D615B4A4, &v109[-6]);
  if (!v49)
  {

    type metadata accessor for FormatGroupNodeMaskStyle();
    sub_1D5B58B84(&qword_1EDF0CF48, type metadata accessor for FormatGroupNodeMaskStyle);
    sub_1D72647EC();
    *&v125 = 0;

    v35 = v114;
    v30 = v117;
    v34 = v116;
    v17 = v118;
LABEL_8:
    v110 = v19;

    sub_1D5D2CFE8(v17, type metadata accessor for FormatVersionRequirement);
    v53 = v124[3];
    v54 = v119;
    (v122)(v119, v123, v30);
    swift_storeEnumTagMultiPayload();
    v118 = xmmword_1D728CF30;
    v131 = xmmword_1D728CF30;
    v132 = 0;
    LOBYTE(v129) = 0;
    v55 = swift_allocObject();
    v57 = v55;
    *(v55 + 16) = v118;
    *(v55 + 32) = v129;
    *(v55 + 40) = v34;
    *(v55 + 48) = v35;
    if (v53)
    {
      v113 = v109;
      *&v129 = v53;
      MEMORY[0x1EEE9AC00](v55, v56);
      v109[-4] = sub_1D5B4AA6C;
      v109[-3] = 0;
      v107 = sub_1D6708A64;
      v108 = v57;
      LOBYTE(v127) = 0;
      v58 = swift_allocObject();
      *(v58 + 16) = v118;
      *(v58 + 32) = v127;
      *(v58 + 40) = v34;
      *(v58 + 48) = v35;
      sub_1D6691BE4();
      v60 = v59;
      sub_1D5B58B84(&qword_1EDF03528, sub_1D6691BE4);
      swift_retain_n();

      v61 = v126;
      v112 = v60;
      v62 = sub_1D72647CC();
      LOBYTE(v127) = 0;
      v63 = swift_allocObject();
      *(v63 + 16) = v62;
      *(v63 + 24) = v118;
      *(v63 + 40) = v127;
      v64 = __swift_project_boxed_opaque_existential_1((v61 + *(v110 + 36)), *(v61 + *(v110 + 36) + 24));
      MEMORY[0x1EEE9AC00](v64, v65);
      MEMORY[0x1EEE9AC00](v66, v67);
      v109[-4] = sub_1D615B4A4;
      v109[-3] = &v109[-6];
      v107 = sub_1D6708A64;
      v108 = v58;
      v68 = v125;
      v70 = sub_1D5D2F7A4(v54, sub_1D615B49C, v69, sub_1D615B4A4, &v109[-6]);
      if (v68)
      {

        v71 = v126;
        v72 = v119;
LABEL_26:
        sub_1D5D2CFE8(v72, type metadata accessor for FormatVersionRequirement);
LABEL_27:
        v52 = v71;
        return sub_1D5D2CFE8(v52, sub_1D6691B50);
      }

      v73 = v70;

      if (v73)
      {
        type metadata accessor for FormatAnimationNodeStyle();
        sub_1D5B58B84(&unk_1EDF0D098, type metadata accessor for FormatAnimationNodeStyle);
        v71 = v126;
        sub_1D72647EC();
        *&v125 = 0;
      }

      else
      {
        *&v125 = 0;

        v71 = v126;
      }

      v35 = v114;
      v30 = v117;
      v34 = v116;
      v54 = v119;
    }

    else
    {

      v71 = v126;
    }

    sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);
    v74 = v124;
    swift_beginAccess();
    v75 = v74[4];
    v76 = v115;
    (v122)(v115, v123, v30);
    swift_storeEnumTagMultiPayload();
    if (((v75 >> 59) & 0x1E | (v75 >> 2) & 1) == 0x16 && v75 == 0xB000000000000000)
    {
      sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);
      v77 = v125;
      v78 = v111;
    }

    else
    {
      LOBYTE(v129) = 0;
      v92 = swift_allocObject();
      v119 = xmmword_1D7297410;
      *(v92 + 16) = xmmword_1D7297410;
      *(v92 + 32) = v129;
      *(v92 + 40) = v34;
      *(v92 + 48) = v35;

      sub_1D5C82CD8(v75);
      sub_1D6691BE4();
      sub_1D5B58B84(&qword_1EDF03528, sub_1D6691BE4);
      v93 = sub_1D72647CC();
      LOBYTE(v129) = 0;
      v94 = swift_allocObject();
      *(v94 + 16) = v93;
      *(v94 + 24) = v119;
      *(v94 + 40) = v129;
      v95 = __swift_project_boxed_opaque_existential_1((v71 + *(v110 + 36)), *(v71 + *(v110 + 36) + 24));
      MEMORY[0x1EEE9AC00](v95, v96);
      MEMORY[0x1EEE9AC00](v97, v98);
      v109[-4] = sub_1D5B4AA6C;
      v109[-3] = 0;
      v107 = sub_1D6691DF8;
      v108 = v92;
      v99 = v125;
      v101 = sub_1D5D2F7A4(v76, sub_1D615B49C, v100, sub_1D615B4A4, &v109[-6]);
      if (v99)
      {

        sub_1D5C92A8C(v75);
        sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);
        return sub_1D5D2CFE8(v126, sub_1D6691B50);
      }

      v103 = v126;
      v104 = v101;

      if (v104)
      {
        v129 = v119;
        v130 = 0;
        *&v127 = v75;
        sub_1D5CA1E90();
        sub_1D72647EC();
        v77 = 0;
        sub_1D5C92A8C(v127);
        sub_1D5D2CFE8(v115, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5C92A8C(v75);
        sub_1D5D2CFE8(v115, type metadata accessor for FormatVersionRequirement);
        v77 = 0;
      }

      v78 = v111;
      v35 = v114;
      v71 = v103;
    }

    v79 = v124;
    swift_beginAccess();
    v80 = v79[5];
    (v122)(v78, v123, v117);
    swift_storeEnumTagMultiPayload();
    if (!*(v80 + 16))
    {
      v72 = v78;
      goto LABEL_26;
    }

    LOBYTE(v127) = 0;
    v81 = swift_allocObject();
    v125 = xmmword_1D72BAA60;
    *(v81 + 16) = xmmword_1D72BAA60;
    *(v81 + 32) = v127;
    *(v81 + 40) = v116;
    *(v81 + 48) = v35;
    sub_1D6691BE4();
    v83 = v82;
    sub_1D5B58B84(&qword_1EDF03528, sub_1D6691BE4);

    v124 = v83;
    v84 = sub_1D72647CC();
    LOBYTE(v127) = 0;
    v85 = swift_allocObject();
    *(v85 + 16) = v84;
    *(v85 + 24) = v125;
    *(v85 + 40) = v127;
    v86 = __swift_project_boxed_opaque_existential_1((v71 + *(v110 + 36)), *(v71 + *(v110 + 36) + 24));
    MEMORY[0x1EEE9AC00](v86, v87);
    MEMORY[0x1EEE9AC00](v88, v89);
    v109[-4] = sub_1D5B4AA6C;
    v109[-3] = 0;
    v107 = sub_1D6708A64;
    v108 = v81;
    v91 = sub_1D5D2F7A4(v78, sub_1D615B49C, v90, sub_1D615B4A4, &v109[-6]);
    if (!v77)
    {
      v105 = v91;
      v106 = v126;

      if (v105)
      {
        v127 = v125;
        v128 = 0;
        v133 = v80;
        sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
        sub_1D6659C88();
        sub_1D72647EC();

        sub_1D5D2CFE8(v111, type metadata accessor for FormatVersionRequirement);
        v52 = v106;
        return sub_1D5D2CFE8(v52, sub_1D6691B50);
      }

      sub_1D5D2CFE8(v111, type metadata accessor for FormatVersionRequirement);

      v71 = v106;
      goto LABEL_27;
    }

    sub_1D5D2CFE8(v78, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v126, sub_1D6691B50);
  }

  v51 = v126;
  sub_1D5D2CFE8(v118, type metadata accessor for FormatVersionRequirement);
  v52 = v51;
  return sub_1D5D2CFE8(v52, sub_1D6691B50);
}

uint64_t sub_1D64C8A48()
{
  v1 = *v0;
  v2 = 0x656C797473;
  v3 = 1702521203;
  v4 = 0x656D7473756A6461;
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
    v2 = 0x6F6974616D696E61;
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

uint64_t sub_1D64C8ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6691E74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64C8B14(uint64_t a1)
{
  v2 = sub_1D6691D50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64C8B50(uint64_t a1)
{
  v2 = sub_1D6691D50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D64C8B98()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64C8C60()
{
  sub_1D72621EC();
}

uint64_t sub_1D64C8D14()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64C8DD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D66642A0();
  *a1 = result;
  return result;
}

void sub_1D64C8E08(uint64_t *a1@<X8>)
{
  v2 = 0xEC00000073756964;
  v3 = 0x615272656E726F63;
  v4 = 0xE400000000000000;
  v5 = 1818326639;
  if (*v1 != 2)
  {
    v5 = 0x746E656964617267;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x61507265697A6562;
    v2 = 0xEA00000000006874;
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

uint64_t FormatGroupNodeMaskStyle.encode(to:)(void *a1)
{
  v3 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  *&v192 = &v171 - v6;
  v7 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v176 = &v171 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v177 = &v171 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v178 = &v171 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v179 = &v171 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  *&v191 = &v171 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v171 - v24;
  sub_1D66927C0();
  v189 = v26;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v171 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_1D66928E8();
  v33 = v32;
  v34 = sub_1D5B58B84(&qword_1EDF25128, sub_1D66928E8);
  v190 = v29;
  sub_1D5D2EE70(v3, v33, v35, v30, v3, v33, &type metadata for FormatVersions.StarSky, v31, v29, v34, &off_1F51F6CD8);
  swift_beginAccess();
  v188 = v1;
  v36 = v1[2];
  v37 = v188[3];
  v38 = qword_1EDF31ED0;

  if (v38 != -1)
  {
    swift_once();
  }

  v39 = sub_1D725BD1C();
  v40 = __swift_project_value_buffer(v39, qword_1EDFFCD50);
  v41 = *(v39 - 8);
  v42 = *(v41 + 16);
  v43 = v41 + 16;
  v42(v25, v40, v39);
  v187 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v44 = v192;
  v183 = v36;
  sub_1D725892C();
  v45 = sub_1D725895C();
  v46 = (*(*(v45 - 8) + 48))(v44, 1, v45);
  v180 = v39;
  v185 = v42;
  v186 = v40;
  v184 = v43;
  if (v46 != 1)
  {
    sub_1D5D2CFE8(v25, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v192, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v66 = v190;
    v67 = v188;
    goto LABEL_13;
  }

  v182 = v37;
  sub_1D5D35558(v192, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v47 = v189;
  v48 = v190;
  v49 = &v190[*(v189 + 11)];
  v50 = v25;
  v52 = *v49;
  v51 = *(v49 + 1);
  LOBYTE(v208) = 0;
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  *(v53 + 24) = 0;
  *(v53 + 32) = v208;
  *(v53 + 40) = v52;
  *(v53 + 48) = v51;
  sub_1D6692854();
  v55 = v54;
  sub_1D5B58B84(&qword_1EDF030B8, sub_1D6692854);

  *&v192 = v55;
  v56 = sub_1D72647CC();
  LOBYTE(v208) = 0;
  v57 = swift_allocObject();
  *(v57 + 24) = 0;
  *(v57 + 32) = 0;
  *(v57 + 16) = v56;
  *(v57 + 40) = v208;
  v58 = __swift_project_boxed_opaque_existential_1((v48 + *(v47 + 9)), *(v48 + *(v47 + 9) + 24));
  MEMORY[0x1EEE9AC00](v58, v59);
  MEMORY[0x1EEE9AC00](v60, v61);
  *(&v171 - 4) = sub_1D5B4AA6C;
  *(&v171 - 3) = 0;
  v169 = sub_1D6692A68;
  v170 = v53;
  v62 = v193;
  v64 = sub_1D5D2F7A4(v50, sub_1D615B49C, v63, sub_1D615B4A4, (&v171 - 6));
  *&v193 = v62;
  if (v62)
  {
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v48, sub_1D66927C0);
  }

  v68 = v64;

  if ((v68 & 1) == 0)
  {
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

    v66 = v190;
    v67 = v188;
LABEL_12:
    v39 = v180;
    v42 = v185;
    v40 = v186;
LABEL_13:
    v72 = v67[4];
    v71 = v67[5];
    v42(v191, v40, v39);
    swift_storeEnumTagMultiPayload();
    *&v200 = v72;
    *(&v200 + 1) = v71;
    v192 = xmmword_1D728CF30;
    v208 = xmmword_1D728CF30;
    LOBYTE(v209) = 0;
    v73 = v189;
    v74 = (v66 + *(v189 + 11));
    v76 = *v74;
    v75 = v74[1];
    LOBYTE(v194) = 0;
    v77 = swift_allocObject();
    v183 = &v171;
    *(v77 + 16) = v192;
    *(v77 + 32) = v194;
    *(v77 + 40) = v76;
    *(v77 + 48) = v75;
    MEMORY[0x1EEE9AC00](v77, v78);
    v181 = &v171 - 6;
    v182 = v79;
    *(&v171 - 4) = sub_1D5B4AA6C;
    *(&v171 - 3) = 0;
    v169 = sub_1D6708A68;
    v170 = v79;
    LOBYTE(v194) = 0;
    v80 = swift_allocObject();
    *(v80 + 16) = v192;
    *(v80 + 32) = v194;
    v173 = v76;
    *(v80 + 40) = v76;
    *(v80 + 48) = v75;
    sub_1D6692854();
    v82 = v81;
    v83 = sub_1D5B58B84(&qword_1EDF030B8, sub_1D6692854);
    v172 = v75;
    swift_retain_n();
    v174 = v83;
    v175 = v82;
    v84 = sub_1D72647CC();
    LOBYTE(v194) = 0;
    v85 = swift_allocObject();
    *(v85 + 16) = v84;
    *(v85 + 24) = v192;
    *(v85 + 40) = v194;
    v86 = (v66 + *(v73 + 9));
    v87 = __swift_project_boxed_opaque_existential_1(v86, v86[3]);
    MEMORY[0x1EEE9AC00](v87, v88);
    MEMORY[0x1EEE9AC00](v89, v90);
    v91 = v181;
    *(&v171 - 4) = sub_1D615B4A4;
    *(&v171 - 3) = v91;
    v169 = sub_1D6708A68;
    v170 = v80;
    v92 = v191;
    v93 = v193;
    sub_1D5D2BC70(v191, sub_1D615B49C, v94, sub_1D615B4A4, (&v171 - 6));
    if (v93)
    {
      sub_1D5D2CFE8(v92, type metadata accessor for FormatVersionRequirement);

      v95 = v66;
LABEL_16:
      v70 = v95;
      return sub_1D5D2CFE8(v70, sub_1D66927C0);
    }

    *&v192 = v86;

    sub_1D72647EC();
    v95 = v66;
    sub_1D5D2CFE8(v191, type metadata accessor for FormatVersionRequirement);

    v96 = v188;
    swift_beginAccess();
    v97 = v96[6];
    v99 = v179;
    v98 = v180;
    v185(v179, v186, v180);
    swift_storeEnumTagMultiPayload();
    if (*(v97 + 16))
    {
      LOBYTE(v208) = 0;
      v100 = swift_allocObject();
      v193 = xmmword_1D7297410;
      *(v100 + 16) = xmmword_1D7297410;
      *(v100 + 32) = v208;
      *(v100 + 40) = v173;
      *(v100 + 48) = v172;

      v101 = sub_1D72647CC();
      LOBYTE(v208) = 0;
      v102 = swift_allocObject();
      *(v102 + 16) = v101;
      *(v102 + 24) = v193;
      *(v102 + 40) = v208;
      v103 = __swift_project_boxed_opaque_existential_1(v192, *(v192 + 24));
      MEMORY[0x1EEE9AC00](v103, v104);
      MEMORY[0x1EEE9AC00](v105, v106);
      *(&v171 - 4) = sub_1D5B4AA6C;
      *(&v171 - 3) = 0;
      v169 = sub_1D6708A68;
      v170 = v100;
      v108 = sub_1D5D2F7A4(v99, sub_1D615B49C, v107, sub_1D615B4A4, (&v171 - 6));
      v109 = v108;

      if (v109)
      {
        v208 = v193;
        LOBYTE(v209) = 0;
        *&v200 = v97;
        sub_1D5C34D84(0, &qword_1EDF04D20, &type metadata for FormatGroupNodeMaskStyle.Selector, MEMORY[0x1E69E62F8]);
        sub_1D6692AE4();
        v95 = v190;
        sub_1D72647EC();
        v96 = v188;
        v110 = v179;
        v98 = v180;

        sub_1D5D2CFE8(v110, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v179, type metadata accessor for FormatVersionRequirement);

        v95 = v190;
        v96 = v188;
        v98 = v180;
      }
    }

    else
    {
      sub_1D5D2CFE8(v99, type metadata accessor for FormatVersionRequirement);
    }

    v111 = *(v96 + 9);
    v112 = *(v96 + 13);
    v218 = *(v96 + 11);
    v219 = v112;
    v220 = *(v96 + 120);
    v216 = *(v96 + 7);
    v217 = v111;
    v113 = v178;
    v185(v178, v186, v98);
    swift_storeEnumTagMultiPayload();
    v193 = xmmword_1D72BAA60;
    v194 = xmmword_1D72BAA60;
    LOBYTE(v195) = 0;
    LOBYTE(v208) = 0;
    v114 = swift_allocObject();
    v116 = v114;
    *(v114 + 16) = v193;
    *(v114 + 32) = v208;
    v117 = v172;
    v118 = v173;
    *(v114 + 40) = v173;
    *(v114 + 48) = v117;
    if (v220 == 255)
    {
      *&v193 = 0;

      sub_1D5D2CFE8(v113, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      *&v191 = &v171;
      v210 = v218;
      v211 = v219;
      LOBYTE(v212) = v220;
      v208 = v216;
      v209 = v217;
      MEMORY[0x1EEE9AC00](v114, v115);
      v189 = &v171 - 6;
      *(&v171 - 4) = sub_1D5B4AA6C;
      *(&v171 - 3) = 0;
      v169 = sub_1D6708A68;
      v170 = v116;
      LOBYTE(v200) = 0;
      v119 = swift_allocObject();
      *(v119 + 16) = v193;
      *(v119 + 32) = v200;
      *(v119 + 40) = v118;
      *(v119 + 48) = v117;
      swift_retain_n();
      sub_1D5D355B8(&v216, &v200, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath, MEMORY[0x1E69E6720], sub_1D5C34D84);
      v120 = sub_1D72647CC();
      LOBYTE(v200) = 0;
      v121 = swift_allocObject();
      *(v121 + 16) = v120;
      *(v121 + 24) = v193;
      *(v121 + 40) = v200;
      v122 = __swift_project_boxed_opaque_existential_1(v192, *(v192 + 24));
      MEMORY[0x1EEE9AC00](v122, v123);
      MEMORY[0x1EEE9AC00](v124, v125);
      v126 = v189;
      *(&v171 - 4) = sub_1D615B4A4;
      *(&v171 - 3) = v126;
      v127 = v178;
      v169 = sub_1D6708A68;
      v170 = v119;
      v129 = sub_1D5D2F7A4(v178, sub_1D615B49C, v128, sub_1D615B4A4, (&v171 - 6));
      v130 = v129;

      if (v130)
      {
        sub_1D61984E8();
        v95 = v190;
        sub_1D72647EC();
        v98 = v180;
        *&v193 = 0;

        v202 = v210;
        v203 = v211;
        LOBYTE(v204) = v212;
        v200 = v208;
        v201 = v209;
        sub_1D61992B0(&v200);
        sub_1D5D2CFE8(v127, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        *&v193 = 0;

        v202 = v210;
        v203 = v211;
        LOBYTE(v204) = v212;
        v200 = v208;
        v201 = v209;
        sub_1D61992B0(&v200);
        sub_1D5D2CFE8(v127, type metadata accessor for FormatVersionRequirement);
        v95 = v190;
        v98 = v180;
      }

      v117 = v172;
    }

    v131 = v96[16];
    v132 = v177;
    v185(v177, v186, v98);
    swift_storeEnumTagMultiPayload();
    v191 = xmmword_1D72BAA70;
    v214 = xmmword_1D72BAA70;
    v215 = 0;
    LOBYTE(v208) = 0;
    v133 = swift_allocObject();
    v135 = v133;
    *(v133 + 16) = v191;
    *(v133 + 32) = v208;
    v136 = v173;
    *(v133 + 40) = v173;
    *(v133 + 48) = v117;
    if (v131)
    {
      v189 = &v171;
      v221 = v131;
      MEMORY[0x1EEE9AC00](v133, v134);
      v183 = &v171 - 6;
      *(&v171 - 4) = sub_1D5B4AA6C;
      *(&v171 - 3) = 0;
      v169 = sub_1D6708A68;
      v170 = v135;
      LOBYTE(v208) = 0;
      v137 = swift_allocObject();
      *(v137 + 16) = v191;
      *(v137 + 32) = v208;
      *(v137 + 40) = v136;
      *(v137 + 48) = v117;
      swift_retain_n();

      v138 = sub_1D72647CC();
      LOBYTE(v208) = 0;
      v139 = swift_allocObject();
      *(v139 + 16) = v138;
      *(v139 + 24) = v191;
      *(v139 + 40) = v208;
      v140 = __swift_project_boxed_opaque_existential_1(v192, *(v192 + 24));
      MEMORY[0x1EEE9AC00](v140, v141);
      MEMORY[0x1EEE9AC00](v142, v143);
      v144 = v183;
      *(&v171 - 4) = sub_1D615B4A4;
      *(&v171 - 3) = v144;
      v169 = sub_1D6708A68;
      v170 = v137;
      v145 = v193;
      v147 = sub_1D5D2F7A4(v177, sub_1D615B49C, v146, sub_1D615B4A4, (&v171 - 6));
      v148 = v145;
      if (v145)
      {

        v95 = v190;
        v149 = v177;
LABEL_43:
        sub_1D5D2CFE8(v149, type metadata accessor for FormatVersionRequirement);
        goto LABEL_16;
      }

      v150 = v147;

      if (v150)
      {
        sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
        sub_1D66612AC();
        v95 = v190;
        sub_1D72647EC();
        v98 = v180;
        v117 = v172;

        sub_1D5D2CFE8(v177, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v177, type metadata accessor for FormatVersionRequirement);
        v95 = v190;
        v98 = v180;
        v117 = v172;
      }
    }

    else
    {

      sub_1D5D2CFE8(v132, type metadata accessor for FormatVersionRequirement);

      v148 = v193;
    }

    v151 = *(v96 + 23);
    v210 = *(v96 + 21);
    v211 = v151;
    v212 = *(v96 + 25);
    v213 = *(v96 + 216);
    v152 = *(v96 + 19);
    v208 = *(v96 + 17);
    v209 = v152;
    v153 = v176;
    v185(v176, v186, v98);
    swift_storeEnumTagMultiPayload();
    v193 = xmmword_1D72BAA80;
    v206 = xmmword_1D72BAA80;
    v207 = 0;
    LOBYTE(v200) = 0;
    v154 = swift_allocObject();
    v156 = v154;
    *(v154 + 16) = v193;
    *(v154 + 32) = v200;
    v157 = v173;
    *(v154 + 40) = v173;
    *(v154 + 48) = v117;
    if (v213 == 254)
    {
    }

    else
    {
      *&v191 = &v171;
      v202 = v210;
      v203 = v211;
      v204 = v212;
      v205 = v213;
      v200 = v208;
      v201 = v209;
      MEMORY[0x1EEE9AC00](v154, v155);
      v189 = &v171 - 6;
      *(&v171 - 4) = sub_1D5B4AA6C;
      *(&v171 - 3) = 0;
      v169 = sub_1D6708A68;
      v170 = v156;
      LOBYTE(v194) = 0;
      v158 = swift_allocObject();
      *(v158 + 16) = v193;
      *(v158 + 32) = v194;
      *(v158 + 40) = v157;
      *(v158 + 48) = v117;
      swift_retain_n();
      sub_1D5D355B8(&v208, &v194, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
      v159 = sub_1D72647CC();
      LOBYTE(v194) = 0;
      v160 = swift_allocObject();
      *(v160 + 16) = v159;
      *(v160 + 24) = v193;
      *(v160 + 40) = v194;
      v161 = __swift_project_boxed_opaque_existential_1(v192, *(v192 + 24));
      MEMORY[0x1EEE9AC00](v161, v162);
      MEMORY[0x1EEE9AC00](v163, v164);
      v165 = v189;
      *(&v171 - 4) = sub_1D615B4A4;
      *(&v171 - 3) = v165;
      v169 = sub_1D6708A68;
      v170 = v158;
      v167 = sub_1D5D2F7A4(v153, sub_1D615B49C, v166, sub_1D615B4A4, (&v171 - 6));
      if (v148)
      {

        v196 = v202;
        v197 = v203;
        v198 = v204;
        v199 = v205;
        v194 = v200;
        v195 = v201;
        sub_1D601144C(&v194);
        v95 = v190;
        v149 = v176;
        goto LABEL_43;
      }

      v168 = v167;

      if (v168)
      {
        sub_1D6661204();
        v95 = v190;
        sub_1D72647EC();

        v196 = v202;
        v197 = v203;
        v198 = v204;
        v199 = v205;
        v194 = v200;
        v195 = v201;
        sub_1D601144C(&v194);
      }

      else
      {

        v196 = v202;
        v197 = v203;
        v198 = v204;
        v199 = v205;
        v194 = v200;
        v195 = v201;
        sub_1D601144C(&v194);
        v95 = v190;
      }

      v153 = v176;
    }

    sub_1D5D2CFE8(v153, type metadata accessor for FormatVersionRequirement);
    goto LABEL_16;
  }

  v208 = 0uLL;
  LOBYTE(v209) = 0;
  *&v200 = v183;
  *(&v200 + 1) = v182;
  v66 = v190;
  v69 = v193;
  sub_1D72647EC();

  sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
  v67 = v188;
  if (!v69)
  {
    *&v193 = 0;
    goto LABEL_12;
  }

  v70 = v66;
  return sub_1D5D2CFE8(v70, sub_1D66927C0);
}

uint64_t sub_1D64CAA3C()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x776F64616873;
  if (v1 != 5)
  {
    v3 = 1885433183;
  }

  v4 = 1752457584;
  if (v1 != 3)
  {
    v4 = 0x73726564726F62;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7373616C63;
  if (v1 != 1)
  {
    v5 = 0x726F7463656C6573;
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

uint64_t sub_1D64CAB04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66932B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64CAB3C(uint64_t a1)
{
  v2 = sub_1D66929C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64CAB78(uint64_t a1)
{
  v2 = sub_1D66929C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatGroupNodeMaskStyle.Selector.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v34 = a2;
  sub_1D6692BD4();
  v6 = v5;
  v56 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6692C68();
  sub_1D5B58B84(&qword_1EDF25118, sub_1D6692C68);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    v29 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v10 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v11 = sub_1D7264AFC();
  LOBYTE(v10) = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v12 = v56;
  v13 = v6;
  v14 = v9;
  if (v10)
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

      v21 = *(v17 - 2);
      v20 = *(v17 - 1);

      v22 = sub_1D661C43C();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v12 + 8))(v14, v6);
      a1 = v33;
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C36978();
  v38 = 0uLL;
  LOBYTE(v39) = 0;
  sub_1D726431C();
  v19 = *(&v51 + 1);
  v18 = v51;
  v49 = xmmword_1D728CF30;
  v50 = 0;
  sub_1D6198494();
  sub_1D726427C();
  v46 = v53;
  v47 = v54;
  v48 = v55;
  v44 = v51;
  v45 = v52;
  sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
  v38 = xmmword_1D7297410;
  LOBYTE(v39) = 0;
  sub_1D5C34DD4();
  sub_1D726427C();
  v32 = v36;
  v36 = xmmword_1D72BAA60;
  v37 = 0;
  sub_1D5C34EC4();
  sub_1D726427C();
  (*(v12 + 8))(v9, v13);
  v25 = v18;
  v26 = v34;
  *v34 = __PAIR128__(v19, v25);
  v27 = v47;
  v26[3] = v46;
  v26[4] = v27;
  *(v26 + 80) = v48;
  v28 = v45;
  v26[1] = v44;
  v26[2] = v28;
  *(v26 + 81) = *v35;
  *(v26 + 21) = *&v35[3];
  v29 = v33;
  *(v26 + 11) = v32;
  v30 = v39;
  v26[6] = v38;
  v26[7] = v30;
  *(v26 + 176) = v43;
  v31 = v42;
  v26[9] = v41;
  v26[10] = v31;
  v26[8] = v40;
  return __swift_destroy_boxed_opaque_existential_1(v29);
}

uint64_t FormatGroupNodeMaskStyle.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v118 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v120 = &v116 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v121 = &v116 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v116 - v14);
  sub_1D6692DE8();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v1;
  *&v132 = v1[1];
  v22 = *(v1 + 4);
  v157 = *(v1 + 3);
  v158 = v22;
  v159 = *(v1 + 80);
  v23 = *(v1 + 2);
  v155 = *(v1 + 1);
  v156 = v23;
  v119 = v1[11];
  v165 = *(v1 + 176);
  v24 = *(v1 + 10);
  v163 = *(v1 + 9);
  v164 = v24;
  v25 = *(v1 + 8);
  v161 = *(v1 + 7);
  v162 = v25;
  v160 = *(v1 + 6);
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1D6692C68();
  v29 = v28;
  v30 = sub_1D5B58B84(&qword_1EDF25118, sub_1D6692C68);
  sub_1D5D2EE70(&type metadata for FormatGroupNodeMaskStyle.Selector, v29, v31, v26, &type metadata for FormatGroupNodeMaskStyle.Selector, v29, &type metadata for FormatVersions.StarSky, v27, v20, v30, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v32 = sub_1D725BD1C();
  v33 = __swift_project_value_buffer(v32, qword_1EDFFCD50);
  v34 = *(v32 - 8);
  v35 = *(v34 + 16);
  v123 = v33;
  v124 = v32;
  v126 = v35;
  v128 = v34 + 16;
  (v35)(v15);
  v127 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v153 = v21;
  v154 = v132;
  v150 = 0;
  v151 = 0;
  v152 = 0;
  v36 = &v20[*(v17 + 44)];
  v37 = *v36;
  v38 = *(v36 + 1);
  v131 = v15;
  LOBYTE(v140) = 0;
  v39 = swift_allocObject();
  *&v132 = &v116;
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  *(v39 + 32) = v140;
  *(v39 + 40) = v37;
  *(v39 + 48) = v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  *(&v116 - 4) = sub_1D5B4AA6C;
  *(&v116 - 3) = 0;
  v114 = sub_1D6708A6C;
  v115 = v41;
  LOBYTE(v140) = 0;
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  *(v42 + 32) = v140;
  v125 = v37;
  *(v42 + 40) = v37;
  *(v42 + 48) = v38;
  sub_1D6692E7C();
  v44 = v43;
  v45 = sub_1D5B58B84(&qword_1EDF030A8, sub_1D6692E7C);
  v122 = v38;
  swift_retain_n();
  v129 = v44;
  v130 = v45;
  v46 = sub_1D72647CC();
  LOBYTE(v140) = 0;
  v47 = swift_allocObject();
  *(v47 + 24) = 0;
  *(v47 + 32) = 0;
  *(v47 + 16) = v46;
  *(v47 + 40) = v140;
  v48 = v20;
  v49 = &v20[*(v17 + 36)];
  v50 = __swift_project_boxed_opaque_existential_1(v49, *(v49 + 3));
  MEMORY[0x1EEE9AC00](v50, v51);
  MEMORY[0x1EEE9AC00](v52, v53);
  *(&v116 - 4) = sub_1D615B4A4;
  *(&v116 - 3) = (&v116 - 6);
  v114 = sub_1D6708A6C;
  v115 = v42;
  v54 = v131;
  v55 = v133;
  sub_1D5D2BC70(v131, sub_1D615B49C, v56, sub_1D615B4A4, (&v116 - 6));
  if (v55)
  {
    sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v48, sub_1D6692DE8);
  }

  v117 = v49;

  sub_1D5D3E60C();
  sub_1D72647EC();
  v133 = 0;
  v116 = v48;
  sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);

  v58 = v121;
  v59 = v123;
  v60 = v124;
  v61 = v126;
  v126(v121, v123, v124);
  swift_storeEnumTagMultiPayload();
  v132 = xmmword_1D728CF30;
  v148 = xmmword_1D728CF30;
  v149 = 0;
  LOBYTE(v140) = 0;
  v62 = swift_allocObject();
  v64 = v62;
  *(v62 + 16) = v132;
  *(v62 + 32) = v140;
  v65 = v125;
  v66 = v122;
  *(v62 + 40) = v125;
  *(v62 + 48) = v66;
  if (v159 == 255)
  {

    sub_1D5D2CFE8(v58, type metadata accessor for FormatVersionRequirement);

    goto LABEL_14;
  }

  v131 = &v116;
  v142 = v157;
  v143 = v158;
  LOBYTE(v144) = v159;
  v140 = v155;
  v141 = v156;
  MEMORY[0x1EEE9AC00](v62, v63);
  *(&v116 - 4) = sub_1D5B4AA6C;
  *(&v116 - 3) = 0;
  v114 = sub_1D6708A6C;
  v115 = v64;
  LOBYTE(v134) = 0;
  v67 = swift_allocObject();
  *(v67 + 16) = v132;
  *(v67 + 32) = v134;
  *(v67 + 40) = v65;
  *(v67 + 48) = v66;
  swift_retain_n();
  sub_1D5D355B8(&v155, &v134, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath, MEMORY[0x1E69E6720], sub_1D5C34D84);
  v68 = sub_1D72647CC();
  LOBYTE(v134) = 0;
  v69 = swift_allocObject();
  *(v69 + 16) = v68;
  *(v69 + 24) = v132;
  *(v69 + 40) = v134;
  v70 = __swift_project_boxed_opaque_existential_1(v117, *(v117 + 3));
  MEMORY[0x1EEE9AC00](v70, v71);
  MEMORY[0x1EEE9AC00](v72, v73);
  *(&v116 - 4) = sub_1D615B4A4;
  *(&v116 - 3) = (&v116 - 6);
  v114 = sub_1D6708A6C;
  v115 = v67;
  v74 = v133;
  v76 = sub_1D5D2F7A4(v58, sub_1D615B49C, v75, sub_1D615B4A4, (&v116 - 6));
  v133 = v74;
  if (v74)
  {

    v136 = v142;
    v137 = v143;
    LOBYTE(v138) = v144;
    v134 = v140;
    v135 = v141;
    sub_1D61992B0(&v134);
LABEL_17:
    v78 = v116;
    goto LABEL_18;
  }

  v77 = v76;

  if ((v77 & 1) == 0)
  {

    v136 = v142;
    v137 = v143;
    LOBYTE(v138) = v144;
    v134 = v140;
    v135 = v141;
    sub_1D61992B0(&v134);
    sub_1D5D2CFE8(v58, type metadata accessor for FormatVersionRequirement);
    v66 = v122;
    v59 = v123;
    v60 = v124;
    v65 = v125;
    v61 = v126;
    goto LABEL_14;
  }

  sub_1D61984E8();
  v78 = v116;
  v79 = v133;
  sub_1D72647EC();
  v59 = v123;
  v60 = v124;
  v61 = v126;
  v133 = v79;
  if (!v79)
  {

    v136 = v142;
    v137 = v143;
    LOBYTE(v138) = v144;
    v134 = v140;
    v135 = v141;
    sub_1D61992B0(&v134);
    sub_1D5D2CFE8(v121, type metadata accessor for FormatVersionRequirement);
    v66 = v122;
    v65 = v125;
LABEL_14:
    v80 = v120;
    v61(v120, v59, v60);
    swift_storeEnumTagMultiPayload();
    v132 = xmmword_1D7297410;
    v148 = xmmword_1D7297410;
    v149 = 0;
    LOBYTE(v140) = 0;
    v81 = swift_allocObject();
    v83 = v81;
    *(v81 + 16) = v132;
    *(v81 + 32) = v140;
    *(v81 + 40) = v65;
    *(v81 + 48) = v66;
    if (v119)
    {
      v166 = v119;
      MEMORY[0x1EEE9AC00](v81, v82);
      *(&v116 - 4) = sub_1D5B4AA6C;
      *(&v116 - 3) = 0;
      v114 = sub_1D6708A6C;
      v115 = v83;
      LOBYTE(v140) = 0;
      v84 = swift_allocObject();
      *(v84 + 16) = v132;
      *(v84 + 32) = v140;
      *(v84 + 40) = v65;
      *(v84 + 48) = v66;
      swift_retain_n();

      v85 = sub_1D72647CC();
      LOBYTE(v140) = 0;
      v86 = swift_allocObject();
      *(v86 + 16) = v85;
      *(v86 + 24) = v132;
      *(v86 + 40) = v140;
      v87 = __swift_project_boxed_opaque_existential_1(v117, *(v117 + 3));
      MEMORY[0x1EEE9AC00](v87, v88);
      MEMORY[0x1EEE9AC00](v89, v90);
      *(&v116 - 4) = sub_1D615B4A4;
      *(&v116 - 3) = (&v116 - 6);
      v58 = v120;
      v114 = sub_1D6708A6C;
      v115 = v84;
      v91 = v133;
      v93 = sub_1D5D2F7A4(v120, sub_1D615B49C, v92, sub_1D615B4A4, (&v116 - 6));
      v133 = v91;
      if (v91)
      {

        goto LABEL_17;
      }

      v95 = v93;

      if (v95)
      {
        sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
        sub_1D66612AC();
        v78 = v116;
        v96 = v133;
        sub_1D72647EC();
        v66 = v122;
        v59 = v123;
        v60 = v124;
        v133 = v96;
        if (v96)
        {

          goto LABEL_18;
        }

        sub_1D5D2CFE8(v58, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v58, type metadata accessor for FormatVersionRequirement);
        v78 = v116;
        v66 = v122;
        v59 = v123;
        v60 = v124;
      }
    }

    else
    {

      sub_1D5D2CFE8(v80, type metadata accessor for FormatVersionRequirement);

      v78 = v116;
    }

    v97 = v118;
    v126(v118, v59, v60);
    swift_storeEnumTagMultiPayload();
    v132 = xmmword_1D72BAA60;
    v146 = xmmword_1D72BAA60;
    v147 = 0;
    LOBYTE(v140) = 0;
    v98 = swift_allocObject();
    v100 = v98;
    *(v98 + 16) = v132;
    *(v98 + 32) = v140;
    v101 = v125;
    *(v98 + 40) = v125;
    *(v98 + 48) = v66;
    if (v165 == 254)
    {

LABEL_32:
      v94 = v97;
      goto LABEL_33;
    }

    v142 = v162;
    v143 = v163;
    v144 = v164;
    v145 = v165;
    v140 = v160;
    v141 = v161;
    MEMORY[0x1EEE9AC00](v98, v99);
    *(&v116 - 4) = sub_1D5B4AA6C;
    *(&v116 - 3) = 0;
    v114 = sub_1D6708A6C;
    v115 = v100;
    LOBYTE(v134) = 0;
    v102 = swift_allocObject();
    *(v102 + 16) = v132;
    *(v102 + 32) = v134;
    *(v102 + 40) = v101;
    *(v102 + 48) = v66;
    swift_retain_n();
    sub_1D5D355B8(&v160, &v134, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
    v103 = sub_1D72647CC();
    LOBYTE(v134) = 0;
    v104 = swift_allocObject();
    *(v104 + 16) = v103;
    *(v104 + 24) = v132;
    *(v104 + 40) = v134;
    v105 = __swift_project_boxed_opaque_existential_1(v117, *(v117 + 3));
    MEMORY[0x1EEE9AC00](v105, v106);
    MEMORY[0x1EEE9AC00](v107, v108);
    *(&v116 - 4) = sub_1D615B4A4;
    *(&v116 - 3) = (&v116 - 6);
    v114 = sub_1D6692F10;
    v115 = v102;
    v109 = v133;
    v111 = sub_1D5D2F7A4(v118, sub_1D615B49C, v110, sub_1D615B4A4, (&v116 - 6));
    v133 = v109;
    if (v109)
    {

      v136 = v142;
      v137 = v143;
      v138 = v144;
      v139 = v145;
      v134 = v140;
      v135 = v141;
      sub_1D601144C(&v134);
    }

    else
    {
      v112 = v111;

      if (v112)
      {
        sub_1D6661204();
        v78 = v116;
        v113 = v133;
        sub_1D72647EC();
        v97 = v118;
        v133 = v113;

        v136 = v142;
        v137 = v143;
        v138 = v144;
        v139 = v145;
        v134 = v140;
        v135 = v141;
        sub_1D601144C(&v134);
        goto LABEL_32;
      }

      v136 = v142;
      v137 = v143;
      v138 = v144;
      v139 = v145;
      v134 = v140;
      v135 = v141;
      sub_1D601144C(&v134);
    }

    v78 = v116;
    v97 = v118;
    goto LABEL_32;
  }

  v136 = v142;
  v137 = v143;
  LOBYTE(v138) = v144;
  v134 = v140;
  v135 = v141;
  sub_1D61992B0(&v134);
  v58 = v121;
LABEL_18:
  v94 = v58;
LABEL_33:
  sub_1D5D2CFE8(v94, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v78, sub_1D6692DE8);
}

uint64_t sub_1D64CC2B0()
{
  v1 = *v0;
  v2 = 0x726F7463656C6573;
  v3 = 0x73726564726F62;
  v4 = 0x776F64616873;
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
    v2 = 1752457584;
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

uint64_t sub_1D64CC338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6693500(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64CC370(uint64_t a1)
{
  v2 = sub_1D6692D40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64CC3AC(uint64_t a1)
{
  v2 = sub_1D6692D40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D64CC3E8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x696669746E656469;
    v7 = 0x726F7463656C6573;
    v8 = 0x6168706C61;
    if (a1 != 3)
    {
      v8 = 0x73726564726F62;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x7373616C63;
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
    v1 = 0xD000000000000018;
    v2 = 0x66456C6175736976;
    if (a1 != 9)
    {
      v2 = 1885433183;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x615272656E726F63;
    v4 = 0x776F64616873;
    if (a1 != 6)
    {
      v4 = 0x426F547370696C63;
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

uint64_t sub_1D64CC560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66936AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64CC598(uint64_t a1)
{
  v2 = sub_1D6661078();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64CC5D4(uint64_t a1)
{
  v2 = sub_1D6661078();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D64CC610(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x726F7463656C6573;
    v6 = 0x615272656E726F63;
    if (a1 != 2)
    {
      v6 = 0x776F64616873;
    }

    if (a1)
    {
      v5 = 0x73726564726F62;
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
    v1 = 0xD000000000000018;
    v2 = 0x66456C6175736976;
    if (a1 != 7)
    {
      v2 = 1885433183;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6168706C61;
    if (a1 != 4)
    {
      v3 = 0x426F547370696C63;
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

uint64_t sub_1D64CC744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6693A40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64CC77C(uint64_t a1)
{
  v2 = sub_1D6661550();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64CC7B8(uint64_t a1)
{
  v2 = sub_1D6661550();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatGroupPriority.encode(to:)(void *a1)
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
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v21 = sub_1D725BD1C();
  v22 = __swift_project_value_buffer(v21, qword_1EDFFCD30);
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

uint64_t FormatGroupRequirement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v25 - v8;
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
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v27;
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
          v10 = swift_allocError();
          *v20 = v19;
          *(v20 + 8) = v18;
          *(v20 + 16) = &unk_1F5115328;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v6 + 8))(v9, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D6692F8C();
    v26 = 0uLL;
    sub_1D726431C();
    v22 = v25;
    switch(v25)
    {
      case 6:
      case 7:
        sub_1D5C34D84(0, &qword_1EDF1B3D0, &type metadata for FormatBundle, MEMORY[0x1E69E62F8]);
        v26 = xmmword_1D7279980;
        sub_1D66931C0();
        goto LABEL_16;
      case 8:
      case 9:
        sub_1D5C34D84(0, &qword_1EC886C70, &type metadata for FormatPlatform, MEMORY[0x1E69E62F8]);
        v26 = xmmword_1D7279980;
        sub_1D66930D0();
        goto LABEL_16;
      case 10:
      case 11:
        sub_1D5C34D84(0, &qword_1EDF1AFF8, &type metadata for FormatGroupColumnSystemKind, MEMORY[0x1E69E62F8]);
        v26 = xmmword_1D7279980;
        sub_1D6692FE0();
        goto LABEL_16;
      case 12:
        sub_1D5C30060(0, &qword_1EDF12720, sub_1D666D9FC, &type metadata for FormatSelector, type metadata accessor for FormatValue);
        v25 = xmmword_1D7279980;
        sub_1D666DA50();
        sub_1D726431C();
        (*(v6 + 8))(v9, v5);
        v23 = *(&v26 + 1);
        v24 = v26;
        goto LABEL_17;
      default:
        sub_1D5C30060(0, &qword_1EDF127B8, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatValue);
        v26 = xmmword_1D7279980;
        sub_1D665B74C();
LABEL_16:
        sub_1D726431C();
        (*(v6 + 8))(v9, v5);
        v23 = 0;
        v24 = v25;
LABEL_17:
        *v13 = v24;
        *(v13 + 8) = v23;
        *(v13 + 16) = v22;
        break;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatGroupRequirement.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v105 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v104 = &v95 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v103 = &v95 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v102 = &v95 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v101 = &v95 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v100 = &v95 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v99 = &v95 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v98 = &v95 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v95 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v97 = &v95 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v95 - v36;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v95 - v40;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v95 - v44;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v46 - 8, v47);
  v49 = &v95 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(v1 + 8);
  v106 = *v1;
  v96 = v50;
  v51 = *(v1 + 16);
  v52 = a1[3];
  v53 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v52);
  v54 = sub_1D5C30408();
  v107 = v49;
  sub_1D5D2EE70(&type metadata for FormatGroupRequirement, &type metadata for FormatCodingKeys, v55, v52, &type metadata for FormatGroupRequirement, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyE, v53, v49, v54, &off_1F51F6CB8);
  switch(v51)
  {
    case 1:
      v83 = v106;
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v84 = sub_1D725BD1C();
      v85 = __swift_project_value_buffer(v84, qword_1EDFFCCE8);
      (*(*(v84 - 8) + 16))(v41, v85, v84);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v107;
      sub_1D639A5D8(1, v41, v83);
      v60 = v41;
      break;
    case 2:
      v73 = v106;
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v74 = sub_1D725BD1C();
      v75 = __swift_project_value_buffer(v74, qword_1EDFFCCE8);
      (*(*(v74 - 8) + 16))(v37, v75, v74);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v107;
      sub_1D639A5D8(2, v37, v73);
      v60 = v37;
      break;
    case 3:
      v76 = v106;
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v77 = sub_1D725BD1C();
      v78 = __swift_project_value_buffer(v77, qword_1EDFFCCE8);
      v79 = v97;
      (*(*(v77 - 8) + 16))(v97, v78, v77);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v107;
      sub_1D639A5D8(3, v79, v76);
      v60 = v79;
      break;
    case 4:
      v64 = v106;
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v65 = sub_1D725BD1C();
      v66 = __swift_project_value_buffer(v65, qword_1EDFFCCE8);
      (*(*(v65 - 8) + 16))(v30, v66, v65);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v67 = 4;
      goto LABEL_32;
    case 5:
      v64 = v106;
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v86 = sub_1D725BD1C();
      v87 = __swift_project_value_buffer(v86, qword_1EDFFCCE8);
      v30 = v98;
      (*(*(v86 - 8) + 16))(v98, v87, v86);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v67 = 5;
LABEL_32:
      v59 = v107;
      sub_1D639A5D8(v67, v30, v64);
      goto LABEL_45;
    case 6:
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v88 = sub_1D725BD1C();
      v89 = __swift_project_value_buffer(v88, qword_1EDFFCCE8);
      v30 = v99;
      (*(*(v88 - 8) + 16))(v99, v89, v88);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v82 = 6;
      goto LABEL_36;
    case 7:
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v80 = sub_1D725BD1C();
      v81 = __swift_project_value_buffer(v80, qword_1EDFFCCE8);
      v30 = v100;
      (*(*(v80 - 8) + 16))(v100, v81, v80);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v82 = 7;
LABEL_36:
      v59 = v107;
      sub_1D639A7AC(v82, *&v106, v30);
      goto LABEL_45;
    case 8:
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v92 = sub_1D725BD1C();
      v93 = __swift_project_value_buffer(v92, qword_1EDFFCCE8);
      v30 = v101;
      (*(*(v92 - 8) + 16))(v101, v93, v92);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v72 = 8;
      goto LABEL_44;
    case 9:
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v70 = sub_1D725BD1C();
      v71 = __swift_project_value_buffer(v70, qword_1EDFFCCE8);
      v30 = v102;
      (*(*(v70 - 8) + 16))(v102, v71, v70);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v72 = 9;
LABEL_44:
      v59 = v107;
      sub_1D639A96C(v72, *&v106, v30);
      goto LABEL_45;
    case 10:
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v90 = sub_1D725BD1C();
      v91 = __swift_project_value_buffer(v90, qword_1EDFFCCE8);
      v30 = v103;
      (*(*(v90 - 8) + 16))(v103, v91, v90);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v63 = 10;
      goto LABEL_40;
    case 11:
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v61 = sub_1D725BD1C();
      v62 = __swift_project_value_buffer(v61, qword_1EDFFCCE8);
      v30 = v104;
      (*(*(v61 - 8) + 16))(v104, v62, v61);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v63 = 11;
LABEL_40:
      v59 = v107;
      sub_1D639AB2C(v63, *&v106, v30);
      goto LABEL_45;
    case 12:
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v68 = sub_1D725BD1C();
      v69 = __swift_project_value_buffer(v68, qword_1EDFFCE80);
      v30 = v105;
      (*(*(v68 - 8) + 16))(v105, v69, v68);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v107;
      sub_1D639ACEC(12, *&v106, v96, v30);
LABEL_45:
      v60 = v30;
      break;
    default:
      v56 = v106;
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v57 = sub_1D725BD1C();
      v58 = __swift_project_value_buffer(v57, qword_1EDFFCCE8);
      (*(*(v57 - 8) + 16))(v45, v58, v57);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v107;
      sub_1D639A5D8(0, v45, v56);
      v60 = v45;
      break;
  }

  sub_1D5D2CFE8(v60, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v59, sub_1D5D30DC4);
}

unint64_t sub_1D64CDE98(char a1)
{
  result = 0x426564756C636E69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
    case 5:
      result = 0xD00000000000001FLL;
      break;
    case 6:
      return result;
    case 7:
      result = 0x426564756C637865;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0x726F7463656C6573;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1D64CE03C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D666408C();
  *a1 = result;
  return result;
}

unint64_t sub_1D64CE06C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D64CDE98(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatHBoxNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v245 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v250 = &v245 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v251 = &v245 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v252 = &v245 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v253 = &v245 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v254 = &v245 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  *&v260 = &v245 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  *&v258 = &v245 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  *&v257 = &v245 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v245 - v35;
  sub_1D6693D30();
  v264 = v37;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v245 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1[3];
  v42 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v41);
  sub_1D5C9EC54();
  v44 = v43;
  v45 = sub_1D5B58B84(&qword_1EDF24C48, sub_1D5C9EC54);
  v265 = v40;
  sub_1D5D2EE70(v4, v44, v46, v41, v4, v44, &type metadata for FormatVersions.JazzkonC, v42, v40, v45, &off_1F51F6C78);
  swift_beginAccess();
  v47 = v2[2];
  v48 = v2[3];
  v261 = v2;
  v49 = qword_1EDF31EB0;

  if (v49 != -1)
  {
    swift_once();
  }

  v50 = sub_1D725BD1C();
  v51 = __swift_project_value_buffer(v50, qword_1EDFFCD30);
  v52 = *(v50 - 8);
  v53 = *(v52 + 16);
  v54 = (v52 + 16);
  *&v263 = v51;
  v53(v36);
  v262 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v55 = sub_1D725895C();
  v56 = (*(*(v55 - 8) + 48))(v8, 1, v55);
  v256 = v53;
  v259 = v54;
  v255 = v50;
  if (v56 == 1)
  {
    v248 = v47;
    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v57 = v264;
    v58 = v265;
    v59 = &v265[*(v264 + 44)];
    v61 = *v59;
    v60 = *(v59 + 1);
    LOBYTE(v267) = 0;
    v62 = swift_allocObject();
    *(v62 + 16) = 0;
    *(v62 + 24) = 0;
    *(v62 + 32) = v267;
    *(v62 + 40) = v61;
    *(v62 + 48) = v60;
    sub_1D6693DC4();
    v64 = v63;
    v65 = sub_1D5B58B84(&qword_1EDF02B08, sub_1D6693DC4);

    v249 = v64;
    v66 = sub_1D72647CC();
    LOBYTE(v267) = 0;
    v67 = swift_allocObject();
    *(v67 + 24) = 0;
    *(v67 + 32) = 0;
    *(v67 + 16) = v66;
    *(v67 + 40) = v267;
    v68 = __swift_project_boxed_opaque_existential_1((v58 + *(v57 + 36)), *(v58 + *(v57 + 36) + 24));
    MEMORY[0x1EEE9AC00](v68, v69);
    MEMORY[0x1EEE9AC00](v70, v71);
    *(&v245 - 4) = sub_1D5B4AA6C;
    *(&v245 - 3) = 0;
    v243 = sub_1D6693E58;
    v244 = v62;
    v72 = v266;
    v74 = sub_1D5D2F7A4(v36, sub_1D615B49C, v73, sub_1D615B4A4, (&v245 - 6));
    if (v72)
    {
      sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);

LABEL_20:
      v107 = v58;
      return sub_1D5D2CFE8(v107, sub_1D6693D30);
    }

    v124 = v74;
    v266 = v65;

    if (v124)
    {
      v267 = 0uLL;
      LOBYTE(v268) = 0;
      v279 = v248;
      v280 = v48;
      sub_1D72647EC();

      sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
      v50 = v255;
      v75 = v264;
      v266 = 0;
      v53 = v256;
      goto LABEL_8;
    }

    v266 = 0;
    sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);

    v50 = v255;
    v53 = v256;
  }

  else
  {
    sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  v75 = v264;
LABEL_8:
  v76 = v257;
  v77 = v263;
  (v53)(v257, v263, v50);
  swift_storeEnumTagMultiPayload();
  sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);
  (v53)(v76, v77, v50);
  swift_storeEnumTagMultiPayload();
  sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);
  v78 = v261;
  swift_beginAccess();
  v79 = v78[8];
  v80 = v258;
  (v53)();
  swift_storeEnumTagMultiPayload();
  if (((v79 >> 59) & 0x1E | (v79 >> 2) & 1) == 0x16 && v79 == 0xB000000000000008)
  {
    sub_1D5D2CFE8(v80, type metadata accessor for FormatVersionRequirement);
    v81 = v266;
    v82 = v260;
  }

  else
  {
    v58 = v265;
    v108 = &v265[*(v75 + 44)];
    v110 = *v108;
    v109 = *(v108 + 1);
    LOBYTE(v267) = 0;
    v111 = swift_allocObject();
    v257 = xmmword_1D72BAA60;
    *(v111 + 16) = xmmword_1D72BAA60;
    *(v111 + 32) = v267;
    *(v111 + 40) = v110;
    *(v111 + 48) = v109;
    sub_1D5C82CD8(v79);
    sub_1D6693DC4();
    v113 = v112;
    sub_1D5B58B84(&qword_1EDF02B08, sub_1D6693DC4);

    v249 = v113;
    v114 = sub_1D72647CC();
    LOBYTE(v267) = 0;
    v115 = swift_allocObject();
    *(v115 + 16) = v114;
    *(v115 + 24) = v257;
    *(v115 + 40) = v267;
    v116 = __swift_project_boxed_opaque_existential_1((v58 + *(v75 + 36)), *(v58 + *(v75 + 36) + 24));
    MEMORY[0x1EEE9AC00](v116, v117);
    MEMORY[0x1EEE9AC00](v118, v119);
    *(&v245 - 4) = sub_1D5B4AA6C;
    *(&v245 - 3) = 0;
    v243 = sub_1D6708A70;
    v244 = v111;
    v120 = v266;
    v122 = sub_1D5D2F7A4(v80, sub_1D615B49C, v121, sub_1D615B4A4, (&v245 - 6));
    v123 = v80;
    v81 = v120;
    if (v120)
    {

      sub_1D5C92A8C(v79);
      sub_1D5D2CFE8(v123, type metadata accessor for FormatVersionRequirement);
      goto LABEL_20;
    }

    v128 = v122;

    if (v128)
    {
      v267 = v257;
      LOBYTE(v268) = 0;
      v277 = v79;
      sub_1D5CA1E90();
      sub_1D72647EC();
      v78 = v261;
      v53 = v256;
      v82 = v260;
      v75 = v264;
      sub_1D5C92A8C(v277);
      sub_1D5D2CFE8(v258, type metadata accessor for FormatVersionRequirement);
      v50 = v255;
    }

    else
    {
      sub_1D5C92A8C(v79);
      sub_1D5D2CFE8(v258, type metadata accessor for FormatVersionRequirement);
      v78 = v261;
      v50 = v255;
      v53 = v256;
      v82 = v260;
      v75 = v264;
    }
  }

  v266 = v81;
  v83 = v78[10];
  v248 = v78[9];
  *&v257 = v83;
  if (qword_1EDF31F58[0] != -1)
  {
    swift_once();
  }

  v84 = __swift_project_value_buffer(v50, qword_1EDFFCE98);
  (v53)(v82, v84, v50);
  swift_storeEnumTagMultiPayload();
  v258 = xmmword_1D72BAA70;
  v267 = xmmword_1D72BAA70;
  LOBYTE(v268) = 0;
  v85 = *(v75 + 44);
  v86 = v265;
  v87 = &v265[v85];
  v89 = *v87;
  v88 = *(v87 + 1);
  LOBYTE(v277) = 0;
  v90 = swift_allocObject();
  v92 = v90;
  *(v90 + 16) = v258;
  *(v90 + 32) = v277;
  *(v90 + 40) = v89;
  *(v90 + 48) = v88;
  v249 = v89;
  if (v257)
  {
    v247 = &v245;
    v277 = v248;
    v278 = v257;
    MEMORY[0x1EEE9AC00](v90, v91);
    *(&v245 - 4) = sub_1D5B4AA6C;
    *(&v245 - 3) = 0;
    v243 = sub_1D6708A70;
    v244 = v92;
    LOBYTE(v276) = 0;
    v93 = swift_allocObject();
    *(v93 + 16) = v258;
    *(v93 + 32) = v276;
    *(v93 + 40) = v89;
    *(v93 + 48) = v88;
    sub_1D6693DC4();
    v95 = v94;
    sub_1D5B58B84(&qword_1EDF02B08, sub_1D6693DC4);
    swift_retain_n();

    *&v257 = v95;
    v96 = sub_1D72647CC();
    LOBYTE(v276) = 0;
    v97 = swift_allocObject();
    *(v97 + 16) = v96;
    *(v97 + 24) = v258;
    *(v97 + 40) = v276;
    v98 = __swift_project_boxed_opaque_existential_1((v86 + *(v264 + 36)), *(v86 + *(v264 + 36) + 24));
    MEMORY[0x1EEE9AC00](v98, v99);
    MEMORY[0x1EEE9AC00](v100, v101);
    *(&v245 - 4) = sub_1D615B4A4;
    *(&v245 - 3) = (&v245 - 6);
    v243 = sub_1D6708A70;
    v244 = v93;
    v102 = v260;
    v103 = v266;
    v105 = sub_1D5D2F7A4(v260, sub_1D615B49C, v104, sub_1D615B4A4, (&v245 - 6));
    if (v103)
    {

      v106 = v265;

      sub_1D5D2CFE8(v102, type metadata accessor for FormatVersionRequirement);
      v107 = v106;
      return sub_1D5D2CFE8(v107, sub_1D6693D30);
    }

    v129 = v105;

    if (v129)
    {
      sub_1D6689AF0();
      sub_1D72647EC();
      v78 = v261;
      v50 = v255;
      v53 = v256;
      v126 = v254;
      v266 = 0;
      v127 = v88;

      sub_1D5D2CFE8(v260, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v260, type metadata accessor for FormatVersionRequirement);
      v266 = 0;
      v78 = v261;
      v50 = v255;
      v53 = v256;
      v127 = v88;
      v126 = v254;
    }
  }

  else
  {

    sub_1D5D2CFE8(v260, type metadata accessor for FormatVersionRequirement);

    v126 = v254;
    v127 = v88;
  }

  swift_beginAccess();
  v130 = v78[11];
  (v53)(v126, v263, v50);
  swift_storeEnumTagMultiPayload();
  v131 = *(v130 + 16);
  v246 = v127;
  if (!v131)
  {
    sub_1D5D2CFE8(v126, type metadata accessor for FormatVersionRequirement);
    goto LABEL_37;
  }

  LOBYTE(v267) = 0;
  v132 = swift_allocObject();
  v260 = xmmword_1D72BAA80;
  *(v132 + 16) = xmmword_1D72BAA80;
  *(v132 + 32) = v267;
  *(v132 + 40) = v249;
  *(v132 + 48) = v127;
  sub_1D6693DC4();
  v134 = v133;
  v135 = sub_1D5B58B84(&qword_1EDF02B08, sub_1D6693DC4);

  v136 = v265;
  *&v258 = v134;
  v137 = sub_1D72647CC();
  LOBYTE(v267) = 0;
  v138 = swift_allocObject();
  *(v138 + 16) = v137;
  *(v138 + 24) = v260;
  *(v138 + 40) = v267;
  v139 = __swift_project_boxed_opaque_existential_1((v136 + *(v264 + 36)), *(v136 + *(v264 + 36) + 24));
  MEMORY[0x1EEE9AC00](v139, v140);
  MEMORY[0x1EEE9AC00](v141, v142);
  *(&v245 - 4) = sub_1D5B4AA6C;
  *(&v245 - 3) = 0;
  v243 = sub_1D6708A70;
  v244 = v132;
  v143 = v266;
  v145 = sub_1D5D2F7A4(v126, sub_1D615B49C, v144, sub_1D615B4A4, (&v245 - 6));
  if (!v143)
  {
    v146 = v145;
    v266 = v135;

    if (v146)
    {
      v267 = v260;
      LOBYTE(v268) = 0;
      v276 = v130;
      sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
      sub_1D6659C88();
      sub_1D72647EC();
      v78 = v261;
      v127 = v246;
      v266 = 0;

      sub_1D5D2CFE8(v126, type metadata accessor for FormatVersionRequirement);
      v50 = v255;
    }

    else
    {
      v266 = 0;
      sub_1D5D2CFE8(v126, type metadata accessor for FormatVersionRequirement);

      v78 = v261;
      v50 = v255;
      v127 = v246;
    }

LABEL_37:
    swift_beginAccess();
    v147 = v78[12];
    v148 = v253;
    (v256)(v253, v263, v50);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v267) = 0;
    v149 = swift_allocObject();
    v263 = xmmword_1D72BAA90;
    *(v149 + 16) = xmmword_1D72BAA90;
    *(v149 + 32) = v267;
    *(v149 + 40) = v249;
    *(v149 + 48) = v127;
    sub_1D6693DC4();
    v151 = v150;
    v152 = sub_1D5B58B84(&qword_1EDF02B08, sub_1D6693DC4);

    *&v260 = v147;

    v153 = v265;
    *&v258 = v151;
    v154 = sub_1D72647CC();
    LOBYTE(v267) = 0;
    v155 = swift_allocObject();
    *(v155 + 16) = v154;
    *(v155 + 24) = v263;
    *(v155 + 40) = v267;
    v156 = (v153 + *(v264 + 36));
    v157 = __swift_project_boxed_opaque_existential_1(v156, v156[3]);
    MEMORY[0x1EEE9AC00](v157, v158);
    MEMORY[0x1EEE9AC00](v159, v160);
    *(&v245 - 4) = sub_1D5B4AA6C;
    *(&v245 - 3) = 0;
    v243 = sub_1D6708A70;
    v244 = v149;
    v161 = v266;
    v163 = sub_1D5D2F7A4(v148, sub_1D615B49C, v162, sub_1D615B4A4, (&v245 - 6));
    v266 = v161;
    if (v161)
    {
      sub_1D5D2CFE8(v148, type metadata accessor for FormatVersionRequirement);

      v107 = v153;
      return sub_1D5D2CFE8(v107, sub_1D6693D30);
    }

    v164 = v163;
    v165 = v260;
    *&v257 = v156;
    v264 = v152;

    if (v164)
    {
      v267 = v263;
      LOBYTE(v268) = 0;
      v275 = v165;
      sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
      sub_1D66594A0();
      v166 = v265;
      v167 = v266;
      sub_1D72647EC();
      v266 = v167;
      v168 = v261;
      v169 = v255;
      v170 = v253;
      if (v167)
      {

        v171 = v170;
LABEL_65:
        sub_1D5D2CFE8(v171, type metadata accessor for FormatVersionRequirement);
        v107 = v166;
        return sub_1D5D2CFE8(v107, sub_1D6693D30);
      }

      sub_1D5D2CFE8(v170, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v253, type metadata accessor for FormatVersionRequirement);

      v168 = v261;
      v169 = v255;
    }

    swift_beginAccess();
    v172 = *(v168 + 104);
    sub_1D5B58478();
    v174 = *(v173 + 48);
    v175 = v252;
    v176 = &v252[*(v173 + 64)];
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v177 = __swift_project_value_buffer(v169, qword_1EDFFCD98);
    v178 = v256;
    (v256)(v175, v177, v169);
    if (qword_1EDF31F40 != -1)
    {
      swift_once();
    }

    *&v263 = __swift_project_value_buffer(v169, qword_1EDFFCE50);
    v178(v175 + v174);
    *v176 = 0;
    *(v176 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    if (v172)
    {
      LOBYTE(v267) = 0;
      v179 = swift_allocObject();
      v260 = xmmword_1D72BAAA0;
      *(v179 + 16) = xmmword_1D72BAAA0;
      *(v179 + 32) = v267;
      *(v179 + 40) = v249;
      *(v179 + 48) = v246;

      v180 = sub_1D72647CC();
      LOBYTE(v267) = 0;
      v181 = swift_allocObject();
      *(v181 + 16) = v180;
      *(v181 + 24) = v260;
      *(v181 + 40) = v267;
      v182 = v257;
      v183 = __swift_project_boxed_opaque_existential_1(v257, *(v257 + 24));
      MEMORY[0x1EEE9AC00](v183, v184);
      MEMORY[0x1EEE9AC00](v185, v186);
      *(&v245 - 4) = sub_1D5B4AA6C;
      *(&v245 - 3) = 0;
      v243 = sub_1D6708A70;
      v244 = v179;
      v187 = v266;
      v189 = sub_1D5D2F7A4(v175, sub_1D615B49C, v188, sub_1D615B4A4, (&v245 - 6));
      v266 = v187;
      if (v187)
      {
        sub_1D5D2CFE8(v175, type metadata accessor for FormatVersionRequirement);

LABEL_57:
        v107 = v265;
        return sub_1D5D2CFE8(v107, sub_1D6693D30);
      }

      v205 = v189;

      if (v205)
      {
        v267 = v260;
        LOBYTE(v268) = 0;
        v274 = 1;
        v166 = v265;
        v206 = v266;
        sub_1D72647EC();
        v266 = v206;
        v168 = v261;
        v190 = v251;
        v169 = v255;
        if (v206)
        {
LABEL_64:
          v171 = v175;
          goto LABEL_65;
        }

        sub_1D5D2CFE8(v175, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v175, type metadata accessor for FormatVersionRequirement);
        v168 = v261;
        v190 = v251;
        v169 = v255;
      }
    }

    else
    {
      sub_1D5D2CFE8(v175, type metadata accessor for FormatVersionRequirement);
      v190 = v251;
      v182 = v257;
    }

    swift_beginAccess();
    v192 = v168[14];
    v191 = v168[15];
    v193 = *(v168 + 128);
    (v256)(v190, v263, v169);
    swift_storeEnumTagMultiPayload();
    if (v193)
    {
      sub_1D5C75A4C(v192, v191, 1);

      sub_1D5D2F2C8(v192, v191, 1);
      sub_1D5D2F2C8(0, 0, 0);
    }

    else
    {
      sub_1D5D2F2C8(v192, v191, 0);
      sub_1D5D2F2C8(0, 0, 0);
      if ((v192 & 1) == 0)
      {
        v209 = v190;
        goto LABEL_67;
      }
    }

    *&v257 = v191;
    LOBYTE(v267) = 0;
    v194 = swift_allocObject();
    v263 = xmmword_1D72BAAB0;
    *(v194 + 16) = xmmword_1D72BAAB0;
    *(v194 + 32) = v267;
    *(v194 + 40) = v249;
    *(v194 + 48) = v246;

    v195 = sub_1D72647CC();
    LOBYTE(v267) = 0;
    v196 = v190;
    v197 = swift_allocObject();
    *(v197 + 16) = v195;
    *(v197 + 24) = v263;
    *(v197 + 40) = v267;
    v198 = __swift_project_boxed_opaque_existential_1(v182, v182[3]);
    *&v260 = &v245;
    MEMORY[0x1EEE9AC00](v198, v199);
    MEMORY[0x1EEE9AC00](v200, v201);
    *(&v245 - 4) = sub_1D5B4AA6C;
    *(&v245 - 3) = 0;
    v243 = sub_1D6708A70;
    v244 = v194;
    v202 = v266;
    v204 = sub_1D5D2F7A4(v196, sub_1D615B49C, v203, sub_1D615B4A4, (&v245 - 6));
    v266 = v202;
    if (v202)
    {
      sub_1D5D2CFE8(v196, type metadata accessor for FormatVersionRequirement);

      sub_1D5D2F2C8(v192, v257, v193);
      goto LABEL_57;
    }

    v207 = v204;

    if ((v207 & 1) == 0)
    {
      sub_1D5D2CFE8(v251, type metadata accessor for FormatVersionRequirement);
      sub_1D5D2F2C8(v192, v257, v193);
      v168 = v261;
LABEL_70:
      v210 = v168[17];
      v261 = v168[18];
      v211 = v168[19];
      v262 = v168[20];
      v213 = v168[21];
      v212 = v168[22];
      v214 = v250;
      v215 = v249;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v216 = v255;
      v217 = __swift_project_value_buffer(v255, qword_1EDFFCE38);
      (v256)(v214, v217, v216);
      swift_storeEnumTagMultiPayload();
      v263 = xmmword_1D72BAAC0;
      v272 = xmmword_1D72BAAC0;
      v273 = 0;
      LOBYTE(v267) = 0;
      v219 = swift_allocObject();
      *(v219 + 16) = v263;
      *(v219 + 32) = v267;
      *(v219 + 40) = v215;
      v220 = v246;
      *(v219 + 48) = v246;
      if (v210)
      {
        v221 = v210;
        *&v260 = &v245;
        *&v267 = v210;
        v222 = v261;
        *(&v267 + 1) = v261;
        v223 = v211;
        v268 = v211;
        v224 = v262;
        v269 = v262;
        v270 = v213;
        v271 = v212;
        *&v257 = v221;
        MEMORY[0x1EEE9AC00](v220, v218);
        v225 = v182;
        v227 = v226;
        v259 = &v245 - 6;
        *(&v245 - 4) = sub_1D5B4AA6C;
        *(&v245 - 3) = 0;
        v243 = sub_1D6708A70;
        v244 = v219;
        v281 = 0;
        v228 = swift_allocObject();
        *(v228 + 16) = v263;
        *(v228 + 32) = v281;
        *(v228 + 40) = v249;
        *(v228 + 48) = v227;
        swift_retain_n();
        sub_1D5EB1D80(v257, v222, v223, v224, v213);
        v229 = sub_1D72647CC();
        v281 = 0;
        v230 = swift_allocObject();
        *(v230 + 16) = v229;
        *(v230 + 24) = v263;
        *(v230 + 40) = v281;
        v231 = __swift_project_boxed_opaque_existential_1(v225, v225[3]);
        MEMORY[0x1EEE9AC00](v231, v232);
        MEMORY[0x1EEE9AC00](v233, v234);
        v235 = v259;
        *(&v245 - 4) = sub_1D615B4A4;
        *(&v245 - 3) = v235;
        v243 = sub_1D6708A70;
        v244 = v228;
        v236 = v266;
        v238 = sub_1D5D2F7A4(v250, sub_1D615B49C, v237, sub_1D615B4A4, (&v245 - 6));
        if (v236)
        {

          v239 = v265;
LABEL_78:
          v241 = v270;

          sub_1D5CBF568(v241);

          sub_1D5D2CFE8(v250, type metadata accessor for FormatVersionRequirement);
LABEL_82:
          v107 = v239;
          return sub_1D5D2CFE8(v107, sub_1D6693D30);
        }

        v240 = v238;

        if (v240)
        {
          sub_1D6659A24();
          v239 = v265;
          sub_1D72647EC();

          goto LABEL_78;
        }

        v242 = v270;

        sub_1D5CBF568(v242);

        sub_1D5D2CFE8(v250, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v214, type metadata accessor for FormatVersionRequirement);
      }

      v239 = v265;
      goto LABEL_82;
    }

    v267 = v263;
    LOBYTE(v268) = 0;
    *&v272 = v192;
    *(&v272 + 1) = v257;
    v273 = v193;
    sub_1D60ED320();
    v166 = v265;
    v208 = v266;
    sub_1D72647EC();
    v266 = v208;
    v168 = v261;
    v175 = v251;
    if (v208)
    {
      sub_1D5D2F2C8(v272, *(&v272 + 1), v273);
      goto LABEL_64;
    }

    sub_1D5D2F2C8(v272, *(&v272 + 1), v273);
    v209 = v175;
LABEL_67:
    sub_1D5D2CFE8(v209, type metadata accessor for FormatVersionRequirement);
    goto LABEL_70;
  }

  sub_1D5D2CFE8(v126, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v265, sub_1D6693D30);
}