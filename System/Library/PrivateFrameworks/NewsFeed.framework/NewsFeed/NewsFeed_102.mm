uint64_t sub_1D649672C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66887A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6496764(uint64_t a1)
{
  v2 = sub_1D5CE83EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64967A0(uint64_t a1)
{
  v2 = sub_1D5CE83EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatExpression.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v144 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v145 = &v133 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v143 = &v133 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v140 = &v133 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v139 = &v133 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v142 = &v133 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v141 = &v133 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v138 = &v133 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v136 = &v133 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v135 = &v133 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v137 = &v133 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v133 - v39;
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v133 - v43;
  MEMORY[0x1EEE9AC00](v45, v46);
  v134 = &v133 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v133 - v50;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v52 - 8, v53);
  v55 = &v133 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *v2;
  v57 = a1[3];
  v58 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v57);
  v59 = sub_1D5C30408();
  v155 = v55;
  sub_1D5D2EE70(&type metadata for FormatExpression, &type metadata for FormatCodingKeys, v60, v57, &type metadata for FormatExpression, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v58, v55, v59, &off_1F51F6C78);
  switch(v56 >> 60)
  {
    case 1uLL:
      v99 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v147[0] = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v147[1] = v99;
      v148 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      sub_1D66874CC(v147, v146);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v100 = sub_1D725BD1C();
      v101 = __swift_project_value_buffer(v100, qword_1EDFFCD30);
      v102 = v134;
      (*(*(v100 - 8) + 16))(v134, v101, v100);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v64 = v155;
      sub_1D63B4D68(1, v147, v102);
      sub_1D6687528(v147);
      v65 = v102;
      goto LABEL_32;
    case 2uLL:
      v87 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v88 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v89 = sub_1D725BD1C();
      v90 = __swift_project_value_buffer(v89, qword_1EDFFCD30);
      (*(*(v89 - 8) + 16))(v44, v90, v89);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v91 = v88;
      v64 = v155;
      sub_1D63B4F08(2, v87, v91, v44);
      v65 = v44;
      goto LABEL_32;
    case 3uLL:
      v92 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v149[0] = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v149[1] = v92;
      v150 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      sub_1D668741C(v149, v146);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v93 = sub_1D725BD1C();
      v94 = __swift_project_value_buffer(v93, qword_1EDFFCD30);
      (*(*(v93 - 8) + 16))(v40, v94, v93);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v71 = v155;
      sub_1D63B50A0(3, v149, v40);
      sub_1D6687478(v149);
      goto LABEL_54;
    case 4uLL:
      v75 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
      v151[3] = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v151[4] = v75;
      v152[0] = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
      *(v152 + 11) = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x6B);
      v76 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v151[0] = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v151[1] = v76;
      v151[2] = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      sub_1D62B48E4(v151, v146);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v77 = sub_1D725BD1C();
      v78 = __swift_project_value_buffer(v77, qword_1EDFFCD30);
      v40 = v137;
      (*(*(v77 - 8) + 16))(v137, v78, v77);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v71 = v155;
      sub_1D63B5240(4, v151, v40);
      sub_1D62B4940(v151);
      goto LABEL_54;
    case 5uLL:
      v104 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v105 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v106 = qword_1EDF31EB0;

      if (v106 != -1)
      {
        swift_once();
      }

      v107 = sub_1D725BD1C();
      v108 = __swift_project_value_buffer(v107, qword_1EDFFCD30);
      v40 = v135;
      (*(*(v107 - 8) + 16))(v135, v108, v107);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v71 = v155;
      sub_1D63B53F0(5, v104, v105, v40);
      goto LABEL_42;
    case 6uLL:
      v115 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v116 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v117 = qword_1EDF31EE8;

      if (v117 != -1)
      {
        swift_once();
      }

      v118 = sub_1D725BD1C();
      v119 = __swift_project_value_buffer(v118, qword_1EDFFCD98);
      v40 = v136;
      (*(*(v118 - 8) + 16))(v136, v119, v118);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v71 = v155;
      sub_1D63B5584(6, v115, v116, v40);
      goto LABEL_42;
    case 7uLL:
      v95 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v96 = qword_1EDF31EB0;

      if (v96 != -1)
      {
        swift_once();
      }

      v97 = sub_1D725BD1C();
      v98 = __swift_project_value_buffer(v97, qword_1EDFFCD30);
      v40 = v138;
      (*(*(v97 - 8) + 16))(v138, v98, v97);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v71 = v155;
      sub_1D63B5718(7, v95, v40);
      goto LABEL_53;
    case 8uLL:
      v127 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v128 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v129 = qword_1EDF31EB0;

      if (v129 != -1)
      {
        swift_once();
      }

      v130 = sub_1D725BD1C();
      v131 = __swift_project_value_buffer(v130, qword_1EDFFCD30);
      v40 = v141;
      (*(*(v130 - 8) + 16))(v141, v131, v130);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v71 = v155;
      sub_1D63B58AC(8, v127, v128, v40);
      goto LABEL_52;
    case 9uLL:
      v82 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v83 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v84 = qword_1EDF31EB0;

      if (v84 != -1)
      {
        swift_once();
      }

      v85 = sub_1D725BD1C();
      v86 = __swift_project_value_buffer(v85, qword_1EDFFCD30);
      v40 = v142;
      (*(*(v85 - 8) + 16))(v142, v86, v85);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v71 = v155;
      sub_1D63B5A40(9, v82, v83, v40);
LABEL_52:

LABEL_53:

      goto LABEL_54;
    case 0xAuLL:
      v120 = v56 & 0xFFFFFFFFFFFFFFFLL;
      v121 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v122 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v123 = *(v120 + 26);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v124 = sub_1D725BD1C();
      v125 = __swift_project_value_buffer(v124, qword_1EDFFCD30);
      v40 = v139;
      (*(*(v124 - 8) + 16))(v139, v125, v124);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      if (v123)
      {
        v126 = 0x10000;
      }

      else
      {
        v126 = 0;
      }

      v71 = v155;
      sub_1D63B5BD4(10, v121, v126 | v122, v40);
      goto LABEL_54;
    case 0xBuLL:
      v72 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v73 = sub_1D725BD1C();
      v74 = __swift_project_value_buffer(v73, qword_1EDFFCD30);
      v40 = v140;
      (*(*(v73 - 8) + 16))(v140, v74, v73);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v71 = v155;
      sub_1D63B5D74(11, v72, v40);
      goto LABEL_54;
    case 0xCuLL:
      v79 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v153 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v154[0] = v79;
      *(v154 + 9) = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x29);
      sub_1D668736C(&v153, v146);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v80 = sub_1D725BD1C();
      v81 = __swift_project_value_buffer(v80, qword_1EDFFCD30);
      v40 = v143;
      (*(*(v80 - 8) + 16))(v143, v81, v80);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v71 = v155;
      sub_1D63B5F08(12, &v153, v40);
      sub_1D66873C8(&v153);
      goto LABEL_54;
    case 0xDuLL:
      v109 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v110 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v111 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v112 = qword_1EDF31EA8;

      if (v112 != -1)
      {
        swift_once();
      }

      v113 = sub_1D725BD1C();
      v114 = __swift_project_value_buffer(v113, qword_1EDFFCD18);
      v40 = v145;
      (*(*(v113 - 8) + 16))(v145, v114, v113);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v71 = v155;
      sub_1D63B60A8(13, v109, v110, v111, v40);

      goto LABEL_42;
    case 0xEuLL:
      v66 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v67 = *((v56 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v68 = qword_1EDF31ED0;

      if (v68 != -1)
      {
        swift_once();
      }

      v69 = sub_1D725BD1C();
      v70 = __swift_project_value_buffer(v69, qword_1EDFFCD50);
      v40 = v144;
      (*(*(v69 - 8) + 16))(v144, v70, v69);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v71 = v155;
      sub_1D63B6240(14, v66, v67, v40);
LABEL_42:

LABEL_54:
      sub_1D5D2CFE8(v40, type metadata accessor for FormatVersionRequirement);
      v103 = v71;
      break;
    default:
      v61 = *(v56 + 16);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v62 = sub_1D725BD1C();
      v63 = __swift_project_value_buffer(v62, qword_1EDFFCD30);
      (*(*(v62 - 8) + 16))(v51, v63, v62);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v64 = v155;
      sub_1D64859C4(0, v61, v51);
      v65 = v51;
LABEL_32:
      sub_1D5D2CFE8(v65, type metadata accessor for FormatVersionRequirement);
      v103 = v64;
      break;
  }

  return sub_1D5D2CFE8(v103, sub_1D5D30DC4);
}

unint64_t sub_1D64978D8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D5CC14F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatFile.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v78 = type metadata accessor for FormatBindingContent();
  MEMORY[0x1EEE9AC00](v78, v3);
  v75 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for FormatPackage();
  MEMORY[0x1EEE9AC00](v73, v5);
  v74 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for FormatContent(0);
  MEMORY[0x1EEE9AC00](v72, v7);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v76 = v10;
  v79 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v70 - v12;
  v14 = type metadata accessor for FormatFile();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  v18 = v89;
  sub_1D7264B0C();
  v19 = v18;
  if (v18)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v19);
    swift_willThrow();
  }

  else
  {
    v71 = v9;
    v89 = v17;
    v20 = v77;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v21 = sub_1D7264AFC();
    v22 = Dictionary<>.errorOnUnknownKeys.getter(v21);

    v23 = v76;
    v24 = v13;
    if (v22)
    {
      v25 = sub_1D726433C();
      v26 = (v25 + 40);
      v27 = *(v25 + 16) + 1;
      while (--v27)
      {
        v28 = v26 + 2;
        v29 = *v26;
        v26 += 2;
        if (v29 >= 4)
        {
          v30 = *(v28 - 3);

          sub_1D5E2D970();
          v19 = swift_allocError();
          *v31 = v30;
          *(v31 + 8) = v29;
          *(v31 + 16) = &unk_1F5114C88;
          *(v31 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v79 + 8))(v24, v23);
          goto LABEL_9;
        }
      }
    }

    sub_1D668757C();
    *&v81[8] = 0;
    *v81 = 0;
    sub_1D726431C();
    v33 = v79;
    v34 = v75;
    switch(v80)
    {
      case 1:
        v80 = xmmword_1D7279980;
        sub_1D5B4AB4C();
        sub_1D726431C();
        (*(v33 + 8))(v24, v23);
        v57 = *&v85[32];
        v37 = v89;
        *(v89 + 6) = *&v85[16];
        *(v37 + 112) = v57;
        *(v37 + 128) = v86;
        v58 = v83;
        *(v37 + 32) = v82;
        *(v37 + 48) = v58;
        v59 = *v85;
        *(v37 + 64) = v84;
        *(v37 + 80) = v59;
        v60 = *&v81[16];
        *v37 = *v81;
        *(v37 + 16) = v60;
        break;
      case 2:
        v80 = xmmword_1D7279980;
        sub_1D5B4B754();
        sub_1D726431C();
        (*(v33 + 8))(v24, v23);
        v49 = *v85;
        v37 = v89;
        *(v89 + 4) = v84;
        *(v37 + 80) = v49;
        *(v37 + 96) = *&v85[16];
        *(v37 + 105) = *&v85[25];
        v50 = *&v81[16];
        *v37 = *v81;
        *(v37 + 16) = v50;
        v51 = v83;
        *(v37 + 32) = v82;
        *(v37 + 48) = v51;
        break;
      case 3:
        *v81 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF456B8, type metadata accessor for FormatPackage);
        v52 = v74;
        sub_1D726431C();
        (*(v33 + 8))(v24, v23);
        v63 = v52;
        v37 = v89;
        sub_1D5C8F76C(v63, v89, type metadata accessor for FormatPackage);
        break;
      case 4:
        v80 = xmmword_1D7279980;
        sub_1D66875D0();
        sub_1D726431C();
        (*(v79 + 8))(v24, v23);
        v39 = *&v81[8];
        v37 = v89;
        *v89 = *v81;
        *(v37 + 8) = v39;
        break;
      case 5:
        type metadata accessor for FormatSnippet();
        *v81 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF455A8, type metadata accessor for FormatSnippet);
        sub_1D726431C();
        (*(v79 + 8))(v24, v23);
        v37 = v89;
        *v89 = v80;
        break;
      case 6:
        v80 = xmmword_1D7279980;
        sub_1D5B4AEC0();
        sub_1D726431C();
        (*(v33 + 8))(v24, v23);
        v61 = v83;
        v37 = v89;
        *(v89 + 2) = v82;
        *(v37 + 48) = v61;
        *(v37 + 64) = v84;
        v62 = *&v81[16];
        *v37 = *v81;
        *(v37 + 16) = v62;
        break;
      case 7:
        v80 = xmmword_1D7279980;
        sub_1D5B4C658();
        sub_1D726431C();
        (*(v33 + 8))(v24, v23);
        v53 = *v85;
        v37 = v89;
        *(v89 + 4) = v84;
        *(v37 + 80) = v53;
        *(v37 + 89) = *&v85[9];
        v55 = *&v81[16];
        v54 = v82;
        *v37 = *v81;
        *(v37 + 16) = v55;
        v56 = v83;
        *(v37 + 32) = v54;
        *(v37 + 48) = v56;
        break;
      case 8:
        v80 = xmmword_1D7279980;
        sub_1D5B4C754();
        sub_1D726431C();
        (*(v33 + 8))(v24, v23);
        v68 = v83;
        v37 = v89;
        *(v89 + 2) = v82;
        *(v37 + 48) = v68;
        *(v37 + 64) = v84;
        *(v37 + 80) = v85[0];
        v69 = *&v81[16];
        *v37 = *v81;
        *(v37 + 16) = v69;
        break;
      case 9:
        v80 = xmmword_1D7279980;
        sub_1D5B4BD3C();
        sub_1D726431C();
        (*(v33 + 8))(v24, v23);
        v45 = *v85;
        v37 = v89;
        *(v89 + 4) = v84;
        *(v37 + 80) = v45;
        *(v37 + 91) = *&v85[11];
        v47 = *&v81[16];
        v46 = v82;
        *v37 = *v81;
        *(v37 + 16) = v47;
        v48 = v83;
        *(v37 + 32) = v46;
        *(v37 + 48) = v48;
        break;
      case 10:
        v80 = xmmword_1D7279980;
        sub_1D5B564A8();
        sub_1D726431C();
        (*(v79 + 8))(v24, v23);
        v64 = *&v81[8];
        v65 = v83;
        v66 = *&v81[16];
        v67 = v82;
        v37 = v89;
        *v89 = *v81;
        *(v37 + 8) = v64;
        *(v37 + 16) = v66;
        *(v37 + 32) = v67;
        *(v37 + 48) = v65;
        break;
      case 11:
        *v81 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EC882FA0, type metadata accessor for FormatBindingContent);
        sub_1D726431C();
        (*(v79 + 8))(v24, v23);
        v38 = v34;
        v37 = v89;
        sub_1D5C8F76C(v38, v89, type metadata accessor for FormatBindingContent);
        break;
      case 12:
        v80 = xmmword_1D7279980;
        sub_1D5E32FE8();
        sub_1D726431C();
        (*(v33 + 8))(v24, v23);
        v40 = v87;
        v37 = v89;
        *(v89 + 8) = v86;
        *(v37 + 144) = v40;
        *(v37 + 160) = *v88;
        *(v37 + 175) = *&v88[15];
        v41 = *v85;
        *(v37 + 64) = v84;
        *(v37 + 80) = v41;
        v42 = *&v85[32];
        *(v37 + 96) = *&v85[16];
        *(v37 + 112) = v42;
        v43 = *&v81[16];
        *v37 = *v81;
        *(v37 + 16) = v43;
        v44 = v83;
        *(v37 + 32) = v82;
        *(v37 + 48) = v44;
        break;
      default:
        *v81 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EC886260, type metadata accessor for FormatContent);
        v35 = v71;
        sub_1D726431C();
        (*(v79 + 8))(v24, v23);
        v36 = v35;
        v37 = v89;
        sub_1D5C8F76C(v36, v89, type metadata accessor for FormatContent);
        break;
    }

    swift_storeEnumTagMultiPayload();
    sub_1D5C8F76C(v37, v20, type metadata accessor for FormatFile);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatFile.encode(to:)(void *a1)
{
  v2 = type metadata accessor for FormatBindingContent();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v143 = &v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FormatPackage();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v142 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v141 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v138 = &v130 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v140 = &v130 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v139 = &v130 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v137 = &v130 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v135 = &v130 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v136 = &v130 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v132 = &v130 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v133 = &v130 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v134 = &v130 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v131 = &v130 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v130 = &v130 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v130 - v46;
  v48 = type metadata accessor for FormatContent(0);
  MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v51 = &v130 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for FormatFile();
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = &v130 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v56 - 8, v57);
  v59 = &v130 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a1[3];
  v60 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v61);
  v62 = sub_1D5C30408();
  v160 = v59;
  sub_1D5D2EE70(v52, &type metadata for FormatCodingKeys, v63, v61, v52, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v60, v59, v62, &off_1F51F6C78);
  sub_1D6706BB4(v144, v55, type metadata accessor for FormatFile);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v105 = *(v55 + 5);
      v145[4] = *(v55 + 4);
      v146[0] = v105;
      *(v146 + 11) = *(v55 + 91);
      v106 = *(v55 + 1);
      v145[0] = *v55;
      v145[1] = v106;
      v107 = *(v55 + 3);
      v145[2] = *(v55 + 2);
      v145[3] = v107;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v108 = sub_1D725BD1C();
      v109 = __swift_project_value_buffer(v108, qword_1EDFFCD30);
      v70 = v130;
      (*(*(v108 - 8) + 16))(v130, v109, v108);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v66 = v160;
      sub_1D63C4754(9, v145, v70);
      sub_1D6687720(v145);
      goto LABEL_41;
    case 2u:
      v90 = *(v55 + 7);
      v147[6] = *(v55 + 6);
      v147[7] = v90;
      v147[8] = *(v55 + 8);
      v91 = *(v55 + 3);
      v147[2] = *(v55 + 2);
      v147[3] = v91;
      v92 = *(v55 + 5);
      v147[4] = *(v55 + 4);
      v147[5] = v92;
      v93 = *(v55 + 1);
      v147[0] = *v55;
      v147[1] = v93;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v94 = sub_1D725BD1C();
      v95 = __swift_project_value_buffer(v94, qword_1EDFFCD30);
      v70 = v131;
      (*(*(v94 - 8) + 16))(v131, v95, v94);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v66 = v160;
      sub_1D63C4904(1, v147, v70);
      sub_1D5D68304(v147);
      goto LABEL_41;
    case 3u:
      v96 = *(v55 + 5);
      v148[4] = *(v55 + 4);
      v148[5] = v96;
      v149[0] = *(v55 + 6);
      *(v149 + 9) = *(v55 + 105);
      v97 = *(v55 + 1);
      v148[0] = *v55;
      v148[1] = v97;
      v98 = *(v55 + 3);
      v148[2] = *(v55 + 2);
      v148[3] = v98;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v99 = sub_1D725BD1C();
      v100 = __swift_project_value_buffer(v99, qword_1EDFFCD30);
      v70 = v134;
      (*(*(v99 - 8) + 16))(v134, v100, v99);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v66 = v160;
      sub_1D63C4AC4(2, v148, v70);
      sub_1D66876CC(v148);
      goto LABEL_41;
    case 4u:
      v75 = *(v55 + 1);
      v150[0] = *v55;
      v150[1] = v75;
      v150[2] = *(v55 + 2);
      v151 = *(v55 + 6);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v76 = sub_1D725BD1C();
      v77 = __swift_project_value_buffer(v76, qword_1EDFFCD30);
      v70 = v133;
      (*(*(v76 - 8) + 16))(v133, v77, v76);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v66 = v160;
      sub_1D63C4C7C(10, v150, v70);
      sub_1D6687678(v150);
      goto LABEL_41;
    case 5u:
      v110 = v55;
      v70 = v142;
      sub_1D5C8F76C(v110, v142, type metadata accessor for FormatPackage);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v111 = sub_1D725BD1C();
      v112 = __swift_project_value_buffer(v111, qword_1EDFFCD30);
      v113 = v132;
      (*(*(v111 - 8) + 16))(v132, v112, v111);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v66 = v160;
      sub_1D63C4E24(3, v70, v113);
      sub_1D5D2CFE8(v113, type metadata accessor for FormatVersionRequirement);
      v74 = type metadata accessor for FormatPackage;
      goto LABEL_42;
    case 6u:
      v114 = *v55;
      v115 = *(v55 + 1);
      v116 = *(v55 + 2);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v117 = sub_1D725BD1C();
      v118 = __swift_project_value_buffer(v117, qword_1EDFFCD30);
      v119 = v136;
      (*(*(v117 - 8) + 16))(v136, v118, v117);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v120 = v114;
      v66 = v160;
      sub_1D63C4FF8(4, v120, v115, v116, v119);

      v67 = type metadata accessor for FormatVersionRequirement;
      v68 = v119;
      break;
    case 7u:
      v101 = *v55;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v102 = sub_1D725BD1C();
      v103 = __swift_project_value_buffer(v102, qword_1EDFFCD30);
      v104 = v135;
      (*(*(v102 - 8) + 16))(v135, v103, v102);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v66 = v160;
      sub_1D63C5190(5, v101, v104);

      v67 = type metadata accessor for FormatVersionRequirement;
      v68 = v104;
      break;
    case 8u:
      v125 = *(v55 + 3);
      v152[2] = *(v55 + 2);
      v152[3] = v125;
      v153 = *(v55 + 8);
      v126 = *(v55 + 1);
      v152[0] = *v55;
      v152[1] = v126;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v127 = sub_1D725BD1C();
      v128 = __swift_project_value_buffer(v127, qword_1EDFFCD30);
      v70 = v137;
      (*(*(v127 - 8) + 16))(v137, v128, v127);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v66 = v160;
      sub_1D63C535C(6, v152, v70);
      sub_1D6687624(v152);
      goto LABEL_41;
    case 9u:
      v85 = *(v55 + 5);
      v154[4] = *(v55 + 4);
      v155[0] = v85;
      *(v155 + 9) = *(v55 + 89);
      v86 = *(v55 + 1);
      v154[0] = *v55;
      v154[1] = v86;
      v87 = *(v55 + 3);
      v154[2] = *(v55 + 2);
      v154[3] = v87;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v88 = sub_1D725BD1C();
      v89 = __swift_project_value_buffer(v88, qword_1EDFFCD30);
      v70 = v139;
      (*(*(v88 - 8) + 16))(v139, v89, v88);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v66 = v160;
      sub_1D63C5504(7, v154, v70);
      sub_1D62E2300(v154);
      goto LABEL_41;
    case 0xAu:
      v121 = *(v55 + 3);
      v156[2] = *(v55 + 2);
      v156[3] = v121;
      v156[4] = *(v55 + 4);
      v157 = v55[80];
      v122 = *(v55 + 1);
      v156[0] = *v55;
      v156[1] = v122;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v123 = sub_1D725BD1C();
      v124 = __swift_project_value_buffer(v123, qword_1EDFFCD30);
      v70 = v140;
      (*(*(v123 - 8) + 16))(v140, v124, v123);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v66 = v160;
      sub_1D63C56B4(8, v156, v70);
      sub_1D62B7D78(v156);
      goto LABEL_41;
    case 0xBu:
      v69 = v55;
      v70 = v143;
      sub_1D5C8F76C(v69, v143, type metadata accessor for FormatBindingContent);
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v71 = sub_1D725BD1C();
      v72 = __swift_project_value_buffer(v71, qword_1EDFFCCE8);
      v73 = v138;
      (*(*(v71 - 8) + 16))(v138, v72, v71);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v66 = v160;
      sub_1D63C5864(11, v70, v73);
      sub_1D5D2CFE8(v73, type metadata accessor for FormatVersionRequirement);
      v74 = type metadata accessor for FormatBindingContent;
      goto LABEL_42;
    case 0xCu:
      v78 = *(v55 + 9);
      v158[8] = *(v55 + 8);
      v158[9] = v78;
      v159[0] = *(v55 + 10);
      *(v159 + 15) = *(v55 + 175);
      v79 = *(v55 + 5);
      v158[4] = *(v55 + 4);
      v158[5] = v79;
      v80 = *(v55 + 7);
      v158[6] = *(v55 + 6);
      v158[7] = v80;
      v81 = *(v55 + 1);
      v158[0] = *v55;
      v158[1] = v81;
      v82 = *(v55 + 3);
      v158[2] = *(v55 + 2);
      v158[3] = v82;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v83 = sub_1D725BD1C();
      v84 = __swift_project_value_buffer(v83, qword_1EDFFCE38);
      v70 = v141;
      (*(*(v83 - 8) + 16))(v141, v84, v83);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v66 = v160;
      sub_1D63C5A38(12, v158, v70);
      sub_1D5ECF21C(v158);
LABEL_41:
      v74 = type metadata accessor for FormatVersionRequirement;
LABEL_42:
      v67 = v74;
      v68 = v70;
      break;
    default:
      sub_1D5C8F76C(v55, v51, type metadata accessor for FormatContent);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v64 = sub_1D725BD1C();
      v65 = __swift_project_value_buffer(v64, qword_1EDFFCD30);
      (*(*(v64 - 8) + 16))(v47, v65, v64);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v66 = v160;
      sub_1D63C4580(0, v51, v47);
      sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);
      v67 = type metadata accessor for FormatContent;
      v68 = v51;
      break;
  }

  sub_1D5D2CFE8(v68, v67);
  return sub_1D5D2CFE8(v66, sub_1D5D30DC4);
}

