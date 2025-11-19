uint64_t sub_1D6545E84(uint64_t a1)
{
  v2 = sub_1D5CA7408();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6545EC0(uint64_t a1)
{
  v2 = sub_1D5CA7408();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPreviewParameters.encode(to:)(void *a1)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v110 = v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  *&v111 = v98 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v98 - v12;
  sub_1D66A9D30();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v106 = *(v1 + 24);
  v105 = *(v1 + 8);
  LODWORD(v109) = *(v1 + 40);
  v20 = *(v1 + 56);
  v104 = *(v1 + 48);
  v103 = v20;
  v123 = *(v1 + 64);
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D5CD4708();
  v24 = v23;
  v25 = sub_1D5B58B84(&qword_1EDF251A8, sub_1D5CD4708);
  sub_1D5D2EE70(&type metadata for FormatPreviewParameters, v24, v26, v21, &type metadata for FormatPreviewParameters, v24, &type metadata for FormatVersions.JazzkonC, v22, v18, v25, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v27 = sub_1D725BD1C();
  v28 = __swift_project_value_buffer(v27, qword_1EDFFCD30);
  v29 = *(v27 - 8);
  v114 = *(v29 + 16);
  *&v115 = v28;
  v113 = (v29 + 16);
  v114(v13);
  v112 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v118 = 0uLL;
  LOBYTE(v119) = 0;
  v30 = &v18[*(v15 + 44)];
  v31 = *v30;
  v32 = *(v30 + 1);
  LOBYTE(v120) = 0;
  v33 = swift_allocObject();
  v35 = v33;
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v120;
  *(v33 + 40) = v31;
  *(v33 + 48) = v32;
  v116 = v2;
  v117 = v18;
  v107 = v15;
  v108 = v27;
  if ((~v19 & 0xF000000000000007) != 0)
  {
    v100 = v98;
    *&v120 = v19;
    MEMORY[0x1EEE9AC00](v33, v34);
    v99 = &v98[-6];
    v98[-4] = sub_1D5B4AA6C;
    v98[-3] = 0;
    v96 = sub_1D6708B14;
    v97 = v35;
    v122 = 0;
    v44 = swift_allocObject();
    *(v44 + 16) = 0;
    *(v44 + 24) = 0;
    *(v44 + 32) = v122;
    *(v44 + 40) = v31;
    *(v44 + 48) = v32;
    swift_retain_n();
    sub_1D5CFCFAC(v19);
    sub_1D66A9DC4();
    v46 = v45;
    v47 = sub_1D5B58B84(&qword_1EDF03168, sub_1D66A9DC4);
    v101 = v31;
    v98[1] = v46;
    v48 = sub_1D72647CC();
    v122 = 0;
    v49 = swift_allocObject();
    v102 = v32;
    *(v49 + 24) = 0;
    *(v49 + 32) = 0;
    *(v49 + 16) = v48;
    *(v49 + 40) = v122;
    v50 = __swift_project_boxed_opaque_existential_1(&v18[*(v15 + 36)], *&v18[*(v15 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v50, v51);
    MEMORY[0x1EEE9AC00](v52, v53);
    v54 = v99;
    v98[-4] = sub_1D615B4A4;
    v98[-3] = v54;
    v96 = sub_1D6708B14;
    v97 = v44;
    v55 = v116;
    v57 = sub_1D5D2F7A4(v13, sub_1D615B49C, v56, sub_1D615B4A4, &v98[-6]);
    if (v55)
    {

      goto LABEL_21;
    }

    v71 = v57;
    v116 = v47;
    v72 = v102;

    v36 = v111;
    if (v71)
    {
      sub_1D5B55CBC();
      sub_1D72647EC();
      v27 = v108;
      v32 = v72;
      v116 = 0;

      v31 = v101;
    }

    else
    {
      v116 = 0;

      v32 = v72;
      v31 = v101;
      v27 = v108;
    }
  }

  else
  {

    v36 = v111;
  }

  sub_1D5D2CFE8(v13, type metadata accessor for FormatVersionRequirement);
  (v114)(v36, v115, v27);
  swift_storeEnumTagMultiPayload();
  v111 = xmmword_1D728CF30;
  v120 = xmmword_1D728CF30;
  v121 = 0;
  LOBYTE(v118) = 0;
  v37 = swift_allocObject();
  v39 = v37;
  *(v37 + 16) = v111;
  *(v37 + 32) = v118;
  *(v37 + 40) = v31;
  *(v37 + 48) = v32;
  if (v109)
  {
    v40 = v31;

    v41 = v116;
    v42 = v110;
    v43 = v123;
LABEL_17:
    sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);

    (v114)(v42, v115, v108);
    swift_storeEnumTagMultiPayload();
    v115 = xmmword_1D7297410;
    v118 = xmmword_1D7297410;
    LOBYTE(v119) = 0;
    LOBYTE(v120) = 0;
    v74 = swift_allocObject();
    v76 = v74;
    *(v74 + 16) = v115;
    *(v74 + 32) = v120;
    *(v74 + 40) = v40;
    *(v74 + 48) = v32;
    if (v43 > 0xFD)
    {

      sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v117, sub_1D66A9D30);
    }

    v77 = v40;
    v114 = v98;
    v78 = v104;
    v79 = v103;
    *&v120 = v104;
    *(&v120 + 1) = v103;
    v121 = v43;
    MEMORY[0x1EEE9AC00](v74, v75);
    v116 = v41;
    v113 = &v98[-6];
    v98[-4] = sub_1D5B4AA6C;
    v98[-3] = 0;
    v96 = sub_1D6708B14;
    v97 = v76;
    v122 = 0;
    v80 = swift_allocObject();
    *(v80 + 16) = v115;
    *(v80 + 32) = v122;
    *(v80 + 40) = v77;
    *(v80 + 48) = v32;
    swift_retain_n();
    sub_1D5ED34B0(v78, v79, v43);
    sub_1D66A9DC4();
    v81 = v42;
    sub_1D5B58B84(&qword_1EDF03168, sub_1D66A9DC4);
    v82 = v117;
    v83 = sub_1D72647CC();
    v122 = 0;
    v84 = swift_allocObject();
    *(v84 + 16) = v83;
    *(v84 + 24) = v115;
    *(v84 + 40) = v122;
    v85 = __swift_project_boxed_opaque_existential_1((v82 + *(v107 + 36)), *(v82 + *(v107 + 36) + 24));
    MEMORY[0x1EEE9AC00](v85, v86);
    MEMORY[0x1EEE9AC00](v87, v88);
    v89 = v113;
    v98[-4] = sub_1D615B4A4;
    v98[-3] = v89;
    v96 = sub_1D66A9E58;
    v97 = v80;
    v90 = v116;
    v92 = sub_1D5D2F7A4(v81, sub_1D615B49C, v91, sub_1D615B4A4, &v98[-6]);
    if (!v90)
    {
      v95 = v92;

      if (v95)
      {
        sub_1D6661258();
        sub_1D72647EC();
      }

      sub_1D5ED34A0(v120, *(&v120 + 1), v121);
      v93 = v110;
      goto LABEL_22;
    }

    v13 = v110;
    sub_1D5ED34A0(v120, *(&v120 + 1), v121);
LABEL_21:
    v93 = v13;
LABEL_22:
    sub_1D5D2CFE8(v93, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CFE8(v117, sub_1D66A9D30);
  }

  v109 = v98;
  v118 = v105;
  v119 = v106;
  MEMORY[0x1EEE9AC00](v37, v38);
  v98[-4] = sub_1D5B4AA6C;
  v98[-3] = 0;
  v96 = sub_1D6708B14;
  v97 = v39;
  v122 = 0;
  v58 = swift_allocObject();
  *(v58 + 16) = v111;
  *(v58 + 32) = v122;
  *(v58 + 40) = v31;
  *(v58 + 48) = v32;
  sub_1D66A9DC4();
  v59 = sub_1D5B58B84(&qword_1EDF03168, sub_1D66A9DC4);
  swift_retain_n();
  v101 = v31;
  v60 = v117;
  v61 = sub_1D72647CC();
  v102 = v32;
  v62 = v61;
  v122 = 0;
  v63 = swift_allocObject();
  *(v63 + 16) = v62;
  *(v63 + 24) = v111;
  *(v63 + 40) = v122;
  v64 = __swift_project_boxed_opaque_existential_1((v60 + *(v107 + 36)), *(v60 + *(v107 + 36) + 24));
  MEMORY[0x1EEE9AC00](v64, v65);
  MEMORY[0x1EEE9AC00](v66, v67);
  v98[-4] = sub_1D615B4A4;
  v98[-3] = &v98[-6];
  v96 = sub_1D6708B14;
  v97 = v58;
  v68 = v116;
  v70 = sub_1D5D2F7A4(v36, sub_1D615B49C, v69, sub_1D615B4A4, &v98[-6]);
  if (!v68)
  {
    v73 = v70;
    v116 = v59;
    v40 = v101;

    if (v73)
    {
      sub_1D667D9C4();
      sub_1D72647EC();
    }

    v41 = 0;
    v42 = v110;
    v43 = v123;
    v32 = v102;
    goto LABEL_17;
  }

  sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v117, sub_1D66A9D30);
}

uint64_t sub_1D6546CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66AAF88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6546CEC(uint64_t a1)
{
  v2 = sub_1D5CD47F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6546D28(uint64_t a1)
{
  v2 = sub_1D5CD47F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPrimitivePropertyDefinition.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v72 = a4;
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v71 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v73 = &v60 - v12;
  v74 = sub_1D726393C();
  v82 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v13);
  v70 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v76 = a2;
  v77 = &v60 - v17;
  v75 = a3;
  v18 = _s10CodingKeysOMa_94();
  WitnessTable = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  *&v84 = v18;
  *(&v84 + 1) = WitnessTable;
  v79 = v20;
  v80 = WitnessTable;
  v85 = v20;
  v86 = v21;
  v78 = v21;
  v22 = type metadata accessor for FormatCodingKeysContainer();
  swift_getWitnessTable();
  v23 = sub_1D726435C();
  v81 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v60 - v25;
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  v27 = v83;
  sub_1D7264B0C();
  v28 = v27;
  if (v27)
  {
LABEL_2:
    v29 = a1;
  }

  else
  {
    v69 = v18;
    v83 = v26;
    __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    v31 = sub_1D7264AFC();
    v32 = Dictionary<>.errorOnUnknownKeys.getter(v31);

    v29 = a1;
    v33 = v82;
    if (v32)
    {
      v34 = 0;
      v28 = sub_1D726433C();
      v35 = 0;
      v29 = v28 + 6;
      while (1)
      {
        if (v35 == sub_1D726279C())
        {

          v29 = a1;
          goto LABEL_13;
        }

        v36 = sub_1D726277C();
        sub_1D726271C();
        if ((v36 & 1) == 0)
        {
          break;
        }

        v37 = *v29;
        v84 = *(v29 - 1);
        LOBYTE(v85) = v37;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_15;
        }

        v38 = sub_1D6AFC82C(v22);
        ++v35;
        v29 += 3;
        if (v39)
        {
          v40 = v38;
          v41 = v39;

          v42 = sub_1D6AFC690(v69, v80, v79, v78);
          sub_1D5E2D970();
          v28 = swift_allocError();
          *v43 = v40;
          *(v43 + 8) = v41;
          *(v43 + 16) = v42;
          *(v43 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v81 + 8))(v83, v23);
          goto LABEL_2;
        }
      }

      sub_1D7263DBC();
      __break(1u);
LABEL_15:
      __break(1u);
    }

    else
    {
LABEL_13:
      v84 = 0uLL;
      LOBYTE(v85) = 0;
      v36 = v83;
      v44 = sub_1D72642BC();
      v34 = v45;
      v84 = xmmword_1D728CF30;
      LOBYTE(v85) = 0;
      v46 = sub_1D72642BC();
      a1 = v81;
      v80 = v46;
      v22 = v47;
      v84 = xmmword_1D7297410;
      LOBYTE(v85) = 0;
      v78 = sub_1D72642BC();
      v79 = v44;
      v49 = v48;
      v84 = xmmword_1D72BAA60;
      LOBYTE(v85) = 0;
      v68 = sub_1D72642BC();
      v69 = v50;
      v84 = xmmword_1D72BAA70;
      LOBYTE(v85) = 0;
      v66 = sub_1D72642CC();
      v67 = v49;
      v84 = xmmword_1D72BAA80;
      LOBYTE(v85) = 0;
      v35 = v77;
      sub_1D726427C();
      v28 = 0;
    }

    v84 = xmmword_1D72BAA90;
    LOBYTE(v85) = 0;
    sub_1D5C4E620(&type metadata for FormatCodingFalseStrategy, &protocol witness table for FormatCodingFalseStrategy, &v87);
    if (!v28)
    {
      v64 = v22;
      v65 = v34;
      v63 = v87;
      sub_1D5C30060(0, &qword_1EDF1AD30, sub_1D5B56F50, &type metadata for FormatCompilerFlag, MEMORY[0x1E69E64E8]);
      sub_1D5B56DC4();
      v52 = v51;
      v84 = xmmword_1D72BAAA0;
      LOBYTE(v85) = 0;
      v53 = sub_1D5B58B84(&qword_1EDF21380, sub_1D5B56DC4);
      sub_1D5C4E620(v52, v53, &v87);
      v54 = v74;
      v55 = v36;
      v56 = v23;
      v62 = v87;
      sub_1D725B76C();
      v84 = xmmword_1D72BAAB0;
      LOBYTE(v85) = 0;
      sub_1D5B58B84(&qword_1EDF3BAA0, MEMORY[0x1E69D6A58]);
      v57 = v73;
      v61 = v56;
      sub_1D726427C();
      (*(a1 + 8))(v55, v61);
      v58 = v70;
      (*(v33 + 32))(v70, v77, v54);
      v59 = v71;
      sub_1D5C4E944(v57, v71, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
      sub_1D6961564(v79, v65, v80, v64, v78, v67, v68, v69, v72, v66 & 1, v58, v63, v62, v59);
      return __swift_destroy_boxed_opaque_existential_1(v29);
    }

    (*(v33 + 8))(v35, v74);
    (*(a1 + 8))(v36, v23);
  }

  sub_1D61E4FBC(v29, v28);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(v29);
}

uint64_t FormatPrimitivePropertyDefinition.encode(to:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v94 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v96 = &v92 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v95 = &v92 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v99 = &v92 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v101 = &v92 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v102 = &v92 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v103 = &v92 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v104 = (&v92 - v27);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v92 - v30;
  v32 = *(a2 + 16);
  v97 = *(a2 + 24);
  v98 = v32;
  v33 = _s10CodingKeysOMa_94();
  WitnessTable = swift_getWitnessTable();
  v35 = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  *&v110 = v33;
  *(&v110 + 1) = WitnessTable;
  v111 = v35;
  v112 = v36;
  v37 = type metadata accessor for FormatCodingKeysContainer();
  v38 = swift_getWitnessTable();
  sub_1D726446C();
  swift_getWitnessTable();
  v39 = type metadata accessor for VersionedKeyedEncodingContainer();
  v107 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v92 - v41;
  v43 = a1[3];
  v44 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v43);
  v100 = a2;
  sub_1D5D2EE70(a2, v37, v45, v43, a2, v37, &type metadata for FormatVersions.JazzkonC, v44, v42, v38, &off_1F51F6C78);
  v46 = v113[1];
  v108 = *v113;
  v109 = v46;
  v110 = 0uLL;
  LOBYTE(v111) = 0;
  v47 = qword_1EDF31EB0;

  if (v47 != -1)
  {
    swift_once();
  }

  v48 = sub_1D725BD1C();
  v49 = __swift_project_value_buffer(v48, qword_1EDFFCD30);
  v50 = *(v48 - 8);
  v51 = *(v50 + 16);
  v52 = v50 + 16;
  v105 = v49;
  v51(v31);
  v53 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v54 = v106;
  sub_1D5D38930(&v108, &v110, v31, sub_1D5B4AA6C, 0, v39, MEMORY[0x1E69E6158], MEMORY[0x1E69E6160]);
  if (v54)
  {
    sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
    goto LABEL_6;
  }

  sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);

  v55 = v113[3];
  v108 = v113[2];
  v109 = v55;
  v110 = xmmword_1D728CF30;
  LOBYTE(v111) = 0;
  v56 = v104;
  (v51)(v104, v105, v48);
  swift_storeEnumTagMultiPayload();

  sub_1D5D38930(&v108, &v110, v56, sub_1D5B4AA6C, 0, v39, MEMORY[0x1E69E6158], MEMORY[0x1E69E6160]);
  sub_1D5D2CFE8(v56, type metadata accessor for FormatVersionRequirement);

  v58 = v113;
  v59 = v113[5];
  v108 = v113[4];
  v109 = v59;
  v110 = xmmword_1D7297410;
  LOBYTE(v111) = 0;
  v106 = 0;
  v60 = v42;
  v61 = v39;
  v62 = v103;
  (v51)(v103, v105, v48);
  swift_storeEnumTagMultiPayload();

  v93 = v60;
  v63 = v106;
  sub_1D5D38930(&v108, &v110, v62, sub_1D5B4AA6C, 0, v61, MEMORY[0x1E69E6158], MEMORY[0x1E69E6160]);
  if (!v63)
  {
    sub_1D5D2CFE8(v62, type metadata accessor for FormatVersionRequirement);

    v64 = v58[7];
    v108 = v58[6];
    v109 = v64;
    v110 = xmmword_1D72BAA60;
    LOBYTE(v111) = 0;
    v65 = v58;
    v66 = v102;
    (v51)(v102, v105, v48);
    swift_storeEnumTagMultiPayload();

    sub_1D5D38930(&v108, &v110, v66, sub_1D5B4AA6C, 0, v61, MEMORY[0x1E69E6158], MEMORY[0x1E69E6160]);
    sub_1D5D2CFE8(v66, type metadata accessor for FormatVersionRequirement);

    v67 = v61;
    v68 = v65;
    v69 = v67;
    LOBYTE(v108) = *(v68 + 64);
    v110 = xmmword_1D72BAA70;
    LOBYTE(v111) = 0;
    v70 = v101;
    (v51)(v101, v105, v48);
    swift_storeEnumTagMultiPayload();
    sub_1D5D38930(&v108, &v110, v70, sub_1D5B4AA6C, 0, v69, MEMORY[0x1E69E6370], MEMORY[0x1E69E6378]);
    sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);
    v71 = v51;
    v72 = v52;
    v73 = v99;
    v74 = v100;
    v75 = v53;
    v76 = *(v100 + 52);
    v110 = xmmword_1D72BAA80;
    LOBYTE(v111) = 0;
    v77 = v105;
    v104 = v71;
    v105 = v72;
    (v71)(v99, v77, v48);
    swift_storeEnumTagMultiPayload();
    sub_1D5D432A4(v68 + v76, &v110, v73, sub_1D5B4AA6C, 0, v69, v98, *(v97 + 16));
    v102 = v75;
    v103 = v69;
    v78 = v104;
    sub_1D5D2CFE8(v73, type metadata accessor for FormatVersionRequirement);
    v79 = v113;
    LOBYTE(v108) = FormatPrimitivePropertyDefinition.deprecated.getter(v74) & 1;
    v110 = xmmword_1D72BAA90;
    LOBYTE(v111) = 0;
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v80 = __swift_project_value_buffer(v48, qword_1EDFFCD50);
    v81 = v95;
    v78(v95, v80, v48);
    swift_storeEnumTagMultiPayload();
    sub_1D71B5F54(&v108, &type metadata for FormatCodingFalseStrategy, &v110, v81, sub_1D5B4AA6C, 0, v103, &type metadata for FormatCodingFalseStrategy, &protocol witness table for FormatCodingFalseStrategy);
    v82 = v96;
    v106 = 0;
    sub_1D5D2CFE8(v81, type metadata accessor for FormatVersionRequirement);
    v108 = sub_1D6981050(v100);
    sub_1D5B56DC4();
    v84 = v83;
    v110 = xmmword_1D72BAAA0;
    LOBYTE(v111) = 0;
    v85 = qword_1EDF31EE0;

    if (v85 != -1)
    {
      swift_once();
    }

    v101 = __swift_project_value_buffer(v48, qword_1EDFFCD80);
    v99 = v48;
    (v78)(v82);
    swift_storeEnumTagMultiPayload();
    v86 = sub_1D5B58B84(&qword_1EDF21380, sub_1D5B56DC4);
    v39 = v103;
    v42 = v93;
    v87 = v106;
    sub_1D71B5F54(&v108, v84, &v110, v82, sub_1D5B4AA6C, 0, v103, v84, v86);
    if (!v87)
    {
      sub_1D5D2CFE8(v82, type metadata accessor for FormatVersionRequirement);

      v106 = 0;
      v88 = *(v100 + 64);
      v110 = xmmword_1D72BAAB0;
      LOBYTE(v111) = 0;
      v89 = v94;
      v78(v94, v101, v99);
      swift_storeEnumTagMultiPayload();
      v90 = sub_1D725B76C();
      v91 = sub_1D5B58B84(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58]);
      sub_1D5D432A4(v79 + v88, &v110, v89, sub_1D5B4AA6C, 0, v39, v90, v91);
      sub_1D5D2CFE8(v89, type metadata accessor for FormatVersionRequirement);
      return (*(v107 + 8))(v42, v39);
    }

    sub_1D5D2CFE8(v82, type metadata accessor for FormatVersionRequirement);
LABEL_6:

    return (*(v107 + 8))(v42, v39);
  }

  sub_1D5D2CFE8(v62, type metadata accessor for FormatVersionRequirement);

  return (*(v107 + 8))(v93, v61);
}

uint64_t sub_1D65484A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465726975716572 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746C7561666564 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7461636572706564 && a2 == 0xEA00000000006465 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x72656C69706D6F63 && a2 == 0xED00007367616C46 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73B8F40 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1D65487F4()
{
  _s10CodingKeysOMa_94();
  sub_1D72644CC();
  swift_allocObject();
  v0 = sub_1D726270C();
  *v1 = 0x706050403020100;
  *(v1 + 8) = 2312;

  return sub_1D5BFCB60(v0);
}

uint64_t sub_1D654886C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D65484A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D654889C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D66AB100();
  *a1 = result;
  return result;
}

uint64_t sub_1D65488C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D65487F4();
  *a1 = result;
  return result;
}

uint64_t sub_1D65488F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D654894C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatPrintNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v107 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v113 = v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v118 = v107 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v107 - v17;
  sub_1D66AB5E8();
  v119 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D5E1AC58();
  v26 = v25;
  v27 = sub_1D5B58B84(&qword_1EC87F928, sub_1D5E1AC58);
  v121 = v22;
  sub_1D5D2EE70(v4, v26, v28, v23, v4, v26, &type metadata for FormatVersions.Azden, v24, v22, v27, &off_1F51F6B78);
  swift_beginAccess();
  v30 = v2[2];
  v29 = v2[3];
  v31 = qword_1EDF31F10;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = sub_1D725BD1C();
  v33 = __swift_project_value_buffer(v32, qword_1EDFFCDF8);
  v34 = *(v32 - 8);
  v35 = *(v34 + 16);
  v36 = v34 + 16;
  v35(v18, v33, v32);
  v116 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v37 = sub_1D725895C();
  v38 = (*(*(v37 - 8) + 48))(v8, 1, v37);
  v114 = v36;
  v115 = v35;
  if (v38 != 1)
  {
    sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v58 = v121;
    v59 = v119;
    goto LABEL_13;
  }

  v109 = v30;
  v112 = v33;
  v111 = v32;
  sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v39 = v119;
  v40 = v121;
  v41 = &v121[*(v119 + 44)];
  v42 = *v41;
  v43 = *(v41 + 1);
  LOBYTE(v122) = 0;
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = v122;
  *(v44 + 40) = v42;
  *(v44 + 48) = v43;
  sub_1D5E1AC1C(0);
  v46 = v45;
  v47 = sub_1D5B58B84(&qword_1EC87F930, sub_1D5E1AC1C);

  *&v117 = v46;
  v110 = v47;
  v48 = sub_1D72647CC();
  LOBYTE(v122) = 0;
  v49 = swift_allocObject();
  *(v49 + 24) = 0;
  *(v49 + 32) = 0;
  *(v49 + 16) = v48;
  *(v49 + 40) = v122;
  v50 = __swift_project_boxed_opaque_existential_1((v40 + *(v39 + 36)), *(v40 + *(v39 + 36) + 24));
  MEMORY[0x1EEE9AC00](v50, v51);
  MEMORY[0x1EEE9AC00](v52, v53);
  v107[-4] = sub_1D5B4AA6C;
  v107[-3] = 0;
  v105 = sub_1D66AB67C;
  v106 = v44;
  v54 = v120;
  v56 = sub_1D5D2F7A4(v18, sub_1D615B49C, v55, sub_1D615B4A4, &v107[-6]);
  *&v120 = v54;
  if (v54)
  {
    sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v40, sub_1D66AB5E8);
  }

  v60 = v56;

  if ((v60 & 1) == 0)
  {
    sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);

    v58 = v121;
    v59 = v119;
    v32 = v111;
    v33 = v112;
LABEL_12:
    v35 = v115;
