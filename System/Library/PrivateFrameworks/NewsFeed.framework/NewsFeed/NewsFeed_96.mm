uint64_t FormatButtonNodeState.encode(to:)(void *a1)
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

uint64_t FormatBindingContent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v44 = a2;
  v41 = type metadata accessor for FormatContent(0);
  MEMORY[0x1EEE9AC00](v41, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D666318C();
  v9 = v8;
  v40 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6663220();
  sub_1D5B58B84(&qword_1EC886258, sub_1D6663220);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v40;
  v14 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v15 = sub_1D7264AFC();
  LOBYTE(v14) = Dictionary<>.errorOnUnknownKeys.getter(v15);

  v16 = v44;
  if (v14)
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

      v25 = *(v19 - 2);
      v24 = *(v19 - 1);

      v26 = sub_1D6615368();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v27 = v25;
      *(v27 + 8) = v24;
      *(v27 + 16) = v26;
      *(v27 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v12, v9);
      a1 = v39;
      goto LABEL_10;
    }

LABEL_7:
  }

  v42 = 0uLL;
  v43 = 0;
  v20 = sub_1D72642BC();
  v22 = v21;
  v38 = v20;
  v42 = xmmword_1D728CF30;
  v43 = 0;
  v23 = sub_1D72642BC();
  a1 = v39;
  v36 = v23;
  v37 = v28;
  v42 = xmmword_1D7297410;
  v43 = 0;
  v34 = sub_1D726422C();
  v35 = v30;
  v42 = xmmword_1D72BAA60;
  v43 = 0;
  sub_1D5B58B84(&qword_1EC886260, type metadata accessor for FormatContent);
  sub_1D726431C();
  (*(v13 + 8))(v12, v9);
  v31 = type metadata accessor for FormatBindingContent();
  sub_1D5C8F76C(v7, v16 + *(v31 + 28), type metadata accessor for FormatContent);
  *v16 = v38;
  v16[1] = v22;
  v32 = v37;
  v16[2] = v36;
  v16[3] = v32;
  v33 = v35;
  v16[4] = v34;
  v16[5] = v33;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBindingContent.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v115 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v114 = &v111 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v116 = &v111 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v111 - v15;
  sub_1D66633A0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v24 = type metadata accessor for FormatBindingContent();
  sub_1D6663220();
  v26 = v25;
  v27 = sub_1D5B58B84(&qword_1EC886258, sub_1D6663220);
  v113 = v24;
  sub_1D5D2EE70(v24, v26, v28, v22, v24, v26, &type metadata for FormatVersions.StarSkyE, v23, v21, v27, &off_1F51F6CB8);
  v29 = *v2;
  v30 = v2[1];
  v117 = v2;
  if (qword_1EDF31E90 != -1)
  {
    swift_once();
  }

  v31 = sub_1D725BD1C();
  v32 = __swift_project_value_buffer(v31, qword_1EDFFCCE8);
  v33 = *(v31 - 8);
  v122 = *(v33 + 16);
  v123 = v32;
  v118 = v31;
  v121 = v33 + 16;
  v122(v16);
  v120 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v131 = v29;
  v132 = v30;
  v129 = 0uLL;
  v130 = 0;
  v34 = &v21[*(v18 + 11)];
  v128 = v18;
  v35 = *v34;
  v36 = *(v34 + 1);
  v133 = 0;
  v37 = swift_allocObject();
  v126 = &v111;
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v133;
  *(v37 + 40) = v35;
  *(v37 + 48) = v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  *(&v111 - 4) = sub_1D5B4AA6C;
  *(&v111 - 3) = 0;
  v109 = sub_1D67088E8;
  v110 = v39;
  v133 = 0;
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  *(v40 + 32) = v133;
  v119 = v35;
  *(v40 + 40) = v35;
  *(v40 + 48) = v36;
  sub_1D6663434();
  v42 = v41;
  v43 = v16;
  v44 = sub_1D5B58B84(&qword_1EC886278, sub_1D6663434);
  swift_retain_n();
  v124 = v42;
  v125 = v44;
  v45 = sub_1D72647CC();
  v133 = 0;
  v46 = swift_allocObject();
  *(v46 + 24) = 0;
  *(v46 + 32) = 0;
  *(v46 + 16) = v45;
  *(v46 + 40) = v133;
  v47 = &v21[*(v128 + 9)];
  v128 = v21;
  v48 = __swift_project_boxed_opaque_existential_1(v47, *(v47 + 3));
  MEMORY[0x1EEE9AC00](v48, v49);
  MEMORY[0x1EEE9AC00](v50, v51);
  *(&v111 - 4) = sub_1D615B4A4;
  *(&v111 - 3) = (&v111 - 6);
  v109 = sub_1D67088E8;
  v110 = v40;
  v52 = v127;
  sub_1D5D2BC70(v16, sub_1D615B49C, v53, sub_1D615B4A4, (&v111 - 6));
  if (!v52)
  {
    v112 = v47;
    v111 = v36;

    sub_1D72647EC();
    sub_1D5D2CFE8(v16, type metadata accessor for FormatVersionRequirement);

    v57 = v116;
    v58 = v117[2];
    v59 = v117[3];
    (v122)(v116, v123, v118);
    swift_storeEnumTagMultiPayload();
    v131 = v58;
    v132 = v59;
    v127 = xmmword_1D728CF30;
    v129 = xmmword_1D728CF30;
    v130 = 0;
    v133 = 0;
    v60 = swift_allocObject();
    v126 = &v111;
    *(v60 + 16) = v127;
    *(v60 + 32) = v133;
    v61 = v119;
    v62 = v111;
    *(v60 + 40) = v119;
    *(v60 + 48) = v62;
    MEMORY[0x1EEE9AC00](v60, v63);
    *(&v111 - 4) = sub_1D5B4AA6C;
    *(&v111 - 3) = 0;
    v109 = sub_1D67088E8;
    v110 = v64;
    v133 = 0;
    v65 = swift_allocObject();
    *(v65 + 16) = v127;
    *(v65 + 32) = v133;
    *(v65 + 40) = v61;
    *(v65 + 48) = v62;
    swift_retain_n();
    v66 = sub_1D72647CC();
    v133 = 0;
    v67 = swift_allocObject();
    *(v67 + 16) = v66;
    *(v67 + 24) = v127;
    *(v67 + 40) = v133;
    v68 = __swift_project_boxed_opaque_existential_1(v112, *(v112 + 3));
    MEMORY[0x1EEE9AC00](v68, v69);
    MEMORY[0x1EEE9AC00](v70, v71);
    *(&v111 - 4) = sub_1D615B4A4;
    *(&v111 - 3) = (&v111 - 6);
    v109 = sub_1D67088E8;
    v110 = v65;
    sub_1D5D2BC70(v57, sub_1D615B49C, v72, sub_1D615B4A4, (&v111 - 6));

    sub_1D72647EC();
    sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);

    v73 = v118;
    v74 = v117[4];
    v75 = v117[5];
    v76 = v62;
    v77 = v114;
    (v122)(v114, v123, v118);
    swift_storeEnumTagMultiPayload();
    v127 = xmmword_1D7297410;
    v129 = xmmword_1D7297410;
    v130 = 0;
    LOBYTE(v131) = 0;
    v78 = swift_allocObject();
    v80 = v78;
    *(v78 + 16) = v127;
    *(v78 + 32) = v131;
    v81 = v119;
    *(v78 + 40) = v119;
    *(v78 + 48) = v76;
    if (v75)
    {
      v126 = &v111;
      v131 = v74;
      v132 = v75;
      MEMORY[0x1EEE9AC00](v78, v79);
      *(&v111 - 4) = sub_1D5B4AA6C;
      *(&v111 - 3) = 0;
      v109 = sub_1D67088E8;
      v110 = v80;
      v133 = 0;
      v82 = swift_allocObject();
      *(v82 + 16) = v127;
      *(v82 + 32) = v133;
      *(v82 + 40) = v81;
      *(v82 + 48) = v76;
      swift_retain_n();

      v83 = sub_1D72647CC();
      v133 = 0;
      v84 = swift_allocObject();
      *(v84 + 16) = v83;
      *(v84 + 24) = v127;
      *(v84 + 40) = v133;
      v85 = __swift_project_boxed_opaque_existential_1(v112, *(v112 + 3));
      MEMORY[0x1EEE9AC00](v85, v86);
      MEMORY[0x1EEE9AC00](v87, v88);
      *(&v111 - 4) = sub_1D615B4A4;
      *(&v111 - 3) = (&v111 - 6);
      v109 = sub_1D66634C8;
      v110 = v82;
      v90 = sub_1D5D2F7A4(v77, sub_1D615B49C, v89, sub_1D615B4A4, (&v111 - 6));
      v92 = v90;

      v91 = v115;
      if (v92)
      {
        sub_1D72647EC();
        v73 = v118;
        v81 = v119;
        v94 = v122;
        v93 = v123;

        sub_1D5D2CFE8(v77, type metadata accessor for FormatVersionRequirement);
        v108 = v93;
        v76 = v111;
LABEL_14:
        v123 = *(v113 + 28);
        v94(v91, v108, v73);
        swift_storeEnumTagMultiPayload();
        v127 = xmmword_1D72BAA60;
        v129 = xmmword_1D72BAA60;
        v130 = 0;
        LOBYTE(v131) = 0;
        v95 = swift_allocObject();
        v126 = &v111;
        *(v95 + 16) = v127;
        *(v95 + 32) = v131;
        *(v95 + 40) = v81;
        *(v95 + 48) = v76;
        MEMORY[0x1EEE9AC00](v95, v96);
        *(&v111 - 4) = sub_1D5B4AA6C;
        *(&v111 - 3) = 0;
        v109 = sub_1D67088E8;
        v110 = v97;
        LOBYTE(v131) = 0;
        v98 = swift_allocObject();
        *(v98 + 16) = v127;
        *(v98 + 32) = v131;
        *(v98 + 40) = v81;
        *(v98 + 48) = v76;
        swift_retain_n();
        v99 = sub_1D72647CC();
        LOBYTE(v131) = 0;
        v100 = swift_allocObject();
        *(v100 + 16) = v99;
        *(v100 + 24) = v127;
        *(v100 + 40) = v131;
        v101 = __swift_project_boxed_opaque_existential_1(v112, *(v112 + 3));
        MEMORY[0x1EEE9AC00](v101, v102);
        MEMORY[0x1EEE9AC00](v103, v104);
        *(&v111 - 4) = sub_1D615B4A4;
        *(&v111 - 3) = (&v111 - 6);
        v105 = v115;
        v109 = sub_1D67088E8;
        v110 = v98;
        sub_1D5D2BC70(v115, sub_1D615B49C, v106, sub_1D615B4A4, (&v111 - 6));

        type metadata accessor for FormatContent(0);
        sub_1D5B58B84(&qword_1EC886280, type metadata accessor for FormatContent);
        v107 = v128;
        sub_1D72647EC();
        sub_1D5D2CFE8(v105, type metadata accessor for FormatVersionRequirement);

        v55 = v107;
        return sub_1D5D2CFE8(v55, sub_1D66633A0);
      }

      sub_1D5D2CFE8(v77, type metadata accessor for FormatVersionRequirement);
      v76 = v111;
      v73 = v118;
      v81 = v119;
    }

    else
    {

      sub_1D5D2CFE8(v77, type metadata accessor for FormatVersionRequirement);

      v91 = v115;
    }

    v94 = v122;
    v108 = v123;
    goto LABEL_14;
  }

  v54 = v128;
  sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

  v55 = v54;
  return sub_1D5D2CFE8(v55, sub_1D66633A0);
}

uint64_t FormatFrameNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v139 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v145 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v144 = &v139 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  *&v155 = &v139 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v139 - v20;
  sub_1D6664B44();
  *&v156 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v139 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1D5CC2354();
  v29 = v28;
  v30 = sub_1D5B58B84(&qword_1EDF24BB8, sub_1D5CC2354);
  v153 = v25;
  v31 = v26;
  v32 = v2;
  sub_1D5D2EE70(v4, v29, v33, v31, v4, v29, &type metadata for FormatVersions.JazzkonC, v27, v25, v30, &off_1F51F6C78);
  swift_beginAccess();
  v35 = v2[2];
  v34 = v2[3];
  v36 = qword_1EDF31EB0;

  if (v36 != -1)
  {
    swift_once();
  }

  v37 = sub_1D725BD1C();
  v38 = __swift_project_value_buffer(v37, qword_1EDFFCD30);
  v39 = *(v37 - 1);
  v40 = *(v39 + 16);
  v41 = v39 + 16;
  v152 = v38;
  (v40)(v21);
  v42 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v43 = sub_1D725895C();
  v44 = (*(*(v43 - 8) + 48))(v8, 1, v43);
  v148 = v32;
  v151 = v40;
  v150 = v41;
  v149 = v42;
  if (v44 != 1)
  {
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v64 = v153;
LABEL_7:
    v65 = v152;
    v66 = v156;
    goto LABEL_8;
  }

  v143 = v35;
  v146 = v37;
  sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v45 = v156;
  v46 = v153;
  v47 = &v153[*(v156 + 44)];
  v49 = *v47;
  v48 = *(v47 + 1);
  LOBYTE(v157) = 0;
  v50 = swift_allocObject();
  *(v50 + 16) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = v157;
  *(v50 + 40) = v49;
  *(v50 + 48) = v48;
  sub_1D6664BD8();
  v52 = v51;
  v53 = sub_1D5B58B84(&qword_1EDF02A78, sub_1D6664BD8);

  v147 = v52;
  v54 = sub_1D72647CC();
  LOBYTE(v157) = 0;
  v55 = swift_allocObject();
  *(v55 + 24) = 0;
  *(v55 + 32) = 0;
  *(v55 + 16) = v54;
  *(v55 + 40) = v157;
  v56 = __swift_project_boxed_opaque_existential_1((v46 + *(v45 + 36)), *(v46 + *(v45 + 36) + 24));
  MEMORY[0x1EEE9AC00](v56, v57);
  MEMORY[0x1EEE9AC00](v58, v59);
  *(&v139 - 4) = sub_1D5B4AA6C;
  *(&v139 - 3) = 0;
  v137 = sub_1D6664C6C;
  v138 = v50;
  v60 = v154;
  v62 = sub_1D5D2F7A4(v21, sub_1D615B49C, v61, sub_1D615B4A4, (&v139 - 6));
  if (v60)
  {
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);

    v63 = v46;
    return sub_1D5D2CFE8(v63, sub_1D6664B44);
  }

  v94 = v62;
  v154 = v53;

  v32 = v148;
  if ((v94 & 1) == 0)
  {
    v154 = 0;
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);

    v64 = v153;
    v37 = v146;
    v40 = v151;
    goto LABEL_7;
  }

  v157 = 0uLL;
  LOBYTE(v158) = 0;
  v164 = v143;
  v165 = v34;
  v64 = v153;
  sub_1D72647EC();

  sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);
  v40 = v151;
  v65 = v152;
  v66 = v156;
  v154 = 0;
  v37 = v146;
LABEL_8:
  v67 = v32[4];
  (v40)(v155, v65, v37);
  swift_storeEnumTagMultiPayload();
  v164 = v67;
  v156 = xmmword_1D728CF30;
  v157 = xmmword_1D728CF30;
  LOBYTE(v158) = 0;
  v68 = &v64[*(v66 + 44)];
  v70 = *v68;
  v69 = *(v68 + 1);
  LOBYTE(v162) = 0;
  v71 = swift_allocObject();
  v72 = v64;
  v147 = &v139;
  *(v71 + 16) = v156;
  *(v71 + 32) = v162;
  *(v71 + 40) = v70;
  *(v71 + 48) = v69;
  MEMORY[0x1EEE9AC00](v71, v73);
  v146 = &v139 - 6;
  *(&v139 - 4) = sub_1D5B4AA6C;
  *(&v139 - 3) = 0;
  v137 = sub_1D670887C;
  v138 = v74;
  LOBYTE(v162) = 0;
  v75 = v66;
  v76 = swift_allocObject();
  *(v76 + 16) = v156;
  *(v76 + 32) = v162;
  v140 = v70;
  *(v76 + 40) = v70;
  *(v76 + 48) = v69;
  sub_1D6664BD8();
  v78 = v77;
  v79 = sub_1D5B58B84(&qword_1EDF02A78, sub_1D6664BD8);
  v141 = v69;
  swift_retain_n();
  v142 = v78;
  v143 = v79;
  v80 = sub_1D72647CC();
  LOBYTE(v162) = 0;
  v81 = swift_allocObject();
  *(v81 + 16) = v80;
  *(v81 + 24) = v156;
  *(v81 + 40) = v162;
  v82 = *(v75 + 36);
  v83 = v72;
  v84 = v72 + v82;
  v85 = __swift_project_boxed_opaque_existential_1((v72 + v82), *(v72 + v82 + 24));
  MEMORY[0x1EEE9AC00](v85, v86);
  MEMORY[0x1EEE9AC00](v87, v88);
  v89 = v146;
  *(&v139 - 4) = sub_1D615B4A4;
  *(&v139 - 3) = v89;
  v90 = v154;
  v91 = v155;
  v137 = sub_1D670887C;
  v138 = v76;
  sub_1D5D2BC70(v155, sub_1D615B49C, v92, sub_1D615B4A4, (&v139 - 6));
  if (v90)
  {
    sub_1D5D2CFE8(v91, type metadata accessor for FormatVersionRequirement);

    v63 = v83;
    return sub_1D5D2CFE8(v63, sub_1D6664B44);
  }

  *&v156 = v84;
  v146 = v37;

  sub_1D5CA1E90();
  sub_1D72647EC();
  sub_1D5D2CFE8(v155, type metadata accessor for FormatVersionRequirement);

  v95 = v148;
  swift_beginAccess();
  v96 = v95[5];
  v97 = v144;
  (v151)(v144, v152, v146);
  swift_storeEnumTagMultiPayload();
  if (!*(v96 + 16))
  {
    v154 = 0;
LABEL_18:
    sub_1D5D2CFE8(v97, type metadata accessor for FormatVersionRequirement);
    goto LABEL_22;
  }

  LOBYTE(v157) = 0;
  v98 = swift_allocObject();
  v155 = xmmword_1D7297410;
  *(v98 + 16) = xmmword_1D7297410;
  *(v98 + 32) = v157;
  *(v98 + 40) = v140;
  *(v98 + 48) = v141;

  v99 = sub_1D72647CC();
  LOBYTE(v157) = 0;
  v100 = swift_allocObject();
  *(v100 + 16) = v99;
  *(v100 + 24) = v155;
  *(v100 + 40) = v157;
  v101 = __swift_project_boxed_opaque_existential_1(v156, *(v156 + 24));
  MEMORY[0x1EEE9AC00](v101, v102);
  MEMORY[0x1EEE9AC00](v103, v104);
  *(&v139 - 4) = sub_1D5B4AA6C;
  *(&v139 - 3) = 0;
  v137 = sub_1D670887C;
  v138 = v98;
  v106 = sub_1D5D2F7A4(v97, sub_1D615B49C, v105, sub_1D615B4A4, (&v139 - 6));
  v107 = v106;

  if (v107)
  {
    v157 = v155;
    LOBYTE(v158) = 0;
    *&v162 = v96;
    sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
    sub_1D6659C88();
    sub_1D72647EC();
    v95 = v148;
    v154 = 0;

    goto LABEL_18;
  }

  v154 = 0;
  sub_1D5D2CFE8(v97, type metadata accessor for FormatVersionRequirement);

  v95 = v148;
LABEL_22:
  v109 = v95[6];
  v108 = v95[7];
  v110 = v95[8];
  v111 = v95[9];
  v112 = v95[10];
  v113 = v95[11];
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v114 = v146;
  v115 = __swift_project_value_buffer(v146, qword_1EDFFCE38);
  (v151)(v145, v115, v114);
  swift_storeEnumTagMultiPayload();
  v155 = xmmword_1D72BAA60;
  v162 = xmmword_1D72BAA60;
  v163 = 0;
  LOBYTE(v157) = 0;
  v116 = swift_allocObject();
  v118 = v116;
  *(v116 + 16) = v155;
  *(v116 + 32) = v157;
  v119 = v140;
  v120 = v141;
  *(v116 + 40) = v140;
  *(v116 + 48) = v120;
  if (v109)
  {
    v152 = &v139;
    v147 = v109;
    *&v157 = v109;
    *(&v157 + 1) = v108;
    v121 = v110;
    v158 = v110;
    v159 = v111;
    v122 = v112;
    v160 = v112;
    v161 = v113;
    MEMORY[0x1EEE9AC00](v116, v117);
    v151 = &v139 - 6;
    *(&v139 - 4) = sub_1D5B4AA6C;
    *(&v139 - 3) = 0;
    v137 = sub_1D670887C;
    v138 = v118;
    v166 = 0;
    v123 = swift_allocObject();
    *(v123 + 16) = v155;
    *(v123 + 32) = v166;
    *(v123 + 40) = v119;
    *(v123 + 48) = v120;
    swift_retain_n();
    sub_1D5EB1D80(v147, v108, v121, v111, v122);
    v124 = v153;
    v125 = sub_1D72647CC();
    v166 = 0;
    v126 = swift_allocObject();
    *(v126 + 16) = v125;
    *(v126 + 24) = v155;
    *(v126 + 40) = v166;
    v127 = __swift_project_boxed_opaque_existential_1(v156, *(v156 + 24));
    MEMORY[0x1EEE9AC00](v127, v128);
    MEMORY[0x1EEE9AC00](v129, v130);
    v131 = v151;
    *(&v139 - 4) = sub_1D615B4A4;
    *(&v139 - 3) = v131;
    v137 = sub_1D670887C;
    v138 = v123;
    v132 = v145;
    v133 = v154;
    sub_1D5D2F7A4(v145, sub_1D615B49C, v134, sub_1D615B4A4, (&v139 - 6));
    if (v133)
    {

      v135 = v160;

      sub_1D5CBF568(v135);

      sub_1D5D2CFE8(v132, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v124, sub_1D6664B44);
    }

    sub_1D6659A24();
    sub_1D72647EC();
    v154 = 0;

    v136 = v160;

    sub_1D5CBF568(v136);

    sub_1D5D2CFE8(v132, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D5D2CFE8(v145, type metadata accessor for FormatVersionRequirement);

    v124 = v153;
  }

  return sub_1D5D2CFE8(v124, sub_1D6664B44);
}

uint64_t FormatBindingFont.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a2;
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

    v13 = v31;
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
          *(v21 + 16) = &unk_1F51112C0;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v14, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D6664CE8();
    v28 = 0;
    v29 = 0;
    sub_1D726431C();
    v23 = v27;
    if (v27 > 1u)
    {
      if (v27 == 2)
      {
        v27 = xmmword_1D7279980;
        sub_1D6664D3C();
        sub_1D726431C();
        (*(v7 + 8))(v14, v6);
        v24 = v28;
        v25 = v29;
        v26 = v30 | (BYTE2(v30) << 16);
      }

      else
      {
        v27 = xmmword_1D7279980;
        sub_1D5C6A164();
        sub_1D726431C();
        (*(v7 + 8))(v14, v6);
        v24 = v28;
        v25 = v29;
        v26 = v30;
      }
    }

    else if (v27)
    {
      v27 = xmmword_1D7279980;
      sub_1D6664D90();
      sub_1D726431C();
      (*(v7 + 8))(v14, v6);
      v24 = v28;
      v25 = v29;
      v26 = v30;
    }

    else
    {
      v27 = xmmword_1D7279980;
      sub_1D6664DE4();
      sub_1D726431C();
      (*(v7 + 8))(v14, v6);
      v24 = v28;
      v25 = v29;
      v26 = v30 | (BYTE2(v30) << 16);
    }

    *v13 = v24;
    *(v13 + 8) = v25;
    *(v13 + 16) = v26;
    *(v13 + 24) = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBindingFont.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v41 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v41 - v17;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v1;
  v43 = *(v1 + 8);
  v24 = *(v1 + 16);
  v41 = *&v23;
  v42 = v24;
  v25 = *(v1 + 24);
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  v28 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatBindingFont, &type metadata for FormatCodingKeys, v29, v26, &type metadata for FormatBindingFont, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v27, v22, v28, &off_1F51F6C78);
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v33 = sub_1D725BD1C();
      v34 = __swift_project_value_buffer(v33, qword_1EDFFCD30);
      (*(*(v33 - 8) + 16))(v10, v34, v33);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63B2B00(2, *&v41, v43, v42 & 0xFFFFFF, v10);
      v32 = v10;
    }

    else
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v38 = sub_1D725BD1C();
      v39 = __swift_project_value_buffer(v38, qword_1EDFFCD50);
      (*(*(v38 - 8) + 16))(v6, v39, v38);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63B2CA0(3, *&v41, v43, v42, v6);
      v32 = v6;
    }
  }

  else if (v25)
  {
    v35 = v41;
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v36 = sub_1D725BD1C();
    v37 = __swift_project_value_buffer(v36, qword_1EDFFCD98);
    (*(*(v36 - 8) + 16))(v14, v37, v36);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63B2964(1, v43, v42, v14, v35);
    v32 = v14;
  }

  else
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v30 = sub_1D725BD1C();
    v31 = __swift_project_value_buffer(v30, qword_1EDFFCD30);
    (*(*(v30 - 8) + 16))(v18, v31, v30);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63B27C4(0, *&v41, v43, v42 & 0xFFFFFF, v18);
    v32 = v18;
  }

  sub_1D5D2CFE8(v32, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t FormatPatternAnchor.encode(to:)(void *a1)
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
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v33 = sub_1D725BD1C();
  v34 = __swift_project_value_buffer(v33, qword_1EDFFCD30);
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

uint64_t FormatFlexBoxNodeLayout.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v289 = &v284 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v290 = &v284 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v291 = &v284 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v293 = &v284 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v294 = &v284 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v295 = &v284 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  *&v296 = &v284 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  *&v304 = &v284 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v284 - v31;
  sub_1D6665AC4();
  v303 = v33;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v284 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1[3];
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v37);
  sub_1D6665BEC();
  v40 = v39;
  v41 = sub_1D5B58B84(&qword_1EDF251E8, sub_1D6665BEC);
  v316 = v36;
  sub_1D5D2EE70(v4, v40, v42, v37, v4, v40, &type metadata for FormatVersions.CrystalGlowE, v38, v36, v41, &off_1F51F6C98);
  swift_beginAccess();
  v43 = *(v2 + 16);
  v302 = v2;
  v44 = v2[3];
  v45 = qword_1EDF31F38;

  if (v45 != -1)
  {
    swift_once();
  }

  v46 = sub_1D725BD1C();
  v47 = __swift_project_value_buffer(v46, qword_1EDFFCE38);
  v48 = *(v46 - 8);
  v49 = *(v48 + 16);
  v301 = v48 + 16;
  v49(v32, v47, v46);
  v300 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v50 = sub_1D6366360(v43, v44, 1, MEMORY[0x1E69E7CC0]);

  v297 = v47;
  v298 = v46;
  v299 = v49;
  if (v50)
  {
    sub_1D5D2CFE8(v32, type metadata accessor for FormatVersionRequirement);

    v51 = v316;
LABEL_5:
    v52 = v304;
    goto LABEL_6;
  }

  LODWORD(v287) = v43;
  v58 = v303;
  v59 = v316;
  v60 = &v316[*(v303 + 44)];
  v61 = *v60;
  v62 = *(v60 + 1);
  v63 = v32;
  LOBYTE(v311) = 0;
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  *(v64 + 24) = 0;
  *(v64 + 32) = v311;
  *(v64 + 40) = v61;
  *(v64 + 48) = v62;
  sub_1D6665B58();
  v66 = v65;
  v67 = sub_1D5B58B84(&qword_1EDF031A8, sub_1D6665B58);

  v288 = v66;
  v286 = v67;
  v68 = sub_1D72647CC();
  LOBYTE(v311) = 0;
  v69 = swift_allocObject();
  *(v69 + 24) = 0;
  *(v69 + 32) = 0;
  *(v69 + 16) = v68;
  *(v69 + 40) = v311;
  v70 = __swift_project_boxed_opaque_existential_1((v59 + *(v58 + 36)), *(v59 + *(v58 + 36) + 24));
  *&v292 = &v284;
  MEMORY[0x1EEE9AC00](v70, v71);
  MEMORY[0x1EEE9AC00](v72, v73);
  *(&v284 - 4) = sub_1D5B4AA6C;
  *(&v284 - 3) = 0;
  v282 = sub_1D6665D6C;
  v283 = v64;
  v74 = v305;
  v76 = sub_1D5D2F7A4(v63, sub_1D615B49C, v75, sub_1D615B4A4, (&v284 - 6));
  if (v74)
  {
    sub_1D5D2CFE8(v63, type metadata accessor for FormatVersionRequirement);

    sub_1D5D2CFE8(v316, sub_1D6665AC4);
  }

  v93 = v76;
  v285 = v63;
  v94 = v316;

  if ((v93 & 1) == 0)
  {
    v305 = 0;
    sub_1D5D2CFE8(v285, type metadata accessor for FormatVersionRequirement);

    v51 = v94;
    v47 = v297;
    v46 = v298;
    v49 = v299;
    goto LABEL_5;
  }

  v311 = 0uLL;
  v312 = 0;
  LOBYTE(v306) = v287;
  *(&v306 + 1) = v44;
  sub_1D5C30060(0, &qword_1EDF24768, sub_1D6666300, &type metadata for FormatFlexBoxNodeDisplay, type metadata accessor for FormatSelectorSimpleValue);
  sub_1D6666354();

  v95 = v94;
  sub_1D72647EC();
  v49 = v299;
  v52 = v304;
  v305 = 0;

  sub_1D5D2CFE8(v285, type metadata accessor for FormatVersionRequirement);

  v47 = v297;
  v46 = v298;
  v51 = v95;