uint64_t FormatFileKind.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v82 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v81 = v69 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v80 = v69 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v79 = v69 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v78 = v69 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v77 = v69 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v76 = v69 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v75 = v69 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v74 = v69 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v73 = v69 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v72 = v69 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v71 = v69 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v70 = v69 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = v69 - v44;
  v46 = *v1;
  v83 = a1;
  v84 = v46;
  v47 = a1[3];
  v48 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v47);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v49 = sub_1D725BD1C();
  v50 = __swift_project_value_buffer(v49, qword_1EDFFCD30);
  v51 = *(*(v49 - 8) + 16);
  v51(v45, v50, v49);
  v52 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v53 = v85;
  sub_1D5D2BEC4(v45, sub_1D5B4AA6C, 0, v47, v48);
  if (v53)
  {
    return sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);
  }

  v69[1] = v52;
  sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);
  v55 = v83;
  v56 = v83[3];
  v85 = v83[4];
  v57 = __swift_project_boxed_opaque_existential_1(v83, v56);
  v58 = v51;
  switch(v84)
  {
    case 1:
      v59 = v71;
      v58(v71, v50, v49);
      swift_storeEnumTagMultiPayload();
      goto LABEL_20;
    case 2:
      v59 = v72;
      v58(v72, v50, v49);
      swift_storeEnumTagMultiPayload();
      goto LABEL_20;
    case 3:
      v59 = v73;
      v58(v73, v50, v49);
      swift_storeEnumTagMultiPayload();
      goto LABEL_20;
    case 4:
      v59 = v74;
      v58(v74, v50, v49);
      swift_storeEnumTagMultiPayload();
      goto LABEL_20;
    case 5:
      v67 = v75;
      v51(v75, v50, v49);
      swift_storeEnumTagMultiPayload();
      goto LABEL_25;
    case 6:
      v67 = v76;
      v51(v76, v50, v49);
      swift_storeEnumTagMultiPayload();
      goto LABEL_25;
    case 7:
      v67 = v77;
      v51(v77, v50, v49);
      swift_storeEnumTagMultiPayload();
      goto LABEL_25;
    case 8:
      v67 = v78;
      v51(v78, v50, v49);
      swift_storeEnumTagMultiPayload();
      goto LABEL_25;
    case 9:
      v67 = v79;
      v51(v79, v50, v49);
      swift_storeEnumTagMultiPayload();
      goto LABEL_25;
    case 10:
      v67 = v80;
      v51(v80, v50, v49);
      swift_storeEnumTagMultiPayload();
LABEL_25:
      sub_1D5D2BEC4(v67, sub_1D5B4AA6C, 0, v56, v85);
      v68 = v67;
      goto LABEL_26;
    case 11:
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v60 = __swift_project_value_buffer(v49, qword_1EDFFCCE8);
      v61 = v81;
      v51(v81, v60, v49);
      swift_storeEnumTagMultiPayload();
      v62 = v61;
      v63 = v56;
      v64 = v85;
      goto LABEL_14;
    case 12:
      v81 = v57;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v65 = __swift_project_value_buffer(v49, qword_1EDFFCE38);
      v66 = v82;
      v51(v82, v65, v49);
      swift_storeEnumTagMultiPayload();
      v61 = v66;
      v62 = v66;
      v63 = v56;
      v64 = v85;
LABEL_14:
      sub_1D5D2BEC4(v62, sub_1D5B4AA6C, 0, v63, v64);
      v68 = v61;
LABEL_26:
      sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);
      break;
    default:
      v59 = v70;
      v58(v70, v50, v49);
      swift_storeEnumTagMultiPayload();
LABEL_20:
      sub_1D5D2BEC4(v59, sub_1D5B4AA6C, 0, v56, v85);
      sub_1D5D2CFE8(v59, type metadata accessor for FormatVersionRequirement);
      break;
  }

  __swift_project_boxed_opaque_existential_1(v55, v55[3]);
  sub_1D7264B3C();
  v88 = v84;
  FormatFileKind.rawValue.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v86, v87);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v86);
}

uint64_t sub_1D649A0B8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D649A180()
{
  sub_1D72621EC();
}

uint64_t sub_1D649A234()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t FormatFixedColor.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v70 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v69 = &v62 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v68 = &v62 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v67 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v66 = &v62 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v65 = &v62 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v64 = &v62 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v76 = &v62 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v75 = &v62 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v74 = &v62 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v73 = &v62 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v72 = &v62 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v71 = &v62 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v62 - v44;
  v46 = *v1;
  v77 = a1;
  v78 = v46;
  v47 = a1[3];
  v48 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v47);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v49 = sub_1D725BD1C();
  v50 = __swift_project_value_buffer(v49, qword_1EDFFCD30);
  v51 = *(*(v49 - 8) + 16);
  v51(v45, v50, v49);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v52 = v79;
  sub_1D5D2BEC4(v45, sub_1D5B4AA6C, 0, v47, v48);
  if (v52)
  {
    return sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);
  v54 = v77;
  v55 = v77[3];
  v63 = v77[4];
  v79 = __swift_project_boxed_opaque_existential_1(v77, v55);
  v56 = v78;
  switch(v78)
  {
    case 1:
      v51(v72, v50, v49);
      v57 = v72;
      swift_storeEnumTagMultiPayload();
      goto LABEL_15;
    case 2:
      v51(v73, v50, v49);
      v57 = v73;
      swift_storeEnumTagMultiPayload();
      goto LABEL_15;
    case 3:
      v51(v74, v50, v49);
      v57 = v74;
      swift_storeEnumTagMultiPayload();
      goto LABEL_15;
    case 4:
      v51(v75, v50, v49);
      v57 = v75;
      swift_storeEnumTagMultiPayload();
      goto LABEL_15;
    case 5:
      v51(v76, v50, v49);
      v61 = v76;
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v61, sub_1D5B4AA6C, 0, v55, v63);
      v60 = v61;
      goto LABEL_22;
    case 6:
      v58 = v64;
      v51(v64, v50, v49);
      swift_storeEnumTagMultiPayload();
      goto LABEL_20;
    case 7:
      v58 = v65;
      v51(v65, v50, v49);
      swift_storeEnumTagMultiPayload();
      goto LABEL_20;
    case 8:
      v58 = v66;
      v51(v66, v50, v49);
      swift_storeEnumTagMultiPayload();
      goto LABEL_20;
    case 9:
      v58 = v67;
      v51(v67, v50, v49);
      swift_storeEnumTagMultiPayload();
      goto LABEL_20;
    case 10:
      v58 = v68;
      v51(v68, v50, v49);
      swift_storeEnumTagMultiPayload();
      goto LABEL_20;
    case 11:
      v58 = v69;
      v51(v69, v50, v49);
      swift_storeEnumTagMultiPayload();
LABEL_20:
      sub_1D5D2BEC4(v58, sub_1D5B4AA6C, 0, v55, v63);
      v60 = v58;
      goto LABEL_21;
    case 12:
      v59 = v70;
      v51(v70, v50, v49);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v59, sub_1D5B4AA6C, 0, v55, v63);
      v60 = v59;
LABEL_21:
      v56 = v78;
LABEL_22:
      sub_1D5D2CFE8(v60, type metadata accessor for FormatVersionRequirement);
      break;
    default:
      v51(v71, v50, v49);
      v57 = v71;
      swift_storeEnumTagMultiPayload();
LABEL_15:
      sub_1D5D2BEC4(v57, sub_1D5B4AA6C, 0, v55, v63);
      sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);
      break;
  }

  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  sub_1D7264B3C();
  v82 = v56;
  FormatFixedColor.rawValue.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v80, v81);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v80);
}