LABEL_13:
    v110 = v2;
    v64 = v2[4];
    v65 = v2[5];
    v35(v118, v33, v32);
    swift_storeEnumTagMultiPayload();
    v117 = xmmword_1D728CF30;
    v122 = xmmword_1D728CF30;
    v123 = 0;
    v66 = (v58 + *(v59 + 44));
    v68 = *v66;
    v67 = v66[1];
    LOBYTE(v124) = 0;
    v69 = swift_allocObject();
    v71 = v69;
    *(v69 + 16) = v117;
    *(v69 + 32) = v124;
    *(v69 + 40) = v68;
    *(v69 + 48) = v67;
    v108 = v67;
    v109 = v68;
    if (v65)
    {
      v112 = v33;
      v111 = v32;
      v107[2] = v107;
      v124 = v64;
      v125 = v65;
      MEMORY[0x1EEE9AC00](v69, v70);
      v107[-4] = sub_1D5B4AA6C;
      v107[-3] = 0;
      v105 = sub_1D6708B18;
      v106 = v71;
      v126 = 0;
      v72 = swift_allocObject();
      *(v72 + 16) = v117;
      *(v72 + 32) = v126;
      *(v72 + 40) = v68;
      *(v72 + 48) = v67;
      sub_1D5E1AC1C(0);
      v74 = v73;
      sub_1D5B58B84(&qword_1EC87F930, sub_1D5E1AC1C);
      swift_retain_n();

      v107[1] = v74;
      v75 = sub_1D72647CC();
      v126 = 0;
      v76 = swift_allocObject();
      *(v76 + 16) = v75;
      *(v76 + 24) = v117;
      *(v76 + 40) = v126;
      v77 = __swift_project_boxed_opaque_existential_1((v58 + *(v119 + 36)), *(v58 + *(v119 + 36) + 24));
      MEMORY[0x1EEE9AC00](v77, v78);
      MEMORY[0x1EEE9AC00](v79, v80);
      v107[-4] = sub_1D615B4A4;
      v107[-3] = &v107[-6];
      v105 = sub_1D6708B18;
      v106 = v72;
      v81 = v118;
      v82 = v120;
      v84 = sub_1D5D2F7A4(v118, sub_1D615B49C, v83, sub_1D615B4A4, &v107[-6]);
      v85 = v82;
      if (v82)
      {

        v86 = v121;
        sub_1D5D2CFE8(v81, type metadata accessor for FormatVersionRequirement);
        v63 = v86;
        return sub_1D5D2CFE8(v63, sub_1D66AB5E8);
      }

      v87 = v84;

      if (v87)
      {
        sub_1D72647EC();
        v33 = v112;

        sub_1D5D2CFE8(v81, type metadata accessor for FormatVersionRequirement);
        v32 = v111;
      }

      else
      {

        sub_1D5D2CFE8(v81, type metadata accessor for FormatVersionRequirement);
        v32 = v111;
        v33 = v112;
      }
    }

    else
    {

      sub_1D5D2CFE8(v118, type metadata accessor for FormatVersionRequirement);

      v85 = v120;
    }

    v88 = v110;
    swift_beginAccess();
    v89 = v88[6];
    v90 = v113;
    v115(v113, v33, v32);
    swift_storeEnumTagMultiPayload();
    v91 = v119;
    v92 = v109;
    if (*(v89 + 16))
    {
      LOBYTE(v124) = 0;
      v93 = swift_allocObject();
      v120 = xmmword_1D7297410;
      *(v93 + 16) = xmmword_1D7297410;
      *(v93 + 32) = v124;
      v94 = v108;
      *(v93 + 40) = v92;
      *(v93 + 48) = v94;
      sub_1D5E1AC1C(0);
      sub_1D5B58B84(&qword_1EC87F930, sub_1D5E1AC1C);

      v95 = v121;
      v96 = sub_1D72647CC();
      LOBYTE(v124) = 0;
      v97 = swift_allocObject();
      *(v97 + 16) = v96;
      *(v97 + 24) = v120;
      *(v97 + 40) = v124;
      v98 = __swift_project_boxed_opaque_existential_1((v95 + *(v91 + 36)), *(v95 + *(v91 + 36) + 24));
      MEMORY[0x1EEE9AC00](v98, v99);
      MEMORY[0x1EEE9AC00](v100, v101);
      v107[-4] = sub_1D5B4AA6C;
      v107[-3] = 0;
      v105 = sub_1D6708B18;
      v106 = v93;
      v103 = sub_1D5D2F7A4(v90, sub_1D615B49C, v102, sub_1D615B4A4, &v107[-6]);
      if (v85)
      {
      }

      else
      {
        v104 = v103;

        if (v104)
        {
          sub_1D5E08A4C(v89, v121, 2, 0, 0);
        }
      }
    }

    sub_1D5D2CFE8(v90, type metadata accessor for FormatVersionRequirement);
    v63 = v121;
    return sub_1D5D2CFE8(v63, sub_1D66AB5E8);
  }

  v122 = 0uLL;
  v123 = 0;
  v124 = v109;
  v125 = v29;
  v61 = v121;
  v62 = v120;
  sub_1D72647EC();

  sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);
  v59 = v119;
  v33 = v112;
  if (!v62)
  {
    *&v120 = 0;
    v58 = v61;
    v32 = v111;
    goto LABEL_12;
  }

  v63 = v61;
  return sub_1D5D2CFE8(v63, sub_1D66AB5E8);
}

uint64_t sub_1D6549828()
{
  v1 = 0x696669746E656469;
  v2 = 0x7365756C6176;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x6567617373656DLL;
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

uint64_t sub_1D654989C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66AC048(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65498D4(uint64_t a1)
{
  v2 = sub_1D5E1AD30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6549910(uint64_t a1)
{
  v2 = sub_1D5E1AD30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPrintNodeValue.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v49 = &v42 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v48 = &v42 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v47 = &v42 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v46 = &v42 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v45 = &v42 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v44 = &v42 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v43 = &v42 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v42 - v29;
  v51 = *v1;
  v31 = a1[3];
  v32 = a1[4];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  if (qword_1EDF31F10 != -1)
  {
    swift_once();
  }

  v33 = sub_1D725BD1C();
  v34 = __swift_project_value_buffer(v33, qword_1EDFFCDF8);
  v35 = *(*(v33 - 8) + 16);
  v35(v30, v34, v33);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v36 = v55;
  sub_1D5D2BEC4(v30, sub_1D5B4AA6C, 0, v31, v32);
  if (v36)
  {
    return sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  v38 = v52[3];
  v39 = v52[4];
  __swift_project_boxed_opaque_existential_1(v52, v38);
  if (v51 > 3)
  {
    if (v51 <= 5)
    {
      v41 = v47;
      v35(v47, v34, v33);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v41, sub_1D5B4AA6C, 0, v38, v39);
      sub_1D5D2CFE8(v41, type metadata accessor for FormatVersionRequirement);
      goto LABEL_15;
    }

    if (v51 == 6)
    {
      v40 = v49;
      v35(v49, v34, v33);
    }

    else
    {
      v40 = v50;
      v35(v50, v34, v33);
    }
  }

  else if (v51 > 1)
  {
    v40 = v45;
    v35(v45, v34, v33);
  }

  else
  {
    v40 = v43;
    v35(v43, v34, v33);
  }

  swift_storeEnumTagMultiPayload();
  sub_1D5D2BEC4(v40, sub_1D5B4AA6C, 0, v38, v39);
  sub_1D5D2CFE8(v40, type metadata accessor for FormatVersionRequirement);
LABEL_15:
  __swift_project_boxed_opaque_existential_1(v52, v52[3]);
  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v53, v54);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v53);
}

uint64_t FormatProcessedColor.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D66AB6F8();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66AB78C();
  sub_1D5B58B84(&qword_1EDF253A8, sub_1D66AB78C);
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

      v20 = sub_1D6627E68(0x726F6C6F63, 0xE500000000000000, 0x6F737365636F7270, 0xEA00000000007372);
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
  sub_1D5C34D84(0, &unk_1EDF1B120, &type metadata for FormatColorProcessor, MEMORY[0x1E69E62F8]);
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D66AB90C();
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  v13[1] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatProcessedColor.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v74 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v67 - v8;
  sub_1D66AB9A8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v73 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D66AB78C();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF253A8, sub_1D66AB78C);
  sub_1D5D2EE70(&type metadata for FormatProcessedColor, v19, v21, v16, &type metadata for FormatProcessedColor, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v75 = v23;
  v76 = v22;
  v70 = v24 + 16;
  v71 = v25;
  (v25)(v9);
  v69 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v85 = v15;
  v83 = 0uLL;
  v84 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v82 = 0;
  v29 = swift_allocObject();
  v79 = &v67;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v82;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v81 = v9;
  *(&v67 - 4) = sub_1D5B4AA6C;
  *(&v67 - 3) = 0;
  v65 = sub_1D6708B1C;
  v66 = v31;
  v82 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v82;
  v72 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D66ABA3C();
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF033C8, sub_1D66ABA3C);
  swift_retain_n();
  v77 = v35;
  v78 = v34;
  v36 = sub_1D72647CC();
  v82 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v82;
  v38 = &v14[*(v11 + 36)];
  v39 = __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
  MEMORY[0x1EEE9AC00](v39, v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  *(&v67 - 4) = sub_1D615B4A4;
  *(&v67 - 3) = (&v67 - 6);
  v43 = v80;
  v44 = v81;
  v65 = sub_1D66ABAD0;
  v66 = v32;
  sub_1D5D2BC70(v81, sub_1D615B49C, v45, sub_1D615B4A4, (&v67 - 6));
  if (v43)
  {
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);

    v48 = v14;
  }

  else
  {
    v68 = v38;
    v47 = v75;
    v46 = v76;
    v80 = v28;

    sub_1D5B55CBC();
    sub_1D72647EC();
    sub_1D5D2CFE8(v81, type metadata accessor for FormatVersionRequirement);

    v50 = v74;
    v71(v74, v47, v46);
    swift_storeEnumTagMultiPayload();
    v85 = v73;
    v81 = xmmword_1D728CF30;
    v83 = xmmword_1D728CF30;
    v84 = 0;
    v82 = 0;
    v51 = swift_allocObject();
    v79 = &v67;
    *(v51 + 16) = v81;
    *(v51 + 32) = v82;
    v52 = v72;
    v53 = v80;
    *(v51 + 40) = v72;
    *(v51 + 48) = v53;
    MEMORY[0x1EEE9AC00](v51, v54);
    *(&v67 - 4) = sub_1D5B4AA6C;
    *(&v67 - 3) = 0;
    v65 = sub_1D6708B1C;
    v66 = v55;
    v82 = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = v81;
    *(v56 + 32) = v82;
    *(v56 + 40) = v52;
    *(v56 + 48) = v53;
    swift_retain_n();
    v80 = v14;
    v57 = sub_1D72647CC();
    v82 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v57;
    *(v58 + 24) = v81;
    *(v58 + 40) = v82;
    v59 = __swift_project_boxed_opaque_existential_1(v68, *(v68 + 3));
    MEMORY[0x1EEE9AC00](v59, v60);
    MEMORY[0x1EEE9AC00](v61, v62);
    *(&v67 - 4) = sub_1D615B4A4;
    *(&v67 - 3) = (&v67 - 6);
    v65 = sub_1D6708B1C;
    v66 = v56;
    sub_1D5D2BC70(v50, sub_1D615B49C, v63, sub_1D615B4A4, (&v67 - 6));

    sub_1D5C34D84(0, &unk_1EDF1B120, &type metadata for FormatColorProcessor, MEMORY[0x1E69E62F8]);
    sub_1D66ABB4C();
    v64 = v80;
    sub_1D72647EC();
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

    v48 = v64;
  }

  return sub_1D5D2CFE8(v48, sub_1D66AB9A8);
}

uint64_t sub_1D654ADF0()
{
  v1 = 0x6F737365636F7270;
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

uint64_t sub_1D654AE44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66AC1B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D654AE7C(uint64_t a1)
{
  v2 = sub_1D66AB864();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D654AEB8(uint64_t a1)
{
  v2 = sub_1D66AB864();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatProgressCircleOptions.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v40 = a2;
  sub_1D66ABBE8();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66ABC7C();
  sub_1D5B58B84(&qword_1EDF0C470, sub_1D66ABC7C);
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_11:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  if (v13)
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

      v20 = sub_1D6620BAC();
      sub_1D5E2D970();
      v10 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v6 + 8))(v9, v5);
      goto LABEL_11;
    }

LABEL_7:
  }

  sub_1D660C130(sub_1D66ABBE8, &v46, 0.0);
  v17 = v46;
  v39 = xmmword_1D728CF30;
  v46 = xmmword_1D728CF30;
  v47 = 0;
  if (sub_1D726434C())
  {
    v44 = v39;
    v45 = 0;
    sub_1D5CDCE98();
    sub_1D726431C();
    v23 = v17;
    v25 = v41;
    v24 = v42;
    v26 = v43;
    sub_1D5C75A4C(v41, v42, v43);
    v38 = v25;
    *&v39 = v24;
    v27 = v25;
    v17 = v23;
    sub_1D5D2F2C8(v27, v24, v26);
  }

  else
  {
    v26 = 0;
    v38 = 1;
    *&v39 = 0;
  }

  sub_1D660C130(sub_1D66ABBE8, &v46, 0.0);
  v28 = v46;
  sub_1D660C130(sub_1D66ABBE8, &v46, 0.0);
  v48 = v26;
  v37 = v46;
  sub_1D660C130(sub_1D66ABBE8, &v46, 1.0);
  v29 = v46;
  v36 = xmmword_1D72BAA80;
  v46 = xmmword_1D72BAA80;
  v47 = 0;
  if (sub_1D726434C())
  {
    v44 = v36;
    v45 = 0;
    sub_1D666B130();
    sub_1D726431C();
    v30 = v28;
    (*(v11 + 8))(v9, v5);
    v31 = v41;
  }

  else
  {
    v30 = v28;
    (*(v11 + 8))(v9, v5);
    v31 = 0;
  }

  v33 = v38;
  v32 = v39;
  v34 = v40;
  *v40 = v17;
  v34[1] = v33;
  v34[2] = v32;
  *(v34 + 24) = v48;
  v35 = v37;
  v34[4] = v30;
  v34[5] = v35;
  v34[6] = v29;
  *(v34 + 56) = v31;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatProgressCircleOptions.encode(to:)(void *a1)
{
  v3 = v2;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v167 = &v165 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v168 = &v165 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v170 = &v165 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v179 = &v165 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v178 = &v165 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v165 - v22;
  sub_1D66ABDFC();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v165 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *v1;
  v180 = *(v1 + 8);
  v181 = *(v1 + 16);
  LODWORD(v182) = *(v1 + 24);
  v30 = *(v1 + 40);
  v174 = *(v1 + 32);
  v171 = v30;
  v169 = *(v1 + 48);
  v166 = *(v1 + 56);
  v31 = a1[3];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_1D66ABC7C();
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF0C470, sub_1D66ABC7C);
  sub_1D5D2EE70(&type metadata for FormatProgressCircleOptions, v34, v36, v31, &type metadata for FormatProgressCircleOptions, v34, &type metadata for FormatVersions.DawnburstC, v32, v28, v35, &off_1F51F6B98);
  v37 = qword_1EDF31F58[0];

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = sub_1D725BD1C();
  v39 = __swift_project_value_buffer(v38, qword_1EDFFCE98);
  v40 = *(v38 - 8);
  v41 = *(v40 + 16);
  *&v186 = v39;
  v192 = v41;
  v185 = v40 + 16;
  v41(v23);
  v184 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  sub_1D5F3FE24();
  v177 = v43;
  inited = swift_initStackObject();
  v176 = xmmword_1D7273AE0;
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = v42;
  *(inited + 40) = 0;
  LOBYTE(v42) = sub_1D633A310(v29, inited);
  swift_setDeallocating();
  sub_1D5C30060(0, qword_1EDF2C898, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquationToken);
  v175 = v45;
  swift_arrayDestroy();
  v172 = v25;
  v173 = v38;
  if (v42)
  {
    sub_1D5D2CFE8(v23, type metadata accessor for FormatVersionRequirement);

LABEL_5:
    v46 = v179;
    goto LABEL_6;
  }

  *&v165 = v29;
  v50 = &v28[*(v25 + 44)];
  v51 = v28;
  v53 = *v50;
  v52 = *(v50 + 1);
  LOBYTE(v190) = 0;
  v54 = swift_allocObject();
  *(v54 + 16) = 0;
  *(v54 + 24) = 0;
  *(v54 + 32) = v190;
  *(v54 + 40) = v53;
  *(v54 + 48) = v52;
  sub_1D66ABE90();
  *&v183 = v3;
  sub_1D5B58B84(&qword_1EDF02EB8, sub_1D66ABE90);

  v55 = sub_1D72647CC();
  LOBYTE(v190) = 0;
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  *(v56 + 32) = 0;
  *(v56 + 16) = v55;
  *(v56 + 40) = v190;
  v57 = __swift_project_boxed_opaque_existential_1((v51 + *(v25 + 36)), *(v51 + *(v25 + 36) + 24));
  MEMORY[0x1EEE9AC00](v57, v58);
  MEMORY[0x1EEE9AC00](v59, v60);
  *(&v165 - 4) = sub_1D5B4AA6C;
  *(&v165 - 3) = 0;
  v163 = sub_1D66ABF24;
  v164 = v54;
  v61 = v183;
  v63 = sub_1D5D2F7A4(v23, sub_1D615B49C, v62, sub_1D615B4A4, (&v165 - 3));
  if (v61)
  {
    sub_1D5D2CFE8(v23, type metadata accessor for FormatVersionRequirement);

    sub_1D5D2CFE8(v51, sub_1D66ABDFC);
  }

  v82 = v63;

  if ((v82 & 1) == 0)
  {
    sub_1D5D2CFE8(v23, type metadata accessor for FormatVersionRequirement);

    v3 = 0;
    v28 = v51;
    v25 = v172;
    v38 = v173;
    goto LABEL_5;
  }

  v190 = 0uLL;
  v191 = 0;
  v187 = v165;
  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  sub_1D66582DC();

  v28 = v51;
  sub_1D72647EC();
  v3 = 0;
  v46 = v179;

  sub_1D5D2CFE8(v23, type metadata accessor for FormatVersionRequirement);

  v25 = v172;
  v38 = v173;
LABEL_6:
  *&v183 = v3;
  v47 = v178;
  v192(v178, v186, v38);
  swift_storeEnumTagMultiPayload();
  if (v182)
  {
    v48 = v180;
    v49 = v181;
    sub_1D5C75A4C(v180, v181, 1);

    sub_1D5D2F2C8(v48, v49, 1);
    sub_1D5D2F2C8(1, 0, 0);
  }

  else
  {
    v65 = v180;
    sub_1D5D2F2C8(v180, v181, 0);
    sub_1D5D2F2C8(1, 0, 0);
    if (v65)
    {
      sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);
      v66 = v183;
      goto LABEL_23;
    }
  }

  v67 = &v28[*(v25 + 44)];
  v68 = *v67;
  v69 = *(v67 + 1);
  LOBYTE(v190) = 0;
  v70 = swift_allocObject();
  v165 = xmmword_1D728CF30;
  *(v70 + 16) = xmmword_1D728CF30;
  *(v70 + 32) = v190;
  *(v70 + 40) = v68;
  *(v70 + 48) = v69;
  sub_1D66ABE90();
  sub_1D5B58B84(&qword_1EDF02EB8, sub_1D66ABE90);

  v71 = sub_1D72647CC();
  LOBYTE(v190) = 0;
  v72 = swift_allocObject();
  *(v72 + 16) = v71;
  *(v72 + 24) = v165;
  *(v72 + 40) = v190;
  v73 = __swift_project_boxed_opaque_existential_1(&v28[*(v25 + 36)], *&v28[*(v25 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v73, v74);
  MEMORY[0x1EEE9AC00](v75, v76);
  *(&v165 - 4) = sub_1D5B4AA6C;
  *(&v165 - 3) = 0;
  v163 = sub_1D6708B20;
  v164 = v70;
  v77 = v183;
  v79 = sub_1D5D2F7A4(v47, sub_1D615B49C, v78, sub_1D615B4A4, (&v165 - 3));
  v80 = v47;
  v66 = v77;
  if (v77)
  {
    sub_1D5D2CFE8(v80, type metadata accessor for FormatVersionRequirement);

    sub_1D5D2F2C8(v180, v181, v182);
    goto LABEL_14;
  }

  v25 = v172;

  if (v79)
  {
    v190 = v165;
    v191 = 0;
    v187 = v180;
    v188 = v181;
    v189 = v182;
    sub_1D60ED320();
    sub_1D72647EC();
    sub_1D5D2F2C8(v187, v188, v189);
    sub_1D5D2CFE8(v178, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    sub_1D5D2CFE8(v178, type metadata accessor for FormatVersionRequirement);
    sub_1D5D2F2C8(v180, v181, v182);
  }

  v38 = v173;
  v46 = v179;
LABEL_23:
  v192(v46, v186, v38);
  swift_storeEnumTagMultiPayload();
  v83 = swift_allocObject();
  *(v83 + 16) = 0;
  v84 = swift_initStackObject();
  *(v84 + 16) = v176;
  *(v84 + 32) = v83;
  *(v84 + 40) = 0;

  LOBYTE(v83) = sub_1D633A310(v85, v84);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (v83)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

LABEL_25:
    v46 = v170;
    goto LABEL_26;
  }

  v90 = &v28[*(v25 + 44)];
  v91 = *v90;
  v92 = *(v90 + 1);
  LOBYTE(v190) = 0;
  v93 = swift_allocObject();
  v183 = xmmword_1D7297410;
  *(v93 + 16) = xmmword_1D7297410;
  *(v93 + 32) = v190;
  *(v93 + 40) = v91;
  *(v93 + 48) = v92;
  sub_1D66ABE90();
  v95 = v94;
  sub_1D5B58B84(&qword_1EDF02EB8, sub_1D66ABE90);

  v181 = v95;
  v96 = sub_1D72647CC();
  LOBYTE(v190) = 0;
  v97 = v25;
  v98 = swift_allocObject();
  *(v98 + 16) = v96;
  *(v98 + 24) = v183;
  *(v98 + 40) = v190;
  v99 = __swift_project_boxed_opaque_existential_1(&v28[*(v97 + 36)], *&v28[*(v97 + 36) + 24]);
  v182 = &v165;
  MEMORY[0x1EEE9AC00](v99, v100);
  MEMORY[0x1EEE9AC00](v101, v102);
  *(&v165 - 4) = sub_1D5B4AA6C;
  *(&v165 - 3) = 0;
  v163 = sub_1D6708B20;
  v164 = v93;
  v104 = sub_1D5D2F7A4(v46, sub_1D615B49C, v103, sub_1D615B4A4, (&v165 - 3));
  if (v66)
  {
    goto LABEL_29;
  }

  v120 = v104;

  if ((v120 & 1) == 0)
  {
    sub_1D5D2CFE8(v179, type metadata accessor for FormatVersionRequirement);

    v25 = v97;
    v38 = v173;
    goto LABEL_25;
  }

  v190 = v183;
  v191 = 0;
  v187 = v174;
  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  sub_1D66582DC();

  sub_1D72647EC();
  v46 = v170;
  v25 = v97;

  sub_1D5D2CFE8(v179, type metadata accessor for FormatVersionRequirement);

  v38 = v173;
LABEL_26:
  v192(v46, v186, v38);
  swift_storeEnumTagMultiPayload();
  v86 = swift_allocObject();
  *(v86 + 16) = 0;
  v87 = swift_initStackObject();
  *(v87 + 16) = v176;
  *(v87 + 32) = v86;
  *(v87 + 40) = 0;

  LOBYTE(v86) = sub_1D633A310(v88, v87);
  swift_setDeallocating();
  swift_arrayDestroy();
  if ((v86 & 1) == 0)
  {
    v105 = &v28[*(v25 + 44)];
    v106 = *v105;
    v107 = *(v105 + 1);
    LOBYTE(v190) = 0;
    v108 = swift_allocObject();
    v183 = xmmword_1D72BAA60;
    *(v108 + 16) = xmmword_1D72BAA60;
    *(v108 + 32) = v190;
    *(v108 + 40) = v106;
    *(v108 + 48) = v107;
    sub_1D66ABE90();
    v110 = v109;
    sub_1D5B58B84(&qword_1EDF02EB8, sub_1D66ABE90);

    v181 = v110;
    v111 = sub_1D72647CC();
    LOBYTE(v190) = 0;
    v112 = v25;
    v113 = swift_allocObject();
    *(v113 + 16) = v111;
    *(v113 + 24) = v183;
    *(v113 + 40) = v190;
    v114 = __swift_project_boxed_opaque_existential_1(&v28[*(v112 + 36)], *&v28[*(v112 + 36) + 24]);
    v182 = &v165;
    MEMORY[0x1EEE9AC00](v114, v115);
    MEMORY[0x1EEE9AC00](v116, v117);
    *(&v165 - 4) = sub_1D5B4AA6C;
    *(&v165 - 3) = 0;
    v163 = sub_1D6708B20;
    v164 = v108;
    v119 = sub_1D5D2F7A4(v46, sub_1D615B49C, v118, sub_1D615B4A4, (&v165 - 3));
    if (!v66)
    {
      v121 = v119;

      if (v121)
      {
        v190 = v183;
        v191 = 0;
        v187 = v171;
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();

        sub_1D72647EC();
        v25 = v112;
        v89 = v168;
        v122 = v170;

        sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v170, type metadata accessor for FormatVersionRequirement);

        v25 = v112;
        v89 = v168;
      }

      v38 = v173;
      goto LABEL_39;
    }

LABEL_29:
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

    sub_1D5D2CFE8(v28, sub_1D66ABDFC);
  }

  sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

  v89 = v168;
LABEL_39:
  v192(v89, v186, v38);
  swift_storeEnumTagMultiPayload();
  v123 = swift_allocObject();
  *(v123 + 16) = 0x3FF0000000000000;
  v124 = swift_initStackObject();
  *(v124 + 16) = v176;
  *(v124 + 32) = v123;
  *(v124 + 40) = 0;

  LOBYTE(v123) = sub_1D633A310(v125, v124);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (v123)
  {
    sub_1D5D2CFE8(v89, type metadata accessor for FormatVersionRequirement);

    v126 = v167;
LABEL_48:
    v192(v126, v186, v38);
    swift_storeEnumTagMultiPayload();
    if (v166)
    {
      v146 = sub_1D72646CC();

      if ((v146 & 1) == 0)
      {
        v147 = &v28[*(v25 + 44)];
        v148 = *v147;
        v149 = *(v147 + 1);
        LOBYTE(v190) = 0;
        v150 = v126;
        v151 = swift_allocObject();
        v186 = xmmword_1D72BAA80;
        *(v151 + 16) = xmmword_1D72BAA80;
        *(v151 + 32) = v190;
        *(v151 + 40) = v148;
        *(v151 + 48) = v149;
        sub_1D66ABE90();
        v153 = v152;
        sub_1D5B58B84(&qword_1EDF02EB8, sub_1D66ABE90);

        v192 = v153;
        v154 = sub_1D72647CC();
        LOBYTE(v190) = 0;
        v155 = swift_allocObject();
        *(v155 + 16) = v154;
        *(v155 + 24) = v186;
        *(v155 + 40) = v190;
        v156 = __swift_project_boxed_opaque_existential_1(&v28[*(v25 + 36)], *&v28[*(v25 + 36) + 24]);
        MEMORY[0x1EEE9AC00](v156, v157);
        MEMORY[0x1EEE9AC00](v158, v159);
        *(&v165 - 4) = sub_1D5B4AA6C;
        *(&v165 - 3) = 0;
        v163 = sub_1D6708B20;
        v164 = v151;
        v161 = sub_1D5D2F7A4(v150, sub_1D615B49C, v160, sub_1D615B4A4, (&v165 - 3));
        if (v66)
        {
          sub_1D5D2CFE8(v150, type metadata accessor for FormatVersionRequirement);
        }

        else
        {
          v162 = v161;

          if (v162)
          {
            v190 = v186;
            v191 = 0;
            LOBYTE(v187) = v166;
            sub_1D666B294();
            sub_1D72647EC();
          }

          sub_1D5D2CFE8(v167, type metadata accessor for FormatVersionRequirement);
        }

        v81 = v28;
        return sub_1D5D2CFE8(v81, sub_1D66ABDFC);
      }
    }

    else
    {
    }

    sub_1D5D2CFE8(v126, type metadata accessor for FormatVersionRequirement);
LABEL_14:
    v81 = v28;
    return sub_1D5D2CFE8(v81, sub_1D66ABDFC);
  }

  v127 = &v28[*(v25 + 44)];
  v128 = *v127;
  v129 = *(v127 + 1);
  LOBYTE(v190) = 0;
  v130 = swift_allocObject();
  v183 = xmmword_1D72BAA70;
  *(v130 + 16) = xmmword_1D72BAA70;
  *(v130 + 32) = v190;
  *(v130 + 40) = v128;
  *(v130 + 48) = v129;
  sub_1D66ABE90();
  v132 = v131;
  v133 = v28;
  v134 = sub_1D5B58B84(&qword_1EDF02EB8, sub_1D66ABE90);

  v181 = v132;
  v135 = sub_1D72647CC();
  LOBYTE(v190) = 0;
  v136 = v25;
  v137 = swift_allocObject();
  *(v137 + 16) = v135;
  *(v137 + 24) = v183;
  *(v137 + 40) = v190;
  v138 = __swift_project_boxed_opaque_existential_1((v133 + *(v136 + 36)), *(v133 + *(v136 + 36) + 24));
  v182 = &v165;
  MEMORY[0x1EEE9AC00](v138, v139);
  MEMORY[0x1EEE9AC00](v140, v141);
  *(&v165 - 4) = sub_1D5B4AA6C;
  *(&v165 - 3) = 0;
  v163 = sub_1D6708B20;
  v164 = v130;
  v143 = sub_1D5D2F7A4(v89, sub_1D615B49C, v142, sub_1D615B4A4, (&v165 - 3));
  if (!v66)
  {
    v144 = v143;
    v180 = v134;

    if (v144)
    {
      v190 = v183;
      v191 = 0;
      v187 = v169;
      sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
      sub_1D66582DC();

      sub_1D72647EC();
      v126 = v167;
      v25 = v136;
      v145 = v168;

      sub_1D5D2CFE8(v145, type metadata accessor for FormatVersionRequirement);

      v28 = v133;
    }

    else
    {
      sub_1D5D2CFE8(v168, type metadata accessor for FormatVersionRequirement);

      v28 = v133;
      v126 = v167;
      v25 = v136;
    }

    v38 = v173;
    goto LABEL_48;
  }

  sub_1D5D2CFE8(v89, type metadata accessor for FormatVersionRequirement);

  sub_1D5D2CFE8(v133, sub_1D66ABDFC);
}