LABEL_6:
  v53 = v302;
  swift_beginAccess();
  v54 = *(v53 + 32);
  v55 = v53[5];
  v49(v52, v47, v46);
  swift_storeEnumTagMultiPayload();

  LODWORD(v286) = v54;
  if (sub_1D6DD8574(v54, 0))
  {
    v56 = sub_1D634E170(v55, MEMORY[0x1E69E7CC0]);

    v57 = v51;
    if (v56)
    {
      sub_1D5D2CFE8(v304, type metadata accessor for FormatVersionRequirement);

      goto LABEL_22;
    }
  }

  else
  {

    v57 = v51;
  }

  v288 = v55;
  v78 = v303;
  v79 = (v57 + *(v303 + 44));
  v81 = *v79;
  v80 = v79[1];
  LOBYTE(v311) = 0;
  v82 = swift_allocObject();
  v292 = xmmword_1D728CF30;
  *(v82 + 16) = xmmword_1D728CF30;
  *(v82 + 32) = v311;
  *(v82 + 40) = v81;
  *(v82 + 48) = v80;
  sub_1D6665B58();
  sub_1D5B58B84(&qword_1EDF031A8, sub_1D6665B58);

  v83 = sub_1D72647CC();
  LOBYTE(v311) = 0;
  v84 = swift_allocObject();
  *(v84 + 16) = v83;
  *(v84 + 24) = v292;
  *(v84 + 40) = v311;
  v85 = __swift_project_boxed_opaque_existential_1((v57 + *(v78 + 36)), *(v57 + *(v78 + 36) + 24));
  v287 = &v284;
  MEMORY[0x1EEE9AC00](v85, v86);
  MEMORY[0x1EEE9AC00](v87, v88);
  *(&v284 - 4) = sub_1D5B4AA6C;
  *(&v284 - 3) = 0;
  v282 = sub_1D67088EC;
  v283 = v82;
  v89 = v304;
  v90 = v305;
  v92 = sub_1D5D2F7A4(v304, sub_1D615B49C, v91, sub_1D615B4A4, (&v284 - 6));
  if (v90)
  {
    sub_1D5D2CFE8(v89, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v57, sub_1D6665AC4);
  }

  v96 = v92;

  if (v96)
  {
    v311 = v292;
    v312 = 0;
    LOBYTE(v306) = v286;
    *(&v306 + 1) = v288;
    sub_1D5C30060(0, &qword_1EDF24758, sub_1D666621C, &type metadata for FormatFlexBoxNodeDirection, type metadata accessor for FormatSelectorSimpleValue);
    sub_1D6666270();
    sub_1D72647EC();
    v47 = v297;
    v46 = v298;
    v97 = v304;
    v305 = 0;

    sub_1D5D2CFE8(v97, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v305 = 0;
    sub_1D5D2CFE8(v304, type metadata accessor for FormatVersionRequirement);

    v47 = v297;
    v46 = v298;
  }

  v49 = v299;
LABEL_22:
  v98 = v302;
  swift_beginAccess();
  v99 = *(v98 + 48);
  v100 = v98[7];
  v101 = v296;
  v49(v296, v47, v46);
  swift_storeEnumTagMultiPayload();

  LODWORD(v304) = v99;
  LOBYTE(v99) = sub_1D6366208(v99, v100, 0, MEMORY[0x1E69E7CC0]);

  if (v99)
  {
    v102 = v46;
    sub_1D5D2CFE8(v101, type metadata accessor for FormatVersionRequirement);

    v103 = v305;
  }

  else
  {
    v104 = v303;
    v105 = (v57 + *(v303 + 44));
    v107 = *v105;
    v106 = v105[1];
    LOBYTE(v311) = 0;
    v108 = swift_allocObject();
    v292 = xmmword_1D7297410;
    *(v108 + 16) = xmmword_1D7297410;
    *(v108 + 32) = v311;
    *(v108 + 40) = v107;
    *(v108 + 48) = v106;
    sub_1D6665B58();
    v110 = v109;
    v111 = sub_1D5B58B84(&qword_1EDF031A8, sub_1D6665B58);

    v288 = v110;
    v112 = sub_1D72647CC();
    LOBYTE(v311) = 0;
    v113 = swift_allocObject();
    *(v113 + 16) = v112;
    *(v113 + 24) = v292;
    *(v113 + 40) = v311;
    v114 = __swift_project_boxed_opaque_existential_1((v57 + *(v104 + 36)), *(v57 + *(v104 + 36) + 24));
    MEMORY[0x1EEE9AC00](v114, v115);
    MEMORY[0x1EEE9AC00](v116, v117);
    *(&v284 - 4) = sub_1D5B4AA6C;
    *(&v284 - 3) = 0;
    v282 = sub_1D67088EC;
    v283 = v108;
    v118 = v305;
    v120 = sub_1D5D2F7A4(v101, sub_1D615B49C, v119, sub_1D615B4A4, (&v284 - 6));
    if (v118)
    {
      sub_1D5D2CFE8(v101, type metadata accessor for FormatVersionRequirement);

      sub_1D5D2CFE8(v316, sub_1D6665AC4);
    }

    v121 = v120;
    v305 = v111;

    if (v121)
    {
      v311 = v292;
      v312 = 0;
      LOBYTE(v306) = v304;
      *(&v306 + 1) = v100;
      sub_1D5C30060(0, &qword_1EC8862B8, sub_1D6666138, &type metadata for FormatFlexBoxNodeWrap, type metadata accessor for FormatSelectorSimpleValue);
      sub_1D666618C();

      sub_1D72647EC();
      v103 = 0;
      v122 = v296;

      sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v296, type metadata accessor for FormatVersionRequirement);

      v103 = 0;
    }

    v47 = v297;
    v102 = v298;
    v49 = v299;
  }

  v123 = v302;
  swift_beginAccess();
  v124 = *(v123 + 64);
  v125 = v123[9];
  v126 = v295;
  v49(v295, v47, v102);
  swift_storeEnumTagMultiPayload();

  LODWORD(v292) = v124;
  v127 = sub_1D6DD5208(v124, 0);
  *&v304 = v125;
  if (v127)
  {
    v128 = sub_1D634DD64(v125, MEMORY[0x1E69E7CC0]);

    if (v128)
    {
      sub_1D5D2CFE8(v126, type metadata accessor for FormatVersionRequirement);

      v129 = v102;
      v130 = v316;
      goto LABEL_40;
    }
  }

  else
  {
  }

  v131 = v303;
  v132 = v316;
  v133 = &v316[*(v303 + 44)];
  v134 = *v133;
  v135 = *(v133 + 1);
  LOBYTE(v311) = 0;
  v136 = swift_allocObject();
  v296 = xmmword_1D72BAA60;
  *(v136 + 16) = xmmword_1D72BAA60;
  *(v136 + 32) = v311;
  *(v136 + 40) = v134;
  *(v136 + 48) = v135;
  sub_1D6665B58();
  v138 = v137;
  sub_1D5B58B84(&qword_1EDF031A8, sub_1D6665B58);
  v305 = v103;

  v288 = v138;
  v139 = sub_1D72647CC();
  LOBYTE(v311) = 0;
  v140 = swift_allocObject();
  *(v140 + 16) = v139;
  *(v140 + 24) = v296;
  *(v140 + 40) = v311;
  v141 = __swift_project_boxed_opaque_existential_1((v132 + *(v131 + 36)), *(v132 + *(v131 + 36) + 24));
  MEMORY[0x1EEE9AC00](v141, v142);
  MEMORY[0x1EEE9AC00](v143, v144);
  *(&v284 - 4) = sub_1D5B4AA6C;
  *(&v284 - 3) = 0;
  v282 = sub_1D67088EC;
  v283 = v136;
  v145 = v305;
  v147 = sub_1D5D2F7A4(v126, sub_1D615B49C, v146, sub_1D615B4A4, (&v284 - 6));
  if (v145)
  {
    sub_1D5D2CFE8(v126, type metadata accessor for FormatVersionRequirement);
LABEL_46:

    return sub_1D5D2CFE8(v316, sub_1D6665AC4);
  }

  v148 = v147;
  v149 = v316;

  if (v148)
  {
    v311 = v296;
    v312 = 0;
    LOBYTE(v306) = v292;
    *(&v306 + 1) = v304;
    sub_1D5C30060(0, &qword_1EDF24738, sub_1D6666054, &type metadata for FormatFlexBoxNodeJustifyContent, type metadata accessor for FormatSelectorSimpleValue);
    sub_1D66660A8();
    sub_1D72647EC();
    v103 = 0;
    v150 = v295;

    sub_1D5D2CFE8(v150, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    sub_1D5D2CFE8(v295, type metadata accessor for FormatVersionRequirement);

    v103 = 0;
  }

  v130 = v149;
  v47 = v297;
  v129 = v298;
  v49 = v299;
LABEL_40:
  v151 = v302;
  swift_beginAccess();
  v152 = *(v151 + 80);
  v153 = v151[11];
  v49(v294, v47, v129);
  swift_storeEnumTagMultiPayload();

  LODWORD(v295) = v152;
  if (sub_1D6DD6754(v152, 0))
  {
    v154 = sub_1D634DA7C(v153, MEMORY[0x1E69E7CC0]);

    if (v154)
    {
      sub_1D5D2CFE8(v294, type metadata accessor for FormatVersionRequirement);

      goto LABEL_50;
    }
  }

  else
  {
  }

  *&v296 = v153;
  v155 = v303;
  v156 = (v130 + *(v303 + 44));
  v157 = *v156;
  v158 = v156[1];
  LOBYTE(v311) = 0;
  v159 = v130;
  v160 = swift_allocObject();
  v304 = xmmword_1D72BAA70;
  *(v160 + 16) = xmmword_1D72BAA70;
  *(v160 + 32) = v311;
  *(v160 + 40) = v157;
  *(v160 + 48) = v158;
  sub_1D6665B58();
  v162 = v161;
  v163 = sub_1D5B58B84(&qword_1EDF031A8, sub_1D6665B58);
  v305 = v103;
  v164 = v163;

  *&v292 = v162;
  v165 = sub_1D72647CC();
  LOBYTE(v311) = 0;
  v166 = swift_allocObject();
  *(v166 + 16) = v165;
  *(v166 + 24) = v304;
  *(v166 + 40) = v311;
  v167 = __swift_project_boxed_opaque_existential_1((v159 + *(v155 + 36)), *(v159 + *(v155 + 36) + 24));
  MEMORY[0x1EEE9AC00](v167, v168);
  MEMORY[0x1EEE9AC00](v169, v170);
  *(&v284 - 4) = sub_1D5B4AA6C;
  *(&v284 - 3) = 0;
  v282 = sub_1D67088EC;
  v283 = v160;
  v171 = v294;
  v172 = v305;
  v174 = sub_1D5D2F7A4(v294, sub_1D615B49C, v173, sub_1D615B4A4, (&v284 - 6));
  if (v172)
  {
    sub_1D5D2CFE8(v171, type metadata accessor for FormatVersionRequirement);
    goto LABEL_46;
  }

  v175 = v174;
  v305 = v164;

  if (v175)
  {
    v311 = v304;
    v312 = 0;
    LOBYTE(v306) = v295;
    *(&v306 + 1) = v296;
    sub_1D5C30060(0, &qword_1EC8862A0, sub_1D6665F70, &type metadata for FormatFlexBoxNodeAlignContent, type metadata accessor for FormatSelectorSimpleValue);
    sub_1D6665FC4();
    sub_1D72647EC();
    v103 = 0;
    v177 = v293;
    v176 = v294;

    sub_1D5D2CFE8(v176, type metadata accessor for FormatVersionRequirement);
    v47 = v297;
    v129 = v298;
    v49 = v299;
    goto LABEL_51;
  }

  sub_1D5D2CFE8(v294, type metadata accessor for FormatVersionRequirement);

  v103 = 0;
  v47 = v297;
  v129 = v298;
  v49 = v299;
LABEL_50:
  v177 = v293;
LABEL_51:
  v178 = v302;
  swift_beginAccess();
  v179 = *(v178 + 96);
  v180 = v178[13];
  v49(v177, v47, v129);
  swift_storeEnumTagMultiPayload();

  LODWORD(v295) = v179;
  v181 = sub_1D6DD7868(v179, 0);
  v305 = v103;
  if (v181)
  {
    v182 = sub_1D634D8B4(v180, MEMORY[0x1E69E7CC0]);

    if (v182)
    {
      sub_1D5D2CFE8(v293, type metadata accessor for FormatVersionRequirement);

      v183 = v303;
      v57 = v316;
      goto LABEL_62;
    }
  }

  else
  {
  }

  *&v296 = v180;
  v184 = v303;
  v185 = v316;
  v186 = &v316[*(v303 + 44)];
  v187 = *v186;
  v188 = *(v186 + 1);
  LOBYTE(v311) = 0;
  v189 = swift_allocObject();
  v304 = xmmword_1D72BAA80;
  *(v189 + 16) = xmmword_1D72BAA80;
  *(v189 + 32) = v311;
  *(v189 + 40) = v187;
  *(v189 + 48) = v188;
  sub_1D6665B58();
  v191 = v190;
  sub_1D5B58B84(&qword_1EDF031A8, sub_1D6665B58);

  v294 = v191;
  v192 = sub_1D72647CC();
  LOBYTE(v311) = 0;
  v193 = swift_allocObject();
  *(v193 + 16) = v192;
  *(v193 + 24) = v304;
  *(v193 + 40) = v311;
  v194 = __swift_project_boxed_opaque_existential_1((v185 + *(v184 + 36)), *(v185 + *(v184 + 36) + 24));
  MEMORY[0x1EEE9AC00](v194, v195);
  MEMORY[0x1EEE9AC00](v196, v197);
  *(&v284 - 4) = sub_1D5B4AA6C;
  *(&v284 - 3) = 0;
  v282 = sub_1D67088EC;
  v283 = v189;
  v198 = v293;
  v199 = v305;
  v201 = sub_1D5D2F7A4(v293, sub_1D615B49C, v200, sub_1D615B4A4, (&v284 - 6));
  v305 = v199;
  if (v199)
  {
    sub_1D5D2CFE8(v198, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v316, sub_1D6665AC4);
  }

  v202 = v201;
  v203 = v316;

  if ((v202 & 1) == 0)
  {
    sub_1D5D2CFE8(v293, type metadata accessor for FormatVersionRequirement);

    v57 = v203;
    goto LABEL_61;
  }

  v311 = v304;
  v312 = 0;
  LOBYTE(v306) = v295;
  *(&v306 + 1) = v296;
  sub_1D5C30060(0, &qword_1EDF24748, sub_1D6665E8C, &type metadata for FormatFlexBoxNodeAlignItems, type metadata accessor for FormatSelectorSimpleValue);
  sub_1D6665EE0();
  v57 = v203;
  v204 = v305;
  sub_1D72647EC();

  sub_1D5D2CFE8(v293, type metadata accessor for FormatVersionRequirement);
  if (v204)
  {
    return sub_1D5D2CFE8(v57, sub_1D6665AC4);
  }

  v305 = 0;
LABEL_61:
  v183 = v303;
  v47 = v297;
  v129 = v298;
LABEL_62:
  v205 = v302;
  swift_beginAccess();
  v206 = v205[14];
  v207 = v205[15];
  v208 = v291;
  v299(v291, v47, v129);
  swift_storeEnumTagMultiPayload();
  *&v306 = v206;
  *(&v306 + 1) = v207;

  if (_s8NewsFeed45FormatCodingSelectorFloatEquationZeroStrategyV12shouldEncode12wrappedValueSbAA0ce6SimpleM0VyAA0cG0VyAA0cF0OGG_tFZ_0(&v306))
  {
    v209 = (v57 + *(v183 + 44));
    v211 = *v209;
    v210 = v209[1];
    LOBYTE(v311) = 0;
    v212 = swift_allocObject();
    v304 = xmmword_1D72BAA90;
    *(v212 + 16) = xmmword_1D72BAA90;
    *(v212 + 32) = v311;
    *(v212 + 40) = v211;
    *(v212 + 48) = v210;
    sub_1D6665B58();
    v214 = v213;
    sub_1D5B58B84(&qword_1EDF031A8, sub_1D6665B58);

    v295 = v214;
    v215 = sub_1D72647CC();
    LOBYTE(v311) = 0;
    v216 = swift_allocObject();
    *(v216 + 16) = v215;
    *(v216 + 24) = v304;
    *(v216 + 40) = v311;
    v217 = __swift_project_boxed_opaque_existential_1((v57 + *(v183 + 36)), *(v57 + *(v183 + 36) + 24));
    *&v296 = &v284;
    MEMORY[0x1EEE9AC00](v217, v218);
    MEMORY[0x1EEE9AC00](v219, v220);
    *(&v284 - 4) = sub_1D5B4AA6C;
    *(&v284 - 3) = 0;
    v282 = sub_1D67088EC;
    v283 = v212;
    v221 = v291;
    v222 = v305;
    v224 = sub_1D5D2F7A4(v291, sub_1D615B49C, v223, sub_1D615B4A4, (&v284 - 6));
    v305 = v222;
    if (v222)
    {
      goto LABEL_74;
    }

    v225 = v316;
    v226 = v224;

    if (v226)
    {
      v311 = v304;
      v312 = 0;
      v315 = v306;
      sub_1D613BA94();
      sub_1D5B58B84(&qword_1EDF0BFA0, sub_1D613BA94);

      v57 = v225;
      v227 = v305;
      sub_1D72647EC();
      if (v227)
      {

        sub_1D5D2CFE8(v291, type metadata accessor for FormatVersionRequirement);
        v228 = v225;
LABEL_79:
        sub_1D5D2CFE8(v228, sub_1D6665AC4);
      }

      v305 = 0;

      sub_1D5D2CFE8(v291, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v291, type metadata accessor for FormatVersionRequirement);

      v57 = v225;
    }

    v183 = v303;
    v47 = v297;
    v129 = v298;
  }

  else
  {
    sub_1D5D2CFE8(v208, type metadata accessor for FormatVersionRequirement);
  }

  v229 = v302;
  swift_beginAccess();
  v230 = v229[16];
  v231 = v229[17];
  v232 = v290;
  v299(v290, v47, v129);
  swift_storeEnumTagMultiPayload();
  *&v306 = v230;
  *(&v306 + 1) = v231;

  if ((_s8NewsFeed45FormatCodingSelectorFloatEquationZeroStrategyV12shouldEncode12wrappedValueSbAA0ce6SimpleM0VyAA0cG0VyAA0cF0OGG_tFZ_0(&v306) & 1) == 0)
  {
    v249 = v57;
    sub_1D5D2CFE8(v232, type metadata accessor for FormatVersionRequirement);

    goto LABEL_82;
  }

  v233 = (v57 + *(v183 + 44));
  v235 = *v233;
  v234 = v233[1];
  LOBYTE(v311) = 0;
  v236 = swift_allocObject();
  v304 = xmmword_1D72BAAA0;
  *(v236 + 16) = xmmword_1D72BAAA0;
  *(v236 + 32) = v311;
  *(v236 + 40) = v235;
  *(v236 + 48) = v234;
  sub_1D6665B58();
  v238 = v237;
  v239 = sub_1D5B58B84(&qword_1EDF031A8, sub_1D6665B58);

  v295 = v239;
  *&v296 = v238;
  v240 = sub_1D72647CC();
  LOBYTE(v311) = 0;
  v241 = swift_allocObject();
  *(v241 + 16) = v240;
  *(v241 + 24) = v304;
  *(v241 + 40) = v311;
  v242 = __swift_project_boxed_opaque_existential_1((v57 + *(v183 + 36)), *(v57 + *(v183 + 36) + 24));
  MEMORY[0x1EEE9AC00](v242, v243);
  MEMORY[0x1EEE9AC00](v244, v245);
  *(&v284 - 4) = sub_1D5B4AA6C;
  *(&v284 - 3) = 0;
  v282 = sub_1D67088EC;
  v283 = v236;
  v221 = v290;
  v246 = v305;
  v248 = sub_1D5D2F7A4(v290, sub_1D615B49C, v247, sub_1D615B4A4, (&v284 - 6));
  v305 = v246;
  if (!v246)
  {
    v250 = v248;
    v249 = v316;

    if (v250)
    {
      v311 = v304;
      v312 = 0;
      v314 = v306;
      sub_1D613BA94();
      sub_1D5B58B84(&qword_1EDF0BFA0, sub_1D613BA94);

      v251 = v305;
      sub_1D72647EC();
      if (v251)
      {

        sub_1D5D2CFE8(v290, type metadata accessor for FormatVersionRequirement);
        v228 = v249;
        goto LABEL_79;
      }

      v305 = 0;
    }

    sub_1D5D2CFE8(v290, type metadata accessor for FormatVersionRequirement);

    v47 = v297;
    v129 = v298;
LABEL_82:
    v252 = v302;
    swift_beginAccess();
    v254 = v252[18];
    v253 = v252[19];
    v255 = *(v252 + 160);
    v256 = v252[21];
    v257 = v289;
    v299(v289, v47, v129);
    swift_storeEnumTagMultiPayload();
    *&v311 = v254;
    *(&v311 + 1) = v253;
    v312 = v255;
    v313 = v256;
    sub_1D5C75A4C(v254, v253, v255);

    if (_s8NewsFeed39FormatCodingSelectorBooleanTrueStrategyV12shouldEncode12wrappedValueSbAA0ce6SimpleL0VyAA0cF0OG_tFZ_0(&v311))
    {
      v300 = v254;
      v301 = v253;
      LODWORD(v299) = v255;
      v302 = v256;
      v258 = v303;
      v259 = v249;
      v260 = (v249 + *(v303 + 44));
      v262 = *v260;
      v261 = v260[1];
      LOBYTE(v306) = 0;
      v263 = swift_allocObject();
      v304 = xmmword_1D72BAAB0;
      *(v263 + 16) = xmmword_1D72BAAB0;
      *(v263 + 32) = v306;
      *(v263 + 40) = v262;
      *(v263 + 48) = v261;
      sub_1D6665B58();
      v265 = v264;
      sub_1D5B58B84(&qword_1EDF031A8, sub_1D6665B58);

      v298 = v265;
      v266 = sub_1D72647CC();
      LOBYTE(v306) = 0;
      v267 = swift_allocObject();
      *(v267 + 16) = v266;
      *(v267 + 24) = v304;
      *(v267 + 40) = v306;
      v268 = __swift_project_boxed_opaque_existential_1((v259 + *(v258 + 36)), *(v259 + *(v258 + 36) + 24));
      MEMORY[0x1EEE9AC00](v268, v269);
      MEMORY[0x1EEE9AC00](v270, v271);
      *(&v284 - 4) = sub_1D5B4AA6C;
      *(&v284 - 3) = 0;
      v282 = sub_1D67088EC;
      v283 = v263;
      v272 = v305;
      v274 = sub_1D5D2F7A4(v257, sub_1D615B49C, v273, sub_1D615B4A4, (&v284 - 6));
      v305 = v272;
      if (v272)
      {
        sub_1D5D2CFE8(v257, type metadata accessor for FormatVersionRequirement);

        sub_1D5D2CFE8(v259, sub_1D6665AC4);
        v275 = v300;
        v276 = v301;
        v277 = v299;
      }

      else
      {
        v278 = v274;

        v279 = v299;
        if (v278)
        {
          v309 = v304;
          v310 = 0;
          v306 = v311;
          v307 = v312;
          v308 = v313;
          sub_1D5C75A4C(v311, *(&v311 + 1), v312);
          sub_1D5C30060(0, &qword_1EC886290, sub_1D5FBA208, &type metadata for FormatBoolean, type metadata accessor for FormatSelectorSimpleValue);
          sub_1D6665DFC();

          v280 = v305;
          sub_1D72647EC();
          v305 = v280;
          v281 = v300;
          sub_1D5D2F2C8(v306, *(&v306 + 1), v307);

          sub_1D5D2CFE8(v289, type metadata accessor for FormatVersionRequirement);
          sub_1D5D2CFE8(v259, sub_1D6665AC4);
          v275 = v281;
        }

        else
        {
          sub_1D5D2CFE8(v289, type metadata accessor for FormatVersionRequirement);
          sub_1D5D2CFE8(v259, sub_1D6665AC4);
          v275 = v300;
        }

        v276 = v301;
        v277 = v279;
      }

      sub_1D5D2F2C8(v275, v276, v277);
    }

    else
    {
      sub_1D5D2CFE8(v257, type metadata accessor for FormatVersionRequirement);
      sub_1D5D2CFE8(v249, sub_1D6665AC4);
      sub_1D5D2F2C8(v254, v253, v255);
    }
  }

LABEL_74:
  sub_1D5D2CFE8(v221, type metadata accessor for FormatVersionRequirement);

  sub_1D5D2CFE8(v316, sub_1D6665AC4);
}

uint64_t FormatURLBinding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v52 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v51 = &v48 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v50 = &v48 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v48 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v48 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v48 - v22;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v1 + 8);
  v53 = *v1;
  v48 = *(v1 + 16);
  v49 = v28;
  v29 = *(v1 + 24);
  v30 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v30);
  v32 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatURLBinding, &type metadata for FormatCodingKeys, v33, v30, &type metadata for FormatURLBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v31, v27, v32, &off_1F51F6C78);
  if (v29 > 2)
  {
    if (v29 == 3)
    {
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v41 = sub_1D725BD1C();
      v42 = __swift_project_value_buffer(v41, qword_1EDFFCD68);
      v23 = v50;
      (*(*(v41 - 8) + 16))(v50, v42, v41);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63B368C(3, v53 & 1, v23);
    }

    else if (v29 == 4)
    {
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v37 = sub_1D725BD1C();
      v38 = __swift_project_value_buffer(v37, qword_1EDFFCD68);
      v23 = v51;
      (*(*(v37 - 8) + 16))(v51, v38, v37);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63B3824(4, v53, v23);
    }

    else
    {
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v45 = sub_1D725BD1C();
      v46 = __swift_project_value_buffer(v45, qword_1EDFFCE38);
      v23 = v52;
      (*(*(v45 - 8) + 16))(v52, v46, v45);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63B39B8(5, v23);
    }

    goto LABEL_24;
  }

  if (!v29)
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v39 = sub_1D725BD1C();
    v40 = __swift_project_value_buffer(v39, qword_1EDFFCD30);
    (*(*(v39 - 8) + 16))(v23, v40, v39);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63B31D4(0, v53, v49, v48, v23);
LABEL_24:
    v36 = v23;
    goto LABEL_25;
  }

  if (v29 == 1)
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v34 = sub_1D725BD1C();
    v35 = __swift_project_value_buffer(v34, qword_1EDFFCD68);
    (*(*(v34 - 8) + 16))(v19, v35, v34);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63B336C(1, v19);
    v36 = v19;
  }

  else
  {
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v43 = sub_1D725BD1C();
    v44 = __swift_project_value_buffer(v43, qword_1EDFFCD68);
    (*(*(v43 - 8) + 16))(v15, v44, v43);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63B34F8(2, v53, v15);
    v36 = v15;
  }

LABEL_25:
  sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v27, sub_1D5D30DC4);
}

uint64_t FormatOptionValue.encode(to:)(void *a1)
{
  sub_1D5C4E168();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v145 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8E028();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v144 = &v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v143 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v142 = &v133 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v139 = &v133 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v141 = &v133 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v138 = &v133 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v140 = &v133 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v136 = &v133 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v135 = &v133 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v137 = &v133 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v134 = &v133 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v133 = &v133 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v133 - v44;
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v133 - v48;
  MEMORY[0x1EEE9AC00](v50, v51);
  v53 = &v133 - v52;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v54 - 8, v55);
  v57 = &v133 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *v1;
  v59 = a1[3];
  v60 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v59);
  v61 = sub_1D5C30408();
  v146 = v57;
  sub_1D5D2EE70(&type metadata for FormatOptionValue, &type metadata for FormatCodingKeys, v62, v59, &type metadata for FormatOptionValue, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v60, v57, v61, &off_1F51F6C78);
  switch(v58 >> 60)
  {
    case 1uLL:
      v104 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v148[0] = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v148[1] = v104;
      v149 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      sub_1D66665DC(v148, v147);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v105 = sub_1D725BD1C();
      v106 = __swift_project_value_buffer(v105, qword_1EDFFCD30);
      (*(*(v105 - 8) + 16))(v49, v106, v105);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v69 = v146;
      sub_1D63B01A0(1, v148, v49);
      sub_1D6666638(v148);
      v70 = type metadata accessor for FormatVersionRequirement;
      v71 = v49;
      break;
    case 2uLL:
      v91 = swift_projectBox();
      v81 = v144;
      sub_1D6706BB4(v91, v144, sub_1D5C8E028);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v92 = sub_1D725BD1C();
      v93 = __swift_project_value_buffer(v92, qword_1EDFFCD30);
      (*(*(v92 - 8) + 16))(v45, v93, v92);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v69 = v146;
      sub_1D63B0340(2, v81, v45);
      sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);
      v94 = sub_1D5C8E028;
      goto LABEL_49;
    case 3uLL:
      v95 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v96 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v97 = qword_1EDF31EB0;

      if (v97 != -1)
      {
        swift_once();
      }

      v98 = sub_1D725BD1C();
      v99 = __swift_project_value_buffer(v98, qword_1EDFFCD30);
      v75 = v133;
      (*(*(v98 - 8) + 16))(v133, v99, v98);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v69 = v146;
      sub_1D63B0514(3, v96, v75, v95);

      goto LABEL_43;
    case 4uLL:
      v77 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v76 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v78 = qword_1EDF31EB0;

      if (v78 != -1)
      {
        swift_once();
      }

      v79 = sub_1D725BD1C();
      v80 = __swift_project_value_buffer(v79, qword_1EDFFCD30);
      v81 = v134;
      (*(*(v79 - 8) + 16))(v134, v80, v79);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v82 = v77;
      v69 = v146;
      sub_1D63B06EC(4, v82, v76, v81);
      goto LABEL_32;
    case 5uLL:
      v108 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v107 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v109 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v110 = qword_1EDF31EB0;

      if (v110 != -1)
      {
        swift_once();
      }

      v111 = sub_1D725BD1C();
      v112 = __swift_project_value_buffer(v111, qword_1EDFFCD30);
      v81 = v137;
      (*(*(v111 - 8) + 16))(v137, v112, v111);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v113 = v108;
      v69 = v146;
      sub_1D63B08B4(5, v113, v107, v109, v81);

LABEL_32:

      goto LABEL_48;
    case 6uLL:
      v118 = swift_projectBox();
      v75 = v145;
      sub_1D6706BB4(v118, v145, sub_1D5C4E168);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v119 = sub_1D725BD1C();
      v120 = __swift_project_value_buffer(v119, qword_1EDFFCD30);
      v121 = v135;
      (*(*(v119 - 8) + 16))(v135, v120, v119);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v69 = v146;
      sub_1D63B0A80(6, v75, v121);
      sub_1D5D2CFE8(v121, type metadata accessor for FormatVersionRequirement);
      v122 = sub_1D5C4E168;
      goto LABEL_44;
    case 7uLL:
      v100 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v101 = qword_1EDF31EB0;

      if (v101 != -1)
      {
        swift_once();
      }

      v102 = sub_1D725BD1C();
      v103 = __swift_project_value_buffer(v102, qword_1EDFFCD30);
      v75 = v136;
      (*(*(v102 - 8) + 16))(v136, v103, v102);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v69 = v146;
      sub_1D63B0C54(7, v100, v75);
      goto LABEL_42;
    case 8uLL:
      v127 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v128 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v129 = qword_1EDF31F10;

      if (v129 != -1)
      {
        swift_once();
      }

      v130 = sub_1D725BD1C();
      v131 = __swift_project_value_buffer(v130, qword_1EDFFCDF8);
      v81 = v140;
      (*(*(v130 - 8) + 16))(v140, v131, v130);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v69 = v146;
      sub_1D63B0DE8(8, v127, v128, v81);

LABEL_48:
      v94 = type metadata accessor for FormatVersionRequirement;