uint64_t FormatFlexBoxNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v216 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v219 = &v216 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v221 = &v216 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v220 = (&v216 - v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v222 = &v216 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v228 = &v216 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  *&v227 = &v216 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  *&v226 = &v216 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v216 - v32;
  sub_1D66897B8();
  v232 = v34;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v216 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1[3];
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v38);
  sub_1D66898E0();
  v41 = v40;
  v42 = sub_1D5B58B84(&qword_1EDF25638, sub_1D66898E0);
  v233 = v37;
  sub_1D5D2EE70(v4, v41, v43, v38, v4, v41, &type metadata for FormatVersions.CrystalGlowE, v39, v37, v42, &off_1F51F6C98);
  swift_beginAccess();
  v44 = v2[2];
  v45 = v2[3];
  *&v231 = v2;
  v46 = qword_1EDF31F38;

  if (v46 != -1)
  {
    swift_once();
  }

  v47 = sub_1D725BD1C();
  v48 = __swift_project_value_buffer(v47, qword_1EDFFCE38);
  v49 = *(v47 - 8);
  v50 = *(v49 + 16);
  v230 = v49 + 16;
  v50(v33, v48, v47);
  v229 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v51 = sub_1D725895C();
  v52 = (*(*(v51 - 8) + 48))(v8, 1, v51);
  v223 = v47;
  v224 = v48;
  v225 = v50;
  if (v52 == 1)
  {
    v217 = v44;
    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v53 = v232;
    v54 = v233;
    v55 = &v233[*(v232 + 44)];
    v57 = *v55;
    v56 = *(v55 + 1);
    LOBYTE(v235) = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = 0;
    *(v58 + 24) = 0;
    *(v58 + 32) = v235;
    *(v58 + 40) = v57;
    *(v58 + 48) = v56;
    sub_1D668984C();
    v60 = v59;
    sub_1D5B58B84(&qword_1EDF036B8, sub_1D668984C);

    v218 = v60;
    v61 = sub_1D72647CC();
    LOBYTE(v235) = 0;
    v62 = swift_allocObject();
    *(v62 + 24) = 0;
    *(v62 + 32) = 0;
    *(v62 + 16) = v61;
    *(v62 + 40) = v235;
    v63 = __swift_project_boxed_opaque_existential_1((v54 + *(v53 + 36)), *(v54 + *(v53 + 36) + 24));
    MEMORY[0x1EEE9AC00](v63, v64);
    MEMORY[0x1EEE9AC00](v65, v66);
    *(&v216 - 4) = sub_1D5B4AA6C;
    *(&v216 - 3) = 0;
    v214 = sub_1D6689A60;
    v215 = v58;
    v67 = v234;
    v69 = sub_1D5D2F7A4(v33, sub_1D615B49C, v68, sub_1D615B4A4, (&v216 - 6));
    v234 = v67;
    if (v67)
    {
      sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v54, sub_1D66897B8);
    }

    v119 = v69;

    if (v119)
    {
      v235 = 0uLL;
      LOBYTE(v236) = 0;
      v245 = v217;
      v246 = v45;
      v120 = v234;
      sub_1D72647EC();

      sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);
      v234 = v120;
      v48 = v224;
      v50 = v225;
      if (v120)
      {
        return sub_1D5D2CFE8(v54, sub_1D66897B8);
      }

      v47 = v223;
    }

    else
    {
      sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);

      v47 = v223;
      v48 = v224;
      v50 = v225;
    }
  }

  else
  {
    sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  v71 = v227;
  v72 = v226;
  v50(v226, v48, v47);
  swift_storeEnumTagMultiPayload();
  sub_1D5D2CFE8(v72, type metadata accessor for FormatVersionRequirement);
  v50(v72, v48, v47);
  swift_storeEnumTagMultiPayload();
  sub_1D5D2CFE8(v72, type metadata accessor for FormatVersionRequirement);
  v73 = v231;
  swift_beginAccess();
  v74 = *(v73 + 64);
  v50(v71, v48, v47);
  swift_storeEnumTagMultiPayload();
  if (((v74 >> 59) & 0x1E | (v74 >> 2) & 1) == 0x16 && v74 == 0xB000000000000008)
  {
    sub_1D5D2CFE8(v71, type metadata accessor for FormatVersionRequirement);
    v75 = v232;
    v76 = v233;
  }

  else
  {
    v101 = v232;
    v102 = v233;
    v103 = &v233[*(v232 + 44)];
    v104 = *v103;
    v105 = *(v103 + 1);
    LOBYTE(v235) = 0;
    v106 = swift_allocObject();
    v226 = xmmword_1D72BAA60;
    *(v106 + 16) = xmmword_1D72BAA60;
    *(v106 + 32) = v235;
    *(v106 + 40) = v104;
    *(v106 + 48) = v105;
    sub_1D5C82CD8(v74);
    sub_1D668984C();
    v108 = v107;
    sub_1D5B58B84(&qword_1EDF036B8, sub_1D668984C);

    v218 = v108;
    v109 = sub_1D72647CC();
    LOBYTE(v235) = 0;
    v110 = swift_allocObject();
    *(v110 + 16) = v109;
    *(v110 + 24) = v226;
    *(v110 + 40) = v235;
    v111 = __swift_project_boxed_opaque_existential_1(&v102[*(v101 + 36)], *&v102[*(v101 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v111, v112);
    MEMORY[0x1EEE9AC00](v113, v114);
    *(&v216 - 4) = sub_1D5B4AA6C;
    *(&v216 - 3) = 0;
    v214 = sub_1D6708A18;
    v215 = v106;
    v115 = v234;
    v117 = sub_1D5D2F7A4(v71, sub_1D615B49C, v116, sub_1D615B4A4, (&v216 - 6));
    if (v115)
    {

      sub_1D5C92A8C(v74);
      v118 = v71;
LABEL_16:
      sub_1D5D2CFE8(v118, type metadata accessor for FormatVersionRequirement);
      v100 = v233;
      return sub_1D5D2CFE8(v100, sub_1D66897B8);
    }

    v121 = v117;
    v122 = v233;

    if (v121)
    {
      v235 = v226;
      LOBYTE(v236) = 0;
      v243 = v74;
      sub_1D5CA1E90();
      v76 = v122;
      sub_1D72647EC();
      v50 = v225;
      v234 = 0;
      sub_1D5C92A8C(v243);
      sub_1D5D2CFE8(v227, type metadata accessor for FormatVersionRequirement);
      v75 = v232;
      v47 = v223;
      v48 = v224;
    }

    else
    {
      v234 = 0;
      sub_1D5C92A8C(v74);
      sub_1D5D2CFE8(v227, type metadata accessor for FormatVersionRequirement);
      v76 = v122;
      v75 = v232;
      v47 = v223;
      v48 = v224;
      v50 = v225;
    }
  }

  v77 = *(v231 + 72);
  v78 = *(v231 + 80);
  v50(v228, v48, v47);
  swift_storeEnumTagMultiPayload();
  v227 = xmmword_1D72BAA70;
  v235 = xmmword_1D72BAA70;
  LOBYTE(v236) = 0;
  v79 = &v76[*(v75 + 44)];
  v81 = *v79;
  v80 = *(v79 + 1);
  LOBYTE(v243) = 0;
  v82 = swift_allocObject();
  v84 = v82;
  *(v82 + 16) = v227;
  *(v82 + 32) = v243;
  *(v82 + 40) = v81;
  *(v82 + 48) = v80;
  *&v226 = v81;
  if (!v78)
  {

    sub_1D5D2CFE8(v228, type metadata accessor for FormatVersionRequirement);

    goto LABEL_28;
  }

  v218 = &v216;
  v243 = v77;
  v244 = v78;
  MEMORY[0x1EEE9AC00](v82, v83);
  v85 = v80;
  *(&v216 - 4) = sub_1D5B4AA6C;
  *(&v216 - 3) = 0;
  v214 = sub_1D6708A18;
  v215 = v84;
  LOBYTE(v242) = 0;
  v86 = swift_allocObject();
  *(v86 + 16) = v227;
  *(v86 + 32) = v242;
  *(v86 + 40) = v81;
  *(v86 + 48) = v85;
  sub_1D668984C();
  v88 = v87;
  sub_1D5B58B84(&qword_1EDF036B8, sub_1D668984C);
  swift_retain_n();

  v217 = v88;
  v89 = sub_1D72647CC();
  LOBYTE(v242) = 0;
  v90 = swift_allocObject();
  *(v90 + 16) = v89;
  *(v90 + 24) = v227;
  *(v90 + 40) = v242;
  v91 = __swift_project_boxed_opaque_existential_1(&v76[*(v232 + 36)], *&v76[*(v232 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v91, v92);
  MEMORY[0x1EEE9AC00](v93, v94);
  *(&v216 - 4) = sub_1D615B4A4;
  *(&v216 - 3) = (&v216 - 6);
  v214 = sub_1D6708A18;
  v215 = v86;
  v95 = v228;
  v96 = v234;
  v98 = sub_1D5D2F7A4(v228, sub_1D615B49C, v97, sub_1D615B4A4, (&v216 - 6));
  if (!v96)
  {
    v123 = v98;

    if (v123)
    {
      sub_1D6689AF0();
      sub_1D72647EC();
      v234 = 0;
      v81 = v226;
      v80 = v85;

      sub_1D5D2CFE8(v228, type metadata accessor for FormatVersionRequirement);
      v47 = v223;
      v48 = v224;
      v50 = v225;
    }

    else
    {
      v234 = 0;

      sub_1D5D2CFE8(v228, type metadata accessor for FormatVersionRequirement);
      v47 = v223;
      v48 = v224;
      v50 = v225;
      v80 = v85;
      v81 = v226;
    }

LABEL_28:
    v124 = v231;
    swift_beginAccess();
    v125 = *(v124 + 88);
    v126 = v222;
    v50(v222, v48, v47);
    swift_storeEnumTagMultiPayload();
    if (v125[2])
    {
      LOBYTE(v235) = 0;
      v127 = swift_allocObject();
      v227 = xmmword_1D72BAA80;
      *(v127 + 16) = xmmword_1D72BAA80;
      *(v127 + 32) = v235;
      *(v127 + 40) = v81;
      *(v127 + 48) = v80;
      sub_1D668984C();
      v129 = v128;
      v130 = sub_1D5B58B84(&qword_1EDF036B8, sub_1D668984C);

      v131 = v233;
      v218 = v125;
      v217 = v129;
      v216 = v130;
      v132 = sub_1D72647CC();
      LOBYTE(v235) = 0;
      v133 = swift_allocObject();
      *(v133 + 16) = v132;
      *(v133 + 24) = v227;
      *(v133 + 40) = v235;
      v134 = __swift_project_boxed_opaque_existential_1((v131 + *(v232 + 36)), *(v131 + *(v232 + 36) + 24));
      MEMORY[0x1EEE9AC00](v134, v135);
      MEMORY[0x1EEE9AC00](v136, v137);
      *(&v216 - 4) = sub_1D5B4AA6C;
      *(&v216 - 3) = 0;
      v214 = sub_1D6708A18;
      v215 = v127;
      v138 = v234;
      v140 = sub_1D5D2F7A4(v126, sub_1D615B49C, v139, sub_1D615B4A4, (&v216 - 6));
      if (v138)
      {
        sub_1D5D2CFE8(v126, type metadata accessor for FormatVersionRequirement);

LABEL_54:

        goto LABEL_55;
      }

      v141 = v140;
      v142 = v218;
      v143 = v226;
      v228 = v80;

      if (v141)
      {
        v235 = v227;
        LOBYTE(v236) = 0;
        v242 = v142;
        sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
        sub_1D6659C88();
        sub_1D72647EC();
        v50 = v225;
        v81 = v143;
        v234 = 0;

        sub_1D5D2CFE8(v222, type metadata accessor for FormatVersionRequirement);
        v80 = v228;
      }

      else
      {
        v234 = 0;
        sub_1D5D2CFE8(v222, type metadata accessor for FormatVersionRequirement);

        v50 = v225;
        v80 = v228;
        v81 = v143;
      }
    }

    else
    {
      sub_1D5D2CFE8(v126, type metadata accessor for FormatVersionRequirement);
    }

    v144 = v231;
    swift_beginAccess();
    v145 = *(v144 + 96);
    v146 = v220;
    (v50)();
    swift_storeEnumTagMultiPayload();
    v147 = _s8NewsFeed012FormatCodingC25FlexBoxNodeLayoutStrategyV12defaultValueAA0cefgH0CvgZ_0();

    v149 = _s8NewsFeed23FormatFlexBoxNodeLayoutC2eeoiySbAC_ACtFZ_0(v148, v147);

    if (v149)
    {
      v150 = v81;
      v228 = v80;
    }

    else
    {
      LOBYTE(v235) = 0;
      v178 = swift_allocObject();
      v227 = xmmword_1D72BAA90;
      *(v178 + 16) = xmmword_1D72BAA90;
      *(v178 + 32) = v235;
      *(v178 + 40) = v81;
      *(v178 + 48) = v80;
      sub_1D668984C();
      v180 = v179;
      v181 = sub_1D5B58B84(&qword_1EDF036B8, sub_1D668984C);

      v131 = v233;
      v222 = v180;
      v218 = v181;
      v182 = sub_1D72647CC();
      LOBYTE(v235) = 0;
      v183 = v146;
      v184 = swift_allocObject();
      *(v184 + 16) = v182;
      *(v184 + 24) = v227;
      *(v184 + 40) = v235;
      v185 = __swift_project_boxed_opaque_existential_1((v131 + *(v232 + 36)), *(v131 + *(v232 + 36) + 24));
      MEMORY[0x1EEE9AC00](v185, v186);
      MEMORY[0x1EEE9AC00](v187, v188);
      *(&v216 - 4) = sub_1D5B4AA6C;
      *(&v216 - 3) = 0;
      v214 = sub_1D6708A18;
      v215 = v178;
      v189 = v234;
      v191 = sub_1D5D2F7A4(v183, sub_1D615B49C, v190, sub_1D615B4A4, (&v216 - 6));
      if (v189)
      {

        goto LABEL_43;
      }

      v150 = v226;
      v228 = v80;
      v194 = v191;

      if ((v194 & 1) == 0)
      {
        v234 = 0;

        v151 = v220;
        goto LABEL_38;
      }

      v235 = v227;
      LOBYTE(v236) = 0;
      *&v240 = v145;
      type metadata accessor for FormatFlexBoxNodeLayout();
      sub_1D5B58B84(&qword_1EDF0D508, type metadata accessor for FormatFlexBoxNodeLayout);
      sub_1D72647EC();
      v146 = v220;
      v234 = 0;
    }

    v151 = v146;
LABEL_38:
    sub_1D5D2CFE8(v151, type metadata accessor for FormatVersionRequirement);
    v152 = *(v231 + 104);
    v153 = *(v231 + 112);
    v154 = *(v231 + 120);
    v155 = *(v231 + 128);
    v157 = *(v231 + 136);
    v156 = *(v231 + 144);
    v158 = v221;
    v225(v221, v224, v223);
    swift_storeEnumTagMultiPayload();
    v227 = xmmword_1D72BAAA0;
    v240 = xmmword_1D72BAAA0;
    v241 = 0;
    LOBYTE(v235) = 0;
    v159 = swift_allocObject();
    v161 = v159;
    *(v159 + 16) = v227;
    *(v159 + 32) = v235;
    v162 = v228;
    *(v159 + 40) = v150;
    *(v159 + 48) = v162;
    if (v152)
    {
      v222 = &v216;
      *&v235 = v152;
      *(&v235 + 1) = v153;
      v236 = v154;
      v237 = v155;
      v238 = v157;
      v239 = v156;
      MEMORY[0x1EEE9AC00](v159, v160);
      v220 = &v216 - 6;
      *(&v216 - 4) = sub_1D5B4AA6C;
      *(&v216 - 3) = 0;
      v214 = sub_1D6708A18;
      v215 = v161;
      LOBYTE(v247) = 0;
      v163 = swift_allocObject();
      v164 = v150;
      v165 = v163;
      *(v163 + 16) = v227;
      *(v163 + 32) = v247;
      *(v163 + 40) = v164;
      *(v163 + 48) = v228;
      swift_retain_n();
      sub_1D5EB1D80(v152, v153, v154, v155, v157);
      sub_1D668984C();
      sub_1D5B58B84(&qword_1EDF036B8, sub_1D668984C);
      v166 = v233;
      v167 = sub_1D72647CC();
      LOBYTE(v247) = 0;
      v168 = swift_allocObject();
      *(v168 + 16) = v167;
      *(v168 + 24) = v227;
      *(v168 + 40) = v247;
      v169 = __swift_project_boxed_opaque_existential_1(&v166[*(v232 + 36)], *&v166[*(v232 + 36) + 24]);
      MEMORY[0x1EEE9AC00](v169, v170);
      MEMORY[0x1EEE9AC00](v171, v172);
      v173 = v220;
      *(&v216 - 4) = sub_1D615B4A4;
      *(&v216 - 3) = v173;
      v214 = sub_1D6708A18;
      v215 = v165;
      v174 = v234;
      v176 = sub_1D5D2F7A4(v221, sub_1D615B49C, v175, sub_1D615B4A4, (&v216 - 6));
      if (v174)
      {

        v177 = v238;

        sub_1D5CBF568(v177);

        v118 = v221;
        goto LABEL_16;
      }

      v195 = v176;
      v196 = v228;

      if (v195)
      {
        sub_1D6659A24();
        sub_1D72647EC();
        v192 = v196;
        v234 = 0;

        v198 = v238;

        sub_1D5CBF568(v198);

        sub_1D5D2CFE8(v221, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        v234 = 0;

        v197 = v238;

        sub_1D5CBF568(v197);

        sub_1D5D2CFE8(v221, type metadata accessor for FormatVersionRequirement);
        v192 = v196;
      }

      v193 = v232;
      v131 = v233;
    }

    else
    {
      v192 = v228;

      sub_1D5D2CFE8(v158, type metadata accessor for FormatVersionRequirement);

      v131 = v233;
      v193 = v232;
    }

    v199 = v231;
    swift_beginAccess();
    v200 = *(v199 + 152);
    v201 = v219;
    v225(v219, v224, v223);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v240) = 0;
    v202 = swift_allocObject();
    v231 = xmmword_1D72BAAB0;
    *(v202 + 16) = xmmword_1D72BAAB0;
    *(v202 + 32) = v240;
    *(v202 + 40) = v226;
    *(v202 + 48) = v192;
    sub_1D668984C();
    sub_1D5B58B84(&qword_1EDF036B8, sub_1D668984C);

    v230 = v200;

    v203 = sub_1D72647CC();
    LOBYTE(v240) = 0;
    v204 = swift_allocObject();
    *(v204 + 16) = v203;
    *(v204 + 24) = v231;
    *(v204 + 40) = v240;
    v205 = __swift_project_boxed_opaque_existential_1((v131 + *(v193 + 36)), *(v131 + *(v193 + 36) + 24));
    MEMORY[0x1EEE9AC00](v205, v206);
    MEMORY[0x1EEE9AC00](v207, v208);
    *(&v216 - 4) = sub_1D5B4AA6C;
    *(&v216 - 3) = 0;
    v214 = sub_1D6708A18;
    v215 = v202;
    v209 = v234;
    v211 = sub_1D5D2F7A4(v201, sub_1D615B49C, v210, sub_1D615B4A4, (&v216 - 6));
    if (v209)
    {
      sub_1D5D2CFE8(v201, type metadata accessor for FormatVersionRequirement);

      goto LABEL_54;
    }

    v212 = v211;
    v213 = v230;

    if ((v212 & 1) == 0)
    {
      sub_1D5D2CFE8(v219, type metadata accessor for FormatVersionRequirement);

      goto LABEL_55;
    }

    v240 = v231;
    v241 = 0;
    v247 = v213;
    sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
    sub_1D66594A0();
    sub_1D72647EC();
    v183 = v219;

LABEL_43:
    sub_1D5D2CFE8(v183, type metadata accessor for FormatVersionRequirement);
LABEL_55:
    v100 = v131;
    return sub_1D5D2CFE8(v100, sub_1D66897B8);
  }

  v99 = v233;

  sub_1D5D2CFE8(v95, type metadata accessor for FormatVersionRequirement);
  v100 = v99;
  return sub_1D5D2CFE8(v100, sub_1D66897B8);
}

uint64_t sub_1D649CE50(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 2019912806;
    v6 = 0x6E6572646C696863;
    if (a1 != 8)
    {
      v6 = 1885433183;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x656D7473756A6461;
    if (a1 != 5)
    {
      v7 = 0x74756F79616CLL;
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
    v1 = 0x696669746E656469;
    v2 = 0x7470697263736564;
    v3 = 1702521203;
    if (a1 != 3)
    {
      v3 = 0x657A69736572;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1701667182;
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

uint64_t sub_1D649CF80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D668C580(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D649CFB8(uint64_t a1)
{
  v2 = sub_1D66899B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D649CFF4(uint64_t a1)
{
  v2 = sub_1D66899B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatFlexBoxNodeDisplay.encode(to:)(void *a1)
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
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v15 = sub_1D725BD1C();
  v16 = __swift_project_value_buffer(v15, qword_1EDFFCE38);
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

uint64_t FormatFlexBoxNodeItem.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v37 = a2;
  sub_1D6689B44();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6689BD8();
  sub_1D5B58B84(&qword_1EDF252C8, sub_1D6689BD8);
  sub_1D7264B0C();
  if (v2)
  {
    v10 = v2;
LABEL_3:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  v14 = v9;
  if (v13)
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
          goto LABEL_10;
        }
      }

      v19 = *(v17 - 2);
      v18 = *(v17 - 1);

      v20 = sub_1D661AC84();
      sub_1D5E2D970();
      v10 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v6 + 8))(v14, v5);
      goto LABEL_3;
    }

LABEL_10:
  }

  v35 = 0uLL;
  v36 = 0;
  if (sub_1D726434C())
  {
    v33 = 0uLL;
    v34 = 0;
    sub_1D6689E3C();
    sub_1D5B58B84(&qword_1EDF24720, sub_1D6689E3C);
    sub_1D726431C();
    v23 = v31;
    v22 = v32;
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
    v23 = &unk_1F5114D28;
  }

  v30 = xmmword_1D728CF30;
  v35 = xmmword_1D728CF30;
  v36 = 0;
  if (sub_1D726434C())
  {
    v33 = v30;
    v34 = 0;
    sub_1D6689E3C();
    sub_1D5B58B84(&qword_1EDF24720, sub_1D6689E3C);
    sub_1D726431C();
    *&v30 = v23;
    v25 = v31;
    v24 = v32;
  }

  else
  {
    *&v30 = v23;
    v24 = MEMORY[0x1E69E7CC0];
    v25 = &unk_1F5114D28;
  }

  v29 = xmmword_1D7297410;
  v35 = xmmword_1D7297410;
  v36 = 0;
  if (sub_1D726434C())
  {
    v33 = v29;
    v34 = 0;
    sub_1D5C30060(0, &qword_1EDF24708, sub_1D6689D58, &type metadata for FormatFlexBoxNodeItemFlex, type metadata accessor for FormatSelectorSimpleValue);
    sub_1D6689DAC();
    sub_1D726431C();
    (*(v6 + 8))(v14, v5);
    v27 = v31;
    v26 = v32;
    sub_1D5DEA234(v31);

    sub_1D5CBF568(v27);
  }

  else
  {
    (*(v6 + 8))(v14, v5);
    v26 = MEMORY[0x1E69E7CC0];
    v27 = 2;
  }

  v28 = v37;
  *v37 = v30;
  v28[1] = v22;
  v28[2] = v25;
  v28[3] = v24;
  v28[4] = v27;
  v28[5] = v26;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatFlexBoxNodeItem.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v106 = &v103 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v103 - v12;
  sub_1D6689ED8();
  v122 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v18 = v1[1];
  v20 = v1[2];
  v112 = v1[3];
  v113 = v20;
  v21 = v1[5];
  v103 = v1[4];
  v104 = v21;
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1D6689BD8();
  v25 = v24;
  v26 = sub_1D5B58B84(&qword_1EDF252C8, sub_1D6689BD8);
  v114 = v17;
  v27 = v23;
  v28 = v19;
  sub_1D5D2EE70(&type metadata for FormatFlexBoxNodeItem, v25, v29, v22, &type metadata for FormatFlexBoxNodeItem, v25, &type metadata for FormatVersions.CrystalGlowE, v27, v17, v26, &off_1F51F6C98);
  v30 = qword_1EDF31F38;

  *&v117 = v18;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = sub_1D725BD1C();
  v32 = __swift_project_value_buffer(v31, qword_1EDFFCE38);
  v33 = *(v31 - 8);
  v34 = *(v33 + 16);
  v110 = v32;
  v111 = v31;
  v108 = v33 + 16;
  v109 = v34;
  (v34)(v13);
  v35 = type metadata accessor for FormatVersionRequirement.Value(0);
  v115 = v13;
  v107 = v35;
  swift_storeEnumTagMultiPayload();
  v36 = sub_1D633D10C(v19, &unk_1F50F2D18);
  v105 = v6;
  if (v36)
  {
    v37 = v6;
    v38 = v117;

    v39 = MEMORY[0x1E69E7CC0];

    v40 = sub_1D6354F50(v38, v39);

    swift_bridgeObjectRelease_n();
    v41 = v114;
    if (v40)
    {
      sub_1D5D2CFE8(v115, type metadata accessor for FormatVersionRequirement);

      v42 = v116;
      goto LABEL_12;
    }
  }

  else
  {

    v41 = v114;
  }

  v114 = v28;
  v43 = v122;
  v44 = (v41 + *(v122 + 44));
  v45 = *v44;
  v46 = v44[1];
  LOBYTE(v120) = 0;
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  *(v47 + 24) = 0;
  *(v47 + 32) = v120;
  *(v47 + 40) = v45;
  *(v47 + 48) = v46;
  sub_1D6689F6C();
  sub_1D5B58B84(&qword_1EDF032D8, sub_1D6689F6C);

  v48 = sub_1D72647CC();
  LOBYTE(v120) = 0;
  v49 = swift_allocObject();
  *(v49 + 24) = 0;
  *(v49 + 32) = 0;
  *(v49 + 16) = v48;
  *(v49 + 40) = v120;
  v50 = __swift_project_boxed_opaque_existential_1((v41 + *(v43 + 36)), *(v41 + *(v43 + 36) + 24));
  MEMORY[0x1EEE9AC00](v50, v51);
  MEMORY[0x1EEE9AC00](v52, v53);
  *(&v103 - 4) = sub_1D5B4AA6C;
  *(&v103 - 3) = 0;
  v101 = sub_1D668A000;
  v102 = v47;
  v55 = v115;
  v54 = v116;
  v57 = sub_1D5D2F7A4(v115, sub_1D615B49C, v56, sub_1D615B4A4, (&v103 - 6));
  v42 = v54;
  if (v54)
  {
    sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);

    sub_1D5D2CFE8(v41, sub_1D6689ED8);
  }

  v58 = v57;

  if (v58)
  {
    v120 = 0uLL;
    v121 = 0;
    v118 = v114;
    v119 = v117;
    sub_1D6689E3C();
    sub_1D5B58B84(&qword_1EDF0BF98, sub_1D6689E3C);

    sub_1D72647EC();
    v37 = v105;

    sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);

    v37 = v105;
  }

LABEL_12:
  v59 = v106;
  v109(v106, v110, v111);
  swift_storeEnumTagMultiPayload();
  v60 = v113;

  v61 = v112;

  v62 = sub_1D633D10C(v60, &unk_1F50F2D18);
  v63 = v122;
  if (v62)
  {

    v64 = MEMORY[0x1E69E7CC0];

    v65 = sub_1D6354F50(v61, v64);

    swift_bridgeObjectRelease_n();
    if (v65)
    {
      sub_1D5D2CFE8(v59, type metadata accessor for FormatVersionRequirement);

      goto LABEL_15;
    }
  }

  else
  {
  }

  v66 = (v41 + *(v63 + 44));
  v67 = *v66;
  v68 = v66[1];
  LOBYTE(v120) = 0;
  v69 = v59;
  v70 = swift_allocObject();
  v117 = xmmword_1D728CF30;
  *(v70 + 16) = xmmword_1D728CF30;
  *(v70 + 32) = v120;
  *(v70 + 40) = v67;
  *(v70 + 48) = v68;
  sub_1D6689F6C();
  v72 = v71;
  sub_1D5B58B84(&qword_1EDF032D8, sub_1D6689F6C);

  v115 = v72;
  v73 = sub_1D72647CC();
  LOBYTE(v120) = 0;
  v74 = swift_allocObject();
  *(v74 + 16) = v73;
  *(v74 + 24) = v117;
  *(v74 + 40) = v120;
  v75 = __swift_project_boxed_opaque_existential_1((v41 + *(v63 + 36)), *(v41 + *(v63 + 36) + 24));
  v116 = &v103;
  MEMORY[0x1EEE9AC00](v75, v76);
  MEMORY[0x1EEE9AC00](v77, v78);
  *(&v103 - 4) = sub_1D5B4AA6C;
  *(&v103 - 3) = 0;
  v101 = sub_1D6708A1C;
  v102 = v70;
  v80 = sub_1D5D2F7A4(v69, sub_1D615B49C, v79, sub_1D615B4A4, (&v103 - 6));
  if (!v42)
  {
    v81 = v80;

    if ((v81 & 1) == 0)
    {
      sub_1D5D2CFE8(v106, type metadata accessor for FormatVersionRequirement);

      v37 = v105;
      v63 = v122;
LABEL_22:
      v109(v37, v110, v111);
      swift_storeEnumTagMultiPayload();
      v82 = v103;
      sub_1D5DEA234(v103);
      v83 = v104;

      LOBYTE(v82) = sub_1D6366448(v82, v83, 2uLL, MEMORY[0x1E69E7CC0]);
      sub_1D5CBF568(2uLL);

      if ((v82 & 1) == 0)
      {
        v84 = (v41 + *(v63 + 44));
        v85 = *v84;
        v86 = v84[1];
        LOBYTE(v120) = 0;
        v87 = swift_allocObject();
        v117 = xmmword_1D7297410;
        *(v87 + 16) = xmmword_1D7297410;
        *(v87 + 32) = v120;
        *(v87 + 40) = v85;
        *(v87 + 48) = v86;
        sub_1D6689F6C();
        v89 = v88;
        sub_1D5B58B84(&qword_1EDF032D8, sub_1D6689F6C);

        v122 = v89;
        v90 = sub_1D72647CC();
        LOBYTE(v120) = 0;
        v91 = swift_allocObject();
        *(v91 + 16) = v90;
        *(v91 + 24) = v117;
        *(v91 + 40) = v120;
        v92 = __swift_project_boxed_opaque_existential_1((v41 + *(v63 + 36)), *(v41 + *(v63 + 36) + 24));
        MEMORY[0x1EEE9AC00](v92, v93);
        MEMORY[0x1EEE9AC00](v94, v95);
        *(&v103 - 4) = sub_1D5B4AA6C;
        *(&v103 - 3) = 0;
        v101 = sub_1D6708A1C;
        v102 = v87;
        v97 = sub_1D5D2F7A4(v37, sub_1D615B49C, v96, sub_1D615B4A4, (&v103 - 6));
        if (v42)
        {
          sub_1D5D2CFE8(v37, type metadata accessor for FormatVersionRequirement);

          goto LABEL_26;
        }

        v99 = v97;

        if (v99)
        {
          v120 = v117;
          v121 = 0;
          v100 = v103;
          v118 = v103;
          v119 = v104;
          sub_1D5DEA234(v103);
          sub_1D5C30060(0, &qword_1EDF24708, sub_1D6689D58, &type metadata for FormatFlexBoxNodeItemFlex, type metadata accessor for FormatSelectorSimpleValue);
          sub_1D668A07C();

          sub_1D72647EC();
          sub_1D5CBF568(v118);

          sub_1D5D2CFE8(v105, type metadata accessor for FormatVersionRequirement);
          sub_1D5D2CFE8(v41, sub_1D6689ED8);
          sub_1D5CBF568(v100);
        }

        v37 = v105;
      }

      sub_1D5D2CFE8(v37, type metadata accessor for FormatVersionRequirement);
LABEL_26:
      sub_1D5D2CFE8(v41, sub_1D6689ED8);
      sub_1D5CBF568(v103);
    }

    v120 = v117;
    v121 = 0;
    v118 = v113;
    v119 = v112;
    sub_1D6689E3C();
    sub_1D5B58B84(&qword_1EDF0BF98, sub_1D6689E3C);

    sub_1D72647EC();
    v37 = v105;
    v63 = v122;

    sub_1D5D2CFE8(v106, type metadata accessor for FormatVersionRequirement);

LABEL_15:

    goto LABEL_22;
  }

  sub_1D5D2CFE8(v69, type metadata accessor for FormatVersionRequirement);

  sub_1D5D2CFE8(v41, sub_1D6689ED8);
}

uint64_t sub_1D649E870()
{
  v1 = 0x726564726FLL;
  v2 = 2019912806;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x797469726F697270;
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

uint64_t sub_1D649E8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D668C8B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D649E910(uint64_t a1)
{
  v2 = sub_1D6689CB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D649E94C(uint64_t a1)
{
  v2 = sub_1D6689CB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatFlexBoxNodeItemFlex.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatFlexBoxNodeItemFlex, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatFlexBoxNodeItemFlex, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowE, v25, v22, v26, &off_1F51F6C98);
  if (v23)
  {
    if (v23 == 1)
    {
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCE38);
      (*(*(v31 - 8) + 16))(v14, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6424A3C(1, v14);
      v30 = v14;
    }

    else if (v23 == 2)
    {
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v28 = sub_1D725BD1C();
      v29 = __swift_project_value_buffer(v28, qword_1EDFFCE38);
      (*(*(v28 - 8) + 16))(v10, v29, v28);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6424A3C(2, v10);
      v30 = v10;
    }

    else
    {
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCE38);
      (*(*(v35 - 8) + 16))(v6, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63C5F7C(3, v23, v6);
      v30 = v6;
    }
  }

  else
  {
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCE38);
    (*(*(v33 - 8) + 16))(v18, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6424A3C(0, v18);
    v30 = v18;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t sub_1D649EEAC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D649EF58()
{
  sub_1D72621EC();
}

uint64_t sub_1D649EFF0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D649F098@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D66635DC();
  *a1 = result;
  return result;
}

void sub_1D649F0C8(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6C616974696E69;
  v4 = 0xE500000000000000;
  v5 = 0x6465786966;
  if (*v1 != 2)
  {
    v5 = 2003792487;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 1869903201;
    v2 = 0xE400000000000000;
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

uint64_t sub_1D649F1E0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x61476E6D756C6F63;
    v6 = 0x6C61726765746E69;
    if (a1 != 8)
    {
      v6 = 1885433183;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6574496E67696C61;
    if (a1 != 5)
    {
      v7 = 0x706147776F72;
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
    v1 = 0x79616C70736964;
    v2 = 1885434487;
    v3 = 0x437966697473756ALL;
    if (a1 != 3)
    {
      v3 = 0x6E6F436E67696C61;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6F69746365726964;
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

uint64_t sub_1D649F338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D668CA14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D649F370(uint64_t a1)
{
  v2 = sub_1D6665CC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D649F3AC(uint64_t a1)
{
  v2 = sub_1D6665CC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatFlexibleExpression.encode(to:)(void *a1)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D668A160();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D5CC92D8();
  v17 = v16;
  v18 = sub_1D5B58B84(&qword_1EC886B30, sub_1D5CC92D8);
  sub_1D5D2EE70(&type metadata for FormatFlexibleExpression, v17, v19, v14, &type metadata for FormatFlexibleExpression, v17, &type metadata for FormatVersions.JazzkonC, v15, v12, v18, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCD30);
  (*(*(v20 - 8) + 16))(v7, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v22 = &v12[*(v9 + 44)];
  v24 = *v22;
  v23 = *(v22 + 1);
  v51 = 0;
  v25 = swift_allocObject();
  v27 = v25;
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = v51;
  *(v25 + 40) = v24;
  *(v25 + 48) = v23;
  if (v13 == 3)
  {
  }

  else
  {
    v46 = v44;
    v51 = v13;
    MEMORY[0x1EEE9AC00](v25, v26);
    v44[-4] = sub_1D5B4AA6C;
    v44[-3] = 0;
    v42 = sub_1D6708A20;
    v43 = v27;
    v47 = 0;
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    *(v28 + 32) = v47;
    *(v28 + 40) = v24;
    *(v28 + 48) = v23;
    sub_1D668A1F4();
    v45 = v2;
    v30 = v29;
    sub_1D5B58B84(&qword_1EC886B48, sub_1D668A1F4);
    swift_retain_n();
    v44[1] = v30;
    v31 = sub_1D72647CC();
    v47 = 0;
    v32 = swift_allocObject();
    *(v32 + 24) = 0;
    *(v32 + 32) = 0;
    *(v32 + 16) = v31;
    *(v32 + 40) = v47;
    v33 = __swift_project_boxed_opaque_existential_1(&v12[*(v9 + 36)], *&v12[*(v9 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v33, v34);
    MEMORY[0x1EEE9AC00](v35, v36);
    v44[-4] = sub_1D615B4A4;
    v44[-3] = &v44[-6];
    v42 = sub_1D668A288;
    v43 = v28;
    v37 = v45;
    v39 = sub_1D5D2F7A4(v7, sub_1D615B49C, v38, sub_1D615B4A4, &v44[-6]);
    if (v37)
    {
      sub_1D5D2CFE8(v7, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v12, sub_1D668A160);
    }

    v41 = v39;

    if (v41)
    {
      sub_1D668A304();
      sub_1D72647EC();
    }
  }

  sub_1D5D2CFE8(v7, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v12, sub_1D668A160);
}

uint64_t sub_1D649F920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL;
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

uint64_t sub_1D649FA14(uint64_t a1)
{
  v2 = sub_1D5CC945C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D649FA50(uint64_t a1)
{
  v2 = sub_1D5CC945C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatFlexibleExpression.Direction.encode(to:)(void *a1)
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

uint64_t FormatFloatBinding.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
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

    v13 = v10;
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
          *(v20 + 16) = &unk_1F5114DB0;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v13, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D668A358();
    v26 = 0uLL;
    sub_1D726431C();
    if (v27)
    {
      v22 = v25;
      v26 = xmmword_1D7279980;
      if (v27 == 1)
      {
        sub_1D665979C();
        sub_1D726431C();
        (*(v7 + 8))(v13, v6);
        v23 = v27 | 0x20;
      }

      else
      {
        sub_1D5EA5B18();
        sub_1D726431C();
        (*(v7 + 8))(v13, v6);
        v23 = v27 | 0x40;
      }
    }

    else
    {
      v26 = xmmword_1D7279980;
      sub_1D66597F0();
      sub_1D726431C();
      v22 = v25;
      (*(v7 + 8))(v13, v6);
      v23 = v27;
    }

    *v22 = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatFloatBinding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v33 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v33 - v13;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatFloatBinding, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatFloatBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyE, v21, v18, v22, &off_1F51F6CB8);
  v24 = (v19 >> 5) & 3;
  if (v24)
  {
    if (v24 == 1)
    {
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v25 = sub_1D725BD1C();
      v26 = __swift_project_value_buffer(v25, qword_1EDFFCE80);
      (*(*(v25 - 8) + 16))(v10, v26, v25);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63AD614(1, v19 & 0x9F, v10);
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
      sub_1D63AD7A8(2, v19 & 0x9F, v6);
      v27 = v6;
    }
  }

  else
  {
    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCCE8);
    (*(*(v28 - 8) + 16))(v14, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63AD480(0, v19, v14);
    v27 = v14;
  }

  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D64A06C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7453656C7A7A7570;
  v4 = 0xEF63697473697461;
  if (v2 != 1)
  {
    v3 = 0x70756F7267;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656E696C64616568;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x7453656C7A7A7570;
  v8 = 0xEF63697473697461;
  if (*a2 != 1)
  {
    v7 = 0x70756F7267;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656E696C64616568;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
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

uint64_t sub_1D64A07DC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64A0888()
{
  sub_1D72621EC();
}

uint64_t sub_1D64A0920()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64A09C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D66638D4();
  *a1 = result;
  return result;
}

void sub_1D64A09F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEF63697473697461;
  v5 = 0x7453656C7A7A7570;
  if (v2 != 1)
  {
    v5 = 0x70756F7267;
    v4 = 0xE500000000000000;
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

uint64_t FormatFocusParameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  sub_1D668A3AC();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D668A440();
  sub_1D5B58B84(&qword_1EDF252B8, sub_1D668A440);
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

  v13 = v33;
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

      v20 = sub_1D6627E68(0x65736E4965676465, 0xEA00000000007374, 0x6E6F697469736F70, 0xE800000000000000);
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

  sub_1D5CD49DC();
  v27 = 0;
  v28 = 0;
  v29 = 0;
  sub_1D726427C();
  v25 = v31;
  v26 = v30;
  v17 = v32;
  v30 = xmmword_1D728CF30;
  LOBYTE(v31) = 0;
  sub_1D668A5C0();
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v23 = v27;
  v24 = v25;
  *v13 = v26;
  *(v13 + 16) = v24;
  *(v13 + 32) = v17;
  *(v13 + 33) = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatFocusParameters.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v83 = v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v76 - v8;
  sub_1D668A614();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 16);
  v78 = *v1;
  v79 = v15;
  v16 = *(v1 + 32);
  v93 = *(v1 + 33);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D668A440();
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF252B8, sub_1D668A440);
  sub_1D5D2EE70(&type metadata for FormatFocusParameters, v20, v22, v17, &type metadata for FormatFocusParameters, v20, &type metadata for FormatVersions.CrystalGlow, v18, v14, v21, &off_1F51F6B38);
  if (qword_1EDF31F48 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCE68);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  *&v84 = v24;
  v81 = v25 + 16;
  v82 = v26;
  v26(v9);
  v80 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v89 = 0;
  v90 = 0;
  v91 = 0;
  v27 = &v14[*(v11 + 44)];
  v28 = v14;
  v29 = *v27;
  v30 = *(v27 + 1);
  LOBYTE(v87) = 0;
  v31 = swift_allocObject();
  v33 = v31;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v87;
  *(v31 + 40) = v29;
  *(v31 + 48) = v30;
  v86 = v28;
  v77 = v11;
  if (v16)
  {

    goto LABEL_5;
  }

  v76[2] = v76;
  v87 = v78;
  v88 = v79;
  MEMORY[0x1EEE9AC00](v31, v32);
  *&v79 = &v76[-6];
  v76[-4] = sub_1D5B4AA6C;
  v76[-3] = 0;
  v74 = sub_1D6708A24;
  v75 = v33;
  v92 = 0;
  v39 = swift_allocObject();
  v40 = v29;
  v41 = v39;
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  *(v39 + 32) = v92;
  *&v78 = v40;
  *(v39 + 40) = v40;
  *(v39 + 48) = v30;
  sub_1D668A6A8();
  v43 = v42;
  v44 = sub_1D5B58B84(&qword_1EDF032C8, sub_1D668A6A8);
  swift_retain_n();
  v76[1] = v43;
  v76[0] = v44;
  v45 = v11;
  v46 = sub_1D72647CC();
  v92 = 0;
  v47 = swift_allocObject();
  *(v47 + 24) = 0;
  *(v47 + 32) = 0;
  *(v47 + 16) = v46;
  *(v47 + 40) = v92;
  v48 = __swift_project_boxed_opaque_existential_1(&v28[*(v45 + 36)], *&v28[*(v45 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v48, v49);
  MEMORY[0x1EEE9AC00](v50, v51);
  v52 = v79;
  v76[-4] = sub_1D615B4A4;
  v76[-3] = v52;
  v74 = sub_1D6708A24;
  v75 = v41;
  v53 = v85;
  v55 = sub_1D5D2F7A4(v9, sub_1D615B49C, v54, sub_1D615B4A4, &v76[-6]);
  if (!v53)
  {
    v71 = v55;
    v72 = v78;

    if (v71)
    {
      sub_1D667D9C4();
      sub_1D72647EC();
      v29 = v72;
      v85 = 0;
    }

    else
    {
      v85 = 0;
      v29 = v72;
    }

LABEL_5:
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v34 = v83;
    (v82)(v83, v84, v23);
    swift_storeEnumTagMultiPayload();
    v84 = xmmword_1D728CF30;
    v87 = xmmword_1D728CF30;
    LOBYTE(v88) = 0;
    LOBYTE(v89) = 0;
    v35 = swift_allocObject();
    v37 = v35;
    *(v35 + 16) = v84;
    *(v35 + 32) = v89;
    *(v35 + 40) = v29;
    *(v35 + 48) = v30;
    if (v93 == 3)
    {

      v38 = v86;
    }

    else
    {
      v82 = v76;
      LOBYTE(v89) = v93;
      MEMORY[0x1EEE9AC00](v35, v36);
      v76[-4] = sub_1D5B4AA6C;
      v76[-3] = 0;
      v74 = sub_1D6708A24;
      v75 = v37;
      v92 = 0;
      v57 = swift_allocObject();
      v58 = v29;
      v59 = v57;
      *(v57 + 16) = v84;
      *(v57 + 32) = v92;
      *(v57 + 40) = v58;
      *(v57 + 48) = v30;
      sub_1D668A6A8();
      sub_1D5B58B84(&qword_1EDF032C8, sub_1D668A6A8);
      swift_retain_n();
      v60 = v86;
      v61 = sub_1D72647CC();
      v92 = 0;
      v62 = swift_allocObject();
      *(v62 + 16) = v61;
      *(v62 + 24) = v84;
      *(v62 + 40) = v92;
      v63 = __swift_project_boxed_opaque_existential_1((v60 + *(v77 + 36)), *(v60 + *(v77 + 36) + 24));
      MEMORY[0x1EEE9AC00](v63, v64);
      MEMORY[0x1EEE9AC00](v65, v66);
      v76[-4] = sub_1D615B4A4;
      v76[-3] = &v76[-6];
      v74 = sub_1D668A73C;
      v75 = v59;
      v67 = v85;
      v69 = sub_1D5D2F7A4(v34, sub_1D615B49C, v68, sub_1D615B4A4, &v76[-6]);
      if (v67)
      {
        sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);

        v38 = v86;
        goto LABEL_12;
      }

      v73 = v69;

      if (v73)
      {
        sub_1D668A7B8();
        v38 = v86;
        sub_1D72647EC();
      }

      else
      {
        v38 = v86;
      }

      v34 = v83;
    }

    sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);

LABEL_12:
    v56 = v38;
    return sub_1D5D2CFE8(v56, sub_1D668A614);
  }

  sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

  v56 = v86;
  return sub_1D5D2CFE8(v56, sub_1D668A614);
}

uint64_t sub_1D64A17C8()
{
  v1 = 0x6E6F697469736F70;
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
    return 0x65736E4965676465;
  }
}

uint64_t sub_1D64A1820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D668CD50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64A1858(uint64_t a1)
{
  v2 = sub_1D668A518();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64A1894(uint64_t a1)
{
  v2 = sub_1D668A518();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatFocusPosition.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatFocusPosition, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatFocusPosition, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlow, v21, v18, v22, &off_1F51F6B38);
  if (v19)
  {
    if (v19 == 1)
    {
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v24 = sub_1D725BD1C();
      v25 = __swift_project_value_buffer(v24, qword_1EDFFCE68);
      (*(*(v24 - 8) + 16))(v10, v25, v24);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6421834(1, v10);
      v26 = v10;
    }

    else
    {
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v29 = sub_1D725BD1C();
      v30 = __swift_project_value_buffer(v29, qword_1EDFFCE68);
      (*(*(v29 - 8) + 16))(v6, v30, v29);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6421834(2, v6);
      v26 = v6;
    }
  }

  else
  {
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCE68);
    (*(*(v27 - 8) + 16))(v14, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6421834(0, v14);
    v26 = v14;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D64A1CF0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x6564697374756FLL;
  if (v2 != 1)
  {
    v4 = 0x656469736E69;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6974616D6F747561;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000063;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6564697374756FLL;
  if (*a2 != 1)
  {
    v8 = 0x656469736E69;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6974616D6F747561;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000063;
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

uint64_t sub_1D64A1DEC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64A1E90()
{
  sub_1D72621EC();
}

uint64_t sub_1D64A1F20()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64A1FC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6663BCC();
  *a1 = result;
  return result;
}

void sub_1D64A1FF0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000063;
  v4 = 0xE700000000000000;
  v5 = 0x6564697374756FLL;
  if (v2 != 1)
  {
    v5 = 0x656469736E69;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6974616D6F747561;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D64A210C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64A21E4()
{
  sub_1D72621EC();
}

uint64_t sub_1D64A22A8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t FormatFontAttributes.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D668A860();
  v7 = v6;
  v39 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D668A8F4();
  sub_1D5B58B84(&qword_1EDF253F8, sub_1D668A8F4);
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

      v25 = *(v17 - 2);
      v24 = *(v17 - 1);

      v26 = sub_1D661AE04();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v27 = v25;
      *(v27 + 8) = v24;
      *(v27 + 16) = v26;
      *(v27 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v14, v7);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D668AA74();
  v37 = 0uLL;
  v38 = 0;
  sub_1D726427C();
  v18 = v35;
  v37 = xmmword_1D728CF30;
  v38 = 0;
  sub_1D5B57870();
  sub_1D726427C();
  v19 = v10;
  v20 = v7;
  v21 = v35;
  v22 = v36;
  v37 = xmmword_1D7297410;
  v38 = 0;
  v23 = sub_1D726426C();
  HIDWORD(v31) = v22;
  v32 = v21;
  v33 = v23;
  v34 = v29;
  v37 = xmmword_1D72BAA60;
  v38 = 0;
  sub_1D61508A4();
  sub_1D726427C();
  (*(v39 + 8))(v19, v20);
  v30 = v35;
  *a2 = v18;
  *(a2 + 8) = v32;
  *(a2 + 16) = BYTE4(v31);
  *(a2 + 24) = v33;
  *(a2 + 32) = v34 & 1;
  *(a2 + 33) = v30;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatFontAttributes.encode(to:)(void *a1)
{
  v3 = v2;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v120 = v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v126 = v116 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  *&v128 = v116 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v116 - v16;
  sub_1D668AAC8();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v1;
  v24 = *(v1 + 1);
  LODWORD(v124) = v1[16];
  v118 = *(v1 + 3);
  LODWORD(v123) = v1[32];
  v119 = v1[33];
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1D668A8F4();
  v28 = v27;
  v29 = sub_1D5B58B84(&qword_1EDF253F8, sub_1D668A8F4);
  sub_1D5D2EE70(&type metadata for FormatFontAttributes, v28, v30, v25, &type metadata for FormatFontAttributes, v28, &type metadata for FormatVersions.StarSky, v26, v22, v29, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v31 = sub_1D725BD1C();
  v32 = __swift_project_value_buffer(v31, qword_1EDFFCD50);
  v33 = *(v31 - 8);
  v131 = *(v33 + 16);
  *&v132 = v32;
  v130 = v33 + 16;
  v131(v17);
  v129 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v136 = 0uLL;
  v137 = 0;
  v34 = &v22[*(v19 + 44)];
  v35 = *v34;
  v36 = *(v34 + 1);
  v37 = v22;
  LOBYTE(v135) = 0;
  v38 = swift_allocObject();
  v40 = v19;
  v41 = v38;
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = v135;
  *(v38 + 40) = v35;
  *(v38 + 48) = v36;
  v133 = v37;
  v122 = v31;
  if (v23 == 10)
  {
    v121 = v40;
    v125 = v2;

    v42 = v126;
  }

  else
  {
    *&v127 = v116;
    LOBYTE(v135) = v23;
    MEMORY[0x1EEE9AC00](v38, v39);
    v125 = &v116[-6];
    v116[-4] = sub_1D5B4AA6C;
    v116[-3] = 0;
    v114 = sub_1D6708A28;
    v115 = v41;
    v134 = 0;
    v48 = swift_allocObject();
    *(v48 + 16) = 0;
    *(v48 + 24) = 0;
    *(v48 + 32) = v134;
    *(v48 + 40) = v35;
    *(v48 + 48) = v36;
    sub_1D668AB5C();
    v50 = v49;
    v51 = sub_1D5B58B84(&qword_1EDF03438, sub_1D668AB5C);
    swift_retain_n();
    v116[1] = v50;
    v116[0] = v51;
    v52 = sub_1D72647CC();
    v117 = v36;
    v53 = v52;
    v134 = 0;
    v54 = swift_allocObject();
    *(v54 + 24) = 0;
    *(v54 + 32) = 0;
    *(v54 + 16) = v53;
    *(v54 + 40) = v134;
    v55 = __swift_project_boxed_opaque_existential_1(&v37[*(v40 + 36)], *&v37[*(v40 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v55, v56);
    MEMORY[0x1EEE9AC00](v57, v58);
    v59 = v125;
    v116[-4] = sub_1D615B4A4;
    v116[-3] = v59;
    v114 = sub_1D6708A28;
    v115 = v48;
    v61 = sub_1D5D2F7A4(v17, sub_1D615B49C, v60, sub_1D615B4A4, &v116[-6]);
    if (v3)
    {
      sub_1D5D2CFE8(v17, type metadata accessor for FormatVersionRequirement);

LABEL_22:

      goto LABEL_23;
    }

    v74 = v61;
    v36 = v117;
    v121 = v40;

    if (v74)
    {
      sub_1D668AC6C();
      sub_1D72647EC();
      v42 = v126;
      v31 = v122;
      v125 = 0;
    }

    else
    {
      v125 = 0;
      v42 = v126;
      v31 = v122;
    }
  }

  sub_1D5D2CFE8(v17, type metadata accessor for FormatVersionRequirement);

  v43 = v128;
  (v131)(v128, v132, v31);
  swift_storeEnumTagMultiPayload();
  v127 = xmmword_1D728CF30;
  v136 = xmmword_1D728CF30;
  v137 = 0;
  LOBYTE(v135) = 0;
  v44 = swift_allocObject();
  v46 = v44;
  *(v44 + 16) = v127;
  *(v44 + 32) = v135;
  v47 = v35;
  *(v44 + 40) = v35;
  *(v44 + 48) = v36;
  if (v124)
  {

LABEL_18:
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

    (v131)(v42, v132, v31);
    swift_storeEnumTagMultiPayload();
    v128 = xmmword_1D7297410;
    v136 = xmmword_1D7297410;
    v137 = 0;
    LOBYTE(v135) = 0;
    v77 = swift_allocObject();
    v79 = v77;
    *(v77 + 16) = v128;
    *(v77 + 32) = v135;
    *(v77 + 40) = v47;
    *(v77 + 48) = v36;
    if (v123)
    {

      v80 = v125;
      goto LABEL_27;
    }

    *&v127 = v116;
    v135 = v118;
    MEMORY[0x1EEE9AC00](v77, v78);
    v116[-4] = sub_1D5B4AA6C;
    v116[-3] = 0;
    v114 = sub_1D6708A28;
    v115 = v79;
    v134 = 0;
    v81 = swift_allocObject();
    *(v81 + 16) = v128;
    *(v81 + 32) = v134;
    *(v81 + 40) = v47;
    *(v81 + 48) = v36;
    sub_1D668AB5C();
    v83 = v82;
    sub_1D5B58B84(&qword_1EDF03438, sub_1D668AB5C);
    swift_retain_n();
    v123 = v83;
    v124 = v47;
    v84 = v133;
    v85 = sub_1D72647CC();
    v134 = 0;
    v86 = swift_allocObject();
    *(v86 + 16) = v85;
    *(v86 + 24) = v128;
    *(v86 + 40) = v134;
    v87 = __swift_project_boxed_opaque_existential_1((v84 + *(v121 + 36)), *(v84 + *(v121 + 36) + 24));
    MEMORY[0x1EEE9AC00](v87, v88);
    MEMORY[0x1EEE9AC00](v89, v90);
    v116[-4] = sub_1D615B4A4;
    v116[-3] = &v116[-6];
    v114 = sub_1D6708A28;
    v115 = v81;
    v91 = v125;
    v93 = sub_1D5D2F7A4(v42, sub_1D615B49C, v92, sub_1D615B4A4, &v116[-6]);
    v80 = v91;
    if (!v91)
    {
      v95 = v93;

      if (v95)
      {
        sub_1D72647EC();
      }

      v47 = v124;
      v31 = v122;
LABEL_27:
      sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);

      v96 = v120;
      (v131)(v120, v132, v31);
      swift_storeEnumTagMultiPayload();
      v132 = xmmword_1D72BAA60;
      v136 = xmmword_1D72BAA60;
      v137 = 0;
      LOBYTE(v135) = 0;
      v97 = swift_allocObject();
      v99 = v97;
      *(v97 + 16) = v132;
      *(v97 + 32) = v135;
      *(v97 + 40) = v47;
      *(v97 + 48) = v36;
      if (v119 == 4)
      {

        v100 = v133;
      }

      else
      {
        v125 = v80;
        v131 = v116;
        LOBYTE(v135) = v119;
        MEMORY[0x1EEE9AC00](v97, v98);
        v116[-4] = sub_1D5B4AA6C;
        v116[-3] = 0;
        v114 = sub_1D6708A28;
        v115 = v99;
        v134 = 0;
        v101 = swift_allocObject();
        *(v101 + 16) = v132;
        *(v101 + 32) = v134;
        *(v101 + 40) = v47;
        *(v101 + 48) = v36;
        sub_1D668AB5C();
        sub_1D5B58B84(&qword_1EDF03438, sub_1D668AB5C);
        swift_retain_n();
        v102 = v133;
        v103 = sub_1D72647CC();
        v134 = 0;
        v104 = swift_allocObject();
        *(v104 + 16) = v103;
        *(v104 + 24) = v132;
        *(v104 + 40) = v134;
        v105 = __swift_project_boxed_opaque_existential_1((v102 + *(v121 + 36)), *(v102 + *(v121 + 36) + 24));
        MEMORY[0x1EEE9AC00](v105, v106);
        MEMORY[0x1EEE9AC00](v107, v108);
        v116[-4] = sub_1D615B4A4;
        v116[-3] = &v116[-6];
        v114 = sub_1D668ABF0;
        v115 = v101;
        v109 = v125;
        v111 = sub_1D5D2F7A4(v96, sub_1D615B49C, v110, sub_1D615B4A4, &v116[-6]);
        if (v109)
        {
          sub_1D5D2CFE8(v96, type metadata accessor for FormatVersionRequirement);

          v100 = v133;
LABEL_36:
          v94 = v100;
          return sub_1D5D2CFE8(v94, sub_1D668AAC8);
        }

        v112 = v111;

        if (v112)
        {
          sub_1D61508F8();
          v100 = v133;
          sub_1D72647EC();
        }

        else
        {
          v100 = v133;
        }

        v96 = v120;
      }

      sub_1D5D2CFE8(v96, type metadata accessor for FormatVersionRequirement);

      goto LABEL_36;
    }

    sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);

    goto LABEL_22;
  }

  v117 = v116;
  v135 = v24;
  MEMORY[0x1EEE9AC00](v44, v45);
  v116[-4] = sub_1D5B4AA6C;
  v116[-3] = 0;
  v114 = sub_1D6708A28;
  v115 = v46;
  v134 = 0;
  v62 = swift_allocObject();
  *(v62 + 16) = v127;
  *(v62 + 32) = v134;
  *(v62 + 40) = v35;
  *(v62 + 48) = v36;
  sub_1D668AB5C();
  sub_1D5B58B84(&qword_1EDF03438, sub_1D668AB5C);
  swift_retain_n();
  v124 = v35;
  v63 = v133;
  v64 = sub_1D72647CC();
  v134 = 0;
  v65 = swift_allocObject();
  *(v65 + 16) = v64;
  *(v65 + 24) = v127;
  *(v65 + 40) = v134;
  v66 = __swift_project_boxed_opaque_existential_1((v63 + *(v121 + 36)), *(v63 + *(v121 + 36) + 24));
  MEMORY[0x1EEE9AC00](v66, v67);
  MEMORY[0x1EEE9AC00](v68, v69);
  v116[-4] = sub_1D615B4A4;
  v116[-3] = &v116[-6];
  v70 = v128;
  v114 = sub_1D6708A28;
  v115 = v62;
  v71 = v125;
  v73 = sub_1D5D2F7A4(v128, sub_1D615B49C, v72, sub_1D615B4A4, &v116[-6]);
  if (!v71)
  {
    v75 = v73;
    v76 = v124;

    if (v75)
    {
      sub_1D5B578C4();
      sub_1D72647EC();
      v31 = v122;
      v125 = 0;
      v47 = v76;
    }

    else
    {
      v125 = 0;
      v47 = v76;
      v31 = v122;
    }

    v43 = v128;
    v42 = v126;
    goto LABEL_18;
  }

  sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);

LABEL_23:
  v94 = v133;
  return sub_1D5D2CFE8(v94, sub_1D668AAC8);
}

uint64_t sub_1D64A3870()
{
  v1 = *v0;
  v2 = 0x6874646977;
  v3 = 0x6564617267;
  v4 = 0x6E6769736564;
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
    v2 = 0x746E616C73;
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

uint64_t sub_1D64A38F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D668CE70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64A392C(uint64_t a1)
{
  v2 = sub_1D668A9CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64A3968(uint64_t a1)
{
  v2 = sub_1D668A9CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatFontLineSizing.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D668ACC0();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D668AD54();
  sub_1D5B58B84(&qword_1EDF0C570, sub_1D668AD54);
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

      v20 = sub_1D6627E68(0x656C797473, 0xE500000000000000, 0x664F7265626D756ELL, 0xED000073656E694CLL);
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

  type metadata accessor for FormatTextNodeStyle();
  sub_1D5B58B84(&qword_1EDF2BD80, type metadata accessor for FormatTextNodeStyle);
  v26 = 0uLL;
  v27 = 0;
  sub_1D726427C();
  v17 = v28;
  sub_1D5C30060(0, &qword_1EDF32838, sub_1D5C5A3D0, &type metadata for FormatInteger, type metadata accessor for FormatEquation);
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D5CD3B58();
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  v13[1] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatFontLineSizing.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  *&v87 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v75 - v8;
  sub_1D668AED4();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v85 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D668AD54();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF0C570, sub_1D668AD54);
  sub_1D5D2EE70(&type metadata for FormatFontLineSizing, v19, v21, v16, &type metadata for FormatFontLineSizing, v19, &type metadata for FormatVersions.CrystalGlow, v17, v14, v20, &off_1F51F6B38);
  if (qword_1EDF31F48 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCE68);
  v24 = *(v22 - 8);
  v82 = *(v24 + 16);
  v83 = v23;
  v81 = v24 + 16;
  v82(v9);
  v80 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v91 = 0uLL;
  v92 = 0;
  v25 = &v14[*(v11 + 44)];
  v26 = v11;
  v27 = *v25;
  v28 = *(v25 + 1);
  LOBYTE(v93) = 0;
  v29 = swift_allocObject();
  v31 = v29;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v93;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  v88 = v14;
  v86 = v26;
  v84 = v27;
  if (v15)
  {
    v32 = v15;
    v76 = v22;
    v78 = &v75;
    v93 = v15;
    MEMORY[0x1EEE9AC00](v29, v30);
    v77 = &v75 - 6;
    *(&v75 - 4) = sub_1D5B4AA6C;
    *(&v75 - 3) = 0;
    v73 = sub_1D6708A2C;
    v74 = v31;
    v90 = 0;
    v33 = v9;
    v34 = v26;
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    *(v35 + 32) = v90;
    *(v35 + 40) = v27;
    *(v35 + 48) = v28;
    sub_1D668AF68();
    v37 = v36;
    v38 = sub_1D5B58B84(&qword_1EDF03428, sub_1D668AF68);
    swift_retain_n();

    v79 = v32;
    v75 = v37;
    v39 = v38;
    v40 = sub_1D72647CC();
    v90 = 0;
    v41 = swift_allocObject();
    *(v41 + 24) = 0;
    *(v41 + 32) = 0;
    *(v41 + 16) = v40;
    *(v41 + 40) = v90;
    v42 = *(v34 + 36);
    v9 = v33;
    v43 = __swift_project_boxed_opaque_existential_1(&v14[v42], *&v14[v42 + 24]);
    MEMORY[0x1EEE9AC00](v43, v44);
    MEMORY[0x1EEE9AC00](v45, v46);
    v47 = v77;
    *(&v75 - 4) = sub_1D615B4A4;
    *(&v75 - 3) = v47;
    v73 = sub_1D668B08C;
    v74 = v35;
    v48 = v89;
    v50 = sub_1D5D2F7A4(v33, sub_1D615B49C, v49, sub_1D615B4A4, (&v75 - 6));
    if (v48)
    {

      v51 = v88;
      sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);
      v52 = v51;
      return sub_1D5D2CFE8(v52, sub_1D668AED4);
    }

    v54 = v50;
    v89 = v39;

    if (v54)
    {
      type metadata accessor for FormatTextNodeStyle();
      sub_1D5B58B84(&qword_1EDF0F888, type metadata accessor for FormatTextNodeStyle);
      v14 = v88;
      sub_1D72647EC();
      v53 = v87;
      v22 = v76;
      v89 = 0;
    }

    else
    {
      v89 = 0;

      v14 = v88;
      v53 = v87;
      v22 = v76;
    }
  }

  else
  {

    v53 = v87;
  }

  sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);
  (v82)(v53, v83, v22);
  swift_storeEnumTagMultiPayload();
  v93 = v85;
  v87 = xmmword_1D728CF30;
  v91 = xmmword_1D728CF30;
  v92 = 0;
  v90 = 0;
  v55 = swift_allocObject();
  v56 = v53;
  v85 = &v75;
  *(v55 + 16) = v87;
  *(v55 + 32) = v90;
  v57 = v84;
  *(v55 + 40) = v84;
  *(v55 + 48) = v28;
  MEMORY[0x1EEE9AC00](v55, v58);
  *(&v75 - 4) = sub_1D5B4AA6C;
  *(&v75 - 3) = 0;
  v73 = sub_1D6708A2C;
  v74 = v59;
  v90 = 0;
  v60 = swift_allocObject();
  *(v60 + 16) = v87;
  *(v60 + 32) = v90;
  *(v60 + 40) = v57;
  *(v60 + 48) = v28;
  sub_1D668AF68();
  v62 = v61;
  sub_1D5B58B84(&qword_1EDF03428, sub_1D668AF68);
  swift_retain_n();
  v84 = v62;
  v63 = sub_1D72647CC();
  v90 = 0;
  v64 = swift_allocObject();
  *(v64 + 16) = v63;
  *(v64 + 24) = v87;
  *(v64 + 40) = v90;
  v65 = __swift_project_boxed_opaque_existential_1(&v14[*(v86 + 36)], *&v14[*(v86 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v65, v66);
  MEMORY[0x1EEE9AC00](v67, v68);
  *(&v75 - 4) = sub_1D615B4A4;
  *(&v75 - 3) = (&v75 - 6);
  v73 = sub_1D6708A2C;
  v74 = v60;
  v69 = v89;
  sub_1D5D2BC70(v56, sub_1D615B49C, v70, sub_1D615B4A4, (&v75 - 6));
  if (v69)
  {
    sub_1D5D2CFE8(v56, type metadata accessor for FormatVersionRequirement);

    v52 = v88;
  }

  else
  {

    sub_1D5C30060(0, &qword_1EDF32838, sub_1D5C5A3D0, &type metadata for FormatInteger, type metadata accessor for FormatEquation);
    sub_1D668AFFC();
    v71 = v88;
    sub_1D72647EC();
    sub_1D5D2CFE8(v56, type metadata accessor for FormatVersionRequirement);

    v52 = v71;
  }

  return sub_1D5D2CFE8(v52, sub_1D668AED4);
}

uint64_t sub_1D64A4714()
{
  v1 = 0x664F7265626D756ELL;
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
    return 0x656C797473;
  }
}

uint64_t sub_1D64A4770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D668D010(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64A47A8(uint64_t a1)
{
  v2 = sub_1D668AE2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64A47E4(uint64_t a1)
{
  v2 = sub_1D668AE2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D64A4820(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65646E6563736564;
  }

  else
  {
    v3 = 0x7265646E65637361;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000072;
  }

  if (*a2)
  {
    v5 = 0x65646E6563736564;
  }

  else
  {
    v5 = 0x7265646E65637361;
  }

  if (*a2)
  {
    v6 = 0xE900000000000072;
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

uint64_t sub_1D64A48CC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64A4954()
{
  sub_1D72621EC();
}

uint64_t sub_1D64A49C8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D64A4A58(uint64_t *a1@<X8>)
{
  v2 = 0x7265646E65637361;
  if (*v1)
  {
    v2 = 0x65646E6563736564;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000072;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D64A4B4C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7463617274627573;
  }

  else
  {
    v3 = 6579297;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x7463617274627573;
  }

  else
  {
    v5 = 6579297;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
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

uint64_t sub_1D64A4BEC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64A4C68()
{
  sub_1D72621EC();
}

uint64_t sub_1D64A4CD0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D64A4D54(uint64_t *a1@<X8>)
{
  v2 = 6579297;
  if (*v1)
  {
    v2 = 0x7463617274627573;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatFontMetricSizing.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D668B108();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D668B19C();
  sub_1D5B58B84(&qword_1EDF25278, sub_1D668B19C);
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

      v20 = sub_1D6627E68(1702521203, 0xE400000000000000, 0x656C797473, 0xE500000000000000);
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

  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  sub_1D5C35368();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726431C();
  v17 = v28;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D5CA9754();
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  *(v13 + 8) = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatFontMetricSizing.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v72 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v66 - v8;
  sub_1D668B31C();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v71 = *(v1 + 8);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D668B19C();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF25278, sub_1D668B19C);
  sub_1D5D2EE70(&type metadata for FormatFontMetricSizing, v19, v21, v16, &type metadata for FormatFontMetricSizing, v19, &type metadata for FormatVersions.AzdenE, v17, v14, v20, &off_1F51F6C18);
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD98);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v68 = v23;
  v69 = v22;
  v66[1] = v24 + 16;
  v67 = v25;
  v25(v9);
  v66[0] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v81 = v15;
  v79 = 0uLL;
  v80 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v78 = 0;
  v29 = swift_allocObject();
  *&v75 = v66;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v78;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v66[-4] = sub_1D5B4AA6C;
  v66[-3] = 0;
  v64 = sub_1D6708A30;
  v65 = v31;
  v78 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v78;
  v70 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D668B3B0();
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF03248, sub_1D668B3B0);
  swift_retain_n();
  v73 = v35;
  v74 = v34;
  v36 = sub_1D72647CC();
  v78 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v78;
  v38 = *(v11 + 36);
  v77 = v14;
  v39 = &v14[v38];
  v40 = __swift_project_boxed_opaque_existential_1(v39, *(v39 + 3));
  MEMORY[0x1EEE9AC00](v40, v41);
  MEMORY[0x1EEE9AC00](v42, v43);
  v66[-4] = sub_1D615B4A4;
  v66[-3] = &v66[-6];
  v64 = sub_1D6708A30;
  v65 = v32;
  v44 = v76;
  sub_1D5D2BC70(v9, sub_1D615B49C, v45, sub_1D615B4A4, &v66[-6]);
  if (v44)
  {
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v77, sub_1D668B31C);
  }

  else
  {
    v76 = v39;

    sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    sub_1D66582DC();
    v46 = v77;
    sub_1D72647EC();
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v48 = v72;
    v67(v72, v68, v69);
    swift_storeEnumTagMultiPayload();
    v75 = xmmword_1D728CF30;
    v79 = xmmword_1D728CF30;
    v80 = 0;
    LOBYTE(v81) = 0;
    v49 = swift_allocObject();
    v51 = v49;
    *(v49 + 16) = v75;
    *(v49 + 32) = v81;
    v52 = v70;
    *(v49 + 40) = v70;
    *(v49 + 48) = v28;
    v53 = v28;
    if (v71 == 12)
    {
    }

    else
    {
      v69 = v66;
      LOBYTE(v81) = v71;
      v54 = v52;
      MEMORY[0x1EEE9AC00](v49, v50);
      v66[-4] = sub_1D5B4AA6C;
      v66[-3] = 0;
      v64 = sub_1D6708A30;
      v65 = v51;
      v78 = 0;
      v55 = swift_allocObject();
      *(v55 + 16) = v75;
      *(v55 + 32) = v78;
      *(v55 + 40) = v54;
      *(v55 + 48) = v53;
      swift_retain_n();
      v56 = sub_1D72647CC();
      v78 = 0;
      v57 = swift_allocObject();
      *(v57 + 16) = v56;
      *(v57 + 24) = v75;
      *(v57 + 40) = v78;
      v58 = __swift_project_boxed_opaque_existential_1(v76, *(v76 + 3));
      MEMORY[0x1EEE9AC00](v58, v59);
      MEMORY[0x1EEE9AC00](v60, v61);
      v66[-4] = sub_1D615B4A4;
      v66[-3] = &v66[-6];
      v48 = v72;
      v64 = sub_1D668B444;
      v65 = v55;
      v63 = sub_1D5D2F7A4(v72, sub_1D615B49C, v62, sub_1D615B4A4, &v66[-6]);

      if (v63)
      {
        sub_1D668B4C0();
        v46 = v77;
        sub_1D72647EC();
      }

      else
      {
        v46 = v77;
      }
    }

    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v46, sub_1D668B31C);
  }
}

uint64_t sub_1D64A5AA8()
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
    return 1702521203;
  }
}

uint64_t sub_1D64A5AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D668D12C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64A5B28(uint64_t a1)
{
  v2 = sub_1D668B274();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64A5B64(uint64_t a1)
{
  v2 = sub_1D668B274();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatFontScaling.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v27 - v9;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = *(v1 + 8);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  v19 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatFontScaling, &type metadata for FormatCodingKeys, v20, v17, &type metadata for FormatFontScaling, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v18, v14, v19, &off_1F51F6C78);
  if ((v16 & 0xFF00) == 0xC00)
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v21 = sub_1D725BD1C();
    v22 = __swift_project_value_buffer(v21, qword_1EDFFCD30);
    (*(*(v21 - 8) + 16))(v10, v22, v21);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6422FCC(0, v10);
    v23 = v10;
  }

  else
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v24 = sub_1D725BD1C();
    v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
    (*(*(v24 - 8) + 16))(v6, v25, v24);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63B17D8(1, v15, v16 & 0xFF01, v6);
    v23 = v6;
  }

  sub_1D5D2CFE8(v23, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D64A5EB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x64656C616373;
  }

  else
  {
    v3 = 0x656C616353746F6ELL;
  }

  if (v2)
  {
    v4 = 0xE900000000000064;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x64656C616373;
  }

  else
  {
    v5 = 0x656C616353746F6ELL;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE900000000000064;
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

uint64_t sub_1D64A5F60()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64A5FE4()
{
  sub_1D72621EC();
}

uint64_t sub_1D64A6054()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D64A60D4(uint64_t *a1@<X8>)
{
  v2 = 0x656C616353746F6ELL;
  if (*v1)
  {
    v2 = 0x64656C616373;
  }

  v3 = 0xE900000000000064;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatFontScalingData.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  *&v79 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v69 - v8;
  sub_1D668B514();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = *(v1 + 8);
  LODWORD(v77) = *(v1 + 9);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D5CA9428();
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF252A8, sub_1D5CA9428);
  sub_1D5D2EE70(&type metadata for FormatFontScalingData, v20, v22, v17, &type metadata for FormatFontScalingData, v20, &type metadata for FormatVersions.JazzkonC, v18, v14, v21, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD30);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v75 = v25 + 16;
  v26(v9, v24, v23);
  v74 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v83 = 0uLL;
  v84 = 0;
  v27 = &v14[*(v11 + 44)];
  v78 = v11;
  v28 = *v27;
  v29 = *(v27 + 1);
  LOBYTE(v82) = 0;
  v30 = swift_allocObject();
  v32 = v30;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v82;
  *(v30 + 40) = v28;
  *(v30 + 48) = v29;
  v76 = v28;
  if (v16)
  {

LABEL_5:
    v33 = v79;
    goto LABEL_6;
  }

  v70 = v26;
  v71 = v24;
  v73 = v69;
  v82 = v15;
  MEMORY[0x1EEE9AC00](v30, v31);
  v72 = &v69[-6];
  v69[-4] = sub_1D5B4AA6C;
  v69[-3] = 0;
  v67 = sub_1D6708A34;
  v68 = v32;
  v81 = 0;
  v50 = swift_allocObject();
  *(v50 + 16) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = v81;
  *(v50 + 40) = v28;
  *(v50 + 48) = v29;
  sub_1D668B5A8();
  v52 = v51;
  v53 = sub_1D5B58B84(&qword_1EDF032B8, sub_1D668B5A8);
  swift_retain_n();
  v69[1] = v53;
  v69[2] = v52;
  v54 = sub_1D72647CC();
  v81 = 0;
  v55 = swift_allocObject();
  *(v55 + 24) = 0;
  *(v55 + 32) = 0;
  *(v55 + 16) = v54;
  *(v55 + 40) = v81;
  v56 = __swift_project_boxed_opaque_existential_1(&v14[*(v78 + 36)], *&v14[*(v78 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v56, v57);
  MEMORY[0x1EEE9AC00](v58, v59);
  v60 = v72;
  v69[-4] = sub_1D615B4A4;
  v69[-3] = v60;
  v67 = sub_1D668B63C;
  v68 = v50;
  v61 = v80;
  v63 = sub_1D5D2F7A4(v9, sub_1D615B49C, v62, sub_1D615B4A4, &v69[-6]);
  v80 = v61;
  if (v61)
  {
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v14, sub_1D668B514);
  }

  v65 = v63;

  if (v65)
  {
    sub_1D5B578C4();
    v66 = v80;
    sub_1D72647EC();
    v26 = v70;
    v24 = v71;
    if (v66)
    {
      sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);
      goto LABEL_11;
    }

    v80 = 0;
    goto LABEL_5;
  }

  v33 = v79;
  v26 = v70;
  v24 = v71;
LABEL_6:
  sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

  v26(v33, v24, v23);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v82) = v77;
  v79 = xmmword_1D728CF30;
  v83 = xmmword_1D728CF30;
  v84 = 0;
  v81 = 0;
  v34 = swift_allocObject();
  v77 = v69;
  *(v34 + 16) = v79;
  *(v34 + 32) = v81;
  v35 = v76;
  *(v34 + 40) = v76;
  *(v34 + 48) = v29;
  MEMORY[0x1EEE9AC00](v34, v36);
  v69[-4] = sub_1D5B4AA6C;
  v69[-3] = 0;
  v67 = sub_1D6708A34;
  v68 = v37;
  v81 = 0;
  v38 = swift_allocObject();
  *(v38 + 16) = v79;
  *(v38 + 32) = v81;
  *(v38 + 40) = v35;
  *(v38 + 48) = v29;
  sub_1D668B5A8();
  v40 = v39;
  sub_1D5B58B84(&qword_1EDF032B8, sub_1D668B5A8);
  swift_retain_n();
  v41 = v33;
  v76 = v40;
  v42 = sub_1D72647CC();
  v81 = 0;
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *(v43 + 24) = v79;
  *(v43 + 40) = v81;
  v44 = __swift_project_boxed_opaque_existential_1(&v14[*(v78 + 36)], *&v14[*(v78 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v44, v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  v69[-4] = sub_1D615B4A4;
  v69[-3] = &v69[-6];
  v67 = sub_1D6708A34;
  v68 = v38;
  v48 = v80;
  sub_1D5D2BC70(v41, sub_1D615B49C, v49, sub_1D615B4A4, &v69[-6]);
  if (!v48)
  {

    sub_1D668B4C0();
    sub_1D72647EC();
    sub_1D5D2CFE8(v41, type metadata accessor for FormatVersionRequirement);
LABEL_11:

    return sub_1D5D2CFE8(v14, sub_1D668B514);
  }

  sub_1D5D2CFE8(v41, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v14, sub_1D668B514);
}

uint64_t sub_1D64A6A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D668D240(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64A6A80(uint64_t a1)
{
  v2 = sub_1D5CA95AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64A6ABC(uint64_t a1)
{
  v2 = sub_1D5CA95AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatFontScalingStyle.encode(to:)(void *a1)
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
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v45 = sub_1D725BD1C();
  v46 = __swift_project_value_buffer(v45, qword_1EDFFCD30);
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
  sub_1D7264B3C();
  v78 = v53;
  FormatFontScalingStyle.rawValue.getter(v58);
  __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v75);
}

uint64_t FormatFontWidth.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v60 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v59 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v58 = &v50 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v57 = &v50 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v56 = &v50 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v55 = &v50 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v54 = &v50 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v53 = &v50 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v52 = &v50 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v51 = &v50 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v50 - v35;
  v61 = *v1;
  v37 = a1[3];
  v38 = a1[4];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v37);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v39 = sub_1D725BD1C();
  v40 = __swift_project_value_buffer(v39, qword_1EDFFCD50);
  v41 = *(*(v39 - 8) + 16);
  v41(v36, v40, v39);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v42 = v65;
  sub_1D5D2BEC4(v36, sub_1D5B4AA6C, 0, v37, v38);
  if (v42)
  {
    return sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
  v44 = v62;
  v45 = v62[3];
  v65 = v62[4];
  __swift_project_boxed_opaque_existential_1(v62, v45);
  if (v61 > 4)
  {
    v48 = v40;
    if (v61 <= 6)
    {
      if (v61 == 5)
      {
        v47 = v56;
        v41(v56, v48, v39);
      }

      else
      {
        v47 = v57;
        v41(v57, v48, v39);
      }
    }

    else if (v61 == 7)
    {
      v47 = v58;
      v41(v58, v48, v39);
    }

    else
    {
      v47 = v59;
      v41(v59, v48, v39);
    }

    goto LABEL_15;
  }

  v46 = v40;
  if (v61 > 1)
  {
    if (v61 == 2)
    {
      v47 = v53;
      v41(v53, v46, v39);
    }

    else
    {
      v47 = v54;
      v41(v54, v46, v39);
    }

LABEL_15:
    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v47, sub_1D5B4AA6C, 0, v45, v65);
    sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);
    goto LABEL_19;
  }

  v49 = v51;
  v41(v51, v40, v39);
  swift_storeEnumTagMultiPayload();
  sub_1D5D2BEC4(v49, sub_1D5B4AA6C, 0, v45, v65);
  sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);
LABEL_19:
  __swift_project_boxed_opaque_existential_1(v44, v44[3]);
  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v63, v64);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t FormatFrameExpression.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  sub_1D668B6B8();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D668B74C();
  sub_1D5B58B84(&qword_1EDF0C530, sub_1D668B74C);
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

      v23 = *(v17 - 2);
      v22 = *(v17 - 1);

      v24 = sub_1D66251A4(0x6369676F6CLL);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v25 = v23;
      *(v25 + 8) = v22;
      *(v25 + 16) = v24;
      *(v25 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  v32 = 0uLL;
  LOBYTE(v33) = 0;
  v18 = sub_1D72642BC();
  v20 = v19;
  v21 = v18;
  v30 = xmmword_1D728CF30;
  v31 = 0;
  sub_1D6057B10();
  sub_1D726431C();
  (*(v14 + 8))(v10, v6);
  v27 = v33;
  v28 = v34;
  v29 = v32;
  *v13 = v21;
  *(v13 + 8) = v20;
  *(v13 + 16) = v29;
  *(v13 + 32) = v27;
  *(v13 + 40) = v28;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatFrameExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v75 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v65 - v8;
  sub_1D668B8CC();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  v17 = v1[2];
  v73 = v1[3];
  v74 = v17;
  v72 = v1[4];
  v89 = *(v1 + 40);
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D668B74C();
  v21 = v20;
  v22 = sub_1D5B58B84(&qword_1EDF0C530, sub_1D668B74C);
  sub_1D5D2EE70(&type metadata for FormatFrameExpression, v21, v23, v18, &type metadata for FormatFrameExpression, v21, &type metadata for FormatVersions.JazzkonC, v19, v14, v22, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
  v26 = *(v24 - 8);
  v69 = *(v26 + 16);
  v70 = v25;
  v76 = v24;
  v68 = v26 + 16;
  v69(v9);
  v67 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v82 = v15;
  *(&v82 + 1) = v16;
  v84 = 0;
  v85 = 0;
  LOBYTE(v86) = 0;
  v27 = &v14[*(v11 + 44)];
  v79 = v9;
  v28 = *v27;
  v29 = *(v27 + 1);
  v88 = 0;
  v30 = swift_allocObject();
  v80 = &v65;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v88;
  *(v30 + 40) = v28;
  *(v30 + 48) = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  *(&v65 - 4) = sub_1D5B4AA6C;
  *(&v65 - 3) = 0;
  v63 = sub_1D6708A38;
  v64 = v32;
  v88 = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v88;
  v71 = v28;
  *(v33 + 40) = v28;
  *(v33 + 48) = v29;
  sub_1D668B960();
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EDF032A8, sub_1D668B960);
  swift_retain_n();
  v77 = v36;
  v78 = v35;
  v37 = sub_1D72647CC();
  v88 = 0;
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  *(v38 + 32) = 0;
  *(v38 + 16) = v37;
  *(v38 + 40) = v88;
  v39 = &v14[*(v11 + 36)];
  v40 = __swift_project_boxed_opaque_existential_1(v39, *(v39 + 3));
  MEMORY[0x1EEE9AC00](v40, v41);
  MEMORY[0x1EEE9AC00](v42, v43);
  *(&v65 - 4) = sub_1D615B4A4;
  *(&v65 - 3) = (&v65 - 6);
  v44 = v79;
  v63 = sub_1D668B9F4;
  v64 = v33;
  v45 = v81;
  sub_1D5D2BC70(v79, sub_1D615B49C, v46, sub_1D615B4A4, (&v65 - 6));
  if (v45)
  {
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v65 = v39;
    v47 = v76;
    v66 = v29;

    sub_1D72647EC();
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);

    v49 = v75;
    (v69)(v75, v70, v47);
    swift_storeEnumTagMultiPayload();
    v84 = v74;
    v85 = v73;
    v86 = v72;
    v87 = v89;
    v81 = xmmword_1D728CF30;
    v82 = xmmword_1D728CF30;
    v83 = 0;
    v88 = 0;
    v50 = swift_allocObject();
    v80 = &v65;
    *(v50 + 16) = v81;
    *(v50 + 32) = v88;
    v51 = v71;
    v52 = v66;
    *(v50 + 40) = v71;
    *(v50 + 48) = v52;
    MEMORY[0x1EEE9AC00](v50, v53);
    *(&v65 - 4) = sub_1D5B4AA6C;
    *(&v65 - 3) = 0;
    v63 = sub_1D6708A38;
    v64 = v54;
    v88 = 0;
    v55 = swift_allocObject();
    *(v55 + 16) = v81;
    *(v55 + 32) = v88;
    *(v55 + 40) = v51;
    *(v55 + 48) = v52;
    swift_retain_n();
    v56 = sub_1D72647CC();
    v88 = 0;
    v57 = swift_allocObject();
    *(v57 + 16) = v56;
    *(v57 + 24) = v81;
    *(v57 + 40) = v88;
    v58 = __swift_project_boxed_opaque_existential_1(v65, *(v65 + 3));
    MEMORY[0x1EEE9AC00](v58, v59);
    MEMORY[0x1EEE9AC00](v60, v61);
    *(&v65 - 4) = sub_1D615B4A4;
    *(&v65 - 3) = (&v65 - 6);
    v63 = sub_1D6708A38;
    v64 = v55;
    sub_1D5D2BC70(v49, sub_1D615B49C, v62, sub_1D615B4A4, (&v65 - 6));

    sub_1D6057B64();
    sub_1D72647EC();
    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D668B8CC);
}

unint64_t sub_1D64A89A8()
{
  v1 = 0x6369676F6CLL;
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
    return 0xD000000000000010;
  }
}

uint64_t sub_1D64A89FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D668D354(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64A8A34(uint64_t a1)
{
  v2 = sub_1D668B824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64A8A70(uint64_t a1)
{
  v2 = sub_1D668B824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D64A8AAC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x746867696568;
  if (v2 != 1)
  {
    v4 = 0x656E694C74786574;
    v3 = 0xE900000000000073;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6874646977;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x746867696568;
  if (*a2 != 1)
  {
    v8 = 0x656E694C74786574;
    v7 = 0xE900000000000073;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6874646977;
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

uint64_t sub_1D64A8BAC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64A8C4C()
{
  sub_1D72621EC();
}

uint64_t sub_1D64A8CD8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64A8D74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6664500();
  *a1 = result;
  return result;
}

void sub_1D64A8DA4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x746867696568;
  if (v2 != 1)
  {
    v5 = 0x656E694C74786574;
    v4 = 0xE900000000000073;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6874646977;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatFrameExpressionLogicCompare.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v74 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v66 - v8);
  sub_1D668BC84();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v73 = *(v1 + 8);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D668BB04();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF0C400, sub_1D668BB04);
  sub_1D5D2EE70(&type metadata for FormatFrameExpressionLogicCompare, v19, v21, v16, &type metadata for FormatFrameExpressionLogicCompare, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  v24 = *(v22 - 8);
  v70 = *(v24 + 16);
  v71 = v23;
  v69 = v24 + 16;
  v70(v9);
  v68 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v84 = v15;
  v82 = 0uLL;
  v83 = 0;
  v25 = &v14[*(v11 + 44)];
  v26 = *v25;
  v27 = *(v25 + 1);
  v81 = 0;
  v28 = swift_allocObject();
  v77 = &v66;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v81;
  *(v28 + 40) = v26;
  *(v28 + 48) = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v79 = v9;
  *(&v66 - 4) = sub_1D5B4AA6C;
  *(&v66 - 3) = 0;
  v64 = sub_1D6708908;
  v65 = v30;
  v81 = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v81;
  v72 = v26;
  *(v31 + 40) = v26;
  *(v31 + 48) = v27;
  sub_1D668BD18();
  v33 = v32;
  v34 = sub_1D5B58B84(&qword_1EDF02D38, sub_1D668BD18);
  swift_retain_n();
  v75 = v34;
  v76 = v33;
  v35 = sub_1D72647CC();
  v81 = 0;
  v36 = swift_allocObject();
  *(v36 + 24) = 0;
  *(v36 + 32) = 0;
  *(v36 + 16) = v35;
  *(v36 + 40) = v81;
  v37 = *(v11 + 36);
  v78 = v14;
  v38 = &v14[v37];
  v39 = __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
  MEMORY[0x1EEE9AC00](v39, v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  *(&v66 - 4) = sub_1D615B4A4;
  *(&v66 - 3) = (&v66 - 6);
  v44 = v79;
  v43 = v80;
  v64 = sub_1D6708908;
  v65 = v31;
  sub_1D5D2BC70(v79, sub_1D615B49C, v45, sub_1D615B4A4, (&v66 - 6));
  if (v43)
  {
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);

    v48 = v78;
  }

  else
  {
    v66 = v38;
    v67 = v27;

    sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    sub_1D66582DC();
    v46 = v78;
    sub_1D72647EC();
    v47 = v46;
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);

    v50 = v74;
    (v70)(v74, v71, v22);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v84) = v73;
    v80 = xmmword_1D728CF30;
    v82 = xmmword_1D728CF30;
    v83 = 0;
    v81 = 0;
    v51 = swift_allocObject();
    v79 = &v66;
    *(v51 + 16) = v80;
    *(v51 + 32) = v81;
    v52 = v72;
    v53 = v67;
    *(v51 + 40) = v72;
    *(v51 + 48) = v53;
    MEMORY[0x1EEE9AC00](v51, v54);
    *(&v66 - 4) = sub_1D5B4AA6C;
    *(&v66 - 3) = 0;
    v64 = sub_1D6708908;
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
    v59 = __swift_project_boxed_opaque_existential_1(v66, *(v66 + 3));
    MEMORY[0x1EEE9AC00](v59, v60);
    MEMORY[0x1EEE9AC00](v61, v62);
    *(&v66 - 4) = sub_1D615B4A4;
    *(&v66 - 3) = (&v66 - 6);
    v64 = sub_1D6708908;
    v65 = v56;
    sub_1D5D2BC70(v50, sub_1D615B49C, v63, sub_1D615B4A4, (&v66 - 6));

    sub_1D60566E4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

    v48 = v47;
  }

  return sub_1D5D2CFE8(v48, sub_1D668BC84);
}

uint64_t sub_1D64A97C4(uint64_t a1)
{
  v2 = sub_1D668BBDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64A9800(uint64_t a1)
{
  v2 = sub_1D668BBDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatFrameExpressionLogicTextLines.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D668BE10();
  v7 = v6;
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D668BEA4();
  sub_1D5B58B84(&qword_1EC886B88, sub_1D668BEA4);
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

  v13 = v28;
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

      v20 = *(v17 - 2);
      v19 = *(v17 - 1);

      v21 = sub_1D661AFD0();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21;
      *(v22 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v14, v7);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  sub_1D5C35368();
  v31 = 0uLL;
  v32 = 0;
  sub_1D726431C();
  v18 = v29;
  v31 = xmmword_1D728CF30;
  v32 = 0;
  sub_1D5C5813C();
  sub_1D726431C();
  v24 = v29;
  type metadata accessor for FormatTextNodeStyle();
  v31 = xmmword_1D7297410;
  v32 = 0;
  sub_1D5B58B84(&qword_1EDF2BD80, type metadata accessor for FormatTextNodeStyle);
  sub_1D726431C();
  v25 = v29;
  v27 = xmmword_1D72BAA60;
  v31 = xmmword_1D72BAA60;
  v32 = 0;
  if (sub_1D726434C())
  {
    v29 = v27;
    v30 = 0;
    sub_1D726431C();
    (*(v28 + 8))(v10, v7);
    v26 = v33;
  }

  else
  {
    (*(v28 + 8))(v10, v7);
    v26 = 1;
  }

  *a2 = v18;
  *(a2 + 8) = v24;
  *(a2 + 16) = v25;
  *(a2 + 24) = v26;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatFrameExpressionLogicTextLines.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v101 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v103 = &v97 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v111 = &v97 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v97 - v14;
  sub_1D668C024();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v1;
  v104 = *(v1 + 8);
  v102 = v1[2];
  v100 = *(v1 + 24);
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1D668BEA4();
  v25 = v24;
  v26 = sub_1D5B58B84(&qword_1EC886B88, sub_1D668BEA4);
  sub_1D5D2EE70(&type metadata for FormatFrameExpressionLogicTextLines, v25, v27, v22, &type metadata for FormatFrameExpressionLogicTextLines, v25, &type metadata for FormatVersions.JazzkonC, v23, v20, v26, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v28 = sub_1D725BD1C();
  v29 = __swift_project_value_buffer(v28, qword_1EDFFCD30);
  v30 = *(v28 - 8);
  v31 = *(v30 + 16);
  v109 = v29;
  v110 = v28;
  v107 = v30 + 16;
  v108 = v31;
  (v31)(v15);
  v106 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v121 = v21;
  v119 = 0uLL;
  v120 = 0;
  v32 = &v20[*(v17 + 44)];
  v115 = v15;
  v33 = *v32;
  v34 = *(v32 + 1);
  v118 = 0;
  v35 = swift_allocObject();
  v116 = &v97;
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v118;
  *(v35 + 40) = v33;
  *(v35 + 48) = v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  *(&v97 - 4) = sub_1D5B4AA6C;
  *(&v97 - 3) = 0;
  v95 = sub_1D6708A3C;
  v96 = v37;
  v118 = 0;
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = v118;
  v105 = v33;
  *(v38 + 40) = v33;
  *(v38 + 48) = v34;
  sub_1D668C0B8();
  v40 = v39;
  v41 = sub_1D5B58B84(&qword_1EC886BA0, sub_1D668C0B8);
  swift_retain_n();
  v112 = v41;
  v113 = v40;
  v42 = sub_1D72647CC();
  v118 = 0;
  v43 = swift_allocObject();
  *(v43 + 24) = 0;
  *(v43 + 32) = 0;
  *(v43 + 16) = v42;
  *(v43 + 40) = v118;
  v44 = &v20[*(v17 + 36)];
  v45 = *(v44 + 3);
  v114 = v20;
  v46 = __swift_project_boxed_opaque_existential_1(v44, v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  MEMORY[0x1EEE9AC00](v48, v49);
  *(&v97 - 4) = sub_1D615B4A4;
  *(&v97 - 3) = (&v97 - 6);
  v95 = sub_1D6708A3C;
  v96 = v38;
  v50 = v115;
  v51 = v117;
  sub_1D5D2BC70(v115, sub_1D615B49C, v52, sub_1D615B4A4, (&v97 - 6));
  if (v51)
  {
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

    v53 = v114;
LABEL_7:
    v69 = v53;
    return sub_1D5D2CFE8(v69, sub_1D668C024);
  }

  v98 = v44;
  v99 = v34;

  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  sub_1D66582DC();
  v53 = v114;
  sub_1D72647EC();
  sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

  v54 = v111;
  v108(v111, v109, v110);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v121) = v104;
  v117 = xmmword_1D728CF30;
  v119 = xmmword_1D728CF30;
  v120 = 0;
  v118 = 0;
  v55 = swift_allocObject();
  v116 = &v97;
  *(v55 + 16) = v117;
  *(v55 + 32) = v118;
  v56 = v105;
  v57 = v99;
  *(v55 + 40) = v105;
  *(v55 + 48) = v57;
  MEMORY[0x1EEE9AC00](v55, v58);
  v115 = 0;
  *(&v97 - 4) = sub_1D5B4AA6C;
  *(&v97 - 3) = 0;
  v95 = sub_1D6708A3C;
  v96 = v59;
  v118 = 0;
  v60 = swift_allocObject();
  *(v60 + 16) = v117;
  *(v60 + 32) = v118;
  *(v60 + 40) = v56;
  *(v60 + 48) = v57;
  swift_retain_n();
  v61 = sub_1D72647CC();
  v118 = 0;
  v62 = swift_allocObject();
  *(v62 + 16) = v61;
  *(v62 + 24) = v117;
  *(v62 + 40) = v118;
  v63 = __swift_project_boxed_opaque_existential_1(v98, *(v98 + 3));
  MEMORY[0x1EEE9AC00](v63, v64);
  MEMORY[0x1EEE9AC00](v65, v66);
  *(&v97 - 4) = sub_1D615B4A4;
  *(&v97 - 3) = (&v97 - 6);
  v95 = sub_1D6708A3C;
  v96 = v60;
  v67 = v115;
  sub_1D5D2BC70(v54, sub_1D615B49C, v68, sub_1D615B4A4, (&v97 - 6));
  if (v67)
  {
    sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);

    goto LABEL_7;
  }

  sub_1D60566E4();
  sub_1D72647EC();
  sub_1D5D2CFE8(v111, type metadata accessor for FormatVersionRequirement);

  v71 = v103;
  v108(v103, v109, v110);
  swift_storeEnumTagMultiPayload();
  v121 = v102;
  v117 = xmmword_1D7297410;
  v119 = xmmword_1D7297410;
  v120 = 0;
  v118 = 0;
  v72 = swift_allocObject();
  v116 = &v97;
  *(v72 + 16) = v117;
  *(v72 + 32) = v118;
  v73 = v105;
  v74 = v99;
  *(v72 + 40) = v105;
  *(v72 + 48) = v74;
  MEMORY[0x1EEE9AC00](v72, v75);
  *(&v97 - 4) = sub_1D5B4AA6C;
  *(&v97 - 3) = 0;
  v95 = sub_1D6708A3C;
  v96 = v76;
  v118 = 0;
  v77 = swift_allocObject();
  *(v77 + 16) = v117;
  *(v77 + 32) = v118;
  *(v77 + 40) = v73;
  *(v77 + 48) = v74;
  swift_retain_n();
  v78 = sub_1D72647CC();
  v118 = 0;
  v79 = swift_allocObject();
  *(v79 + 16) = v78;
  *(v79 + 24) = v117;
  *(v79 + 40) = v118;
  v80 = __swift_project_boxed_opaque_existential_1(v98, *(v98 + 3));
  MEMORY[0x1EEE9AC00](v80, v81);
  MEMORY[0x1EEE9AC00](v82, v83);
  *(&v97 - 4) = sub_1D615B4A4;
  *(&v97 - 3) = (&v97 - 6);
  v95 = sub_1D6708A3C;
  v96 = v77;
  sub_1D5D2BC70(v71, sub_1D615B49C, v84, sub_1D615B4A4, (&v97 - 6));

  type metadata accessor for FormatTextNodeStyle();
  sub_1D5B58B84(&qword_1EDF0F888, type metadata accessor for FormatTextNodeStyle);
  sub_1D72647EC();
  v85 = v53;
  sub_1D5D2CFE8(v103, type metadata accessor for FormatVersionRequirement);

  v86 = v101;
  v108(v101, v109, v110);
  swift_storeEnumTagMultiPayload();
  if ((v100 & 1) == 0)
  {
    LOBYTE(v119) = 0;
    v87 = swift_allocObject();
    v117 = xmmword_1D72BAA60;
    *(v87 + 16) = xmmword_1D72BAA60;
    *(v87 + 32) = v119;
    *(v87 + 40) = v105;
    *(v87 + 48) = v99;

    v88 = sub_1D72647CC();
    LOBYTE(v119) = 0;
    v89 = swift_allocObject();
    *(v89 + 16) = v88;
    *(v89 + 24) = v117;
    *(v89 + 40) = v119;
    v90 = __swift_project_boxed_opaque_existential_1(v98, *(v98 + 3));
    MEMORY[0x1EEE9AC00](v90, v91);
    MEMORY[0x1EEE9AC00](v92, v93);
    *(&v97 - 4) = sub_1D5B4AA6C;
    *(&v97 - 3) = 0;
    v95 = sub_1D668C14C;
    v96 = v87;
    LOBYTE(v88) = sub_1D5D2F7A4(v86, sub_1D615B49C, v94, sub_1D615B4A4, (&v97 - 6));

    if (v88)
    {
      v119 = v117;
      v120 = 0;
      LOBYTE(v121) = 0;
      sub_1D72647EC();
    }
  }

  sub_1D5D2CFE8(v86, type metadata accessor for FormatVersionRequirement);
  v69 = v85;
  return sub_1D5D2CFE8(v69, sub_1D668C024);
}

uint64_t sub_1D64AAC4C()
{
  v1 = *v0;
  v2 = 0x65756C6176;
  v3 = 0x656C797473;
  v4 = 0x6C61726765746E69;
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
    v2 = 0x726F74617265706FLL;
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

uint64_t sub_1D64AACD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D668D474(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64AAD10(uint64_t a1)
{
  v2 = sub_1D668BF7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64AAD4C(uint64_t a1)
{
  v2 = sub_1D668BF7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D64AAD98(uint64_t a1)
{
  v2 = sub_1D5CC242C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64AADD4(uint64_t a1)
{
  v2 = sub_1D5CC242C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatGeometryAdjustment.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  sub_1D668C1C8();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D668C25C();
  sub_1D5B58B84(&qword_1EC886BD0, sub_1D668C25C);
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

      v22 = sub_1D661B1A8();
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

uint64_t FormatGeometryAdjustment.encode(to:)(void *a1)
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
  sub_1D668C3DC();
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
  sub_1D668C25C();
  v26 = v25;
  v27 = sub_1D5B58B84(&qword_1EC886BD0, sub_1D668C25C);
  sub_1D5D2EE70(&type metadata for FormatGeometryAdjustment, v26, v28, v23, &type metadata for FormatGeometryAdjustment, v26, &type metadata for FormatVersions.StarSky, v24, v20, v27, &off_1F51F6CD8);
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
  v103 = sub_1D6708A40;
  v104 = v38;
  v125 = 0;
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  *(v39 + 32) = v125;
  v118 = v34;
  *(v39 + 40) = v34;
  *(v39 + 48) = v35;
  sub_1D668C470();
  v41 = v40;
  v42 = sub_1D5B58B84(&qword_1EC886BE8, sub_1D668C470);
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
  v103 = sub_1D668C504;
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
    v103 = sub_1D6708A40;
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
    v103 = sub_1D6708A40;
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
    v103 = sub_1D6708A40;
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
    v103 = sub_1D6708A40;
    v104 = v95;
    sub_1D5D2BC70(v89, sub_1D615B49C, v102, sub_1D615B4A4, &v105[-6]);

    sub_1D72647EC();
    sub_1D5D2CFE8(v89, type metadata accessor for FormatVersionRequirement);

    v58 = v60;
  }

  return sub_1D5D2CFE8(v58, sub_1D668C3DC);
}

uint64_t sub_1D64AC168()
{
  v1 = *v0;
  v2 = 120;
  v3 = 0x6874646977;
  v4 = 0x746867696568;
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
    v2 = 121;
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

uint64_t sub_1D64AC1DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D668D61C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64AC214(uint64_t a1)
{
  v2 = sub_1D668C334();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64AC250(uint64_t a1)
{
  v2 = sub_1D668C334();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatGeometryNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v164 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v167 = v164 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v168 = v164 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v169 = v164 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  *&v177 = v164 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v164 - v23;
  sub_1D668DF18();
  *&v179 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = v164 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1D668E040();
  v32 = v31;
  v33 = sub_1D5B58B84(&qword_1EDF255B8, sub_1D668E040);
  v180 = v28;
  sub_1D5D2EE70(v4, v32, v34, v29, v4, v32, &type metadata for FormatVersions.StarSky, v30, v28, v33, &off_1F51F6CD8);
  swift_beginAccess();
  v36 = v2[2];
  v35 = v2[3];
  v174 = v2;
  v37 = qword_1EDF31ED0;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = sub_1D725BD1C();
  v39 = __swift_project_value_buffer(v38, qword_1EDFFCD50);
  v40 = *(v38 - 8);
  v41 = *(v40 + 16);
  v42 = v40 + 16;
  v176 = v39;
  v41(v24);
  v43 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v44 = sub_1D725895C();
  v45 = (*(*(v44 - 8) + 48))(v8, 1, v44);
  v170 = v38;
  v171 = v41;
  v172 = v42;
  v173 = v43;
  if (v45 == 1)
  {
    v166 = v36;
    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v46 = v179;
    v47 = v180;
    v48 = &v180[*(v179 + 44)];
    v50 = *v48;
    v49 = *(v48 + 1);
    LOBYTE(v181) = 0;
    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    *(v51 + 24) = 0;
    *(v51 + 32) = v181;
    *(v51 + 40) = v50;
    *(v51 + 48) = v49;
    sub_1D668DFAC();
    v53 = v52;
    sub_1D5B58B84(&qword_1EDF03618, sub_1D668DFAC);

    *&v175 = v53;
    v54 = sub_1D72647CC();
    LOBYTE(v181) = 0;
    v55 = swift_allocObject();
    *(v55 + 24) = 0;
    *(v55 + 32) = 0;
    *(v55 + 16) = v54;
    *(v55 + 40) = v181;
    v56 = __swift_project_boxed_opaque_existential_1((v47 + *(v46 + 36)), *(v47 + *(v46 + 36) + 24));
    MEMORY[0x1EEE9AC00](v56, v57);
    MEMORY[0x1EEE9AC00](v58, v59);
    v164[-4] = sub_1D5B4AA6C;
    v164[-3] = 0;
    v162 = sub_1D668E1C0;
    v163 = v51;
    v60 = v178;
    v62 = sub_1D5D2F7A4(v24, sub_1D615B49C, v61, sub_1D615B4A4, &v164[-6]);
    if (v60)
    {
      sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);

LABEL_27:
      v88 = v47;
      return sub_1D5D2CFE8(v88, sub_1D668DF18);
    }

    v63 = v62;

    if (v63)
    {
      v181 = 0uLL;
      LOBYTE(v182) = 0;
      v189 = v166;
      v190 = v35;
      sub_1D72647EC();

      sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
      v38 = v170;
      *&v178 = 0;
    }

    else
    {
      *&v178 = 0;
      sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);

      v38 = v170;
    }

    v41 = v171;
  }

  else
  {
    sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  v64 = v174;
  v66 = v174[4];
  v65 = v174[5];
  (v41)(v177, v176, v38);
  swift_storeEnumTagMultiPayload();
  v175 = xmmword_1D728CF30;
  v181 = xmmword_1D728CF30;
  LOBYTE(v182) = 0;
  v67 = v180;
  v68 = &v180[*(v179 + 44)];
  v70 = *v68;
  v69 = *(v68 + 1);
  LOBYTE(v189) = 0;
  v71 = swift_allocObject();
  v73 = v71;
  *(v71 + 16) = v175;
  *(v71 + 32) = v189;
  *(v71 + 40) = v70;
  *(v71 + 48) = v69;
  v166 = v69;
  v165 = v70;
  if (v65)
  {
    v164[1] = v164;
    v189 = v66;
    v190 = v65;
    MEMORY[0x1EEE9AC00](v71, v72);
    v164[-4] = sub_1D5B4AA6C;
    v164[-3] = 0;
    v162 = sub_1D6708A44;
    v163 = v73;
    LOBYTE(v188) = 0;
    v74 = swift_allocObject();
    *(v74 + 16) = v175;
    *(v74 + 32) = v188;
    *(v74 + 40) = v70;
    *(v74 + 48) = v69;
    sub_1D668DFAC();
    v76 = v75;
    sub_1D5B58B84(&qword_1EDF03618, sub_1D668DFAC);
    swift_retain_n();

    v164[0] = v76;
    v77 = sub_1D72647CC();
    LOBYTE(v188) = 0;
    v78 = swift_allocObject();
    *(v78 + 16) = v77;
    *(v78 + 24) = v175;
    *(v78 + 40) = v188;
    v79 = __swift_project_boxed_opaque_existential_1((v67 + *(v179 + 36)), *(v67 + *(v179 + 36) + 24));
    MEMORY[0x1EEE9AC00](v79, v80);
    MEMORY[0x1EEE9AC00](v81, v82);
    v164[-4] = sub_1D615B4A4;
    v164[-3] = &v164[-6];
    v162 = sub_1D6708A44;
    v163 = v74;
    v83 = v177;
    v84 = v178;
    v86 = sub_1D5D2F7A4(v177, sub_1D615B49C, v85, sub_1D615B4A4, &v164[-6]);
    v87 = v84;
    if (v84)
    {

      sub_1D5D2CFE8(v83, type metadata accessor for FormatVersionRequirement);
      v88 = v180;
      return sub_1D5D2CFE8(v88, sub_1D668DF18);
    }

    v90 = v86;

    if (v90)
    {
      sub_1D72647EC();
      v64 = v174;
      v89 = v165;

      sub_1D5D2CFE8(v177, type metadata accessor for FormatVersionRequirement);
      v38 = v170;
    }

    else
    {

      sub_1D5D2CFE8(v83, type metadata accessor for FormatVersionRequirement);
      v64 = v174;
      v38 = v170;
      v89 = v165;
    }
  }

  else
  {

    sub_1D5D2CFE8(v177, type metadata accessor for FormatVersionRequirement);

    v87 = v178;
    v89 = v70;
  }

  swift_beginAccess();
  v91 = v64[6];
  v92 = v169;
  v93 = v171;
  (v171)(v169, v176, v38);
  swift_storeEnumTagMultiPayload();
  if (*(v91 + 16))
  {
    LOBYTE(v181) = 0;
    v94 = swift_allocObject();
    v95 = v89;
    v96 = v94;
    v178 = xmmword_1D7297410;
    *(v94 + 16) = xmmword_1D7297410;
    *(v94 + 32) = v181;
    v97 = v166;
    *(v94 + 40) = v95;
    *(v94 + 48) = v97;
    sub_1D668DFAC();
    v99 = v98;
    v100 = sub_1D5B58B84(&qword_1EDF03618, sub_1D668DFAC);

    v101 = v180;
    *&v177 = v99;
    *&v175 = v100;
    v102 = sub_1D72647CC();
    LOBYTE(v181) = 0;
    v103 = swift_allocObject();
    *(v103 + 16) = v102;
    *(v103 + 24) = v178;
    *(v103 + 40) = v181;
    v104 = __swift_project_boxed_opaque_existential_1((v101 + *(v179 + 36)), *(v101 + *(v179 + 36) + 24));
    MEMORY[0x1EEE9AC00](v104, v105);
    MEMORY[0x1EEE9AC00](v106, v107);
    v164[-4] = sub_1D5B4AA6C;
    v164[-3] = 0;
    v162 = sub_1D6708A44;
    v163 = v96;
    v109 = sub_1D5D2F7A4(v92, sub_1D615B49C, v108, sub_1D615B4A4, &v164[-6]);
    if (v87)
    {
      sub_1D5D2CFE8(v92, type metadata accessor for FormatVersionRequirement);

      v88 = v101;
      return sub_1D5D2CFE8(v88, sub_1D668DF18);
    }

    v111 = v109;
    v112 = v165;

    if (v111)
    {
      v181 = v178;
      LOBYTE(v182) = 0;
      v188 = v91;
      sub_1D5C34D84(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1D668E23C();
      sub_1D72647EC();
      v64 = v174;
      v113 = v179;
      v89 = v112;
      *&v178 = 0;

      sub_1D5D2CFE8(v169, type metadata accessor for FormatVersionRequirement);
      v93 = v171;
      v110 = v113;
    }

    else
    {
      *&v178 = 0;
      sub_1D5D2CFE8(v169, type metadata accessor for FormatVersionRequirement);

      v64 = v174;
      v93 = v171;
      v110 = v179;
      v89 = v112;
    }
  }

  else
  {
    *&v178 = v87;
    sub_1D5D2CFE8(v92, type metadata accessor for FormatVersionRequirement);
    v110 = v179;
  }

  swift_beginAccess();
  v114 = v64[7];
  v115 = v168;
  (v93)(v168, v176, v170);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v181) = 0;
  v116 = swift_allocObject();
  v177 = xmmword_1D72BAA60;
  *(v116 + 16) = xmmword_1D72BAA60;
  *(v116 + 32) = v181;
  *(v116 + 40) = v89;
  *(v116 + 48) = v166;
  sub_1D668DFAC();
  v118 = v117;
  v119 = sub_1D5B58B84(&qword_1EDF03618, sub_1D668DFAC);

  v176 = v114;

  v47 = v180;
  *&v175 = v118;
  v120 = sub_1D72647CC();
  LOBYTE(v181) = 0;
  v121 = swift_allocObject();
  *(v121 + 16) = v120;
  *(v121 + 24) = v177;
  *(v121 + 40) = v181;
  v122 = (v47 + *(v110 + 36));
  v123 = __swift_project_boxed_opaque_existential_1(v122, v122[3]);
  *&v179 = v164;
  MEMORY[0x1EEE9AC00](v123, v124);
  MEMORY[0x1EEE9AC00](v125, v126);
  v164[-4] = sub_1D5B4AA6C;
  v164[-3] = 0;
  v162 = sub_1D6708A44;
  v163 = v116;
  v127 = v178;
  v129 = sub_1D5D2F7A4(v115, sub_1D615B49C, v128, sub_1D615B4A4, &v164[-6]);
  if (v127)
  {
    sub_1D5D2CFE8(v115, type metadata accessor for FormatVersionRequirement);

    goto LABEL_27;
  }

  v131 = v129;
  v132 = v176;
  v169 = v119;

  if (v131)
  {
    v181 = v177;
    LOBYTE(v182) = 0;
    *&v186 = v132;
    sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
    sub_1D66594A0();
    sub_1D72647EC();
    v133 = v174;
    v134 = v168;

    sub_1D5D2CFE8(v134, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    sub_1D5D2CFE8(v168, type metadata accessor for FormatVersionRequirement);

    v133 = v174;
  }

  *&v178 = 0;
  v135 = v133[8];
  v136 = v133[9];
  v137 = v133[11];
  *&v177 = v133[10];
  v139 = v133[12];
  v138 = v133[13];
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v140 = v170;
  v141 = __swift_project_value_buffer(v170, qword_1EDFFCE38);
  (v171)(v167, v141, v140);
  swift_storeEnumTagMultiPayload();
  v179 = xmmword_1D72BAA70;
  v186 = xmmword_1D72BAA70;
  v187 = 0;
  LOBYTE(v181) = 0;
  v142 = swift_allocObject();
  v144 = v142;
  *(v142 + 16) = v179;
  *(v142 + 32) = v181;
  v145 = v165;
  v146 = v166;
  *(v142 + 40) = v165;
  *(v142 + 48) = v146;
  if (v135)
  {
    v176 = v164;
    v168 = v135;
    *&v181 = v135;
    *(&v181 + 1) = v136;
    v182 = v177;
    v183 = v137;
    v184 = v139;
    v185 = v138;
    MEMORY[0x1EEE9AC00](v142, v143);
    v174 = &v164[-6];
    v164[-4] = sub_1D5B4AA6C;
    v164[-3] = 0;
    v162 = sub_1D6708A44;
    v163 = v144;
    v191 = 0;
    v147 = swift_allocObject();
    *(v147 + 16) = v179;
    *(v147 + 32) = v191;
    *(v147 + 40) = v145;
    *(v147 + 48) = v146;
    swift_retain_n();
    sub_1D5EB1D80(v168, v136, v177, v137, v139);
    v148 = sub_1D72647CC();
    v191 = 0;
    v149 = swift_allocObject();
    *(v149 + 16) = v148;
    *(v149 + 24) = v179;
    *(v149 + 40) = v191;
    v150 = __swift_project_boxed_opaque_existential_1(v122, v122[3]);
    MEMORY[0x1EEE9AC00](v150, v151);
    MEMORY[0x1EEE9AC00](v152, v153);
    v154 = v174;
    v164[-4] = sub_1D615B4A4;
    v164[-3] = v154;
    v162 = sub_1D6708A44;
    v163 = v147;
    v155 = v167;
    v156 = v178;
    v158 = sub_1D5D2F7A4(v167, sub_1D615B49C, v157, sub_1D615B4A4, &v164[-6]);
    *&v178 = v156;
    if (v156)
    {
    }

    else
    {
      v159 = v158;

      if (v159)
      {
        sub_1D6659A24();
        v160 = v178;
        sub_1D72647EC();
        *&v178 = v160;
      }
    }

    v161 = v184;

    sub_1D5CBF568(v161);

    sub_1D5D2CFE8(v155, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D5D2CFE8(v167, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v180, sub_1D668DF18);
}

uint64_t sub_1D64ADB94()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6E6572646C696863;
  v4 = 2019912806;
  if (v1 != 4)
  {
    v4 = 1885433183;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65706F6373;
  if (v1 != 1)
  {
    v5 = 0x636E657265666572;
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

uint64_t sub_1D64ADC40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D668FB50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64ADC78(uint64_t a1)
{
  v2 = sub_1D668E118();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64ADCB4(uint64_t a1)
{
  v2 = sub_1D668E118();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatGlassEffect.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v62 = a2;
  sub_1D668E2D0();
  v4 = v3;
  v63 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D668E3FC();
  v9 = v8;
  v64 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1B918();
  sub_1D5B58B84(&qword_1EDF25628, sub_1D5E1B918);
  v13 = v65;
  sub_1D7264B0C();
  v14 = v13;
  if (v13)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v14);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_1D7264AFC();
  v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

  if (v16)
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
          goto LABEL_7;
        }
      }

      v22 = *(v19 - 2);
      v21 = *(v19 - 1);

      v23 = sub_1D661B50C();
      sub_1D5E2D970();
      v24 = swift_allocError();
      *v25 = v22;
      *(v25 + 8) = v21;
      v14 = v24;
      *(v25 + 16) = v23;
      *(v25 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v64 + 8))(v12, v9);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C30060(0, &qword_1EDF32838, sub_1D5C5A3D0, &type metadata for FormatInteger, type metadata accessor for FormatEquation);
  sub_1D5CD3B58();
  v72 = 0uLL;
  LOBYTE(v73) = 0;
  sub_1D726427C();
  v20 = v70;
  v72 = xmmword_1D728CF30;
  LOBYTE(v73) = 0;
  sub_1D668E490();
  sub_1D726427C();
  v65 = v20;
  LODWORD(v20) = v70;
  v72 = xmmword_1D7297410;
  LOBYTE(v73) = 0;
  v27 = sub_1D668E4E4();
  sub_1D726427C();
  v61 = v27;
  LODWORD(v27) = v70;
  v70 = xmmword_1D72BAA60;
  v71 = 0;
  sub_1D667CF44();
  sub_1D726427C();
  v55 = v27;
  v56 = v20;
  v57 = v72;
  v60 = v74;
  v28 = v75;
  v58 = v73;
  v59 = v76;
  v29 = v77;
  v72 = xmmword_1D72BAA70;
  LOBYTE(v73) = 0;
  sub_1D668E538();
  sub_1D726427C();
  v54 = v29;
  v53 = v28;
  v51 = v70;
  v52 = xmmword_1D72BAA80;
  v72 = xmmword_1D72BAA80;
  LOBYTE(v73) = 0;
  if (sub_1D726434C())
  {
    v70 = v52;
    v71 = 0;
    sub_1D5B58B84(&qword_1EDF3BE10, sub_1D668E2D0);
    sub_1D726431C();
    *&v52 = sub_1D725A74C();
    (*(v63 + 1))(v7, v4);
  }

  else
  {
    *&v52 = MEMORY[0x1E69E7CD0];
  }

  v72 = xmmword_1D72BAA90;
  LOBYTE(v73) = 0;
  sub_1D5B570F8();
  sub_1D726427C();
  v50 = v70;
  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  v72 = xmmword_1D72BAAA0;
  LOBYTE(v73) = 0;
  sub_1D5C35368();
  v63 = v12;
  sub_1D726427C();
  v30 = v70;
  v70 = xmmword_1D72BAAB0;
  v71 = 0;
  sub_1D5CDCE98();
  sub_1D726427C();
  v48 = v72;
  v49 = v73;
  v70 = xmmword_1D72BAAC0;
  v71 = 0;
  sub_1D726427C();
  v31 = v30;
  v45 = v72;
  v46 = v73;
  v72 = xmmword_1D72BAAD0;
  LOBYTE(v73) = 0;
  sub_1D668E58C();
  v47 = v9;
  v32 = v63;
  sub_1D726427C();
  v44 = v70;
  v70 = xmmword_1D72BAAE0;
  v71 = 0;
  sub_1D726427C();
  v43 = v72;
  v33 = v73;
  v72 = xmmword_1D72BAAF0;
  LOBYTE(v73) = 0;
  sub_1D726427C();
  (*(v64 + 8))(v32, v47);
  v34 = v80;
  v35 = v62;
  *v62 = v65;
  *(v35 + 8) = v56;
  *(v35 + 9) = v55;
  *(v35 + 10) = v78;
  *(v35 + 7) = v79;
  v36 = *(&v57 + 1);
  v35[2] = v57;
  v35[3] = v36;
  v37 = v60;
  v35[4] = v58;
  v35[5] = v37;
  v38 = v59;
  v35[6] = v53;
  v35[7] = v38;
  *(v35 + 32) = v54;
  *(v35 + 66) = v51;
  *(v35 + 67) = v68;
  *(v35 + 71) = v69;
  v39 = v50;
  v35[9] = v52;
  v35[10] = v39;
  v40 = v48;
  v35[11] = v31;
  *(v35 + 6) = __PAIR128__(*(&v48 + 1), v40);
  *(v35 + 112) = v49;
  *(v35 + 113) = v70;
  *(v35 + 29) = *(&v70 + 3);
  v41 = *(&v45 + 1);
  v35[15] = v45;
  v35[16] = v41;
  *(v35 + 136) = v46;
  *(v35 + 137) = v44;
  *(v35 + 71) = v67;
  *(v35 + 138) = v66;
  v42 = *(&v43 + 1);
  v35[18] = v43;
  v35[19] = v42;
  *(v35 + 160) = v33;
  *(v35 + 161) = v34;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatGlassEffect.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v346 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v356 = &v346 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v359 = &v346 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v363 = &v346 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v365 = &v346 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v368 = &v346 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v376 = &v346 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v379 = &v346 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v378 = &v346 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v385 = &v346 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v384 = &v346 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v387 = &v346 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v346 - v42;
  sub_1D668E5E0();
  v45 = v44;
  MEMORY[0x1EEE9AC00](v44, v46);
  v48 = &v346 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *v1;
  LODWORD(v386) = *(v1 + 8);
  v406 = *(v1 + 9);
  v50 = v1[3];
  v375 = v1[2];
  v374 = v50;
  v51 = v1[5];
  v373 = v1[4];
  v372 = v51;
  v52 = v1[7];
  v371 = v1[6];
  v370 = v52;
  v380 = *(v1 + 32);
  v377 = *(v1 + 66);
  v53 = v1[10];
  v369 = v1[9];
  v367 = v53;
  v54 = v1[12];
  v366 = v1[11];
  v362 = v54;
  v361 = v1[13];
  v364 = *(v1 + 112);
  v55 = v1[16];
  v358 = v1[15];
  v357 = v55;
  v360 = *(v1 + 136);
  v355 = *(v1 + 137);
  v56 = v1[19];
  v352 = v1[18];
  v351 = v56;
  v354 = *(v1 + 160);
  v350 = *(v1 + 161);
  v57 = a1[3];
  v58 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v57);
  sub_1D5E1B918();
  v60 = v59;
  v61 = sub_1D5B58B84(&qword_1EDF25628, sub_1D5E1B918);
  sub_1D5D2EE70(&type metadata for FormatGlassEffect, v60, v62, v57, &type metadata for FormatGlassEffect, v60, &type metadata for FormatVersions.LuckCheer, v58, v48, v61, &off_1F51F6AB8);
  if (qword_1EDF31E78 != -1)
  {
    swift_once();
  }

  v63 = sub_1D725BD1C();
  v64 = __swift_project_value_buffer(v63, qword_1EDFFCC90);
  v65 = *(v63 - 8);
  v66 = *(v65 + 16);
  v391 = (v65 + 16);
  *&v392 = v66;
  v66(v43, v64, v63);
  v390 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v397 = 0uLL;
  LOBYTE(v398) = 0;
  v67 = &v48[*(v45 + 44)];
  *&v389 = v43;
  v69 = *v67;
  v68 = *(v67 + 1);
  LOBYTE(v403) = 0;
  v70 = swift_allocObject();
  v72 = v70;
  *(v70 + 16) = 0;
  *(v70 + 24) = 0;
  *(v70 + 32) = v403;
  v396 = v69;
  *(v70 + 40) = v69;
  *(v70 + 48) = v68;
  v353 = v6;
  v382 = v63;
  v394 = v48;
  v383 = v64;
  if (!v49)
  {

    sub_1D5D2CFE8(v389, type metadata accessor for FormatVersionRequirement);

    v91 = v45;
    goto LABEL_11;
  }

  v381 = &v346;
  *&v403 = v49;
  MEMORY[0x1EEE9AC00](v70, v71);
  v388 = v45;
  *(&v346 - 4) = sub_1D5B4AA6C;
  *(&v346 - 3) = 0;
  v344 = sub_1D6708A48;
  v345 = v72;
  v405 = 0;
  v73 = swift_allocObject();
  *(v73 + 16) = 0;
  *(v73 + 24) = 0;
  *(v73 + 32) = v405;
  *(v73 + 40) = v396;
  *(v73 + 48) = v68;
  sub_1D5E1B8DC(0);
  v75 = v74;
  v76 = sub_1D5B58B84(&qword_1EDF036A8, sub_1D5E1B8DC);
  swift_retain_n();

  v349 = v75;
  v348 = v76;
  v77 = v68;
  v78 = sub_1D72647CC();
  v405 = 0;
  v79 = swift_allocObject();
  *(v79 + 24) = 0;
  *(v79 + 32) = 0;
  *(v79 + 16) = v78;
  *(v79 + 40) = v405;
  v80 = v388;
  v81 = __swift_project_boxed_opaque_existential_1(&v48[*(v388 + 9)], *&v48[*(v388 + 9) + 24]);
  MEMORY[0x1EEE9AC00](v81, v82);
  MEMORY[0x1EEE9AC00](v83, v84);
  *(&v346 - 4) = sub_1D615B4A4;
  *(&v346 - 3) = (&v346 - 6);
  v344 = sub_1D6708A48;
  v345 = v73;
  v85 = v389;
  v86 = v395;
  v88 = sub_1D5D2F7A4(v389, sub_1D615B49C, v87, sub_1D615B4A4, (&v346 - 6));
  if (!v86)
  {
    v92 = v88;
    v347 = v77;

    if (v92)
    {
      sub_1D5C30060(0, &qword_1EDF32838, sub_1D5C5A3D0, &type metadata for FormatInteger, type metadata accessor for FormatEquation);
      sub_1D668AFFC();
      sub_1D72647EC();
      v91 = v80;
      v395 = 0;

      sub_1D5D2CFE8(v389, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v395 = 0;

      sub_1D5D2CFE8(v389, type metadata accessor for FormatVersionRequirement);
      v91 = v80;
    }

    v68 = v347;
    v63 = v382;
    v64 = v383;
LABEL_11:
    v93 = v387;
    (v392)(v387, v64, v63);
    swift_storeEnumTagMultiPayload();
    v389 = xmmword_1D728CF30;
    v397 = xmmword_1D728CF30;
    LOBYTE(v398) = 0;
    LOBYTE(v403) = 0;
    v94 = swift_allocObject();
    v96 = v94;
    *(v94 + 16) = v389;
    *(v94 + 32) = v403;
    *(v94 + 40) = v396;
    *(v94 + 48) = v68;
    if (v386 == 14)
    {
    }

    else
    {
      v388 = &v346;
      LOBYTE(v403) = v386;
      MEMORY[0x1EEE9AC00](v94, v95);
      *(&v346 - 4) = sub_1D5B4AA6C;
      *(&v346 - 3) = 0;
      v344 = sub_1D6708A48;
      v345 = v96;
      v405 = 0;
      v106 = v93;
      v107 = swift_allocObject();
      *(v107 + 16) = v389;
      *(v107 + 32) = v405;
      *(v107 + 40) = v396;
      *(v107 + 48) = v68;
      sub_1D5E1B8DC(0);
      v109 = v108;
      v110 = sub_1D5B58B84(&qword_1EDF036A8, sub_1D5E1B8DC);
      swift_retain_n();
      v111 = v394;
      v386 = v109;
      v381 = v110;
      v112 = sub_1D72647CC();
      v405 = 0;
      v113 = swift_allocObject();
      *(v113 + 16) = v112;
      *(v113 + 24) = v389;
      *(v113 + 40) = v405;
      v114 = __swift_project_boxed_opaque_existential_1((v111 + *(v91 + 9)), *(v111 + *(v91 + 9) + 24));
      MEMORY[0x1EEE9AC00](v114, v115);
      MEMORY[0x1EEE9AC00](v116, v117);
      *(&v346 - 4) = sub_1D615B4A4;
      *(&v346 - 3) = (&v346 - 6);
      v344 = sub_1D6708A48;
      v345 = v107;
      v118 = v395;
      v120 = sub_1D5D2F7A4(v106, sub_1D615B49C, v119, sub_1D615B4A4, (&v346 - 6));
      v395 = v118;
      if (v118)
      {
        sub_1D5D2CFE8(v106, type metadata accessor for FormatVersionRequirement);

        goto LABEL_58;
      }

      v161 = v120;

      if ((v161 & 1) == 0)
      {
        v63 = v382;
        v64 = v383;
        v97 = v384;
        v93 = v387;
        goto LABEL_14;
      }

      sub_1D668E814();
      v162 = v395;
      sub_1D72647EC();
      v93 = v387;
      if (v162)
      {
        v163 = v387;
LABEL_43:
        sub_1D5D2CFE8(v163, type metadata accessor for FormatVersionRequirement);

        goto LABEL_58;
      }

      v395 = 0;
      v63 = v382;
      v64 = v383;
    }

    v97 = v384;
LABEL_14:
    sub_1D5D2CFE8(v93, type metadata accessor for FormatVersionRequirement);

    (v392)(v97, v64, v63);
    swift_storeEnumTagMultiPayload();
    v389 = xmmword_1D7297410;
    v397 = xmmword_1D7297410;
    LOBYTE(v398) = 0;
    LOBYTE(v403) = 0;
    v98 = swift_allocObject();
    v100 = v98;
    *(v98 + 16) = v389;
    *(v98 + 32) = v403;
    *(v98 + 40) = v396;
    *(v98 + 48) = v68;
    if (v406 == 2)
    {
      v388 = v91;

      goto LABEL_16;
    }

    v388 = &v346;
    LOBYTE(v403) = v406 & 1;
    MEMORY[0x1EEE9AC00](v98, v99);
    *(&v346 - 4) = sub_1D5B4AA6C;
    *(&v346 - 3) = 0;
    v344 = sub_1D6708A48;
    v345 = v100;
    v405 = 0;
    v121 = swift_allocObject();
    *(v121 + 16) = v389;
    *(v121 + 32) = v405;
    *(v121 + 40) = v396;
    *(v121 + 48) = v68;
    sub_1D5E1B8DC(0);
    v123 = v122;
    v124 = sub_1D5B58B84(&qword_1EDF036A8, sub_1D5E1B8DC);
    swift_retain_n();
    v125 = v394;
    v387 = v123;
    v386 = v124;
    v126 = sub_1D72647CC();
    v405 = 0;
    v127 = v68;
    v128 = v97;
    v129 = swift_allocObject();
    *(v129 + 16) = v126;
    *(v129 + 24) = v389;
    *(v129 + 40) = v405;
    v130 = __swift_project_boxed_opaque_existential_1((v125 + *(v91 + 9)), *(v125 + *(v91 + 9) + 24));
    MEMORY[0x1EEE9AC00](v130, v131);
    MEMORY[0x1EEE9AC00](v132, v133);
    *(&v346 - 4) = sub_1D615B4A4;
    *(&v346 - 3) = (&v346 - 6);
    v344 = sub_1D6708A48;
    v345 = v121;
    v134 = v395;
    v136 = sub_1D5D2F7A4(v128, sub_1D615B49C, v135, sub_1D615B4A4, (&v346 - 6));
    if (!v134)
    {
      v164 = v136;

      if (v164)
      {
        sub_1D668E704();
        sub_1D72647EC();
        v97 = v384;
        v395 = 0;
        v388 = v91;
        v68 = v127;
        v63 = v382;
        v64 = v383;
      }

      else
      {
        v395 = 0;
        v388 = v91;
        v68 = v127;
        v63 = v382;
        v64 = v383;
        v97 = v384;
      }

LABEL_16:
      sub_1D5D2CFE8(v97, type metadata accessor for FormatVersionRequirement);

      v101 = v385;
      (v392)(v385, v64, v63);
      swift_storeEnumTagMultiPayload();
      v389 = xmmword_1D72BAA60;
      v403 = xmmword_1D72BAA60;
      v404 = 0;
      LOBYTE(v397) = 0;
      v102 = swift_allocObject();
      v104 = v102;
      *(v102 + 16) = v389;
      *(v102 + 32) = v397;
      *(v102 + 40) = v396;
      *(v102 + 48) = v68;
      v105 = v380;
      if (v380 >> 11 <= 0x1E)
      {
        v387 = &v346;
        v137 = v375;
        v138 = v68;
        v139 = v374;
        *&v397 = v375;
        *(&v397 + 1) = v374;
        v140 = v373;
        v141 = v372;
        v398 = v373;
        v399 = v372;
        v142 = v371;
        v143 = v370;
        v400 = v371;
        v401 = v370;
        v402 = v380;
        MEMORY[0x1EEE9AC00](v102, v103);
        v386 = &v346 - 6;
        *(&v346 - 4) = sub_1D5B4AA6C;
        *(&v346 - 3) = 0;
        v344 = sub_1D6708A48;
        v345 = v104;
        v405 = 0;
        v144 = swift_allocObject();
        v145 = v138;
        v146 = v144;
        *(v144 + 16) = v389;
        *(v144 + 32) = v405;
        *(v144 + 40) = v396;
        *(v144 + 48) = v145;
        v347 = v145;
        swift_retain_n();
        sub_1D668E800(v137, v139, v140, v141, v142, v143, v105);
        sub_1D5E1B8DC(0);
        sub_1D5B58B84(&qword_1EDF036A8, sub_1D5E1B8DC);
        v147 = v394;
        v148 = sub_1D72647CC();
        v405 = 0;
        v149 = swift_allocObject();
        *(v149 + 16) = v148;
        *(v149 + 24) = v389;
        *(v149 + 40) = v405;
        v150 = v388;
        v151 = __swift_project_boxed_opaque_existential_1((v147 + *(v388 + 9)), *(v147 + *(v388 + 9) + 24));
        MEMORY[0x1EEE9AC00](v151, v152);
        MEMORY[0x1EEE9AC00](v153, v154);
        v155 = v386;
        *(&v346 - 4) = sub_1D615B4A4;
        *(&v346 - 3) = v155;
        v344 = sub_1D6708A48;
        v345 = v146;
        v156 = v395;
        v158 = sub_1D5D2F7A4(v385, sub_1D615B49C, v157, sub_1D615B4A4, (&v346 - 6));
        if (v156)
        {

          v159 = v385;
          sub_1D5E1DE98(v397, *(&v397 + 1), v398, v399, v400, v401, v402);
LABEL_24:
          v160 = v159;
LABEL_57:
          sub_1D5D2CFE8(v160, type metadata accessor for FormatVersionRequirement);
          goto LABEL_58;
        }

        v165 = v158;
        v166 = v347;
        v388 = v150;

        if (v165)
        {
          sub_1D6686A30();
          sub_1D72647EC();
          v68 = v166;
          v395 = 0;

          sub_1D5E1DE98(v397, *(&v397 + 1), v398, v399, v400, v401, v402);
          sub_1D5D2CFE8(v385, type metadata accessor for FormatVersionRequirement);
        }

        else
        {
          v395 = 0;

          sub_1D5E1DE98(v397, *(&v397 + 1), v398, v399, v400, v401, v402);
          sub_1D5D2CFE8(v385, type metadata accessor for FormatVersionRequirement);
          v68 = v166;
        }

        v63 = v382;
        v64 = v383;
      }

      else
      {

        sub_1D5D2CFE8(v101, type metadata accessor for FormatVersionRequirement);
      }

      v167 = v378;
      (v392)(v378, v64, v63);
      swift_storeEnumTagMultiPayload();
      v389 = xmmword_1D72BAA70;
      v397 = xmmword_1D72BAA70;
      LOBYTE(v398) = 0;
      LOBYTE(v403) = 0;
      v168 = swift_allocObject();
      v170 = v168;
      *(v168 + 16) = v389;
      *(v168 + 32) = v403;
      *(v168 + 40) = v396;
      *(v168 + 48) = v68;
      if (v377 == 4)
      {

        v171 = v167;
LABEL_46:
        sub_1D5D2CFE8(v171, type metadata accessor for FormatVersionRequirement);

        v187 = v379;
        (v392)(v379, v64, v63);
        swift_storeEnumTagMultiPayload();
        if (*(v369 + 16))
        {
          LOBYTE(v397) = 0;
          v188 = swift_allocObject();
          v389 = xmmword_1D72BAA80;
          *(v188 + 16) = xmmword_1D72BAA80;
          *(v188 + 32) = v397;
          *(v188 + 40) = v396;
          *(v188 + 48) = v68;
          sub_1D5E1B8DC(0);
          sub_1D5B58B84(&qword_1EDF036A8, sub_1D5E1B8DC);

          v189 = v394;
          v190 = sub_1D72647CC();
          LOBYTE(v397) = 0;
          v191 = swift_allocObject();
          *(v191 + 16) = v190;
          *(v191 + 24) = v389;
          *(v191 + 40) = v397;
          v192 = __swift_project_boxed_opaque_existential_1((v189 + *(v388 + 9)), *(v189 + *(v388 + 9) + 24));
          MEMORY[0x1EEE9AC00](v192, v193);
          MEMORY[0x1EEE9AC00](v194, v195);
          *(&v346 - 4) = sub_1D5B4AA6C;
          *(&v346 - 3) = 0;
          v344 = sub_1D668E674;
          v345 = v188;
          v196 = v395;
          v198 = sub_1D5D2F7A4(v187, sub_1D615B49C, v197, sub_1D615B4A4, (&v346 - 6));
          if (v196)
          {

            v160 = v379;
            goto LABEL_57;
          }

          v200 = v198;

          if (v200)
          {
            sub_1D5E07C38(v369, v394, 5, 0, 0);
          }

          v64 = v383;
          v199 = v376;
          v395 = 0;

          v63 = v382;
        }

        else
        {
          v199 = v376;
        }

        sub_1D5D2CFE8(v379, type metadata accessor for FormatVersionRequirement);
        (v392)(v199, v64, v63);
        swift_storeEnumTagMultiPayload();
        v389 = xmmword_1D72BAA90;
        v397 = xmmword_1D72BAA90;
        LOBYTE(v398) = 0;
        LOBYTE(v403) = 0;
        v201 = swift_allocObject();
        v203 = v201;
        *(v201 + 16) = v389;
        *(v201 + 32) = v403;
        *(v201 + 40) = v396;
        *(v201 + 48) = v68;
        if ((~v367 & 0xF000000000000007) != 0)
        {
          v387 = &v346;
          *&v403 = v367;
          MEMORY[0x1EEE9AC00](v201, v202);
          *(&v346 - 4) = sub_1D5B4AA6C;
          *(&v346 - 3) = 0;
          v344 = sub_1D6708A48;
          v345 = v203;
          v405 = 0;
          v205 = v204;
          v206 = swift_allocObject();
          *(v206 + 16) = v389;
          *(v206 + 32) = v405;
          *(v206 + 40) = v396;
          *(v206 + 48) = v68;
          swift_retain_n();
          sub_1D5CFCFAC(v205);
          sub_1D5E1B8DC(0);
          sub_1D5B58B84(&qword_1EDF036A8, sub_1D5E1B8DC);
          v207 = v394;
          v208 = sub_1D72647CC();
          v405 = 0;
          v209 = swift_allocObject();
          *(v209 + 16) = v208;
          *(v209 + 24) = v389;
          *(v209 + 40) = v405;
          v210 = __swift_project_boxed_opaque_existential_1((v207 + *(v388 + 9)), *(v207 + *(v388 + 9) + 24));
          MEMORY[0x1EEE9AC00](v210, v211);
          MEMORY[0x1EEE9AC00](v212, v213);
          *(&v346 - 4) = sub_1D615B4A4;
          *(&v346 - 3) = (&v346 - 6);
          v344 = sub_1D6708A48;
          v345 = v206;
          v214 = v395;
          sub_1D5D2F7A4(v376, sub_1D615B49C, v215, sub_1D615B4A4, (&v346 - 6));
          if (v214)
          {

            v160 = v376;
            goto LABEL_57;
          }

          sub_1D5B55CBC();
          sub_1D72647EC();
          v395 = 0;

          v63 = v382;
          v64 = v383;
        }

        else
        {
        }

        sub_1D5D2CFE8(v376, type metadata accessor for FormatVersionRequirement);
        v217 = v368;
        (v392)(v368, v64, v63);
        swift_storeEnumTagMultiPayload();
        v389 = xmmword_1D72BAAA0;
        v397 = xmmword_1D72BAAA0;
        LOBYTE(v398) = 0;
        LOBYTE(v403) = 0;
        v218 = swift_allocObject();
        v220 = v218;
        *(v218 + 16) = v389;
        *(v218 + 32) = v403;
        *(v218 + 40) = v396;
        *(v218 + 48) = v68;
        if (v366)
        {
          v387 = &v346;
          *&v403 = v366;
          MEMORY[0x1EEE9AC00](v218, v219);
          *(&v346 - 4) = sub_1D5B4AA6C;
          *(&v346 - 3) = 0;
          v344 = sub_1D6708A48;
          v345 = v220;
          v405 = 0;
          v221 = v68;
          v222 = swift_allocObject();
          *(v222 + 16) = v389;
          *(v222 + 32) = v405;
          *(v222 + 40) = v396;
          *(v222 + 48) = v221;
          sub_1D5E1B8DC(0);
          v223 = v388;
          v225 = v224;
          v226 = sub_1D5B58B84(&qword_1EDF036A8, sub_1D5E1B8DC);
          swift_retain_n();

          v227 = v394;
          v386 = v225;
          v385 = v226;
          v228 = sub_1D72647CC();
          v405 = 0;
          v229 = swift_allocObject();
          *(v229 + 16) = v228;
          *(v229 + 24) = v389;
          *(v229 + 40) = v405;
          v230 = __swift_project_boxed_opaque_existential_1((v227 + *(v223 + 9)), *(v227 + *(v223 + 9) + 24));
          MEMORY[0x1EEE9AC00](v230, v231);
          MEMORY[0x1EEE9AC00](v232, v233);
          *(&v346 - 4) = sub_1D615B4A4;
          *(&v346 - 3) = (&v346 - 6);
          v344 = sub_1D6708A48;
          v345 = v222;
          v234 = v395;
          v236 = sub_1D5D2F7A4(v217, sub_1D615B49C, v235, sub_1D615B4A4, (&v346 - 6));
          if (v234)
          {

            v159 = v368;

            goto LABEL_24;
          }

          v237 = v236;
          v347 = v221;

          if (v237)
          {
            sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
            sub_1D66582DC();
            sub_1D72647EC();
            v64 = v383;
            v395 = 0;

            sub_1D5D2CFE8(v368, type metadata accessor for FormatVersionRequirement);
            v68 = v347;
            v63 = v382;
          }

          else
          {
            v395 = 0;

            sub_1D5D2CFE8(v368, type metadata accessor for FormatVersionRequirement);
            v68 = v347;
            v63 = v382;
            v64 = v383;
          }
        }

        else
        {

          sub_1D5D2CFE8(v217, type metadata accessor for FormatVersionRequirement);
        }

        v238 = v365;
        (v392)(v365, v64, v63);
        swift_storeEnumTagMultiPayload();
        v389 = xmmword_1D72BAAB0;
        v397 = xmmword_1D72BAAB0;
        LOBYTE(v398) = 0;
        LOBYTE(v403) = 0;
        v239 = swift_allocObject();
        v241 = v239;
        *(v239 + 16) = v389;
        *(v239 + 32) = v403;
        *(v239 + 40) = v396;
        *(v239 + 48) = v68;
        v242 = v364;
        v347 = v68;
        if (v364 == 255)
        {

          sub_1D5D2CFE8(v238, type metadata accessor for FormatVersionRequirement);
        }

        else
        {
          v387 = &v346;
          v243 = v362;
          v244 = v68;
          v245 = v361;
          *&v403 = v362;
          *(&v403 + 1) = v361;
          v404 = v364 & 1;
          MEMORY[0x1EEE9AC00](v239, v240);
          v386 = &v346 - 6;
          *(&v346 - 4) = sub_1D5B4AA6C;
          *(&v346 - 3) = 0;
          v344 = sub_1D6708A48;
          v345 = v241;
          v405 = 0;
          v246 = swift_allocObject();
          v247 = v244;
          v248 = v246;
          *(v246 + 16) = v389;
          *(v246 + 32) = v405;
          *(v246 + 40) = v396;
          *(v246 + 48) = v247;
          swift_retain_n();
          sub_1D6189668(v243, v245, v242);
          sub_1D5E1B8DC(0);
          sub_1D5B58B84(&qword_1EDF036A8, sub_1D5E1B8DC);
          v249 = v394;
          v250 = sub_1D72647CC();
          v405 = 0;
          v251 = swift_allocObject();
          *(v251 + 16) = v250;
          *(v251 + 24) = v389;
          *(v251 + 40) = v405;
          v252 = __swift_project_boxed_opaque_existential_1((v249 + *(v388 + 9)), *(v249 + *(v388 + 9) + 24));
          MEMORY[0x1EEE9AC00](v252, v253);
          MEMORY[0x1EEE9AC00](v254, v255);
          v256 = v386;
          *(&v346 - 4) = sub_1D615B4A4;
          *(&v346 - 3) = v256;
          v344 = sub_1D6708A48;
          v345 = v248;
          v257 = v395;
          v259 = sub_1D5D2F7A4(v238, sub_1D615B49C, v258, sub_1D615B4A4, (&v346 - 6));
          if (v257)
          {

            v260 = &v395;
LABEL_90:
            v159 = *(v260 - 32);
            sub_1D5D2F2C8(v403, *(&v403 + 1), v404);
            goto LABEL_24;
          }

          v261 = v259;
          v68 = v347;

          if (v261)
          {
            sub_1D60ED320();
            sub_1D72647EC();
          }

          v395 = 0;

          sub_1D5D2F2C8(v403, *(&v403 + 1), v404);
          sub_1D5D2CFE8(v365, type metadata accessor for FormatVersionRequirement);
          v63 = v382;
          v64 = v383;
        }

        v262 = v363;
        (v392)(v363, v64, v63);
        swift_storeEnumTagMultiPayload();
        v389 = xmmword_1D72BAAC0;
        v397 = xmmword_1D72BAAC0;
        LOBYTE(v398) = 0;
        LOBYTE(v403) = 0;
        v263 = swift_allocObject();
        v265 = v263;
        *(v263 + 16) = v389;
        *(v263 + 32) = v403;
        *(v263 + 40) = v396;
        *(v263 + 48) = v68;
        v266 = v360;
        if (v360 == 255)
        {

          sub_1D5D2CFE8(v262, type metadata accessor for FormatVersionRequirement);
        }

        else
        {
          v387 = &v346;
          v267 = v358;
          v268 = v68;
          v269 = v357;
          *&v403 = v358;
          *(&v403 + 1) = v357;
          v404 = v360 & 1;
          MEMORY[0x1EEE9AC00](v263, v264);
          v386 = &v346 - 6;
          *(&v346 - 4) = sub_1D5B4AA6C;
          *(&v346 - 3) = 0;
          v344 = sub_1D6708A48;
          v345 = v265;
          v405 = 0;
          v270 = swift_allocObject();
          v271 = v268;
          v272 = v270;
          *(v270 + 16) = v389;
          *(v270 + 32) = v405;
          *(v270 + 40) = v396;
          *(v270 + 48) = v271;
          swift_retain_n();
          sub_1D6189668(v267, v269, v266);
          sub_1D5E1B8DC(0);
          sub_1D5B58B84(&qword_1EDF036A8, sub_1D5E1B8DC);
          v273 = v394;
          v274 = sub_1D72647CC();
          v405 = 0;
          v275 = swift_allocObject();
          *(v275 + 16) = v274;
          *(v275 + 24) = v389;
          *(v275 + 40) = v405;
          v276 = __swift_project_boxed_opaque_existential_1((v273 + *(v388 + 9)), *(v273 + *(v388 + 9) + 24));
          MEMORY[0x1EEE9AC00](v276, v277);
          MEMORY[0x1EEE9AC00](v278, v279);
          v280 = v386;
          *(&v346 - 4) = sub_1D615B4A4;
          *(&v346 - 3) = v280;
          v344 = sub_1D6708A48;
          v345 = v272;
          v281 = v395;
          v283 = sub_1D5D2F7A4(v262, sub_1D615B49C, v282, sub_1D615B4A4, (&v346 - 6));
          if (v281)
          {

            v260 = &v393;
            goto LABEL_90;
          }

          v284 = v283;
          v68 = v347;

          if (v284)
          {
            sub_1D60ED320();
            sub_1D72647EC();
          }

          v395 = 0;

          sub_1D5D2F2C8(v403, *(&v403 + 1), v404);
          sub_1D5D2CFE8(v363, type metadata accessor for FormatVersionRequirement);
          v63 = v382;
          v64 = v383;
        }

        v167 = v359;
        (v392)(v359, v64, v63);
        swift_storeEnumTagMultiPayload();
        v389 = xmmword_1D72BAAD0;
        v397 = xmmword_1D72BAAD0;
        LOBYTE(v398) = 0;
        LOBYTE(v403) = 0;
        v285 = swift_allocObject();
        v287 = v285;
        *(v285 + 16) = v389;
        *(v285 + 32) = v403;
        *(v285 + 40) = v396;
        *(v285 + 48) = v68;
        if (v355 == 5)
        {

          v288 = v167;
LABEL_87:
          sub_1D5D2CFE8(v288, type metadata accessor for FormatVersionRequirement);

          v301 = v356;
          (v392)(v356, v64, v63);
          swift_storeEnumTagMultiPayload();
          v389 = xmmword_1D72BAAE0;
          v397 = xmmword_1D72BAAE0;
          LOBYTE(v398) = 0;
          LOBYTE(v403) = 0;
          v302 = swift_allocObject();
          v304 = v302;
          *(v302 + 16) = v389;
          *(v302 + 32) = v403;
          *(v302 + 40) = v396;
          *(v302 + 48) = v68;
          if (v354 == 255)
          {

            sub_1D5D2CFE8(v301, type metadata accessor for FormatVersionRequirement);

            v324 = v395;
            v325 = v350;
            v326 = v353;
          }

          else
          {
            v387 = &v346;
            v305 = v352;
            v306 = v351;
            *&v403 = v352;
            *(&v403 + 1) = v351;
            v404 = v354 & 1;
            MEMORY[0x1EEE9AC00](v302, v303);
            v386 = &v346 - 6;
            *(&v346 - 4) = sub_1D5B4AA6C;
            *(&v346 - 3) = 0;
            v344 = sub_1D6708A48;
            v345 = v304;
            v405 = 0;
            v307 = v68;
            v309 = v308;
            v310 = swift_allocObject();
            *(v310 + 16) = v389;
            *(v310 + 32) = v405;
            *(v310 + 40) = v396;
            *(v310 + 48) = v307;
            swift_retain_n();
            sub_1D6189668(v305, v306, v309);
            sub_1D5E1B8DC(0);
            v312 = v311;
            sub_1D5B58B84(&qword_1EDF036A8, sub_1D5E1B8DC);
            v313 = v394;
            v385 = v312;
            v314 = sub_1D72647CC();
            v405 = 0;
            v315 = swift_allocObject();
            *(v315 + 16) = v314;
            *(v315 + 24) = v389;
            *(v315 + 40) = v405;
            v316 = __swift_project_boxed_opaque_existential_1((v313 + *(v388 + 9)), *(v313 + *(v388 + 9) + 24));
            MEMORY[0x1EEE9AC00](v316, v317);
            MEMORY[0x1EEE9AC00](v318, v319);
            v320 = v386;
            *(&v346 - 4) = sub_1D615B4A4;
            *(&v346 - 3) = v320;
            v344 = sub_1D6708A48;
            v345 = v310;
            v321 = v395;
            v323 = sub_1D5D2F7A4(v301, sub_1D615B49C, v322, sub_1D615B4A4, (&v346 - 6));
            v324 = v321;
            if (v321)
            {

              v260 = &v388;
              goto LABEL_90;
            }

            v327 = v323;

            if (v327)
            {
              sub_1D60ED320();
              sub_1D72647EC();
            }

            sub_1D5D2F2C8(v403, *(&v403 + 1), v404);
            sub_1D5D2CFE8(v356, type metadata accessor for FormatVersionRequirement);
            v326 = v353;
            v325 = v350;
            v68 = v307;
            v64 = v383;
          }

          (v392)(v326, v64, v382);
          swift_storeEnumTagMultiPayload();
          v392 = xmmword_1D72BAAF0;
          v397 = xmmword_1D72BAAF0;
          LOBYTE(v398) = 0;
          LOBYTE(v403) = 0;
          v328 = swift_allocObject();
          v330 = v328;
          *(v328 + 16) = v392;
          *(v328 + 32) = v403;
          *(v328 + 40) = v396;
          *(v328 + 48) = v68;
          if (v325 == 2)
          {

            v163 = v326;
          }

          else
          {
            v391 = &v346;
            LOBYTE(v403) = v325 & 1;
            MEMORY[0x1EEE9AC00](v328, v329);
            v395 = v324;
            *(&v346 - 4) = sub_1D5B4AA6C;
            *(&v346 - 3) = 0;
            v344 = sub_1D6708A48;
            v345 = v330;
            v405 = 0;
            v331 = v68;
            v332 = swift_allocObject();
            *(v332 + 16) = v392;
            *(v332 + 32) = v405;
            *(v332 + 40) = v396;
            *(v332 + 48) = v331;
            sub_1D5E1B8DC(0);
            sub_1D5B58B84(&qword_1EDF036A8, sub_1D5E1B8DC);
            swift_retain_n();
            v333 = v394;
            v334 = sub_1D72647CC();
            v405 = 0;
            v335 = swift_allocObject();
            *(v335 + 16) = v334;
            *(v335 + 24) = v392;
            *(v335 + 40) = v405;
            v336 = __swift_project_boxed_opaque_existential_1((v333 + *(v388 + 9)), *(v333 + *(v388 + 9) + 24));
            MEMORY[0x1EEE9AC00](v336, v337);
            MEMORY[0x1EEE9AC00](v338, v339);
            *(&v346 - 4) = sub_1D615B4A4;
            *(&v346 - 3) = (&v346 - 6);
            v344 = sub_1D6708A48;
            v345 = v332;
            v340 = v395;
            v342 = sub_1D5D2F7A4(v326, sub_1D615B49C, v341, sub_1D615B4A4, (&v346 - 6));
            if (v340)
            {
              sub_1D5D2CFE8(v326, type metadata accessor for FormatVersionRequirement);

              goto LABEL_58;
            }

            v343 = v342;

            if (v343)
            {
              sub_1D668E704();
              sub_1D72647EC();
            }

            v163 = v353;
          }

          goto LABEL_43;
        }

        v387 = &v346;
        LOBYTE(v403) = v355;
        MEMORY[0x1EEE9AC00](v285, v286);
        *(&v346 - 4) = sub_1D5B4AA6C;
        *(&v346 - 3) = 0;
        v344 = sub_1D6708A48;
        v345 = v287;
        v405 = 0;
        v289 = swift_allocObject();
        *(v289 + 16) = v389;
        *(v289 + 32) = v405;
        *(v289 + 40) = v396;
        *(v289 + 48) = v68;
        sub_1D5E1B8DC(0);
        v291 = v290;
        sub_1D5B58B84(&qword_1EDF036A8, sub_1D5E1B8DC);
        swift_retain_n();
        v292 = v394;
        v386 = v291;
        v293 = sub_1D72647CC();
        v405 = 0;
        v294 = swift_allocObject();
        *(v294 + 16) = v293;
        *(v294 + 24) = v389;
        *(v294 + 40) = v405;
        v295 = __swift_project_boxed_opaque_existential_1((v292 + *(v388 + 9)), *(v292 + *(v388 + 9) + 24));
        MEMORY[0x1EEE9AC00](v295, v296);
        MEMORY[0x1EEE9AC00](v297, v298);
        *(&v346 - 4) = sub_1D615B4A4;
        *(&v346 - 3) = (&v346 - 6);
        v344 = sub_1D6708A48;
        v345 = v289;
        v299 = v395;
        sub_1D5D2F7A4(v167, sub_1D615B49C, v300, sub_1D615B4A4, (&v346 - 6));
        if (!v299)
        {

          sub_1D668E758();
          sub_1D72647EC();
          v395 = 0;
          v63 = v382;
          v64 = v383;
          v288 = v359;
          goto LABEL_87;
        }

LABEL_85:
        sub_1D5D2CFE8(v167, type metadata accessor for FormatVersionRequirement);

        goto LABEL_58;
      }

      v387 = &v346;
      LOBYTE(v403) = v377;
      MEMORY[0x1EEE9AC00](v168, v169);
      *(&v346 - 4) = sub_1D5B4AA6C;
      *(&v346 - 3) = 0;
      v344 = sub_1D6708A48;
      v345 = v170;
      v405 = 0;
      v172 = swift_allocObject();
      *(v172 + 16) = v389;
      *(v172 + 32) = v405;
      *(v172 + 40) = v396;
      *(v172 + 48) = v68;
      sub_1D5E1B8DC(0);
      v174 = v173;
      sub_1D5B58B84(&qword_1EDF036A8, sub_1D5E1B8DC);
      swift_retain_n();
      v175 = v394;
      v386 = v174;
      v176 = sub_1D72647CC();
      v405 = 0;
      v177 = swift_allocObject();
      *(v177 + 16) = v176;
      *(v177 + 24) = v389;
      *(v177 + 40) = v405;
      v178 = __swift_project_boxed_opaque_existential_1((v175 + *(v388 + 9)), *(v175 + *(v388 + 9) + 24));
      MEMORY[0x1EEE9AC00](v178, v179);
      MEMORY[0x1EEE9AC00](v180, v181);
      *(&v346 - 4) = sub_1D615B4A4;
      *(&v346 - 3) = (&v346 - 6);
      v344 = sub_1D6708A48;
      v345 = v172;
      v182 = v395;
      v184 = sub_1D5D2F7A4(v167, sub_1D615B49C, v183, sub_1D615B4A4, (&v346 - 6));
      v395 = v182;
      if (v182)
      {
        goto LABEL_85;
      }

      v185 = v184;

      if (v185)
      {
        sub_1D668E7AC();
        v186 = v395;
        sub_1D72647EC();
        if (v186)
        {
          v163 = v378;
          goto LABEL_43;
        }

        v395 = 0;
      }

      v63 = v382;
      v64 = v383;
      v171 = v378;
      goto LABEL_46;
    }

    sub_1D5D2CFE8(v128, type metadata accessor for FormatVersionRequirement);

LABEL_58:
    v90 = v394;
    return sub_1D5D2CFE8(v90, sub_1D668E5E0);
  }

  v89 = v394;

  sub_1D5D2CFE8(v85, type metadata accessor for FormatVersionRequirement);
  v90 = v89;
  return sub_1D5D2CFE8(v90, sub_1D668E5E0);
}

unint64_t sub_1D64B22EC(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x746E6169726176;
      break;
    case 2:
      result = 0x656C797473;
      break;
    case 3:
      result = 0x6169726176627573;
      break;
    case 4:
      result = 1702521203;
      break;
    case 5:
      result = 0x736E6F6974706FLL;
      break;
    case 6:
      result = 0x6F6C6F43746E6974;
      break;
    case 7:
      result = 0x656E68746F6F6D73;
      break;
    case 8:
      result = 0x4C746E65746E6F63;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
    case 12:
      result = 0x6576697470616461;
      break;
    case 13:
      result = 1885433183;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D64B2470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D668FD54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64B24A8(uint64_t a1)
{
  v2 = sub_1D5E1B9F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64B24E4(uint64_t a1)
{
  v2 = sub_1D5E1B9F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D64B2520(void *a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v45 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v45 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v45 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v45 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v45 - v21;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v29 = sub_1D5C30408();
  v46 = v26;
  sub_1D5D2EE70(&type metadata for FormatGlassEffectInteractionState, &type metadata for FormatCodingKeys, v30, v28, &type metadata for FormatGlassEffectInteractionState, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.LuckCheer, v27, v26, v29, &off_1F51F6AB8);
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v42 = sub_1D725BD1C();
      v43 = __swift_project_value_buffer(v42, qword_1EDFFCC90);
      (*(*(v42 - 8) + 16))(v18, v43, v42);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v33 = v46;
      sub_1D6419444(1, v18);
      v34 = v18;
    }

    else
    {
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCC90);
      (*(*(v35 - 8) + 16))(v22, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v33 = v46;
      sub_1D6419444(0, v22);
      v34 = v22;
    }
  }

  else if (a2 == 2)
  {
    if (qword_1EDF31E78 != -1)
    {
      swift_once();
    }

    v37 = sub_1D725BD1C();
    v38 = __swift_project_value_buffer(v37, qword_1EDFFCC90);
    (*(*(v37 - 8) + 16))(v14, v38, v37);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D6419444(2, v14);
    v34 = v14;
  }

  else if (a2 == 3)
  {
    if (qword_1EDF31E78 != -1)
    {
      swift_once();
    }

    v31 = sub_1D725BD1C();
    v32 = __swift_project_value_buffer(v31, qword_1EDFFCC90);
    (*(*(v31 - 8) + 16))(v10, v32, v31);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D6419444(3, v10);
    v34 = v10;
  }

  else
  {
    if (qword_1EDF31E78 != -1)
    {
      swift_once();
    }

    v39 = sub_1D725BD1C();
    v40 = __swift_project_value_buffer(v39, qword_1EDFFCC90);
    v41 = v45;
    (*(*(v39 - 8) + 16))(v45, v40, v39);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D6419444(4, v41);
    v34 = v41;
  }

  sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v33, sub_1D5D30DC4);
}

uint64_t sub_1D64B2AEC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64B2BD4()
{
  sub_1D72621EC();
}

uint64_t sub_1D64B2CA8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64B2D8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6664898();
  *a1 = result;
  return result;
}

void sub_1D64B2DBC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701602409;
  v5 = 0xE800000000000000;
  v6 = 0x7265766F6C6C6F72;
  v7 = 0xE700000000000000;
  v8 = 0x64657373657270;
  if (v2 != 3)
  {
    v8 = 0x7250796C70656564;
    v7 = 0xED00006465737365;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x64656C6261736964;
    v3 = 0xE800000000000000;
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

uint64_t sub_1D64B2F10(void *a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v66 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v64 = &v62 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v65 = &v62 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v63 = &v62 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v62 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v62 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v62 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v62 - v30;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v35 = &v62 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1[3];
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v36);
  v38 = sub_1D5C30408();
  v67 = v35;
  sub_1D5D2EE70(&type metadata for FormatGlassEffectOption, &type metadata for FormatCodingKeys, v39, v36, &type metadata for FormatGlassEffectOption, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.LuckCheer, v37, v35, v38, &off_1F51F6AB8);
  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      v44 = v67;
      if (a2 == 6)
      {
        if (qword_1EDF31E78 != -1)
        {
          swift_once();
        }

        v51 = sub_1D725BD1C();
        v52 = __swift_project_value_buffer(v51, qword_1EDFFCC90);
        v27 = v64;
        (*(*(v51 - 8) + 16))(v64, v52, v51);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v47 = 6;
      }

      else
      {
        if (qword_1EDF31E78 != -1)
        {
          swift_once();
        }

        v60 = sub_1D725BD1C();
        v61 = __swift_project_value_buffer(v60, qword_1EDFFCC90);
        v27 = v66;
        (*(*(v60 - 8) + 16))(v66, v61, v60);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v47 = 7;
      }
    }

    else
    {
      v44 = v67;
      if (a2 == 4)
      {
        if (qword_1EDF31E78 != -1)
        {
          swift_once();
        }

        v45 = sub_1D725BD1C();
        v46 = __swift_project_value_buffer(v45, qword_1EDFFCC90);
        v27 = v63;
        (*(*(v45 - 8) + 16))(v63, v46, v45);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v47 = 4;
      }

      else
      {
        if (qword_1EDF31E78 != -1)
        {
          swift_once();
        }

        v56 = sub_1D725BD1C();
        v57 = __swift_project_value_buffer(v56, qword_1EDFFCC90);
        v27 = v65;
        (*(*(v56 - 8) + 16))(v65, v57, v56);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v47 = 5;
      }
    }

    v55 = v27;
    goto LABEL_33;
  }

  if (a2 > 1u)
  {
    v44 = v67;
    if (a2 == 2)
    {
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v48 = sub_1D725BD1C();
      v49 = __swift_project_value_buffer(v48, qword_1EDFFCC90);
      (*(*(v48 - 8) + 16))(v23, v49, v48);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641CBCC(2, v23);
      v50 = v23;
    }

    else
    {
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v58 = sub_1D725BD1C();
      v59 = __swift_project_value_buffer(v58, qword_1EDFFCC90);
      (*(*(v58 - 8) + 16))(v19, v59, v58);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641CBCC(3, v19);
      v50 = v19;
    }

    goto LABEL_34;
  }

  if (a2)
  {
    if (qword_1EDF31E78 != -1)
    {
      swift_once();
    }

    v53 = sub_1D725BD1C();
    v54 = __swift_project_value_buffer(v53, qword_1EDFFCC90);
    (*(*(v53 - 8) + 16))(v27, v54, v53);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v47 = 1;
    v55 = v27;
    v44 = v67;
LABEL_33:
    sub_1D641CBCC(v47, v55);
    v50 = v27;
LABEL_34:
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CFE8(v44, sub_1D5D30DC4);
  }

  if (qword_1EDF31E78 != -1)
  {
    swift_once();
  }

  v40 = sub_1D725BD1C();
  v41 = __swift_project_value_buffer(v40, qword_1EDFFCC90);
  (*(*(v40 - 8) + 16))(v31, v41, v40);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v42 = v67;
  sub_1D641CBCC(0, v31);
  sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v42, sub_1D5D30DC4);
}

uint64_t sub_1D64B3748@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6664208();
  *a1 = result;
  return result;
}