uint64_t sub_1D654D3BC()
{
  v1 = *v0;
  v2 = 0x737569646172;
  v3 = 0x706143656E696CLL;
  if (v1 != 5)
  {
    v3 = 1885433183;
  }

  v4 = 0x65637265506E696DLL;
  if (v1 != 3)
  {
    v4 = 0x656372655078616DLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7369776B636F6C63;
  if (v1 != 1)
  {
    v5 = 0x6372655070657473;
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

uint64_t sub_1D654D4B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66AC2CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D654D4EC(uint64_t a1)
{
  v2 = sub_1D66ABD54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D654D528(uint64_t a1)
{
  v2 = sub_1D66ABD54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatProgressKind.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v31 - v8;
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
    v12 = v32;
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
          *(v22 + 16) = &unk_1F51167F8;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D66ABFA0();
    v40 = 0;
    v41 = 0;
    sub_1D726431C();
    if (v43)
    {
      v24 = v12;
      v33 = xmmword_1D7279980;
      if (v43 == 1)
      {
        sub_1D5E04760();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v29 = 0;
        v25 = v34;
        v26 = v35;
        v30 = v36;
        v27 = v37;
        v28 = v38;
        v42 = v36;
      }

      else
      {
        sub_1D66ABFF4();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v25 = v34;
        v26 = v35;
        v27 = v37;
        v28 = v38;
        v29 = v39 & 3 | 0x40;
        v30 = v36 & 1;
      }
    }

    else
    {
      (*(v11 + 8))(v15, v5);
      v25 = 0;
      v27 = 0;
      v30 = 0;
      v26 = 0uLL;
      v29 = 0x80;
      v28 = 0uLL;
      v24 = v12;
    }

    *v24 = v25;
    *(v24 + 8) = v26;
    *(v24 + 24) = v30;
    *(v24 + 32) = v27;
    *(v24 + 40) = v28;
    *(v24 + 56) = v29;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatProgressKind.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v36 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v36 - v12;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v18 = v1[1];
  v41 = v1[2];
  v42 = *(v1 + 24);
  v38 = *(v1 + 31);
  v37 = *(v1 + 29);
  v39 = *(v1 + 25);
  v20 = v1[5];
  v43 = v1[4];
  v44 = v20;
  v45 = v1[6];
  v21 = *(v1 + 56);
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v24 = sub_1D5C30408();
  v46 = v17;
  sub_1D5D2EE70(&type metadata for FormatProgressKind, &type metadata for FormatCodingKeys, v25, v22, &type metadata for FormatProgressKind, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v23, v17, v24, &off_1F51F6CF8);
  if (v21 >> 6)
  {
    if (v21 >> 6 == 1)
    {
      *&v53 = v19;
      *(&v53 + 1) = v18;
      v54 = v41;
      v55 = v42;
      v56 = v39;
      v58 = (v39 | ((v37 | (v38 << 16)) << 32)) >> 48;
      v57 = (v39 | ((v37 | (v38 << 16)) << 32)) >> 32;
      v59 = v43;
      v60 = v44;
      v61 = v45;
      v62 = v21 & 0x3F;
      if (qword_1EDF31F58[0] != -1)
      {
        swift_once();
      }

      v26 = sub_1D725BD1C();
      v27 = __swift_project_value_buffer(v26, qword_1EDFFCE98);
      v28 = v40;
      (*(*(v26 - 8) + 16))(v40, v27, v26);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v29 = v46;
      sub_1D63A8038(2, &v53, v28);
      v30 = v28;
    }

    else
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v33 = sub_1D725BD1C();
      v34 = __swift_project_value_buffer(v33, qword_1EDFFCCA8);
      (*(*(v33 - 8) + 16))(v13, v34, v33);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v29 = v46;
      sub_1D6421D84(0, v13);
      v30 = v13;
    }
  }

  else
  {
    *&v47 = v19;
    *(&v47 + 1) = v18;
    v48 = v41;
    v49 = v42 & 1;
    v50 = v43;
    v51 = v44;
    v52 = v45;
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v31 = sub_1D725BD1C();
    v32 = __swift_project_value_buffer(v31, qword_1EDFFCCA8);
    (*(*(v31 - 8) + 16))(v9, v32, v31);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v29 = v46;
    sub_1D63A7E90(1, &v47, v9);
    v30 = v9;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v29, sub_1D5D30DC4);
}

uint64_t sub_1D654DE68(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 0xE300000000000000;
  v5 = 6646128;
  if (v2 != 1)
  {
    v5 = 0x656C63726963;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 7496034;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  v8 = 6646128;
  if (*a2 != 1)
  {
    v8 = 0x656C63726963;
    v3 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7496034;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE300000000000000;
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

uint64_t sub_1D654DF48()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D654DFD8()
{
  sub_1D72621EC();
}

uint64_t sub_1D654E054()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D654E0E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6663AE8();
  *a1 = result;
  return result;
}

void sub_1D654E110(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE300000000000000;
  v5 = 6646128;
  if (v2 != 1)
  {
    v5 = 0x656C63726963;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7496034;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D654E20C()
{
  v1 = *v0;
  v2 = 0x737569646172;
  v3 = 0x65637265506E696DLL;
  v4 = 0x656372655078616DLL;
  if (v1 != 4)
  {
    v4 = 1885433183;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7369776B636F6C63;
  if (v1 != 1)
  {
    v5 = 0x6372655070657473;
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

uint64_t sub_1D654E2E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66AC530(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D654E31C(uint64_t a1)
{
  v2 = sub_1D665852C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D654E358(uint64_t a1)
{
  v2 = sub_1D665852C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatProgressViewNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  *&v367 = v345 - v7;
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v347 = v345 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v348 = v345 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v349 = v345 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v351 = v345 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v350 = v345 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v352 = v345 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v353 = v345 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v354 = v345 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v357 = v345 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v356 = v345 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v363 = (v345 - v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  v362 = v345 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = v345 - v46;
  sub_1D66AD5EC();
  *&v366 = v48;
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = v345 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1[3];
  v53 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v52);
  sub_1D5E1AA68();
  v55 = v54;
  v56 = sub_1D5B58B84(&qword_1EDF25228, sub_1D5E1AA68);
  v393 = v51;
  sub_1D5D2EE70(v4, v55, v57, v52, v4, v55, &type metadata for FormatVersions.StarSkyC, v53, v51, v56, &off_1F51F6B18);
  swift_beginAccess();
  v58 = v2[2];
  v59 = v2[3];
  v60 = qword_1EDF31E98;

  if (v60 != -1)
  {
    swift_once();
  }

  v61 = sub_1D725BD1C();
  v62 = __swift_project_value_buffer(v61, qword_1EDFFCD00);
  v63 = *(v61 - 8);
  v64 = *(v63 + 16);
  v65 = v63 + 16;
  v364 = v62;
  v365 = v64;
  v64(v47);
  v66 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v67 = v367;
  v355 = v58;
  sub_1D725892C();
  v68 = sub_1D725895C();
  v69 = (*(*(v68 - 8) + 48))(v67, 1, v68);
  v358 = v2;
  v359 = v61;
  v360 = v66;
  v361 = v65;
  if (v69 != 1)
  {
    v89 = v2;
    sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v367, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v90 = v365;
    v91 = v61;
    v92 = v89;
    goto LABEL_7;
  }

  v346 = v59;
  v70 = v47;
  sub_1D5D35558(v367, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v71 = v366;
  v72 = v393;
  v73 = &v393[*(v366 + 44)];
  v75 = *v73;
  v74 = *(v73 + 1);
  LOBYTE(v379) = 0;
  v76 = swift_allocObject();
  *(v76 + 16) = 0;
  *(v76 + 24) = 0;
  *(v76 + 32) = v379;
  *(v76 + 40) = v75;
  *(v76 + 48) = v74;
  sub_1D5E1AA2C(0);
  v78 = v77;
  sub_1D5B58B84(&qword_1EDF031E8, sub_1D5E1AA2C);

  *&v367 = v78;
  v79 = sub_1D72647CC();
  LOBYTE(v379) = 0;
  v80 = swift_allocObject();
  *(v80 + 24) = 0;
  *(v80 + 32) = 0;
  *(v80 + 16) = v79;
  *(v80 + 40) = v379;
  v81 = __swift_project_boxed_opaque_existential_1((v72 + *(v71 + 36)), *(v72 + *(v71 + 36) + 24));
  MEMORY[0x1EEE9AC00](v81, v82);
  MEMORY[0x1EEE9AC00](v83, v84);
  v345[-4] = sub_1D5B4AA6C;
  v345[-3] = 0;
  v343 = sub_1D66AD680;
  v344 = v76;
  v85 = v368;
  v87 = sub_1D5D2F7A4(v70, sub_1D615B49C, v86, sub_1D615B4A4, &v345[-6]);
  *&v368 = v85;
  if (!v85)
  {
    v139 = v87;

    if (v139)
    {
      v379 = 0uLL;
      LOBYTE(v380) = 0;
      *&v389 = v355;
      *(&v389 + 1) = v346;
      v140 = v368;
      sub_1D72647EC();

      sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);
      v90 = v365;
      if (v140)
      {
        v88 = v72;
        return sub_1D5D2CFE8(v88, sub_1D66AD5EC);
      }

      *&v368 = 0;
      v92 = v358;
      v91 = v359;
    }

    else
    {
      sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);

      v92 = v358;
      v91 = v359;
      v90 = v365;
    }

LABEL_7:
    swift_beginAccess();
    v93 = v92[4];
    v94 = v362;
    v90(v362, v364, v91);
    swift_storeEnumTagMultiPayload();
    if (((v93 >> 59) & 0x1E | (v93 >> 2) & 1) == 0x16 && v93 == 0xB000000000000008)
    {
      sub_1D5D2CFE8(v94, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v121 = v366;
      v122 = v393;
      v123 = &v393[*(v366 + 44)];
      v124 = *v123;
      v125 = *(v123 + 1);
      LOBYTE(v379) = 0;
      v126 = swift_allocObject();
      v367 = xmmword_1D728CF30;
      *(v126 + 16) = xmmword_1D728CF30;
      *(v126 + 32) = v379;
      *(v126 + 40) = v124;
      *(v126 + 48) = v125;
      sub_1D5C82CD8(v93);
      sub_1D5E1AA2C(0);
      v128 = v127;
      sub_1D5B58B84(&qword_1EDF031E8, sub_1D5E1AA2C);

      v346 = v128;
      v129 = sub_1D72647CC();
      LOBYTE(v379) = 0;
      v130 = swift_allocObject();
      *(v130 + 16) = v129;
      *(v130 + 24) = v367;
      *(v130 + 40) = v379;
      v131 = __swift_project_boxed_opaque_existential_1((v122 + *(v121 + 36)), *(v122 + *(v121 + 36) + 24));
      v355 = v345;
      MEMORY[0x1EEE9AC00](v131, v132);
      MEMORY[0x1EEE9AC00](v133, v134);
      v345[-4] = sub_1D5B4AA6C;
      v345[-3] = 0;
      v343 = sub_1D6708B24;
      v344 = v126;
      v135 = v368;
      v137 = sub_1D5D2F7A4(v94, sub_1D615B49C, v136, sub_1D615B4A4, &v345[-6]);
      if (v135)
      {

        sub_1D5C92A8C(v93);
        v138 = v94;
LABEL_18:
        sub_1D5D2CFE8(v138, type metadata accessor for FormatVersionRequirement);
LABEL_19:
        v88 = v393;
        return sub_1D5D2CFE8(v88, sub_1D66AD5EC);
      }

      v143 = v137;

      if (v143)
      {
        v379 = v367;
        LOBYTE(v380) = 0;
        *&v389 = v93;
        sub_1D5CA1E90();
        sub_1D72647EC();
        v91 = v359;
        v90 = v365;
        *&v368 = 0;
        sub_1D5C92A8C(v389);
        sub_1D5D2CFE8(v362, type metadata accessor for FormatVersionRequirement);
        v92 = v358;
      }

      else
      {
        *&v368 = 0;
        sub_1D5C92A8C(v93);
        sub_1D5D2CFE8(v362, type metadata accessor for FormatVersionRequirement);
        v92 = v358;
        v91 = v359;
        v90 = v365;
      }
    }

    v355 = v92[5];
    v95 = v366;
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v96 = __swift_project_value_buffer(v91, qword_1EDFFCD68);
    v90(v363, v96, v91);
    swift_storeEnumTagMultiPayload();
    v367 = xmmword_1D7297410;
    v379 = xmmword_1D7297410;
    LOBYTE(v380) = 0;
    v97 = v393;
    v98 = &v393[*(v95 + 44)];
    v99 = v91;
    v101 = *v98;
    v100 = v98[1];
    LOBYTE(v389) = 0;
    v102 = swift_allocObject();
    v104 = v102;
    *(v102 + 16) = v367;
    *(v102 + 32) = v389;
    v362 = v101;
    *(v102 + 40) = v101;
    *(v102 + 48) = v100;
    v346 = v100;
    if (v355)
    {
      v345[1] = v345;
      *&v389 = v355;
      MEMORY[0x1EEE9AC00](v102, v103);
      v105 = v97;
      v345[-4] = sub_1D5B4AA6C;
      v345[-3] = 0;
      v343 = sub_1D6708B24;
      v344 = v104;
      LOBYTE(v384) = 0;
      v106 = swift_allocObject();
      *(v106 + 16) = v367;
      *(v106 + 32) = v384;
      *(v106 + 40) = v362;
      *(v106 + 48) = v100;
      sub_1D5E1AA2C(0);
      v108 = v107;
      sub_1D5B58B84(&qword_1EDF031E8, sub_1D5E1AA2C);
      swift_retain_n();

      v355 = v108;
      v109 = sub_1D72647CC();
      LOBYTE(v384) = 0;
      v110 = swift_allocObject();
      *(v110 + 16) = v109;
      *(v110 + 24) = v367;
      *(v110 + 40) = v384;
      v111 = __swift_project_boxed_opaque_existential_1((v105 + *(v95 + 36)), *(v105 + *(v95 + 36) + 24));
      MEMORY[0x1EEE9AC00](v111, v112);
      MEMORY[0x1EEE9AC00](v113, v114);
      v345[-4] = sub_1D615B4A4;
      v345[-3] = &v345[-6];
      v343 = sub_1D6708B24;
      v344 = v106;
      v115 = v363;
      v116 = v368;
      v118 = sub_1D5D2F7A4(v363, sub_1D615B49C, v117, sub_1D615B4A4, &v345[-6]);
      if (v116)
      {

        v119 = v393;

        v120 = v115;
LABEL_15:
        sub_1D5D2CFE8(v120, type metadata accessor for FormatVersionRequirement);
        v88 = v119;
        return sub_1D5D2CFE8(v88, sub_1D66AD5EC);
      }

      v144 = v118;

      if (v144)
      {
        sub_1D6659D24();
        sub_1D72647EC();
        v142 = v359;
        v141 = v365;
        *&v368 = 0;

        v92 = v358;
      }

      else
      {
        *&v368 = 0;

        v92 = v358;
        v142 = v359;
        v141 = v365;
      }
    }

    else
    {
      v141 = v90;

      v142 = v99;
    }

    sub_1D5D2CFE8(v363, type metadata accessor for FormatVersionRequirement);
    swift_beginAccess();
    v145 = v92[6];
    v146 = v356;
    v147 = v364;
    v141(v356, v364, v142);
    swift_storeEnumTagMultiPayload();
    if (*(v145 + 16))
    {
      LOBYTE(v379) = 0;
      v148 = swift_allocObject();
      v367 = xmmword_1D72BAA60;
      *(v148 + 16) = xmmword_1D72BAA60;
      *(v148 + 32) = v379;
      v149 = v346;
      *(v148 + 40) = v362;
      *(v148 + 48) = v149;
      sub_1D5E1AA2C(0);
      sub_1D5B58B84(&qword_1EDF031E8, sub_1D5E1AA2C);

      v363 = v145;
      v150 = v393;
      v151 = sub_1D72647CC();
      LOBYTE(v379) = 0;
      v152 = swift_allocObject();
      *(v152 + 16) = v151;
      *(v152 + 24) = v367;
      *(v152 + 40) = v379;
      v153 = __swift_project_boxed_opaque_existential_1((v150 + *(v366 + 36)), *(v150 + *(v366 + 36) + 24));
      v355 = v345;
      MEMORY[0x1EEE9AC00](v153, v154);
      MEMORY[0x1EEE9AC00](v155, v156);
      v345[-4] = sub_1D5B4AA6C;
      v345[-3] = 0;
      v343 = sub_1D6708B24;
      v344 = v148;
      v157 = v368;
      v159 = sub_1D5D2F7A4(v146, sub_1D615B49C, v158, sub_1D615B4A4, &v345[-6]);
      if (v157)
      {
        sub_1D5D2CFE8(v146, type metadata accessor for FormatVersionRequirement);

        v88 = v150;
        return sub_1D5D2CFE8(v88, sub_1D66AD5EC);
      }

      v161 = v159;
      v162 = v363;

      if (v161)
      {
        v379 = v367;
        LOBYTE(v380) = 0;
        *&v389 = v162;
        sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
        sub_1D6659C88();
        sub_1D72647EC();
        v142 = v359;
        v147 = v364;
        v141 = v365;
        *&v368 = 0;

        sub_1D5D2CFE8(v356, type metadata accessor for FormatVersionRequirement);
        v92 = v358;
      }

      else
      {
        *&v368 = 0;
        sub_1D5D2CFE8(v356, type metadata accessor for FormatVersionRequirement);

        v92 = v358;
        v142 = v359;
        v147 = v364;
        v141 = v365;
      }
    }

    else
    {
      v150 = v393;
      sub_1D5D2CFE8(v146, type metadata accessor for FormatVersionRequirement);
    }

    v163 = *(v92 + 9);
    v164 = *(v92 + 13);
    v391 = *(v92 + 11);
    *v392 = v164;
    *&v392[15] = *(v92 + 119);
    v389 = *(v92 + 7);
    v390 = v163;
    v141(v357, v147, v142);
    swift_storeEnumTagMultiPayload();
    *v381 = v391;
    *&v381[16] = *v392;
    *&v381[31] = *&v392[15];
    v379 = v389;
    v380 = v390;
    v367 = xmmword_1D72BAA70;
    v384 = xmmword_1D72BAA70;
    LOBYTE(v385[0]) = 0;
    LOBYTE(v376) = 0;
    v165 = swift_allocObject();
    v363 = v345;
    *(v165 + 16) = v367;
    *(v165 + 32) = v376;
    v166 = v362;
    v167 = v346;
    *(v165 + 40) = v362;
    *(v165 + 48) = v167;
    MEMORY[0x1EEE9AC00](v165, v168);
    v345[-4] = sub_1D5B4AA6C;
    v345[-3] = 0;
    v343 = sub_1D6708B24;
    v344 = v169;
    LOBYTE(v376) = 0;
    v170 = swift_allocObject();
    *(v170 + 16) = v367;
    *(v170 + 32) = v376;
    *(v170 + 40) = v166;
    *(v170 + 48) = v167;
    sub_1D5E1AA2C(0);
    v172 = v171;
    v173 = sub_1D5B58B84(&qword_1EDF031E8, sub_1D5E1AA2C);
    swift_retain_n();
    v355 = v172;
    v356 = v173;
    v174 = sub_1D72647CC();
    LOBYTE(v376) = 0;
    v175 = swift_allocObject();
    *(v175 + 16) = v174;
    *(v175 + 24) = v367;
    *(v175 + 40) = v376;
    v176 = (v150 + *(v366 + 36));
    v177 = __swift_project_boxed_opaque_existential_1(v176, v176[3]);
    MEMORY[0x1EEE9AC00](v177, v178);
    MEMORY[0x1EEE9AC00](v179, v180);
    v345[-4] = sub_1D615B4A4;
    v345[-3] = &v345[-6];
    v343 = sub_1D6708B24;
    v344 = v170;
    v181 = v357;
    v182 = v368;
    sub_1D5D2BC70(v357, sub_1D615B49C, v183, sub_1D615B4A4, &v345[-6]);
    if (v182)
    {
      *&v368 = v182;
      sub_1D5D2CFE8(v181, type metadata accessor for FormatVersionRequirement);

      v184 = v393;
LABEL_43:
      v88 = v184;
      return sub_1D5D2CFE8(v88, sub_1D66AD5EC);
    }

    *&v367 = v176;

    sub_1D66AD710();
    v184 = v393;
    sub_1D72647EC();
    *&v368 = 0;
    sub_1D5D2CFE8(v357, type metadata accessor for FormatVersionRequirement);

    v185 = v358;
    swift_beginAccess();
    v186 = v185[16];
    v187 = v354;
    v188 = v365;
    (v365)(v354, v364, v359);
    swift_storeEnumTagMultiPayload();
    v363 = v186;
    if (v186)
    {
      LOBYTE(v379) = 0;
      v189 = swift_allocObject();
      v366 = xmmword_1D72BAA80;
      *(v189 + 16) = xmmword_1D72BAA80;
      *(v189 + 32) = v379;
      *(v189 + 40) = v362;
      *(v189 + 48) = v346;

      v190 = sub_1D72647CC();
      LOBYTE(v379) = 0;
      v191 = swift_allocObject();
      *(v191 + 16) = v190;
      *(v191 + 24) = v366;
      *(v191 + 40) = v379;
      v192 = __swift_project_boxed_opaque_existential_1(v367, *(v367 + 24));
      MEMORY[0x1EEE9AC00](v192, v193);
      MEMORY[0x1EEE9AC00](v194, v195);
      v345[-4] = sub_1D5B4AA6C;
      v345[-3] = 0;
      v343 = sub_1D6708B24;
      v344 = v189;
      v196 = v368;
      v198 = sub_1D5D2F7A4(v187, sub_1D615B49C, v197, sub_1D615B4A4, &v345[-6]);
      *&v368 = v196;
      if (v196)
      {
        sub_1D5D2CFE8(v187, type metadata accessor for FormatVersionRequirement);

        goto LABEL_43;
      }

      v199 = v198;

      if (v199)
      {
        v379 = v366;
        LOBYTE(v380) = 0;
        *&v384 = v363;
        v200 = v368;
        sub_1D72647EC();
        *&v368 = v200;
        v188 = v365;
        if (v200)
        {
          sub_1D5D2CFE8(v354, type metadata accessor for FormatVersionRequirement);
          goto LABEL_43;
        }

        sub_1D5D2CFE8(v354, type metadata accessor for FormatVersionRequirement);
        v185 = v358;
      }

      else
      {
        sub_1D5D2CFE8(v354, type metadata accessor for FormatVersionRequirement);
        v185 = v358;
        v188 = v365;
      }
    }

    else
    {
      sub_1D5D2CFE8(v187, type metadata accessor for FormatVersionRequirement);
    }

    swift_beginAccess();
    v201 = v185[17];
    v202 = v353;
    v203 = v359;
    v188(v353, v364, v359);
    swift_storeEnumTagMultiPayload();
    v366 = xmmword_1D72BAA90;
    v387 = xmmword_1D72BAA90;
    v388 = 0;
    LOBYTE(v379) = 0;
    v204 = swift_allocObject();
    v206 = v204;
    *(v204 + 16) = v366;
    *(v204 + 32) = v379;
    v207 = v185;
    v208 = v362;
    v209 = v346;
    *(v204 + 40) = v362;
    *(v204 + 48) = v209;
    if (v201)
    {
      v363 = v345;
      v386 = v201;
      MEMORY[0x1EEE9AC00](v204, v205);
      v345[-4] = sub_1D5B4AA6C;
      v345[-3] = 0;
      v343 = sub_1D6708B24;
      v344 = v206;
      LOBYTE(v379) = 0;
      v210 = swift_allocObject();
      *(v210 + 16) = v366;
      *(v210 + 32) = v379;
      *(v210 + 40) = v208;
      *(v210 + 48) = v209;
      swift_retain_n();
      swift_retain_n();
      v211 = sub_1D72647CC();
      LOBYTE(v379) = 0;
      v212 = swift_allocObject();
      *(v212 + 16) = v211;
      *(v212 + 24) = v366;
      *(v212 + 40) = v379;
      v213 = __swift_project_boxed_opaque_existential_1(v367, *(v367 + 24));
      MEMORY[0x1EEE9AC00](v213, v214);
      MEMORY[0x1EEE9AC00](v215, v216);
      v345[-4] = sub_1D615B4A4;
      v345[-3] = &v345[-6];
      v343 = sub_1D6708B24;
      v344 = v210;
      v217 = v368;
      v219 = sub_1D5D2F7A4(v202, sub_1D615B49C, v218, sub_1D615B4A4, &v345[-6]);
      *&v368 = v217;
      if (v217)
      {

        v220 = v393;
        v202 = v353;
LABEL_56:
        sub_1D5D2CFE8(v202, type metadata accessor for FormatVersionRequirement);
        v88 = v220;
        return sub_1D5D2CFE8(v88, sub_1D66AD5EC);
      }

      *&v366 = v201;
      v222 = v219;

      if (v222)
      {
        type metadata accessor for FormatProgressViewNodeStyle();
        sub_1D5B58B84(&unk_1EDF0AF40, type metadata accessor for FormatProgressViewNodeStyle);
        v220 = v393;
        v223 = v368;
        sub_1D72647EC();
        *&v368 = v223;
        v203 = v359;
        v224 = v365;
        v202 = v353;
        if (v223)
        {

          goto LABEL_56;
        }

        v221 = v358;
        v188 = v224;
      }

      else
      {

        v221 = v358;
        v203 = v359;
        v188 = v365;
        v202 = v353;
      }
    }

    else
    {
      v221 = v207;
    }

    sub_1D5D2CFE8(v202, type metadata accessor for FormatVersionRequirement);
    swift_beginAccess();
    v225 = *(v221 + 10);
    v384 = *(v221 + 9);
    v385[0] = v225;
    v385[1] = *(v221 + 11);
    *(&v385[1] + 9) = *(v221 + 185);
    sub_1D66AD764(&v384, &v379);
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v226 = __swift_project_value_buffer(v203, qword_1EDFFCCA8);
    v188(v352, v226, v203);
    swift_storeEnumTagMultiPayload();
    if ((BYTE8(v385[2]) & 0xC0) != 0x80 || BYTE8(v385[2]) != 128 || (v227 = vorrq_s8(*(v385 + 8), *(&v385[1] + 8)), *&vorr_s8(*v227.i8, *&vextq_s8(v227, v227, 8uLL)) | *&v385[0] | *(&v384 + 1) | v384))
    {
      v379 = v384;
      v380 = v385[0];
      *v381 = v385[1];
      *&v381[9] = *(&v385[1] + 9);
      memset(&v381[32], 0, 48);
      v382 = 0;
      v383 = 0x80;
      if ((BYTE8(v385[2]) & 0x80) == 0)
      {
        sub_1D66AD764(&v384, &v376);
        sub_1D66AD7C0(&v379, &qword_1EDF102C0);
        LOBYTE(v376) = 0;
        v228 = swift_allocObject();
        v366 = xmmword_1D72BAAA0;
        *(v228 + 16) = xmmword_1D72BAAA0;
        *(v228 + 32) = v376;
        *(v228 + 40) = v362;
        *(v228 + 48) = v346;

        v229 = sub_1D72647CC();
        LOBYTE(v376) = 0;
        v230 = swift_allocObject();
        *(v230 + 16) = v229;
        *(v230 + 24) = v366;
        *(v230 + 40) = v376;
        v231 = __swift_project_boxed_opaque_existential_1(v367, *(v367 + 24));
        MEMORY[0x1EEE9AC00](v231, v232);
        MEMORY[0x1EEE9AC00](v233, v234);
        v345[-4] = sub_1D5B4AA6C;
        v345[-3] = 0;
        v343 = sub_1D6708B24;
        v344 = v228;
        v235 = v352;
        v236 = v368;
        v238 = sub_1D5D2F7A4(v352, sub_1D615B49C, v237, sub_1D615B4A4, &v345[-6]);
        v239 = v236;
        if (v236)
        {

          sub_1D62B63E4(&v384);
LABEL_71:
          v138 = v235;
          goto LABEL_18;
        }

        v257 = v238;

        if (v257)
        {
          v374 = v366;
          v375 = 0;
          v376 = v384;
          v377 = v385[0];
          v378[0] = v385[1];
          *(v378 + 9) = *(&v385[1] + 9);
          sub_1D66AD81C();
          sub_1D72647EC();
          v203 = v359;
          v240 = v364;
          v369[0] = v376;
          v369[1] = v377;
          v370[0] = v378[0];
          *(v370 + 9) = *(v378 + 9);
          sub_1D62B63E4(v369);
          sub_1D5D2CFE8(v235, type metadata accessor for FormatVersionRequirement);
          v221 = v358;
LABEL_75:
          swift_beginAccess();
          v241 = v221;
          v242 = v221[26];
          v243 = v350;
          v244 = v365;
          (v365)(v350, v240, v203);
          swift_storeEnumTagMultiPayload();
          v245 = v242;
          v246 = v242 == 0x8000000000000000;
          v247 = v367;
          if (v246)
          {
            sub_1D5D2CFE8(v243, type metadata accessor for FormatVersionRequirement);
          }

          else
          {
            LOBYTE(v379) = 0;
            v248 = swift_allocObject();
            v368 = xmmword_1D72BAAB0;
            *(v248 + 16) = xmmword_1D72BAAB0;
            *(v248 + 32) = v379;
            *(v248 + 40) = v362;
            *(v248 + 48) = v346;

            sub_1D5EB1500(v245);
            v249 = sub_1D72647CC();
            LOBYTE(v379) = 0;
            v250 = swift_allocObject();
            *(v250 + 16) = v249;
            *(v250 + 24) = v368;
            *(v250 + 40) = v379;
            v251 = __swift_project_boxed_opaque_existential_1(v247, v247[3]);
            MEMORY[0x1EEE9AC00](v251, v252);
            MEMORY[0x1EEE9AC00](v253, v254);
            v345[-4] = sub_1D5B4AA6C;
            v345[-3] = 0;
            v343 = sub_1D6708B24;
            v344 = v248;
            v256 = sub_1D5D2F7A4(v243, sub_1D615B49C, v255, sub_1D615B4A4, &v345[-6]);
            if (v239)
            {

              sub_1D5EB15C4(v245);
              v138 = v243;
              goto LABEL_18;
            }

            v258 = v256;

            if (v258)
            {
              v379 = v368;
              LOBYTE(v380) = 0;
              *&v369[0] = v245;
              sub_1D5DF6A60();
              sub_1D72647EC();
              v259 = *&v369[0];
            }

            else
            {
              v259 = v245;
            }

            sub_1D5EB15C4(v259);
            sub_1D5D2CFE8(v243, type metadata accessor for FormatVersionRequirement);
            v241 = v358;
            v203 = v359;
            v240 = v364;
            v244 = v365;
            v247 = v367;
          }

          swift_beginAccess();
          v260 = v241[27];
          v261 = v351;
          v244(v351, v240, v203);
          swift_storeEnumTagMultiPayload();
          if (*(v260 + 16))
          {
            LOBYTE(v379) = 0;
            v262 = swift_allocObject();
            v368 = xmmword_1D72BAAC0;
            *(v262 + 16) = xmmword_1D72BAAC0;
            *(v262 + 32) = v379;
            *(v262 + 40) = v362;
            *(v262 + 48) = v346;

            v263 = sub_1D72647CC();
            LOBYTE(v379) = 0;
            v264 = swift_allocObject();
            *(v264 + 16) = v263;
            *(v264 + 24) = v368;
            *(v264 + 40) = v379;
            v265 = __swift_project_boxed_opaque_existential_1(v247, v247[3]);
            MEMORY[0x1EEE9AC00](v265, v266);
            MEMORY[0x1EEE9AC00](v267, v268);
            v345[-4] = sub_1D5B4AA6C;
            v345[-3] = 0;
            v343 = sub_1D6708B24;
            v344 = v262;
            v270 = sub_1D5D2F7A4(v261, sub_1D615B49C, v269, sub_1D615B4A4, &v345[-6]);
            if (v239)
            {

              v119 = v393;
              v120 = v351;
              goto LABEL_15;
            }

            v272 = v270;

            if (v272)
            {
              sub_1D5E076D0(v260, v393, 9, 0, 0);
              v261 = v351;
              v203 = v359;
              v271 = v365;
            }

            else
            {
              v203 = v359;
              v271 = v365;
              v261 = v351;
            }

            v241 = v358;
          }

          else
          {
            v271 = v244;
          }

          sub_1D5D2CFE8(v261, type metadata accessor for FormatVersionRequirement);
          v273 = v241[28];
          v274 = *(v241 + 232);
          v271(v349, v364, v203);
          swift_storeEnumTagMultiPayload();
          v368 = xmmword_1D72BAAD0;
          v379 = xmmword_1D72BAAD0;
          LOBYTE(v380) = 0;
          LOBYTE(v374) = 0;
          v275 = swift_allocObject();
          v277 = v275;
          *(v275 + 16) = v368;
          *(v275 + 32) = v374;
          v278 = v362;
          v279 = v346;
          *(v275 + 40) = v362;
          *(v275 + 48) = v279;
          if (v274 <= 0xFD)
          {
            *&v366 = v345;
            *&v374 = v273;
            BYTE8(v374) = v274;
            MEMORY[0x1EEE9AC00](v275, v276);
            v345[-4] = sub_1D5B4AA6C;
            v345[-3] = 0;
            v343 = sub_1D6708B24;
            v344 = v277;
            LOBYTE(v372) = 0;
            v282 = swift_allocObject();
            *(v282 + 16) = v368;
            *(v282 + 32) = v372;
            *(v282 + 40) = v278;
            *(v282 + 48) = v279;
            swift_retain_n();
            v283 = sub_1D72647CC();
            LOBYTE(v372) = 0;
            v284 = swift_allocObject();
            *(v284 + 16) = v283;
            *(v284 + 24) = v368;
            *(v284 + 40) = v372;
            v285 = __swift_project_boxed_opaque_existential_1(v367, *(v367 + 24));
            MEMORY[0x1EEE9AC00](v285, v286);
            MEMORY[0x1EEE9AC00](v287, v288);
            v345[-4] = sub_1D615B4A4;
            v345[-3] = &v345[-6];
            v343 = sub_1D6708B24;
            v344 = v282;
            v289 = v349;
            v291 = sub_1D5D2F7A4(v349, sub_1D615B49C, v290, sub_1D615B4A4, &v345[-6]);
            if (v239)
            {
              sub_1D5D2CFE8(v289, type metadata accessor for FormatVersionRequirement);

              goto LABEL_19;
            }

            v292 = v291;

            if (v292)
            {
              sub_1D5F8F434();
              sub_1D72647EC();
            }

            v280 = v358;
            v203 = v359;
            v271 = v365;
            v281 = v349;
            v279 = v346;
          }

          else
          {

            v280 = v358;
            v281 = v349;
          }

          sub_1D5D2CFE8(v281, type metadata accessor for FormatVersionRequirement);

          swift_beginAccess();
          v293 = v280;
          v294 = v280[30];
          v295 = v293[31];
          v296 = v348;
          v271(v348, v364, v203);
          v297 = v295;
          swift_storeEnumTagMultiPayload();
          v366 = xmmword_1D72BAAE0;
          v379 = xmmword_1D72BAAE0;
          LOBYTE(v380) = 0;
          LOBYTE(v372) = 0;
          v298 = swift_allocObject();
          v300 = v298;
          *(v298 + 16) = v366;
          *(v298 + 32) = v372;
          v301 = v362;
          *(v298 + 40) = v362;
          *(v298 + 48) = v279;
          *&v368 = v239;
          if (v297)
          {
            v364 = v345;
            *&v372 = v294;
            *(&v372 + 1) = v297;
            MEMORY[0x1EEE9AC00](v298, v299);
            v345[-4] = sub_1D5B4AA6C;
            v345[-3] = 0;
            v343 = sub_1D6708B24;
            v344 = v300;
            v371 = 0;
            v302 = swift_allocObject();
            *(v302 + 16) = v366;
            *(v302 + 32) = v371;
            *(v302 + 40) = v301;
            *(v302 + 48) = v279;
            swift_retain_n();
            swift_bridgeObjectRetain_n();
            v303 = sub_1D72647CC();
            v371 = 0;
            v304 = swift_allocObject();
            *(v304 + 16) = v303;
            *(v304 + 24) = v366;
            *(v304 + 40) = v371;
            v305 = __swift_project_boxed_opaque_existential_1(v367, *(v367 + 24));
            MEMORY[0x1EEE9AC00](v305, v306);
            MEMORY[0x1EEE9AC00](v307, v308);
            v345[-4] = sub_1D615B4A4;
            v345[-3] = &v345[-6];
            v343 = sub_1D6708B24;
            v344 = v302;
            v309 = v368;
            v311 = sub_1D5D2F7A4(v296, sub_1D615B49C, v310, sub_1D615B4A4, &v345[-6]);
            *&v368 = v309;
            if (v309)
            {
              swift_bridgeObjectRelease_n();

LABEL_105:
              sub_1D5D2CFE8(v296, type metadata accessor for FormatVersionRequirement);
              v88 = v393;
              return sub_1D5D2CFE8(v88, sub_1D66AD5EC);
            }

            v312 = v311;

            if (v312)
            {
              v313 = v368;
              sub_1D72647EC();
              *&v368 = v313;
              if (v313)
              {
                swift_bridgeObjectRelease_n();

                v296 = v348;
                goto LABEL_105;
              }
            }

            swift_bridgeObjectRelease_n();
            v203 = v359;
          }

          else
          {
          }

          sub_1D5D2CFE8(v348, type metadata accessor for FormatVersionRequirement);
          v314 = v358[32];
          v315 = v358[33];
          v317 = v358[34];
          v316 = v358[35];
          v318 = v358[36];
          v364 = v358[37];
          if (qword_1EDF31F38 != -1)
          {
            swift_once();
          }

          v319 = __swift_project_value_buffer(v203, qword_1EDFFCE38);
          (v365)(v347, v319, v203);
          swift_storeEnumTagMultiPayload();
          v366 = xmmword_1D72BAAF0;
          v372 = xmmword_1D72BAAF0;
          v373 = 0;
          LOBYTE(v379) = 0;
          v320 = swift_allocObject();
          v322 = v320;
          *(v320 + 16) = v366;
          *(v320 + 32) = v379;
          v323 = v362;
          v324 = v346;
          *(v320 + 40) = v362;
          *(v320 + 48) = v324;
          if (v314)
          {
            v365 = v345;
            *&v379 = v314;
            *(&v379 + 1) = v315;
            *&v380 = v317;
            *(&v380 + 1) = v316;
            v357 = v318;
            *v381 = v318;
            *&v381[8] = v364;
            MEMORY[0x1EEE9AC00](v320, v321);
            v363 = &v345[-6];
            v345[-4] = sub_1D5B4AA6C;
            v345[-3] = 0;
            v343 = sub_1D6708B24;
            v344 = v322;
            v371 = 0;
            v326 = v325;
            v327 = v315;
            v328 = swift_allocObject();
            *(v328 + 16) = v366;
            *(v328 + 32) = v371;
            *(v328 + 40) = v323;
            *(v328 + 48) = v324;
            swift_retain_n();
            sub_1D5EB1D80(v326, v327, v317, v316, v357);
            v329 = sub_1D72647CC();
            v371 = 0;
            v330 = swift_allocObject();
            *(v330 + 16) = v329;
            *(v330 + 24) = v366;
            *(v330 + 40) = v371;
            v331 = __swift_project_boxed_opaque_existential_1(v367, *(v367 + 24));
            MEMORY[0x1EEE9AC00](v331, v332);
            MEMORY[0x1EEE9AC00](v333, v334);
            v335 = v363;
            v345[-4] = sub_1D615B4A4;
            v345[-3] = v335;
            v343 = sub_1D6708B24;
            v344 = v328;
            v235 = v347;
            v336 = v368;
            v338 = sub_1D5D2F7A4(v347, sub_1D615B49C, v337, sub_1D615B4A4, &v345[-6]);
            if (v336)
            {

LABEL_116:
              v339 = *v381;

              sub_1D5CBF568(v339);

              goto LABEL_71;
            }

            v340 = v338;
            *&v368 = 0;

            if (v340)
            {
              sub_1D6659A24();
              v341 = v368;
              sub_1D72647EC();
              *&v368 = v341;
              if (v341)
              {

                v235 = v347;
                goto LABEL_116;
              }
            }

            v342 = *v381;

            sub_1D5CBF568(v342);

            sub_1D5D2CFE8(v347, type metadata accessor for FormatVersionRequirement);
          }

          else
          {

            sub_1D5D2CFE8(v347, type metadata accessor for FormatVersionRequirement);
          }

          v88 = v393;
          return sub_1D5D2CFE8(v88, sub_1D66AD5EC);
        }

        sub_1D62B63E4(&v384);
        sub_1D5D2CFE8(v235, type metadata accessor for FormatVersionRequirement);
        v221 = v358;
        v203 = v359;
LABEL_74:
        v240 = v364;
        goto LABEL_75;
      }

      sub_1D66AD7C0(&v379, &qword_1EDF102C0);
    }

    sub_1D5D2CFE8(v352, type metadata accessor for FormatVersionRequirement);
    v239 = v368;
    goto LABEL_74;
  }

  sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);

  v88 = v72;
  return sub_1D5D2CFE8(v88, sub_1D66AD5EC);
}

unint64_t sub_1D6551738(char a1)
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
      result = 0x746E65746E6F63;
      break;
    case 5:
      result = 0x7865646E497ALL;
      break;
    case 6:
      result = 0x656C797473;
      break;
    case 7:
      result = 1684957547;
      break;
    case 8:
      result = 0x696C696269736976;
      break;
    case 9:
      result = 0x726F7463656C6573;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 1701667182;
      break;
    case 12:
      result = 2019912806;
      break;
    case 13:
      result = 1885433183;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D6551894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66AE484(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65518CC(uint64_t a1)
{
  v2 = sub_1D5E1AB40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6551908(uint64_t a1)
{
  v2 = sub_1D5E1AB40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatProgressViewNodeContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D66AD870();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66AD904();
  sub_1D5B58B84(&qword_1EDF24E98, sub_1D66AD904);
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

  v13 = v29;
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

      v21 = *(v17 - 2);
      v20 = *(v17 - 1);

      v22 = sub_1D6627E68(0x6E6F697461727564, 0xE800000000000000, 0x73736572676F7270, 0xE800000000000000);
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

  sub_1D66ADA84();
  v32 = 0uLL;
  LOBYTE(v33) = 0;
  sub_1D726431C();
  v18 = v30;
  v19 = BYTE8(v30);
  v30 = xmmword_1D728CF30;
  v31 = 0;
  sub_1D5E1D778();
  sub_1D726431C();
  (*(v14 + 8))(v10, v6);
  v25 = v35;
  v26 = v36;
  v37 = v19;
  *v13 = v18;
  *(v13 + 8) = v19;
  *(v13 + 9) = *v38;
  *(v13 + 12) = *&v38[3];
  v27 = v33;
  *(v13 + 16) = v32;
  *(v13 + 32) = v27;
  *(v13 + 48) = v34;
  *(v13 + 66) = v26;
  *(v13 + 64) = v25;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatProgressViewNodeContent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v85 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v73 - v8;
  sub_1D66ADAE4();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = *(v1 + 8);
  v17 = *(v1 + 1);
  v83 = *(v1 + 2);
  v84 = v17;
  v18 = v1[7];
  v82 = v1[6];
  v81 = v18;
  v100 = *(v1 + 66);
  v79 = *(v1 + 32);
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D66AD904();
  v22 = v21;
  v23 = sub_1D5B58B84(&qword_1EDF24E98, sub_1D66AD904);
  sub_1D5D2EE70(&type metadata for FormatProgressViewNodeContent, v22, v24, v19, &type metadata for FormatProgressViewNodeContent, v22, &type metadata for FormatVersions.StarSkyC, v20, v14, v23, &off_1F51F6B18);
  if (qword_1EDF31E98 != -1)
  {
    swift_once();
  }

  v25 = sub_1D725BD1C();
  v26 = __swift_project_value_buffer(v25, qword_1EDFFCD00);
  v27 = *(v25 - 8);
  v28 = *(v27 + 16);
  v78 = v25;
  v77 = v28;
  v76 = v27 + 16;
  v28(v9, v26, v25);
  v75 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v91 = v15;
  BYTE8(v91) = v16;
  v93 = 0uLL;
  LOBYTE(v94) = 0;
  v29 = &v14[*(v11 + 44)];
  v30 = *v29;
  v31 = *(v29 + 1);
  v99 = 0;
  v32 = swift_allocObject();
  v89 = &v73;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v99;
  *(v32 + 40) = v30;
  *(v32 + 48) = v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  *(&v73 - 4) = sub_1D5B4AA6C;
  *(&v73 - 3) = 0;
  v71 = sub_1D6708B28;
  v72 = v34;
  v99 = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v99;
  v80 = v30;
  *(v35 + 40) = v30;
  *(v35 + 48) = v31;
  sub_1D66ADB78();
  v88 = v9;
  v37 = v36;
  v38 = sub_1D5B58B84(&qword_1EDF02DF8, sub_1D66ADB78);
  swift_retain_n();
  v86 = v38;
  v87 = v37;
  v39 = sub_1D72647CC();
  v99 = 0;
  v40 = swift_allocObject();
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 16) = v39;
  *(v40 + 40) = v99;
  v41 = v14;
  v42 = &v14[*(v11 + 36)];
  v43 = __swift_project_boxed_opaque_existential_1(v42, *(v42 + 3));
  MEMORY[0x1EEE9AC00](v43, v44);
  MEMORY[0x1EEE9AC00](v45, v46);
  *(&v73 - 4) = sub_1D615B4A4;
  *(&v73 - 3) = (&v73 - 6);
  v47 = v88;
  v71 = sub_1D66ADC0C;
  v72 = v35;
  v48 = v90;
  sub_1D5D2BC70(v88, sub_1D615B49C, v49, sub_1D615B4A4, (&v73 - 6));
  if (v48)
  {
    sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);

    v50 = v41;
  }

  else
  {
    v73 = v42;
    v74 = v31;

    sub_1D66ADC88();
    sub_1D72647EC();
    v52 = v41;
    v53 = v79 | (v100 << 16);
    sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);

    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v54 = v78;
    v55 = __swift_project_value_buffer(v78, qword_1EDFFCCE8);
    v56 = v85;
    v77(v85, v55, v54);
    swift_storeEnumTagMultiPayload();
    v93 = v84;
    v94 = v83;
    v95 = v82;
    v96 = v81;
    v98 = BYTE2(v53);
    v97 = v53;
    v90 = xmmword_1D728CF30;
    v91 = xmmword_1D728CF30;
    v92 = 0;
    v99 = 0;
    v57 = swift_allocObject();
    v89 = &v73;
    *(v57 + 16) = v90;
    *(v57 + 32) = v99;
    v58 = v80;
    v59 = v74;
    *(v57 + 40) = v80;
    *(v57 + 48) = v59;
    MEMORY[0x1EEE9AC00](v57, v60);
    *(&v73 - 4) = sub_1D5B4AA6C;
    *(&v73 - 3) = 0;
    v71 = sub_1D6708B28;
    v72 = v61;
    v99 = 0;
    v62 = swift_allocObject();
    *(v62 + 16) = v90;
    *(v62 + 32) = v99;
    *(v62 + 40) = v58;
    *(v62 + 48) = v59;
    swift_retain_n();
    v88 = v52;
    v63 = sub_1D72647CC();
    v99 = 0;
    v64 = swift_allocObject();
    *(v64 + 16) = v63;
    *(v64 + 24) = v90;
    *(v64 + 40) = v99;
    v65 = __swift_project_boxed_opaque_existential_1(v73, *(v73 + 3));
    MEMORY[0x1EEE9AC00](v65, v66);
    MEMORY[0x1EEE9AC00](v67, v68);
    *(&v73 - 4) = sub_1D615B4A4;
    *(&v73 - 3) = (&v73 - 6);
    v71 = sub_1D6708B28;
    v72 = v62;
    sub_1D5D2BC70(v56, sub_1D615B49C, v69, sub_1D615B4A4, (&v73 - 6));

    sub_1D5E1D7CC();
    v70 = v88;
    sub_1D72647EC();
    sub_1D5D2CFE8(v56, type metadata accessor for FormatVersionRequirement);

    v50 = v70;
  }

  return sub_1D5D2CFE8(v50, sub_1D66ADAE4);
}

uint64_t sub_1D6552638()
{
  v1 = 0x73736572676F7270;
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
    return 0x6E6F697461727564;
  }
}

uint64_t sub_1D655268C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66AE8F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65526C4(uint64_t a1)
{
  v2 = sub_1D66AD9DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6552700(uint64_t a1)
{
  v2 = sub_1D66AD9DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatProgressViewNodeDuration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
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
          *(v20 + 16) = &unk_1F5116848;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66ADCDC();
    v26 = 0uLL;
    sub_1D726431C();
    v22 = v27;
    if (v27)
    {
      v26 = xmmword_1D7279980;
      sub_1D6677FFC();
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v23 = v27;
    }

    else
    {
      sub_1D5C71DC8();
      v26 = xmmword_1D7279980;
      sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v23 = v27;
    }

    *v13 = v23;
    *(v13 + 8) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatProgressViewNodeDuration.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatProgressViewNodeDuration, &type metadata for FormatCodingKeys, v20, v17, &type metadata for FormatProgressViewNodeDuration, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyC, v18, v14, v19, &off_1F51F6B18);
  if (v16)
  {
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v21 = sub_1D725BD1C();
    v22 = __swift_project_value_buffer(v21, qword_1EDFFCD00);
    (*(*(v21 - 8) + 16))(v6, v22, v21);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638A9F4(1, v15, v6);
    v23 = v6;
  }

  else
  {
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v24 = sub_1D725BD1C();
    v25 = __swift_project_value_buffer(v24, qword_1EDFFCD00);
    (*(*(v24 - 8) + 16))(v10, v25, v24);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638A828(0, v15, v10);
    v23 = v10;
  }

  sub_1D5D2CFE8(v23, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D6552DFC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x676E69646E6962;
  }

  else
  {
    v3 = 0x656E696C6E69;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x676E69646E6962;
  }

  else
  {
    v5 = 0x656E696C6E69;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
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

uint64_t sub_1D6552EA0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6552F20()
{
  sub_1D72621EC();
}

uint64_t sub_1D6552F8C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6553014(uint64_t *a1@<X8>)
{
  v2 = 0x656E696C6E69;
  if (*v1)
  {
    v2 = 0x676E69646E6962;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D6553100(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x646E616D6D6F63;
  }

  else
  {
    v3 = 0x656E696C6E69;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x646E616D6D6F63;
  }

  else
  {
    v5 = 0x656E696C6E69;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
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

uint64_t sub_1D65531A4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6553224()
{
  sub_1D72621EC();
}

uint64_t sub_1D6553290()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6553318(uint64_t *a1@<X8>)
{
  v2 = 0x656E696C6E69;
  if (*v1)
  {
    v2 = 0x646E616D6D6F63;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1D6553404()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000018;
  if (v1 != 6)
  {
    v3 = 1885433183;
  }

  v4 = 0x73736572676F7270;
  if (v1 != 4)
  {
    v4 = 0x6C6F436B63617274;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x726F7463656C6573;
  if (v1 != 2)
  {
    v5 = 0x6168706C61;
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
    return v3;
  }
}

uint64_t sub_1D6553504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66AEA0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D655353C(uint64_t a1)
{
  v2 = sub_1D666AB2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6553578(uint64_t a1)
{
  v2 = sub_1D666AB2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65535B4()
{
  v1 = *v0;
  v2 = 0x726F7463656C6573;
  v3 = 0x6C6F436B63617274;
  v4 = 0xD000000000000018;
  if (v1 != 4)
  {
    v4 = 1885433183;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6168706C61;
  if (v1 != 1)
  {
    v5 = 0x73736572676F7270;
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

uint64_t sub_1D6553678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66AECBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65536B0(uint64_t a1)
{
  v2 = sub_1D666AE6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65536EC(uint64_t a1)
{
  v2 = sub_1D666AE6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPublisherLogoSize.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v89 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v97 = &v88 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v88 - v11;
  sub_1D66ADD30();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v91 = *(v1 + 1);
  v107 = v1[16];
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D5CBF578();
  v22 = v21;
  v23 = sub_1D5B58B84(&qword_1EDF25198, sub_1D5CBF578);
  sub_1D5D2EE70(&type metadata for FormatPublisherLogoSize, v22, v24, v19, &type metadata for FormatPublisherLogoSize, v22, &type metadata for FormatVersions.JazzkonC, v20, v17, v23, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v25 = sub_1D725BD1C();
  v26 = __swift_project_value_buffer(v25, qword_1EDFFCD30);
  v27 = *(v25 - 8);
  v28 = *(v27 + 16);
  v90 = v26;
  v94 = v28;
  v95 = v25;
  v93 = v27 + 16;
  (v28)(v12);
  v92 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v103) = v18;
  v104 = 0uLL;
  v105 = 0;
  v29 = &v17[*(v14 + 44)];
  v30 = *v29;
  v31 = *(v29 + 1);
  v106 = 0;
  v32 = swift_allocObject();
  v100 = &v88;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v106;
  *(v32 + 40) = v30;
  *(v32 + 48) = v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  *&v102 = v12;
  *(&v88 - 4) = sub_1D5B4AA6C;
  *(&v88 - 3) = 0;
  v86 = sub_1D6708B2C;
  v87 = v34;
  v106 = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v106;
  v96 = v30;
  *(v35 + 40) = v30;
  *(v35 + 48) = v31;
  sub_1D66ADDC4();
  v37 = v36;
  v38 = sub_1D5B58B84(&qword_1EDF03158, sub_1D66ADDC4);
  swift_retain_n();
  v98 = v38;
  v99 = v37;
  v39 = sub_1D72647CC();
  v106 = 0;
  v40 = swift_allocObject();
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 16) = v39;
  *(v40 + 40) = v106;
  v41 = &v17[*(v14 + 36)];
  v42 = __swift_project_boxed_opaque_existential_1(v41, *(v41 + 3));
  MEMORY[0x1EEE9AC00](v42, v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  *(&v88 - 4) = sub_1D615B4A4;
  *(&v88 - 3) = (&v88 - 6);
  v46 = v101;
  v47 = v102;
  v86 = sub_1D6708B2C;
  v87 = v35;
  sub_1D5D2BC70(v102, sub_1D615B49C, v48, sub_1D615B4A4, (&v88 - 6));
  if (v46)
  {
    sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);

    v49 = v17;
  }

  else
  {
    v88 = v41;
    v101 = v31;

    sub_1D66ADE58();
    sub_1D72647EC();
    sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);

    v94(v97, v90, v95);
    swift_storeEnumTagMultiPayload();
    v103 = v91;
    v102 = xmmword_1D728CF30;
    v104 = xmmword_1D728CF30;
    v105 = 0;
    v106 = 0;
    v51 = swift_allocObject();
    v100 = &v88;
    *(v51 + 16) = v102;
    *(v51 + 32) = v106;
    v52 = v96;
    v53 = v101;
    *(v51 + 40) = v96;
    *(v51 + 48) = v53;
    MEMORY[0x1EEE9AC00](v51, v54);
    *(&v88 - 4) = sub_1D5B4AA6C;
    *(&v88 - 3) = 0;
    v86 = sub_1D6708B2C;
    v87 = v55;
    v106 = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = v102;
    *(v56 + 32) = v106;
    *(v56 + 40) = v52;
    *(v56 + 48) = v53;
    v57 = v17;
    swift_retain_n();
    v58 = sub_1D72647CC();
    v106 = 0;
    v59 = swift_allocObject();
    *(v59 + 16) = v58;
    *(v59 + 24) = v102;
    *(v59 + 40) = v106;
    v60 = __swift_project_boxed_opaque_existential_1(v88, *(v88 + 3));
    MEMORY[0x1EEE9AC00](v60, v61);
    MEMORY[0x1EEE9AC00](v62, v63);
    *(&v88 - 4) = sub_1D615B4A4;
    *(&v88 - 3) = (&v88 - 6);
    v64 = v97;
    v86 = sub_1D6708B2C;
    v87 = v56;
    sub_1D5D2BC70(v97, sub_1D615B49C, v65, sub_1D615B4A4, (&v88 - 6));

    sub_1D666D440();
    sub_1D72647EC();
    v66 = v57;
    sub_1D5D2CFE8(v64, type metadata accessor for FormatVersionRequirement);

    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v67 = v95;
    v68 = __swift_project_value_buffer(v95, qword_1EDFFCD50);
    v69 = v89;
    v94(v89, v68, v67);
    swift_storeEnumTagMultiPayload();
    v102 = xmmword_1D7297410;
    v104 = xmmword_1D7297410;
    v105 = 0;
    LOBYTE(v103) = 0;
    v70 = swift_allocObject();
    v72 = v70;
    *(v70 + 16) = v102;
    *(v70 + 32) = v103;
    v73 = v96;
    v74 = v101;
    *(v70 + 40) = v96;
    *(v70 + 48) = v74;
    if (v107 == 12)
    {
    }

    else
    {
      v100 = &v88;
      LOBYTE(v103) = v107;
      v75 = v73;
      MEMORY[0x1EEE9AC00](v70, v71);
      *(&v88 - 4) = sub_1D5B4AA6C;
      *(&v88 - 3) = 0;
      v86 = sub_1D6708B2C;
      v87 = v72;
      v106 = 0;
      v76 = v66;
      v77 = swift_allocObject();
      *(v77 + 16) = v102;
      *(v77 + 32) = v106;
      *(v77 + 40) = v75;
      *(v77 + 48) = v74;
      swift_retain_n();
      v78 = v76;
      v79 = sub_1D72647CC();
      v106 = 0;
      v80 = swift_allocObject();
      *(v80 + 16) = v79;
      *(v80 + 24) = v102;
      *(v80 + 40) = v106;
      v81 = __swift_project_boxed_opaque_existential_1(v88, *(v88 + 3));
      MEMORY[0x1EEE9AC00](v81, v82);
      MEMORY[0x1EEE9AC00](v83, v84);
      *(&v88 - 4) = sub_1D615B4A4;
      *(&v88 - 3) = (&v88 - 6);
      v69 = v89;
      v86 = sub_1D66ADEAC;
      v87 = v77;
      LOBYTE(v76) = sub_1D5D2F7A4(v89, sub_1D615B49C, v85, sub_1D615B4A4, (&v88 - 6));

      if (v76)
      {
        sub_1D668B4C0();
        v66 = v78;
        sub_1D72647EC();
      }

      else
      {
        v66 = v78;
      }
    }

    sub_1D5D2CFE8(v69, type metadata accessor for FormatVersionRequirement);

    v49 = v66;
  }

  return sub_1D5D2CFE8(v49, sub_1D66ADD30);
}

uint64_t sub_1D6554304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66AEECC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D655433C(uint64_t a1)
{
  v2 = sub_1D5CBF6FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6554378(uint64_t a1)
{
  v2 = sub_1D5CBF6FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPublisherLogoSizeBinding.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatPublisherLogoSizeBinding, &type metadata for FormatCodingKeys, v30, v27, &type metadata for FormatPublisherLogoSizeBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v28, v25, v29, &off_1F51F6C78);
  if (v26 <= 1)
  {
    if (v26)
    {
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v42 = sub_1D725BD1C();
      v43 = __swift_project_value_buffer(v42, qword_1EDFFCD98);
      (*(*(v42 - 8) + 16))(v17, v43, v42);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v33 = v46;
      sub_1D6419D90(1, v17);
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
      sub_1D6419D90(0, v21);
      v34 = v21;
    }
  }

  else if (v26 == 2)
  {
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v37 = sub_1D725BD1C();
    v38 = __swift_project_value_buffer(v37, qword_1EDFFCDE0);
    (*(*(v37 - 8) + 16))(v13, v38, v37);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D6419D90(2, v13);
    v34 = v13;
  }

  else if (v26 == 3)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v31 = sub_1D725BD1C();
    v32 = __swift_project_value_buffer(v31, qword_1EDFFCCA8);
    (*(*(v31 - 8) + 16))(v9, v32, v31);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D6419D90(3, v9);
    v34 = v9;
  }

  else
  {
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v39 = sub_1D725BD1C();
    v40 = __swift_project_value_buffer(v39, qword_1EDFFCE38);
    v41 = v45;
    (*(*(v39 - 8) + 16))(v45, v40, v39);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D6419D90(4, v41);
    v34 = v41;
  }

  sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v33, sub_1D5D30DC4);
}

uint64_t sub_1D65549B8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6554A88()
{
  sub_1D72621EC();
}

uint64_t sub_1D6554B44()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6554C10(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x656E696C64616568;
  v5 = 0xE300000000000000;
  v6 = 6775156;
  v7 = 0x656C7A7A7570;
  if (v2 != 3)
  {
    v7 = 0x657069636572;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 0x6575737369;
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

uint64_t FormatPublisherLogoSizing.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatPublisherLogoSizing, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatPublisherLogoSizing, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v25, v22, v26, &off_1F51F6C78);
  if (v23)
  {
    if (v23 == 1)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCD30);
      (*(*(v31 - 8) + 16))(v14, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641B558(1, v14);
      v30 = v14;
    }

    else if (v23 == 2)
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
      sub_1D641B558(2, v10);
      v30 = v10;
    }

    else
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCD30);
      (*(*(v35 - 8) + 16))(v6, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63901B4(3, v23, v6);
      v30 = v6;
    }
  }

  else
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCD50);
    (*(*(v33 - 8) + 16))(v18, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641B558(0, v18);
    v30 = v18;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t sub_1D65551D8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D655528C()
{
  sub_1D72621EC();
}

uint64_t sub_1D655532C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D65553DC(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1768843629;
  v4 = 0xE500000000000000;
  v5 = 0x656772616CLL;
  if (*v1 != 2)
  {
    v5 = 0x746963696C707865;
    v4 = 0xE800000000000000;
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

uint64_t sub_1D65554A8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65555A4()
{
  sub_1D72621EC();
}

uint64_t sub_1D655568C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6555784@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6663E2C();
  *a1 = result;
  return result;
}

void sub_1D65557B4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000074;
  v4 = 0x656568536F6C736FLL;
  v5 = 0xE800000000000000;
  v6 = 0x7465656853736D61;
  v7 = 0xEB00000000656761;
  v8 = 0x50676E69646E616CLL;
  if (v2 != 3)
  {
    v8 = 0xD000000000000014;
    v7 = 0x80000001D73BAAC0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000001D73BAA80;
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

uint64_t FormatPurchaseLandingPage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D66ADF28();
  v7 = v6;
  v32 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66ADFBC();
  sub_1D5B58B84(&qword_1EDF25078, sub_1D66ADFBC);
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

  v13 = v32;
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

      v20 = sub_1D66211F0();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v10, v7);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D667CF44();
  v33 = 0;
  v34 = 0;
  v35 = 0;
  sub_1D726431C();
  v17 = v36;
  v27 = v37;
  v28 = v38;
  v29 = v39;
  v30 = v40;
  v31 = v41;
  v36 = xmmword_1D728CF30;
  LOBYTE(v37) = 0;
  sub_1D66678A8();
  sub_1D726427C();
  (*(v13 + 8))(v10, v7);
  v23 = v33;
  *a2 = v17;
  v24 = v28;
  *(a2 + 16) = v27;
  *(a2 + 24) = v24;
  v25 = v30;
  *(a2 + 32) = v29;
  *(a2 + 40) = v25;
  *(a2 + 48) = v31;
  *(a2 + 50) = v42;
  *(a2 + 54) = v43;
  *(a2 + 56) = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPurchaseLandingPage.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v73 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v68 - v8;
  sub_1D66AE13C();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v77 = *(v1 + 16);
  v78 = v15;
  v16 = *(v1 + 32);
  v76 = *(v1 + 40);
  v17 = *(v1 + 48);
  v72 = *(v1 + 56);
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D66ADFBC();
  v21 = v20;
  v22 = sub_1D5B58B84(&qword_1EDF25078, sub_1D66ADFBC);
  sub_1D5D2EE70(&type metadata for FormatPurchaseLandingPage, v21, v23, v18, &type metadata for FormatPurchaseLandingPage, v21, &type metadata for FormatVersions.AzdenE, v19, v14, v22, &off_1F51F6C18);
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD98);
  v26 = *(v24 - 8);
  v27 = *(v26 + 16);
  v74 = v25;
  v70 = v24;
  v69 = v27;
  v68[1] = v26 + 16;
  v27(v9);
  v68[0] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v83 = v78;
  v84 = v77;
  v85 = v16;
  v86 = v76;
  v87 = v17;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v28 = &v14[*(v11 + 44)];
  v29 = *v28;
  v30 = *(v28 + 1);
  v88 = 0;
  v31 = swift_allocObject();
  *&v78 = v68;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v88;
  *(v31 + 40) = v29;
  *(v31 + 48) = v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  *&v77 = v9;
  v68[-4] = sub_1D5B4AA6C;
  v68[-3] = 0;
  v66 = sub_1D6708B30;
  v67 = v33;
  v88 = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v88;
  v71 = v29;
  *(v34 + 40) = v29;
  *(v34 + 48) = v30;
  sub_1D66AE1D0();
  v36 = v35;
  v37 = sub_1D5B58B84(&qword_1EC8870E0, sub_1D66AE1D0);
  swift_retain_n();
  v75 = v37;
  v76 = v36;
  v38 = sub_1D72647CC();
  v88 = 0;
  v39 = swift_allocObject();
  *(v39 + 24) = 0;
  *(v39 + 32) = 0;
  *(v39 + 16) = v38;
  *(v39 + 40) = v88;
  v40 = v14;
  v41 = &v14[*(v11 + 36)];
  v42 = __swift_project_boxed_opaque_existential_1(v41, *(v41 + 3));
  MEMORY[0x1EEE9AC00](v42, v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  v68[-4] = sub_1D615B4A4;
  v68[-3] = &v68[-6];
  v66 = sub_1D6708B30;
  v67 = v34;
  v46 = v77;
  v47 = v79;
  sub_1D5D2BC70(v77, sub_1D615B49C, v48, sub_1D615B4A4, &v68[-6]);
  if (v47)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

    v49 = v40;
  }

  else
  {
    v79 = v41;
    v50 = v74;

    sub_1D6686A30();
    v49 = v40;
    sub_1D72647EC();
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

    v51 = v73;
    v69(v73, v50, v70);
    swift_storeEnumTagMultiPayload();
    v78 = xmmword_1D728CF30;
    v83 = xmmword_1D728CF30;
    LOBYTE(v84) = 0;
    LOBYTE(v80) = 0;
    v52 = swift_allocObject();
    v54 = v52;
    *(v52 + 16) = v78;
    *(v52 + 32) = v80;
    v56 = v71;
    v55 = v72;
    *(v52 + 40) = v71;
    *(v52 + 48) = v30;
    if ((v55 & 0xF000000000000007) == 0x7000000000000007)
    {
    }

    else
    {
      v74 = v68;
      v80 = v55;
      MEMORY[0x1EEE9AC00](v52, v53);
      v68[-4] = sub_1D5B4AA6C;
      v68[-3] = 0;
      v66 = sub_1D6708B30;
      v67 = v54;
      v88 = 0;
      v57 = swift_allocObject();
      *(v57 + 16) = v78;
      *(v57 + 32) = v88;
      *(v57 + 40) = v56;
      *(v57 + 48) = v30;
      swift_retain_n();
      sub_1D614F63C(v55);
      *&v77 = v49;
      v58 = sub_1D72647CC();
      v88 = 0;
      v59 = swift_allocObject();
      *(v59 + 16) = v58;
      *(v59 + 24) = v78;
      *(v59 + 40) = v88;
      v60 = __swift_project_boxed_opaque_existential_1(v79, *(v79 + 3));
      MEMORY[0x1EEE9AC00](v60, v61);
      MEMORY[0x1EEE9AC00](v62, v63);
      v68[-4] = sub_1D615B4A4;
      v68[-3] = &v68[-6];
      v51 = v73;
      v66 = sub_1D66AE264;
      v67 = v57;
      LOBYTE(v58) = sub_1D5D2F7A4(v73, sub_1D615B49C, v64, sub_1D615B4A4, &v68[-6]);

      if (v58)
      {
        sub_1D66A821C();
        v49 = v77;
        sub_1D72647EC();

        sub_1D614F69C(v80);
      }

      else
      {

        sub_1D614F69C(v80);
        v49 = v77;
      }
    }

    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v49, sub_1D66AE13C);
}

unint64_t sub_1D6556580()
{
  v1 = 0x6372755074736F70;
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
    return 0xD000000000000011;
  }
}

uint64_t sub_1D65565E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66AF02C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6556618(uint64_t a1)
{
  v2 = sub_1D66AE094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6556654(uint64_t a1)
{
  v2 = sub_1D66AE094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPuzzleBinding.Bool.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatPuzzleBinding.Bool, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatPuzzleBinding.Bool, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v17, v14, v18, &off_1F51F6CF8);
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
    sub_1D64216E0(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCCA8);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D64216E0(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatPuzzleBinding.Command.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatPuzzleBinding.Command, &type metadata for FormatCodingKeys, v30, v27, &type metadata for FormatPuzzleBinding.Command, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v28, v25, v29, &off_1F51F6CF8);
  if (v26 <= 1)
  {
    if (v26)
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v42 = sub_1D725BD1C();
      v43 = __swift_project_value_buffer(v42, qword_1EDFFCCA8);
      (*(*(v42 - 8) + 16))(v17, v43, v42);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v33 = v46;
      sub_1D64211A0(1, v17);
      v34 = v17;
    }

    else
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCCA8);
      (*(*(v35 - 8) + 16))(v21, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v33 = v46;
      sub_1D64211A0(0, v21);
      v34 = v21;
    }
  }

  else if (v26 == 2)
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v37 = sub_1D725BD1C();
    v38 = __swift_project_value_buffer(v37, qword_1EDFFCE80);
    (*(*(v37 - 8) + 16))(v13, v38, v37);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D64211A0(2, v13);
    v34 = v13;
  }

  else if (v26 == 3)
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v31 = sub_1D725BD1C();
    v32 = __swift_project_value_buffer(v31, qword_1EDFFCE80);
    (*(*(v31 - 8) + 16))(v9, v32, v31);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D64211A0(3, v9);
    v34 = v9;
  }

  else
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v39 = sub_1D725BD1C();
    v40 = __swift_project_value_buffer(v39, qword_1EDFFCE80);
    v41 = v45;
    (*(*(v39 - 8) + 16))(v45, v40, v39);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D64211A0(4, v41);
    v34 = v41;
  }

  sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v33, sub_1D5D30DC4);
}

uint64_t sub_1D65570B8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65571C8()
{
  sub_1D72621EC();
}

uint64_t sub_1D65572C4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65573D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6663CB0();
  *a1 = result;
  return result;
}

void sub_1D6557400(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0073736572676FLL;
  v4 = 0x7250656C7A7A7570;
  v5 = 0xEF65746174536B6ELL;
  v6 = 0x6152656C7A7A7570;
  v7 = 0x80000001D73BA740;
  v8 = 0xD000000000000012;
  if (v2 != 3)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000001D73BA760;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7453656C7A7A7570;
    v3 = 0xEB00000000657461;
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

uint64_t FormatPuzzleBinding.DateTime.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatPuzzleBinding.DateTime, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatPuzzleBinding.DateTime, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v11, v9, v12, &off_1F51F6CF8);
  if (qword_1EDF31E80 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCCA8);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D642105C(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatPuzzleBinding.Image.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatPuzzleBinding.Image, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatPuzzleBinding.Image, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v21, v18, v22, &off_1F51F6CF8);
  if (v19)
  {
    if (v19 == 1)
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v24 = sub_1D725BD1C();
      v25 = __swift_project_value_buffer(v24, qword_1EDFFCCA8);
      (*(*(v24 - 8) + 16))(v10, v25, v24);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6421438(1, v10);
      v26 = v10;
    }

    else
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v29 = sub_1D725BD1C();
      v30 = __swift_project_value_buffer(v29, qword_1EDFFCCA8);
      (*(*(v29 - 8) + 16))(v6, v30, v29);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6421438(2, v6);
      v26 = v6;
    }
  }

  else
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCCA8);
    (*(*(v27 - 8) + 16))(v14, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6421438(0, v14);
    v26 = v14;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D6557BD4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xEE006C6C616D536CLL;
  if (v2 != 1)
  {
    v3 = 0xEE00656772614C6CLL;
  }

  if (*a1)
  {
    v4 = 0x69616E626D756874;
  }

  else
  {
    v4 = 0x656873696C627570;
  }

  if (v2)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xED00006F676F4C72;
  }

  v6 = 0xEE006C6C616D536CLL;
  if (*a2 != 1)
  {
    v6 = 0xEE00656772614C6CLL;
  }

  if (*a2)
  {
    v7 = 0x69616E626D756874;
  }

  else
  {
    v7 = 0x656873696C627570;
  }

  if (*a2)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xED00006F676F4C72;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();
  }

  return v9 & 1;
}

uint64_t sub_1D6557CD8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6557DA0()
{
  sub_1D72621EC();
}

uint64_t sub_1D6557E54()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6557F18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6663C64();
  *a1 = result;
  return result;
}

void sub_1D6557F48(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006F676F4C72;
  v4 = 0xEE006C6C616D536CLL;
  if (v2 != 1)
  {
    v4 = 0xEE00656772614C6CLL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = 0x69616E626D756874;
  }

  else
  {
    v6 = 0x656873696C627570;
  }

  if (!v5)
  {
    v3 = v4;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t FormatPuzzleBinding.Text.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v30 - v8;
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
    v12 = v35;
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
          *(v22 + 16) = &unk_1F5116A78;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D66AE430();
    v31 = 0uLL;
    sub_1D726431C();
    switch(v30)
    {
      case 1:
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0uLL;
        v29 = 2;
        v24 = 1;
        break;
      case 2:
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0uLL;
        v24 = 2;
        goto LABEL_21;
      case 3:
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0uLL;
        v29 = 2;
        v24 = 3;
        break;
      case 4:
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0uLL;
        v29 = 2;
        v24 = 4;
        break;
      case 5:
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0uLL;
        v29 = 2;
        v24 = 5;
        break;
      case 6:
        v30 = xmmword_1D7279980;
        sub_1D5CCD298();
        sub_1D726427C();
        (*(v11 + 8))(v15, v5);
        v26 = v32;
        if (v32 == 3)
        {
          v24 = 0;
          v25 = 0;
          v27 = 0;
          v29 = 0;
          v28 = 0uLL;
          v26 = 1;
        }

        else
        {
          v29 = 0;
          v27 = v34;
          v28 = v33;
          v25 = *(&v31 + 1);
          v24 = v31;
        }

        break;
      case 7:
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0uLL;
        v29 = 2;
        v24 = 6;
        break;
      case 8:
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0uLL;
        v29 = 2;
        v24 = 7;
        break;
      case 9:
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0uLL;
        v29 = 2;
        v24 = 8;
        break;
      case 10:
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0uLL;
        v29 = 2;
        v24 = 9;
        break;
      case 11:
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0uLL;
        v29 = 2;
        v24 = 10;
        break;
      case 12:
        v31 = xmmword_1D7279980;
        sub_1D6695430();
        sub_1D726427C();
        (*(v11 + 8))(v15, v5);
        v28 = 0uLL;
        if (v30 == 2)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = 0;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v24 = v30 & 1;
        }

        v29 = 1;
        break;
      case 13:
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0uLL;
        v29 = 2;
        v24 = 11;
        break;
      case 14:
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0uLL;
        v29 = 2;
        v24 = 12;
        break;
      case 15:
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0uLL;
        v29 = 2;
        v24 = 13;
        break;
      default:
        (*(v11 + 8))(v15, v5);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0uLL;
LABEL_21:
        v29 = 2;
        break;
    }

    *v12 = v24;
    *(v12 + 8) = v25;
    *(v12 + 16) = v26;
    *(v12 + 24) = v28;
    *(v12 + 40) = v27;
    *(v12 + 48) = v29;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPuzzleBinding.Text.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v118 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v117 = &v116 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v116 = &v116 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v130 = &v116 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v119 = &v116 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v120 = &v116 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v121 = &v116 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v122 = &v116 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v123 = &v116 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v116 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v124 = &v116 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v125 = &v116 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v126 = &v116 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v127 = &v116 - v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  v128 = &v116 - v48;
  MEMORY[0x1EEE9AC00](v49, v50);
  v129 = &v116 - v51;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v52 - 8, v53);
  v55 = &v116 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *v1;
  v57 = v1[1];
  v59 = v1[2];
  v58 = v1[3];
  v60 = v1[5];
  v132 = v1[4];
  v133 = v56;
  v131 = v60;
  v61 = *(v1 + 48);
  v62 = a1[3];
  v63 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v62);
  v64 = sub_1D5C30408();
  v140 = v55;
  sub_1D5D2EE70(&type metadata for FormatPuzzleBinding.Text, &type metadata for FormatCodingKeys, v65, v62, &type metadata for FormatPuzzleBinding.Text, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v63, v55, v64, &off_1F51F6CF8);
  if (!v61)
  {
    *&v135 = v133;
    *(&v135 + 1) = v57;
    v136 = v59;
    v137 = v58;
    v138 = v132;
    v139 = v131;
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v70 = sub_1D725BD1C();
    v71 = __swift_project_value_buffer(v70, qword_1EDFFCCA8);
    (*(*(v70 - 8) + 16))(v33, v71, v70);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v69 = v140;
    sub_1D6485434(6, &v135, v33);
    v72 = v33;
    goto LABEL_19;
  }

  if (v61 == 1)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v66 = sub_1D725BD1C();
    v67 = __swift_project_value_buffer(v66, qword_1EDFFCCA8);
    v68 = v130;
    (*(*(v66 - 8) + 16))(v130, v67, v66);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v69 = v140;
    sub_1D63A6084(12, v133 & 1, v68);