LABEL_49:
      v70 = v94;
      v71 = v81;
      break;
    case 9uLL:
      v87 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v88 = qword_1EDF31EE8;

      if (v88 != -1)
      {
        swift_once();
      }

      v89 = sub_1D725BD1C();
      v90 = __swift_project_value_buffer(v89, qword_1EDFFCD98);
      v75 = v138;
      (*(*(v89 - 8) + 16))(v138, v90, v89);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v69 = v146;
      sub_1D63B0FB4(9, v87, v75);
      goto LABEL_42;
    case 0xAuLL:
      v123 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v124 = qword_1EDF31EE8;

      if (v124 != -1)
      {
        swift_once();
      }

      v125 = sub_1D725BD1C();
      v126 = __swift_project_value_buffer(v125, qword_1EDFFCD98);
      v75 = v141;
      (*(*(v125 - 8) + 16))(v141, v126, v125);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v69 = v146;
      sub_1D63B1148(10, v123, v75);
      goto LABEL_42;
    case 0xBuLL:
      v72 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v73 = sub_1D725BD1C();
      v74 = __swift_project_value_buffer(v73, qword_1EDFFCD50);
      v75 = v139;
      (*(*(v73 - 8) + 16))(v139, v74, v73);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v69 = v146;
      sub_1D63B12DC(11, v72, v75);
      goto LABEL_43;
    case 0xCuLL:
      v83 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v84 = qword_1EDF31ED0;

      if (v84 != -1)
      {
        swift_once();
      }

      v85 = sub_1D725BD1C();
      v86 = __swift_project_value_buffer(v85, qword_1EDFFCD50);
      v75 = v142;
      (*(*(v85 - 8) + 16))(v142, v86, v85);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v69 = v146;
      sub_1D63B14B0(12, v83, v75);
      goto LABEL_42;
    case 0xDuLL:
      v114 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v115 = qword_1EDF31E98;

      if (v115 != -1)
      {
        swift_once();
      }

      v116 = sub_1D725BD1C();
      v117 = __swift_project_value_buffer(v116, qword_1EDFFCD00);
      v75 = v143;
      (*(*(v116 - 8) + 16))(v143, v117, v116);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v69 = v146;
      sub_1D63B1644(13, v114, v75);
LABEL_42:

LABEL_43:
      v122 = type metadata accessor for FormatVersionRequirement;
LABEL_44:
      v70 = v122;
      v71 = v75;
      break;
    default:
      v63 = *(v58 + 16);
      v64 = *(v58 + 24);
      v65 = qword_1EDF31EB0;

      if (v65 != -1)
      {
        swift_once();
      }

      v66 = sub_1D725BD1C();
      v67 = __swift_project_value_buffer(v66, qword_1EDFFCD30);
      (*(*(v66 - 8) + 16))(v53, v67, v66);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v68 = v63;
      v69 = v146;
      sub_1D63AFFD4(0, v68, v64, v53);

      v70 = type metadata accessor for FormatVersionRequirement;
      v71 = v53;
      break;
  }

  sub_1D5D2CFE8(v71, v70);
  return sub_1D5D2CFE8(v69, sub_1D5D30DC4);
}

uint64_t FormatURL.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v58 = &v58 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v58 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v58 - v16;
  v18 = type metadata accessor for FormatAbsoluteURL();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v1;
  v28 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v29 = sub_1D5C30408();
  v59 = v25;
  sub_1D5D2EE70(&type metadata for FormatURL, &type metadata for FormatCodingKeys, v30, v28, &type metadata for FormatURL, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v27, v25, v29, &off_1F51F6C78);
  v31 = v26 >> 62;
  if ((v26 >> 62) > 1)
  {
    if (v31 == 2)
    {
      v38 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v39 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v40 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v41 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      sub_1D5D27950(v38, v39, v40, v41);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v42 = sub_1D725BD1C();
      v43 = __swift_project_value_buffer(v42, qword_1EDFFCD30);
      v44 = v58;
      (*(*(v42 - 8) + 16))(v58, v43, v42);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v35 = v59;
      sub_1D5D39884(2, v38, v39, v40, v41, v44);
      sub_1D5D28C84(v38, v39, v40, v41);
      v36 = type metadata accessor for FormatVersionRequirement;
      v37 = v44;
    }

    else
    {
      v52 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v53 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v54 = qword_1EDF31F38;

      if (v54 != -1)
      {
        swift_once();
      }

      v55 = sub_1D725BD1C();
      v56 = __swift_project_value_buffer(v55, qword_1EDFFCE38);
      (*(*(v55 - 8) + 16))(v6, v56, v55);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v35 = v59;
      sub_1D6385B58(3, v52, v53, v6);

      v36 = type metadata accessor for FormatVersionRequirement;
      v37 = v6;
    }
  }

  else if (v31)
  {
    v45 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v46 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v47 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v48 = qword_1EDF31EB0;

    if (v48 != -1)
    {
      swift_once();
    }

    v49 = sub_1D725BD1C();
    v50 = __swift_project_value_buffer(v49, qword_1EDFFCD30);
    (*(*(v49 - 8) + 16))(v13, v50, v49);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v51 = v45;
    v35 = v59;
    sub_1D63859C0(1, v51, v46, v47, v13);

    v36 = type metadata accessor for FormatVersionRequirement;
    v37 = v13;
  }

  else
  {
    v32 = swift_projectBox();
    sub_1D6706BB4(v32, v21, type metadata accessor for FormatAbsoluteURL);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCD30);
    (*(*(v33 - 8) + 16))(v17, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v35 = v59;
    sub_1D63857EC(0, v21, v17);
    sub_1D5D2CFE8(v17, type metadata accessor for FormatVersionRequirement);
    v36 = type metadata accessor for FormatAbsoluteURL;
    v37 = v21;
  }

  sub_1D5D2CFE8(v37, v36);
  return sub_1D5D2CFE8(v35, sub_1D5D30DC4);
}

uint64_t FormatTextNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  *&v452 = &v423 - v7;
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v425 = &v423 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v426 = &v423 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v427 = &v423 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v428 = &v423 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v430 = &v423 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v429 = &v423 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v431 = &v423 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v432 = &v423 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v433 = &v423 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v434 = &v423 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v437 = &v423 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v438 = (&v423 - v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  v439 = (&v423 - v46);
  MEMORY[0x1EEE9AC00](v47, v48);
  v440 = (&v423 - v49);
  MEMORY[0x1EEE9AC00](v50, v51);
  v441 = &v423 - v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  *&v451 = &v423 - v55;
  MEMORY[0x1EEE9AC00](v56, v57);
  v59 = &v423 - v58;
  sub_1D66666E0();
  v450 = v60;
  MEMORY[0x1EEE9AC00](v60, v61);
  v63 = &v423 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a1[3];
  v65 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v64);
  sub_1D5C88CD0();
  v67 = v66;
  v68 = sub_1D5B58B84(&qword_1EDF24BF8, sub_1D5C88CD0);
  v473 = v63;
  sub_1D5D2EE70(v4, v67, v69, v64, v4, v67, &type metadata for FormatVersions.JazzkonC, v65, v63, v68, &off_1F51F6C78);
  swift_beginAccess();
  v448 = v2;
  v70 = v2[2];
  v71 = v2[3];
  v72 = qword_1EDF31EB0;

  if (v72 != -1)
  {
    swift_once();
  }

  v73 = sub_1D725BD1C();
  v74 = __swift_project_value_buffer(v73, qword_1EDFFCD30);
  v75 = *(v73 - 8);
  v76 = *(v75 + 16);
  v77 = v75 + 16;
  v449 = v73;
  v76(v59, v74, v73);
  v78 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v79 = v452;
  v443 = v70;
  sub_1D725892C();
  v80 = sub_1D725895C();
  v81 = (*(*(v80 - 8) + 48))(v79, 1, v80);
  v445 = v76;
  v446 = v77;
  v447 = v78;
  v444 = v74;
  if (v81 == 1)
  {
    sub_1D5D35558(v452, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v82 = v450;
    v83 = v473;
    v84 = &v473[*(v450 + 11)];
    v85 = v59;
    v87 = *v84;
    v86 = *(v84 + 1);
    LOBYTE(v464) = 0;
    v88 = swift_allocObject();
    *(v88 + 16) = 0;
    *(v88 + 24) = 0;
    *(v88 + 32) = v464;
    *(v88 + 40) = v87;
    *(v88 + 48) = v86;
    sub_1D5E1C3D8(0);
    v90 = v89;
    v91 = sub_1D5B58B84(&qword_1EDF02AB8, sub_1D5E1C3D8);

    *&v452 = v90;
    v442 = v91;
    v92 = sub_1D72647CC();
    LOBYTE(v464) = 0;
    v93 = swift_allocObject();
    *(v93 + 24) = 0;
    *(v93 + 32) = 0;
    *(v93 + 16) = v92;
    *(v93 + 40) = v464;
    v94 = __swift_project_boxed_opaque_existential_1((v83 + *(v82 + 9)), *(v83 + *(v82 + 9) + 24));
    MEMORY[0x1EEE9AC00](v94, v95);
    MEMORY[0x1EEE9AC00](v96, v97);
    *(&v423 - 4) = sub_1D5B4AA6C;
    *(&v423 - 3) = 0;
    v421 = sub_1D6666774;
    v422 = v88;
    v98 = v453;
    v100 = sub_1D5D2F7A4(v85, sub_1D615B49C, v99, sub_1D615B4A4, (&v423 - 6));
    *&v453 = v98;
    if (v98)
    {
      sub_1D5D2CFE8(v85, type metadata accessor for FormatVersionRequirement);

      v101 = v83;
      return sub_1D5D2CFE8(v101, sub_1D66666E0);
    }

    v127 = v100;
    v436 = v85;

    if (v127)
    {
      v464 = 0uLL;
      LOBYTE(v465) = 0;
      v471 = v443;
      v472 = v71;
      v128 = v473;
      v129 = v453;
      sub_1D72647EC();
      *&v453 = v129;
      v76 = v445;
      v74 = v444;
      if (v129)
      {

        sub_1D5D2CFE8(v436, type metadata accessor for FormatVersionRequirement);
        v101 = v128;
        return sub_1D5D2CFE8(v101, sub_1D66666E0);
      }

      sub_1D5D2CFE8(v436, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v436, type metadata accessor for FormatVersionRequirement);

      v76 = v445;
      v74 = v444;
    }
  }

  else
  {
    sub_1D5D2CFE8(v59, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v452, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  v103 = v448[4];
  v76(v451, v74, v449);
  swift_storeEnumTagMultiPayload();
  v471 = v103;
  v452 = xmmword_1D728CF30;
  v464 = xmmword_1D728CF30;
  LOBYTE(v465) = 0;
  v104 = v450;
  v105 = v473;
  v106 = &v473[*(v450 + 11)];
  v107 = *v106;
  v108 = *(v106 + 1);
  LOBYTE(v462) = 0;
  v109 = swift_allocObject();
  v443 = &v423;
  *(v109 + 16) = v452;
  *(v109 + 32) = v462;
  *(v109 + 40) = v107;
  *(v109 + 48) = v108;
  MEMORY[0x1EEE9AC00](v109, v110);
  v442 = &v423 - 6;
  *(&v423 - 4) = sub_1D5B4AA6C;
  *(&v423 - 3) = 0;
  v421 = sub_1D67088F0;
  v422 = v111;
  LOBYTE(v462) = 0;
  v112 = swift_allocObject();
  *(v112 + 16) = v452;
  *(v112 + 32) = v462;
  v424 = v107;
  *(v112 + 40) = v107;
  *(v112 + 48) = v108;
  sub_1D5E1C3D8(0);
  v114 = v113;
  v115 = sub_1D5B58B84(&qword_1EDF02AB8, sub_1D5E1C3D8);
  swift_retain_n();
  v435 = v114;
  v436 = v115;
  v116 = sub_1D72647CC();
  LOBYTE(v462) = 0;
  v117 = swift_allocObject();
  *(v117 + 16) = v116;
  *(v117 + 24) = v452;
  *(v117 + 40) = v462;
  v118 = (v105 + *(v104 + 9));
  v119 = __swift_project_boxed_opaque_existential_1(v118, v118[3]);
  MEMORY[0x1EEE9AC00](v119, v120);
  MEMORY[0x1EEE9AC00](v121, v122);
  v123 = v442;
  *(&v423 - 4) = sub_1D615B4A4;
  *(&v423 - 3) = v123;
  v421 = sub_1D67088F0;
  v422 = v112;
  v124 = v451;
  v125 = v453;
  sub_1D5D2BC70(v451, sub_1D615B49C, v126, sub_1D615B4A4, (&v423 - 6));
  if (v125)
  {
    sub_1D5D2CFE8(v124, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v473, sub_1D66666E0);
  }

  v450 = v118;
  *&v452 = v108;

  sub_1D6666804();
  sub_1D72647EC();
  *&v453 = 0;
  sub_1D5D2CFE8(v451, type metadata accessor for FormatVersionRequirement);

  v130 = v448;
  v131 = v448[5];
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v132 = v449;
  v133 = __swift_project_value_buffer(v449, qword_1EDFFCD68);
  v134 = v441;
  v135 = v445;
  v445(v441, v133, v132);
  swift_storeEnumTagMultiPayload();
  v451 = xmmword_1D7297410;
  v464 = xmmword_1D7297410;
  LOBYTE(v465) = 0;
  LOBYTE(v471) = 0;
  v136 = swift_allocObject();
  v138 = v136;
  *(v136 + 16) = v451;
  *(v136 + 32) = v471;
  v139 = v424;
  v140 = v452;
  *(v136 + 40) = v424;
  *(v136 + 48) = v140;
  if (v131)
  {
    v443 = &v423;
    v471 = v131;
    MEMORY[0x1EEE9AC00](v136, v137);
    *(&v423 - 4) = sub_1D5B4AA6C;
    *(&v423 - 3) = 0;
    v421 = sub_1D67088F0;
    v422 = v138;
    LOBYTE(v462) = 0;
    v141 = swift_allocObject();
    *(v141 + 16) = v451;
    *(v141 + 32) = v462;
    *(v141 + 40) = v139;
    *(v141 + 48) = v140;
    swift_retain_n();

    v142 = sub_1D72647CC();
    LOBYTE(v462) = 0;
    v143 = swift_allocObject();
    *(v143 + 16) = v142;
    *(v143 + 24) = v451;
    *(v143 + 40) = v462;
    v144 = __swift_project_boxed_opaque_existential_1(v450, v450[3]);
    MEMORY[0x1EEE9AC00](v144, v145);
    MEMORY[0x1EEE9AC00](v146, v147);
    *(&v423 - 4) = sub_1D615B4A4;
    *(&v423 - 3) = (&v423 - 6);
    v421 = sub_1D67088F0;
    v422 = v141;
    v148 = v453;
    v150 = sub_1D5D2F7A4(v134, sub_1D615B49C, v149, sub_1D615B4A4, (&v423 - 6));
    v151 = v148;
    if (v148)
    {

      v152 = v473;

      v153 = v134;
LABEL_37:
      sub_1D5D2CFE8(v153, type metadata accessor for FormatVersionRequirement);
      v101 = v152;
      return sub_1D5D2CFE8(v101, sub_1D66666E0);
    }

    v155 = v150;

    if (v155)
    {
      sub_1D6659D24();
      sub_1D72647EC();
      v130 = v448;
      v154 = v445;
    }

    else
    {

      v130 = v448;
      v154 = v445;
    }

    v140 = v452;
  }

  else
  {
    v154 = v135;

    v151 = v453;
  }

  sub_1D5D2CFE8(v134, type metadata accessor for FormatVersionRequirement);
  swift_beginAccess();
  v156 = v130[6];
  v157 = v440;
  v158 = v154;
  v154(v440, v444, v449);
  swift_storeEnumTagMultiPayload();
  if (*(v156 + 16))
  {
    LOBYTE(v464) = 0;
    v159 = swift_allocObject();
    v453 = xmmword_1D72BAA60;
    *(v159 + 16) = xmmword_1D72BAA60;
    *(v159 + 32) = v464;
    *(v159 + 40) = v424;
    *(v159 + 48) = v140;

    v160 = v473;
    v161 = sub_1D72647CC();
    LOBYTE(v464) = 0;
    v162 = swift_allocObject();
    *(v162 + 16) = v161;
    *(v162 + 24) = v453;
    *(v162 + 40) = v464;
    v163 = __swift_project_boxed_opaque_existential_1(v450, v450[3]);
    *&v451 = &v423;
    MEMORY[0x1EEE9AC00](v163, v164);
    MEMORY[0x1EEE9AC00](v165, v166);
    *(&v423 - 4) = sub_1D5B4AA6C;
    *(&v423 - 3) = 0;
    v421 = sub_1D67088F0;
    v422 = v159;
    v168 = sub_1D5D2F7A4(v157, sub_1D615B49C, v167, sub_1D615B4A4, (&v423 - 6));
    if (v151)
    {
      sub_1D5D2CFE8(v157, type metadata accessor for FormatVersionRequirement);

      v101 = v160;
      return sub_1D5D2CFE8(v101, sub_1D66666E0);
    }

    v170 = v168;

    v169 = v438;
    if (v170)
    {
      v464 = v453;
      LOBYTE(v465) = 0;
      *&v462 = v156;
      sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
      sub_1D6659C88();
      sub_1D72647EC();
      v130 = v448;
      v158 = v445;
      *&v453 = 0;

      sub_1D5D2CFE8(v440, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      *&v453 = 0;
      sub_1D5D2CFE8(v440, type metadata accessor for FormatVersionRequirement);

      v130 = v448;
      v158 = v445;
    }

    v140 = v452;
  }

  else
  {
    *&v453 = v151;
    sub_1D5D2CFE8(v157, type metadata accessor for FormatVersionRequirement);
    v169 = v438;
  }

  v171 = v130[7];
  v158(v439, v444, v449);
  swift_storeEnumTagMultiPayload();
  v451 = xmmword_1D72BAA70;
  v464 = xmmword_1D72BAA70;
  LOBYTE(v465) = 0;
  LOBYTE(v462) = 0;
  v172 = swift_allocObject();
  v174 = v172;
  *(v172 + 16) = v451;
  *(v172 + 32) = v462;
  v175 = v424;
  *(v172 + 40) = v424;
  *(v172 + 48) = v140;
  if (v171)
  {
    v443 = &v423;
    *&v462 = v171;
    MEMORY[0x1EEE9AC00](v172, v173);
    v176 = v171;
    *(&v423 - 4) = sub_1D5B4AA6C;
    *(&v423 - 3) = 0;
    v421 = sub_1D67088F0;
    v422 = v174;
    LOBYTE(v461) = 0;
    v177 = swift_allocObject();
    *(v177 + 16) = v451;
    *(v177 + 32) = v461;
    *(v177 + 40) = v175;
    *(v177 + 48) = v140;
    swift_retain_n();

    v178 = sub_1D72647CC();
    LOBYTE(v461) = 0;
    v179 = swift_allocObject();
    *(v179 + 16) = v178;
    *(v179 + 24) = v451;
    *(v179 + 40) = v461;
    v180 = __swift_project_boxed_opaque_existential_1(v450, v450[3]);
    MEMORY[0x1EEE9AC00](v180, v181);
    MEMORY[0x1EEE9AC00](v182, v183);
    *(&v423 - 4) = sub_1D615B4A4;
    *(&v423 - 3) = (&v423 - 6);
    v421 = sub_1D67088F0;
    v422 = v177;
    v184 = v439;
    v185 = v453;
    v187 = sub_1D5D2F7A4(v439, sub_1D615B49C, v186, sub_1D615B4A4, (&v423 - 6));
    v188 = v185;
    if (v185)
    {

      v152 = v473;
      v153 = v184;
      goto LABEL_37;
    }

    v189 = v187;

    if (v189)
    {
      *&v453 = v176;
      type metadata accessor for FormatTextNodeStyle();
      sub_1D5B58B84(&qword_1EDF0F888, type metadata accessor for FormatTextNodeStyle);
      sub_1D72647EC();
      v130 = v448;
      v158 = v445;
      v169 = v438;
    }

    else
    {

      v130 = v448;
      v158 = v445;
      v169 = v438;
    }
  }

  else
  {

    v188 = v453;
    v184 = v439;
  }

  sub_1D5D2CFE8(v184, type metadata accessor for FormatVersionRequirement);
  v190 = v130[8];
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v442 = __swift_project_value_buffer(v449, qword_1EDFFCD50);
  (v158)(v169);
  swift_storeEnumTagMultiPayload();
  v451 = xmmword_1D72BAA80;
  v464 = xmmword_1D72BAA80;
  LOBYTE(v465) = 0;
  LOBYTE(v462) = 0;
  v191 = swift_allocObject();
  v193 = v191;
  *(v191 + 16) = v451;
  *(v191 + 32) = v462;
  v194 = v424;
  v195 = v452;
  *(v191 + 40) = v424;
  *(v191 + 48) = v195;
  *&v453 = v188;
  if (v190)
  {
    v443 = &v423;
    *&v462 = v190;
    MEMORY[0x1EEE9AC00](v191, v192);
    *(&v423 - 4) = sub_1D5B4AA6C;
    *(&v423 - 3) = 0;
    v421 = sub_1D67088F0;
    v422 = v193;
    LOBYTE(v461) = 0;
    v197 = v196;
    v198 = swift_allocObject();
    *(v198 + 16) = v451;
    *(v198 + 32) = v461;
    *(v198 + 40) = v194;
    *(v198 + 48) = v195;
    swift_retain_n();

    v199 = sub_1D72647CC();
    LOBYTE(v461) = 0;
    v200 = swift_allocObject();
    *(v200 + 16) = v199;
    *(v200 + 24) = v451;
    *(v200 + 40) = v461;
    v201 = __swift_project_boxed_opaque_existential_1(v450, v450[3]);
    MEMORY[0x1EEE9AC00](v201, v202);
    MEMORY[0x1EEE9AC00](v203, v204);
    *(&v423 - 4) = sub_1D615B4A4;
    *(&v423 - 3) = (&v423 - 6);
    v421 = sub_1D67088F0;
    v422 = v198;
    v205 = v453;
    v207 = sub_1D5D2F7A4(v197, sub_1D615B49C, v206, sub_1D615B4A4, (&v423 - 6));
    if (v205)
    {

      v208 = v473;
      sub_1D5D2CFE8(v438, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v208, sub_1D66666E0);
    }

    v210 = v207;

    if (v210)
    {
      type metadata accessor for FormatAnimationNodeStyle();
      sub_1D5B58B84(&unk_1EDF0D098, type metadata accessor for FormatAnimationNodeStyle);
      sub_1D72647EC();
      v130 = v448;
      v158 = v445;
      v211 = v437;
      *&v453 = 0;

      v209 = v452;
      goto LABEL_52;
    }

    *&v453 = 0;

    v130 = v448;
    v158 = v445;
    v209 = v452;
  }

  else
  {

    v209 = v195;
  }

  v211 = v437;
LABEL_52:

  sub_1D5D2CFE8(v438, type metadata accessor for FormatVersionRequirement);
  v212 = v130[9];
  v158(v211, v444, v449);
  swift_storeEnumTagMultiPayload();
  *&v462 = v212;
  v451 = xmmword_1D72BAA90;
  v464 = xmmword_1D72BAA90;
  LOBYTE(v465) = 0;
  LOBYTE(v461) = 0;
  v213 = swift_allocObject();
  v443 = &v423;
  *(v213 + 16) = v451;
  *(v213 + 32) = v461;
  v214 = v424;
  *(v213 + 40) = v424;
  *(v213 + 48) = v209;
  MEMORY[0x1EEE9AC00](v213, v215);
  *(&v423 - 4) = sub_1D5B4AA6C;
  *(&v423 - 3) = 0;
  v421 = sub_1D67088F0;
  v422 = v216;
  LOBYTE(v461) = 0;
  v217 = swift_allocObject();
  *(v217 + 16) = v451;
  *(v217 + 32) = v461;
  *(v217 + 40) = v214;
  *(v217 + 48) = v209;
  swift_retain_n();
  v218 = v473;
  v219 = sub_1D72647CC();
  LOBYTE(v461) = 0;
  v220 = swift_allocObject();
  *(v220 + 16) = v219;
  *(v220 + 24) = v451;
  *(v220 + 40) = v461;
  v221 = __swift_project_boxed_opaque_existential_1(v450, v450[3]);
  MEMORY[0x1EEE9AC00](v221, v222);
  MEMORY[0x1EEE9AC00](v223, v224);
  *(&v423 - 4) = sub_1D615B4A4;
  *(&v423 - 3) = (&v423 - 6);
  v421 = sub_1D67088F0;
  v422 = v217;
  v225 = v453;
  sub_1D5D2BC70(v211, sub_1D615B49C, v226, sub_1D615B4A4, (&v423 - 6));
  if (v225)
  {
    sub_1D5D2CFE8(v211, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v218, sub_1D66666E0);
  }

  sub_1D5C76E3C();
  sub_1D72647EC();
  *&v453 = 0;
  sub_1D5D2CFE8(v437, type metadata accessor for FormatVersionRequirement);

  v227 = v448[10];
  v228 = v448[11];
  v229 = v448[12];
  v443 = v448[13];
  v230 = v448[14];
  v440 = v448[15];
  v441 = v230;
  v231 = *(v448 + 64) | (*(v448 + 130) << 16);
  if (qword_1EDF31F10 != -1)
  {
    swift_once();
  }

  v232 = v449;
  v233 = __swift_project_value_buffer(v449, qword_1EDFFCDF8);
  v234 = v434;
  v445(v434, v233, v232);
  swift_storeEnumTagMultiPayload();
  v451 = xmmword_1D72BAAA0;
  v462 = xmmword_1D72BAAA0;
  v463 = 0;
  LOBYTE(v464) = 0;
  v235 = swift_allocObject();
  v237 = v235;
  *(v235 + 16) = v451;
  *(v235 + 32) = v464;
  v238 = v424;
  v239 = v452;
  *(v235 + 40) = v424;
  *(v235 + 48) = v239;
  if (((v231 >> 17) & 0x7F) == 0x7F)
  {

    v240 = v453;
    v241 = v448;
    v242 = v445;
    v243 = v433;
    v244 = v234;
    v245 = v473;
  }

  else
  {
    v439 = &v423;
    *&v464 = v227;
    *(&v464 + 1) = v228;
    v465 = v229;
    v466 = v443;
    v467 = v441;
    v468 = v440;
    v469 = v231;
    v470 = BYTE2(v231);
    MEMORY[0x1EEE9AC00](v235, v236);
    v438 = &v423 - 6;
    *(&v423 - 4) = sub_1D5B4AA6C;
    *(&v423 - 3) = 0;
    v421 = sub_1D67088F0;
    v422 = v237;
    LOBYTE(v461) = 0;
    v246 = v227;
    v247 = swift_allocObject();
    *(v247 + 16) = v451;
    *(v247 + 32) = v461;
    *(v247 + 40) = v238;
    *(v247 + 48) = v239;
    swift_retain_n();
    sub_1D6046038(v246, v228, v229, v443, v441, v440, v231);
    v245 = v473;
    v248 = sub_1D72647CC();
    LOBYTE(v461) = 0;
    v249 = swift_allocObject();
    *(v249 + 16) = v248;
    *(v249 + 24) = v451;
    *(v249 + 40) = v461;
    v250 = __swift_project_boxed_opaque_existential_1(v450, v450[3]);
    MEMORY[0x1EEE9AC00](v250, v251);
    MEMORY[0x1EEE9AC00](v252, v253);
    v254 = v438;
    *(&v423 - 4) = sub_1D615B4A4;
    *(&v423 - 3) = v254;
    v421 = sub_1D67088F0;
    v422 = v247;
    v255 = v453;
    sub_1D5D2F7A4(v234, sub_1D615B49C, v256, sub_1D615B4A4, (&v423 - 6));
    if (v255)
    {

      sub_1D5D0A678(v464, *(&v464 + 1), v465, v466, v467, v468, v469 | (v470 << 16));
      sub_1D5D2CFE8(v434, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v245, sub_1D66666E0);
    }

    sub_1D66621E8();
    sub_1D72647EC();

    sub_1D5D0A678(v464, *(&v464 + 1), v465, v466, v467, v468, v469 | (v470 << 16));
    v241 = v448;
    v242 = v445;
    v243 = v433;
    v244 = v434;
    v240 = 0;
  }

  sub_1D5D2CFE8(v244, type metadata accessor for FormatVersionRequirement);
  swift_beginAccess();
  v257 = v241[17];
  v242(v243, v444, v449);
  swift_storeEnumTagMultiPayload();
  if (v257)
  {
    v443 = v257;
    LOBYTE(v464) = 0;
    v258 = swift_allocObject();
    v451 = xmmword_1D72BAAB0;
    *(v258 + 16) = xmmword_1D72BAAB0;
    *(v258 + 32) = v464;
    *(v258 + 40) = v424;
    *(v258 + 48) = v452;

    v259 = sub_1D72647CC();
    LOBYTE(v464) = 0;
    v260 = v243;
    v261 = swift_allocObject();
    *(v261 + 16) = v259;
    *(v261 + 24) = v451;
    *(v261 + 40) = v464;
    v262 = __swift_project_boxed_opaque_existential_1(v450, v450[3]);
    MEMORY[0x1EEE9AC00](v262, v263);
    MEMORY[0x1EEE9AC00](v264, v265);
    *(&v423 - 4) = sub_1D5B4AA6C;
    *(&v423 - 3) = 0;
    v421 = sub_1D67088F0;
    v422 = v258;
    v267 = sub_1D5D2F7A4(v260, sub_1D615B49C, v266, sub_1D615B4A4, (&v423 - 6));
    *&v453 = v240;
    if (v240)
    {
      sub_1D5D2CFE8(v260, type metadata accessor for FormatVersionRequirement);

LABEL_74:
      v101 = v245;
      return sub_1D5D2CFE8(v101, sub_1D66666E0);
    }

    v269 = v267;

    if (v269)
    {
      v464 = v451;
      LOBYTE(v465) = 0;
      v461 = v443;
      v270 = v453;
      sub_1D72647EC();
      if (v270)
      {
        sub_1D5D2CFE8(v433, type metadata accessor for FormatVersionRequirement);
        v101 = v245;
        return sub_1D5D2CFE8(v101, sub_1D66666E0);
      }

      *&v453 = 0;
    }

    sub_1D5D2CFE8(v433, type metadata accessor for FormatVersionRequirement);
    v242 = v445;
    v268 = v452;
  }

  else
  {
    *&v453 = v240;
    sub_1D5D2CFE8(v243, type metadata accessor for FormatVersionRequirement);
    v268 = v452;
  }

  v271 = v448;
  swift_beginAccess();
  v272 = v271[18];
  v273 = v432;
  v242(v432, v442, v449);
  swift_storeEnumTagMultiPayload();
  v274 = v424;
  if (v272 == 0x8000000000000000)
  {
    sub_1D5D2CFE8(v273, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    LOBYTE(v464) = 0;
    v275 = swift_allocObject();
    v451 = xmmword_1D72BAAC0;
    *(v275 + 16) = xmmword_1D72BAAC0;
    *(v275 + 32) = v464;
    *(v275 + 40) = v274;
    *(v275 + 48) = v268;

    sub_1D5EB1500(v272);
    v276 = sub_1D72647CC();
    LOBYTE(v464) = 0;
    v277 = swift_allocObject();
    *(v277 + 16) = v276;
    *(v277 + 24) = v451;
    *(v277 + 40) = v464;
    v278 = __swift_project_boxed_opaque_existential_1(v450, v450[3]);
    MEMORY[0x1EEE9AC00](v278, v279);
    MEMORY[0x1EEE9AC00](v280, v281);
    *(&v423 - 4) = sub_1D5B4AA6C;
    *(&v423 - 3) = 0;
    v421 = sub_1D67088F0;
    v422 = v275;
    v282 = v453;
    v284 = sub_1D5D2F7A4(v273, sub_1D615B49C, v283, sub_1D615B4A4, (&v423 - 6));
    *&v453 = v282;
    if (v282)
    {

      sub_1D5EB15C4(v272);
      sub_1D5D2CFE8(v273, type metadata accessor for FormatVersionRequirement);
      goto LABEL_74;
    }

    v285 = v284;

    if (v285)
    {
      v464 = v451;
      LOBYTE(v465) = 0;
      v460 = v272;
      sub_1D5DF6A60();
      v286 = v453;
      sub_1D72647EC();
      if (v286)
      {
        sub_1D5EB15C4(v460);
        sub_1D5D2CFE8(v432, type metadata accessor for FormatVersionRequirement);
        v101 = v473;
        return sub_1D5D2CFE8(v101, sub_1D66666E0);
      }

      sub_1D5EB15C4(v460);
      sub_1D5D2CFE8(v432, type metadata accessor for FormatVersionRequirement);
      *&v453 = 0;
      v245 = v473;
    }

    else
    {
      sub_1D5EB15C4(v272);
      sub_1D5D2CFE8(v432, type metadata accessor for FormatVersionRequirement);
    }

    v271 = v448;
    v242 = v445;
  }

  swift_beginAccess();
  v287 = *(v271 + 152);
  if (qword_1EDF31E98 != -1)
  {
    swift_once();
  }

  v288 = v449;
  v289 = __swift_project_value_buffer(v449, qword_1EDFFCD00);
  v290 = v431;
  v242(v431, v289, v288);
  swift_storeEnumTagMultiPayload();
  if (v287)
  {
    sub_1D5D2CFE8(v290, type metadata accessor for FormatVersionRequirement);
    goto LABEL_91;
  }

  LOBYTE(v464) = 0;
  v291 = swift_allocObject();
  v451 = xmmword_1D72BAAD0;
  *(v291 + 16) = xmmword_1D72BAAD0;
  *(v291 + 32) = v464;
  *(v291 + 40) = v424;
  *(v291 + 48) = v452;

  v292 = sub_1D72647CC();
  LOBYTE(v464) = 0;
  v293 = swift_allocObject();
  *(v293 + 16) = v292;
  *(v293 + 24) = v451;
  *(v293 + 40) = v464;
  v294 = __swift_project_boxed_opaque_existential_1(v450, v450[3]);
  MEMORY[0x1EEE9AC00](v294, v295);
  MEMORY[0x1EEE9AC00](v296, v297);
  *(&v423 - 4) = sub_1D5B4AA6C;
  *(&v423 - 3) = 0;
  v421 = sub_1D67088F0;
  v422 = v291;
  v298 = v453;
  v300 = sub_1D5D2F7A4(v290, sub_1D615B49C, v299, sub_1D615B4A4, (&v423 - 6));
  if (!v298)
  {
    v301 = v300;
    *&v453 = 0;

    if (v301)
    {
      v464 = v451;
      LOBYTE(v465) = 0;
      LOBYTE(v458) = 0;
      v302 = v453;
      sub_1D72647EC();
      *&v453 = v302;
      if (v302)
      {
        sub_1D5D2CFE8(v431, type metadata accessor for FormatVersionRequirement);
LABEL_111:
        v101 = v473;
        return sub_1D5D2CFE8(v101, sub_1D66666E0);
      }
    }

    sub_1D5D2CFE8(v431, type metadata accessor for FormatVersionRequirement);
    v271 = v448;
    v242 = v445;
LABEL_91:
    v303 = v429;
    v304 = *(v271 + 153);
    v305 = v449;
    v242(v429, v444, v449);
    swift_storeEnumTagMultiPayload();
    v451 = xmmword_1D72BAAE0;
    v464 = xmmword_1D72BAAE0;
    LOBYTE(v465) = 0;
    LOBYTE(v458) = 0;
    v306 = swift_allocObject();
    v308 = v306;
    *(v306 + 16) = v451;
    *(v306 + 32) = v458;
    v309 = v452;
    *(v306 + 40) = v424;
    *(v306 + 48) = v309;
    if (v304 == 7)
    {
    }

    else
    {
      LOBYTE(v458) = v304;
      MEMORY[0x1EEE9AC00](v306, v307);
      *(&v423 - 4) = sub_1D5B4AA6C;
      *(&v423 - 3) = 0;
      v421 = sub_1D67088F0;
      v422 = v308;
      v457 = 0;
      v310 = swift_allocObject();
      *(v310 + 16) = v451;
      *(v310 + 32) = v457;
      *(v310 + 40) = v424;
      *(v310 + 48) = v309;
      swift_retain_n();
      v311 = sub_1D72647CC();
      v457 = 0;
      v312 = swift_allocObject();
      *(v312 + 16) = v311;
      *(v312 + 24) = v451;
      *(v312 + 40) = v457;
      v313 = __swift_project_boxed_opaque_existential_1(v450, v450[3]);
      MEMORY[0x1EEE9AC00](v313, v314);
      MEMORY[0x1EEE9AC00](v315, v316);
      *(&v423 - 4) = sub_1D615B4A4;
      *(&v423 - 3) = (&v423 - 6);
      v421 = sub_1D67088F0;
      v422 = v310;
      v317 = v453;
      v319 = sub_1D5D2F7A4(v303, sub_1D615B49C, v318, sub_1D615B4A4, (&v423 - 6));
      *&v453 = v317;
      if (v317)
      {
        v320 = v429;
        goto LABEL_109;
      }

      v321 = v319;

      if (v321)
      {
        sub_1D6666858();
        v322 = v453;
        sub_1D72647EC();
        *&v453 = v322;
        if (v322)
        {
          v323 = v429;
          goto LABEL_142;
        }
      }

      v271 = v448;
      v305 = v449;
      v242 = v445;
      v303 = v429;
    }

    sub_1D5D2CFE8(v303, type metadata accessor for FormatVersionRequirement);

    v324 = v271[20];
    v325 = *(v271 + 168);
    v242(v430, v444, v305);
    swift_storeEnumTagMultiPayload();
    v451 = xmmword_1D72BAAF0;
    v464 = xmmword_1D72BAAF0;
    LOBYTE(v465) = 0;
    LOBYTE(v458) = 0;
    v326 = swift_allocObject();
    v328 = v326;
    *(v326 + 16) = v451;
    *(v326 + 32) = v458;
    v329 = v424;
    v330 = v452;
    *(v326 + 40) = v424;
    *(v326 + 48) = v330;
    if (v325 > 0xFD)
    {

LABEL_101:
      sub_1D5D2CFE8(v430, type metadata accessor for FormatVersionRequirement);

      v331 = v448;
      swift_beginAccess();
      v332 = v331[22];
      v333 = qword_1EDF31EA8;

      if (v333 != -1)
      {
        swift_once();
      }

      v334 = v449;
      v335 = __swift_project_value_buffer(v449, qword_1EDFFCD18);
      v445(v428, v335, v334);
      swift_storeEnumTagMultiPayload();
      if (*(v332 + 16))
      {
        LOBYTE(v464) = 0;
        v336 = swift_allocObject();
        v451 = xmmword_1D7282A80;
        *(v336 + 16) = xmmword_1D7282A80;
        *(v336 + 32) = v464;
        *(v336 + 40) = v424;
        *(v336 + 48) = v452;

        v337 = sub_1D72647CC();
        LOBYTE(v464) = 0;
        v338 = swift_allocObject();
        *(v338 + 16) = v337;
        *(v338 + 24) = v451;
        *(v338 + 40) = v464;
        v339 = __swift_project_boxed_opaque_existential_1(v450, v450[3]);
        MEMORY[0x1EEE9AC00](v339, v340);
        MEMORY[0x1EEE9AC00](v341, v342);
        *(&v423 - 4) = sub_1D5B4AA6C;
        *(&v423 - 3) = 0;
        v421 = sub_1D67088F0;
        v422 = v336;
        v343 = v453;
        v345 = sub_1D5D2F7A4(v428, sub_1D615B49C, v344, sub_1D615B4A4, (&v423 - 6));
        *&v453 = v343;
        if (v343)
        {

LABEL_106:
          sub_1D5D2CFE8(v428, type metadata accessor for FormatVersionRequirement);
          goto LABEL_111;
        }

        v358 = v345;

        if (v358)
        {
          v359 = v453;
          sub_1D5E08D6C(v332, v473, 0xD, 0, 0);
          *&v453 = v359;
          if (v359)
          {

            goto LABEL_106;
          }
        }
      }

      sub_1D5D2CFE8(v428, type metadata accessor for FormatVersionRequirement);
      v360 = v448;
      swift_beginAccess();
      v361 = v360[23];
      v362 = qword_1EDF31F40;

      if (v362 != -1)
      {
        swift_once();
      }

      v363 = v449;
      v364 = __swift_project_value_buffer(v449, qword_1EDFFCE50);
      v445(v427, v364, v363);
      swift_storeEnumTagMultiPayload();
      if (!*(v361 + 16))
      {
        goto LABEL_126;
      }

      LOBYTE(v464) = 0;
      v365 = swift_allocObject();
      v451 = xmmword_1D72BAB00;
      *(v365 + 16) = xmmword_1D72BAB00;
      *(v365 + 32) = v464;
      *(v365 + 40) = v424;
      *(v365 + 48) = v452;

      v366 = sub_1D72647CC();
      LOBYTE(v464) = 0;
      v367 = swift_allocObject();
      *(v367 + 16) = v366;
      *(v367 + 24) = v451;
      *(v367 + 40) = v464;
      v368 = __swift_project_boxed_opaque_existential_1(v450, v450[3]);
      MEMORY[0x1EEE9AC00](v368, v369);
      MEMORY[0x1EEE9AC00](v370, v371);
      *(&v423 - 4) = sub_1D5B4AA6C;
      *(&v423 - 3) = 0;
      v421 = sub_1D67088F0;
      v422 = v365;
      v372 = v453;
      v374 = sub_1D5D2F7A4(v427, sub_1D615B49C, v373, sub_1D615B4A4, (&v423 - 6));
      *&v453 = v372;
      if (v372)
      {
        sub_1D5D2CFE8(v427, type metadata accessor for FormatVersionRequirement);

        goto LABEL_110;
      }

      v375 = v374;

      if (v375)
      {
        v464 = v451;
        LOBYTE(v465) = 0;
        *&v455 = v361;
        sub_1D5C34D84(0, &qword_1EDF04FC8, &type metadata for FormatSourceItem, MEMORY[0x1E69E62F8]);
        sub_1D6659A78();
        v376 = v453;
        sub_1D72647EC();
        *&v453 = v376;
        if (v376)
        {

          sub_1D5D2CFE8(v427, type metadata accessor for FormatVersionRequirement);
          goto LABEL_111;
        }

        sub_1D5D2CFE8(v427, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
LABEL_126:
        sub_1D5D2CFE8(v427, type metadata accessor for FormatVersionRequirement);
      }

      v377 = v448[24];
      v378 = v448[25];
      v445(v426, v442, v449);
      swift_storeEnumTagMultiPayload();
      v451 = xmmword_1D72BAB10;
      v464 = xmmword_1D72BAB10;
      LOBYTE(v465) = 0;
      LOBYTE(v455) = 0;
      v379 = swift_allocObject();
      v381 = v379;
      *(v379 + 16) = v451;
      *(v379 + 32) = v455;
      v382 = v452;
      *(v379 + 40) = v424;
      *(v379 + 48) = v382;
      if (v378)
      {
        *&v455 = v377;
        *(&v455 + 1) = v378;
        MEMORY[0x1EEE9AC00](v379, v380);
        *(&v423 - 4) = sub_1D5B4AA6C;
        *(&v423 - 3) = 0;
        v421 = sub_1D67088F0;
        v422 = v381;
        v454 = 0;
        v383 = swift_allocObject();
        *(v383 + 16) = v451;
        *(v383 + 32) = v454;
        *(v383 + 40) = v424;
        *(v383 + 48) = v452;
        swift_retain_n();

        v384 = sub_1D72647CC();
        v454 = 0;
        v385 = swift_allocObject();
        *(v385 + 16) = v384;
        *(v385 + 24) = v451;
        *(v385 + 40) = v454;
        v386 = __swift_project_boxed_opaque_existential_1(v450, v450[3]);
        MEMORY[0x1EEE9AC00](v386, v387);
        MEMORY[0x1EEE9AC00](v388, v389);
        *(&v423 - 4) = sub_1D615B4A4;
        *(&v423 - 3) = (&v423 - 6);
        v421 = sub_1D67088F0;
        v422 = v383;
        v390 = v453;
        v392 = sub_1D5D2F7A4(v426, sub_1D615B49C, v391, sub_1D615B4A4, (&v423 - 6));
        *&v453 = v390;
        if (v390)
        {

LABEL_130:
          sub_1D5D2CFE8(v426, type metadata accessor for FormatVersionRequirement);
          goto LABEL_111;
        }

        v393 = v392;

        if (v393)
        {
          v394 = v453;
          sub_1D72647EC();
          *&v453 = v394;
          if (v394)
          {

            goto LABEL_130;
          }
        }

        sub_1D5D2CFE8(v426, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v426, type metadata accessor for FormatVersionRequirement);
      }

      v395 = v448[26];
      v396 = v448[27];
      v397 = v448[28];
      v398 = v448[29];
      v399 = v448[30];
      v400 = v448[31];
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v401 = v449;
      v402 = __swift_project_value_buffer(v449, qword_1EDFFCE38);
      v445(v425, v402, v401);
      swift_storeEnumTagMultiPayload();
      v451 = xmmword_1D72BAB20;
      v455 = xmmword_1D72BAB20;
      v456 = 0;
      LOBYTE(v464) = 0;
      v403 = swift_allocObject();
      v405 = v403;
      *(v403 + 16) = v451;
      *(v403 + 32) = v464;
      v406 = v452;
      *(v403 + 40) = v424;
      *(v403 + 48) = v406;
      if (v395)
      {
        v449 = &v423;
        *&v464 = v395;
        *(&v464 + 1) = v396;
        v465 = v397;
        v466 = v398;
        v467 = v399;
        v468 = v400;
        MEMORY[0x1EEE9AC00](v403, v404);
        v448 = &v423 - 6;
        *(&v423 - 4) = sub_1D5B4AA6C;
        *(&v423 - 3) = 0;
        v421 = sub_1D67088F0;
        v422 = v405;
        v454 = 0;
        v407 = swift_allocObject();
        *(v407 + 16) = v451;
        *(v407 + 32) = v454;
        *(v407 + 40) = v424;
        *(v407 + 48) = v452;
        swift_retain_n();
        sub_1D5EB1D80(v395, v396, v397, v398, v399);
        v408 = sub_1D72647CC();
        v454 = 0;
        v409 = swift_allocObject();
        *(v409 + 16) = v408;
        *(v409 + 24) = v451;
        *(v409 + 40) = v454;
        v410 = __swift_project_boxed_opaque_existential_1(v450, v450[3]);
        MEMORY[0x1EEE9AC00](v410, v411);
        MEMORY[0x1EEE9AC00](v412, v413);
        v414 = v448;
        *(&v423 - 4) = sub_1D615B4A4;
        *(&v423 - 3) = v414;
        v421 = sub_1D67088F0;
        v422 = v407;
        v415 = v453;
        v417 = sub_1D5D2F7A4(v425, sub_1D615B49C, v416, sub_1D615B4A4, (&v423 - 6));
        *&v453 = v415;
        if (v415)
        {
        }

        else
        {
          v418 = v417;

          if (v418)
          {
            sub_1D6659A24();
            v419 = v453;
            sub_1D72647EC();
            *&v453 = v419;
          }
        }

        v420 = v467;

        sub_1D5CBF568(v420);

        sub_1D5D2CFE8(v425, type metadata accessor for FormatVersionRequirement);
        goto LABEL_111;
      }

      v323 = v425;
LABEL_142:
      sub_1D5D2CFE8(v323, type metadata accessor for FormatVersionRequirement);

      goto LABEL_111;
    }

    v458 = v324;
    v459 = v325;
    MEMORY[0x1EEE9AC00](v326, v327);
    *(&v423 - 4) = sub_1D5B4AA6C;
    *(&v423 - 3) = 0;
    v421 = sub_1D67088F0;
    v422 = v328;
    v457 = 0;
    v346 = swift_allocObject();
    *(v346 + 16) = v451;
    *(v346 + 32) = v457;
    *(v346 + 40) = v329;
    *(v346 + 48) = v330;
    swift_retain_n();
    v347 = sub_1D72647CC();
    v457 = 0;
    v348 = swift_allocObject();
    *(v348 + 16) = v347;
    *(v348 + 24) = v451;
    *(v348 + 40) = v457;
    v349 = __swift_project_boxed_opaque_existential_1(v450, v450[3]);
    MEMORY[0x1EEE9AC00](v349, v350);
    MEMORY[0x1EEE9AC00](v351, v352);
    *(&v423 - 4) = sub_1D615B4A4;
    *(&v423 - 3) = (&v423 - 6);
    v421 = sub_1D67088F0;
    v422 = v346;
    v353 = v453;
    v355 = sub_1D5D2F7A4(v430, sub_1D615B49C, v354, sub_1D615B4A4, (&v423 - 6));
    *&v453 = v353;
    if (!v353)
    {
      v356 = v355;

      if (v356)
      {
        sub_1D5F8F434();
        v357 = v453;
        sub_1D72647EC();
        *&v453 = v357;
        if (v357)
        {
          v323 = v430;
          goto LABEL_142;
        }
      }

      goto LABEL_101;
    }

    v320 = v430;
LABEL_109:
    sub_1D5D2CFE8(v320, type metadata accessor for FormatVersionRequirement);

LABEL_110:

    goto LABEL_111;
  }

  sub_1D5D2CFE8(v290, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v245, sub_1D66666E0);
}

uint64_t FormatCustomItemBinding.URL.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatCustomItemBinding.URL, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatCustomItemBinding.URL, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.SydroF, v11, v9, v12, &off_1F51F6C58);
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCD68);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D641CFC8(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatTagBinding.URL.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatTagBinding.URL, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatTagBinding.URL, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowE, v11, v9, v12, &off_1F51F6C98);
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCE38);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D6423BC0(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatSplitBackground.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v39 = a2;
  sub_1D6666954();
  v6 = v5;
  v59 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66669E8();
  sub_1D5B58B84(&qword_1EDF0C500, sub_1D66669E8);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_13:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_1D7264AFC();
  v11 = Dictionary<>.errorOnUnknownKeys.getter(v10);

  if (v11)
  {
    v12 = sub_1D726433C();
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = (v12 + 48);
      while (*v14 != 1)
      {
        v14 += 24;
        if (!--v13)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v14 - 2);
      v18 = *(v14 - 1);

      v20 = sub_1D6615B98();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v59 + 8))(v9, v6);
      goto LABEL_13;
    }

LABEL_7:
  }

  v54 = 0uLL;
  LOBYTE(v55) = 0;
  if (sub_1D726434C())
  {
    v47 = 0uLL;
    LOBYTE(v48) = 0;
    sub_1D5F40064();
    sub_1D726431C();
    v22 = *(&v42 + 1);
    v38 = v42;
  }

  else
  {
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    sub_1D5F3FE24();
    v16 = swift_allocObject();
    v37 = xmmword_1D7273AE0;
    *(v16 + 16) = xmmword_1D7273AE0;
    *(v16 + 32) = v15;
    v38 = v16;
    *(v16 + 40) = 0;
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    v22 = swift_allocObject();
    *(v22 + 16) = v37;
    *(v22 + 32) = v17;
    *(v22 + 40) = 0;
  }

  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  v54 = xmmword_1D728CF30;
  LOBYTE(v55) = 0;
  sub_1D5C35368();
  v23 = v9;
  sub_1D726431C();
  v24 = v47;
  v54 = xmmword_1D7297410;
  LOBYTE(v55) = 0;
  sub_1D726431C();
  *&v37 = v24;
  v25 = v47;
  v52 = xmmword_1D72BAA60;
  v53 = 0;
  v36[1] = sub_1D6666B68();
  sub_1D726431C();
  v26 = v59;
  v36[0] = v25;
  v49 = v56;
  v50 = v57;
  v51 = v58;
  v47 = v54;
  v48 = v55;
  *&v40[9] = xmmword_1D72BAA70;
  v41 = 0;
  sub_1D726431C();
  (*(v26 + 8))(v23, v6);
  *(&v40[2] + 7) = v43;
  *(&v40[4] + 7) = v44;
  *(&v40[6] + 7) = v45;
  HIBYTE(v40[8]) = v46;
  *(v40 + 7) = v42;
  v28 = v39;
  *v39 = v38;
  v28[1] = v22;
  v29 = v36[0];
  v28[2] = v37;
  v28[3] = v29;
  v30 = v47;
  v31 = v48;
  v32 = v49;
  v33 = v50;
  *(v28 + 96) = v51;
  *(v28 + 4) = v32;
  *(v28 + 5) = v33;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  v34 = *&v40[2];
  *(v28 + 97) = *v40;
  *(v28 + 161) = v40[8];
  v35 = *&v40[4];
  *(v28 + 145) = *&v40[6];
  *(v28 + 129) = v35;
  *(v28 + 113) = v34;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSplitBackground.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v141 = &v137 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v144 = &v137 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v146 = &v137 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  *&v153 = &v137 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v137 - v17;
  sub_1D6666BBC();
  v152 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v137 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v1;
  v23 = *(v1 + 8);
  v25 = *(v1 + 24);
  *&v154 = *(v1 + 16);
  v145 = v25;
  v26 = *(v1 + 80);
  v165 = *(v1 + 64);
  v166 = v26;
  v167 = *(v1 + 96);
  v27 = *(v1 + 48);
  v163 = *(v1 + 32);
  v164 = v27;
  v28 = *(v1 + 104);
  v29 = *(v1 + 120);
  v30 = *(v1 + 136);
  v31 = *(v1 + 152);
  v172 = *(v1 + 168);
  v170 = v30;
  v171 = v31;
  v168 = v28;
  v169 = v29;
  v32 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_1D66669E8();
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EDF0C500, sub_1D66669E8);
  sub_1D5D2EE70(&type metadata for FormatSplitBackground, v35, v37, v32, &type metadata for FormatSplitBackground, v35, &type metadata for FormatVersions.SydroF, v33, v22, v36, &off_1F51F6C58);
  v38 = qword_1EDF31E78;

  if (v38 != -1)
  {
    swift_once();
  }

  v39 = sub_1D725BD1C();
  v40 = __swift_project_value_buffer(v39, qword_1EDFFCC90);
  v41 = *(v39 - 8);
  v42 = *(v41 + 16);
  v43 = v41 + 16;
  v42(v18, v40, v39);
  v44 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v156 = v24;
  *(&v156 + 1) = v23;
  v45 = _s8NewsFeed45FormatCodingSplitBackgroundInsetsZeroStrategyV12shouldEncode12wrappedValueSbAA0cefG0V_tFZ_0(&v156);
  v147 = v42;
  v148 = v39;
  v151 = v44;
  if (v45)
  {
    v149 = v23;
    v150 = v24;
    v140 = v43;
    v46 = v152;
    v47 = &v22[*(v152 + 11)];
    v49 = *v47;
    v48 = *(v47 + 1);
    LOBYTE(v158) = 0;
    v50 = swift_allocObject();
    *(v50 + 16) = 0;
    *(v50 + 24) = 0;
    *(v50 + 32) = v158;
    *(v50 + 40) = v49;
    *(v50 + 48) = v48;
    sub_1D6666C50();
    v52 = v51;
    sub_1D5B58B84(&qword_1EDF03278, sub_1D6666C50);

    v143 = v52;
    v53 = sub_1D72647CC();
    LOBYTE(v158) = 0;
    v54 = swift_allocObject();
    *(v54 + 24) = 0;
    *(v54 + 32) = 0;
    *(v54 + 16) = v53;
    *(v54 + 40) = v158;
    v55 = __swift_project_boxed_opaque_existential_1(&v22[*(v46 + 9)], *&v22[*(v46 + 9) + 24]);
    MEMORY[0x1EEE9AC00](v55, v56);
    MEMORY[0x1EEE9AC00](v57, v58);
    *(&v137 - 4) = sub_1D5B4AA6C;
    *(&v137 - 3) = 0;
    v135 = sub_1D6666D38;
    v136 = v50;
    v59 = v173;
    v61 = sub_1D5D2F7A4(v18, sub_1D615B49C, v60, sub_1D615B4A4, (&v137 - 6));
    if (v59)
    {
      sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);

      sub_1D5D2CFE8(v22, sub_1D6666BBC);
    }

    v92 = v61;

    if (v92)
    {
      v158 = 0uLL;
      LOBYTE(v159) = 0;
      v155 = v156;
      sub_1D5F400B8();

      sub_1D72647EC();
      v173 = 0;
    }

    else
    {
      v173 = 0;
    }

    sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);

    v42 = v147;
    v39 = v148;
    v43 = v140;
  }

  else
  {
    sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);
  }

  v64 = v152;
  v63 = v153;
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v138 = __swift_project_value_buffer(v39, qword_1EDFFCD68);
  (v42)(v63);
  swift_storeEnumTagMultiPayload();
  *&v156 = v154;
  v154 = xmmword_1D728CF30;
  v158 = xmmword_1D728CF30;
  LOBYTE(v159) = 0;
  v65 = &v22[*(v64 + 11)];
  v66 = *v65;
  v67 = *(v65 + 1);
  LOBYTE(v155) = 0;
  v68 = swift_allocObject();
  v150 = &v137;
  *(v68 + 16) = v154;
  *(v68 + 32) = v155;
  *(v68 + 40) = v66;
  *(v68 + 48) = v67;
  MEMORY[0x1EEE9AC00](v68, v69);
  v149 = &v137 - 6;
  *(&v137 - 4) = sub_1D5B4AA6C;
  *(&v137 - 3) = 0;
  v135 = sub_1D67088F4;
  v136 = v70;
  LOBYTE(v155) = 0;
  v71 = swift_allocObject();
  *(v71 + 16) = v154;
  *(v71 + 32) = v155;
  v139 = v66;
  *(v71 + 40) = v66;
  *(v71 + 48) = v67;
  sub_1D6666C50();
  v72 = v64;
  v74 = v73;
  v75 = sub_1D5B58B84(&qword_1EDF03278, sub_1D6666C50);
  v137 = v67;
  swift_retain_n();
  v142 = v75;
  v143 = v74;
  v76 = sub_1D72647CC();
  LOBYTE(v155) = 0;
  v77 = swift_allocObject();
  *(v77 + 16) = v76;
  *(v77 + 24) = v154;
  *(v77 + 40) = v155;
  v78 = *(v72 + 9);
  v79 = v153;
  *&v154 = v22;
  v80 = &v22[v78];
  v81 = __swift_project_boxed_opaque_existential_1(v80, *(v80 + 3));
  MEMORY[0x1EEE9AC00](v81, v82);
  MEMORY[0x1EEE9AC00](v83, v84);
  v85 = v149;
  *(&v137 - 4) = sub_1D615B4A4;
  *(&v137 - 3) = v85;
  v135 = sub_1D67088F4;
  v136 = v71;
  v86 = v173;
  sub_1D5D2BC70(v79, sub_1D615B49C, v87, sub_1D615B4A4, (&v137 - 6));
  if (v86)
  {
    v88 = v154;
    sub_1D5D2CFE8(v79, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v173 = v80;
    v140 = v43;

    sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    v90 = v89;
    v91 = sub_1D66582DC();
    sub_1D72647EC();
    v149 = v91;
    v150 = v90;
    sub_1D5D2CFE8(v153, type metadata accessor for FormatVersionRequirement);

    v93 = v146;
    v147(v146, v138, v148);
    swift_storeEnumTagMultiPayload();
    *&v156 = v145;
    v153 = xmmword_1D7297410;
    v158 = xmmword_1D7297410;
    LOBYTE(v159) = 0;
    LOBYTE(v155) = 0;
    v94 = swift_allocObject();
    v152 = &v137;
    *(v94 + 16) = v153;
    *(v94 + 32) = v155;
    v95 = v139;
    v96 = v137;
    *(v94 + 40) = v139;
    *(v94 + 48) = v96;
    MEMORY[0x1EEE9AC00](v94, v97);
    *(&v137 - 4) = sub_1D5B4AA6C;
    *(&v137 - 3) = 0;
    v135 = sub_1D67088F4;
    v136 = v98;
    LOBYTE(v155) = 0;
    v99 = swift_allocObject();
    *(v99 + 16) = v153;
    *(v99 + 32) = v155;
    *(v99 + 40) = v95;
    *(v99 + 48) = v96;
    swift_retain_n();
    v100 = sub_1D72647CC();
    LOBYTE(v155) = 0;
    v101 = swift_allocObject();
    *(v101 + 16) = v100;
    *(v101 + 24) = v153;
    *(v101 + 40) = v155;
    v102 = __swift_project_boxed_opaque_existential_1(v173, *(v173 + 3));
    MEMORY[0x1EEE9AC00](v102, v103);
    MEMORY[0x1EEE9AC00](v104, v105);
    *(&v137 - 4) = sub_1D615B4A4;
    *(&v137 - 3) = (&v137 - 6);
    sub_1D5D2BC70(v93, sub_1D615B49C, v106, sub_1D615B4A4, (&v137 - 6));

    sub_1D72647EC();
    sub_1D5D2CFE8(v93, type metadata accessor for FormatVersionRequirement);

    v147(v144, v138, v148);
    swift_storeEnumTagMultiPayload();
    v160 = v165;
    v161 = v166;
    v162 = v167;
    v158 = v163;
    v159 = v164;
    v153 = xmmword_1D72BAA60;
    v156 = xmmword_1D72BAA60;
    v157 = 0;
    LOBYTE(v155) = 0;
    v107 = swift_allocObject();
    v152 = &v137;
    *(v107 + 16) = v153;
    *(v107 + 32) = v155;
    v108 = v139;
    v109 = v137;
    *(v107 + 40) = v139;
    *(v107 + 48) = v109;
    MEMORY[0x1EEE9AC00](v107, v110);
    *(&v137 - 4) = sub_1D5B4AA6C;
    *(&v137 - 3) = 0;
    v135 = sub_1D67088F4;
    v136 = v111;
    LOBYTE(v155) = 0;
    v112 = swift_allocObject();
    *(v112 + 16) = v153;
    *(v112 + 32) = v155;
    *(v112 + 40) = v108;
    *(v112 + 48) = v109;
    swift_retain_n();
    v113 = sub_1D72647CC();
    LOBYTE(v155) = 0;
    v114 = swift_allocObject();
    *(v114 + 16) = v113;
    *(v114 + 24) = v153;
    *(v114 + 40) = v155;
    v115 = __swift_project_boxed_opaque_existential_1(v173, *(v173 + 3));
    MEMORY[0x1EEE9AC00](v115, v116);
    MEMORY[0x1EEE9AC00](v117, v118);
    *(&v137 - 4) = sub_1D615B4A4;
    *(&v137 - 3) = (&v137 - 6);
    v119 = v144;
    sub_1D5D2BC70(v144, sub_1D615B49C, v120, sub_1D615B4A4, (&v137 - 6));

    v121 = sub_1D6666CE4();
    sub_1D72647EC();
    v150 = v121;
    sub_1D5D2CFE8(v119, type metadata accessor for FormatVersionRequirement);

    v122 = v141;
    v147(v141, v138, v148);
    swift_storeEnumTagMultiPayload();
    v160 = v170;
    v161 = v171;
    v162 = v172;
    v158 = v168;
    v159 = v169;
    v153 = xmmword_1D72BAA70;
    v156 = xmmword_1D72BAA70;
    v157 = 0;
    LOBYTE(v155) = 0;
    v123 = swift_allocObject();
    v152 = &v137;
    *(v123 + 16) = v153;
    *(v123 + 32) = v155;
    v124 = v139;
    *(v123 + 40) = v139;
    *(v123 + 48) = v109;
    MEMORY[0x1EEE9AC00](v123, v125);
    *(&v137 - 4) = sub_1D5B4AA6C;
    *(&v137 - 3) = 0;
    v135 = sub_1D67088F4;
    v136 = v126;
    LOBYTE(v155) = 0;
    v127 = swift_allocObject();
    *(v127 + 16) = v153;
    *(v127 + 32) = v155;
    *(v127 + 40) = v124;
    *(v127 + 48) = v109;
    swift_retain_n();
    v128 = sub_1D72647CC();
    LOBYTE(v155) = 0;
    v129 = swift_allocObject();
    *(v129 + 16) = v128;
    *(v129 + 24) = v153;
    *(v129 + 40) = v155;
    v130 = __swift_project_boxed_opaque_existential_1(v173, *(v173 + 3));
    MEMORY[0x1EEE9AC00](v130, v131);
    MEMORY[0x1EEE9AC00](v132, v133);
    *(&v137 - 4) = sub_1D615B4A4;
    *(&v137 - 3) = (&v137 - 6);
    v135 = sub_1D67088F4;
    v136 = v127;
    sub_1D5D2BC70(v122, sub_1D615B49C, v134, sub_1D615B4A4, (&v137 - 6));

    v88 = v154;
    sub_1D72647EC();
    sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v88, sub_1D6666BBC);
}