LABEL_18:
    v72 = v68;
LABEL_19:
    sub_1D5D2CFE8(v72, type metadata accessor for FormatVersionRequirement);
    v78 = v69;
    return sub_1D5D2CFE8(v78, sub_1D5D30DC4);
  }

  if (!(v59 | v57 | v133 | v58 | v132 | v131))
  {
    v69 = v140;
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v79 = sub_1D725BD1C();
    v80 = __swift_project_value_buffer(v79, qword_1EDFFCCA8);
    v68 = v129;
    (*(*(v79 - 8) + 16))(v129, v80, v79);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D642158C(0, v68);
    goto LABEL_18;
  }

  v73 = v59 | v57 | v58 | v132 | v131;
  v74 = v140;
  if (v133 == 1 && !v73)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v75 = sub_1D725BD1C();
    v76 = __swift_project_value_buffer(v75, qword_1EDFFCCA8);
    v77 = v128;
    (*(*(v75 - 8) + 16))(v128, v76, v75);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D642158C(1, v77);
    sub_1D5D2CFE8(v77, type metadata accessor for FormatVersionRequirement);
    v78 = v74;
    return sub_1D5D2CFE8(v78, sub_1D5D30DC4);
  }

  if (v133 == 2 && !v73)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v82 = sub_1D725BD1C();
    v83 = __swift_project_value_buffer(v82, qword_1EDFFCCA8);
    v84 = v127;
    (*(*(v82 - 8) + 16))(v127, v83, v82);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v85 = 2;
    goto LABEL_66;
  }

  if (v133 == 3 && !v73)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v86 = sub_1D725BD1C();
    v87 = __swift_project_value_buffer(v86, qword_1EDFFCCA8);
    v84 = v126;
    (*(*(v86 - 8) + 16))(v126, v87, v86);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v85 = 3;
    goto LABEL_66;
  }

  if (v133 == 4 && !v73)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v88 = sub_1D725BD1C();
    v89 = __swift_project_value_buffer(v88, qword_1EDFFCCA8);
    v84 = v125;
    (*(*(v88 - 8) + 16))(v125, v89, v88);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v85 = 4;
    goto LABEL_66;
  }

  if (v133 == 5 && !v73)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v90 = sub_1D725BD1C();
    v91 = __swift_project_value_buffer(v90, qword_1EDFFCCA8);
    v84 = v124;
    (*(*(v90 - 8) + 16))(v124, v91, v90);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v85 = 5;
    goto LABEL_66;
  }

  if (v133 == 6 && !v73)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v92 = sub_1D725BD1C();
    v93 = __swift_project_value_buffer(v92, qword_1EDFFCCA8);
    v84 = v123;
    (*(*(v92 - 8) + 16))(v123, v93, v92);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v85 = 7;
    goto LABEL_66;
  }

  if (v133 == 7 && !v73)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v94 = sub_1D725BD1C();
    v95 = __swift_project_value_buffer(v94, qword_1EDFFCCA8);
    v84 = v122;
    (*(*(v94 - 8) + 16))(v122, v95, v94);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v85 = 8;
    goto LABEL_66;
  }

  if (v133 == 8 && !v73)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v96 = sub_1D725BD1C();
    v97 = __swift_project_value_buffer(v96, qword_1EDFFCCA8);
    v84 = v121;
    (*(*(v96 - 8) + 16))(v121, v97, v96);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v85 = 9;
    goto LABEL_66;
  }

  if (v133 == 9 && !v73)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v98 = sub_1D725BD1C();
    v99 = __swift_project_value_buffer(v98, qword_1EDFFCCA8);
    v84 = v120;
    (*(*(v98 - 8) + 16))(v120, v99, v98);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v85 = 10;
    goto LABEL_66;
  }

  if (v133 == 10 && !v73)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v100 = sub_1D725BD1C();
    v101 = __swift_project_value_buffer(v100, qword_1EDFFCCA8);
    v84 = v119;
    (*(*(v100 - 8) + 16))(v119, v101, v100);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v85 = 11;