uint64_t FormatSupplementaryNodePinTrait.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
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

    v13 = v29;
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
          *(v20 + 16) = &unk_1F5111A68;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D6666DB4();
    v28 = 0uLL;
    sub_1D726431C();
    v22 = v26;
    if (v26)
    {
      if (v26 == 1)
      {
        v28 = xmmword_1D7279980;
        sub_1D6666E08();
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v23 = v26;
        if (HIBYTE(v27))
        {
          v24 = 256;
        }

        else
        {
          v24 = 0;
        }

        v25 = v24 | v27;
      }

      else
      {
        v28 = xmmword_1D7279980;
        sub_1D6666E08();
        sub_1D726427C();
        (*(v7 + 8))(v10, v6);
        v23 = v26;
        v25 = v27;
      }
    }

    else
    {
      sub_1D5C30060(0, &qword_1EDF12750, sub_1D6666E5C, &type metadata for FormatSupplementaryNodePinEdge, type metadata accessor for FormatValue);
      v28 = xmmword_1D7279980;
      sub_1D6666EB0();
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v25 = 0;
      v23 = v26;
    }

    *v13 = v23;
    *(v13 + 8) = v25;
    *(v13 + 10) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSupplementaryNodePinTrait.encode(to:)(void *a1)
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
  v33 = *v1;
  v19 = *(v1 + 8);
  v20 = *(v1 + 10);
  v22 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v23 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatSupplementaryNodePinTrait, &type metadata for FormatCodingKeys, v24, v22, &type metadata for FormatSupplementaryNodePinTrait, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v21, v18, v23, &off_1F51F6CD8);
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
      sub_1D6389110(1, v33, v19 & 0x1FF, v10);
      v27 = v10;
    }

    else
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v30 = sub_1D725BD1C();
      v31 = __swift_project_value_buffer(v30, qword_1EDFFCD50);
      (*(*(v30 - 8) + 16))(v6, v31, v30);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D643853C(2, v33, v19, v6);
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
    sub_1D6388F38(0, v33 & 1, v14);
    v27 = v14;
  }

  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t FormatTagBinding.DateTime.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatTagBinding.DateTime, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatTagBinding.DateTime, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v21, v18, v22, &off_1F51F6CF8);
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
      sub_1D64233C8(1, v10);
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
      sub_1D64233C8(2, v6);
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
    sub_1D64233C8(0, v14);
    v26 = v14;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t FormatShineBlend.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a2;
  sub_1D6667010();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66670A4();
  sub_1D5B58B84(&qword_1EC886348, sub_1D66670A4);
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

  v13 = v49;
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

      v19 = sub_1D6615ED0();
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

  sub_1D6667224();
  v41 = 0;
  v42 = 0;
  v43 = 0;
  sub_1D726431C();
  v38 = v46;
  v39 = v47;
  v40 = v48;
  v37 = v45;
  v36 = v44;
  v34 = xmmword_1D728CF30;
  v35 = 0;
  sub_1D5E4FBA0();
  sub_1D726427C();
  v22 = v31;
  v34 = xmmword_1D7297410;
  v35 = 0;
  sub_1D6667278();
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v23 = v31;
  v24 = v32;
  v25 = v33;
  v28[9] = v33;
  v26 = v39;
  *(v13 + 32) = v38;
  *(v13 + 48) = v26;
  *(v13 + 64) = v40;
  v27 = v37;
  *v13 = v36;
  *(v13 + 16) = v27;
  *(v13 + 65) = v22;
  *(v13 + 66) = v29;
  *(v13 + 70) = v30;
  *(v13 + 72) = v23;
  *(v13 + 80) = v24;
  *(v13 + 81) = v25;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatShineBlend.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v105 = v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v107 = v100 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v100 - v11;
  sub_1D66672CC();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v1 + 48);
  v130 = *(v1 + 32);
  v131 = v18;
  v132 = *(v1 + 64);
  v19 = *(v1 + 16);
  v128 = *v1;
  v129 = v19;
  v134 = *(v1 + 65);
  v103 = *(v1 + 72);
  v102 = *(v1 + 80);
  v104 = *(v1 + 81);
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D66670A4();
  v23 = v22;
  v24 = sub_1D5B58B84(&qword_1EC886348, sub_1D66670A4);
  sub_1D5D2EE70(&type metadata for FormatShineBlend, v23, v25, v20, &type metadata for FormatShineBlend, v23, &type metadata for FormatVersions.JazzkonC, v21, v17, v24, &off_1F51F6C78);
  sub_1D5B58478();
  v27 = *(v26 + 48);
  v114 = v26;
  v28 = &v12[*(v26 + 64)];
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v29 = sub_1D725BD1C();
  v30 = __swift_project_value_buffer(v29, qword_1EDFFCD30);
  v31 = *(v29 - 8);
  v32 = *(v31 + 16);
  v33 = v31 + 16;
  v110 = v30;
  v32(v12);
  if (qword_1EDF31F48 != -1)
  {
    swift_once();
  }

  v109 = __swift_project_value_buffer(v29, qword_1EDFFCE68);
  v32(&v12[v27]);
  v34 = type metadata accessor for FormatVersionRequirement.Value(0);
  *v28 = 0;
  *(v28 + 1) = 0;
  v108 = v34;
  swift_storeEnumTagMultiPayload();
  v125 = v130;
  v126 = v131;
  v127 = v132;
  v123 = v128;
  v124 = v129;
  v121 = 0;
  v120 = 0;
  v122 = 0;
  v35 = &v17[*(v14 + 44)];
  v111 = v33;
  v36 = *v35;
  v37 = *(v35 + 1);
  v133 = 0;
  v38 = swift_allocObject();
  v106 = v29;
  v117 = v100;
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = v133;
  *(v38 + 40) = v36;
  *(v38 + 48) = v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v40 = v17;
  *&v119 = v12;
  v100[-4] = sub_1D5B4AA6C;
  v100[-3] = 0;
  v98 = sub_1D67088FC;
  v99 = v41;
  v133 = 0;
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  *(v42 + 32) = v133;
  v113 = v36;
  *(v42 + 40) = v36;
  *(v42 + 48) = v37;
  sub_1D6667360();
  v44 = v43;
  v45 = sub_1D5B58B84(&qword_1EC886370, sub_1D6667360);
  swift_retain_n();
  v115 = v44;
  v116 = v45;
  v46 = sub_1D72647CC();
  v133 = 0;
  v47 = swift_allocObject();
  v112 = v32;
  *(v47 + 24) = 0;
  *(v47 + 32) = 0;
  *(v47 + 16) = v46;
  *(v47 + 40) = v133;
  v48 = &v40[*(v14 + 36)];
  v49 = __swift_project_boxed_opaque_existential_1(v48, *(v48 + 3));
  MEMORY[0x1EEE9AC00](v49, v50);
  MEMORY[0x1EEE9AC00](v51, v52);
  v100[-4] = sub_1D615B4A4;
  v100[-3] = &v100[-6];
  v53 = v119;
  v98 = sub_1D67088FC;
  v99 = v42;
  v54 = v118;
  sub_1D5D2BC70(v119, sub_1D615B49C, v55, sub_1D615B4A4, &v100[-6]);
  if (v54)
  {
    sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);

    v56 = v40;
  }

  else
  {
    v101 = v48;
    v118 = v37;

    sub_1D66673F4();
    sub_1D72647EC();
    v56 = v40;
    v117 = 0;
    sub_1D5D2CFE8(v119, type metadata accessor for FormatVersionRequirement);

    v57 = *(v114 + 48);
    v58 = v107;
    v59 = &v107[*(v114 + 64)];
    v60 = v106;
    v61 = v112;
    (v112)(v107, v110, v106);
    v61(v58 + v57, v109, v60);
    *v59 = 0;
    *(v59 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    v119 = xmmword_1D728CF30;
    v123 = xmmword_1D728CF30;
    LOBYTE(v124) = 0;
    LOBYTE(v120) = 0;
    v62 = swift_allocObject();
    v64 = v62;
    *(v62 + 16) = v119;
    *(v62 + 32) = v120;
    v65 = v113;
    v66 = v118;
    *(v62 + 40) = v113;
    *(v62 + 48) = v66;
    if (v134 == 16)
    {

      v67 = v105;
    }

    else
    {
      v100[1] = v100;
      LOBYTE(v120) = v134;
      MEMORY[0x1EEE9AC00](v62, v63);
      v100[-4] = sub_1D5B4AA6C;
      v100[-3] = 0;
      v98 = sub_1D67088FC;
      v99 = v64;
      v133 = 0;
      v76 = swift_allocObject();
      *(v76 + 16) = v119;
      *(v76 + 32) = v133;
      *(v76 + 40) = v65;
      *(v76 + 48) = v66;
      swift_retain_n();
      v77 = sub_1D72647CC();
      v133 = 0;
      v78 = swift_allocObject();
      *(v78 + 16) = v77;
      *(v78 + 24) = v119;
      *(v78 + 40) = v133;
      v79 = __swift_project_boxed_opaque_existential_1(v101, *(v101 + 3));
      MEMORY[0x1EEE9AC00](v79, v80);
      MEMORY[0x1EEE9AC00](v81, v82);
      v100[-4] = sub_1D615B4A4;
      v100[-3] = &v100[-6];
      v98 = sub_1D67088FC;
      v99 = v76;
      v83 = v117;
      v85 = sub_1D5D2F7A4(v58, sub_1D615B49C, v84, sub_1D615B4A4, &v100[-6]);
      if (v83)
      {
        sub_1D5D2CFE8(v58, type metadata accessor for FormatVersionRequirement);

        return sub_1D5D2CFE8(v56, sub_1D66672CC);
      }

      v96 = v85;

      if (v96)
      {
        sub_1D5E4FBF4();
        sub_1D72647EC();
        v67 = v105;
        v60 = v106;
        v117 = 0;
        v58 = v107;
        v66 = v118;
      }

      else
      {
        v117 = 0;
        v67 = v105;
        v58 = v107;
        v66 = v118;
        v60 = v106;
      }
    }

    sub_1D5D2CFE8(v58, type metadata accessor for FormatVersionRequirement);

    v68 = *(v114 + 48);
    v69 = (v67 + *(v114 + 64));
    v70 = v112;
    (v112)(v67, v110, v60);
    v70(v67 + v68, v109, v60);
    *v69 = 0;
    v69[1] = 0;
    swift_storeEnumTagMultiPayload();
    v119 = xmmword_1D7297410;
    v123 = xmmword_1D7297410;
    LOBYTE(v124) = 0;
    LOBYTE(v120) = 0;
    v71 = swift_allocObject();
    v73 = v71;
    *(v71 + 16) = v119;
    *(v71 + 32) = v120;
    v74 = v113;
    *(v71 + 40) = v113;
    *(v71 + 48) = v66;
    if (v104)
    {
    }

    else
    {
      v120 = v103;
      LOBYTE(v121) = v102 & 1;
      MEMORY[0x1EEE9AC00](v71, v72);
      v100[-4] = sub_1D5B4AA6C;
      v100[-3] = 0;
      v98 = sub_1D67088FC;
      v99 = v73;
      v133 = 0;
      v86 = swift_allocObject();
      *(v86 + 16) = v119;
      *(v86 + 32) = v133;
      *(v86 + 40) = v74;
      *(v86 + 48) = v66;
      swift_retain_n();
      v87 = sub_1D72647CC();
      v133 = 0;
      v88 = swift_allocObject();
      *(v88 + 16) = v87;
      *(v88 + 24) = v119;
      *(v88 + 40) = v133;
      v89 = __swift_project_boxed_opaque_existential_1(v101, *(v101 + 3));
      MEMORY[0x1EEE9AC00](v89, v90);
      MEMORY[0x1EEE9AC00](v91, v92);
      v100[-4] = sub_1D615B4A4;
      v100[-3] = &v100[-6];
      v67 = v105;
      v98 = sub_1D6667448;
      v99 = v86;
      v93 = v117;
      v95 = sub_1D5D2F7A4(v105, sub_1D615B49C, v94, sub_1D615B4A4, &v100[-6]);
      if (v93)
      {
        sub_1D5D2CFE8(v67, type metadata accessor for FormatVersionRequirement);

        return sub_1D5D2CFE8(v56, sub_1D66672CC);
      }

      v97 = v95;

      if (v97)
      {
        sub_1D66674C4();
        sub_1D72647EC();
      }
    }

    sub_1D5D2CFE8(v67, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v56, sub_1D66672CC);
}

uint64_t FormatHeadlineBinding.Color.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatHeadlineBinding.Color, &type metadata for FormatCodingKeys, v30, v27, &type metadata for FormatHeadlineBinding.Color, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v28, v25, v29, &off_1F51F6C78);
  if (v26 <= 1)
  {
    if (v26)
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v42 = sub_1D725BD1C();
      v43 = __swift_project_value_buffer(v42, qword_1EDFFCD50);
      (*(*(v42 - 8) + 16))(v17, v43, v42);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v33 = v46;
      sub_1D641EA18(1, v17);
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
      sub_1D641EA18(0, v21);
      v34 = v21;
    }
  }

  else if (v26 == 2)
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v37 = sub_1D725BD1C();
    v38 = __swift_project_value_buffer(v37, qword_1EDFFCD50);
    (*(*(v37 - 8) + 16))(v13, v38, v37);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D641EA18(2, v13);
    v34 = v13;
  }

  else if (v26 == 3)
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v31 = sub_1D725BD1C();
    v32 = __swift_project_value_buffer(v31, qword_1EDFFCD50);
    (*(*(v31 - 8) + 16))(v9, v32, v31);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D641EA18(3, v9);
    v34 = v9;
  }

  else
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v39 = sub_1D725BD1C();
    v40 = __swift_project_value_buffer(v39, qword_1EDFFCD50);
    v41 = v45;
    (*(*(v39 - 8) + 16))(v45, v40, v39);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D641EA18(4, v41);
    v34 = v41;
  }

  sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v33, sub_1D5D30DC4);
}

uint64_t FormatLocalization.encode(to:)(void *a1)
{
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v80 - v5;
  v7 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v90 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v87 = &v80 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v80 - v15;
  sub_1D6667518();
  *&v92 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v1;
  v21 = v1[1];
  v89 = v1[6];
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D5CAFBB4();
  v26 = v25;
  v27 = sub_1D5B58B84(&qword_1EDF25598, sub_1D5CAFBB4);
  v91 = v20;
  sub_1D5D2EE70(&type metadata for FormatLocalization, v26, v28, v23, &type metadata for FormatLocalization, v26, &type metadata for FormatVersions.JazzkonC, v24, v20, v27, &off_1F51F6C78);
  v29 = qword_1EDF31EB0;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = sub_1D725BD1C();
  v31 = __swift_project_value_buffer(v30, qword_1EDFFCD30);
  v32 = *(v30 - 8);
  v33 = *(v32 + 16);
  v34 = v32 + 16;
  v33(v16, v31, v30);
  v88 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v35 = sub_1D725895C();
  if ((*(*(v35 - 8) + 48))(v6, 1, v35) != 1)
  {
    sub_1D5D2CFE8(v16, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v6, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v52 = v92;
LABEL_7:
    v53 = v87;
    v33(v87, v31, v30);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);
    v33(v53, v31, v30);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);
    v54 = v90;
    v33(v90, v31, v30);
    swift_storeEnumTagMultiPayload();
    v94 = v89;
    v92 = xmmword_1D72BAA60;
    v96 = xmmword_1D72BAA60;
    v97 = 0;
    v55 = v91;
    v56 = &v91[*(v52 + 44)];
    v57 = *v56;
    v58 = *(v56 + 1);
    v98 = 0;
    v59 = swift_allocObject();
    v60 = v52;
    v89 = &v80;
    *(v59 + 16) = v92;
    *(v59 + 32) = v98;
    *(v59 + 40) = v57;
    *(v59 + 48) = v58;
    MEMORY[0x1EEE9AC00](v59, v61);
    *(&v80 - 4) = sub_1D5B4AA6C;
    *(&v80 - 3) = 0;
    v78 = sub_1D6708900;
    v79 = v62;
    v98 = 0;
    v63 = swift_allocObject();
    *(v63 + 16) = v92;
    *(v63 + 32) = v98;
    *(v63 + 40) = v57;
    *(v63 + 48) = v58;
    sub_1D66675AC();
    v65 = v64;
    sub_1D5B58B84(&qword_1EDF035F8, sub_1D66675AC);
    swift_retain_n();
    v88 = v65;
    v66 = sub_1D72647CC();
    v98 = 0;
    v67 = swift_allocObject();
    *(v67 + 16) = v66;
    *(v67 + 24) = v92;
    *(v67 + 40) = v98;
    v68 = __swift_project_boxed_opaque_existential_1((v55 + *(v60 + 36)), *(v55 + *(v60 + 36) + 24));
    MEMORY[0x1EEE9AC00](v68, v69);
    MEMORY[0x1EEE9AC00](v70, v71);
    *(&v80 - 4) = sub_1D615B4A4;
    *(&v80 - 3) = (&v80 - 6);
    v78 = sub_1D6708900;
    v79 = v63;
    v72 = v93;
    sub_1D5D2BC70(v54, sub_1D615B49C, v73, sub_1D615B4A4, (&v80 - 6));
    if (v72)
    {
      sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5C34D84(0, &qword_1EDF1B030, &type metadata for FormatLocalizationString, MEMORY[0x1E69E62F8]);
      sub_1D66676BC();
      sub_1D72647EC();
      sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);
    }

    v74 = v55;
    return sub_1D5D2CFE8(v74, sub_1D6667518);
  }

  v86 = v21;
  v81 = v22;
  v82 = v31;
  v83 = v34;
  v84 = v33;
  sub_1D5D35558(v6, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v37 = v91;
  v36 = v92;
  v38 = &v91[*(v92 + 44)];
  v40 = *v38;
  v39 = *(v38 + 1);
  LOBYTE(v96) = 0;
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = v96;
  *(v41 + 40) = v40;
  *(v41 + 48) = v39;
  sub_1D66675AC();
  sub_1D5B58B84(&qword_1EDF035F8, sub_1D66675AC);

  v42 = sub_1D72647CC();
  LOBYTE(v96) = 0;
  v43 = swift_allocObject();
  *(v43 + 24) = 0;
  *(v43 + 32) = 0;
  *(v43 + 16) = v42;
  *(v43 + 40) = v96;
  v44 = __swift_project_boxed_opaque_existential_1((v37 + *(v36 + 36)), *(v37 + *(v36 + 36) + 24));
  v85 = &v80;
  MEMORY[0x1EEE9AC00](v44, v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  *(&v80 - 4) = sub_1D5B4AA6C;
  *(&v80 - 3) = 0;
  v78 = sub_1D6667640;
  v79 = v41;
  v48 = v93;
  v50 = sub_1D5D2F7A4(v16, sub_1D615B49C, v49, sub_1D615B4A4, (&v80 - 6));
  v93 = v48;
  if (v48)
  {
    sub_1D5D2CFE8(v16, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v37, sub_1D6667518);
  }

  v75 = v50;

  if ((v75 & 1) == 0)
  {
    sub_1D5D2CFE8(v16, type metadata accessor for FormatVersionRequirement);

    v52 = v92;
    v31 = v82;
    v33 = v84;
    goto LABEL_7;
  }

  v96 = 0uLL;
  v97 = 0;
  v94 = v81;
  v95 = v86;
  v76 = v91;
  v77 = v93;
  sub_1D72647EC();

  sub_1D5D2CFE8(v16, type metadata accessor for FormatVersionRequirement);
  v52 = v92;
  v33 = v84;
  if (!v77)
  {
    v93 = 0;
    v31 = v82;
    goto LABEL_7;
  }

  v74 = v76;
  return sub_1D5D2CFE8(v74, sub_1D6667518);
}

uint64_t FormatPurchaseAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v30 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (!v2)
  {
    v11 = v6;
    v12 = v31;
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
          *(v22 + 16) = &unk_1F5111DD0;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D66677AC();
    v37 = 0;
    v38 = 0;
    sub_1D726431C();
    if (v39 <= 1u)
    {
      if (v39)
      {
        v32 = xmmword_1D7279980;
        sub_1D66678A8();
        sub_1D726427C();
        (*(v11 + 8))(v15, v5);
        v28 = 0;
        v24 = v36;
        goto LABEL_19;
      }

      (*(v11 + 8))(v15, v5);
      v24 = 0;
      v25 = 0;
      v26 = 0uLL;
      v28 = 3;
    }

    else
    {
      if (v39 != 2)
      {
        v36 = xmmword_1D7279980;
        if (v39 == 3)
        {
          sub_1D6667854();
          sub_1D726427C();
          (*(v11 + 8))(v15, v5);
          v25 = *(&v32 + 1);
          v24 = v32;
          v26 = v33;
          v27 = v34;
          v28 = 1;
          v29 = v35;
        }

        else
        {
          sub_1D6667800();
          sub_1D726431C();
          (*(v11 + 8))(v15, v5);
          v25 = *(&v32 + 1);
          v24 = v32;
          v28 = 2;
          *&v26 = v33;
        }

        goto LABEL_19;
      }

      (*(v11 + 8))(v15, v5);
      v25 = 0;
      v26 = 0uLL;
      v28 = 3;
      v24 = 1;
    }

    v27 = 0uLL;
    v29 = 0uLL;
LABEL_19:
    *v12 = v24;
    *(v12 + 8) = v25;
    *(v12 + 16) = v26;
    *(v12 + 32) = v27;
    *(v12 + 48) = v29;
    *(v12 + 64) = v28;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

LABEL_9:
  sub_1D61E4FBC(a1, v10);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatPurchaseAction.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v52 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v52 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v52 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v53 = &v52 - v21;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v1 + 16);
  v57 = *v1;
  v27 = *(v1 + 32);
  v55 = *(v1 + 48);
  v56 = v26;
  v54 = v27;
  v28 = *(v1 + 64);
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  v31 = sub_1D5C30408();
  v59 = v25;
  sub_1D5D2EE70(&type metadata for FormatPurchaseAction, &type metadata for FormatCodingKeys, v32, v29, &type metadata for FormatPurchaseAction, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenE, v30, v25, v31, &off_1F51F6C18);
  if (v28 > 1)
  {
    if (v28 == 2)
    {
      v37 = v57.i64[1];
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v38 = sub_1D725BD1C();
      v39 = __swift_project_value_buffer(v38, qword_1EDFFCE80);
      (*(*(v38 - 8) + 16))(v6, v39, v38);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v35 = v59;
      sub_1D63A2220(4, v57.i64[0], v37, v56, v6);
      v36 = v6;
    }

    else
    {
      v42 = vorrq_s8(v54, v55);
      v43 = vorr_s8(*v42.i8, *&vextq_s8(v42, v42, 8uLL));
      v44 = vdupq_lane_s64(v56, 0);
      *v44.i8 = v43;
      v45 = vorrq_s8(v44, v57);
      if (v45.i64[1] | v45.i64[0] | *(&v56 + 1))
      {
        if (qword_1EDF31EE8 != -1)
        {
          swift_once();
        }

        v46 = sub_1D725BD1C();
        v47 = __swift_project_value_buffer(v46, qword_1EDFFCD98);
        (*(*(v46 - 8) + 16))(v14, v47, v46);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v35 = v59;
        sub_1D641FDC4(2, v14);
        v36 = v14;
      }

      else
      {
        if (qword_1EDF31EE8 != -1)
        {
          swift_once();
        }

        v48 = sub_1D725BD1C();
        v49 = __swift_project_value_buffer(v48, qword_1EDFFCD98);
        v50 = v53;
        (*(*(v48 - 8) + 16))(v53, v49, v48);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v35 = v59;
        sub_1D641FDC4(0, v50);
        v36 = v50;
      }
    }
  }

  else if (v28)
  {
    v58[0] = v57;
    v58[1] = v56;
    v58[2] = v54;
    v58[3] = v55;
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v40 = sub_1D725BD1C();
    v41 = __swift_project_value_buffer(v40, qword_1EDFFCD98);
    (*(*(v40 - 8) + 16))(v10, v41, v40);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v35 = v59;
    sub_1D6438D30(3, v58, v10);
    v36 = v10;
  }

  else
  {
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCD98);
    (*(*(v33 - 8) + 16))(v18, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v35 = v59;
    sub_1D6438B9C(1, v57.i64[0], v18);
    v36 = v18;
  }

  sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v35, sub_1D5D30DC4);
}

uint64_t FormatFontDesign.encode(to:)(void *a1)
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
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v21 = sub_1D725BD1C();
  v22 = __swift_project_value_buffer(v21, qword_1EDFFCD50);
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

uint64_t FormatItemNodeActionBinding.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v22 - v9;
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
          v3 = swift_allocError();
          *v20 = v19;
          *(v20 + 8) = v18;
          *(v20 + 16) = &unk_1F5111E20;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66678FC();
    v24 = 0uLL;
    sub_1D726431C();
    v23[2] = xmmword_1D7279980;
    sub_1D5C6CE4C();
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    v22[0] = v24;
    v22[1] = v25;
    v23[0] = *v26;
    *(v23 + 15) = *&v26[15];
    sub_1D62B5F18(v22, v13);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatItemNodeActionBinding.encode(to:)(void *a1)
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
  v29 = *(v2 + 48);
  v14 = *(v2 + 50);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatItemNodeActionBinding, &type metadata for FormatCodingKeys, v18, v15, &type metadata for FormatItemNodeActionBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyE, v16, v11, v17, &off_1F51F6CB8);
  v30 = v14;
  v19 = *v2;
  v24[1] = *(v2 + 16);
  v24[0] = v19;
  v25 = v12;
  v26 = v13;
  v27 = v29;
  v28 = v14;
  if (qword_1EDF31E90 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCCE8);
  (*(*(v20 - 8) + 16))(v7, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D638C3C4(v24, v7);
  sub_1D5D2CFE8(v7, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v11, sub_1D5D30DC4);
}

uint64_t FormatSlotItemTagFilterNotCondition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v22[0] = a2;
  sub_1D6667950();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66679E4();
  sub_1D5B58B84(&qword_1EC8863B8, sub_1D66679E4);
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

      v19 = sub_1D6628490(0x6F697469646E6F63, 0xE90000000000006ELL);
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

  sub_1D5F34364();
  v22[1] = 0;
  v22[2] = 0;
  v23 = 0;
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  *v13 = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSlotItemTagFilterNotCondition.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6667B64();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D66679E4();
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EC8863B8, sub_1D66679E4);
  sub_1D5D2EE70(&type metadata for FormatSlotItemTagFilterNotCondition, v16, v18, v13, &type metadata for FormatSlotItemTagFilterNotCondition, v16, &type metadata for FormatVersions.DawnburstC, v14, v11, v17, &off_1F51F6B98);
  if (qword_1EDF31F58[0] != -1)
  {
    swift_once();
  }

  v19 = sub_1D725BD1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDFFCE98);
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
  v39 = sub_1D6708904;
  v40 = v26;
  v42 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v42;
  *(v27 + 40) = v23;
  *(v27 + 48) = v22;
  sub_1D6667BF8();
  v29 = v28;
  sub_1D5B58B84(&qword_1EC8863D0, sub_1D6667BF8);
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
  v39 = sub_1D6667C8C;
  v40 = v27;
  v36 = v41[3];
  sub_1D5D2BC70(v6, sub_1D615B49C, v37, sub_1D615B4A4, &v41[-6]);
  if (v36)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D5F343B8();
    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D6667B64);
}

uint64_t FormatBindingTextExpressionLogic.Length.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D6667D08();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6667D9C();
  sub_1D5B58B84(&qword_1EC886400, sub_1D6667D9C);
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

      v20 = sub_1D6627E68(0x65756C6176, 0xE500000000000000, 0x726F74617265706FLL, 0xE800000000000000);
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

  v26 = 0uLL;
  v27 = 0;
  v17 = sub_1D72642FC();
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D5C5813C();
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  *(v13 + 8) = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBindingTextExpressionLogic.Length.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v72 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v65 - v8;
  sub_1D6667F1C();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v71 = *(v1 + 8);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D6667D9C();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EC886400, sub_1D6667D9C);
  sub_1D5D2EE70(&type metadata for FormatBindingTextExpressionLogic.Length, v19, v21, v16, &type metadata for FormatBindingTextExpressionLogic.Length, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
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
  v63 = sub_1D6708908;
  v64 = v31;
  v80 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v80;
  v70 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D6667FB0();
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EC886418, sub_1D6667FB0);
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
  v63 = sub_1D6708908;
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
    v63 = sub_1D6708908;
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
    v63 = sub_1D6708908;
    v64 = v55;
    sub_1D5D2BC70(v49, sub_1D615B49C, v62, sub_1D615B4A4, (&v65 - 6));

    sub_1D60566E4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D6667F1C);
}