LABEL_66:
    v102 = v134;
    sub_1D642158C(v85, v84);
    if (v102)
    {
      goto LABEL_67;
    }

LABEL_68:
    v103 = v84;
    goto LABEL_69;
  }

  if (v133 != 11 || v73)
  {
    if (v133 != 12 || v73)
    {
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v112 = sub_1D725BD1C();
      v113 = __swift_project_value_buffer(v112, qword_1EDFFCC90);
      v114 = v118;
      (*(*(v112 - 8) + 16))(v118, v113, v112);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v115 = v134;
      sub_1D642158C(15, v114);
      if (!v115)
      {
        v74 = v140;
        v103 = v118;
        goto LABEL_69;
      }

      v111 = &v142;
    }

    else
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v107 = sub_1D725BD1C();
      v108 = __swift_project_value_buffer(v107, qword_1EDFFCCA8);
      v109 = v117;
      (*(*(v107 - 8) + 16))(v117, v108, v107);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v110 = v134;
      sub_1D642158C(14, v109);
      v111 = &v141;
      if (!v110)
      {
        v103 = v117;
        v74 = v140;
        goto LABEL_69;
      }
    }

    v84 = *(v111 - 32);
    v74 = v140;
    goto LABEL_67;
  }

  if (qword_1EDF31E80 != -1)
  {
    swift_once();
  }

  v104 = sub_1D725BD1C();
  v105 = __swift_project_value_buffer(v104, qword_1EDFFCCA8);
  v84 = v116;
  (*(*(v104 - 8) + 16))(v116, v105, v104);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v106 = v134;
  sub_1D642158C(13, v84);
  if (!v106)
  {
    goto LABEL_68;
  }

LABEL_67:
  v103 = v84;
LABEL_69:
  sub_1D5D2CFE8(v103, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v74, sub_1D5D30DC4);
}

uint64_t FormatPuzzleEmbedNode.encode(to:)(void *a1)
{
  v2 = v1;
  *&v421 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v397 - v6;
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v398 = v397 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v399 = v397 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v400 = v397 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v401 = v397 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v402 = v397 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v403 = v397 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v404 = v397 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v405 = v397 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v406 = v397 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v408 = v397 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v409 = v397 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v415 = (v397 - v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  v412 = v397 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  *&v420 = v397 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v53 = v397 - v52;
  sub_1D66B0210();
  v422 = v54;
  MEMORY[0x1EEE9AC00](v54, v55);
  v57 = v397 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a1[3];
  v59 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v58);
  sub_1D5E1A878();
  v61 = v60;
  v62 = sub_1D5B58B84(&qword_1EDF0C510, sub_1D5E1A878);
  v423 = v57;
  sub_1D5D2EE70(v421, v61, v63, v58, v421, v61, &type metadata for FormatVersions.DawnburstC, v59, v57, v62, &off_1F51F6B98);
  swift_beginAccess();
  v64 = v2[2];
  v65 = v2[3];
  v418 = v2;
  v66 = qword_1EDF31F58[0];

  if (v66 != -1)
  {
    swift_once();
  }

  v67 = sub_1D725BD1C();
  v68 = __swift_project_value_buffer(v67, qword_1EDFFCE98);
  v69 = *(v67 - 8);
  v70 = *(v69 + 16);
  v71 = v69 + 16;
  *&v421 = v68;
  v70(v53);
  v417 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v72 = sub_1D725895C();
  v73 = (*(*(v72 - 8) + 48))(v7, 1, v72);
  v413 = v67;
  v414 = v70;
  v416 = v71;
  if (v73 == 1)
  {
    v411 = v64;
    sub_1D5D35558(v7, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v75 = v422;
    v74 = v423;
    v76 = &v423[*(v422 + 11)];
    v78 = *v76;
    v77 = *(v76 + 1);
    LOBYTE(v439) = 0;
    v79 = swift_allocObject();
    *(v79 + 16) = 0;
    *(v79 + 24) = 0;
    *(v79 + 32) = v439;
    *(v79 + 40) = v78;
    *(v79 + 48) = v77;
    sub_1D5E1A83C(0);
    v81 = v80;
    sub_1D5B58B84(&qword_1EDF03288, sub_1D5E1A83C);

    v410 = v81;
    v82 = sub_1D72647CC();
    LOBYTE(v439) = 0;
    v83 = swift_allocObject();
    *(v83 + 24) = 0;
    *(v83 + 32) = 0;
    *(v83 + 16) = v82;
    *(v83 + 40) = v439;
    v84 = __swift_project_boxed_opaque_existential_1((v74 + *(v75 + 9)), *(v74 + *(v75 + 9) + 24));
    *&v419 = v397;
    MEMORY[0x1EEE9AC00](v84, v85);
    MEMORY[0x1EEE9AC00](v86, v87);
    v397[-4] = sub_1D5B4AA6C;
    v397[-3] = 0;
    v395 = sub_1D66B02A4;
    v396 = v79;
    v88 = v424;
    v90 = sub_1D5D2F7A4(v53, sub_1D615B49C, v89, sub_1D615B4A4, &v397[-6]);
    *&v424 = v88;
    if (v88)
    {
      sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);

LABEL_6:
      v91 = v74;
      return sub_1D5D2CFE8(v91, sub_1D66B0210);
    }

    v92 = v90;

    if (v92)
    {
      v439 = 0uLL;
      LOBYTE(v440) = 0;
      *&v435 = v411;
      *(&v435 + 1) = v65;
      v93 = v424;
      sub_1D72647EC();

      sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);
      v67 = v413;
      v70 = v414;
      *&v424 = v93;
      if (v93)
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);

      v67 = v413;
      v70 = v414;
    }
  }

  else
  {
    sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v7, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  v94 = v418;
  v95 = v418[5];
  v407 = v418[4];
  (v70)(v420, v421, v67);
  swift_storeEnumTagMultiPayload();
  v419 = xmmword_1D728CF30;
  v439 = xmmword_1D728CF30;
  LOBYTE(v440) = 0;
  v96 = &v423[*(v422 + 11)];
  v97 = *v96;
  v98 = *(v96 + 1);
  LOBYTE(v435) = 0;
  v99 = swift_allocObject();
  v101 = v99;
  *(v99 + 16) = v419;
  *(v99 + 32) = v435;
  *(v99 + 40) = v97;
  *(v99 + 48) = v98;
  v410 = v97;
  v411 = v98;
  if (!v95)
  {

    sub_1D5D2CFE8(v420, type metadata accessor for FormatVersionRequirement);

LABEL_19:
    v120 = v421;
    goto LABEL_20;
  }

  v397[2] = v397;
  *&v435 = v407;
  *(&v435 + 1) = v95;
  MEMORY[0x1EEE9AC00](v99, v100);
  v397[-4] = sub_1D5B4AA6C;
  v397[-3] = 0;
  v395 = sub_1D6708B34;
  v396 = v101;
  LOBYTE(v425) = 0;
  v102 = v95;
  v103 = swift_allocObject();
  *(v103 + 16) = v419;
  *(v103 + 32) = v425;
  *(v103 + 40) = v97;
  *(v103 + 48) = v98;
  sub_1D5E1A83C(0);
  v105 = v104;
  v106 = sub_1D5B58B84(&qword_1EDF03288, sub_1D5E1A83C);
  swift_retain_n();
  v407 = v102;

  v107 = v423;
  v397[1] = v105;
  v108 = sub_1D72647CC();
  LOBYTE(v425) = 0;
  v109 = swift_allocObject();
  *(v109 + 16) = v108;
  *(v109 + 24) = v419;
  *(v109 + 40) = v425;
  v110 = __swift_project_boxed_opaque_existential_1((v107 + *(v422 + 9)), *(v107 + *(v422 + 9) + 24));
  MEMORY[0x1EEE9AC00](v110, v111);
  MEMORY[0x1EEE9AC00](v112, v113);
  v397[-4] = sub_1D615B4A4;
  v397[-3] = &v397[-6];
  v395 = sub_1D6708B34;
  v396 = v103;
  v114 = v420;
  v115 = v424;
  v117 = sub_1D5D2F7A4(v420, sub_1D615B49C, v116, sub_1D615B4A4, &v397[-6]);
  *&v424 = v115;
  if (v115)
  {

    v118 = v423;
    sub_1D5D2CFE8(v114, type metadata accessor for FormatVersionRequirement);
    v91 = v118;
    return sub_1D5D2CFE8(v91, sub_1D66B0210);
  }

  v119 = v117;
  *&v419 = v106;

  if ((v119 & 1) == 0)
  {

    sub_1D5D2CFE8(v114, type metadata accessor for FormatVersionRequirement);
    v94 = v418;
    v67 = v413;
    v70 = v414;
    goto LABEL_19;
  }

  sub_1D72647EC();
  v94 = v418;
  v67 = v413;
  v120 = v421;
  *&v424 = 0;

  sub_1D5D2CFE8(v420, type metadata accessor for FormatVersionRequirement);
  v70 = v414;
LABEL_20:
  swift_beginAccess();
  v121 = v94[6];
  v122 = v412;
  (v70)(v412, v120, v67);
  swift_storeEnumTagMultiPayload();
  if (((v121 >> 59) & 0x1E | (v121 >> 2) & 1) == 0x16 && v121 == 0xB000000000000008)
  {
    sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);
    v123 = v411;
  }

  else
  {
    LOBYTE(v439) = 0;
    v124 = swift_allocObject();
    v420 = xmmword_1D7297410;
    *(v124 + 16) = xmmword_1D7297410;
    *(v124 + 32) = v439;
    *(v124 + 40) = v410;
    *(v124 + 48) = v411;

    sub_1D5C82CD8(v121);
    sub_1D5E1A83C(0);
    v126 = v125;
    sub_1D5B58B84(&qword_1EDF03288, sub_1D5E1A83C);
    v127 = v122;
    v128 = v423;
    *&v419 = v126;
    v129 = sub_1D72647CC();
    LOBYTE(v439) = 0;
    v130 = swift_allocObject();
    *(v130 + 16) = v129;
    *(v130 + 24) = v420;
    *(v130 + 40) = v439;
    v131 = __swift_project_boxed_opaque_existential_1((v128 + *(v422 + 9)), *(v128 + *(v422 + 9) + 24));
    MEMORY[0x1EEE9AC00](v131, v132);
    MEMORY[0x1EEE9AC00](v133, v134);
    v397[-4] = sub_1D5B4AA6C;
    v397[-3] = 0;
    v395 = sub_1D6708B34;
    v396 = v124;
    v135 = v424;
    v137 = sub_1D5D2F7A4(v127, sub_1D615B49C, v136, sub_1D615B4A4, &v397[-6]);
    *&v424 = v135;
    if (v135)
    {

      sub_1D5C92A8C(v121);
      v138 = v127;
LABEL_34:
      sub_1D5D2CFE8(v138, type metadata accessor for FormatVersionRequirement);
LABEL_35:
      v91 = v423;
      return sub_1D5D2CFE8(v91, sub_1D66B0210);
    }

    v139 = v137;
    v140 = v423;

    if (v139)
    {
      v439 = v420;
      LOBYTE(v440) = 0;
      *&v435 = v121;
      sub_1D5CA1E90();
      v141 = v140;
      v142 = v424;
      sub_1D72647EC();
      v94 = v418;
      *&v424 = v142;
      if (v142)
      {
        sub_1D5C92A8C(v435);
        v143 = v412;
LABEL_47:
        sub_1D5D2CFE8(v143, type metadata accessor for FormatVersionRequirement);
        v91 = v141;
        return sub_1D5D2CFE8(v91, sub_1D66B0210);
      }

      sub_1D5C92A8C(v435);
      sub_1D5D2CFE8(v412, type metadata accessor for FormatVersionRequirement);
      v67 = v413;
      v70 = v414;
    }

    else
    {
      sub_1D5C92A8C(v121);
      sub_1D5D2CFE8(v412, type metadata accessor for FormatVersionRequirement);
      v94 = v418;
      v67 = v413;
      v70 = v414;
    }

    v123 = v411;
  }

  v144 = v94[7];
  (v70)(v415, v421, v67);
  swift_storeEnumTagMultiPayload();
  v420 = xmmword_1D72BAA60;
  v439 = xmmword_1D72BAA60;
  LOBYTE(v440) = 0;
  LOBYTE(v435) = 0;
  v145 = swift_allocObject();
  v147 = v145;
  *(v145 + 16) = v420;
  *(v145 + 32) = v435;
  *(v145 + 40) = v410;
  *(v145 + 48) = v123;
  if (v144)
  {
    *&v419 = v397;
    *&v435 = v144;
    MEMORY[0x1EEE9AC00](v145, v146);
    v149 = v148;
    v397[-4] = sub_1D5B4AA6C;
    v397[-3] = 0;
    v395 = sub_1D6708B34;
    v396 = v147;
    LOBYTE(v425) = 0;
    v150 = swift_allocObject();
    *(v150 + 16) = v420;
    *(v150 + 32) = v425;
    *(v150 + 40) = v149;
    *(v150 + 48) = v123;
    sub_1D5E1A83C(0);
    v152 = v151;
    sub_1D5B58B84(&qword_1EDF03288, sub_1D5E1A83C);
    swift_retain_n();

    v153 = v423;
    v412 = v152;
    v154 = sub_1D72647CC();
    LOBYTE(v425) = 0;
    v155 = swift_allocObject();
    *(v155 + 16) = v154;
    *(v155 + 24) = v420;
    *(v155 + 40) = v425;
    v156 = __swift_project_boxed_opaque_existential_1((v153 + *(v422 + 9)), *(v153 + *(v422 + 9) + 24));
    MEMORY[0x1EEE9AC00](v156, v157);
    MEMORY[0x1EEE9AC00](v158, v159);
    v397[-4] = sub_1D615B4A4;
    v397[-3] = &v397[-6];
    v395 = sub_1D6708B34;
    v396 = v150;
    v160 = v424;
    v162 = sub_1D5D2F7A4(v415, sub_1D615B49C, v161, sub_1D615B4A4, &v397[-6]);
    *&v424 = v160;
    if (v160)
    {

      v163 = v415;

      v138 = v163;
      goto LABEL_34;
    }

    v164 = v162;

    if (v164)
    {
      sub_1D6659D24();
      sub_1D72647EC();
      v94 = v418;
      v67 = v413;
      *&v424 = 0;
    }

    else
    {

      v94 = v418;
      v67 = v413;
    }
  }

  else
  {
  }

  sub_1D5D2CFE8(v415, type metadata accessor for FormatVersionRequirement);
  swift_beginAccess();
  v165 = v94[8];
  v166 = v409;
  v167 = v421;
  (v414)(v409, v421, v67);
  swift_storeEnumTagMultiPayload();
  *&v420 = v165;
  if (!*(v165 + 16))
  {
    sub_1D5D2CFE8(v166, type metadata accessor for FormatVersionRequirement);
LABEL_44:
    v186 = v167;
    goto LABEL_49;
  }

  LOBYTE(v439) = 0;
  v168 = swift_allocObject();
  v169 = v423;
  v170 = v168;
  v419 = xmmword_1D72BAA70;
  *(v168 + 16) = xmmword_1D72BAA70;
  *(v168 + 32) = v439;
  v171 = v411;
  *(v168 + 40) = v410;
  *(v168 + 48) = v171;
  sub_1D5E1A83C(0);
  v173 = v172;
  v174 = sub_1D5B58B84(&qword_1EDF03288, sub_1D5E1A83C);

  v175 = v420;

  v415 = v173;
  v412 = v174;
  v176 = sub_1D72647CC();
  LOBYTE(v439) = 0;
  v177 = swift_allocObject();
  *(v177 + 16) = v176;
  *(v177 + 24) = v419;
  *(v177 + 40) = v439;
  v178 = __swift_project_boxed_opaque_existential_1((v169 + *(v422 + 9)), *(v169 + *(v422 + 9) + 24));
  MEMORY[0x1EEE9AC00](v178, v179);
  MEMORY[0x1EEE9AC00](v180, v181);
  v397[-4] = sub_1D5B4AA6C;
  v397[-3] = 0;
  v395 = sub_1D6708B34;
  v396 = v170;
  v182 = v424;
  v184 = sub_1D5D2F7A4(v166, sub_1D615B49C, v183, sub_1D615B4A4, &v397[-6]);
  if (v182)
  {
    sub_1D5D2CFE8(v166, type metadata accessor for FormatVersionRequirement);

    result = sub_1D5D2CFE8(v423, sub_1D66B0210);
    *&v424 = v182;
    return result;
  }

  v187 = v184;

  if (v187)
  {
    v439 = v419;
    LOBYTE(v440) = 0;
    *&v435 = v175;
    sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
    sub_1D6659C88();
    sub_1D72647EC();
    v94 = v418;
    v167 = v421;
    *&v424 = 0;

    sub_1D5D2CFE8(v409, type metadata accessor for FormatVersionRequirement);
    v67 = v413;
    goto LABEL_44;
  }

  sub_1D5D2CFE8(v409, type metadata accessor for FormatVersionRequirement);

  *&v424 = 0;
  v94 = v418;
  v67 = v413;
  v186 = v421;