uint64_t FormatBindingTextExpressionLogic.Compare.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D66680A8();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D666813C();
  sub_1D5B58B84(&qword_1EDF24E48, sub_1D666813C);
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

      v23 = *(v17 - 2);
      v22 = *(v17 - 1);

      v24 = sub_1D6627E68(0x65756C6176, 0xE500000000000000, 0x726F74617265706FLL, 0xE800000000000000);
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

  v30 = 0uLL;
  v31 = 0;
  v18 = sub_1D72642BC();
  v20 = v19;
  v21 = v18;
  v30 = xmmword_1D728CF30;
  v31 = 0;
  sub_1D5C5813C();
  sub_1D726431C();
  (*(v14 + 8))(v10, v6);
  v27 = v32;
  *v13 = v21;
  *(v13 + 8) = v20;
  *(v13 + 16) = v27;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBindingTextExpressionLogic.Compare.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v72 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v64 - v8;
  sub_1D66682BC();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  v84 = *(v1 + 16);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D666813C();
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF24E48, sub_1D666813C);
  sub_1D5D2EE70(&type metadata for FormatBindingTextExpressionLogic.Compare, v20, v22, v17, &type metadata for FormatBindingTextExpressionLogic.Compare, v20, &type metadata for FormatVersions.JazzkonC, v18, v14, v21, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD30);
  v25 = *(v23 - 8);
  v69 = *(v25 + 16);
  v70 = v24;
  v73 = v23;
  v68 = v25 + 16;
  v69(v9);
  v67 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v81 = v15;
  v82 = v16;
  v79 = 0uLL;
  v80 = 0;
  v26 = &v14[*(v11 + 44)];
  v76 = v9;
  v27 = *v26;
  v28 = *(v26 + 1);
  v83 = 0;
  v29 = swift_allocObject();
  v77 = &v64;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v83;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *(&v64 - 4) = sub_1D5B4AA6C;
  *(&v64 - 3) = 0;
  v62 = sub_1D6708908;
  v63 = v31;
  v83 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v83;
  v71 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D6668350();
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF02D78, sub_1D6668350);
  swift_retain_n();
  v74 = v35;
  v75 = v34;
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
  *(&v64 - 4) = sub_1D615B4A4;
  *(&v64 - 3) = (&v64 - 6);
  v43 = v76;
  v62 = sub_1D6708908;
  v63 = v32;
  v44 = v78;
  sub_1D5D2BC70(v76, sub_1D615B49C, v45, sub_1D615B4A4, (&v64 - 6));
  if (v44)
  {
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v65 = v38;
    v66 = v28;
    v46 = v73;

    sub_1D72647EC();
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

    v48 = v72;
    (v69)(v72, v70, v46);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v81) = v84;
    v78 = xmmword_1D728CF30;
    v79 = xmmword_1D728CF30;
    v80 = 0;
    v83 = 0;
    v49 = swift_allocObject();
    v77 = &v64;
    *(v49 + 16) = v78;
    *(v49 + 32) = v83;
    v50 = v71;
    v51 = v66;
    *(v49 + 40) = v71;
    *(v49 + 48) = v51;
    MEMORY[0x1EEE9AC00](v49, v52);
    *(&v64 - 4) = sub_1D5B4AA6C;
    *(&v64 - 3) = 0;
    v62 = sub_1D6708908;
    v63 = v53;
    v83 = 0;
    v54 = swift_allocObject();
    *(v54 + 16) = v78;
    *(v54 + 32) = v83;
    *(v54 + 40) = v50;
    *(v54 + 48) = v51;
    swift_retain_n();
    v55 = sub_1D72647CC();
    v83 = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = v55;
    *(v56 + 24) = v78;
    *(v56 + 40) = v83;
    v57 = __swift_project_boxed_opaque_existential_1(v65, *(v65 + 3));
    MEMORY[0x1EEE9AC00](v57, v58);
    MEMORY[0x1EEE9AC00](v59, v60);
    *(&v64 - 4) = sub_1D615B4A4;
    *(&v64 - 3) = (&v64 - 6);
    v62 = sub_1D6708908;
    v63 = v54;
    sub_1D5D2BC70(v48, sub_1D615B49C, v61, sub_1D615B4A4, (&v64 - 6));

    sub_1D60566E4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D66682BC);
}

uint64_t FormatBindingTextExpressionLogic.Binding.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v38 = a2;
  sub_1D6668448();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66684DC();
  sub_1D5B58B84(&qword_1EDF0C420, sub_1D66684DC);
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

      v18 = *(v16 - 2);
      v17 = *(v16 - 1);

      v19 = sub_1D6627E68(0x676E69646E6962, 0xE700000000000000, 0x726F74617265706FLL, 0xE800000000000000);
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

  sub_1D5C77160();
  v31 = 0;
  v32 = 0;
  v33 = 0;
  sub_1D726431C();
  v27 = v34;
  v28 = v35;
  v29 = v36;
  v30 = v37;
  v24 = xmmword_1D728CF30;
  v25 = 0;
  sub_1D5C5813C();
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v22 = v26;
  v23 = v28;
  *v13 = v27;
  *(v13 + 16) = v23;
  *(v13 + 32) = v29;
  *(v13 + 48) = v30;
  *(v13 + 50) = v22;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBindingTextExpressionLogic.Binding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v68 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v65 - v8;
  sub_1D666865C();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 16);
  v83 = *v1;
  v84 = v15;
  v85 = *(v1 + 32);
  v86 = *(v1 + 48);
  v88 = *(v1 + 50);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D66684DC();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF0C420, sub_1D66684DC);
  sub_1D5D2EE70(&type metadata for FormatBindingTextExpressionLogic.Binding, v19, v21, v16, &type metadata for FormatBindingTextExpressionLogic.Binding, v19, &type metadata for FormatVersions.SydroF, v17, v14, v20, &off_1F51F6C58);
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD68);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v69 = v23;
  v70 = v22;
  v66 = v25;
  v65[2] = (v24 + 16);
  (v25)(v9);
  v65[1] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v79 = v83;
  v80 = v84;
  v81 = v85;
  v82 = v86;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v87 = 0;
  v29 = swift_allocObject();
  v73 = v65;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v87;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v75 = v9;
  v65[-4] = sub_1D5B4AA6C;
  v65[-3] = 0;
  v63 = sub_1D670890C;
  v64 = v31;
  v87 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v87;
  v67 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D66686F0();
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF02D88, sub_1D66686F0);
  swift_retain_n();
  v72 = v34;
  v71 = v35;
  v36 = sub_1D72647CC();
  v87 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v87;
  v38 = &v14[*(v11 + 36)];
  v39 = __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
  MEMORY[0x1EEE9AC00](v39, v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  v65[-4] = sub_1D615B4A4;
  v65[-3] = &v65[-6];
  v43 = v75;
  v63 = sub_1D6668784;
  v64 = v32;
  v44 = v74;
  sub_1D5D2BC70(v75, sub_1D615B49C, v45, sub_1D615B4A4, &v65[-6]);
  if (v44)
  {
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v65[0] = v38;
    v46 = v69;
    v47 = v70;
    v74 = v28;

    sub_1D5FD79B8();
    sub_1D72647EC();
    sub_1D5D2CFE8(v75, type metadata accessor for FormatVersionRequirement);

    v49 = v68;
    v66(v68, v46, v47);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v76) = v88;
    v75 = xmmword_1D728CF30;
    v79 = xmmword_1D728CF30;
    LOBYTE(v80) = 0;
    v87 = 0;
    v50 = swift_allocObject();
    v73 = v65;
    *(v50 + 16) = v75;
    *(v50 + 32) = v87;
    v51 = v67;
    v52 = v74;
    *(v50 + 40) = v67;
    *(v50 + 48) = v52;
    MEMORY[0x1EEE9AC00](v50, v53);
    v65[-4] = sub_1D5B4AA6C;
    v65[-3] = 0;
    v63 = sub_1D670890C;
    v64 = v54;
    v87 = 0;
    v55 = swift_allocObject();
    *(v55 + 16) = v75;
    *(v55 + 32) = v87;
    *(v55 + 40) = v51;
    *(v55 + 48) = v52;
    swift_retain_n();
    v56 = sub_1D72647CC();
    v87 = 0;
    v57 = swift_allocObject();
    *(v57 + 16) = v56;
    *(v57 + 24) = v75;
    *(v57 + 40) = v87;
    v58 = __swift_project_boxed_opaque_existential_1(v65[0], v65[0][3]);
    MEMORY[0x1EEE9AC00](v58, v59);
    MEMORY[0x1EEE9AC00](v60, v61);
    v65[-4] = sub_1D615B4A4;
    v65[-3] = &v65[-6];
    v63 = sub_1D670890C;
    v64 = v55;
    sub_1D5D2BC70(v49, sub_1D615B49C, v62, sub_1D615B4A4, &v65[-6]);

    sub_1D60566E4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D666865C);
}

uint64_t FormatBindingTextExpressionLogic.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v81 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v80 = &v76 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v79 = &v76 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v76 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v76 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v76 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v78 = &v76 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v77 = &v76 - v29;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = &v76 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *v1;
  v84 = *(v1 + 16);
  v86 = v34;
  v35 = *(v1 + 40);
  v82 = *(v1 + 32);
  v83 = v35;
  v36 = *(v1 + 50);
  v37 = *(v1 + 48);
  v38 = a1[3];
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v38);
  v40 = sub_1D5C30408();
  v85 = v33;
  sub_1D5D2EE70(&type metadata for FormatBindingTextExpressionLogic, &type metadata for FormatCodingKeys, v41, v38, &type metadata for FormatBindingTextExpressionLogic, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v39, v33, v40, &off_1F51F6C78);
  v42 = v36 >> 5;
  if (v42 > 2)
  {
    if ((v36 >> 5) > 4u)
    {
      v54 = v37 & 0xFF00FFFF | (v36 << 16);
      if (v42 == 5)
      {
        v87[0] = v86;
        v87[1] = v84;
        v88 = v82;
        v89 = v83;
        v90 = v54;
        v91 = BYTE2(v54) & 0x1F;
        if (qword_1EDF31ED8 != -1)
        {
          swift_once();
        }

        v55 = sub_1D725BD1C();
        v56 = __swift_project_value_buffer(v55, qword_1EDFFCD68);
        v57 = v81;
        (*(*(v55 - 8) + 16))(v81, v56, v55);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v58 = v85;
        sub_1D6388C08(7, v87, v57);
      }

      else
      {
        if (v84 | v86 | *(&v86 + 1) | *(&v84 + 1) | v82 | v83 || v54 != 12582912)
        {
          if (qword_1EDF31EB0 != -1)
          {
            swift_once();
          }

          v74 = sub_1D725BD1C();
          v75 = __swift_project_value_buffer(v74, qword_1EDFFCD30);
          v57 = v78;
          (*(*(v74 - 8) + 16))(v78, v75, v74);
          type metadata accessor for FormatVersionRequirement.Value(0);
          swift_storeEnumTagMultiPayload();
          v73 = 1;
        }

        else
        {
          if (qword_1EDF31EB0 != -1)
          {
            swift_once();
          }

          v71 = sub_1D725BD1C();
          v72 = __swift_project_value_buffer(v71, qword_1EDFFCD30);
          v57 = v77;
          (*(*(v71 - 8) + 16))(v77, v72, v71);
          type metadata accessor for FormatVersionRequirement.Value(0);
          swift_storeEnumTagMultiPayload();
          v73 = 0;
        }

        v58 = v85;
        sub_1D6419AE8(v73, v57);
      }

      sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);
      v48 = v58;
      return sub_1D5D2CFE8(v48, sub_1D5D30DC4);
    }

    if (v42 == 3)
    {
      v43 = BYTE8(v86);
      v44 = v85;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v45 = sub_1D725BD1C();
      v46 = __swift_project_value_buffer(v45, qword_1EDFFCD30);
      v47 = v79;
      (*(*(v45 - 8) + 16))(v79, v46, v45);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63888D8(5, v86, v43, v47);
      sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);
      v48 = v44;
      return sub_1D5D2CFE8(v48, sub_1D5D30DC4);
    }

    v66 = *(&v86 + 1);
    v67 = v84;
    v49 = v85;
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v68 = sub_1D725BD1C();
    v69 = __swift_project_value_buffer(v68, qword_1EDFFCD30);
    v70 = v80;
    (*(*(v68 - 8) + 16))(v80, v69, v68);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6388A70(6, v86, v66, v67, v70);
    v53 = v70;
LABEL_25:
    sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);
    v48 = v49;
    return sub_1D5D2CFE8(v48, sub_1D5D30DC4);
  }

  if (v36 >> 5)
  {
    v49 = v85;
    v50 = *(&v86 + 1);
    if (v42 == 1)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v51 = sub_1D725BD1C();
      v52 = __swift_project_value_buffer(v51, qword_1EDFFCD30);
      (*(*(v51 - 8) + 16))(v19, v52, v51);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6388710(3, v86, v50, v19);
      v53 = v19;
    }

    else
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v64 = sub_1D725BD1C();
      v65 = __swift_project_value_buffer(v64, qword_1EDFFCD30);
      (*(*(v64 - 8) + 16))(v15, v65, v64);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6388710(4, v86, v50, v15);
      v53 = v15;
    }

    goto LABEL_25;
  }

  v59 = *(&v86 + 1);
  v60 = v85;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v61 = sub_1D725BD1C();
  v62 = __swift_project_value_buffer(v61, qword_1EDFFCD30);
  (*(*(v61 - 8) + 16))(v23, v62, v61);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D6388710(2, v86, v59, v23);
  sub_1D5D2CFE8(v23, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v60, sub_1D5D30DC4);
}

uint64_t FormatCustomNodeStyle.Selector.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D6668800();
  v7 = v6;
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6668894();
  sub_1D5B58B84(&qword_1EDF252E8, sub_1D6668894);
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

      v22 = sub_1D6616250();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v10, v7);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C36978();
  v31 = 0uLL;
  v32 = 0;
  sub_1D726431C();
  v18 = v33;
  v17 = v34;
  v31 = xmmword_1D728CF30;
  v32 = 0;
  v19 = sub_1D726423C();
  v30 = v18;
  v25 = v7;
  v26 = v13;
  v27 = v19;
  sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
  v31 = xmmword_1D7297410;
  v32 = 0;
  sub_1D6668A14();
  sub_1D726427C();
  (*(v26 + 8))(v10, v25);
  v28 = v33;
  *a2 = v30;
  *(a2 + 8) = v17;
  *(a2 + 16) = v27;
  *(a2 + 24) = v28;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatCustomNodeStyle.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v95 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v98 = &v92 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  *&v106 = &v92 - v11;
  sub_1D6668AEC();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v1;
  v18 = v1[1];
  v113 = *(v1 + 16);
  v94 = v1[3];
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D6668894();
  v22 = v21;
  v23 = sub_1D5B58B84(&qword_1EDF252E8, sub_1D6668894);
  sub_1D5D2EE70(&type metadata for FormatCustomNodeStyle.Selector, v22, v24, v19, &type metadata for FormatCustomNodeStyle.Selector, v22, &type metadata for FormatVersions.JazzkonG, v20, v16, v23, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v25 = sub_1D725BD1C();
  v26 = __swift_project_value_buffer(v25, qword_1EDFFCD18);
  v27 = *(v25 - 8);
  v28 = *(v27 + 16);
  v29 = v106;
  v93 = v26;
  v96 = v25;
  v100 = v27 + 16;
  v101 = v28;
  (v28)(v106);
  v99 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v110 = v17;
  v111 = v18;
  v108 = 0uLL;
  v109 = 0;
  v30 = &v16[*(v13 + 44)];
  v31 = *v30;
  v32 = *(v30 + 1);
  v112 = 0;
  v33 = swift_allocObject();
  v104 = &v92;
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v112;
  *(v33 + 40) = v31;
  *(v33 + 48) = v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  *(&v92 - 4) = sub_1D5B4AA6C;
  *(&v92 - 3) = 0;
  v90 = sub_1D6708910;
  v91 = v35;
  v112 = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = v112;
  v97 = v31;
  *(v36 + 40) = v31;
  *(v36 + 48) = v32;
  sub_1D6668B80();
  v38 = v37;
  v39 = sub_1D5B58B84(&qword_1EDF032F8, sub_1D6668B80);
  swift_retain_n();
  v102 = v38;
  v103 = v39;
  v40 = sub_1D72647CC();
  v112 = 0;
  v41 = swift_allocObject();
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;
  *(v41 + 16) = v40;
  *(v41 + 40) = v112;
  v42 = *(v13 + 36);
  v105 = v16;
  v43 = &v16[v42];
  v44 = __swift_project_boxed_opaque_existential_1(v43, *(v43 + 3));
  MEMORY[0x1EEE9AC00](v44, v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  *(&v92 - 4) = sub_1D615B4A4;
  *(&v92 - 3) = (&v92 - 6);
  v90 = sub_1D6708910;
  v91 = v36;
  v48 = v107;
  sub_1D5D2BC70(v29, sub_1D615B49C, v49, sub_1D615B4A4, (&v92 - 6));
  if (v48)
  {
    sub_1D5D2CFE8(v29, type metadata accessor for FormatVersionRequirement);

    v50 = v105;
  }

  else
  {
    v92 = v43;
    *&v107 = v32;

    sub_1D5D3E60C();
    v50 = v105;
    sub_1D72647EC();
    sub_1D5D2CFE8(v29, type metadata accessor for FormatVersionRequirement);

    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v104 = 0;
    v52 = v96;
    v53 = __swift_project_value_buffer(v96, qword_1EDFFCDE0);
    v54 = v98;
    v101(v98, v53, v52);
    swift_storeEnumTagMultiPayload();
    v106 = xmmword_1D728CF30;
    v108 = xmmword_1D728CF30;
    v109 = 0;
    LOBYTE(v110) = 0;
    v55 = swift_allocObject();
    v57 = v55;
    *(v55 + 16) = v106;
    *(v55 + 32) = v110;
    v58 = v97;
    v59 = v107;
    *(v55 + 40) = v97;
    *(v55 + 48) = v59;
    if (v113 == 2)
    {

      v61 = v94;
      v60 = v95;
    }

    else
    {
      LOBYTE(v110) = v113 & 1;
      MEMORY[0x1EEE9AC00](v55, v56);
      *(&v92 - 4) = sub_1D5B4AA6C;
      *(&v92 - 3) = 0;
      v90 = sub_1D6708910;
      v91 = v57;
      v112 = 0;
      v76 = swift_allocObject();
      v77 = v58;
      v78 = v76;
      *(v76 + 16) = v106;
      *(v76 + 32) = v112;
      *(v76 + 40) = v77;
      *(v76 + 48) = v59;
      swift_retain_n();
      v79 = sub_1D72647CC();
      v112 = 0;
      v80 = swift_allocObject();
      *(v80 + 16) = v79;
      *(v80 + 24) = v106;
      *(v80 + 40) = v112;
      v81 = __swift_project_boxed_opaque_existential_1(v92, *(v92 + 3));
      MEMORY[0x1EEE9AC00](v81, v82);
      MEMORY[0x1EEE9AC00](v83, v84);
      *(&v92 - 4) = sub_1D615B4A4;
      *(&v92 - 3) = (&v92 - 6);
      v54 = v98;
      v90 = sub_1D6708910;
      v91 = v78;
      v85 = v104;
      v87 = sub_1D5D2F7A4(v98, sub_1D615B49C, v86, sub_1D615B4A4, (&v92 - 6));
      if (v85)
      {
        sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);

        return sub_1D5D2CFE8(v50, sub_1D6668AEC);
      }

      v88 = v87;

      if (v88)
      {
        sub_1D72647EC();
        v60 = v95;
        v52 = v96;
        v104 = 0;
        v58 = v97;
        v61 = v94;
        v59 = v107;
      }

      else
      {
        v104 = 0;
        v61 = v94;
        v60 = v95;
        v59 = v107;
        v52 = v96;
        v58 = v97;
      }
    }

    sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);

    v101(v60, v93, v52);
    swift_storeEnumTagMultiPayload();
    v107 = xmmword_1D7297410;
    v108 = xmmword_1D7297410;
    v109 = 0;
    LOBYTE(v110) = 0;
    v62 = swift_allocObject();
    v64 = v62;
    *(v62 + 16) = v107;
    *(v62 + 32) = v110;
    *(v62 + 40) = v58;
    *(v62 + 48) = v59;
    if (v61)
    {
      *&v106 = &v92;
      v110 = v61;
      MEMORY[0x1EEE9AC00](v62, v63);
      *(&v92 - 4) = sub_1D5B4AA6C;
      *(&v92 - 3) = 0;
      v90 = sub_1D6708910;
      v91 = v64;
      v112 = 0;
      v65 = swift_allocObject();
      *(v65 + 16) = v107;
      *(v65 + 32) = v112;
      *(v65 + 40) = v58;
      *(v65 + 48) = v59;
      swift_retain_n();

      v66 = sub_1D72647CC();
      v112 = 0;
      v67 = swift_allocObject();
      *(v67 + 16) = v66;
      *(v67 + 24) = v107;
      *(v67 + 40) = v112;
      v68 = __swift_project_boxed_opaque_existential_1(v92, *(v92 + 3));
      MEMORY[0x1EEE9AC00](v68, v69);
      MEMORY[0x1EEE9AC00](v70, v71);
      *(&v92 - 4) = sub_1D615B4A4;
      *(&v92 - 3) = (&v92 - 6);
      v72 = v95;
      v90 = sub_1D6668C14;
      v91 = v65;
      v73 = v104;
      v75 = sub_1D5D2F7A4(v95, sub_1D615B49C, v74, sub_1D615B4A4, (&v92 - 6));
      if (v73)
      {
      }

      else
      {
        v89 = v75;

        if (v89)
        {
          sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
          sub_1D60AD304();
          sub_1D72647EC();
        }
      }

      sub_1D5D2CFE8(v72, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v60, type metadata accessor for FormatVersionRequirement);
    }
  }

  return sub_1D5D2CFE8(v50, sub_1D6668AEC);
}

uint64_t FormatVisibility.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v32 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();

    v23 = a1;
  }

  else
  {
    v11 = a2;
    v12 = a1[3];
    v33 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v12);
    v13 = sub_1D7264AFC();
    LOBYTE(v12) = Dictionary<>.errorOnUnknownKeys.getter(v13);

    v14 = v37;
    v15 = v9;
    if (v12)
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
          *(v22 + 16) = &unk_1F5111EC0;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v14 + 8))(v15, v6);
          a1 = v33;
          goto LABEL_9;
        }
      }
    }

    sub_1D6668C90();
    v35 = 0;
    v36 = 0;
    sub_1D726431C();
    if (v34 > 1u)
    {
      if (v34 == 2)
      {
        sub_1D5C34074(0, &qword_1EDF419A0, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatValue);
        v34 = xmmword_1D7279980;
        sub_1D5C34150();
        sub_1D726431C();
        (*(v14 + 8))(v15, v6);
        v27 = v35;
        v28 = v36;
        v26 = swift_allocObject();
        *(v26 + 16) = v27;
        *(v26 + 24) = v28;
      }

      else
      {
        sub_1D5C30060(0, &qword_1EDF0F900, sub_1D615B9E8, &type metadata for FormatVisibility, type metadata accessor for FormatSelectorValue);
        v34 = xmmword_1D7279980;
        sub_1D6668CE4();
        sub_1D726431C();
        (*(v14 + 8))(v15, v6);
        v29 = v35;
        v30 = v36;
        v31 = swift_allocObject();
        *(v31 + 16) = v29;
        *(v31 + 24) = v30;
        v26 = v31 | 0x4000000000000000;
      }

      v25 = v33;
    }

    else
    {
      v25 = v33;
      if (v34)
      {
        (*(v14 + 8))(v15, v6);
        v26 = 0x8000000000000008;
      }

      else
      {
        (*(v14 + 8))(v15, v6);
        v26 = 0x8000000000000000;
      }
    }

    *v11 = v26;
    v23 = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t FormatVisibility.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v44 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v44 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v44 - v17;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v1;
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatVisibility, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatVisibility, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v25, v22, v26, &off_1F51F6CD8);
  if (v23 >> 62)
  {
    if (v23 >> 62 == 1)
    {
      v29 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v28 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v29);
      v30 = qword_1EDF31F08;

      if (v30 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCDE0);
      (*(*(v31 - 8) + 16))(v6, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63B3000(3, v29, v28, v6);
      sub_1D5EB15C4(v29);

      v33 = v6;
    }

    else if (v23 == 0x8000000000000000)
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v39 = sub_1D725BD1C();
      v40 = __swift_project_value_buffer(v39, qword_1EDFFCD50);
      (*(*(v39 - 8) + 16))(v18, v40, v39);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6423274(0, v18);
      v33 = v18;
    }

    else
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v41 = sub_1D725BD1C();
      v42 = __swift_project_value_buffer(v41, qword_1EDFFCD50);
      (*(*(v41 - 8) + 16))(v14, v42, v41);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6423274(1, v14);
      v33 = v14;
    }
  }

  else
  {
    v34 = *(v23 + 16);
    v35 = *(v23 + 24);
    v36 = qword_1EDF31ED0;

    if (v36 != -1)
    {
      swift_once();
    }

    v37 = sub_1D725BD1C();
    v38 = __swift_project_value_buffer(v37, qword_1EDFFCD50);
    (*(*(v37 - 8) + 16))(v10, v38, v37);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63B2E38(2, v34, v35, v10);

    v33 = v10;
  }

  sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t FormatIssueCoverNodeStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  *&v262 = &v242 - v7;
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v246 = &v242 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v247 = &v242 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v248 = &v242 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v249 = &v242 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v251 = &v242 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v250 = &v242 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v252 = &v242 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v260 = (&v242 - v31);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v242 - v34;
  sub_1D6669884();
  v263 = v36;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v242 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1[3];
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v40);
  sub_1D66699AC();
  v43 = v42;
  v44 = sub_1D5B58B84(&qword_1EDF0C4A0, sub_1D66699AC);
  v289 = v39;
  sub_1D5D2EE70(v4, v43, v45, v40, v4, v43, &type metadata for FormatVersions.StarSky, v41, v39, v44, &off_1F51F6CD8);
  swift_beginAccess();
  v47 = v2[2];
  v46 = v2[3];
  v258 = v2;
  v48 = qword_1EDF31ED0;

  if (v48 != -1)
  {
    swift_once();
  }

  v49 = sub_1D725BD1C();
  v50 = __swift_project_value_buffer(v49, qword_1EDFFCD50);
  v51 = *(v49 - 8);
  v52 = *(v51 + 16);
  v53 = v51 + 16;
  v259 = v50;
  v52(v35);
  v54 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v55 = v262;
  v253 = v47;
  sub_1D725892C();
  v56 = sub_1D725895C();
  v57 = (*(*(v56 - 8) + 48))(v55, 1, v56);
  v256 = v49;
  v257 = v53;
  v254 = v52;
  v255 = v54;
  if (v57 != 1)
  {
    sub_1D5D2CFE8(v35, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v55, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v76 = v259;
    v77 = v260;
    goto LABEL_7;
  }

  v245 = v46;
  sub_1D5D35558(v55, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v58 = v35;
  v59 = v263;
  v60 = v289;
  v61 = &v289[*(v263 + 11)];
  v63 = *v61;
  v62 = *(v61 + 1);
  LOBYTE(v278) = 0;
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  *(v64 + 24) = 0;
  *(v64 + 32) = v278;
  *(v64 + 40) = v63;
  *(v64 + 48) = v62;
  sub_1D6669918();
  v66 = v65;
  sub_1D5B58B84(&qword_1EDF03008, sub_1D6669918);

  *&v262 = v66;
  v67 = sub_1D72647CC();
  LOBYTE(v278) = 0;
  v68 = swift_allocObject();
  *(v68 + 24) = 0;
  *(v68 + 32) = 0;
  *(v68 + 16) = v67;
  *(v68 + 40) = v278;
  v69 = __swift_project_boxed_opaque_existential_1((v60 + *(v59 + 9)), *(v60 + *(v59 + 9) + 24));
  MEMORY[0x1EEE9AC00](v69, v70);
  MEMORY[0x1EEE9AC00](v71, v72);
  *(&v242 - 4) = sub_1D5B4AA6C;
  *(&v242 - 3) = 0;
  v240 = sub_1D6669B2C;
  v241 = v64;
  v73 = v261;
  v75 = sub_1D5D2F7A4(v58, sub_1D615B49C, v74, sub_1D615B4A4, (&v242 - 6));
  if (!v73)
  {
    v102 = v75;

    if (v102)
    {
      v278 = 0uLL;
      LOBYTE(v279) = 0;
      *&v270 = v253;
      *(&v270 + 1) = v245;
      sub_1D72647EC();

      sub_1D5D2CFE8(v58, type metadata accessor for FormatVersionRequirement);
      v77 = v260;
      v261 = 0;
      v76 = v259;
    }

    else
    {
      v261 = 0;
      sub_1D5D2CFE8(v58, type metadata accessor for FormatVersionRequirement);

      v76 = v259;
      v77 = v260;
    }

    v52 = v254;
    v49 = v256;
LABEL_7:
    v78 = v258[4];
    v79 = v258[5];
    (v52)(v77, v76, v49);
    swift_storeEnumTagMultiPayload();
    *&v270 = v78;
    *(&v270 + 1) = v79;
    v262 = xmmword_1D728CF30;
    v278 = xmmword_1D728CF30;
    LOBYTE(v279) = 0;
    v80 = v289;
    v81 = &v289[*(v263 + 11)];
    v83 = *v81;
    v82 = *(v81 + 1);
    LOBYTE(v264) = 0;
    v84 = swift_allocObject();
    v253 = &v242;
    *(v84 + 16) = v262;
    *(v84 + 32) = v264;
    *(v84 + 40) = v83;
    *(v84 + 48) = v82;
    MEMORY[0x1EEE9AC00](v84, v85);
    *(&v242 - 4) = sub_1D5B4AA6C;
    *(&v242 - 3) = 0;
    v240 = sub_1D6708914;
    v241 = v86;
    LOBYTE(v264) = 0;
    v87 = swift_allocObject();
    *(v87 + 16) = v262;
    *(v87 + 32) = v264;
    v242 = v83;
    *(v87 + 40) = v83;
    *(v87 + 48) = v82;
    sub_1D6669918();
    v89 = v88;
    v90 = sub_1D5B58B84(&qword_1EDF03008, sub_1D6669918);
    v243 = v82;
    swift_retain_n();
    v244 = v89;
    v245 = v90;
    v91 = sub_1D72647CC();
    LOBYTE(v264) = 0;
    v92 = swift_allocObject();
    *(v92 + 16) = v91;
    *(v92 + 24) = v262;
    *(v92 + 40) = v264;
    v93 = &v80[*(v263 + 9)];
    v94 = __swift_project_boxed_opaque_existential_1(v93, *(v93 + 3));
    MEMORY[0x1EEE9AC00](v94, v95);
    MEMORY[0x1EEE9AC00](v96, v97);
    *(&v242 - 4) = sub_1D615B4A4;
    *(&v242 - 3) = (&v242 - 6);
    v240 = sub_1D6708914;
    v241 = v87;
    v98 = v261;
    sub_1D5D2BC70(v77, sub_1D615B49C, v99, sub_1D615B4A4, (&v242 - 6));
    if (v98)
    {
      sub_1D5D2CFE8(v77, type metadata accessor for FormatVersionRequirement);

      v60 = v289;
      goto LABEL_10;
    }

    v263 = v93;

    sub_1D72647EC();
    sub_1D5D2CFE8(v260, type metadata accessor for FormatVersionRequirement);

    v103 = v258;
    swift_beginAccess();
    v104 = v103[6];
    v105 = v252;
    (v254)(v252, v259, v256);
    swift_storeEnumTagMultiPayload();
    if (*(v104 + 16))
    {
      LOBYTE(v278) = 0;
      v106 = swift_allocObject();
      v262 = xmmword_1D7297410;
      *(v106 + 16) = xmmword_1D7297410;
      *(v106 + 32) = v278;
      *(v106 + 40) = v242;
      *(v106 + 48) = v243;

      v107 = sub_1D72647CC();
      LOBYTE(v278) = 0;
      v108 = swift_allocObject();
      *(v108 + 16) = v107;
      *(v108 + 24) = v262;
      *(v108 + 40) = v278;
      v109 = __swift_project_boxed_opaque_existential_1(v263, *(v263 + 3));
      MEMORY[0x1EEE9AC00](v109, v110);
      MEMORY[0x1EEE9AC00](v111, v112);
      *(&v242 - 4) = sub_1D5B4AA6C;
      *(&v242 - 3) = 0;
      v240 = sub_1D6708914;
      v241 = v106;
      v114 = sub_1D5D2F7A4(v105, sub_1D615B49C, v113, sub_1D615B4A4, (&v242 - 6));
      v115 = v114;

      if (v115)
      {
        v278 = v262;
        LOBYTE(v279) = 0;
        *&v270 = v104;
        sub_1D5C34D84(0, &qword_1EDF04CA8, &type metadata for FormatIssueCoverNodeStyle.Selector, MEMORY[0x1E69E62F8]);
        sub_1D6669CAC();
        sub_1D72647EC();
        v103 = v258;
        v116 = v250;
        v261 = 0;

        sub_1D5D2CFE8(v252, type metadata accessor for FormatVersionRequirement);
        goto LABEL_24;
      }

      v261 = 0;
      sub_1D5D2CFE8(v252, type metadata accessor for FormatVersionRequirement);

      v103 = v258;
    }

    else
    {
      v261 = 0;
      sub_1D5D2CFE8(v105, type metadata accessor for FormatVersionRequirement);
    }

    v116 = v250;
LABEL_24:
    v117 = v103[7];
    v118 = v259;
    v119 = v254;
    (v254)(v116, v259, v256);
    swift_storeEnumTagMultiPayload();
    v262 = xmmword_1D72BAA60;
    v278 = xmmword_1D72BAA60;
    LOBYTE(v279) = 0;
    LOBYTE(v270) = 0;
    v120 = swift_allocObject();
    *(v120 + 16) = v262;
    *(v120 + 32) = v270;
    v123 = v242;
    v122 = v243;
    *(v120 + 40) = v242;
    *(v120 + 48) = v122;
    if (v117)
    {
      *&v270 = v117;
      MEMORY[0x1EEE9AC00](v120, v121);
      *(&v242 - 4) = sub_1D5B4AA6C;
      *(&v242 - 3) = 0;
      v240 = sub_1D6708914;
      v241 = v124;
      LOBYTE(v264) = 0;
      v260 = v124;
      v125 = swift_allocObject();
      *(v125 + 16) = v262;
      *(v125 + 32) = v264;
      *(v125 + 40) = v123;
      *(v125 + 48) = v243;
      swift_retain_n();

      v126 = sub_1D72647CC();
      LOBYTE(v264) = 0;
      v127 = swift_allocObject();
      *(v127 + 16) = v126;
      *(v127 + 24) = v262;
      *(v127 + 40) = v264;
      v128 = v263;
      v129 = __swift_project_boxed_opaque_existential_1(v263, *(v263 + 3));
      MEMORY[0x1EEE9AC00](v129, v130);
      MEMORY[0x1EEE9AC00](v131, v132);
      *(&v242 - 4) = sub_1D615B4A4;
      *(&v242 - 3) = (&v242 - 6);
      v240 = sub_1D6708914;
      v241 = v125;
      v133 = v261;
      v135 = sub_1D5D2F7A4(v116, sub_1D615B49C, v134, sub_1D615B4A4, (&v242 - 6));
      if (v133)
      {

        v136 = v289;

        v137 = v116;
LABEL_57:
        sub_1D5D2CFE8(v137, type metadata accessor for FormatVersionRequirement);
        v100 = v136;
        return sub_1D5D2CFE8(v100, sub_1D6669884);
      }

      v141 = v135;

      if (v141)
      {
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        sub_1D72647EC();
        v103 = v258;
        v140 = v251;
        v261 = 0;

        sub_1D5D2CFE8(v116, type metadata accessor for FormatVersionRequirement);
        v118 = v259;
        v119 = v254;
      }

      else
      {
        v261 = 0;

        sub_1D5D2CFE8(v116, type metadata accessor for FormatVersionRequirement);
        v103 = v258;
        v118 = v259;
        v119 = v254;
        v140 = v251;
      }

      v139 = v128;
      v138 = v243;
    }

    else
    {
      v138 = v243;

      sub_1D5D2CFE8(v116, type metadata accessor for FormatVersionRequirement);

      v139 = v263;
      v140 = v251;
    }

    v142 = v103[8];
    v119(v140, v118, v256);
    v143 = v119;
    swift_storeEnumTagMultiPayload();
    v262 = xmmword_1D72BAA70;
    v278 = xmmword_1D72BAA70;
    LOBYTE(v279) = 0;
    LOBYTE(v270) = 0;
    v144 = swift_allocObject();
    v146 = v144;
    *(v144 + 16) = v262;
    *(v144 + 32) = v270;
    v147 = v242;
    *(v144 + 40) = v242;
    *(v144 + 48) = v138;
    if (v142)
    {
      v260 = &v242;
      *&v270 = v142;
      MEMORY[0x1EEE9AC00](v144, v145);
      *(&v242 - 4) = sub_1D5B4AA6C;
      *(&v242 - 3) = 0;
      v240 = sub_1D6708914;
      v241 = v146;
      LOBYTE(v264) = 0;
      v148 = swift_allocObject();
      *(v148 + 16) = v262;
      *(v148 + 32) = v264;
      *(v148 + 40) = v147;
      *(v148 + 48) = v138;
      swift_retain_n();

      v149 = sub_1D72647CC();
      LOBYTE(v264) = 0;
      v150 = swift_allocObject();
      *(v150 + 16) = v149;
      *(v150 + 24) = v262;
      *(v150 + 40) = v264;
      *&v262 = v142;
      v151 = __swift_project_boxed_opaque_existential_1(v139, *(v139 + 3));
      MEMORY[0x1EEE9AC00](v151, v152);
      MEMORY[0x1EEE9AC00](v153, v154);
      *(&v242 - 4) = sub_1D615B4A4;
      *(&v242 - 3) = (&v242 - 6);
      v240 = sub_1D6708914;
      v241 = v148;
      v155 = v261;
      v157 = sub_1D5D2F7A4(v251, sub_1D615B49C, v156, sub_1D615B4A4, (&v242 - 6));
      if (v155)
      {

        v136 = v289;
        v137 = v251;
        goto LABEL_57;
      }

      v159 = v157;

      if (v159)
      {
        sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
        sub_1D66612AC();
        sub_1D72647EC();
        v160 = v251;
        v261 = 0;

        v161 = v160;
      }

      else
      {
        v261 = 0;

        v161 = v251;
      }

      sub_1D5D2CFE8(v161, type metadata accessor for FormatVersionRequirement);
      v158 = v259;
      v143 = v254;
    }

    else
    {

      sub_1D5D2CFE8(v140, type metadata accessor for FormatVersionRequirement);

      v158 = v118;
    }

    v162 = v258[9];
    v163 = v258[10];
    v164 = *(v258 + 88);
    v165 = v249;
    v166 = v158;
    v143(v249);
    swift_storeEnumTagMultiPayload();
    v262 = xmmword_1D72BAA80;
    v287 = xmmword_1D72BAA80;
    v288 = 0;
    LOBYTE(v278) = 0;
    v167 = swift_allocObject();
    v169 = v167;
    *(v167 + 16) = v262;
    *(v167 + 32) = v278;
    v170 = v242;
    *(v167 + 40) = v242;
    *(v167 + 48) = v138;
    if (v164 <= 0xFD)
    {
      v260 = &v242;
      v284 = v162;
      v285 = v163;
      v286 = v164;
      MEMORY[0x1EEE9AC00](v167, v168);
      v253 = &v242 - 6;
      *(&v242 - 4) = sub_1D5B4AA6C;
      *(&v242 - 3) = 0;
      v240 = sub_1D6708914;
      v241 = v169;
      LOBYTE(v278) = 0;
      v201 = swift_allocObject();
      v202 = v263;
      v203 = v201;
      *(v201 + 16) = v262;
      *(v201 + 32) = v278;
      *(v201 + 40) = v170;
      *(v201 + 48) = v138;
      swift_retain_n();
      sub_1D5ED34B0(v162, v163, v164);
      v204 = sub_1D72647CC();
      LOBYTE(v278) = 0;
      v205 = swift_allocObject();
      *(v205 + 16) = v204;
      *(v205 + 24) = v262;
      *(v205 + 40) = v278;
      v206 = __swift_project_boxed_opaque_existential_1(v202, *(v202 + 3));
      MEMORY[0x1EEE9AC00](v206, v207);
      MEMORY[0x1EEE9AC00](v208, v209);
      v210 = v253;
      *(&v242 - 4) = sub_1D615B4A4;
      *(&v242 - 3) = v210;
      v240 = sub_1D6708914;
      v241 = v203;
      v211 = v261;
      v213 = sub_1D5D2F7A4(v249, sub_1D615B49C, v212, sub_1D615B4A4, (&v242 - 6));
      if (v211)
      {

        v136 = v289;
        sub_1D5ED34A0(v284, v285, v286);
        v137 = v249;
        goto LABEL_57;
      }

      v236 = v213;

      if (v236)
      {
        sub_1D6661258();
        sub_1D72647EC();
        v171 = v248;
        v170 = v242;
        v261 = 0;

        sub_1D5ED34A0(v284, v285, v286);
        sub_1D5D2CFE8(v249, type metadata accessor for FormatVersionRequirement);
        v172 = v259;
      }

      else
      {
        v261 = 0;

        sub_1D5ED34A0(v284, v285, v286);
        sub_1D5D2CFE8(v249, type metadata accessor for FormatVersionRequirement);
        v172 = v259;
        v171 = v248;
        v170 = v242;
      }
    }

    else
    {

      sub_1D5D2CFE8(v165, type metadata accessor for FormatVersionRequirement);

      v171 = v248;
      v172 = v166;
    }

    v173 = *(v258 + 9);
    v280 = *(v258 + 8);
    v281 = v173;
    v282 = *(v258 + 10);
    v283 = *(v258 + 176);
    v174 = *(v258 + 7);
    v278 = *(v258 + 6);
    v279 = v174;
    (v254)(v171, v172, v256);
    swift_storeEnumTagMultiPayload();
    v262 = xmmword_1D72BAA90;
    v276 = xmmword_1D72BAA90;
    v277 = 0;
    LOBYTE(v270) = 0;
    v175 = swift_allocObject();
    v177 = v175;
    *(v175 + 16) = v262;
    *(v175 + 32) = v270;
    *(v175 + 40) = v170;
    *(v175 + 48) = v138;
    if (v283 == 254)
    {

      v178 = v261;
    }

    else
    {
      v260 = &v242;
      v272 = v280;
      v273 = v281;
      v274 = v282;
      v275 = v283;
      v270 = v278;
      v271 = v279;
      MEMORY[0x1EEE9AC00](v175, v176);
      *(&v242 - 4) = sub_1D5B4AA6C;
      *(&v242 - 3) = 0;
      v240 = sub_1D6708914;
      v241 = v177;
      LOBYTE(v264) = 0;
      v214 = swift_allocObject();
      *(v214 + 16) = v262;
      *(v214 + 32) = v264;
      *(v214 + 40) = v170;
      *(v214 + 48) = v138;
      swift_retain_n();
      sub_1D5D355B8(&v278, &v264, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
      v215 = v263;
      v216 = sub_1D72647CC();
      LOBYTE(v264) = 0;
      v217 = swift_allocObject();
      *(v217 + 16) = v216;
      *(v217 + 24) = v262;
      *(v217 + 40) = v264;
      v218 = __swift_project_boxed_opaque_existential_1(v215, *(v215 + 3));
      MEMORY[0x1EEE9AC00](v218, v219);
      MEMORY[0x1EEE9AC00](v220, v221);
      *(&v242 - 4) = sub_1D615B4A4;
      *(&v242 - 3) = (&v242 - 6);
      v240 = sub_1D6708914;
      v241 = v214;
      v222 = v261;
      v224 = sub_1D5D2F7A4(v248, sub_1D615B49C, v223, sub_1D615B4A4, (&v242 - 6));
      v178 = v222;
      if (v222)
      {

        v266 = v272;
        v267 = v273;
        v268 = v274;
        v269 = v275;
        v264 = v270;
        v265 = v271;
        sub_1D601144C(&v264);
        v136 = v289;
        v225 = v248;
        goto LABEL_56;
      }

      v237 = v224;

      if (v237)
      {
        sub_1D6661204();
        sub_1D72647EC();
        v171 = v248;
        v170 = v242;

        v266 = v272;
        v267 = v273;
        v268 = v274;
        v269 = v275;
        v264 = v270;
        v265 = v271;
        sub_1D601144C(&v264);
      }

      else
      {

        v266 = v272;
        v267 = v273;
        v268 = v274;
        v269 = v275;
        v264 = v270;
        v265 = v271;
        sub_1D601144C(&v264);
        v171 = v248;
        v170 = v242;
      }
    }

    sub_1D5D2CFE8(v171, type metadata accessor for FormatVersionRequirement);
    v179 = *(v258 + 177);
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v180 = v256;
    v181 = __swift_project_value_buffer(v256, qword_1EDFFCDE0);
    v182 = v247;
    (v254)(v247, v181, v180);
    swift_storeEnumTagMultiPayload();
    v262 = xmmword_1D72BAAA0;
    v270 = xmmword_1D72BAAA0;
    LOBYTE(v271) = 0;
    LOBYTE(v264) = 0;
    v183 = swift_allocObject();
    v185 = v183;
    *(v183 + 16) = v262;
    *(v183 + 32) = v264;
    *(v183 + 40) = v170;
    v186 = v170;
    v187 = v243;
    *(v183 + 48) = v243;
    if (v179 == 2)
    {

      v188 = v246;
      v189 = v186;
    }

    else
    {
      v260 = &v242;
      LOBYTE(v264) = v179 & 1;
      MEMORY[0x1EEE9AC00](v183, v184);
      v261 = v178;
      *(&v242 - 4) = sub_1D5B4AA6C;
      *(&v242 - 3) = 0;
      v240 = sub_1D6708914;
      v241 = v185;
      LOBYTE(v276) = 0;
      v226 = swift_allocObject();
      *(v226 + 16) = v262;
      *(v226 + 32) = v276;
      *(v226 + 40) = v186;
      *(v226 + 48) = v187;
      swift_retain_n();
      v227 = sub_1D72647CC();
      LOBYTE(v276) = 0;
      v228 = swift_allocObject();
      *(v228 + 16) = v227;
      *(v228 + 24) = v262;
      *(v228 + 40) = v276;
      v229 = __swift_project_boxed_opaque_existential_1(v263, *(v263 + 3));
      MEMORY[0x1EEE9AC00](v229, v230);
      MEMORY[0x1EEE9AC00](v231, v232);
      *(&v242 - 4) = sub_1D615B4A4;
      *(&v242 - 3) = (&v242 - 6);
      v240 = sub_1D6708914;
      v241 = v226;
      v233 = v261;
      v235 = sub_1D5D2F7A4(v182, sub_1D615B49C, v234, sub_1D615B4A4, (&v242 - 6));
      v178 = v233;
      if (v233)
      {
        sub_1D5D2CFE8(v182, type metadata accessor for FormatVersionRequirement);

        v100 = v289;
        return sub_1D5D2CFE8(v100, sub_1D6669884);
      }

      v238 = v235;

      if ((v238 & 1) == 0)
      {
        v60 = v289;
        v188 = v246;
        v189 = v242;
        goto LABEL_49;
      }

      sub_1D72647EC();
      v188 = v246;
      v189 = v242;
    }

    v60 = v289;
LABEL_49:
    sub_1D5D2CFE8(v247, type metadata accessor for FormatVersionRequirement);

    v190 = v258;
    swift_beginAccess();
    v191 = v190[23];
    (v254)(v188, v259, v256);
    swift_storeEnumTagMultiPayload();
    if (!*(v191 + 16))
    {
      sub_1D5D2CFE8(v188, type metadata accessor for FormatVersionRequirement);
      goto LABEL_10;
    }

    LOBYTE(v264) = 0;
    v192 = swift_allocObject();
    v262 = xmmword_1D72BAAB0;
    *(v192 + 16) = xmmword_1D72BAAB0;
    *(v192 + 32) = v264;
    *(v192 + 40) = v189;
    *(v192 + 48) = v243;

    v193 = sub_1D72647CC();
    LOBYTE(v264) = 0;
    v194 = swift_allocObject();
    *(v194 + 16) = v193;
    *(v194 + 24) = v262;
    *(v194 + 40) = v264;
    v195 = __swift_project_boxed_opaque_existential_1(v263, *(v263 + 3));
    MEMORY[0x1EEE9AC00](v195, v196);
    MEMORY[0x1EEE9AC00](v197, v198);
    *(&v242 - 4) = sub_1D5B4AA6C;
    *(&v242 - 3) = 0;
    v240 = sub_1D6708914;
    v241 = v192;
    v200 = sub_1D5D2F7A4(v188, sub_1D615B49C, v199, sub_1D615B4A4, (&v242 - 6));
    if (v178)
    {
      sub_1D5D2CFE8(v188, type metadata accessor for FormatVersionRequirement);

LABEL_18:
      v100 = v289;
      return sub_1D5D2CFE8(v100, sub_1D6669884);
    }

    v239 = v200;

    if ((v239 & 1) == 0)
    {
      sub_1D5D2CFE8(v246, type metadata accessor for FormatVersionRequirement);

      goto LABEL_18;
    }

    v264 = v262;
    LOBYTE(v265) = 0;
    *&v276 = v191;
    sub_1D5C34D84(0, &qword_1EDF04DC0, &type metadata for FormatIssueCoverTraits, MEMORY[0x1E69E62F8]);
    sub_1D6669BBC();
    v136 = v289;
    sub_1D72647EC();
    v225 = v246;

LABEL_56:
    v137 = v225;
    goto LABEL_57;
  }

  sub_1D5D2CFE8(v58, type metadata accessor for FormatVersionRequirement);

LABEL_10:
  v100 = v60;
  return sub_1D5D2CFE8(v100, sub_1D6669884);
}

uint64_t FormatIssueCoverNodeStyle.Selector.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v42 = a2;
  sub_1D6669D48();
  v6 = v5;
  v63 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6669DDC();
  sub_1D5B58B84(&qword_1EDF0C490, sub_1D6669DDC);
  sub_1D7264B0C();
  if (v2)
  {
    v10 = a1;
LABEL_11:
    sub_1D61E4FBC(v10, v3);
    swift_willThrow();

    v34 = v10;
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  v11 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v12 = sub_1D7264AFC();
  LOBYTE(v11) = Dictionary<>.errorOnUnknownKeys.getter(v12);

  v13 = v63;
  v14 = v9;
  if (v11)
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
          goto LABEL_8;
        }
      }

      v20 = *(v17 - 2);
      v19 = *(v17 - 1);

      v21 = sub_1D6616668();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21;
      *(v22 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v14, v6);
      v10 = v41;
      goto LABEL_11;
    }

LABEL_8:
  }

  sub_1D5C36978();
  v57 = 0uLL;
  LOBYTE(v58) = 0;
  sub_1D726431C();
  v18 = v49;
  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  v57 = xmmword_1D728CF30;
  LOBYTE(v58) = 0;
  sub_1D5C35368();
  sub_1D726427C();
  v40 = v18;
  v23 = v49;
  sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
  v57 = xmmword_1D7297410;
  LOBYTE(v58) = 0;
  sub_1D5C34DD4();
  sub_1D726427C();
  v24 = v49;
  v49 = xmmword_1D72BAA60;
  LOBYTE(v50) = 0;
  sub_1D5C8C780();
  sub_1D726427C();
  v38 = v57;
  v39 = v58;
  v55 = xmmword_1D72BAA70;
  v56 = 0;
  sub_1D5C34EC4();
  sub_1D726427C();
  v51 = v59;
  v52 = v60;
  v53 = v61;
  v54 = v62;
  v49 = v57;
  v50 = v58;
  v47 = xmmword_1D72BAA80;
  v48 = 0;
  HIDWORD(v35) = sub_1D726423C();
  v36 = v24;
  v37 = v23;
  sub_1D5C34D84(0, &qword_1EDF04DC0, &type metadata for FormatIssueCoverTraits, MEMORY[0x1E69E62F8]);
  v47 = xmmword_1D72BAA90;
  v48 = 0;
  sub_1D6669F5C();
  sub_1D726427C();
  (*(v13 + 8))(v14, v6);
  v26 = v46;
  *&v43[23] = v50;
  *&v43[7] = v49;
  *&v43[55] = v52;
  *&v43[39] = v51;
  *&v43[71] = v53;
  v43[87] = v54;
  v27 = v42;
  *v42 = v40;
  v27[1] = *(&v18 + 1);
  v28 = v36;
  v27[2] = v37;
  v27[3] = v28;
  v29 = *(&v38 + 1);
  v27[4] = v38;
  v27[5] = v29;
  *(v27 + 48) = v39;
  v30 = *v43;
  *(v27 + 65) = *&v43[16];
  *(v27 + 49) = v30;
  v31 = *&v43[32];
  v32 = *&v43[48];
  v33 = *&v43[64];
  *(v27 + 129) = *&v43[80];
  *(v27 + 113) = v33;
  *(v27 + 97) = v32;
  *(v27 + 81) = v31;
  *(v27 + 137) = BYTE4(v35);
  LODWORD(v29) = v44;
  *(v27 + 71) = v45;
  *(v27 + 138) = v29;
  v27[18] = v26;
  v34 = v41;
  return __swift_destroy_boxed_opaque_existential_1(v34);
}

uint64_t FormatIssueCoverNodeStyle.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v186 = &v181 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v185 = &v181 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v190 = &v181 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v191 = &v181 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v192 = &v181 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v201 = (&v181 - v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v181 - v23;
  sub_1D666A04C();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v181 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v1 + 8);
  v206 = *v1;
  v31 = *(v1 + 16);
  v193 = *(v1 + 24);
  v194 = v31;
  v32 = *(v1 + 32);
  v187 = *(v1 + 40);
  v188 = v32;
  v189 = *(v1 + 48);
  v33 = *(v1 + 104);
  v228 = *(v1 + 88);
  v229 = v33;
  v230 = *(v1 + 120);
  v231 = *(v1 + 136);
  v34 = *(v1 + 72);
  v226 = *(v1 + 56);
  v227 = v34;
  v184 = *(v1 + 137);
  v183 = *(v1 + 144);
  v35 = a1[3];
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v35);
  sub_1D6669DDC();
  v38 = v37;
  v39 = sub_1D5B58B84(&qword_1EDF0C490, sub_1D6669DDC);
  sub_1D5D2EE70(&type metadata for FormatIssueCoverNodeStyle.Selector, v38, v40, v35, &type metadata for FormatIssueCoverNodeStyle.Selector, v38, &type metadata for FormatVersions.StarSky, v36, v29, v39, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v41 = sub_1D725BD1C();
  v42 = __swift_project_value_buffer(v41, qword_1EDFFCD50);
  v43 = *(v41 - 8);
  v44 = *(v43 + 16);
  v195 = v42;
  v197 = v41;
  v199 = v43 + 16;
  v200 = v44;
  (v44)(v24);
  v202 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v207 = v206;
  *(&v207 + 1) = v30;
  v213 = 0uLL;
  LOBYTE(v214) = 0;
  v45 = &v29[*(v26 + 44)];
  v46 = *v45;
  v47 = *(v45 + 1);
  *&v205 = v24;
  LOBYTE(v224) = 0;
  v48 = swift_allocObject();
  v206 = &v181;
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  *(v48 + 32) = v224;
  *(v48 + 40) = v46;
  *(v48 + 48) = v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  *(&v181 - 4) = sub_1D5B4AA6C;
  *(&v181 - 3) = 0;
  v179 = sub_1D6708918;
  v180 = v50;
  LOBYTE(v224) = 0;
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  *(v51 + 24) = 0;
  *(v51 + 32) = v224;
  v198 = v46;
  *(v51 + 40) = v46;
  *(v51 + 48) = v47;
  sub_1D666A0E0();
  v53 = v52;
  v54 = sub_1D5B58B84(&qword_1EDF02FF8, sub_1D666A0E0);
  v196 = v47;
  swift_retain_n();
  v203 = v53;
  v204 = v54;
  v55 = sub_1D72647CC();
  LOBYTE(v224) = 0;
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  *(v56 + 32) = 0;
  *(v56 + 16) = v55;
  *(v56 + 40) = v224;
  v57 = v29;
  v58 = &v29[*(v26 + 36)];
  v59 = __swift_project_boxed_opaque_existential_1(v58, *(v58 + 3));
  MEMORY[0x1EEE9AC00](v59, v60);
  MEMORY[0x1EEE9AC00](v61, v62);
  *(&v181 - 4) = sub_1D615B4A4;
  *(&v181 - 3) = (&v181 - 6);
  v179 = sub_1D6708918;
  v180 = v51;
  v63 = v205;
  v64 = v232;
  sub_1D5D2BC70(v205, sub_1D615B49C, v65, sub_1D615B4A4, (&v181 - 6));
  if (v64)
  {
    sub_1D5D2CFE8(v63, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v57, sub_1D666A04C);
  }

  v182 = v58;

  sub_1D5D3E60C();
  sub_1D72647EC();
  v232 = 0;
  v206 = v57;
  sub_1D5D2CFE8(v63, type metadata accessor for FormatVersionRequirement);

  v67 = v200;
  v68 = v201;
  v69 = v195;
  v70 = v197;
  v200(v201, v195, v197);
  swift_storeEnumTagMultiPayload();
  v205 = xmmword_1D728CF30;
  v213 = xmmword_1D728CF30;
  LOBYTE(v214) = 0;
  LOBYTE(v207) = 0;
  v71 = swift_allocObject();
  v73 = v71;
  *(v71 + 16) = v205;
  *(v71 + 32) = v207;
  v74 = v198;
  v75 = v196;
  *(v71 + 40) = v198;
  *(v71 + 48) = v75;
  if (v194)
  {
    *&v207 = v194;
    MEMORY[0x1EEE9AC00](v71, v72);
    *(&v181 - 4) = sub_1D5B4AA6C;
    *(&v181 - 3) = 0;
    v179 = sub_1D6708918;
    v180 = v73;
    LOBYTE(v224) = 0;
    v76 = swift_allocObject();
    *(v76 + 16) = v205;
    *(v76 + 32) = v224;
    *(v76 + 40) = v74;
    *(v76 + 48) = v75;
    swift_retain_n();

    v77 = sub_1D72647CC();
    LOBYTE(v224) = 0;
    v78 = swift_allocObject();
    *(v78 + 16) = v77;
    *(v78 + 24) = v205;
    *(v78 + 40) = v224;
    v79 = __swift_project_boxed_opaque_existential_1(v182, *(v182 + 3));
    MEMORY[0x1EEE9AC00](v79, v80);
    MEMORY[0x1EEE9AC00](v81, v82);
    *(&v181 - 4) = sub_1D615B4A4;
    *(&v181 - 3) = (&v181 - 6);
    v83 = v201;
    v179 = sub_1D6708918;
    v180 = v76;
    v84 = v232;
    v86 = sub_1D5D2F7A4(v201, sub_1D615B49C, v85, sub_1D615B4A4, (&v181 - 6));
    v232 = v84;
    if (v84)
    {

      v87 = v206;
LABEL_8:

LABEL_18:
      v103 = v83;
LABEL_19:
      sub_1D5D2CFE8(v103, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v87, sub_1D666A04C);
    }

    v88 = v86;

    if (v88)
    {
      sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
      sub_1D66582DC();
      v87 = v206;
      v89 = v232;
      sub_1D72647EC();
      v75 = v196;
      v70 = v197;
      v67 = v200;
      if (v89)
      {

        goto LABEL_8;
      }

      v232 = 0;

      sub_1D5D2CFE8(v83, type metadata accessor for FormatVersionRequirement);
      v74 = v198;
      v69 = v195;
    }

    else
    {

      sub_1D5D2CFE8(v83, type metadata accessor for FormatVersionRequirement);
      v75 = v196;
      v70 = v197;
      v74 = v198;
      v69 = v195;
      v67 = v200;
    }
  }

  else
  {

    sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);
  }

  v83 = v192;
  v67(v192, v69, v70);
  swift_storeEnumTagMultiPayload();
  v205 = xmmword_1D7297410;
  v213 = xmmword_1D7297410;
  LOBYTE(v214) = 0;
  LOBYTE(v207) = 0;
  v90 = swift_allocObject();
  v92 = v90;
  *(v90 + 16) = v205;
  *(v90 + 32) = v207;
  *(v90 + 40) = v74;
  *(v90 + 48) = v75;
  if (v193)
  {
    v201 = &v181;
    *&v207 = v193;
    MEMORY[0x1EEE9AC00](v90, v91);
    *(&v181 - 4) = sub_1D5B4AA6C;
    *(&v181 - 3) = 0;
    v179 = sub_1D6708918;
    v180 = v92;
    LOBYTE(v224) = 0;
    v93 = swift_allocObject();
    *(v93 + 16) = v205;
    *(v93 + 32) = v224;
    *(v93 + 40) = v74;
    *(v93 + 48) = v75;
    swift_retain_n();

    v94 = sub_1D72647CC();
    LOBYTE(v224) = 0;
    v95 = swift_allocObject();
    *(v95 + 16) = v94;
    *(v95 + 24) = v205;
    *(v95 + 40) = v224;
    v96 = __swift_project_boxed_opaque_existential_1(v182, *(v182 + 3));
    MEMORY[0x1EEE9AC00](v96, v97);
    MEMORY[0x1EEE9AC00](v98, v99);
    *(&v181 - 4) = sub_1D615B4A4;
    *(&v181 - 3) = (&v181 - 6);
    v179 = sub_1D6708918;
    v180 = v93;
    v100 = v232;
    v102 = sub_1D5D2F7A4(v83, sub_1D615B49C, v101, sub_1D615B4A4, (&v181 - 6));
    v232 = v100;
    if (v100)
    {

      v87 = v206;
      goto LABEL_18;
    }

    v104 = v102;

    if (v104)
    {
      sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
      sub_1D66612AC();
      v87 = v206;
      v105 = v232;
      sub_1D72647EC();
      v75 = v196;
      v70 = v197;
      v67 = v200;
      if (v105)
      {

        v83 = v192;
        goto LABEL_18;
      }

      v232 = 0;

      sub_1D5D2CFE8(v192, type metadata accessor for FormatVersionRequirement);
      v74 = v198;
      v69 = v195;
    }

    else
    {

      sub_1D5D2CFE8(v83, type metadata accessor for FormatVersionRequirement);
      v75 = v196;
      v70 = v197;
      v74 = v198;
      v69 = v195;
      v67 = v200;
    }
  }

  else
  {

    sub_1D5D2CFE8(v83, type metadata accessor for FormatVersionRequirement);
  }

  v106 = v191;
  v67(v191, v69, v70);
  swift_storeEnumTagMultiPayload();
  v205 = xmmword_1D72BAA60;
  v224 = xmmword_1D72BAA60;
  v225 = 0;
  LOBYTE(v213) = 0;
  v107 = swift_allocObject();
  v109 = v107;
  *(v107 + 16) = v205;
  *(v107 + 32) = v213;
  *(v107 + 40) = v74;
  *(v107 + 48) = v75;
  if (v189 > 0xFD)
  {

    sub_1D5D2CFE8(v106, type metadata accessor for FormatVersionRequirement);

    goto LABEL_28;
  }

  v201 = &v181;
  v138 = v187;
  v139 = v188;
  v221 = v188;
  v222 = v187;
  v223 = v189;
  MEMORY[0x1EEE9AC00](v107, v108);
  v194 = &v181 - 6;
  *(&v181 - 4) = sub_1D5B4AA6C;
  *(&v181 - 3) = 0;
  v179 = sub_1D6708918;
  v180 = v109;
  LOBYTE(v213) = 0;
  v141 = v140;
  v142 = swift_allocObject();
  *(v142 + 16) = v205;
  *(v142 + 32) = v213;
  *(v142 + 40) = v74;
  *(v142 + 48) = v75;
  swift_retain_n();
  sub_1D5ED34B0(v139, v138, v141);
  v143 = sub_1D72647CC();
  LOBYTE(v213) = 0;
  v144 = swift_allocObject();
  *(v144 + 16) = v143;
  *(v144 + 24) = v205;
  *(v144 + 40) = v213;
  v145 = __swift_project_boxed_opaque_existential_1(v182, *(v182 + 3));
  MEMORY[0x1EEE9AC00](v145, v146);
  MEMORY[0x1EEE9AC00](v147, v148);
  v149 = v194;
  *(&v181 - 4) = sub_1D615B4A4;
  *(&v181 - 3) = v149;
  v179 = sub_1D6708918;
  v180 = v142;
  v150 = v191;
  v151 = v232;
  v153 = sub_1D5D2F7A4(v191, sub_1D615B49C, v152, sub_1D615B4A4, (&v181 - 6));
  v232 = v151;
  if (v151)
  {

    v87 = v206;
LABEL_39:
    sub_1D5ED34A0(v221, v222, v223);
    v103 = v150;
    goto LABEL_19;
  }

  v174 = v153;

  if (v174)
  {
    sub_1D6661258();
    v87 = v206;
    v175 = v232;
    sub_1D72647EC();
    v75 = v196;
    v70 = v197;
    v67 = v200;
    if (v175)
    {

      v150 = v191;
      goto LABEL_39;
    }

    v232 = 0;

    sub_1D5ED34A0(v221, v222, v223);
    sub_1D5D2CFE8(v191, type metadata accessor for FormatVersionRequirement);
    v74 = v198;
    v69 = v195;
  }

  else
  {

    sub_1D5ED34A0(v221, v222, v223);
    sub_1D5D2CFE8(v150, type metadata accessor for FormatVersionRequirement);
    v75 = v196;
    v70 = v197;
    v74 = v198;
    v69 = v195;
    v67 = v200;
  }