LABEL_49:
  v188 = v94[9];
  v189 = v408;
  (v414)(v408, v186, v67);
  swift_storeEnumTagMultiPayload();
  *&v435 = v188;
  v420 = xmmword_1D72BAA80;
  v439 = xmmword_1D72BAA80;
  LOBYTE(v440) = 0;
  LOBYTE(v425) = 0;
  v190 = swift_allocObject();
  v415 = v397;
  *(v190 + 16) = v420;
  *(v190 + 32) = v425;
  v192 = v410;
  v191 = v411;
  *(v190 + 40) = v410;
  *(v190 + 48) = v191;
  MEMORY[0x1EEE9AC00](v190, v193);
  *&v419 = &v397[-6];
  v397[-4] = sub_1D5B4AA6C;
  v397[-3] = 0;
  v395 = sub_1D6708B34;
  v396 = v194;
  LOBYTE(v425) = 0;
  v195 = swift_allocObject();
  v196 = v192;
  v197 = v195;
  *(v195 + 16) = v420;
  *(v195 + 32) = v425;
  *(v195 + 40) = v196;
  *(v195 + 48) = v191;
  sub_1D5E1A83C(0);
  v199 = v198;
  v200 = sub_1D5B58B84(&qword_1EDF03288, sub_1D5E1A83C);
  swift_retain_n();
  v201 = v423;
  v409 = v199;
  v412 = v200;
  v202 = sub_1D72647CC();
  LOBYTE(v425) = 0;
  v203 = swift_allocObject();
  *(v203 + 16) = v202;
  *(v203 + 24) = v420;
  *(v203 + 40) = v425;
  v204 = (v201 + *(v422 + 9));
  v205 = __swift_project_boxed_opaque_existential_1(v204, v204[3]);
  MEMORY[0x1EEE9AC00](v205, v206);
  MEMORY[0x1EEE9AC00](v207, v208);
  v209 = v419;
  v397[-4] = sub_1D615B4A4;
  v397[-3] = v209;
  v395 = sub_1D6708B34;
  v396 = v197;
  v210 = v189;
  v211 = v424;
  sub_1D5D2BC70(v189, sub_1D615B49C, v212, sub_1D615B4A4, &v397[-6]);
  v213 = v211;
  if (v211)
  {
    sub_1D5D2CFE8(v210, type metadata accessor for FormatVersionRequirement);

    v214 = v423;
    *&v424 = v211;
LABEL_52:
    v91 = v214;
    return sub_1D5D2CFE8(v91, sub_1D66B0210);
  }

  v422 = v204;

  sub_1D66B0334();
  v214 = v423;
  sub_1D72647EC();
  sub_1D5D2CFE8(v408, type metadata accessor for FormatVersionRequirement);

  v215 = v418;
  v216 = v418[10];
  (v414)(v406, v421, v413);
  swift_storeEnumTagMultiPayload();
  v420 = xmmword_1D72BAA90;
  v439 = xmmword_1D72BAA90;
  LOBYTE(v440) = 0;
  LOBYTE(v435) = 0;
  v217 = swift_allocObject();
  v219 = v217;
  *(v217 + 16) = v420;
  *(v217 + 32) = v435;
  v220 = v410;
  v221 = v411;
  *(v217 + 40) = v410;
  *(v217 + 48) = v221;
  if (v216)
  {
    v415 = v397;
    *&v435 = v216;
    MEMORY[0x1EEE9AC00](v217, v218);
    *&v424 = 0;
    v397[-4] = sub_1D5B4AA6C;
    v397[-3] = 0;
    v395 = sub_1D6708B34;
    v396 = v219;
    LOBYTE(v425) = 0;
    v222 = swift_allocObject();
    *(v222 + 16) = v420;
    *(v222 + 32) = v425;
    *(v222 + 40) = v220;
    *(v222 + 48) = v221;
    swift_retain_n();
    *&v419 = v216;

    v223 = sub_1D72647CC();
    LOBYTE(v425) = 0;
    v224 = swift_allocObject();
    *(v224 + 16) = v223;
    *(v224 + 24) = v420;
    *(v224 + 40) = v425;
    v225 = __swift_project_boxed_opaque_existential_1(v422, v422[3]);
    MEMORY[0x1EEE9AC00](v225, v226);
    MEMORY[0x1EEE9AC00](v227, v228);
    v397[-4] = sub_1D615B4A4;
    v397[-3] = &v397[-6];
    v395 = sub_1D6708B34;
    v396 = v222;
    v229 = v406;
    v230 = v424;
    v232 = sub_1D5D2F7A4(v406, sub_1D615B49C, v231, sub_1D615B4A4, &v397[-6]);
    *&v424 = v230;
    if (v230)
    {

      v214 = v423;
LABEL_57:
      sub_1D5D2CFE8(v229, type metadata accessor for FormatVersionRequirement);
      goto LABEL_52;
    }

    v234 = v232;

    if (v234)
    {
      type metadata accessor for FormatJsonConfig();
      sub_1D5B58B84(&unk_1EDF11310, type metadata accessor for FormatJsonConfig);
      v214 = v423;
      v235 = v424;
      sub_1D72647EC();
      v215 = v418;
      v233 = v421;
      v213 = v235;
      if (v235)
      {

        *&v424 = v235;
        goto LABEL_57;
      }
    }

    else
    {
      v213 = v424;

      v214 = v423;
      v215 = v418;
      v233 = v421;
    }
  }

  else
  {

    v233 = v421;
    v229 = v406;
  }

  sub_1D5D2CFE8(v229, type metadata accessor for FormatVersionRequirement);
  swift_beginAccess();
  v236 = v215[11];
  v237 = v405;
  v238 = v414;
  (v414)(v405, v233, v413);
  swift_storeEnumTagMultiPayload();
  *&v419 = v236;
  if (!v236)
  {
    *&v424 = v213;
    sub_1D5D2CFE8(v237, type metadata accessor for FormatVersionRequirement);
    v249 = v410;
    goto LABEL_71;
  }

  LOBYTE(v439) = 0;
  v239 = v237;
  v240 = swift_allocObject();
  v424 = xmmword_1D72BAAA0;
  *(v240 + 16) = xmmword_1D72BAAA0;
  *(v240 + 32) = v439;
  *(v240 + 40) = v410;
  *(v240 + 48) = v411;

  v241 = sub_1D72647CC();
  LOBYTE(v439) = 0;
  v242 = swift_allocObject();
  *(v242 + 16) = v241;
  *(v242 + 24) = v424;
  *(v242 + 40) = v439;
  v243 = __swift_project_boxed_opaque_existential_1(v422, v422[3]);
  *&v420 = v397;
  MEMORY[0x1EEE9AC00](v243, v244);
  MEMORY[0x1EEE9AC00](v245, v246);
  v397[-4] = sub_1D5B4AA6C;
  v397[-3] = 0;
  v395 = sub_1D6708B34;
  v396 = v240;
  v248 = sub_1D5D2F7A4(v239, sub_1D615B49C, v247, sub_1D615B4A4, &v397[-6]);
  if (!v213)
  {
    v250 = v248;

    if (v250)
    {
      v439 = v424;
      LOBYTE(v440) = 0;
      *&v435 = v419;
      sub_1D72647EC();
      v215 = v418;
      v238 = v414;
      v249 = v410;
      v233 = v421;
      *&v424 = 0;
      sub_1D5D2CFE8(v405, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      *&v424 = 0;
      sub_1D5D2CFE8(v405, type metadata accessor for FormatVersionRequirement);
      v215 = v418;
      v238 = v414;
      v249 = v410;
      v233 = v421;
    }

LABEL_71:
    swift_beginAccess();
    v251 = *(v215 + 7);
    v439 = *(v215 + 6);
    v440 = v251;
    v252 = *(v215 + 9);
    v441 = *(v215 + 8);
    v442 = v252;
    v238(v404, v233, v413);
    swift_storeEnumTagMultiPayload();
    v420 = xmmword_1D72BAAB0;
    v433 = xmmword_1D72BAAB0;
    v434 = 0;
    LOBYTE(v435) = 0;
    v254 = swift_allocObject();
    *(v254 + 16) = v420;
    *(v254 + 32) = v435;
    *(v254 + 40) = v249;
    v255 = v411;
    *(v254 + 48) = v411;
    if (*(&v439 + 1))
    {
      *&v419 = v397;
      v435 = v439;
      v436 = v440;
      v437 = v441;
      v438 = v442;
      MEMORY[0x1EEE9AC00](v255, v253);
      v257 = v256;
      v397[-4] = sub_1D5B4AA6C;
      v397[-3] = 0;
      v395 = sub_1D6708B34;
      v396 = v254;
      LOBYTE(v425) = 0;
      v258 = swift_allocObject();
      v259 = v249;
      v260 = v258;
      *(v258 + 16) = v420;
      *(v258 + 32) = v425;
      *(v258 + 40) = v259;
      *(v258 + 48) = v257;

      v261 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(&v439, &v425, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle, MEMORY[0x1E69E6720], sub_1D5C34D84);

      sub_1D5D355B8(&v439, &v425, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle, v261, sub_1D5C34D84);
      v262 = sub_1D72647CC();
      LOBYTE(v425) = 0;
      v263 = swift_allocObject();
      *(v263 + 16) = v262;
      *(v263 + 24) = v420;
      *(v263 + 40) = v425;
      v264 = __swift_project_boxed_opaque_existential_1(v422, v422[3]);
      MEMORY[0x1EEE9AC00](v264, v265);
      MEMORY[0x1EEE9AC00](v266, v267);
      v397[-4] = sub_1D615B4A4;
      v397[-3] = &v397[-6];
      v395 = sub_1D6708B34;
      v396 = v260;
      v268 = v404;
      v269 = v424;
      v271 = sub_1D5D2F7A4(v404, sub_1D615B49C, v270, sub_1D615B4A4, &v397[-6]);
      v272 = v268;
      *&v424 = v269;
      if (v269)
      {

        sub_1D66615F8(&v439, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle, MEMORY[0x1E69E6720], sub_1D5C34D84);
        v425 = v435;
        v426 = v436;
        v427 = v437;
        v428 = v438;
        sub_1D66B0388(&v425);
LABEL_74:
        v141 = v423;
        v143 = v272;
        goto LABEL_47;
      }

      v275 = v271;

      v274 = v403;
      if (v275)
      {
        sub_1D66B03DC();
        v276 = v424;
        sub_1D72647EC();
        *&v424 = v276;
        if (v276)
        {

          sub_1D66615F8(&v439, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle, MEMORY[0x1E69E6720], sub_1D5C34D84);
          v425 = v435;
          v426 = v436;
          v427 = v437;
          v428 = v438;
          sub_1D66B0388(&v425);
          goto LABEL_74;
        }

        sub_1D66615F8(&v439, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle, MEMORY[0x1E69E6720], sub_1D5C34D84);
        v425 = v435;
        v426 = v436;
        v427 = v437;
        v428 = v438;
        sub_1D66B0388(&v425);
        v215 = v418;
        v249 = v410;
        v233 = v421;
        v273 = v423;
      }

      else
      {

        sub_1D66615F8(&v439, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle, MEMORY[0x1E69E6720], sub_1D5C34D84);
        v425 = v435;
        v426 = v436;
        v427 = v437;
        v428 = v438;
        sub_1D66B0388(&v425);
        v273 = v423;
        v215 = v418;
        v249 = v410;
        v233 = v421;
      }
    }

    else
    {

      v273 = v423;
      v274 = v403;
    }

    sub_1D5D2CFE8(v404, type metadata accessor for FormatVersionRequirement);
    swift_beginAccess();
    v277 = v215[20];
    (v414)(v274, v233, v413);
    swift_storeEnumTagMultiPayload();
    if (v277 == 0x8000000000000000)
    {
      sub_1D5D2CFE8(v274, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      LOBYTE(v435) = 0;
      v278 = swift_allocObject();
      v279 = v249;
      v280 = v278;
      v420 = xmmword_1D72BAAC0;
      *(v278 + 16) = xmmword_1D72BAAC0;
      *(v278 + 32) = v435;
      *(v278 + 40) = v279;
      *(v278 + 48) = v411;

      sub_1D5EB1500(v277);
      v281 = v273;
      v282 = sub_1D72647CC();
      LOBYTE(v435) = 0;
      v283 = swift_allocObject();
      *(v283 + 16) = v282;
      *(v283 + 24) = v420;
      *(v283 + 40) = v435;
      v284 = __swift_project_boxed_opaque_existential_1(v422, v422[3]);
      *&v419 = v397;
      MEMORY[0x1EEE9AC00](v284, v285);
      MEMORY[0x1EEE9AC00](v286, v287);
      v397[-4] = sub_1D5B4AA6C;
      v397[-3] = 0;
      v395 = sub_1D6708B34;
      v396 = v280;
      v288 = v424;
      v290 = sub_1D5D2F7A4(v274, sub_1D615B49C, v289, sub_1D615B4A4, &v397[-6]);
      *&v424 = v288;
      if (v288)
      {

        sub_1D5EB15C4(v277);
        sub_1D5D2CFE8(v274, type metadata accessor for FormatVersionRequirement);
        v91 = v281;
        return sub_1D5D2CFE8(v91, sub_1D66B0210);
      }

      v291 = v290;

      if (v291)
      {
        v435 = v420;
        LOBYTE(v436) = 0;
        *&v433 = v277;
        sub_1D5DF6A60();
        v292 = v424;
        sub_1D72647EC();
        *&v424 = v292;
        if (v292)
        {
          sub_1D5EB15C4(v433);
LABEL_94:
          v138 = v274;
          goto LABEL_34;
        }

        v293 = v433;
      }

      else
      {
        v293 = v277;
      }

      sub_1D5EB15C4(v293);
      sub_1D5D2CFE8(v274, type metadata accessor for FormatVersionRequirement);
      v215 = v418;
      v233 = v421;
    }

    swift_beginAccess();
    v294 = v215[21];
    v274 = v402;
    (v414)(v402, v233, v413);
    swift_storeEnumTagMultiPayload();
    if (*(v294 + 16))
    {
      LOBYTE(v435) = 0;
      v295 = swift_allocObject();
      v420 = xmmword_1D72BAAD0;
      *(v295 + 16) = xmmword_1D72BAAD0;
      *(v295 + 32) = v435;
      *(v295 + 40) = v410;
      *(v295 + 48) = v411;

      v296 = sub_1D72647CC();
      LOBYTE(v435) = 0;
      v297 = swift_allocObject();
      *(v297 + 16) = v296;
      *(v297 + 24) = v420;
      *(v297 + 40) = v435;
      v298 = __swift_project_boxed_opaque_existential_1(v422, v422[3]);
      MEMORY[0x1EEE9AC00](v298, v299);
      MEMORY[0x1EEE9AC00](v300, v301);
      v397[-4] = sub_1D5B4AA6C;
      v397[-3] = 0;
      v395 = sub_1D6708B34;
      v396 = v295;
      v302 = v424;
      v304 = sub_1D5D2F7A4(v274, sub_1D615B49C, v303, sub_1D615B4A4, &v397[-6]);
      *&v424 = v302;
      if (v302)
      {

        goto LABEL_94;
      }

      v305 = v304;

      if (v305)
      {
        v306 = v424;
        sub_1D5E07858(v294, v423, 0xA, 0, 0);
        *&v424 = v306;
        if (v306)
        {

          v274 = v402;
          goto LABEL_94;
        }
      }

      v215 = v418;
      v233 = v421;
    }

    sub_1D5D2CFE8(v402, type metadata accessor for FormatVersionRequirement);
    v307 = v215[22];
    v308 = *(v215 + 184);
    v309 = v401;
    (v414)(v401, v233, v413);
    swift_storeEnumTagMultiPayload();
    v420 = xmmword_1D72BAAE0;
    v435 = xmmword_1D72BAAE0;
    LOBYTE(v436) = 0;
    LOBYTE(v431) = 0;
    v310 = swift_allocObject();
    v312 = v310;
    *(v310 + 16) = v420;
    *(v310 + 32) = v431;
    v314 = v410;
    v313 = v411;
    *(v310 + 40) = v410;
    *(v310 + 48) = v313;
    if (v308 <= 0xFD)
    {
      *&v419 = v397;
      v431 = v307;
      v432 = v308;
      MEMORY[0x1EEE9AC00](v310, v311);
      v397[-4] = sub_1D5B4AA6C;
      v397[-3] = 0;
      v395 = sub_1D6708B34;
      v396 = v312;
      LOBYTE(v429) = 0;
      v315 = swift_allocObject();
      *(v315 + 16) = v420;
      *(v315 + 32) = v429;
      *(v315 + 40) = v314;
      *(v315 + 48) = v411;
      swift_retain_n();
      v316 = sub_1D72647CC();
      LOBYTE(v429) = 0;
      v317 = swift_allocObject();
      *(v317 + 16) = v316;
      *(v317 + 24) = v420;
      *(v317 + 40) = v429;
      v318 = __swift_project_boxed_opaque_existential_1(v422, v422[3]);
      MEMORY[0x1EEE9AC00](v318, v319);
      MEMORY[0x1EEE9AC00](v320, v321);
      v397[-4] = sub_1D615B4A4;
      v397[-3] = &v397[-6];
      v395 = sub_1D6708B34;
      v396 = v315;
      v322 = v424;
      v324 = sub_1D5D2F7A4(v309, sub_1D615B49C, v323, sub_1D615B4A4, &v397[-6]);
      *&v424 = v322;
      if (v322)
      {
        sub_1D5D2CFE8(v309, type metadata accessor for FormatVersionRequirement);

        goto LABEL_35;
      }

      v325 = v324;

      if (v325)
      {
        sub_1D5F8F434();
        v326 = v424;
        sub_1D72647EC();
        *&v424 = v326;
        if (v326)
        {
          v327 = v401;
          goto LABEL_131;
        }
      }

      v215 = v418;
    }

    else
    {
    }

    sub_1D5D2CFE8(v401, type metadata accessor for FormatVersionRequirement);

    swift_beginAccess();
    v328 = v215[24];
    v329 = v215[25];
    v330 = v400;
    (v414)(v400, v421, v413);
    swift_storeEnumTagMultiPayload();
    v420 = xmmword_1D72BAAF0;
    v435 = xmmword_1D72BAAF0;
    LOBYTE(v436) = 0;
    LOBYTE(v429) = 0;
    v331 = swift_allocObject();
    v333 = v331;
    *(v331 + 16) = v420;
    *(v331 + 32) = v429;
    v335 = v410;
    v334 = v411;
    *(v331 + 40) = v410;
    *(v331 + 48) = v334;
    if (v329)
    {
      *&v419 = v397;
      *&v429 = v328;
      *(&v429 + 1) = v329;
      MEMORY[0x1EEE9AC00](v331, v332);
      v397[-4] = sub_1D5B4AA6C;
      v397[-3] = 0;
      v395 = sub_1D6708B34;
      v396 = v333;
      v443 = 0;
      v336 = swift_allocObject();
      *(v336 + 16) = v420;
      *(v336 + 32) = v443;
      *(v336 + 40) = v335;
      *(v336 + 48) = v411;
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      v337 = sub_1D72647CC();
      v443 = 0;
      v338 = swift_allocObject();
      *(v338 + 16) = v337;
      *(v338 + 24) = v420;
      *(v338 + 40) = v443;
      v339 = __swift_project_boxed_opaque_existential_1(v422, v422[3]);
      MEMORY[0x1EEE9AC00](v339, v340);
      MEMORY[0x1EEE9AC00](v341, v342);
      v397[-4] = sub_1D615B4A4;
      v397[-3] = &v397[-6];
      v395 = sub_1D6708B34;
      v396 = v336;
      v343 = v424;
      v345 = sub_1D5D2F7A4(v400, sub_1D615B49C, v344, sub_1D615B4A4, &v397[-6]);
      *&v424 = v343;
      if (v343)
      {
        swift_bridgeObjectRelease_n();

LABEL_110:
        v138 = v400;
        goto LABEL_34;
      }

      v347 = v345;

      if (v347)
      {
        v348 = v424;
        sub_1D72647EC();
        *&v424 = v348;
        if (v348)
        {
          swift_bridgeObjectRelease_n();

          goto LABEL_110;
        }
      }

      swift_bridgeObjectRelease_n();
      v215 = v418;
      v346 = v399;
      v330 = v400;
    }

    else
    {

      v346 = v399;
    }

    sub_1D5D2CFE8(v330, type metadata accessor for FormatVersionRequirement);
    v349 = v215[26];
    v350 = v215[27];
    (v414)(v346, v421, v413);
    swift_storeEnumTagMultiPayload();
    v421 = xmmword_1D7282A80;
    v435 = xmmword_1D7282A80;
    LOBYTE(v436) = 0;
    LOBYTE(v429) = 0;
    v351 = swift_allocObject();
    v353 = v351;
    *(v351 + 16) = v421;
    *(v351 + 32) = v429;
    v355 = v410;
    v354 = v411;
    *(v351 + 40) = v410;
    *(v351 + 48) = v354;
    if (v350)
    {
      *&v420 = v397;
      *&v429 = v349;
      *(&v429 + 1) = v350;
      MEMORY[0x1EEE9AC00](v351, v352);
      v397[-4] = sub_1D5B4AA6C;
      v397[-3] = 0;
      v395 = sub_1D6708B34;
      v396 = v353;
      v443 = 0;
      v356 = swift_allocObject();
      *(v356 + 16) = v421;
      *(v356 + 32) = v443;
      *(v356 + 40) = v355;
      *(v356 + 48) = v411;
      swift_retain_n();

      v357 = sub_1D72647CC();
      v443 = 0;
      v358 = swift_allocObject();
      *(v358 + 16) = v357;
      *(v358 + 24) = v421;
      *(v358 + 40) = v443;
      v359 = __swift_project_boxed_opaque_existential_1(v422, v422[3]);
      MEMORY[0x1EEE9AC00](v359, v360);
      MEMORY[0x1EEE9AC00](v361, v362);
      v397[-4] = sub_1D615B4A4;
      v397[-3] = &v397[-6];
      v395 = sub_1D6708B34;
      v396 = v356;
      v363 = v424;
      v365 = sub_1D5D2F7A4(v346, sub_1D615B49C, v364, sub_1D615B4A4, &v397[-6]);
      *&v424 = v363;
      if (v363)
      {

LABEL_119:
        v138 = v399;
        goto LABEL_34;
      }

      v366 = v365;

      if (v366)
      {
        v367 = v424;
        sub_1D72647EC();
        *&v424 = v367;
        if (v367)
        {

          goto LABEL_119;
        }
      }

      sub_1D5D2CFE8(v399, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v346, type metadata accessor for FormatVersionRequirement);
    }

    v369 = v418[28];
    v368 = v418[29];
    v371 = v418[30];
    v370 = v418[31];
    v372 = v418[32];
    *&v420 = v418[33];
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v373 = v413;
    v374 = __swift_project_value_buffer(v413, qword_1EDFFCE38);
    (v414)(v398, v374, v373);
    swift_storeEnumTagMultiPayload();
    v421 = xmmword_1D72BAB00;
    v429 = xmmword_1D72BAB00;
    v430 = 0;
    LOBYTE(v435) = 0;
    v375 = swift_allocObject();
    v377 = v375;
    *(v375 + 16) = v421;
    *(v375 + 32) = v435;
    v379 = v410;
    v378 = v411;
    *(v375 + 40) = v410;
    *(v375 + 48) = v378;
    if (v369)
    {
      *&v419 = v397;
      *&v435 = v369;
      *(&v435 + 1) = v368;
      *&v436 = v371;
      *(&v436 + 1) = v370;
      *&v437 = v372;
      *(&v437 + 1) = v420;
      MEMORY[0x1EEE9AC00](v375, v376);
      v418 = &v397[-6];
      v397[-4] = sub_1D5B4AA6C;
      v397[-3] = 0;
      v395 = sub_1D6708B34;
      v396 = v377;
      v443 = 0;
      v380 = v369;
      v381 = swift_allocObject();
      *(v381 + 16) = v421;
      *(v381 + 32) = v443;
      *(v381 + 40) = v379;
      *(v381 + 48) = v378;
      swift_retain_n();
      sub_1D5EB1D80(v380, v368, v371, v370, v372);
      v382 = sub_1D72647CC();
      v443 = 0;
      v383 = swift_allocObject();
      *(v383 + 16) = v382;
      *(v383 + 24) = v421;
      *(v383 + 40) = v443;
      v384 = __swift_project_boxed_opaque_existential_1(v422, v422[3]);
      MEMORY[0x1EEE9AC00](v384, v385);
      MEMORY[0x1EEE9AC00](v386, v387);
      v388 = v418;
      v397[-4] = sub_1D615B4A4;
      v397[-3] = v388;
      v395 = sub_1D6708B34;
      v396 = v381;
      v389 = v424;
      v391 = sub_1D5D2F7A4(v398, sub_1D615B49C, v390, sub_1D615B4A4, &v397[-6]);
      *&v424 = v389;
      if (v389)
      {
      }

      else
      {
        v392 = v391;

        if (v392)
        {
          sub_1D6659A24();
          v393 = v424;
          sub_1D72647EC();
          *&v424 = v393;
        }
      }

      v394 = v437;

      sub_1D5CBF568(v394);

      v138 = v398;
      goto LABEL_34;
    }

    v327 = v398;
LABEL_131:
    sub_1D5D2CFE8(v327, type metadata accessor for FormatVersionRequirement);

    goto LABEL_35;
  }

  sub_1D5D2CFE8(v239, type metadata accessor for FormatVersionRequirement);

  result = sub_1D5D2CFE8(v214, sub_1D66B0210);
  *&v424 = v213;
  return result;
}

unint64_t sub_1D655D1F4(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 1702521203;
      break;
    case 3:
      result = 0x657A69736572;
      break;
    case 4:
      result = 0x656D7473756A6461;
      break;
    case 5:
      result = 0x746E65746E6F63;
      break;
    case 6:
      result = 0x6769666E6F63;
      break;
    case 7:
      result = 0x7865646E497ALL;
      break;
    case 8:
      result = 0x656C797473;
      break;
    case 9:
      result = 0x696C696269736976;
      break;
    case 10:
      result = 0x726F7463656C6573;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 1701667182;
      break;
    case 13:
      result = 0x6E6F697461636F6CLL;
      break;
    case 14:
      result = 2019912806;
      break;
    case 15:
      result = 1885433183;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D655D38C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66B259C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D655D3C4(uint64_t a1)
{
  v2 = sub_1D5E1A950();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D655D400(uint64_t a1)
{
  v2 = sub_1D5E1A950();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPuzzleEmbedNodeBinding.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatPuzzleEmbedNodeBinding, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatPuzzleEmbedNodeBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.DawnburstC, v11, v9, v12, &off_1F51F6B98);
  if (qword_1EDF31F58[0] != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCE98);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D641A6DC(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatPuzzleEmbedNodeContent.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v28 = a2;
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
          *(v20 + 16) = &unk_1F5116B18;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v13, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66B0484();
    v27 = 0uLL;
    sub_1D726431C();
    if (v26)
    {
      sub_1D5C30060(0, &qword_1EC8870F0, sub_1D66B04D8, &type metadata for FormatPuzzleEmbedNodeContent, type metadata accessor for FormatSelectorValue);
      v26 = xmmword_1D7279980;
      sub_1D66B052C();
      sub_1D726431C();
      v22 = v28;
      (*(v7 + 8))(v13, v6);
      v23 = v27;
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      v25 = v24 | 0x8000000000000000;
    }

    else
    {
      v27 = xmmword_1D7279980;
      sub_1D66B0600();
      sub_1D726431C();
      v22 = v28;
      (*(v7 + 8))(v13, v6);
      v25 = swift_allocEmptyBox();
    }

    *v22 = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPuzzleEmbedNodeContent.encode(to:)(void *a1)
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
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatPuzzleEmbedNodeContent, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatPuzzleEmbedNodeContent, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.DawnburstC, v17, v14, v18, &off_1F51F6B98);
  if (v15 < 0)
  {
    v23 = *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v24 = *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v25 = qword_1EDF31F58[0];

    if (v25 != -1)
    {
      swift_once();
    }

    v26 = sub_1D725BD1C();
    v27 = __swift_project_value_buffer(v26, qword_1EDFFCE98);
    (*(*(v26 - 8) + 16))(v6, v27, v26);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638BE88(1, v23, v24, v6);

    v22 = v6;
  }

  else
  {
    if (qword_1EDF31F58[0] != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCE98);
    (*(*(v20 - 8) + 16))(v10, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638BCFC(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D655DE84(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726F7463656C6573;
  }

  else
  {
    v3 = 0x676E69646E6962;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x726F7463656C6573;
  }

  else
  {
    v5 = 0x676E69646E6962;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
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

uint64_t sub_1D655DF2C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D655DFB0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t FormatPuzzleEmbedNodeStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v52 = a2;
  sub_1D5C2E60C(0, &qword_1EDF17EB8, sub_1D66B0654, sub_1D66B06A8);
  v6 = v5;
  v51 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v42 - v8;
  sub_1D66B06FC();
  v53 = v10;
  v58 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66B0790();
  sub_1D5B58B84(&qword_1EDF0C480, sub_1D66B0790);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    v30 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v50 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_1D7264AFC();
  v15 = Dictionary<>.errorOnUnknownKeys.getter(v14);

  v16 = v53;
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
          goto LABEL_7;
        }
      }

      v24 = *(v19 - 2);
      v23 = *(v19 - 1);

      v25 = sub_1D6621664();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v26 = v24;
      *(v26 + 8) = v23;
      *(v26 + 16) = v25;
      *(v26 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v58 + 8))(v13, v16);
      goto LABEL_10;
    }

LABEL_7:
  }

  v20 = sub_1D5C31D18(v13, 0, 0, 0, sub_1D66B06FC);
  v49 = v21;
  v56 = xmmword_1D728CF30;
  v57 = 0;
  v22 = sub_1D72642BC();
  v28 = v27;
  v29 = v22;
  v54 = xmmword_1D7297410;
  v55 = 0;
  sub_1D5C8C780();
  sub_1D726427C();
  v46 = v29;
  v47 = v56;
  v48 = v57;
  v56 = xmmword_1D72BAA60;
  v57 = 0;
  v32 = sub_1D726423C();
  v43 = v20;
  v45 = a1;
  v44 = v32;
  v42 = xmmword_1D72BAA70;
  v56 = xmmword_1D72BAA70;
  v57 = 0;
  v33 = sub_1D726434C();
  v34 = v58;
  if (v33)
  {
    v54 = v42;
    v55 = 0;
    sub_1D66B0910();
    v35 = v50;
    sub_1D726431C();
    v36 = v52;
    v37 = sub_1D725A74C();
    (*(v51 + 8))(v35, v6);
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
    v36 = v52;
  }

  v38 = v48;
  v39 = *(&v47 + 1);
  (*(v34 + 8))(v13, v16);
  v40 = v49;
  *v36 = v43;
  *(v36 + 8) = v40;
  v41 = v47;
  *(v36 + 16) = v46;
  *(v36 + 24) = v28;
  *(v36 + 32) = v41;
  *(v36 + 40) = v39;
  *(v36 + 48) = v38;
  *(v36 + 49) = v44;
  *(v36 + 50) = v54;
  *(v36 + 54) = WORD2(v54);
  *(v36 + 56) = v37;
  v30 = v45;
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t FormatPuzzleEmbedNodeStyle.encode(to:)(void *a1)
{
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v146 - v5;
  v7 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v149 = &v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v153 = &v146 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v154 = &v146 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  *&v162 = &v146 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v146 - v21;
  sub_1D66B09A0();
  v165 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v146 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *v1;
  v28 = *(v1 + 8);
  v29 = *(v1 + 24);
  *&v163 = *(v1 + 16);
  v161 = v29;
  v30 = *(v1 + 40);
  v151 = *(v1 + 32);
  v150 = v30;
  v173 = *(v1 + 48);
  v152 = *(v1 + 49);
  v148 = *(v1 + 56);
  v31 = a1[3];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_1D66B0790();
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF0C480, sub_1D66B0790);
  v166 = v26;
  sub_1D5D2EE70(&type metadata for FormatPuzzleEmbedNodeStyle, v34, v36, v31, &type metadata for FormatPuzzleEmbedNodeStyle, v34, &type metadata for FormatVersions.DawnburstC, v32, v26, v35, &off_1F51F6B98);
  v37 = qword_1EDF31F58[0];

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = sub_1D725BD1C();
  v39 = __swift_project_value_buffer(v38, qword_1EDFFCE98);
  v40 = *(v38 - 8);
  v41 = *(v40 + 16);
  v42 = v40 + 16;
  v41(v22, v39, v38);
  v43 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v156 = v27;
  sub_1D725892C();
  v44 = sub_1D725895C();
  v45 = (*(*(v44 - 8) + 48))(v6, 1, v44);
  v155 = v38;
  v159 = v43;
  v160 = v39;
  v157 = v42;
  v158 = v41;
  if (v45 != 1)
  {
    sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v6, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
LABEL_7:
    v64 = v165;
    goto LABEL_8;
  }

  sub_1D5D35558(v6, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v46 = v165;
  v47 = v166;
  v48 = &v166[*(v165 + 44)];
  v49 = *v48;
  v50 = *(v48 + 1);
  LOBYTE(v170) = 0;
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  *(v51 + 24) = 0;
  *(v51 + 32) = v170;
  *(v51 + 40) = v49;
  *(v51 + 48) = v50;
  sub_1D66B0A34();
  v53 = v52;
  sub_1D5B58B84(&qword_1EDF02F48, sub_1D66B0A34);

  v147 = v53;
  v54 = sub_1D72647CC();
  LOBYTE(v170) = 0;
  v55 = swift_allocObject();
  *(v55 + 24) = 0;
  *(v55 + 32) = 0;
  *(v55 + 16) = v54;
  *(v55 + 40) = v170;
  v56 = __swift_project_boxed_opaque_existential_1((v47 + *(v46 + 36)), *(v47 + *(v46 + 36) + 24));
  MEMORY[0x1EEE9AC00](v56, v57);
  MEMORY[0x1EEE9AC00](v58, v59);
  *(&v146 - 4) = sub_1D5B4AA6C;
  *(&v146 - 3) = 0;
  v144 = sub_1D66B0AC8;
  v145 = v51;
  v60 = v164;
  v62 = sub_1D5D2F7A4(v22, sub_1D615B49C, v61, sub_1D615B4A4, (&v146 - 6));
  if (v60)
  {
    sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);

    v63 = v47;
    return sub_1D5D2CFE8(v63, sub_1D66B09A0);
  }

  v88 = v62;

  if ((v88 & 1) == 0)
  {
    *&v164 = 0;
    sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);

    v38 = v155;
    v39 = v160;
    v41 = v158;
    goto LABEL_7;
  }

  v170 = 0uLL;
  v171 = 0;
  v167 = v156;
  v168 = v28;
  sub_1D72647EC();

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  v39 = v160;
  v41 = v158;
  v64 = v165;
  *&v164 = 0;
  v38 = v155;
LABEL_8:
  v41(v162, v39, v38);
  swift_storeEnumTagMultiPayload();
  v167 = v163;
  v168 = v161;
  v163 = xmmword_1D728CF30;
  v170 = xmmword_1D728CF30;
  v171 = 0;
  v65 = v166;
  v66 = &v166[*(v64 + 44)];
  v68 = *v66;
  v67 = *(v66 + 1);
  v172 = 0;
  v69 = swift_allocObject();
  v161 = &v146;
  *(v69 + 16) = v163;
  *(v69 + 32) = v172;
  *(v69 + 40) = v68;
  *(v69 + 48) = v67;
  MEMORY[0x1EEE9AC00](v69, v70);
  v156 = &v146 - 6;
  *(&v146 - 4) = sub_1D5B4AA6C;
  *(&v146 - 3) = 0;
  v144 = sub_1D6708B38;
  v145 = v71;
  v172 = 0;
  v72 = swift_allocObject();
  *(v72 + 16) = v163;
  *(v72 + 32) = v172;
  v146 = v68;
  *(v72 + 40) = v68;
  *(v72 + 48) = v67;
  sub_1D66B0A34();
  v74 = v73;
  v75 = sub_1D5B58B84(&qword_1EDF02F48, sub_1D66B0A34);
  swift_retain_n();
  v147 = v74;
  v76 = sub_1D72647CC();
  v172 = 0;
  v77 = swift_allocObject();
  *(v77 + 16) = v76;
  *(v77 + 24) = v163;
  *(v77 + 40) = v172;
  v78 = &v65[*(v165 + 36)];
  v79 = __swift_project_boxed_opaque_existential_1(v78, *(v78 + 3));
  MEMORY[0x1EEE9AC00](v79, v80);
  MEMORY[0x1EEE9AC00](v81, v82);
  v83 = v156;
  *(&v146 - 4) = sub_1D615B4A4;
  *(&v146 - 3) = v83;
  v84 = v162;
  v144 = sub_1D6708B38;
  v145 = v72;
  v85 = v164;
  sub_1D5D2BC70(v162, sub_1D615B49C, v86, sub_1D615B4A4, (&v146 - 6));
  if (v85)
  {
    sub_1D5D2CFE8(v84, type metadata accessor for FormatVersionRequirement);

LABEL_11:
    v63 = v166;
    return sub_1D5D2CFE8(v63, sub_1D66B09A0);
  }

  *&v163 = v78;
  v165 = v67;
  v87 = v160;

  sub_1D72647EC();
  v161 = v75;
  *&v164 = 0;
  sub_1D5D2CFE8(v162, type metadata accessor for FormatVersionRequirement);

  v89 = v154;
  v90 = v87;
  v91 = v155;
  v92 = v158;
  v158(v154, v87, v155);
  swift_storeEnumTagMultiPayload();
  v162 = xmmword_1D7297410;
  v170 = xmmword_1D7297410;
  v171 = 0;
  LOBYTE(v167) = 0;
  v93 = swift_allocObject();
  v95 = v93;
  *(v93 + 16) = v162;
  *(v93 + 32) = v167;
  v96 = v146;
  v97 = v165;
  *(v93 + 40) = v146;
  *(v93 + 48) = v97;
  v98 = v173;
  if (v173 > 0xFD)
  {

    sub_1D5D2CFE8(v89, type metadata accessor for FormatVersionRequirement);

    v99 = v153;
LABEL_17:
    v92(v99, v90, v91);
    goto LABEL_18;
  }

  v156 = &v146;
  v116 = v151;
  v117 = v150;
  v167 = v151;
  v168 = v150;
  v169 = v173;
  MEMORY[0x1EEE9AC00](v93, v94);
  *(&v146 - 4) = sub_1D5B4AA6C;
  *(&v146 - 3) = 0;
  v144 = sub_1D6708B38;
  v145 = v95;
  v172 = 0;
  v118 = swift_allocObject();
  *(v118 + 16) = v162;
  *(v118 + 32) = v172;
  *(v118 + 40) = v96;
  *(v118 + 48) = v97;
  swift_retain_n();
  sub_1D5ED34B0(v116, v117, v98);
  v119 = sub_1D72647CC();
  v172 = 0;
  v120 = swift_allocObject();
  *(v120 + 16) = v119;
  *(v120 + 24) = v162;
  *(v120 + 40) = v172;
  v121 = __swift_project_boxed_opaque_existential_1(v163, *(v163 + 24));
  MEMORY[0x1EEE9AC00](v121, v122);
  MEMORY[0x1EEE9AC00](v123, v124);
  *(&v146 - 4) = sub_1D615B4A4;
  *(&v146 - 3) = (&v146 - 6);
  v144 = sub_1D6708B38;
  v145 = v118;
  v125 = v164;
  v127 = sub_1D5D2F7A4(v89, sub_1D615B49C, v126, sub_1D615B4A4, (&v146 - 6));
  *&v164 = v125;
  v99 = v153;
  if (v125)
  {

    goto LABEL_25;
  }

  v138 = v127;

  if (v138)
  {
    sub_1D6661258();
    v139 = v164;
    sub_1D72647EC();
    v92 = v158;
    v96 = v146;
    v90 = v160;
    if (!v139)
    {
      *&v164 = 0;

      sub_1D5ED34A0(v167, v168, v169);
      sub_1D5D2CFE8(v154, type metadata accessor for FormatVersionRequirement);
      v91 = v155;
      v97 = v165;
      goto LABEL_17;
    }

LABEL_25:
    sub_1D5ED34A0(v167, v168, v169);
    sub_1D5D2CFE8(v154, type metadata accessor for FormatVersionRequirement);
    goto LABEL_11;
  }

  sub_1D5ED34A0(v167, v168, v169);
  sub_1D5D2CFE8(v154, type metadata accessor for FormatVersionRequirement);
  v91 = v155;
  v92 = v158;
  v97 = v165;
  v96 = v146;
  v90 = v160;
  v158(v99, v160, v155);
LABEL_18:
  swift_storeEnumTagMultiPayload();
  v162 = xmmword_1D72BAA60;
  v170 = xmmword_1D72BAA60;
  v171 = 0;
  LOBYTE(v167) = 0;
  v100 = swift_allocObject();
  v102 = v100;
  *(v100 + 16) = v162;
  *(v100 + 32) = v167;
  *(v100 + 40) = v96;
  *(v100 + 48) = v97;
  if (v152 == 2)
  {

    v103 = v164;
    v104 = v149;
    v105 = v148;
  }

  else
  {
    LOBYTE(v167) = v152 & 1;
    MEMORY[0x1EEE9AC00](v100, v101);
    *(&v146 - 4) = sub_1D5B4AA6C;
    *(&v146 - 3) = 0;
    v144 = sub_1D6708B38;
    v145 = v102;
    v172 = 0;
    v128 = swift_allocObject();
    *(v128 + 16) = v162;
    *(v128 + 32) = v172;
    *(v128 + 40) = v96;
    *(v128 + 48) = v97;
    swift_retain_n();
    v129 = sub_1D72647CC();
    v172 = 0;
    v130 = swift_allocObject();
    *(v130 + 16) = v129;
    *(v130 + 24) = v162;
    *(v130 + 40) = v172;
    v131 = __swift_project_boxed_opaque_existential_1(v163, *(v163 + 24));
    MEMORY[0x1EEE9AC00](v131, v132);
    MEMORY[0x1EEE9AC00](v133, v134);
    *(&v146 - 4) = sub_1D615B4A4;
    *(&v146 - 3) = (&v146 - 6);
    v144 = sub_1D6708B38;
    v145 = v128;
    v135 = v164;
    v137 = sub_1D5D2F7A4(v99, sub_1D615B49C, v136, sub_1D615B4A4, (&v146 - 6));
    if (v135)
    {
      sub_1D5D2CFE8(v99, type metadata accessor for FormatVersionRequirement);

      goto LABEL_11;
    }

    v140 = v137;

    if (v140)
    {
      sub_1D72647EC();
      v103 = 0;
      v104 = v149;
      v105 = v148;
      v90 = v160;
      v91 = v155;
      v92 = v158;
    }

    else
    {
      v103 = 0;
      v104 = v149;
      v105 = v148;
      v91 = v155;
      v92 = v158;
      v90 = v160;
    }
  }

  sub_1D5D2CFE8(v99, type metadata accessor for FormatVersionRequirement);

  v92(v104, v90, v91);
  swift_storeEnumTagMultiPayload();
  if (!*(v105 + 16))
  {
    sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);
    goto LABEL_11;
  }

  LOBYTE(v170) = 0;
  v106 = swift_allocObject();
  v164 = xmmword_1D72BAA70;
  *(v106 + 16) = xmmword_1D72BAA70;
  *(v106 + 32) = v170;
  *(v106 + 40) = v146;
  *(v106 + 48) = v165;

  v107 = v166;
  v108 = sub_1D72647CC();
  LOBYTE(v170) = 0;
  v109 = swift_allocObject();
  *(v109 + 16) = v108;
  *(v109 + 24) = v164;
  *(v109 + 40) = v170;
  v110 = __swift_project_boxed_opaque_existential_1(v163, *(v163 + 24));
  MEMORY[0x1EEE9AC00](v110, v111);
  MEMORY[0x1EEE9AC00](v112, v113);
  *(&v146 - 4) = sub_1D5B4AA6C;
  *(&v146 - 3) = 0;
  v144 = sub_1D6708B38;
  v145 = v106;
  v115 = sub_1D5D2F7A4(v104, sub_1D615B49C, v114, sub_1D615B4A4, (&v146 - 6));
  if (v103)
  {
    sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);

    v63 = v107;
  }

  else
  {
    v141 = v115;

    if (v141)
    {
      v170 = v164;
      v171 = 0;
      v167 = v105;
      sub_1D5C34D84(0, &qword_1EC887108, &type metadata for FormatPuzzleEmbedNodeStyle.Selector, MEMORY[0x1E69E62F8]);
      sub_1D66B0B44();
      v142 = v166;
      sub_1D72647EC();

      sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);
      v63 = v142;
    }

    else
    {
      sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);

      v63 = v166;
    }
  }

  return sub_1D5D2CFE8(v63, sub_1D66B09A0);
}

unint64_t sub_1D655FCA8()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000018;
  v4 = 0x726F7463656C6573;
  if (v1 != 4)
  {
    v4 = 1885433183;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7373616C63;
  if (v1 != 1)
  {
    v5 = 0x615272656E726F63;
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

uint64_t sub_1D655FD6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66B2A9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D655FDA4(uint64_t a1)
{
  v2 = sub_1D66B0868();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D655FDE0(uint64_t a1)
{
  v2 = sub_1D66B0868();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPuzzleEmbedNodeStyle.Selector.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D66B0BE0();
  v7 = v6;
  v38 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66B0C74();
  sub_1D5B58B84(&qword_1EC887138, sub_1D66B0C74);
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

  v13 = v38;
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

      v18 = v7;
      v19 = v13;
      v21 = *(v16 - 2);
      v20 = *(v16 - 1);

      v22 = sub_1D6621840();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v19 + 8))(v10, v18);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C36978();
  v36 = 0uLL;
  v37 = 0;
  sub_1D726431C();
  v17 = v34;
  v34 = xmmword_1D728CF30;
  v35 = 0;
  sub_1D5C8C780();
  sub_1D726427C();
  v31 = v17;
  v24 = v7;
  v25 = v13;
  v32 = *(&v36 + 1);
  v26 = v36;
  v33 = v37;
  v36 = xmmword_1D7297410;
  v37 = 0;
  v28 = sub_1D726423C();
  (*(v25 + 8))(v10, v24);
  v29 = v32;
  *a2 = v31;
  *(a2 + 8) = *(&v17 + 1);
  *(a2 + 16) = v26;
  *(a2 + 24) = v29;
  *(a2 + 32) = v33;
  *(a2 + 33) = v28;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPuzzleEmbedNodeStyle.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v96 = v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v103 = v91 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v91 - v11;
  sub_1D66B0DF4();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v19 = *(v1 + 8);
  v20 = *(v1 + 24);
  v94 = *(v1 + 16);
  v93 = v20;
  v115 = *(v1 + 32);
  v95 = *(v1 + 33);
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D66B0C74();
  v24 = v23;
  v25 = sub_1D5B58B84(&qword_1EC887138, sub_1D66B0C74);
  sub_1D5D2EE70(&type metadata for FormatPuzzleEmbedNodeStyle.Selector, v24, v26, v21, &type metadata for FormatPuzzleEmbedNodeStyle.Selector, v24, &type metadata for FormatVersions.DawnburstC, v22, v17, v25, &off_1F51F6B98);
  if (qword_1EDF31F58[0] != -1)
  {
    swift_once();
  }

  v27 = sub_1D725BD1C();
  v28 = __swift_project_value_buffer(v27, qword_1EDFFCE98);
  v29 = *(v27 - 8);
  v30 = *(v29 + 16);
  v101 = v28;
  v97 = v27;
  v99 = v29 + 16;
  v100 = v30;
  (v30)(v12);
  v98 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v109 = v18;
  v110 = v19;
  v112 = 0uLL;
  v113 = 0;
  v31 = &v17[*(v14 + 44)];
  v32 = *v31;
  v33 = *(v31 + 1);
  v114 = 0;
  v34 = swift_allocObject();
  *&v106 = v91;
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v114;
  *(v34 + 40) = v32;
  *(v34 + 48) = v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v91[-4] = sub_1D5B4AA6C;
  v91[-3] = 0;
  v89 = sub_1D6708B3C;
  v90 = v36;
  v114 = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v114;
  v102 = v32;
  *(v37 + 40) = v32;
  *(v37 + 48) = v33;
  sub_1D66B0E88();
  v39 = v38;
  v40 = sub_1D5B58B84(&qword_1EC887150, sub_1D66B0E88);
  swift_retain_n();
  v104 = v40;
  v105 = v39;
  v41 = sub_1D72647CC();
  v114 = 0;
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  *(v42 + 32) = 0;
  *(v42 + 16) = v41;
  *(v42 + 40) = v114;
  v43 = *(v14 + 36);
  v107 = v17;
  v44 = &v17[v43];
  v45 = __swift_project_boxed_opaque_existential_1(v44, *(v44 + 3));
  MEMORY[0x1EEE9AC00](v45, v46);
  MEMORY[0x1EEE9AC00](v47, v48);
  v91[-4] = sub_1D615B4A4;
  v91[-3] = &v91[-6];
  v89 = sub_1D6708B3C;
  v90 = v37;
  v49 = v108;
  sub_1D5D2BC70(v12, sub_1D615B49C, v50, sub_1D615B4A4, &v91[-6]);
  if (v49)
  {
    sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);

    v51 = v107;
  }

  else
  {
    v92 = v44;
    *&v108 = v33;

    sub_1D5D3E60C();
    v51 = v107;
    sub_1D72647EC();
    sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);

    v53 = v103;
    v54 = v97;
    v100(v103, v101, v97);
    swift_storeEnumTagMultiPayload();
    v106 = xmmword_1D728CF30;
    v112 = xmmword_1D728CF30;
    v113 = 0;
    LOBYTE(v109) = 0;
    v55 = swift_allocObject();
    v57 = v55;
    *(v55 + 16) = v106;
    *(v55 + 32) = v109;
    v58 = v102;
    v59 = v108;
    *(v55 + 40) = v102;
    *(v55 + 48) = v59;
    v60 = v115;
    if (v115 <= 0xFD)
    {
      v91[1] = v91;
      v66 = v94;
      v67 = v93;
      v109 = v94;
      v110 = v93;
      v111 = v115;
      MEMORY[0x1EEE9AC00](v55, v56);
      v91[0] = &v91[-6];
      v91[-4] = sub_1D5B4AA6C;
      v91[-3] = 0;
      v89 = sub_1D6708B3C;
      v90 = v57;
      v114 = 0;
      v68 = swift_allocObject();
      *(v68 + 16) = v106;
      *(v68 + 32) = v114;
      *(v68 + 40) = v58;
      *(v68 + 48) = v59;
      swift_retain_n();
      sub_1D5ED34B0(v66, v67, v60);
      v69 = sub_1D72647CC();
      v114 = 0;
      v70 = swift_allocObject();
      *(v70 + 16) = v69;
      *(v70 + 24) = v106;
      *(v70 + 40) = v114;
      v71 = __swift_project_boxed_opaque_existential_1(v92, *(v92 + 3));
      MEMORY[0x1EEE9AC00](v71, v72);
      MEMORY[0x1EEE9AC00](v73, v74);
      v75 = v91[0];
      v91[-4] = sub_1D615B4A4;
      v91[-3] = v75;
      v89 = sub_1D6708B3C;
      v90 = v68;
      v77 = sub_1D5D2F7A4(v103, sub_1D615B49C, v76, sub_1D615B4A4, &v91[-6]);
      v87 = v77;

      v61 = v96;
      if (v87)
      {
        sub_1D6661258();
        sub_1D72647EC();
        v54 = v97;

        sub_1D5ED34A0(v109, v110, v111);
        sub_1D5D2CFE8(v103, type metadata accessor for FormatVersionRequirement);
        v59 = v108;
      }

      else
      {

        sub_1D5ED34A0(v109, v110, v111);
        sub_1D5D2CFE8(v103, type metadata accessor for FormatVersionRequirement);
        v59 = v108;
        v54 = v97;
      }
    }

    else
    {

      sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);

      v61 = v96;
    }

    v100(v61, v101, v54);
    swift_storeEnumTagMultiPayload();
    v108 = xmmword_1D7297410;
    v112 = xmmword_1D7297410;
    v113 = 0;
    LOBYTE(v109) = 0;
    v62 = swift_allocObject();
    v64 = v62;
    *(v62 + 16) = v108;
    *(v62 + 32) = v109;
    v65 = v102;
    *(v62 + 40) = v102;
    *(v62 + 48) = v59;
    if (v95 == 2)
    {
    }

    else
    {
      *&v106 = v91;
      LOBYTE(v109) = v95 & 1;
      MEMORY[0x1EEE9AC00](v62, v63);
      v91[-4] = sub_1D5B4AA6C;
      v91[-3] = 0;
      v89 = sub_1D6708B3C;
      v90 = v64;
      v114 = 0;
      v78 = swift_allocObject();
      *(v78 + 16) = v108;
      *(v78 + 32) = v114;
      *(v78 + 40) = v65;
      *(v78 + 48) = v59;
      swift_retain_n();
      v79 = sub_1D72647CC();
      v114 = 0;
      v80 = swift_allocObject();
      *(v80 + 16) = v79;
      *(v80 + 24) = v108;
      *(v80 + 40) = v114;
      v81 = __swift_project_boxed_opaque_existential_1(v92, *(v92 + 3));
      MEMORY[0x1EEE9AC00](v81, v82);
      MEMORY[0x1EEE9AC00](v83, v84);
      v91[-4] = sub_1D615B4A4;
      v91[-3] = &v91[-6];
      v61 = v96;
      v89 = sub_1D66B0F1C;
      v90 = v78;
      v86 = sub_1D5D2F7A4(v96, sub_1D615B49C, v85, sub_1D615B4A4, &v91[-6]);
      v88 = v86;

      if (v88)
      {
        sub_1D72647EC();
      }
    }

    sub_1D5D2CFE8(v61, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v51, sub_1D66B0DF4);
}

unint64_t sub_1D6560EB4()
{
  v1 = 0x726F7463656C6573;
  v2 = 0xD000000000000018;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x615272656E726F63;
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

uint64_t sub_1D6560F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66B2CB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6560F6C(uint64_t a1)
{
  v2 = sub_1D66B0D4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6560FA8(uint64_t a1)
{
  v2 = sub_1D66B0D4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPuzzleStatisticBinding.Float.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v57 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v56 = &v54 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v55 = &v54 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v54 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v54 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v54 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v54 - v26;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = &v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *v2;
  v33 = a1[3];
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v33);
  v35 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatPuzzleStatisticBinding.Float, &type metadata for FormatCodingKeys, v36, v33, &type metadata for FormatPuzzleStatisticBinding.Float, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.DawnburstF, v34, v31, v35, &off_1F51F6BD8);
  if (v32 > 2)
  {
    if (v32 > 4)
    {
      if (v32 == 5)
      {
        if (qword_1EDF31F50 != -1)
        {
          swift_once();
        }

        v43 = sub_1D725BD1C();
        v44 = __swift_project_value_buffer(v43, qword_1EDFFCE80);
        v27 = v56;
        (*(*(v43 - 8) + 16))(v56, v44, v43);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v39 = 5;
      }

      else
      {
        if (qword_1EDF31F50 != -1)
        {
          swift_once();
        }

        v51 = sub_1D725BD1C();
        v52 = __swift_project_value_buffer(v51, qword_1EDFFCE80);
        v27 = v57;
        (*(*(v51 - 8) + 16))(v57, v52, v51);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v39 = 6;
      }
    }

    else if (v32 == 3)
    {
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v37 = sub_1D725BD1C();
      v38 = __swift_project_value_buffer(v37, qword_1EDFFCE80);
      v27 = v54;
      (*(*(v37 - 8) + 16))(v54, v38, v37);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v39 = 3;
    }

    else
    {
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v49 = sub_1D725BD1C();
      v50 = __swift_project_value_buffer(v49, qword_1EDFFCE80);
      v27 = v55;
      (*(*(v49 - 8) + 16))(v55, v50, v49);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v39 = 4;
    }

LABEL_28:
    sub_1D641A2E0(v39, v27);
    v42 = v27;
    goto LABEL_29;
  }

  if (!v32)
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v45 = sub_1D725BD1C();
    v46 = __swift_project_value_buffer(v45, qword_1EDFFCE80);
    (*(*(v45 - 8) + 16))(v27, v46, v45);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v39 = 0;
    goto LABEL_28;
  }

  if (v32 == 1)
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v40 = sub_1D725BD1C();
    v41 = __swift_project_value_buffer(v40, qword_1EDFFCE80);
    (*(*(v40 - 8) + 16))(v23, v41, v40);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641A2E0(1, v23);
    v42 = v23;
  }

  else
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v47 = sub_1D725BD1C();
    v48 = __swift_project_value_buffer(v47, qword_1EDFFCE80);
    (*(*(v47 - 8) + 16))(v19, v48, v47);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641A2E0(2, v19);
    v42 = v19;
  }

LABEL_29:
  sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v31, sub_1D5D30DC4);
}

uint64_t FormatPuzzleStatisticBinding.Image.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatPuzzleStatisticBinding.Image, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatPuzzleStatisticBinding.Image, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.DawnburstF, v17, v14, v18, &off_1F51F6BD8);
  if (v15)
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCE80);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641A18C(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCE80);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641A18C(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}