LABEL_28:
  v110 = v190;
  v67(v190, v69, v70);
  swift_storeEnumTagMultiPayload();
  v205 = xmmword_1D72BAA70;
  v219 = xmmword_1D72BAA70;
  v220 = 0;
  LOBYTE(v213) = 0;
  v111 = swift_allocObject();
  v113 = v111;
  *(v111 + 16) = v205;
  *(v111 + 32) = v213;
  *(v111 + 40) = v74;
  *(v111 + 48) = v75;
  if (v231 == 254)
  {

    v114 = v206;
    v115 = v232;
  }

  else
  {
    v201 = &v181;
    v215 = v228;
    v216 = v229;
    v217 = v230;
    v218 = v231;
    v213 = v226;
    v214 = v227;
    MEMORY[0x1EEE9AC00](v111, v112);
    *(&v181 - 4) = sub_1D5B4AA6C;
    *(&v181 - 3) = 0;
    v179 = sub_1D6708918;
    v180 = v113;
    LOBYTE(v207) = 0;
    v154 = swift_allocObject();
    *(v154 + 16) = v205;
    *(v154 + 32) = v207;
    *(v154 + 40) = v74;
    *(v154 + 48) = v75;
    swift_retain_n();
    sub_1D5D355B8(&v226, &v207, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
    v155 = sub_1D72647CC();
    LOBYTE(v207) = 0;
    v156 = swift_allocObject();
    *(v156 + 16) = v155;
    *(v156 + 24) = v205;
    *(v156 + 40) = v207;
    v157 = __swift_project_boxed_opaque_existential_1(v182, *(v182 + 3));
    MEMORY[0x1EEE9AC00](v157, v158);
    MEMORY[0x1EEE9AC00](v159, v160);
    *(&v181 - 4) = sub_1D615B4A4;
    *(&v181 - 3) = (&v181 - 6);
    v179 = sub_1D6708918;
    v180 = v154;
    v161 = v232;
    v163 = sub_1D5D2F7A4(v110, sub_1D615B49C, v162, sub_1D615B4A4, (&v181 - 6));
    if (v161)
    {

      v209 = v215;
      v210 = v216;
      v211 = v217;
      v212 = v218;
      v207 = v213;
      v208 = v214;
      sub_1D601144C(&v207);
      v114 = v206;
      goto LABEL_42;
    }

    v176 = v163;

    if (v176)
    {
      sub_1D6661204();
      v114 = v206;
      sub_1D72647EC();
      v70 = v197;
      v67 = v200;
      v115 = 0;

      v209 = v215;
      v210 = v216;
      v211 = v217;
      v212 = v218;
      v207 = v213;
      v208 = v214;
      sub_1D601144C(&v207);
      v75 = v196;
    }

    else
    {

      v209 = v215;
      v210 = v216;
      v211 = v217;
      v212 = v218;
      v207 = v213;
      v208 = v214;
      sub_1D601144C(&v207);
      v114 = v206;
      v115 = 0;
      v75 = v196;
      v70 = v197;
      v67 = v200;
    }
  }

  sub_1D5D2CFE8(v190, type metadata accessor for FormatVersionRequirement);
  if (qword_1EDF31F08 != -1)
  {
    swift_once();
  }

  v116 = __swift_project_value_buffer(v70, qword_1EDFFCDE0);
  v117 = v185;
  v67(v185, v116, v70);
  swift_storeEnumTagMultiPayload();
  v205 = xmmword_1D72BAA80;
  v213 = xmmword_1D72BAA80;
  LOBYTE(v214) = 0;
  LOBYTE(v207) = 0;
  v118 = swift_allocObject();
  v120 = v118;
  *(v118 + 16) = v205;
  *(v118 + 32) = v207;
  v121 = v198;
  *(v118 + 40) = v198;
  *(v118 + 48) = v75;
  if (v184 == 2)
  {

    v122 = v117;
    v123 = v200;
  }

  else
  {
    v232 = v115;
    v201 = &v181;
    LOBYTE(v207) = v184 & 1;
    MEMORY[0x1EEE9AC00](v118, v119);
    *(&v181 - 4) = sub_1D5B4AA6C;
    *(&v181 - 3) = 0;
    v179 = sub_1D6708918;
    v180 = v120;
    LOBYTE(v219) = 0;
    v164 = swift_allocObject();
    *(v164 + 16) = v205;
    *(v164 + 32) = v219;
    *(v164 + 40) = v121;
    *(v164 + 48) = v75;
    swift_retain_n();
    v165 = sub_1D72647CC();
    LOBYTE(v219) = 0;
    v166 = swift_allocObject();
    *(v166 + 16) = v165;
    *(v166 + 24) = v205;
    *(v166 + 40) = v219;
    v167 = __swift_project_boxed_opaque_existential_1(v182, *(v182 + 3));
    MEMORY[0x1EEE9AC00](v167, v168);
    MEMORY[0x1EEE9AC00](v169, v170);
    *(&v181 - 4) = sub_1D615B4A4;
    *(&v181 - 3) = (&v181 - 6);
    v179 = sub_1D6708918;
    v180 = v164;
    v171 = v232;
    v173 = sub_1D5D2F7A4(v117, sub_1D615B49C, v172, sub_1D615B4A4, (&v181 - 6));
    v115 = v171;
    if (v171)
    {
      sub_1D5D2CFE8(v117, type metadata accessor for FormatVersionRequirement);

      goto LABEL_45;
    }

    v177 = v173;

    if (v177)
    {
      v114 = v206;
      sub_1D72647EC();
      v70 = v197;
      v123 = v200;
      v122 = v185;
      v75 = v196;
    }

    else
    {
      v114 = v206;
      v122 = v185;
      v75 = v196;
      v70 = v197;
      v123 = v200;
    }
  }

  sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);

  v123(v186, v195, v70);
  swift_storeEnumTagMultiPayload();
  v205 = xmmword_1D72BAA90;
  v213 = xmmword_1D72BAA90;
  LOBYTE(v214) = 0;
  LOBYTE(v207) = 0;
  v124 = swift_allocObject();
  v126 = v124;
  *(v124 + 16) = v205;
  *(v124 + 32) = v207;
  v127 = v198;
  *(v124 + 40) = v198;
  *(v124 + 48) = v75;
  if (!v183)
  {

    sub_1D5D2CFE8(v186, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v114, sub_1D666A04C);
  }

  v232 = v115;
  v202 = &v181;
  *&v207 = v183;
  MEMORY[0x1EEE9AC00](v124, v125);
  *(&v181 - 4) = sub_1D5B4AA6C;
  *(&v181 - 3) = 0;
  v179 = sub_1D6708918;
  v180 = v126;
  LOBYTE(v219) = 0;
  v128 = swift_allocObject();
  *(v128 + 16) = v205;
  *(v128 + 32) = v219;
  *(v128 + 40) = v127;
  *(v128 + 48) = v75;
  swift_retain_n();

  v129 = sub_1D72647CC();
  LOBYTE(v219) = 0;
  v130 = swift_allocObject();
  *(v130 + 16) = v129;
  *(v130 + 24) = v205;
  *(v130 + 40) = v219;
  v131 = __swift_project_boxed_opaque_existential_1(v182, *(v182 + 3));
  MEMORY[0x1EEE9AC00](v131, v132);
  MEMORY[0x1EEE9AC00](v133, v134);
  *(&v181 - 4) = sub_1D615B4A4;
  *(&v181 - 3) = (&v181 - 6);
  v179 = sub_1D666A174;
  v180 = v128;
  v110 = v186;
  v135 = v232;
  v137 = sub_1D5D2F7A4(v186, sub_1D615B49C, v136, sub_1D615B4A4, (&v181 - 6));
  if (!v135)
  {
    v178 = v137;

    if (v178)
    {
      sub_1D5C34D84(0, &qword_1EDF04DC0, &type metadata for FormatIssueCoverTraits, MEMORY[0x1E69E62F8]);
      sub_1D6669BBC();
      v114 = v206;
      sub_1D72647EC();

      goto LABEL_42;
    }

    sub_1D5D2CFE8(v110, type metadata accessor for FormatVersionRequirement);
LABEL_45:
    v114 = v206;
    return sub_1D5D2CFE8(v114, sub_1D666A04C);
  }

  v114 = v206;
LABEL_42:
  sub_1D5D2CFE8(v110, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v114, sub_1D666A04C);
}

uint64_t FormatProgressViewNodeStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v196 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v201 = &v196 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v202 = &v196 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v204 = &v196 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v203 = &v196 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v205 = &v196 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v213 = (&v196 - v26);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v196 - v29;
  sub_1D666A92C();
  *&v214 = v31;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v196 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1[3];
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v35);
  sub_1D666AA54();
  v38 = v37;
  v39 = sub_1D5B58B84(&qword_1EDF24F38, sub_1D666AA54);
  v217 = v34;
  sub_1D5D2EE70(v4, v38, v40, v35, v4, v38, &type metadata for FormatVersions.StarSkyC, v36, v34, v39, &off_1F51F6B18);
  swift_beginAccess();
  v41 = v2[2];
  v42 = v2[3];
  v211 = v2;
  v43 = qword_1EDF31E98;

  if (v43 != -1)
  {
    swift_once();
  }

  v44 = sub_1D725BD1C();
  v45 = __swift_project_value_buffer(v44, qword_1EDFFCD00);
  v46 = *(v44 - 8);
  v47 = *(v46 + 16);
  v48 = v46 + 16;
  v212 = v45;
  v47(v30);
  v210 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v49 = sub_1D725895C();
  v50 = (*(*(v49 - 8) + 48))(v8, 1, v49);
  v208 = v47;
  v209 = v48;
  if (v50 == 1)
  {
    v206 = v41;
    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v51 = v214;
    v52 = v217;
    v53 = &v217[*(v214 + 44)];
    v55 = *v53;
    v54 = *(v53 + 1);
    LOBYTE(v221) = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = 0;
    *(v56 + 24) = 0;
    *(v56 + 32) = v221;
    *(v56 + 40) = v55;
    *(v56 + 48) = v54;
    sub_1D666A9C0();
    v58 = v57;
    sub_1D5B58B84(&qword_1EDF02EA8, sub_1D666A9C0);

    v207 = v58;
    v59 = sub_1D72647CC();
    LOBYTE(v221) = 0;
    v60 = swift_allocObject();
    *(v60 + 24) = 0;
    *(v60 + 32) = 0;
    *(v60 + 16) = v59;
    *(v60 + 40) = v221;
    v61 = __swift_project_boxed_opaque_existential_1((v52 + *(v51 + 36)), *(v52 + *(v51 + 36) + 24));
    *&v215 = &v196;
    MEMORY[0x1EEE9AC00](v61, v62);
    MEMORY[0x1EEE9AC00](v63, v64);
    *(&v196 - 4) = sub_1D5B4AA6C;
    *(&v196 - 3) = 0;
    v194 = sub_1D666ABD4;
    v195 = v56;
    v65 = v216;
    v67 = sub_1D5D2F7A4(v30, sub_1D615B49C, v66, sub_1D615B4A4, (&v196 - 6));
    if (v65)
    {
      sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);

      v68 = v52;
      return sub_1D5D2CFE8(v68, sub_1D666A92C);
    }

    v96 = v67;

    if (v96)
    {
      v221 = 0uLL;
      v222 = 0;
      *&v219 = v206;
      *(&v219 + 1) = v42;
      v69 = v217;
      sub_1D72647EC();

      sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
      v47 = v208;
      *&v216 = 0;
    }

    else
    {
      *&v216 = 0;
      sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);

      v69 = v217;
      v47 = v208;
    }
  }

  else
  {
    sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v69 = v217;
  }

  v70 = v211[4];
  v71 = v211[5];
  v72 = v213;
  (v47)(v213, v212, v44);
  swift_storeEnumTagMultiPayload();
  *&v219 = v70;
  *(&v219 + 1) = v71;
  v215 = xmmword_1D728CF30;
  v221 = xmmword_1D728CF30;
  v222 = 0;
  v198 = v44;
  v73 = v214;
  v74 = (v69 + *(v214 + 44));
  v76 = *v74;
  v75 = v74[1];
  LOBYTE(v223) = 0;
  v77 = swift_allocObject();
  v207 = &v196;
  *(v77 + 16) = v215;
  *(v77 + 32) = v223;
  *(v77 + 40) = v76;
  *(v77 + 48) = v75;
  MEMORY[0x1EEE9AC00](v77, v78);
  v206 = &v196 - 6;
  *(&v196 - 4) = sub_1D5B4AA6C;
  *(&v196 - 3) = 0;
  v194 = sub_1D670891C;
  v195 = v79;
  LOBYTE(v223) = 0;
  v80 = swift_allocObject();
  *(v80 + 16) = v215;
  *(v80 + 32) = v223;
  v197 = v76;
  *(v80 + 40) = v76;
  *(v80 + 48) = v75;
  sub_1D666A9C0();
  v82 = v81;
  v83 = sub_1D5B58B84(&qword_1EDF02EA8, sub_1D666A9C0);
  v196 = v75;
  swift_retain_n();
  v200 = v82;
  v199 = v83;
  v84 = sub_1D72647CC();
  LOBYTE(v223) = 0;
  v85 = swift_allocObject();
  *(v85 + 16) = v84;
  *(v85 + 24) = v215;
  *(v85 + 40) = v223;
  v86 = (v69 + *(v73 + 36));
  v87 = __swift_project_boxed_opaque_existential_1(v86, v86[3]);
  MEMORY[0x1EEE9AC00](v87, v88);
  MEMORY[0x1EEE9AC00](v89, v90);
  v91 = v206;
  *(&v196 - 4) = sub_1D615B4A4;
  *(&v196 - 3) = v91;
  v194 = sub_1D670891C;
  v195 = v80;
  v92 = v216;
  sub_1D5D2BC70(v72, sub_1D615B49C, v93, sub_1D615B4A4, (&v196 - 6));
  if (v92)
  {
    sub_1D5D2CFE8(v72, type metadata accessor for FormatVersionRequirement);

    v94 = v217;
LABEL_10:
    v68 = v94;
    return sub_1D5D2CFE8(v68, sub_1D666A92C);
  }

  *&v215 = v86;

  v94 = v217;
  sub_1D72647EC();
  *&v216 = 0;
  sub_1D5D2CFE8(v213, type metadata accessor for FormatVersionRequirement);

  v97 = v211;
  swift_beginAccess();
  v98 = v97[6];
  v99 = v205;
  v100 = v212;
  v101 = v208;
  (v208)(v205, v212, v198);
  swift_storeEnumTagMultiPayload();
  if (!*(v98 + 16))
  {
    sub_1D5D2CFE8(v99, type metadata accessor for FormatVersionRequirement);
    goto LABEL_23;
  }

  LOBYTE(v219) = 0;
  v102 = swift_allocObject();
  v214 = xmmword_1D7297410;
  *(v102 + 16) = xmmword_1D7297410;
  *(v102 + 32) = v219;
  *(v102 + 40) = v197;
  *(v102 + 48) = v196;

  v103 = sub_1D72647CC();
  LOBYTE(v219) = 0;
  v104 = swift_allocObject();
  *(v104 + 16) = v103;
  *(v104 + 24) = v214;
  *(v104 + 40) = v219;
  v105 = __swift_project_boxed_opaque_existential_1(v215, *(v215 + 24));
  MEMORY[0x1EEE9AC00](v105, v106);
  MEMORY[0x1EEE9AC00](v107, v108);
  *(&v196 - 4) = sub_1D5B4AA6C;
  *(&v196 - 3) = 0;
  v194 = sub_1D670891C;
  v195 = v102;
  v109 = v216;
  v111 = sub_1D5D2F7A4(v99, sub_1D615B49C, v110, sub_1D615B4A4, (&v196 - 6));
  *&v216 = v109;
  if (!v109)
  {
    v112 = v111;

    if (v112)
    {
      v219 = v214;
      v220 = 0;
      v223 = v98;
      sub_1D5C34D84(0, &qword_1EDF04C18, &type metadata for FormatProgressViewNodeStyle.Selector, MEMORY[0x1E69E62F8]);
      sub_1D666AC64();
      v94 = v217;
      v113 = v216;
      sub_1D72647EC();
      v101 = v208;
      v114 = v196;
      if (v113)
      {

        v115 = &v225;
LABEL_44:
        sub_1D5D2CFE8(*(v115 - 32), type metadata accessor for FormatVersionRequirement);
        goto LABEL_10;
      }

      *&v216 = 0;

      sub_1D5D2CFE8(v205, type metadata accessor for FormatVersionRequirement);
LABEL_24:
      v116 = v97[7];
      v117 = v203;
      v101(v203, v100, v198);
      swift_storeEnumTagMultiPayload();
      v214 = xmmword_1D72BAA60;
      v219 = xmmword_1D72BAA60;
      v220 = 0;
      LOBYTE(v223) = 0;
      v118 = swift_allocObject();
      v120 = v118;
      *(v118 + 16) = v214;
      *(v118 + 32) = v223;
      v121 = v197;
      *(v118 + 40) = v197;
      *(v118 + 48) = v114;
      if (v116)
      {
        v213 = &v196;
        v223 = v116;
        MEMORY[0x1EEE9AC00](v118, v119);
        *(&v196 - 4) = sub_1D5B4AA6C;
        *(&v196 - 3) = 0;
        v194 = sub_1D670891C;
        v195 = v120;
        v218 = 0;
        v122 = swift_allocObject();
        *(v122 + 16) = v214;
        *(v122 + 32) = v218;
        *(v122 + 40) = v121;
        *(v122 + 48) = v114;
        swift_retain_n();

        v123 = sub_1D72647CC();
        v218 = 0;
        v124 = swift_allocObject();
        *(v124 + 16) = v123;
        *(v124 + 24) = v214;
        *(v124 + 40) = v218;
        v125 = __swift_project_boxed_opaque_existential_1(v215, *(v215 + 24));
        MEMORY[0x1EEE9AC00](v125, v126);
        MEMORY[0x1EEE9AC00](v127, v128);
        *(&v196 - 4) = sub_1D615B4A4;
        *(&v196 - 3) = (&v196 - 6);
        v194 = sub_1D670891C;
        v195 = v122;
        v129 = v216;
        v131 = sub_1D5D2F7A4(v117, sub_1D615B49C, v130, sub_1D615B4A4, (&v196 - 6));
        if (v129)
        {

          v94 = v217;

          sub_1D5D2CFE8(v117, type metadata accessor for FormatVersionRequirement);
          goto LABEL_10;
        }

        v132 = v131;

        if (v132)
        {
          sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
          sub_1D66582DC();
          v94 = v217;
          sub_1D72647EC();
          v101 = v208;
          *&v216 = 0;
          v190 = v212;

          sub_1D5D2CFE8(v117, type metadata accessor for FormatVersionRequirement);
          v191 = v190;
          v192 = v114;
          goto LABEL_32;
        }

        *&v216 = 0;

        sub_1D5D2CFE8(v117, type metadata accessor for FormatVersionRequirement);
        v94 = v217;
        v101 = v208;
      }

      else
      {

        sub_1D5D2CFE8(v117, type metadata accessor for FormatVersionRequirement);
      }

      v192 = v114;
      v191 = v212;
LABEL_32:
      v133 = v211;
      v134 = v211[8];
      v135 = v204;
      v101(v204, v191, v198);
      swift_storeEnumTagMultiPayload();
      v214 = xmmword_1D72BAA70;
      v219 = xmmword_1D72BAA70;
      v220 = 0;
      LOBYTE(v223) = 0;
      v136 = swift_allocObject();
      v138 = v136;
      *(v136 + 16) = v214;
      *(v136 + 32) = v223;
      v139 = v197;
      *(v136 + 40) = v197;
      *(v136 + 48) = v192;
      if ((~v134 & 0xF000000000000007) != 0)
      {
        v213 = &v196;
        v223 = v134;
        MEMORY[0x1EEE9AC00](v136, v137);
        *(&v196 - 4) = sub_1D5B4AA6C;
        *(&v196 - 3) = 0;
        v194 = sub_1D670891C;
        v195 = v138;
        v218 = 0;
        v159 = swift_allocObject();
        *(v159 + 16) = v214;
        *(v159 + 32) = v218;
        *(v159 + 40) = v139;
        *(v159 + 48) = v192;
        swift_retain_n();
        sub_1D5CFCFAC(v134);
        v160 = sub_1D72647CC();
        v218 = 0;
        v161 = swift_allocObject();
        *(v161 + 16) = v160;
        *(v161 + 24) = v214;
        *(v161 + 40) = v218;
        v162 = __swift_project_boxed_opaque_existential_1(v215, *(v215 + 24));
        MEMORY[0x1EEE9AC00](v162, v163);
        MEMORY[0x1EEE9AC00](v164, v165);
        *(&v196 - 4) = sub_1D615B4A4;
        *(&v196 - 3) = (&v196 - 6);
        v194 = sub_1D670891C;
        v195 = v159;
        v166 = v216;
        v168 = sub_1D5D2F7A4(v204, sub_1D615B49C, v167, sub_1D615B4A4, (&v196 - 6));
        if (v166)
        {

          v94 = v217;

          v115 = &v224;
          goto LABEL_44;
        }

        v188 = v168;

        if (v188)
        {
          sub_1D5B55CBC();
          v94 = v217;
          sub_1D72647EC();
          v101 = v208;
          v140 = v212;
          *&v216 = 0;

          v135 = v204;
          v192 = v196;
LABEL_35:
          sub_1D5D2CFE8(v135, type metadata accessor for FormatVersionRequirement);
          v141 = v133[9];
          v142 = v202;
          v101(v202, v140, v198);
          swift_storeEnumTagMultiPayload();
          v214 = xmmword_1D72BAA80;
          v219 = xmmword_1D72BAA80;
          v220 = 0;
          LOBYTE(v223) = 0;
          v143 = swift_allocObject();
          v145 = v143;
          *(v143 + 16) = v214;
          *(v143 + 32) = v223;
          v146 = v197;
          *(v143 + 40) = v197;
          *(v143 + 48) = v192;
          if ((~v141 & 0xF000000000000007) != 0)
          {
            v213 = &v196;
            v223 = v141;
            MEMORY[0x1EEE9AC00](v143, v144);
            *(&v196 - 4) = sub_1D5B4AA6C;
            *(&v196 - 3) = 0;
            v194 = sub_1D670891C;
            v195 = v145;
            v218 = 0;
            v169 = swift_allocObject();
            *(v169 + 16) = v214;
            *(v169 + 32) = v218;
            *(v169 + 40) = v146;
            *(v169 + 48) = v192;
            swift_retain_n();
            sub_1D5CFCFAC(v141);
            v170 = sub_1D72647CC();
            v218 = 0;
            v171 = swift_allocObject();
            *(v171 + 16) = v170;
            *(v171 + 24) = v214;
            *(v171 + 40) = v218;
            v148 = v215;
            v172 = __swift_project_boxed_opaque_existential_1(v215, *(v215 + 24));
            MEMORY[0x1EEE9AC00](v172, v173);
            MEMORY[0x1EEE9AC00](v174, v175);
            *(&v196 - 4) = sub_1D615B4A4;
            *(&v196 - 3) = (&v196 - 6);
            v194 = sub_1D670891C;
            v195 = v169;
            v176 = v216;
            v178 = sub_1D5D2F7A4(v142, sub_1D615B49C, v177, sub_1D615B4A4, (&v196 - 6));
            v147 = v176;
            if (v176)
            {

              v94 = v217;

              sub_1D5D2CFE8(v142, type metadata accessor for FormatVersionRequirement);
              goto LABEL_10;
            }

            v189 = v178;

            if (v189)
            {
              sub_1D5B55CBC();
              v94 = v217;
              sub_1D72647EC();
              v101 = v208;
              v149 = v211;

LABEL_38:
              sub_1D5D2CFE8(v142, type metadata accessor for FormatVersionRequirement);
              v150 = *(v149 + 80);
              v151 = v201;
              if (qword_1EDF31F08 != -1)
              {
                swift_once();
              }

              v152 = v198;
              v153 = __swift_project_value_buffer(v198, qword_1EDFFCDE0);
              v101(v151, v153, v152);
              swift_storeEnumTagMultiPayload();
              v216 = xmmword_1D72BAA90;
              v219 = xmmword_1D72BAA90;
              v220 = 0;
              LOBYTE(v223) = 0;
              v154 = swift_allocObject();
              v156 = v154;
              *(v154 + 16) = v216;
              *(v154 + 32) = v223;
              v157 = v197;
              v158 = v196;
              *(v154 + 40) = v197;
              *(v154 + 48) = v158;
              if (v150 == 2)
              {
              }

              else
              {
                *&v215 = &v196;
                LOBYTE(v223) = v150 & 1;
                MEMORY[0x1EEE9AC00](v154, v155);
                *(&v196 - 4) = sub_1D5B4AA6C;
                *(&v196 - 3) = 0;
                v194 = sub_1D670891C;
                v195 = v156;
                v218 = 0;
                v179 = swift_allocObject();
                *(v179 + 16) = v216;
                *(v179 + 32) = v218;
                *(v179 + 40) = v157;
                *(v179 + 48) = v158;
                swift_retain_n();
                v180 = sub_1D72647CC();
                v218 = 0;
                v181 = swift_allocObject();
                *(v181 + 16) = v180;
                *(v181 + 24) = v216;
                *(v181 + 40) = v218;
                v182 = __swift_project_boxed_opaque_existential_1(v148, v148[3]);
                MEMORY[0x1EEE9AC00](v182, v183);
                MEMORY[0x1EEE9AC00](v184, v185);
                *(&v196 - 4) = sub_1D615B4A4;
                *(&v196 - 3) = (&v196 - 6);
                v194 = sub_1D670891C;
                v195 = v179;
                v187 = sub_1D5D2F7A4(v151, sub_1D615B49C, v186, sub_1D615B4A4, (&v196 - 6));
                if (v147)
                {
                  sub_1D5D2CFE8(v151, type metadata accessor for FormatVersionRequirement);

                  v94 = v217;
                  goto LABEL_10;
                }

                v193 = v187;

                v94 = v217;
                if (v193)
                {
                  sub_1D72647EC();
                }

                v151 = v201;
              }

              sub_1D5D2CFE8(v151, type metadata accessor for FormatVersionRequirement);

              goto LABEL_10;
            }

            v94 = v217;
            v101 = v208;
          }

          else
          {

            v147 = v216;
            v148 = v215;
          }

          v149 = v211;
          goto LABEL_38;
        }

        *&v216 = 0;

        v94 = v217;
        v101 = v208;
        v135 = v204;
        v192 = v196;
      }

      else
      {
      }

      v140 = v212;
      goto LABEL_35;
    }

    sub_1D5D2CFE8(v205, type metadata accessor for FormatVersionRequirement);

    v94 = v217;
    v101 = v208;
LABEL_23:
    v114 = v196;
    goto LABEL_24;
  }

  sub_1D5D2CFE8(v99, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v217, sub_1D666A92C);
}