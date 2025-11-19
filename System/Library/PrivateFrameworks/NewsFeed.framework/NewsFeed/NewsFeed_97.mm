uint64_t FormatProgressViewNodeStyle.Selector.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D666AD00();
  v7 = v6;
  v41 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D666AD94();
  sub_1D5B58B84(&qword_1EDF0C460, sub_1D666AD94);
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

  v13 = v41;
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

      v20 = *(v16 - 2);
      v19 = *(v16 - 1);

      v21 = sub_1D6616AD8();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21;
      *(v22 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v10, v7);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C36978();
  v37 = 0uLL;
  v38 = 0;
  sub_1D726431C();
  v18 = v39;
  v17 = v40;
  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  v37 = xmmword_1D728CF30;
  v38 = 0;
  sub_1D5C35368();
  sub_1D726427C();
  v35 = v18;
  v36 = v17;
  v23 = v7;
  v24 = v13;
  v25 = v39;
  v37 = xmmword_1D7297410;
  v38 = 0;
  sub_1D5B570F8();
  sub_1D726427C();
  v34 = v25;
  v26 = v39;
  v37 = xmmword_1D72BAA60;
  v38 = 0;
  sub_1D726427C();
  v28 = v26;
  v33 = v39;
  v37 = xmmword_1D72BAA70;
  v38 = 0;
  v29 = sub_1D726423C();
  v30 = v34;
  v31 = v29;
  (*(v24 + 8))(v10, v23);
  v32 = v36;
  *a2 = v35;
  *(a2 + 8) = v32;
  *(a2 + 16) = v30;
  *(a2 + 24) = v28;
  *(a2 + 32) = v33;
  *(a2 + 40) = v31;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatProgressViewNodeStyle.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v131 = &v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v133 = &v129 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v135 = &v129 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v140 = &v129 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v129 - v17);
  sub_1D666AF14();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v1;
  v25 = v1[1];
  v26 = v1[3];
  v136 = v1[2];
  v134 = v26;
  v132 = v1[4];
  v154 = *(v1 + 40);
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_1D666AD94();
  v30 = v29;
  v31 = sub_1D5B58B84(&qword_1EDF0C460, sub_1D666AD94);
  sub_1D5D2EE70(&type metadata for FormatProgressViewNodeStyle.Selector, v30, v32, v27, &type metadata for FormatProgressViewNodeStyle.Selector, v30, &type metadata for FormatVersions.StarSkyC, v28, v23, v31, &off_1F51F6B18);
  if (qword_1EDF31E98 != -1)
  {
    swift_once();
  }

  v33 = sub_1D725BD1C();
  v34 = __swift_project_value_buffer(v33, qword_1EDFFCD00);
  v35 = *(v33 - 8);
  v36 = *(v35 + 16);
  v141 = v34;
  v137 = v33;
  v138 = v36;
  v143 = v35 + 16;
  (v36)(v18);
  v142 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v151 = v24;
  v152 = v25;
  v149 = 0uLL;
  v150 = 0;
  v37 = &v23[*(v20 + 44)];
  v146 = v18;
  v38 = *v37;
  v39 = *(v37 + 1);
  v153 = 0;
  v40 = swift_allocObject();
  *&v147 = &v129;
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  *(v40 + 32) = v153;
  *(v40 + 40) = v38;
  *(v40 + 48) = v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  *(&v129 - 4) = sub_1D5B4AA6C;
  *(&v129 - 3) = 0;
  v127 = sub_1D6708920;
  v128 = v42;
  v153 = 0;
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = 0;
  *(v43 + 32) = v153;
  v139 = v38;
  *(v43 + 40) = v38;
  *(v43 + 48) = v39;
  sub_1D666AFA8();
  v45 = v44;
  v46 = sub_1D5B58B84(&qword_1EDF02E98, sub_1D666AFA8);
  swift_retain_n();
  v144 = v45;
  v145 = v46;
  v47 = sub_1D72647CC();
  v153 = 0;
  v48 = v23;
  v49 = swift_allocObject();
  *(v49 + 24) = 0;
  *(v49 + 32) = 0;
  *(v49 + 16) = v47;
  *(v49 + 40) = v153;
  v50 = &v48[*(v20 + 36)];
  v51 = __swift_project_boxed_opaque_existential_1(v50, *(v50 + 3));
  MEMORY[0x1EEE9AC00](v51, v52);
  MEMORY[0x1EEE9AC00](v53, v54);
  *(&v129 - 4) = sub_1D615B4A4;
  *(&v129 - 3) = (&v129 - 6);
  v127 = sub_1D6708920;
  v128 = v43;
  v55 = v146;
  v56 = v148;
  sub_1D5D2BC70(v146, sub_1D615B49C, v57, sub_1D615B4A4, (&v129 - 6));
  if (v56)
  {
    sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);

    v58 = v48;
  }

  else
  {
    v130 = v50;
    *&v148 = v39;

    sub_1D5D3E60C();
    sub_1D72647EC();
    v129 = v48;
    sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);

    v60 = v140;
    v62 = v137;
    v61 = v138;
    (v138)(v140, v141, v137);
    swift_storeEnumTagMultiPayload();
    v147 = xmmword_1D728CF30;
    v149 = xmmword_1D728CF30;
    v150 = 0;
    LOBYTE(v151) = 0;
    v63 = swift_allocObject();
    v65 = v63;
    *(v63 + 16) = v147;
    *(v63 + 32) = v151;
    v66 = v139;
    v67 = v148;
    *(v63 + 40) = v139;
    *(v63 + 48) = v67;
    if (v136)
    {
      v146 = &v129;
      v151 = v136;
      MEMORY[0x1EEE9AC00](v63, v64);
      *(&v129 - 4) = sub_1D5B4AA6C;
      *(&v129 - 3) = 0;
      v127 = sub_1D6708920;
      v128 = v65;
      v153 = 0;
      v68 = swift_allocObject();
      *(v68 + 16) = v147;
      *(v68 + 32) = v153;
      *(v68 + 40) = v66;
      *(v68 + 48) = v67;
      swift_retain_n();

      v69 = sub_1D72647CC();
      v153 = 0;
      v70 = swift_allocObject();
      *(v70 + 16) = v69;
      *(v70 + 24) = v147;
      *(v70 + 40) = v153;
      v71 = __swift_project_boxed_opaque_existential_1(v130, *(v130 + 3));
      MEMORY[0x1EEE9AC00](v71, v72);
      MEMORY[0x1EEE9AC00](v73, v74);
      *(&v129 - 4) = sub_1D615B4A4;
      *(&v129 - 3) = (&v129 - 6);
      v75 = v140;
      v127 = sub_1D6708920;
      v128 = v68;
      v77 = sub_1D5D2F7A4(v140, sub_1D615B49C, v76, sub_1D615B4A4, (&v129 - 6));
      v78 = v77;

      if (v78)
      {
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        sub_1D72647EC();
        v62 = v137;

        sub_1D5D2CFE8(v75, type metadata accessor for FormatVersionRequirement);
        v67 = v148;
        v61 = v138;
        v66 = v139;
      }

      else
      {

        sub_1D5D2CFE8(v75, type metadata accessor for FormatVersionRequirement);
        v67 = v148;
        v61 = v138;
        v66 = v139;
        v62 = v137;
      }
    }

    else
    {

      sub_1D5D2CFE8(v60, type metadata accessor for FormatVersionRequirement);
    }

    v79 = v135;
    (v61)(v135, v141, v62);
    swift_storeEnumTagMultiPayload();
    v147 = xmmword_1D7297410;
    v149 = xmmword_1D7297410;
    v150 = 0;
    LOBYTE(v151) = 0;
    v80 = swift_allocObject();
    v82 = v80;
    *(v80 + 16) = v147;
    *(v80 + 32) = v151;
    *(v80 + 40) = v66;
    *(v80 + 48) = v67;
    if ((~v134 & 0xF000000000000007) != 0)
    {
      v146 = &v129;
      v151 = v134;
      MEMORY[0x1EEE9AC00](v80, v81);
      v144 = &v129 - 6;
      *(&v129 - 4) = sub_1D5B4AA6C;
      *(&v129 - 3) = 0;
      v127 = sub_1D6708920;
      v128 = v82;
      v153 = 0;
      v96 = v95;
      v97 = swift_allocObject();
      *(v97 + 16) = v147;
      *(v97 + 32) = v153;
      *(v97 + 40) = v66;
      *(v97 + 48) = v67;
      swift_retain_n();
      sub_1D5CFCFAC(v96);
      v98 = sub_1D72647CC();
      v153 = 0;
      v99 = swift_allocObject();
      *(v99 + 16) = v98;
      *(v99 + 24) = v147;
      *(v99 + 40) = v153;
      v100 = __swift_project_boxed_opaque_existential_1(v130, *(v130 + 3));
      MEMORY[0x1EEE9AC00](v100, v101);
      MEMORY[0x1EEE9AC00](v102, v103);
      v104 = v144;
      *(&v129 - 4) = sub_1D615B4A4;
      *(&v129 - 3) = v104;
      v127 = sub_1D6708920;
      v128 = v97;
      LOBYTE(v98) = sub_1D5D2F7A4(v79, sub_1D615B49C, v105, sub_1D615B4A4, (&v129 - 6));

      if (v98)
      {
        sub_1D5B55CBC();
        sub_1D72647EC();
        v62 = v137;

        v67 = v148;
        v61 = v138;
        v66 = v139;
      }

      else
      {

        v67 = v148;
        v61 = v138;
        v66 = v139;
        v62 = v137;
      }
    }

    else
    {
    }

    sub_1D5D2CFE8(v135, type metadata accessor for FormatVersionRequirement);
    v83 = v133;
    v61();
    swift_storeEnumTagMultiPayload();
    v147 = xmmword_1D72BAA60;
    v149 = xmmword_1D72BAA60;
    v150 = 0;
    LOBYTE(v151) = 0;
    v84 = swift_allocObject();
    v86 = v84;
    *(v84 + 16) = v147;
    *(v84 + 32) = v151;
    *(v84 + 40) = v66;
    *(v84 + 48) = v67;
    v87 = v132;
    if ((~v132 & 0xF000000000000007) != 0)
    {
      v146 = &v129;
      v151 = v132;
      MEMORY[0x1EEE9AC00](v84, v85);
      *(&v129 - 4) = sub_1D5B4AA6C;
      *(&v129 - 3) = 0;
      v127 = sub_1D6708920;
      v128 = v86;
      v153 = 0;
      v106 = swift_allocObject();
      *(v106 + 16) = v147;
      *(v106 + 32) = v153;
      *(v106 + 40) = v66;
      *(v106 + 48) = v67;
      swift_retain_n();
      sub_1D5CFCFAC(v87);
      v107 = sub_1D72647CC();
      v153 = 0;
      v108 = swift_allocObject();
      *(v108 + 16) = v107;
      *(v108 + 24) = v147;
      *(v108 + 40) = v153;
      v109 = __swift_project_boxed_opaque_existential_1(v130, *(v130 + 3));
      MEMORY[0x1EEE9AC00](v109, v110);
      MEMORY[0x1EEE9AC00](v111, v112);
      *(&v129 - 4) = sub_1D615B4A4;
      *(&v129 - 3) = (&v129 - 6);
      v83 = v133;
      v127 = sub_1D6708920;
      v128 = v106;
      v114 = sub_1D5D2F7A4(v133, sub_1D615B49C, v113, sub_1D615B4A4, (&v129 - 6));
      v125 = v114;

      if (v125)
      {
        sub_1D5B55CBC();
        v88 = v129;
        sub_1D72647EC();
        v62 = v137;

        v67 = v148;
      }

      else
      {

        v88 = v129;
        v67 = v148;
        v62 = v137;
      }
    }

    else
    {

      v88 = v129;
    }

    sub_1D5D2CFE8(v83, type metadata accessor for FormatVersionRequirement);
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v89 = __swift_project_value_buffer(v62, qword_1EDFFCDE0);
    v90 = v131;
    (v138)(v131, v89, v62);
    swift_storeEnumTagMultiPayload();
    v148 = xmmword_1D72BAA70;
    v149 = xmmword_1D72BAA70;
    v150 = 0;
    LOBYTE(v151) = 0;
    v91 = swift_allocObject();
    v93 = v91;
    *(v91 + 16) = v148;
    *(v91 + 32) = v151;
    v94 = v139;
    *(v91 + 40) = v139;
    *(v91 + 48) = v67;
    if (v154 == 2)
    {
    }

    else
    {
      *&v147 = &v129;
      LOBYTE(v151) = v154 & 1;
      MEMORY[0x1EEE9AC00](v91, v92);
      v146 = &v129 - 6;
      *(&v129 - 4) = sub_1D5B4AA6C;
      *(&v129 - 3) = 0;
      v127 = sub_1D6708920;
      v128 = v93;
      v153 = 0;
      v115 = swift_allocObject();
      *(v115 + 16) = v148;
      *(v115 + 32) = v153;
      *(v115 + 40) = v94;
      *(v115 + 48) = v67;
      swift_retain_n();
      v116 = sub_1D72647CC();
      v153 = 0;
      v117 = swift_allocObject();
      *(v117 + 16) = v116;
      *(v117 + 24) = v148;
      *(v117 + 40) = v153;
      v118 = __swift_project_boxed_opaque_existential_1(v130, *(v130 + 3));
      MEMORY[0x1EEE9AC00](v118, v119);
      MEMORY[0x1EEE9AC00](v120, v121);
      v122 = v146;
      *(&v129 - 4) = sub_1D615B4A4;
      *(&v129 - 3) = v122;
      v127 = sub_1D666B03C;
      v128 = v115;
      v124 = sub_1D5D2F7A4(v90, sub_1D615B49C, v123, sub_1D615B4A4, (&v129 - 6));
      v126 = v124;

      if (v126)
      {
        v88 = v129;
        sub_1D72647EC();
      }

      else
      {
        v88 = v129;
      }
    }

    sub_1D5D2CFE8(v90, type metadata accessor for FormatVersionRequirement);

    v58 = v88;
  }

  return sub_1D5D2CFE8(v58, sub_1D666AF14);
}

uint64_t FormatShineSizer.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v31 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v30 = v28 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v28 - v11;
  v32 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v15 = sub_1D725BD1C();
  v16 = __swift_project_value_buffer(v15, qword_1EDFFCD30);
  v17 = *(*(v15 - 8) + 16);
  v17(v12, v16, v15);
  v18 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v19 = v36;
  sub_1D5D2BEC4(v12, sub_1D5B4AA6C, 0, v13, v14);
  result = sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);
  if (!v19)
  {
    v36 = v18;
    v21 = v33[3];
    v29 = v33[4];
    v28[1] = __swift_project_boxed_opaque_existential_1(v33, v21);
    sub_1D5B58478();
    v23 = *(v22 + 48);
    v24 = *(v22 + 64);
    if (v32)
    {
      v25 = v31;
      v26 = &v31[v24];
      v17(v31, v16, v15);
      if (qword_1EDF31F48 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v25 = v30;
      v26 = &v30[v24];
      v17(v30, v16, v15);
      if (qword_1EDF31F48 == -1)
      {
LABEL_8:
        v27 = __swift_project_value_buffer(v15, qword_1EDFFCE68);
        v17((v25 + v23), v27, v15);
        *v26 = 0;
        *(v26 + 1) = 0;
        swift_storeEnumTagMultiPayload();
        sub_1D5D2BEC4(v25, sub_1D5B4AA6C, 0, v21, v29);
        sub_1D5D2CFE8(v25, type metadata accessor for FormatVersionRequirement);
        __swift_project_boxed_opaque_existential_1(v33, v33[3]);
        sub_1D7264B3C();
        __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
        sub_1D726473C();

        return __swift_destroy_boxed_opaque_existential_1(v34);
      }
    }

    swift_once();
    goto LABEL_8;
  }

  return result;
}

uint64_t FormatBorder.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v150 = &v141 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v151 = &v141 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v147 = &v141 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v153 = &v141 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v160 = (&v141 - v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v141 - v20;
  sub_1D666B184();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v141 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *v1;
  *&v162 = *(v1 + 8);
  v152 = *(v1 + 16);
  v28 = *(v1 + 24);
  v148 = *(v1 + 25);
  v149 = v28;
  v146 = *(v1 + 32);
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1D5CD8108();
  v32 = v31;
  v33 = sub_1D5B58B84(&qword_1EDF24CB8, sub_1D5CD8108);
  sub_1D5D2EE70(&type metadata for FormatBorder, v32, v34, v29, &type metadata for FormatBorder, v32, &type metadata for FormatVersions.JazzkonC, v30, v26, v33, &off_1F51F6C78);
  v35 = qword_1EDF31EB0;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = sub_1D725BD1C();
  v37 = __swift_project_value_buffer(v36, qword_1EDFFCD30);
  v38 = *(v36 - 8);
  v39 = *(v38 + 16);
  v159 = v38 + 16;
  v39(v21, v37, v36);
  v158 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v40 = sub_1D5CD85B0(&unk_1F50F2F48);
  v41 = sub_1D5E22398(v27, v40);

  v154 = v39;
  v155 = v36;
  v157 = v37;
  if (v41)
  {
    goto LABEL_4;
  }

  v63 = &v26[*(v23 + 44)];
  v65 = *v63;
  v64 = *(v63 + 1);
  LOBYTE(v164) = 0;
  v66 = swift_allocObject();
  *(v66 + 16) = 0;
  *(v66 + 24) = 0;
  *(v66 + 32) = v164;
  *(v66 + 40) = v65;
  *(v66 + 48) = v64;
  sub_1D5E1C348(0);
  sub_1D5B58B84(&qword_1EDF02B98, sub_1D5E1C348);

  v67 = sub_1D72647CC();
  LOBYTE(v164) = 0;
  v68 = swift_allocObject();
  *(v68 + 24) = 0;
  *(v68 + 32) = 0;
  *(v68 + 16) = v67;
  *(v68 + 40) = v164;
  v69 = __swift_project_boxed_opaque_existential_1(&v26[*(v23 + 36)], *&v26[*(v23 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v69, v70);
  MEMORY[0x1EEE9AC00](v71, v72);
  *(&v141 - 4) = sub_1D5B4AA6C;
  *(&v141 - 3) = 0;
  v139 = sub_1D666B218;
  v140 = v66;
  v73 = v161;
  v75 = sub_1D5D2F7A4(v21, sub_1D615B49C, v74, sub_1D615B4A4, (&v141 - 6));
  if (v73)
  {
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);

    goto LABEL_13;
  }

  v76 = v75;

  if ((v76 & 1) == 0)
  {
    v161 = 0;
    v39 = v154;
    v36 = v155;
    v37 = v157;
LABEL_4:
    v42 = v23;
    goto LABEL_5;
  }

  sub_1D5E08F78(v27, v26, 0, 0, 0);
  v37 = v157;
  v42 = v23;
  v161 = 0;
  v39 = v154;
  v36 = v155;
LABEL_5:
  sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);

  v39(v160, v37, v36);
  swift_storeEnumTagMultiPayload();
  v166 = v162;
  v162 = xmmword_1D728CF30;
  v164 = xmmword_1D728CF30;
  v165 = 0;
  v43 = &v26[*(v42 + 44)];
  v44 = *v43;
  v45 = *(v43 + 1);
  v163 = 0;
  v46 = swift_allocObject();
  v156 = &v141;
  *(v46 + 16) = v162;
  *(v46 + 32) = v163;
  *(v46 + 40) = v44;
  *(v46 + 48) = v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  *(&v141 - 4) = sub_1D5B4AA6C;
  *(&v141 - 3) = 0;
  v139 = sub_1D6708924;
  v140 = v48;
  v163 = 0;
  v49 = swift_allocObject();
  *(v49 + 16) = v162;
  *(v49 + 32) = v163;
  v143 = v44;
  *(v49 + 40) = v44;
  *(v49 + 48) = v45;
  sub_1D5E1C348(0);
  v51 = v50;
  v52 = sub_1D5B58B84(&qword_1EDF02B98, sub_1D5E1C348);
  swift_retain_n();
  v144 = v51;
  v145 = v52;
  v53 = sub_1D72647CC();
  v163 = 0;
  v54 = swift_allocObject();
  *(v54 + 16) = v53;
  *(v54 + 24) = v162;
  *(v54 + 40) = v163;
  v55 = &v26[*(v42 + 36)];
  v56 = __swift_project_boxed_opaque_existential_1(v55, *(v55 + 3));
  MEMORY[0x1EEE9AC00](v56, v57);
  MEMORY[0x1EEE9AC00](v58, v59);
  *(&v141 - 4) = sub_1D615B4A4;
  *(&v141 - 3) = (&v141 - 6);
  v61 = v160;
  v60 = v161;
  v139 = sub_1D6708924;
  v140 = v49;
  sub_1D5D2BC70(v160, sub_1D615B49C, v62, sub_1D615B4A4, (&v141 - 6));
  if (v60)
  {
    sub_1D5D2CFE8(v61, type metadata accessor for FormatVersionRequirement);

LABEL_13:
    v91 = v26;
    return sub_1D5D2CFE8(v91, sub_1D666B184);
  }

  v142 = v55;
  v161 = v45;

  sub_1D5B55CBC();
  sub_1D72647EC();
  sub_1D5D2CFE8(v61, type metadata accessor for FormatVersionRequirement);

  v154(v153, v157, v155);
  swift_storeEnumTagMultiPayload();
  v166 = v152;
  v162 = xmmword_1D7297410;
  v164 = xmmword_1D7297410;
  v165 = 0;
  v163 = 0;
  v77 = swift_allocObject();
  v160 = &v141;
  *(v77 + 16) = v162;
  *(v77 + 32) = v163;
  v78 = v143;
  v79 = v161;
  *(v77 + 40) = v143;
  *(v77 + 48) = v79;
  MEMORY[0x1EEE9AC00](v77, v80);
  *(&v141 - 4) = sub_1D5B4AA6C;
  *(&v141 - 3) = 0;
  v139 = sub_1D6708924;
  v140 = v81;
  v163 = 0;
  v82 = swift_allocObject();
  *(v82 + 16) = v162;
  *(v82 + 32) = v163;
  *(v82 + 40) = v78;
  *(v82 + 48) = v79;
  swift_retain_n();
  v83 = sub_1D72647CC();
  v163 = 0;
  v84 = swift_allocObject();
  *(v84 + 16) = v83;
  *(v84 + 24) = v162;
  *(v84 + 40) = v163;
  v85 = __swift_project_boxed_opaque_existential_1(v142, *(v142 + 3));
  MEMORY[0x1EEE9AC00](v85, v86);
  MEMORY[0x1EEE9AC00](v87, v88);
  *(&v141 - 4) = sub_1D615B4A4;
  *(&v141 - 3) = (&v141 - 6);
  v89 = v153;
  v139 = sub_1D6708924;
  v140 = v82;
  sub_1D5D2BC70(v153, sub_1D615B49C, v90, sub_1D615B4A4, (&v141 - 6));

  sub_1D5C3526C();
  sub_1D72647EC();
  sub_1D5D2CFE8(v89, type metadata accessor for FormatVersionRequirement);

  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v93 = v155;
  v94 = __swift_project_value_buffer(v155, qword_1EDFFCD50);
  v95 = v147;
  v154(v147, v94, v93);
  swift_storeEnumTagMultiPayload();
  v97 = v150;
  v96 = v151;
  v98 = v148;
  if (v149 == 1)
  {

LABEL_20:
    sub_1D5D2CFE8(v95, type metadata accessor for FormatVersionRequirement);
    goto LABEL_21;
  }

  v99 = sub_1D72646CC();

  if (v99)
  {
    goto LABEL_20;
  }

  LOBYTE(v164) = 0;
  v100 = swift_allocObject();
  v162 = xmmword_1D72BAA60;
  *(v100 + 16) = xmmword_1D72BAA60;
  *(v100 + 32) = v164;
  *(v100 + 40) = v143;
  *(v100 + 48) = v161;

  v101 = sub_1D72647CC();
  LOBYTE(v164) = 0;
  v102 = swift_allocObject();
  *(v102 + 16) = v101;
  *(v102 + 24) = v162;
  *(v102 + 40) = v164;
  v103 = __swift_project_boxed_opaque_existential_1(v142, *(v142 + 3));
  MEMORY[0x1EEE9AC00](v103, v104);
  MEMORY[0x1EEE9AC00](v105, v106);
  *(&v141 - 4) = sub_1D5B4AA6C;
  *(&v141 - 3) = 0;
  v139 = sub_1D6708924;
  v140 = v100;
  v108 = sub_1D5D2F7A4(v95, sub_1D615B49C, v107, sub_1D615B4A4, (&v141 - 6));
  v136 = v108;

  if (v136)
  {
    v164 = v162;
    v165 = 0;
    LOBYTE(v166) = v149;
    sub_1D6182558();
    sub_1D72647EC();
    sub_1D5D2CFE8(v95, type metadata accessor for FormatVersionRequirement);
    v96 = v151;
    v97 = v150;
  }

  else
  {
    sub_1D5D2CFE8(v95, type metadata accessor for FormatVersionRequirement);
    v97 = v150;
    v96 = v151;
  }

LABEL_21:
  v154(v96, v157, v155);
  swift_storeEnumTagMultiPayload();
  if (!v98)
  {

    v109 = v143;
LABEL_26:
    sub_1D5D2CFE8(v96, type metadata accessor for FormatVersionRequirement);
    v111 = v157;
    goto LABEL_27;
  }

  v109 = v143;
  v110 = sub_1D72646CC();

  if (v110)
  {
    goto LABEL_26;
  }

  LOBYTE(v164) = 0;
  v122 = swift_allocObject();
  v123 = v109;
  v124 = v96;
  v125 = v122;
  v162 = xmmword_1D72BAA70;
  *(v122 + 16) = xmmword_1D72BAA70;
  *(v122 + 32) = v164;
  *(v122 + 40) = v123;
  *(v122 + 48) = v161;

  v126 = sub_1D72647CC();
  LOBYTE(v164) = 0;
  v127 = swift_allocObject();
  *(v127 + 16) = v126;
  *(v127 + 24) = v162;
  *(v127 + 40) = v164;
  v128 = __swift_project_boxed_opaque_existential_1(v142, *(v142 + 3));
  MEMORY[0x1EEE9AC00](v128, v129);
  MEMORY[0x1EEE9AC00](v130, v131);
  *(&v141 - 4) = sub_1D5B4AA6C;
  *(&v141 - 3) = 0;
  v139 = sub_1D6708924;
  v140 = v125;
  v133 = sub_1D5D2F7A4(v124, sub_1D615B49C, v132, sub_1D615B4A4, (&v141 - 6));
  v137 = v133;

  if (v137)
  {
    v164 = v162;
    v165 = 0;
    LOBYTE(v166) = v148;
    sub_1D666B294();
    sub_1D72647EC();
    v138 = v157;
    v109 = v143;
    sub_1D5D2CFE8(v151, type metadata accessor for FormatVersionRequirement);
    v111 = v138;
    v97 = v150;
  }

  else
  {
    sub_1D5D2CFE8(v151, type metadata accessor for FormatVersionRequirement);
    v97 = v150;
    v111 = v157;
    v109 = v143;
  }

LABEL_27:
  v154(v97, v111, v155);
  swift_storeEnumTagMultiPayload();
  v112 = v161;
  if (!*(v146 + 16))
  {
    sub_1D5D2CFE8(v97, type metadata accessor for FormatVersionRequirement);
    goto LABEL_13;
  }

  LOBYTE(v164) = 0;
  v113 = swift_allocObject();
  v162 = xmmword_1D72BAA80;
  *(v113 + 16) = xmmword_1D72BAA80;
  *(v113 + 32) = v164;
  *(v113 + 40) = v109;
  *(v113 + 48) = v112;

  v114 = sub_1D72647CC();
  LOBYTE(v164) = 0;
  v115 = swift_allocObject();
  *(v115 + 16) = v114;
  *(v115 + 24) = v162;
  *(v115 + 40) = v164;
  v116 = __swift_project_boxed_opaque_existential_1(v142, *(v142 + 3));
  MEMORY[0x1EEE9AC00](v116, v117);
  MEMORY[0x1EEE9AC00](v118, v119);
  *(&v141 - 4) = sub_1D5B4AA6C;
  *(&v141 - 3) = 0;
  v139 = sub_1D6708924;
  v140 = v113;
  v121 = sub_1D5D2F7A4(v97, sub_1D615B49C, v120, sub_1D615B4A4, (&v141 - 6));
  v134 = v121;

  if (v134)
  {
    v164 = v162;
    v165 = 0;
    v166 = v146;
    v135 = MEMORY[0x1E69E6448];
    sub_1D5C34D84(0, &qword_1EDF1AEE8, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
    sub_1D668EAFC(&qword_1EDF04A70, &qword_1EDF1AEE8, v135);
    sub_1D72647EC();

    sub_1D5D2CFE8(v97, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    sub_1D5D2CFE8(v97, type metadata accessor for FormatVersionRequirement);
  }

  v91 = v26;
  return sub_1D5D2CFE8(v91, sub_1D666B184);
}

uint64_t FormatBorderInset.encode(to:)(void *a1)
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

uint64_t FormatSelectorValue.encode(to:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v44 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v45 = v40 - v9;
  v10 = *(a2 + 16);
  v49 = *(a2 + 24);
  v50 = v10;
  v11 = _s10CodingKeysOMa_250();
  WitnessTable = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  *&v51 = v11;
  *(&v51 + 1) = WitnessTable;
  v52 = v13;
  v53 = v14;
  v15 = type metadata accessor for FormatCodingKeysContainer();
  v16 = swift_getWitnessTable();
  sub_1D726446C();
  swift_getWitnessTable();
  v17 = type metadata accessor for VersionedKeyedEncodingContainer();
  v48 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v40 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v23 = __swift_project_boxed_opaque_existential_1(a1, v21);
  v43 = a2;
  sub_1D5D2EE70(a2, v15, v23, v21, a2, v15, &type metadata for FormatVersions.JazzkonC, v22, v20, v16, &off_1F51F6C78);
  v51 = 0uLL;
  LOBYTE(v52) = 0;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
  v26 = *(v24 - 8);
  v27 = *(v26 + 16);
  v28 = v26 + 16;
  v29 = v45;
  v27(v45, v25, v24);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v30 = v46;
  sub_1D5D38930(v47, &v51, v29, sub_1D5B4AA6C, 0, v17, v50, *(v49 + 16));
  if (v30)
  {
    sub_1D5D2CFE8(v29, type metadata accessor for FormatVersionRequirement);
    return (*(v48 + 8))(v20, v17);
  }

  else
  {
    v40[1] = 0;
    v41 = v20;
    v42 = v28;
    v46 = v27;
    sub_1D5D2CFE8(v29, type metadata accessor for FormatVersionRequirement);
    v54 = sub_1D61834A8(v43);
    type metadata accessor for FormatSelectorValueSelector();
    swift_getWitnessTable();
    swift_getWitnessTable();
    v32 = type metadata accessor for FormatCodingEmptyArrayStrategy();
    v51 = xmmword_1D728CF30;
    LOBYTE(v52) = 0;
    v33 = qword_1EDF31F10;

    if (v33 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v24, qword_1EDFFCDF8);
    v35 = v44;
    v46(v44, v34, v24);
    swift_storeEnumTagMultiPayload();
    v36 = swift_getWitnessTable();
    v37 = v32;
    v38 = v32;
    v39 = v41;
    sub_1D71B5F54(&v54, v37, &v51, v35, sub_1D5B4AA6C, 0, v17, v38, v36);
    sub_1D5D2CFE8(v35, type metadata accessor for FormatVersionRequirement);

    return (*(v48 + 8))(v39, v17);
  }
}

uint64_t FormatSelectorValueSelector.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v38 - v11;
  v13 = *(a2 + 24);
  v41 = *(a2 + 16);
  v39 = v13;
  v14 = _s10CodingKeysOMa_249();
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
  v50 = type metadata accessor for VersionedKeyedEncodingContainer();
  v45 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v20);
  v22 = &v38 - v21;
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  v40 = a2;
  sub_1D5D2EE70(a2, v18, v25, v23, a2, v18, &type metadata for FormatVersions.Azden, v24, v22, v19, &off_1F51F6B78);
  v27 = *v3;
  v26 = v3[1];
  v42 = v3;
  v46[0] = v27;
  v46[1] = v26;
  v47 = 0uLL;
  LOBYTE(v48) = 0;
  v28 = qword_1EDF31F10;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = sub_1D725BD1C();
  v30 = __swift_project_value_buffer(v29, qword_1EDFFCDF8);
  v31 = *(*(v29 - 8) + 16);
  v31(v12, v30, v29);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v32 = sub_1D5D3E60C();
  v33 = v44;
  sub_1D5D38930(v46, &v47, v12, sub_1D5B4AA6C, 0, v50, &type metadata for FormatSelector, v32);
  sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);

  if (v33)
  {
    return (*(v45 + 8))(v22, v50);
  }

  v35 = *(v40 + 36);
  v47 = xmmword_1D728CF30;
  LOBYTE(v48) = 0;
  v36 = v43;
  v31(v43, v30, v29);
  swift_storeEnumTagMultiPayload();
  v37 = v50;
  sub_1D5D38930(v42 + v35, &v47, v36, sub_1D5B4AA6C, 0, v50, v41, *(v39 + 16));
  sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
  return (*(v45 + 8))(v22, v37);
}

uint64_t FormatMediaTimingFunction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27[-v9 - 16];
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
          *(v20 + 16) = &unk_1F5111F60;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D666B2E8();
    *v27 = 0uLL;
    sub_1D726431C();
    v22 = v26;
    if (v26)
    {
      v26 = xmmword_1D7279980;
      sub_1D666B33C();
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v23 = *v27;
      v24 = *&v27[8];
      v25 = v28;
    }

    else
    {
      sub_1D5C30060(0, &qword_1EC886438, sub_1D666B390, &type metadata for FormatMediaTimingFunctionName, type metadata accessor for FormatValue);
      *v27 = xmmword_1D7279980;
      sub_1D666B3E4();
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v25 = 0;
      v23 = v26;
      v24 = 0uLL;
    }

    *v13 = v23;
    *(v13 + 8) = v24;
    *(v13 + 24) = v25;
    *(v13 + 32) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatMediaTimingFunction.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatMediaTimingFunction, &type metadata for FormatCodingKeys, v22, v19, &type metadata for FormatMediaTimingFunction, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v20, v14, v21, &off_1F51F6CD8);
  if (v18)
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCD50);
    (*(*(v23 - 8) + 16))(v6, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6390554(1, v30, v29, v16, v17, v6);
    v25 = v6;
  }

  else
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v26 = sub_1D725BD1C();
    v27 = __swift_project_value_buffer(v26, qword_1EDFFCD50);
    (*(*(v26 - 8) + 16))(v10, v27, v26);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6390380(0, v30, v10);
    v25 = v10;
  }

  sub_1D5D2CFE8(v25, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatVideoProperties.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  sub_1D666B474();
  v7 = v6;
  v47 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D666B508();
  sub_1D5B58B84(&qword_1EDF0C4F0, sub_1D666B508);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v46 = a2;
  v11 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  v14 = v47;
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
          goto LABEL_7;
        }
      }

      v20 = *(v17 - 2);
      v19 = *(v17 - 1);

      v21 = sub_1D6616E88();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21;
      *(v22 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v14 + 8))(v10, v7);
      a1 = v11;
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D666B688();
  v54 = 0uLL;
  v55 = 0;
  sub_1D726427C();
  v18 = v52;
  v52 = xmmword_1D728CF30;
  v53 = 0;
  sub_1D5CDCE98();
  sub_1D726427C();
  v24 = v54;
  v45 = v55;
  v54 = xmmword_1D7297410;
  v55 = 0;
  sub_1D666B6DC();
  sub_1D726427C();
  v44 = v24;
  v25 = v52;
  v52 = xmmword_1D72BAA60;
  v53 = 0;
  sub_1D726427C();
  v41 = v25;
  v43 = *(&v54 + 1);
  v26 = v54;
  v42 = v55;
  v52 = xmmword_1D72BAA70;
  v53 = 0;
  sub_1D726427C();
  v40 = v26;
  v27 = *(&v54 + 1);
  v38 = v54;
  v39 = v55;
  v54 = xmmword_1D72BAA80;
  v55 = 0;
  sub_1D666B730();
  sub_1D726427C();
  v37 = v27;
  v36 = v52;
  v54 = xmmword_1D72BAA90;
  v55 = 0;
  sub_1D666B784();
  sub_1D726427C();
  v35 = *(&v24 + 1);
  LOBYTE(v27) = v52;
  v52 = xmmword_1D72BAAA0;
  v53 = 0;
  sub_1D726427C();
  (*(v14 + 8))(v10, v7);
  v28 = v55;
  v29 = v27;
  v30 = v46;
  *v46 = v18;
  *(v30 + 1) = *v56;
  *(v30 + 1) = *&v56[3];
  v31 = v35;
  *(v30 + 1) = v44;
  *(v30 + 2) = v31;
  v30[24] = v45;
  v30[25] = v41;
  *(v30 + 26) = *&v50[7];
  *(v30 + 15) = v51;
  v32 = v43;
  *(v30 + 4) = v40;
  *(v30 + 5) = v32;
  v30[48] = v42;
  LODWORD(v32) = *v50;
  *(v30 + 13) = *&v50[3];
  *(v30 + 49) = v32;
  v33 = v37;
  *(v30 + 7) = v38;
  *(v30 + 8) = v33;
  v30[72] = v39;
  v30[73] = v36;
  v30[74] = v29;
  *(v30 + 75) = v48;
  v30[79] = v49;
  *(v30 + 5) = v54;
  v30[96] = v28;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatVideoProperties.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v242 = &v235 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v244 = &v235 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v247 = &v235 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v251 = &v235 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v253 = &v235 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v257 = &v235 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v262 = (&v235 - v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v235 - v26;
  sub_1D666B7D8();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v235 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v1;
  v34 = *(v1 + 2);
  v256 = *(v1 + 1);
  v255 = v34;
  LODWORD(v261) = v1[24];
  v276 = v1[25];
  v35 = *(v1 + 5);
  v250 = *(v1 + 4);
  v249 = v35;
  v252 = v1[48];
  v36 = *(v1 + 8);
  v246 = *(v1 + 7);
  v245 = v36;
  v248 = v1[72];
  v243 = v1[73];
  v241 = v1[74];
  v37 = *(v1 + 11);
  v239 = *(v1 + 10);
  v238 = v37;
  v240 = v1[96];
  v38 = a1[3];
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v38);
  sub_1D666B508();
  v41 = v40;
  v42 = sub_1D5B58B84(&qword_1EDF0C4F0, sub_1D666B508);
  sub_1D5D2EE70(&type metadata for FormatVideoProperties, v41, v43, v38, &type metadata for FormatVideoProperties, v41, &type metadata for FormatVersions.AzdenE, v39, v32, v42, &off_1F51F6C18);
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v44 = sub_1D725BD1C();
  v45 = __swift_project_value_buffer(v44, qword_1EDFFCD98);
  v46 = *(v44 - 8);
  v47 = *(v46 + 16);
  v265 = v45;
  v263 = v46 + 16;
  v47(v27);
  *&v266 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v272 = 0uLL;
  v273 = 0;
  v48 = &v32[*(v29 + 44)];
  v50 = *v48;
  v49 = *(v48 + 1);
  LOBYTE(v269) = 0;
  v51 = swift_allocObject();
  v53 = v51;
  *(v51 + 16) = 0;
  *(v51 + 24) = 0;
  *(v51 + 32) = v269;
  *(v51 + 40) = v50;
  *(v51 + 48) = v49;
  v267 = v32;
  v254 = v47;
  v258 = v44;
  v259 = v49;
  v260 = v50;
  if (v33 == 3)
  {

    goto LABEL_11;
  }

  *&v264 = &v235;
  LOBYTE(v269) = v33;
  MEMORY[0x1EEE9AC00](v51, v52);
  *(&v235 - 4) = sub_1D5B4AA6C;
  *(&v235 - 3) = 0;
  v233 = sub_1D6708928;
  v234 = v53;
  v275 = 0;
  v54 = v32;
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  *(v55 + 24) = 0;
  *(v55 + 32) = v275;
  *(v55 + 40) = v50;
  *(v55 + 48) = v49;
  sub_1D666B86C();
  v57 = v56;
  sub_1D5B58B84(&qword_1EC886460, sub_1D666B86C);
  swift_retain_n();
  v236 = v57;
  v58 = sub_1D72647CC();
  v275 = 0;
  v59 = v29;
  v60 = swift_allocObject();
  *(v60 + 24) = 0;
  *(v60 + 32) = 0;
  *(v60 + 16) = v58;
  *(v60 + 40) = v275;
  v61 = __swift_project_boxed_opaque_existential_1(&v54[*(v59 + 36)], *&v54[*(v59 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v61, v62);
  MEMORY[0x1EEE9AC00](v63, v64);
  *(&v235 - 4) = sub_1D615B4A4;
  *(&v235 - 3) = &v235 - 6;
  v233 = sub_1D6708928;
  v234 = v55;
  v65 = v268;
  v67 = sub_1D5D2F7A4(v27, sub_1D615B49C, v66, sub_1D615B4A4, (&v235 - 6));
  if (!v65)
  {
    v69 = v67;

    if (v69)
    {
      sub_1D666BA8C();
      v32 = v267;
      sub_1D72647EC();
      v44 = v258;
      v268 = 0;
      v29 = v59;
      v49 = v259;
      v50 = v260;
    }

    else
    {
      v268 = 0;
      v32 = v267;
      v29 = v59;
      v49 = v259;
      v50 = v260;
      v44 = v258;
    }

    v47 = v254;
LABEL_11:
    sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

    v70 = v262;
    (v47)(v262, v265, v44);
    swift_storeEnumTagMultiPayload();
    v264 = xmmword_1D728CF30;
    v272 = xmmword_1D728CF30;
    v273 = 0;
    LOBYTE(v269) = 0;
    v71 = swift_allocObject();
    v73 = v71;
    *(v71 + 16) = v264;
    *(v71 + 32) = v269;
    *(v71 + 40) = v50;
    *(v71 + 48) = v49;
    v237 = v29;
    if (v261 == 255)
    {

      sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v236 = &v235;
      v74 = v256;
      v75 = v255;
      v269 = v256;
      v270 = v255;
      v271 = v261 & 1;
      MEMORY[0x1EEE9AC00](v71, v72);
      v235 = &v235 - 6;
      *(&v235 - 4) = sub_1D5B4AA6C;
      *(&v235 - 3) = 0;
      v233 = sub_1D6708928;
      v234 = v73;
      v275 = 0;
      v77 = v76;
      v78 = swift_allocObject();
      v79 = v50;
      v80 = v78;
      *(v78 + 16) = v264;
      *(v78 + 32) = v275;
      *(v78 + 40) = v79;
      *(v78 + 48) = v49;
      swift_retain_n();
      sub_1D6189668(v74, v75, v77);
      sub_1D666B86C();
      v82 = v81;
      sub_1D5B58B84(&qword_1EC886460, sub_1D666B86C);
      v261 = v82;
      v83 = sub_1D72647CC();
      v275 = 0;
      v84 = swift_allocObject();
      *(v84 + 16) = v83;
      *(v84 + 24) = v264;
      *(v84 + 40) = v275;
      v85 = __swift_project_boxed_opaque_existential_1(&v32[*(v29 + 36)], *&v32[*(v29 + 36) + 24]);
      MEMORY[0x1EEE9AC00](v85, v86);
      MEMORY[0x1EEE9AC00](v87, v88);
      v89 = v235;
      *(&v235 - 4) = sub_1D615B4A4;
      *(&v235 - 3) = v89;
      v233 = sub_1D6708928;
      v234 = v80;
      v90 = v268;
      v92 = sub_1D5D2F7A4(v70, sub_1D615B49C, v91, sub_1D615B4A4, (&v235 - 6));
      if (v90)
      {

        v93 = v267;
        sub_1D5D2F2C8(v269, v270, v271);
        v94 = v70;
LABEL_45:
        sub_1D5D2CFE8(v94, type metadata accessor for FormatVersionRequirement);
        goto LABEL_46;
      }

      v95 = v92;
      v97 = v259;
      v96 = v260;
      v29 = v237;

      if (v95)
      {
        sub_1D60ED320();
        sub_1D72647EC();
        v50 = v96;
        v268 = 0;

        sub_1D5D2F2C8(v269, v270, v271);
        sub_1D5D2CFE8(v262, type metadata accessor for FormatVersionRequirement);
        v49 = v97;
      }

      else
      {
        v268 = 0;

        sub_1D5D2F2C8(v269, v270, v271);
        sub_1D5D2CFE8(v262, type metadata accessor for FormatVersionRequirement);
        v49 = v97;
        v50 = v96;
      }

      v44 = v258;
      v47 = v254;
    }

    v98 = v257;
    (v47)(v257, v265, v44);
    swift_storeEnumTagMultiPayload();
    v264 = xmmword_1D7297410;
    v272 = xmmword_1D7297410;
    v273 = 0;
    LOBYTE(v269) = 0;
    v99 = swift_allocObject();
    v101 = v99;
    *(v99 + 16) = v264;
    *(v99 + 32) = v269;
    *(v99 + 40) = v50;
    *(v99 + 48) = v49;
    if (v276 == 2)
    {
    }

    else
    {
      v262 = &v235;
      LOBYTE(v269) = v276 & 1;
      MEMORY[0x1EEE9AC00](v99, v100);
      *(&v235 - 4) = sub_1D5B4AA6C;
      *(&v235 - 3) = 0;
      v233 = sub_1D6708928;
      v234 = v101;
      v275 = 0;
      v102 = swift_allocObject();
      *(v102 + 16) = v264;
      *(v102 + 32) = v275;
      *(v102 + 40) = v50;
      *(v102 + 48) = v49;
      sub_1D666B86C();
      v104 = v103;
      sub_1D5B58B84(&qword_1EC886460, sub_1D666B86C);
      swift_retain_n();
      v105 = v267;
      v261 = v104;
      v106 = sub_1D72647CC();
      v275 = 0;
      v107 = swift_allocObject();
      *(v107 + 16) = v106;
      *(v107 + 24) = v264;
      *(v107 + 40) = v275;
      v108 = __swift_project_boxed_opaque_existential_1(&v105[*(v29 + 36)], *&v105[*(v29 + 36) + 24]);
      MEMORY[0x1EEE9AC00](v108, v109);
      MEMORY[0x1EEE9AC00](v110, v111);
      *(&v235 - 4) = sub_1D615B4A4;
      *(&v235 - 3) = &v235 - 6;
      v233 = sub_1D6708928;
      v234 = v102;
      v112 = v268;
      v114 = sub_1D5D2F7A4(v98, sub_1D615B49C, v113, sub_1D615B4A4, (&v235 - 6));
      v268 = v112;
      if (v112)
      {
        v115 = v98;
LABEL_23:
        sub_1D5D2CFE8(v115, type metadata accessor for FormatVersionRequirement);

LABEL_24:
        v93 = v267;
LABEL_46:
        v68 = v93;
        return sub_1D5D2CFE8(v68, sub_1D666B7D8);
      }

      v116 = v114;
      v117 = v260;
      v49 = v259;
      v29 = v237;

      if (v116)
      {
        sub_1D666BA38();
        v93 = v267;
        v118 = v268;
        sub_1D72647EC();
        v50 = v117;
        v44 = v258;
        if (v118)
        {
          v119 = &v277;
          goto LABEL_28;
        }

        v268 = 0;
        v47 = v254;
      }

      else
      {
        v50 = v117;
        v44 = v258;
        v47 = v254;
      }

      v98 = v257;
    }

    sub_1D5D2CFE8(v98, type metadata accessor for FormatVersionRequirement);

    v120 = v253;
    (v47)(v253, v265, v44);
    swift_storeEnumTagMultiPayload();
    v264 = xmmword_1D72BAA60;
    v272 = xmmword_1D72BAA60;
    v273 = 0;
    LOBYTE(v269) = 0;
    v121 = swift_allocObject();
    v123 = v121;
    *(v121 + 16) = v264;
    *(v121 + 32) = v269;
    *(v121 + 40) = v50;
    *(v121 + 48) = v49;
    if (v252 == 255)
    {

      sub_1D5D2CFE8(v120, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v262 = &v235;
      v124 = v250;
      v125 = v249;
      v269 = v250;
      v270 = v249;
      v271 = v252 & 1;
      MEMORY[0x1EEE9AC00](v121, v122);
      v261 = &v235 - 6;
      *(&v235 - 4) = sub_1D5B4AA6C;
      *(&v235 - 3) = 0;
      v233 = sub_1D6708928;
      v234 = v123;
      v275 = 0;
      v127 = v126;
      v128 = swift_allocObject();
      *(v128 + 16) = v264;
      *(v128 + 32) = v275;
      *(v128 + 40) = v50;
      *(v128 + 48) = v49;
      swift_retain_n();
      sub_1D6189668(v124, v125, v127);
      sub_1D666B86C();
      sub_1D5B58B84(&qword_1EC886460, sub_1D666B86C);
      v129 = v267;
      v130 = sub_1D72647CC();
      v275 = 0;
      v131 = swift_allocObject();
      *(v131 + 16) = v130;
      *(v131 + 24) = v264;
      *(v131 + 40) = v275;
      v132 = __swift_project_boxed_opaque_existential_1(&v129[*(v29 + 36)], *&v129[*(v29 + 36) + 24]);
      MEMORY[0x1EEE9AC00](v132, v133);
      MEMORY[0x1EEE9AC00](v134, v135);
      v136 = v261;
      *(&v235 - 4) = sub_1D615B4A4;
      *(&v235 - 3) = v136;
      v233 = sub_1D6708928;
      v234 = v128;
      v137 = v268;
      v139 = sub_1D5D2F7A4(v120, sub_1D615B49C, v138, sub_1D615B4A4, (&v235 - 6));
      v268 = v137;
      if (v137)
      {
LABEL_43:

        v93 = v267;
        goto LABEL_44;
      }

      v140 = v139;
      v141 = v259;
      v142 = v260;
      v29 = v237;

      if (v140)
      {
        sub_1D60ED320();
        v93 = v267;
        v143 = v268;
        sub_1D72647EC();
        if (v143)
        {

          v120 = v253;
LABEL_44:
          sub_1D5D2F2C8(v269, v270, v271);
          v94 = v120;
          goto LABEL_45;
        }

        v50 = v142;
        v268 = 0;

        sub_1D5D2F2C8(v269, v270, v271);
        sub_1D5D2CFE8(v253, type metadata accessor for FormatVersionRequirement);
        v49 = v141;
      }

      else
      {

        sub_1D5D2F2C8(v269, v270, v271);
        sub_1D5D2CFE8(v253, type metadata accessor for FormatVersionRequirement);
        v49 = v141;
        v50 = v142;
      }

      v44 = v258;
      v47 = v254;
    }

    v120 = v251;
    (v47)(v251, v265, v44);
    swift_storeEnumTagMultiPayload();
    v264 = xmmword_1D72BAA70;
    v272 = xmmword_1D72BAA70;
    v273 = 0;
    LOBYTE(v269) = 0;
    v144 = swift_allocObject();
    v146 = v144;
    *(v144 + 16) = v264;
    *(v144 + 32) = v269;
    *(v144 + 40) = v50;
    *(v144 + 48) = v49;
    if (v248 == 255)
    {

      sub_1D5D2CFE8(v120, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v262 = &v235;
      v147 = v246;
      v148 = v245;
      v269 = v246;
      v270 = v245;
      v271 = v248 & 1;
      MEMORY[0x1EEE9AC00](v144, v145);
      v261 = &v235 - 6;
      *(&v235 - 4) = sub_1D5B4AA6C;
      *(&v235 - 3) = 0;
      v233 = sub_1D6708928;
      v234 = v146;
      v275 = 0;
      v150 = v149;
      v151 = swift_allocObject();
      *(v151 + 16) = v264;
      *(v151 + 32) = v275;
      *(v151 + 40) = v50;
      *(v151 + 48) = v49;
      swift_retain_n();
      sub_1D6189668(v147, v148, v150);
      sub_1D666B86C();
      sub_1D5B58B84(&qword_1EC886460, sub_1D666B86C);
      v152 = v267;
      v153 = sub_1D72647CC();
      v275 = 0;
      v154 = swift_allocObject();
      *(v154 + 16) = v153;
      *(v154 + 24) = v264;
      *(v154 + 40) = v275;
      v155 = __swift_project_boxed_opaque_existential_1(&v152[*(v29 + 36)], *&v152[*(v29 + 36) + 24]);
      MEMORY[0x1EEE9AC00](v155, v156);
      MEMORY[0x1EEE9AC00](v157, v158);
      v159 = v261;
      *(&v235 - 4) = sub_1D615B4A4;
      *(&v235 - 3) = v159;
      v233 = sub_1D6708928;
      v234 = v151;
      v160 = v268;
      v162 = sub_1D5D2F7A4(v120, sub_1D615B49C, v161, sub_1D615B4A4, (&v235 - 6));
      v268 = v160;
      if (v160)
      {
        goto LABEL_43;
      }

      v164 = v162;
      v165 = v259;
      v166 = v260;
      v29 = v237;

      if (v164)
      {
        sub_1D60ED320();
        v93 = v267;
        v167 = v268;
        sub_1D72647EC();
        if (v167)
        {

          v120 = v251;
          goto LABEL_44;
        }

        v50 = v166;
        v268 = 0;

        sub_1D5D2F2C8(v269, v270, v271);
        sub_1D5D2CFE8(v251, type metadata accessor for FormatVersionRequirement);
        v49 = v165;
      }

      else
      {

        sub_1D5D2F2C8(v269, v270, v271);
        sub_1D5D2CFE8(v251, type metadata accessor for FormatVersionRequirement);
        v49 = v165;
        v50 = v166;
      }

      v44 = v258;
      v47 = v254;
    }

    v168 = v247;
    (v47)(v247, v265, v44);
    swift_storeEnumTagMultiPayload();
    v264 = xmmword_1D72BAA80;
    v272 = xmmword_1D72BAA80;
    v273 = 0;
    LOBYTE(v269) = 0;
    v169 = swift_allocObject();
    v171 = v169;
    *(v169 + 16) = v264;
    *(v169 + 32) = v269;
    *(v169 + 40) = v50;
    *(v169 + 48) = v49;
    if (v243 == 12)
    {

LABEL_57:
      sub_1D5D2CFE8(v247, type metadata accessor for FormatVersionRequirement);

      v172 = v244;
      (v47)(v244, v265, v44);
      swift_storeEnumTagMultiPayload();
      v264 = xmmword_1D72BAA90;
      v272 = xmmword_1D72BAA90;
      v273 = 0;
      LOBYTE(v269) = 0;
      v173 = swift_allocObject();
      v175 = v173;
      *(v173 + 16) = v264;
      *(v173 + 32) = v269;
      *(v173 + 40) = v50;
      *(v173 + 48) = v49;
      if (v241 == 3)
      {
        v176 = v50;

        goto LABEL_59;
      }

      v262 = &v235;
      LOBYTE(v269) = v241;
      MEMORY[0x1EEE9AC00](v173, v174);
      *(&v235 - 4) = sub_1D5B4AA6C;
      *(&v235 - 3) = 0;
      v233 = sub_1D6708928;
      v234 = v175;
      v275 = 0;
      v215 = swift_allocObject();
      *(v215 + 16) = v264;
      *(v215 + 32) = v275;
      *(v215 + 40) = v50;
      *(v215 + 48) = v49;
      sub_1D666B86C();
      v217 = v216;
      sub_1D5B58B84(&qword_1EC886460, sub_1D666B86C);
      swift_retain_n();
      v218 = v267;
      v261 = v217;
      v219 = sub_1D72647CC();
      v275 = 0;
      v220 = swift_allocObject();
      *(v220 + 16) = v219;
      *(v220 + 24) = v264;
      *(v220 + 40) = v275;
      v221 = __swift_project_boxed_opaque_existential_1(&v218[*(v29 + 36)], *&v218[*(v29 + 36) + 24]);
      MEMORY[0x1EEE9AC00](v221, v222);
      MEMORY[0x1EEE9AC00](v223, v224);
      *(&v235 - 4) = sub_1D615B4A4;
      *(&v235 - 3) = &v235 - 6;
      v233 = sub_1D6708928;
      v234 = v215;
      v225 = v268;
      v227 = sub_1D5D2F7A4(v172, sub_1D615B49C, v226, sub_1D615B4A4, (&v235 - 6));
      if (!v225)
      {
        v231 = v227;
        v176 = v260;

        if (v231)
        {
          sub_1D666B990();
          sub_1D72647EC();
          v44 = v258;
          v268 = 0;
        }

        else
        {
          v268 = 0;
          v44 = v258;
        }

        v49 = v259;
LABEL_59:
        sub_1D5D2CFE8(v244, type metadata accessor for FormatVersionRequirement);

        sub_1D5B58478();
        v178 = *(v177 + 48);
        v179 = v242;
        v180 = (v242 + *(v177 + 64));
        v181 = v254;
        (v254)(v242, v265, v44);
        if (qword_1EDF31EE0 != -1)
        {
          swift_once();
        }

        v182 = __swift_project_value_buffer(v44, qword_1EDFFCD80);
        v181(v179 + v178, v182, v44);
        *v180 = 0;
        v180[1] = 0;
        swift_storeEnumTagMultiPayload();
        v266 = xmmword_1D72BAAA0;
        v272 = xmmword_1D72BAAA0;
        v273 = 0;
        LOBYTE(v269) = 0;
        v183 = swift_allocObject();
        v185 = v183;
        *(v183 + 16) = v266;
        *(v183 + 32) = v269;
        *(v183 + 40) = v176;
        *(v183 + 48) = v49;
        v186 = v240;
        if (v240 == 255)
        {

          sub_1D5D2CFE8(v179, type metadata accessor for FormatVersionRequirement);
        }

        else
        {
          *&v264 = &v235;
          v187 = v239;
          v188 = v238;
          v269 = v239;
          v270 = v238;
          v271 = v240 & 1;
          MEMORY[0x1EEE9AC00](v183, v184);
          v265 = &v235 - 6;
          *(&v235 - 4) = sub_1D5B4AA6C;
          *(&v235 - 3) = 0;
          v233 = sub_1D6708928;
          v234 = v185;
          v275 = 0;
          v189 = swift_allocObject();
          *(v189 + 16) = v266;
          *(v189 + 32) = v275;
          *(v189 + 40) = v176;
          *(v189 + 48) = v49;
          swift_retain_n();
          sub_1D6189668(v187, v188, v186);
          sub_1D666B86C();
          v190 = v267;
          sub_1D5B58B84(&qword_1EC886460, sub_1D666B86C);
          v191 = sub_1D72647CC();
          v275 = 0;
          v192 = swift_allocObject();
          *(v192 + 16) = v191;
          *(v192 + 24) = v266;
          *(v192 + 40) = v275;
          v193 = __swift_project_boxed_opaque_existential_1(&v190[*(v237 + 36)], *&v190[*(v237 + 36) + 24]);
          MEMORY[0x1EEE9AC00](v193, v194);
          MEMORY[0x1EEE9AC00](v195, v196);
          v197 = v265;
          *(&v235 - 4) = sub_1D615B4A4;
          *(&v235 - 3) = v197;
          v233 = sub_1D666B900;
          v234 = v189;
          v198 = v268;
          v200 = sub_1D5D2F7A4(v179, sub_1D615B49C, v199, sub_1D615B4A4, (&v235 - 6));
          if (v198)
          {

            v201 = v242;
            sub_1D5D2F2C8(v269, v270, v271);
            sub_1D5D2CFE8(v201, type metadata accessor for FormatVersionRequirement);
            v68 = v267;
            return sub_1D5D2CFE8(v68, sub_1D666B7D8);
          }

          v232 = v200;

          if (v232)
          {
            sub_1D60ED320();
            sub_1D72647EC();
          }

          sub_1D5D2F2C8(v269, v270, v271);
          sub_1D5D2CFE8(v242, type metadata accessor for FormatVersionRequirement);
        }

        v68 = v267;
        return sub_1D5D2CFE8(v68, sub_1D666B7D8);
      }

      sub_1D5D2CFE8(v172, type metadata accessor for FormatVersionRequirement);

      goto LABEL_24;
    }

    v262 = &v235;
    LOBYTE(v269) = v243;
    MEMORY[0x1EEE9AC00](v169, v170);
    *(&v235 - 4) = sub_1D5B4AA6C;
    *(&v235 - 3) = 0;
    v233 = sub_1D6708928;
    v234 = v171;
    v275 = 0;
    v202 = swift_allocObject();
    *(v202 + 16) = v264;
    *(v202 + 32) = v275;
    *(v202 + 40) = v50;
    *(v202 + 48) = v49;
    sub_1D666B86C();
    v204 = v203;
    sub_1D5B58B84(&qword_1EC886460, sub_1D666B86C);
    swift_retain_n();
    v205 = v267;
    v261 = v204;
    v206 = sub_1D72647CC();
    v275 = 0;
    v207 = swift_allocObject();
    *(v207 + 16) = v206;
    *(v207 + 24) = v264;
    *(v207 + 40) = v275;
    v208 = __swift_project_boxed_opaque_existential_1(&v205[*(v29 + 36)], *&v205[*(v29 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v208, v209);
    MEMORY[0x1EEE9AC00](v210, v211);
    *(&v235 - 4) = sub_1D615B4A4;
    *(&v235 - 3) = &v235 - 6;
    v233 = sub_1D6708928;
    v234 = v202;
    v212 = v268;
    v214 = sub_1D5D2F7A4(v168, sub_1D615B49C, v213, sub_1D615B4A4, (&v235 - 6));
    v268 = v212;
    if (v212)
    {
      v115 = v168;
      goto LABEL_23;
    }

    v228 = v214;
    v229 = v260;
    v49 = v259;
    v29 = v237;

    if ((v228 & 1) == 0)
    {
      v50 = v229;
      v44 = v258;
      v47 = v254;
      goto LABEL_57;
    }

    sub_1D666B9E4();
    v93 = v267;
    v230 = v268;
    sub_1D72647EC();
    v44 = v258;
    if (!v230)
    {
      v50 = v229;
      v268 = 0;
      v47 = v254;
      goto LABEL_57;
    }

    v119 = &v274;
LABEL_28:
    sub_1D5D2CFE8(*(v119 - 32), type metadata accessor for FormatVersionRequirement);

    goto LABEL_46;
  }

  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

  v68 = v267;
  return sub_1D5D2CFE8(v68, sub_1D666B7D8);
}

uint64_t FormatType.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v92 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v91 = &v79 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v79 - v11;
  sub_1D666BAE0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v18 = v1[1];
  v20 = *(v1 + 2);
  v89 = *(v1 + 3);
  v90 = v20;
  v21 = v1[9];
  v88 = v1[8];
  v87 = v21;
  v107 = *(v1 + 80);
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1D5CDF268();
  v25 = v24;
  v26 = sub_1D5B58B84(&qword_1EDF24D08, sub_1D5CDF268);
  sub_1D5D2EE70(&type metadata for FormatType, v25, v27, v22, &type metadata for FormatType, v25, &type metadata for FormatVersions.JazzkonC, v23, v17, v26, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v28 = sub_1D725BD1C();
  v29 = __swift_project_value_buffer(v28, qword_1EDFFCD30);
  v30 = *(v28 - 8);
  v31 = *(v30 + 16);
  v85 = v29;
  v93 = v28;
  v84 = v31;
  v83 = v30 + 16;
  (v31)(v12);
  v82 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v99 = v19;
  *(&v99 + 1) = v18;
  v101 = 0uLL;
  LOBYTE(v102) = 0;
  v32 = &v17[*(v14 + 44)];
  v96 = v12;
  v33 = *v32;
  v34 = *(v32 + 1);
  v106 = 0;
  v35 = swift_allocObject();
  v97 = &v79;
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v106;
  *(v35 + 40) = v33;
  *(v35 + 48) = v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v37 = v17;
  *(&v79 - 4) = sub_1D5B4AA6C;
  *(&v79 - 3) = 0;
  v77 = sub_1D670892C;
  v78 = v38;
  v106 = 0;
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  *(v39 + 32) = v106;
  v86 = v33;
  *(v39 + 40) = v33;
  *(v39 + 48) = v34;
  sub_1D666BB74();
  v41 = v40;
  v42 = sub_1D5B58B84(&qword_1EDF02BE8, sub_1D666BB74);
  swift_retain_n();
  v94 = v42;
  v95 = v41;
  v43 = sub_1D72647CC();
  v106 = 0;
  v44 = swift_allocObject();
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = v43;
  *(v44 + 40) = v106;
  v45 = &v17[*(v14 + 36)];
  v46 = __swift_project_boxed_opaque_existential_1(v45, *(v45 + 3));
  MEMORY[0x1EEE9AC00](v46, v47);
  MEMORY[0x1EEE9AC00](v48, v49);
  *(&v79 - 4) = sub_1D615B4A4;
  *(&v79 - 3) = (&v79 - 6);
  v50 = v96;
  v77 = sub_1D666BC08;
  v78 = v39;
  v51 = v98;
  sub_1D5D2BC70(v96, sub_1D615B49C, v52, sub_1D615B4A4, (&v79 - 6));
  if (v51)
  {
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

    v55 = v37;
  }

  else
  {
    v80 = v45;
    v53 = v93;
    v81 = v34;

    sub_1D72647EC();
    v54 = v37;
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

    v57 = v91;
    v58 = v85;
    v59 = v53;
    v60 = v53;
    v61 = v84;
    v84(v91, v85, v60);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);
    v62 = v92;
    v61(v92, v58, v59);
    v63 = v62;
    swift_storeEnumTagMultiPayload();
    v101 = v90;
    v102 = v89;
    v103 = v88;
    v104 = v87;
    v105 = v107;
    v98 = xmmword_1D7297410;
    v99 = xmmword_1D7297410;
    v100 = 0;
    v106 = 0;
    v64 = swift_allocObject();
    v97 = &v79;
    *(v64 + 16) = v98;
    *(v64 + 32) = v106;
    v65 = v86;
    v66 = v81;
    *(v64 + 40) = v86;
    *(v64 + 48) = v66;
    MEMORY[0x1EEE9AC00](v64, v67);
    *(&v79 - 4) = sub_1D5B4AA6C;
    *(&v79 - 3) = 0;
    v77 = sub_1D670892C;
    v78 = v68;
    v106 = 0;
    v69 = swift_allocObject();
    *(v69 + 16) = v98;
    *(v69 + 32) = v106;
    *(v69 + 40) = v65;
    *(v69 + 48) = v66;
    swift_retain_n();
    v70 = sub_1D72647CC();
    v106 = 0;
    v71 = swift_allocObject();
    *(v71 + 16) = v70;
    *(v71 + 24) = v98;
    *(v71 + 40) = v106;
    v72 = __swift_project_boxed_opaque_existential_1(v80, *(v80 + 3));
    MEMORY[0x1EEE9AC00](v72, v73);
    MEMORY[0x1EEE9AC00](v74, v75);
    *(&v79 - 4) = sub_1D615B4A4;
    *(&v79 - 3) = (&v79 - 6);
    v77 = sub_1D670892C;
    v78 = v69;
    sub_1D5D2BC70(v63, sub_1D615B49C, v76, sub_1D615B4A4, (&v79 - 6));

    sub_1D666BC84();
    sub_1D72647EC();
    sub_1D5D2CFE8(v63, type metadata accessor for FormatVersionRequirement);

    v55 = v54;
  }

  return sub_1D5D2CFE8(v55, sub_1D666BAE0);
}

uint64_t FormatAdjustment.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v251 = &v226 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v250 = &v226 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v228 = &v226 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v227 = &v226 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v249 = &v226 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v247 = &v226 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v245 = &v226 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v248 = &v226 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v246 = &v226 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v244 = &v226 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v243 = &v226 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v242 = &v226 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v241 = &v226 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v240 = &v226 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v238 = &v226 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v226 = &v226 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v237 = &v226 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v236 = &v226 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v235 = &v226 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v234 = &v226 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v233 = &v226 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v232 = &v226 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v231 = &v226 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v230 = &v226 - v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  v229 = &v226 - v77;
  MEMORY[0x1EEE9AC00](v78, v79);
  v81 = &v226 - v80;
  MEMORY[0x1EEE9AC00](v82, v83);
  v239 = &v226 - v84;
  MEMORY[0x1EEE9AC00](v85, v86);
  v88 = &v226 - v87;
  MEMORY[0x1EEE9AC00](v89, v90);
  v92 = &v226 - v91;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v93 - 8, v94);
  v96 = &v226 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = *v1;
  v99 = a1[3];
  v98 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v99);
  v100 = sub_1D5C30408();
  v252 = v96;
  sub_1D5D2EE70(&type metadata for FormatAdjustment, &type metadata for FormatCodingKeys, v101, v99, &type metadata for FormatAdjustment, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v98, v96, v100, &off_1F51F6C78);
  switch((v97 >> 59) & 0x1E | (v97 >> 2) & 1)
  {
    case 1uLL:
      v165 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v166 = sub_1D725BD1C();
      v167 = __swift_project_value_buffer(v166, qword_1EDFFCD30);
      (*(*(v166 - 8) + 16))(v88, v167, v166);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v168 = v165;
      v109 = v252;
      sub_1D63B713C(1, v168, v88);
      v110 = v88;
      goto LABEL_90;
    case 2uLL:
      v151 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v152 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v153 = qword_1EDF31EB0;

      if (v153 != -1)
      {
        swift_once();
      }

      v154 = sub_1D725BD1C();
      v155 = __swift_project_value_buffer(v154, qword_1EDFFCD30);
      v117 = v239;
      (*(*(v154 - 8) + 16))(v239, v155, v154);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v109 = v252;
      sub_1D63B7310(2, v151, v152, v117);
      goto LABEL_87;
    case 3uLL:
      v124 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v159 = qword_1EDF31EB0;

      if (v159 != -1)
      {
        swift_once();
      }

      v160 = sub_1D725BD1C();
      v161 = __swift_project_value_buffer(v160, qword_1EDFFCD30);
      v117 = v229;
      (*(*(v160 - 8) + 16))(v229, v161, v160);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v128 = 4;
      goto LABEL_75;
    case 4uLL:
      v124 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v129 = qword_1EDF31EB0;

      if (v129 != -1)
      {
        swift_once();
      }

      v130 = sub_1D725BD1C();
      v131 = __swift_project_value_buffer(v130, qword_1EDFFCD30);
      v117 = v230;
      (*(*(v130 - 8) + 16))(v230, v131, v130);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v128 = 5;
      goto LABEL_75;
    case 5uLL:
      v124 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v177 = qword_1EDF31EB0;

      if (v177 != -1)
      {
        swift_once();
      }

      v178 = sub_1D725BD1C();
      v179 = __swift_project_value_buffer(v178, qword_1EDFFCD30);
      v117 = v231;
      (*(*(v178 - 8) + 16))(v231, v179, v178);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v128 = 6;
      goto LABEL_75;
    case 6uLL:
      v124 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v190 = qword_1EDF31EB0;

      if (v190 != -1)
      {
        swift_once();
      }

      v191 = sub_1D725BD1C();
      v192 = __swift_project_value_buffer(v191, qword_1EDFFCD30);
      v117 = v232;
      (*(*(v191 - 8) + 16))(v232, v192, v191);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v128 = 7;
      goto LABEL_75;
    case 7uLL:
      v124 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v162 = qword_1EDF31EB0;

      if (v162 != -1)
      {
        swift_once();
      }

      v163 = sub_1D725BD1C();
      v164 = __swift_project_value_buffer(v163, qword_1EDFFCD30);
      v117 = v233;
      (*(*(v163 - 8) + 16))(v233, v164, v163);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v128 = 8;
      goto LABEL_75;
    case 8uLL:
      v124 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v199 = qword_1EDF31EB0;

      if (v199 != -1)
      {
        swift_once();
      }

      v200 = sub_1D725BD1C();
      v201 = __swift_project_value_buffer(v200, qword_1EDFFCD30);
      v117 = v234;
      (*(*(v200 - 8) + 16))(v234, v201, v200);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v128 = 9;
      goto LABEL_75;
    case 9uLL:
      v135 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v136 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v137 = qword_1EDF31EB0;

      if (v137 != -1)
      {
        swift_once();
      }

      v138 = sub_1D725BD1C();
      v139 = __swift_project_value_buffer(v138, qword_1EDFFCD30);
      v117 = v235;
      (*(*(v138 - 8) + 16))(v235, v139, v138);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v140 = v136;
      v109 = v252;
      sub_1D63B7670(10, v135, v140, v117);
      goto LABEL_88;
    case 0xAuLL:
      v124 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v196 = qword_1EDF31F08;

      if (v196 != -1)
      {
        swift_once();
      }

      v197 = sub_1D725BD1C();
      v198 = __swift_project_value_buffer(v197, qword_1EDFFCDE0);
      v117 = v236;
      (*(*(v197 - 8) + 16))(v236, v198, v197);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v128 = 11;
      goto LABEL_75;
    case 0xBuLL:
      v124 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v125 = qword_1EDF31F08;

      if (v125 != -1)
      {
        swift_once();
      }

      v126 = sub_1D725BD1C();
      v127 = __swift_project_value_buffer(v126, qword_1EDFFCDE0);
      v117 = v237;
      (*(*(v126 - 8) + 16))(v237, v127, v126);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v128 = 12;
LABEL_75:
      v109 = v252;
      sub_1D63B74A4(v128, v124, v117);
      goto LABEL_88;
    case 0xCuLL:
      v132 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v133 = sub_1D725BD1C();
      v134 = __swift_project_value_buffer(v133, qword_1EDFFCD30);
      v117 = v238;
      (*(*(v133 - 8) + 16))(v238, v134, v133);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v109 = v252;
      sub_1D63B713C(14, v132, v117);
      goto LABEL_89;
    case 0xDuLL:
      v183 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v185 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v184 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v186 = qword_1EDF31EB0;

      if (v186 != -1)
      {
        swift_once();
      }

      v187 = sub_1D725BD1C();
      v188 = __swift_project_value_buffer(v187, qword_1EDFFCD30);
      v117 = v240;
      (*(*(v187 - 8) + 16))(v240, v188, v187);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v189 = v183;
      v109 = v252;
      sub_1D63B7808(15, v189, v185, v184, v117);
      goto LABEL_88;
    case 0xEuLL:
      v119 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v120 = qword_1EDF31EB0;

      if (v120 != -1)
      {
        swift_once();
      }

      v121 = sub_1D725BD1C();
      v122 = __swift_project_value_buffer(v121, qword_1EDFFCD30);
      v117 = v241;
      (*(*(v121 - 8) + 16))(v241, v122, v121);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v123 = 16;
      goto LABEL_37;
    case 0xFuLL:
      v119 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v156 = qword_1EDF31EB0;

      if (v156 != -1)
      {
        swift_once();
      }

      v157 = sub_1D725BD1C();
      v158 = __swift_project_value_buffer(v157, qword_1EDFFCD30);
      v117 = v242;
      (*(*(v157 - 8) + 16))(v242, v158, v157);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v123 = 17;
LABEL_37:
      v109 = v252;
      sub_1D63B79A4(v123, v119, v117);
      goto LABEL_79;
    case 0x10uLL:
      v112 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v111 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v113 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v114 = qword_1EDF31EB0;

      if (v114 != -1)
      {
        swift_once();
      }

      v115 = sub_1D725BD1C();
      v116 = __swift_project_value_buffer(v115, qword_1EDFFCD30);
      v117 = v243;
      (*(*(v115 - 8) + 16))(v243, v116, v115);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v118 = 18;
      goto LABEL_83;
    case 0x11uLL:
      v112 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v111 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v113 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v169 = qword_1EDF31EB0;

      if (v169 != -1)
      {
        swift_once();
      }

      v170 = sub_1D725BD1C();
      v171 = __swift_project_value_buffer(v170, qword_1EDFFCD30);
      v117 = v244;
      (*(*(v170 - 8) + 16))(v244, v171, v170);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v118 = 19;
      goto LABEL_83;
    case 0x12uLL:
      v112 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v111 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v113 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v193 = qword_1EDF31EB0;

      if (v193 != -1)
      {
        swift_once();
      }

      v194 = sub_1D725BD1C();
      v195 = __swift_project_value_buffer(v194, qword_1EDFFCD30);
      v117 = v246;
      (*(*(v194 - 8) + 16))(v246, v195, v194);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v118 = 20;
      goto LABEL_83;
    case 0x13uLL:
      v112 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v111 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v113 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v209 = qword_1EDF31EB0;

      if (v209 != -1)
      {
        swift_once();
      }

      v210 = sub_1D725BD1C();
      v211 = __swift_project_value_buffer(v210, qword_1EDFFCD30);
      v117 = v248;
      (*(*(v210 - 8) + 16))(v248, v211, v210);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v118 = 21;
LABEL_83:
      v212 = v112;
      v109 = v252;
      sub_1D63B7B38(v118, v212, v111, v113, v117);

      goto LABEL_88;
    case 0x14uLL:
      v172 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v173 = qword_1EDF31EB0;

      if (v173 != -1)
      {
        swift_once();
      }

      v174 = sub_1D725BD1C();
      v175 = __swift_project_value_buffer(v174, qword_1EDFFCD30);
      v117 = v245;
      (*(*(v174 - 8) + 16))(v245, v175, v174);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v176 = 22;
      goto LABEL_59;
    case 0x15uLL:
      v172 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v180 = qword_1EDF31EB0;

      if (v180 != -1)
      {
        swift_once();
      }

      v181 = sub_1D725BD1C();
      v182 = __swift_project_value_buffer(v181, qword_1EDFFCD30);
      v117 = v247;
      (*(*(v181 - 8) + 16))(v247, v182, v181);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v176 = 23;
LABEL_59:
      v109 = v252;
      sub_1D63B7CD0(v176, v172, v117);
      goto LABEL_88;
    case 0x16uLL:
      v202 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v203 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v204 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v205 = qword_1EDF31ED0;

      if (v205 != -1)
      {
        swift_once();
      }

      v206 = sub_1D725BD1C();
      v207 = __swift_project_value_buffer(v206, qword_1EDFFCD50);
      v117 = v249;
      (*(*(v206 - 8) + 16))(v249, v207, v206);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v208 = v202;
      v109 = v252;
      sub_1D63B7E9C(24, v208, v203, v204, v117);
LABEL_79:

      goto LABEL_89;
    case 0x17uLL:
      v213 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v214 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v215 = qword_1EDF31EB0;

      if (v215 != -1)
      {
        swift_once();
      }

      v216 = sub_1D725BD1C();
      v217 = __swift_project_value_buffer(v216, qword_1EDFFCD30);
      v117 = v250;
      (*(*(v216 - 8) + 16))(v250, v217, v216);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v109 = v252;
      sub_1D63B8040(27, v213, v214, v117);
      goto LABEL_87;
    case 0x18uLL:
      v144 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v145 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v146 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v147 = *((v97 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v148 = qword_1EDF31ED0;

      if (v148 != -1)
      {
        swift_once();
      }

      v149 = sub_1D725BD1C();
      v150 = __swift_project_value_buffer(v149, qword_1EDFFCD50);
      v117 = v251;
      (*(*(v149 - 8) + 16))(v251, v150, v149);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v109 = v252;
      sub_1D63B8214(28, v144, v145, v146, v147, v117);

LABEL_87:

LABEL_88:

      goto LABEL_89;
    case 0x19uLL:
      v141 = __ROR8__(v97 + 0x3FFFFFFFFFFFFFFCLL, 3);
      if (v141 > 1)
      {
        v109 = v252;
        if (v141 == 2)
        {
          if (qword_1EDF31EB0 != -1)
          {
            swift_once();
          }

          v219 = sub_1D725BD1C();
          v220 = __swift_project_value_buffer(v219, qword_1EDFFCD30);
          v117 = v227;
          (*(*(v219 - 8) + 16))(v227, v220, v219);
          type metadata accessor for FormatVersionRequirement.Value(0);
          swift_storeEnumTagMultiPayload();
          v221 = 25;
        }

        else
        {
          if (qword_1EDF31EA8 != -1)
          {
            swift_once();
          }

          v224 = sub_1D725BD1C();
          v225 = __swift_project_value_buffer(v224, qword_1EDFFCD18);
          v117 = v228;
          (*(*(v224 - 8) + 16))(v228, v225, v224);
          type metadata accessor for FormatVersionRequirement.Value(0);
          swift_storeEnumTagMultiPayload();
          v221 = 26;
        }

        goto LABEL_101;
      }

      v109 = v252;
      if (v141)
      {
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v222 = sub_1D725BD1C();
        v223 = __swift_project_value_buffer(v222, qword_1EDFFCD30);
        v117 = v226;
        (*(*(v222 - 8) + 16))(v226, v223, v222);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v221 = 13;
LABEL_101:
        sub_1D6423FAC(v221, v117);
        goto LABEL_89;
      }

      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v142 = sub_1D725BD1C();
      v143 = __swift_project_value_buffer(v142, qword_1EDFFCD30);
      (*(*(v142 - 8) + 16))(v81, v143, v142);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6423FAC(3, v81);
      v117 = v81;
LABEL_89:
      v110 = v117;
LABEL_90:
      sub_1D5D2CFE8(v110, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v109, sub_1D5D30DC4);
    default:
      v102 = *(v97 + 16);
      v103 = *(v97 + 24);
      v104 = *(v97 + 32);
      v105 = *(v97 + 40);
      v106 = qword_1EDF31EB0;

      if (v106 != -1)
      {
        swift_once();
      }

      v107 = sub_1D725BD1C();
      v108 = __swift_project_value_buffer(v107, qword_1EDFFCD30);
      (*(*(v107 - 8) + 16))(v92, v108, v107);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v109 = v252;
      sub_1D63B6FA4(0, v102, v103, v104, v105, v92);

      v110 = v92;
      goto LABEL_90;
  }
}

uint64_t FormatOptionBindingModifier.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatOptionBindingModifier, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatOptionBindingModifier, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonG, v17, v14, v18, &off_1F51F6BF8);
  if (v15)
  {
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCD18);
    (*(*(v20 - 8) + 16))(v10, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638C230(0, v15, v10);
    v22 = v10;
  }

  else
  {
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCE68);
    (*(*(v23 - 8) + 16))(v6, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641AAC8(1, v6);
    v22 = v6;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatWebEmbedNodeStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v205 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v210 = &v205 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v211 = &v205 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v212 = &v205 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v213 = &v205 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v214 = (&v205 - v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  *&v223 = &v205 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v205 - v29;
  sub_1D666BD7C();
  v224 = v31;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v205 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1[3];
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v35);
  sub_1D5CCC8E4();
  v38 = v37;
  v39 = sub_1D5B58B84(&qword_1EDF25158, sub_1D5CCC8E4);
  sub_1D5D2EE70(v4, v38, v40, v35, v4, v38, &type metadata for FormatVersions.JazzkonC, v36, v34, v39, &off_1F51F6C78);
  swift_beginAccess();
  v41 = v2[2];
  v42 = v2[3];
  v220 = v2;
  v43 = qword_1EDF31EB0;

  if (v43 != -1)
  {
    swift_once();
  }

  v44 = sub_1D725BD1C();
  v45 = __swift_project_value_buffer(v44, qword_1EDFFCD30);
  v46 = *(v44 - 8);
  v47 = *(v46 + 16);
  v222 = v46 + 16;
  v47(v30, v45, v44);
  v221 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v48 = sub_1D725895C();
  v49 = (*(*(v48 - 8) + 48))(v8, 1, v48);
  v217 = v47;
  if (v49 != 1)
  {
    v219 = v44;
    sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
LABEL_7:
    v68 = v223;
    goto LABEL_8;
  }

  v215 = v41;
  *&v226 = v45;
  sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v50 = v224;
  v51 = &v34[*(v224 + 44)];
  v53 = *v51;
  v52 = *(v51 + 1);
  LOBYTE(v227) = 0;
  v54 = swift_allocObject();
  *(v54 + 16) = 0;
  *(v54 + 24) = 0;
  *(v54 + 32) = v227;
  *(v54 + 40) = v53;
  *(v54 + 48) = v52;
  sub_1D666BE10();
  v56 = v55;
  sub_1D5B58B84(&qword_1EDF03118, sub_1D666BE10);

  v209 = v56;
  v57 = sub_1D72647CC();
  LOBYTE(v227) = 0;
  v58 = v34;
  v59 = swift_allocObject();
  *(v59 + 24) = 0;
  *(v59 + 32) = 0;
  *(v59 + 16) = v57;
  *(v59 + 40) = v227;
  v60 = __swift_project_boxed_opaque_existential_1(&v58[*(v50 + 36)], *&v58[*(v50 + 36) + 24]);
  v216 = &v205;
  MEMORY[0x1EEE9AC00](v60, v61);
  MEMORY[0x1EEE9AC00](v62, v63);
  *(&v205 - 4) = sub_1D5B4AA6C;
  *(&v205 - 3) = 0;
  v203 = sub_1D666BEA4;
  v204 = v54;
  v64 = v225;
  v66 = sub_1D5D2F7A4(v30, sub_1D615B49C, v65, sub_1D615B4A4, (&v205 - 6));
  if (v64)
  {
    sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);

    v67 = v58;
    return sub_1D5D2CFE8(v67, sub_1D666BD7C);
  }

  v95 = v66;
  v219 = v44;

  if ((v95 & 1) == 0)
  {
    *&v225 = 0;
    sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);

    v34 = v58;
    v45 = v226;
    v47 = v217;
    goto LABEL_7;
  }

  v227 = 0uLL;
  v228 = 0;
  *&v229 = v215;
  *(&v229 + 1) = v42;
  v34 = v58;
  sub_1D72647EC();

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  v45 = v226;
  v47 = v217;
  v68 = v223;
  *&v225 = 0;
LABEL_8:
  v69 = v220[4];
  v70 = v220[5];
  v47(v68, v45, v219);
  swift_storeEnumTagMultiPayload();
  *&v229 = v69;
  *(&v229 + 1) = v70;
  v226 = xmmword_1D728CF30;
  v227 = xmmword_1D728CF30;
  v228 = 0;
  v71 = v224;
  v72 = &v34[*(v224 + 44)];
  v73 = *v72;
  v74 = *(v72 + 1);
  LOBYTE(v231) = 0;
  v75 = swift_allocObject();
  v216 = &v205;
  *(v75 + 16) = v226;
  *(v75 + 32) = v231;
  *(v75 + 40) = v73;
  *(v75 + 48) = v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  v215 = &v205 - 6;
  *(&v205 - 4) = sub_1D5B4AA6C;
  *(&v205 - 3) = 0;
  v203 = sub_1D6708930;
  v204 = v77;
  LOBYTE(v231) = 0;
  v78 = swift_allocObject();
  *(v78 + 16) = v226;
  *(v78 + 32) = v231;
  v207 = v73;
  *(v78 + 40) = v73;
  *(v78 + 48) = v74;
  sub_1D666BE10();
  v80 = v79;
  v81 = sub_1D5B58B84(&qword_1EDF03118, sub_1D666BE10);
  swift_retain_n();
  v209 = v80;
  v208 = v81;
  v82 = sub_1D72647CC();
  LOBYTE(v231) = 0;
  v83 = swift_allocObject();
  *(v83 + 16) = v82;
  *(v83 + 24) = v226;
  *(v83 + 40) = v231;
  v84 = *(v71 + 36);
  v85 = v68;
  v218 = v34;
  v86 = &v34[v84];
  v87 = __swift_project_boxed_opaque_existential_1(v86, *(v86 + 3));
  MEMORY[0x1EEE9AC00](v87, v88);
  MEMORY[0x1EEE9AC00](v89, v90);
  v91 = v215;
  *(&v205 - 4) = sub_1D615B4A4;
  *(&v205 - 3) = v91;
  v203 = sub_1D6708930;
  v204 = v78;
  v92 = v225;
  sub_1D5D2BC70(v85, sub_1D615B49C, v93, sub_1D615B4A4, (&v205 - 6));
  if (v92)
  {
    sub_1D5D2CFE8(v85, type metadata accessor for FormatVersionRequirement);

    v67 = v218;
    return sub_1D5D2CFE8(v67, sub_1D666BD7C);
  }

  v206 = v86;
  v224 = v74;
  *&v226 = v45;

  sub_1D72647EC();
  sub_1D5D2CFE8(v223, type metadata accessor for FormatVersionRequirement);

  v96 = v220[6];
  v97 = v220[7];
  v98 = *(v220 + 64);
  v99 = v214;
  v217(v214, v226, v219);
  swift_storeEnumTagMultiPayload();
  v223 = xmmword_1D7297410;
  v227 = xmmword_1D7297410;
  v228 = 0;
  LOBYTE(v229) = 0;
  v100 = swift_allocObject();
  v102 = v100;
  *(v100 + 16) = v223;
  *(v100 + 32) = v229;
  v103 = v207;
  v104 = v224;
  *(v100 + 40) = v207;
  *(v100 + 48) = v104;
  if (v98 <= 0xFD)
  {
    v216 = &v205;
    *&v229 = v96;
    *(&v229 + 1) = v97;
    v230 = v98;
    MEMORY[0x1EEE9AC00](v100, v101);
    v148 = v218;
    *&v225 = 0;
    *(&v205 - 4) = sub_1D5B4AA6C;
    *(&v205 - 3) = 0;
    v203 = sub_1D6708930;
    v204 = v102;
    LOBYTE(v231) = 0;
    v149 = swift_allocObject();
    *(v149 + 16) = v223;
    *(v149 + 32) = v231;
    *(v149 + 40) = v103;
    *(v149 + 48) = v104;
    swift_retain_n();
    sub_1D5ED34B0(v96, v97, v98);
    v150 = v148;
    v151 = sub_1D72647CC();
    LOBYTE(v231) = 0;
    v152 = swift_allocObject();
    *(v152 + 16) = v151;
    *(v152 + 24) = v223;
    *(v152 + 40) = v231;
    v153 = __swift_project_boxed_opaque_existential_1(v206, *(v206 + 3));
    MEMORY[0x1EEE9AC00](v153, v154);
    MEMORY[0x1EEE9AC00](v155, v156);
    *(&v205 - 4) = sub_1D615B4A4;
    *(&v205 - 3) = (&v205 - 6);
    v203 = sub_1D6708930;
    v204 = v149;
    v157 = v225;
    v159 = sub_1D5D2F7A4(v214, sub_1D615B49C, v158, sub_1D615B4A4, (&v205 - 6));
    if (v157)
    {

      v160 = v214;
      sub_1D5ED34A0(v229, *(&v229 + 1), v230);
      v161 = v160;
      goto LABEL_36;
    }

    v188 = v159;

    if (v188)
    {
      sub_1D6661258();
      sub_1D72647EC();
      v104 = v224;
      v189 = v214;

      sub_1D5ED34A0(v229, *(&v229 + 1), v230);
      sub_1D5D2CFE8(v189, type metadata accessor for FormatVersionRequirement);
      v105 = v220;
    }

    else
    {

      sub_1D5ED34A0(v229, *(&v229 + 1), v230);
      sub_1D5D2CFE8(v214, type metadata accessor for FormatVersionRequirement);
      v105 = v220;
      v104 = v224;
    }
  }

  else
  {

    sub_1D5D2CFE8(v99, type metadata accessor for FormatVersionRequirement);

    v105 = v220;
  }

  v106 = v105[10];
  v216 = v105[9];
  v215 = v106;
  v107 = *(v105 + 88);
  if (qword_1EDF31F50 != -1)
  {
    swift_once();
  }

  v108 = v219;
  v109 = __swift_project_value_buffer(v219, qword_1EDFFCE80);
  v110 = v213;
  v217(v213, v109, v108);
  swift_storeEnumTagMultiPayload();
  v223 = xmmword_1D72BAA60;
  v227 = xmmword_1D72BAA60;
  v228 = 0;
  LOBYTE(v229) = 0;
  v111 = swift_allocObject();
  v113 = v111;
  *(v111 + 16) = v223;
  *(v111 + 32) = v229;
  v114 = v207;
  *(v111 + 40) = v207;
  *(v111 + 48) = v104;
  if (v107 <= 0xFD)
  {
    v214 = &v205;
    v162 = v216;
    v163 = v215;
    *&v229 = v216;
    *(&v229 + 1) = v215;
    v230 = v107;
    MEMORY[0x1EEE9AC00](v111, v112);
    v164 = v218;
    *&v225 = 0;
    *(&v205 - 4) = sub_1D5B4AA6C;
    *(&v205 - 3) = 0;
    v203 = sub_1D6708930;
    v204 = v113;
    LOBYTE(v231) = 0;
    v165 = swift_allocObject();
    v166 = v104;
    v167 = v165;
    *(v165 + 16) = v223;
    *(v165 + 32) = v231;
    *(v165 + 40) = v114;
    *(v165 + 48) = v166;
    swift_retain_n();
    sub_1D5ED34B0(v162, v163, v107);
    v150 = v164;
    v168 = sub_1D72647CC();
    LOBYTE(v231) = 0;
    v169 = swift_allocObject();
    *(v169 + 16) = v168;
    *(v169 + 24) = v223;
    *(v169 + 40) = v231;
    v170 = __swift_project_boxed_opaque_existential_1(v206, *(v206 + 3));
    MEMORY[0x1EEE9AC00](v170, v171);
    MEMORY[0x1EEE9AC00](v172, v173);
    *(&v205 - 4) = sub_1D615B4A4;
    *(&v205 - 3) = (&v205 - 6);
    v203 = sub_1D6708930;
    v204 = v167;
    v174 = v225;
    v176 = sub_1D5D2F7A4(v110, sub_1D615B49C, v175, sub_1D615B4A4, (&v205 - 6));
    if (!v174)
    {
      v199 = v176;

      v116 = v212;
      if (v199)
      {
        sub_1D6661258();
        sub_1D72647EC();
        v115 = v217;
        v104 = v224;

        sub_1D5ED34A0(v229, *(&v229 + 1), v230);
        sub_1D5D2CFE8(v213, type metadata accessor for FormatVersionRequirement);
        v105 = v220;
      }

      else
      {

        sub_1D5ED34A0(v229, *(&v229 + 1), v230);
        sub_1D5D2CFE8(v213, type metadata accessor for FormatVersionRequirement);
        v105 = v220;
        v115 = v217;
        v104 = v224;
      }

      goto LABEL_22;
    }

    v177 = v213;
    sub_1D5ED34A0(v229, *(&v229 + 1), v230);
    v161 = v177;
LABEL_36:
    sub_1D5D2CFE8(v161, type metadata accessor for FormatVersionRequirement);
    v67 = v150;
    return sub_1D5D2CFE8(v67, sub_1D666BD7C);
  }

  sub_1D5D2CFE8(v110, type metadata accessor for FormatVersionRequirement);

  v115 = v217;
  v116 = v212;
LABEL_22:
  v117 = *(v105 + 89);
  if (qword_1EDF31F08 != -1)
  {
    swift_once();
  }

  v118 = v219;
  v119 = __swift_project_value_buffer(v219, qword_1EDFFCDE0);
  v115(v116, v119, v118);
  swift_storeEnumTagMultiPayload();
  v225 = xmmword_1D72BAA70;
  v227 = xmmword_1D72BAA70;
  v228 = 0;
  LOBYTE(v229) = 0;
  v120 = swift_allocObject();
  v122 = v120;
  *(v120 + 16) = v225;
  *(v120 + 32) = v229;
  v123 = v207;
  *(v120 + 40) = v207;
  *(v120 + 48) = v104;
  if (v117 == 2)
  {
  }

  else
  {
    *&v223 = &v205;
    LOBYTE(v229) = v117 & 1;
    MEMORY[0x1EEE9AC00](v120, v121);
    *(&v205 - 4) = sub_1D5B4AA6C;
    *(&v205 - 3) = 0;
    v203 = sub_1D6708930;
    v204 = v122;
    LOBYTE(v231) = 0;
    v178 = swift_allocObject();
    *(v178 + 16) = v225;
    *(v178 + 32) = v231;
    *(v178 + 40) = v123;
    *(v178 + 48) = v104;
    swift_retain_n();
    v179 = sub_1D72647CC();
    LOBYTE(v231) = 0;
    v180 = v116;
    v181 = swift_allocObject();
    *(v181 + 16) = v179;
    *(v181 + 24) = v225;
    *(v181 + 40) = v231;
    v182 = __swift_project_boxed_opaque_existential_1(v206, *(v206 + 3));
    MEMORY[0x1EEE9AC00](v182, v183);
    MEMORY[0x1EEE9AC00](v184, v185);
    *(&v205 - 4) = sub_1D615B4A4;
    *(&v205 - 3) = (&v205 - 6);
    v203 = sub_1D6708930;
    v204 = v178;
    v187 = sub_1D5D2F7A4(v180, sub_1D615B49C, v186, sub_1D615B4A4, (&v205 - 6));
    v200 = v187;

    if (v200)
    {
      sub_1D72647EC();
      v115 = v217;
      v116 = v212;
      v105 = v220;
    }

    else
    {
      v105 = v220;
      v115 = v217;
      v116 = v212;
    }
  }

  sub_1D5D2CFE8(v116, type metadata accessor for FormatVersionRequirement);

  v124 = *(v105 + 90);
  if (qword_1EDF31F58[0] != -1)
  {
    swift_once();
  }

  v125 = v219;
  v126 = __swift_project_value_buffer(v219, qword_1EDFFCE98);
  v127 = v211;
  v115(v211, v126, v125);
  swift_storeEnumTagMultiPayload();
  v225 = xmmword_1D72BAA80;
  v227 = xmmword_1D72BAA80;
  v228 = 0;
  LOBYTE(v229) = 0;
  v128 = swift_allocObject();
  v130 = v128;
  *(v128 + 16) = v225;
  *(v128 + 32) = v229;
  v131 = v207;
  v132 = v224;
  *(v128 + 40) = v207;
  *(v128 + 48) = v132;
  if (v124 == 2)
  {

    v133 = v127;
    v134 = v226;
    v135 = v206;
  }

  else
  {
    *&v223 = &v205;
    LOBYTE(v229) = v124 & 1;
    MEMORY[0x1EEE9AC00](v128, v129);
    *(&v205 - 4) = sub_1D5B4AA6C;
    *(&v205 - 3) = 0;
    v203 = sub_1D6708930;
    v204 = v130;
    LOBYTE(v231) = 0;
    v190 = swift_allocObject();
    *(v190 + 16) = v225;
    *(v190 + 32) = v231;
    *(v190 + 40) = v131;
    *(v190 + 48) = v132;
    swift_retain_n();
    v191 = sub_1D72647CC();
    LOBYTE(v231) = 0;
    v192 = swift_allocObject();
    *(v192 + 16) = v191;
    *(v192 + 24) = v225;
    *(v192 + 40) = v231;
    v135 = v206;
    v193 = __swift_project_boxed_opaque_existential_1(v206, *(v206 + 3));
    MEMORY[0x1EEE9AC00](v193, v194);
    MEMORY[0x1EEE9AC00](v195, v196);
    *(&v205 - 4) = sub_1D615B4A4;
    *(&v205 - 3) = (&v205 - 6);
    v203 = sub_1D6708930;
    v204 = v190;
    v198 = sub_1D5D2F7A4(v127, sub_1D615B49C, v197, sub_1D615B4A4, (&v205 - 6));
    v201 = v198;

    if (v201)
    {
      sub_1D72647EC();
      v134 = v226;
      v115 = v217;
      v105 = v220;
      v133 = v211;
    }

    else
    {
      v105 = v220;
      v133 = v211;
      v134 = v226;
      v115 = v217;
    }
  }

  sub_1D5D2CFE8(v133, type metadata accessor for FormatVersionRequirement);

  swift_beginAccess();
  v136 = v105[12];
  v137 = v210;
  v115(v210, v134, v219);
  swift_storeEnumTagMultiPayload();
  if (*(v136 + 16))
  {
    LOBYTE(v229) = 0;
    v138 = swift_allocObject();
    v226 = xmmword_1D72BAA90;
    *(v138 + 16) = xmmword_1D72BAA90;
    *(v138 + 32) = v229;
    *(v138 + 40) = v207;
    *(v138 + 48) = v224;

    v139 = v218;
    v140 = sub_1D72647CC();
    LOBYTE(v229) = 0;
    v141 = swift_allocObject();
    *(v141 + 16) = v140;
    *(v141 + 24) = v226;
    *(v141 + 40) = v229;
    v142 = __swift_project_boxed_opaque_existential_1(v135, *(v135 + 3));
    MEMORY[0x1EEE9AC00](v142, v143);
    MEMORY[0x1EEE9AC00](v144, v145);
    *(&v205 - 4) = sub_1D5B4AA6C;
    *(&v205 - 3) = 0;
    v203 = sub_1D6708930;
    v204 = v138;
    v147 = sub_1D5D2F7A4(v137, sub_1D615B49C, v146, sub_1D615B4A4, (&v205 - 6));
    v202 = v147;

    if (v202)
    {
      v229 = v226;
      v230 = 0;
      v231 = v136;
      sub_1D5C34D84(0, &qword_1EDF04D58, &type metadata for FormatWebEmbedNodeStyle.Selector, MEMORY[0x1E69E62F8]);
      sub_1D666BF34();
      sub_1D72647EC();

      sub_1D5D2CFE8(v137, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v137, type metadata accessor for FormatVersionRequirement);
    }

    v67 = v139;
  }

  else
  {
    sub_1D5D2CFE8(v137, type metadata accessor for FormatVersionRequirement);
    v67 = v218;
  }

  return sub_1D5D2CFE8(v67, sub_1D666BD7C);
}

uint64_t FormatWebEmbedNodeStyle.Selector.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D666BFD0();
  v7 = v6;
  v42 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D666C064();
  sub_1D5B58B84(&qword_1EDF25148, sub_1D666C064);
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

      v20 = *(v17 - 2);
      v19 = *(v17 - 1);

      v21 = sub_1D66174B0();
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

  sub_1D5C36978();
  v40 = 0uLL;
  v41 = 0;
  sub_1D726431C();
  v18 = v38;
  v38 = xmmword_1D728CF30;
  v39 = 0;
  sub_1D5C8C780();
  sub_1D726427C();
  v36 = v18;
  v24 = v40;
  v37 = v41;
  v38 = xmmword_1D7297410;
  v39 = 0;
  sub_1D726427C();
  v25 = *(&v40 + 1);
  v34 = v24;
  v35 = v24;
  v26 = v41;
  v40 = xmmword_1D72BAA60;
  v41 = 0;
  v31 = sub_1D726423C();
  v32 = v26;
  v33 = v25;
  v40 = xmmword_1D72BAA70;
  v41 = 0;
  v27 = sub_1D726423C();
  (*(v13 + 8))(v14, v7);
  v28 = *(&v36 + 1);
  *a2 = v36;
  *(a2 + 8) = v28;
  v29 = *(&v35 + 1);
  *(a2 + 16) = v34;
  *(a2 + 24) = v29;
  LODWORD(v29) = v38;
  *(a2 + 32) = v37;
  *(a2 + 33) = v29;
  *(a2 + 36) = *(&v38 + 3);
  v30 = v33;
  *(a2 + 40) = v35;
  *(a2 + 48) = v30;
  LOBYTE(v30) = v31;
  *(a2 + 56) = v32;
  *(a2 + 57) = v30;
  *(a2 + 58) = v27;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatWebEmbedNodeStyle.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v147 = &v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v155 = &v144 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v153 = &v144 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v158 = (&v144 - v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v144 - v17;
  sub_1D666C1E4();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v144 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v1;
  v25 = *(v1 + 8);
  v26 = *(v1 + 24);
  v152 = *(v1 + 16);
  v151 = v26;
  LODWORD(v154) = *(v1 + 32);
  v27 = *(v1 + 48);
  v149 = *(v1 + 40);
  v148 = v27;
  v174 = *(v1 + 56);
  v150 = *(v1 + 57);
  v146 = *(v1 + 58);
  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_1D666C064();
  v31 = v30;
  v32 = sub_1D5B58B84(&qword_1EDF25148, sub_1D666C064);
  sub_1D5D2EE70(&type metadata for FormatWebEmbedNodeStyle.Selector, v31, v33, v28, &type metadata for FormatWebEmbedNodeStyle.Selector, v31, &type metadata for FormatVersions.JazzkonC, v29, v23, v32, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v34 = sub_1D725BD1C();
  v35 = __swift_project_value_buffer(v34, qword_1EDFFCD30);
  v36 = *(v34 - 8);
  v37 = *(v36 + 16);
  v161 = v36 + 16;
  v162 = v35;
  v156 = v34;
  v159 = v37;
  (v37)(v18);
  v160 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v168 = v24;
  v169 = v25;
  v171 = 0uLL;
  v172 = 0;
  v38 = &v23[*(v20 + 44)];
  v39 = *v38;
  v40 = *(v38 + 1);
  v173 = 0;
  v41 = swift_allocObject();
  *&v166 = &v144;
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = v173;
  *(v41 + 40) = v39;
  *(v41 + 48) = v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v165 = &v144 - 6;
  *(&v144 - 4) = sub_1D5B4AA6C;
  *(&v144 - 3) = 0;
  v142 = sub_1D6708934;
  v143 = v43;
  v173 = 0;
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = v173;
  v157 = v39;
  *(v44 + 40) = v39;
  *(v44 + 48) = v40;
  sub_1D666C278();
  v46 = v45;
  v47 = sub_1D5B58B84(&qword_1EDF03108, sub_1D666C278);
  swift_retain_n();
  v163 = v46;
  v164 = v47;
  v48 = sub_1D72647CC();
  v173 = 0;
  v49 = swift_allocObject();
  *(v49 + 24) = 0;
  *(v49 + 32) = 0;
  *(v49 + 16) = v48;
  *(v49 + 40) = v173;
  v50 = v23;
  v51 = v18;
  v52 = (v50 + *(v20 + 36));
  v53 = __swift_project_boxed_opaque_existential_1(v52, v52[3]);
  MEMORY[0x1EEE9AC00](v53, v54);
  MEMORY[0x1EEE9AC00](v55, v56);
  v57 = v165;
  *(&v144 - 4) = sub_1D615B4A4;
  *(&v144 - 3) = v57;
  v142 = sub_1D6708934;
  v143 = v44;
  v58 = v167;
  sub_1D5D2BC70(v51, sub_1D615B49C, v59, sub_1D615B4A4, (&v144 - 6));
  if (v58)
  {
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);

    v60 = v50;
    return sub_1D5D2CFE8(v60, sub_1D666C1E4);
  }

  v61 = v162;
  v165 = v52;
  *&v167 = v40;

  sub_1D5D3E60C();
  sub_1D72647EC();
  v60 = v50;
  v145 = 0;
  sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);

  v63 = v158;
  v62 = v159;
  v64 = v156;
  v159(v158, v61, v156);
  swift_storeEnumTagMultiPayload();
  v166 = xmmword_1D728CF30;
  v171 = xmmword_1D728CF30;
  v172 = 0;
  LOBYTE(v168) = 0;
  v65 = swift_allocObject();
  v67 = v65;
  *(v65 + 16) = v166;
  *(v65 + 32) = v168;
  v68 = v157;
  v69 = v167;
  *(v65 + 40) = v157;
  *(v65 + 48) = v69;
  v70 = v154;
  if (v154 <= 0xFD)
  {
    v162 = &v144;
    v94 = v152;
    v95 = v151;
    v168 = v152;
    v169 = v151;
    v170 = v154;
    MEMORY[0x1EEE9AC00](v65, v66);
    *(&v144 - 4) = sub_1D5B4AA6C;
    *(&v144 - 3) = 0;
    v142 = sub_1D6708934;
    v143 = v67;
    v173 = 0;
    v96 = swift_allocObject();
    *(v96 + 16) = v166;
    *(v96 + 32) = v173;
    *(v96 + 40) = v68;
    *(v96 + 48) = v69;
    swift_retain_n();
    sub_1D5ED34B0(v94, v95, v70);
    v97 = sub_1D72647CC();
    v173 = 0;
    v98 = swift_allocObject();
    *(v98 + 16) = v97;
    *(v98 + 24) = v166;
    *(v98 + 40) = v173;
    v99 = __swift_project_boxed_opaque_existential_1(v165, v165[3]);
    MEMORY[0x1EEE9AC00](v99, v100);
    MEMORY[0x1EEE9AC00](v101, v102);
    *(&v144 - 4) = sub_1D615B4A4;
    *(&v144 - 3) = (&v144 - 6);
    v75 = v158;
    v142 = sub_1D6708934;
    v143 = v96;
    v103 = v145;
    v105 = sub_1D5D2F7A4(v158, sub_1D615B49C, v104, sub_1D615B4A4, (&v144 - 6));
    if (v103)
    {
LABEL_23:

LABEL_24:
      sub_1D5ED34A0(v168, v169, v170);
      sub_1D5D2CFE8(v75, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v60, sub_1D666C1E4);
    }

    v128 = v105;
    v145 = 0;

    v129 = v155;
    if (v128)
    {
      sub_1D6661258();
      v130 = v145;
      sub_1D72647EC();
      v64 = v156;
      v72 = v157;
      v62 = v159;
      v145 = v130;
      if (v130)
      {

        goto LABEL_24;
      }

      sub_1D5ED34A0(v168, v169, v170);
      sub_1D5D2CFE8(v75, type metadata accessor for FormatVersionRequirement);
      v69 = v167;
      v71 = v129;
    }

    else
    {

      sub_1D5ED34A0(v168, v169, v170);
      sub_1D5D2CFE8(v75, type metadata accessor for FormatVersionRequirement);
      v69 = v167;
      v64 = v156;
      v72 = v157;
      v62 = v159;
      v71 = v129;
    }
  }

  else
  {

    sub_1D5D2CFE8(v63, type metadata accessor for FormatVersionRequirement);

    v71 = v155;
    v72 = v68;
  }

  v73 = v71;
  v162 = v50;
  if (qword_1EDF31F50 != -1)
  {
    swift_once();
  }

  v74 = __swift_project_value_buffer(v64, qword_1EDFFCE80);
  v75 = v153;
  v62(v153, v74, v64);
  swift_storeEnumTagMultiPayload();
  v166 = xmmword_1D7297410;
  v171 = xmmword_1D7297410;
  v172 = 0;
  LOBYTE(v168) = 0;
  v76 = swift_allocObject();
  v78 = v76;
  *(v76 + 16) = v166;
  *(v76 + 32) = v168;
  *(v76 + 40) = v72;
  *(v76 + 48) = v69;
  v79 = v72;
  v80 = v174;
  if (v174 <= 0xFD)
  {
    v158 = &v144;
    v106 = v149;
    v107 = v148;
    v168 = v149;
    v169 = v148;
    v170 = v174;
    MEMORY[0x1EEE9AC00](v76, v77);
    v154 = &v144 - 6;
    *(&v144 - 4) = sub_1D5B4AA6C;
    *(&v144 - 3) = 0;
    v142 = sub_1D6708934;
    v143 = v78;
    v173 = 0;
    v108 = swift_allocObject();
    *(v108 + 16) = v166;
    *(v108 + 32) = v173;
    *(v108 + 40) = v79;
    *(v108 + 48) = v69;
    swift_retain_n();
    sub_1D5ED34B0(v106, v107, v80);
    v60 = v162;
    v109 = sub_1D72647CC();
    v173 = 0;
    v110 = swift_allocObject();
    *(v110 + 16) = v109;
    *(v110 + 24) = v166;
    *(v110 + 40) = v173;
    v111 = __swift_project_boxed_opaque_existential_1(v165, v165[3]);
    MEMORY[0x1EEE9AC00](v111, v112);
    MEMORY[0x1EEE9AC00](v113, v114);
    v115 = v154;
    *(&v144 - 4) = sub_1D615B4A4;
    *(&v144 - 3) = v115;
    v142 = sub_1D6708934;
    v143 = v108;
    v116 = v145;
    v118 = sub_1D5D2F7A4(v75, sub_1D615B49C, v117, sub_1D615B4A4, (&v144 - 6));
    v83 = v116;
    if (!v116)
    {
      v140 = v118;

      v82 = v155;
      if (v140)
      {
        sub_1D6661258();
        sub_1D72647EC();
        v64 = v156;
        v81 = v157;
        v62 = v159;
        v83 = 0;

        sub_1D5ED34A0(v168, v169, v170);
        sub_1D5D2CFE8(v153, type metadata accessor for FormatVersionRequirement);
        v69 = v167;
      }

      else
      {

        sub_1D5ED34A0(v168, v169, v170);
        sub_1D5D2CFE8(v153, type metadata accessor for FormatVersionRequirement);
        v69 = v167;
        v64 = v156;
        v81 = v157;
        v62 = v159;
      }

      goto LABEL_11;
    }

    goto LABEL_23;
  }

  sub_1D5D2CFE8(v75, type metadata accessor for FormatVersionRequirement);

  v81 = v79;
  v60 = v162;
  v82 = v73;
  v83 = v145;
LABEL_11:
  if (qword_1EDF31F08 != -1)
  {
    swift_once();
  }

  v84 = __swift_project_value_buffer(v64, qword_1EDFFCDE0);
  v62(v82, v84, v64);
  swift_storeEnumTagMultiPayload();
  v166 = xmmword_1D72BAA60;
  v171 = xmmword_1D72BAA60;
  v172 = 0;
  LOBYTE(v168) = 0;
  v85 = swift_allocObject();
  v87 = v85;
  *(v85 + 16) = v166;
  *(v85 + 32) = v168;
  *(v85 + 40) = v81;
  *(v85 + 48) = v69;
  if (v150 == 2)
  {
  }

  else
  {
    v162 = &v144;
    LOBYTE(v168) = v150 & 1;
    MEMORY[0x1EEE9AC00](v85, v86);
    *(&v144 - 4) = sub_1D5B4AA6C;
    *(&v144 - 3) = 0;
    v142 = sub_1D6708934;
    v143 = v87;
    v173 = 0;
    v119 = swift_allocObject();
    *(v119 + 16) = v166;
    *(v119 + 32) = v173;
    *(v119 + 40) = v81;
    *(v119 + 48) = v69;
    swift_retain_n();
    v120 = sub_1D72647CC();
    v173 = 0;
    v121 = swift_allocObject();
    *(v121 + 16) = v120;
    *(v121 + 24) = v166;
    *(v121 + 40) = v173;
    v122 = __swift_project_boxed_opaque_existential_1(v165, v165[3]);
    MEMORY[0x1EEE9AC00](v122, v123);
    MEMORY[0x1EEE9AC00](v124, v125);
    *(&v144 - 4) = sub_1D615B4A4;
    *(&v144 - 3) = (&v144 - 6);
    v82 = v155;
    v142 = sub_1D6708934;
    v143 = v119;
    v127 = sub_1D5D2F7A4(v155, sub_1D615B49C, v126, sub_1D615B4A4, (&v144 - 6));
    if (v83)
    {
      sub_1D5D2CFE8(v82, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v60, sub_1D666C1E4);
    }

    v141 = v127;

    if (v141)
    {
      sub_1D72647EC();
      v64 = v156;
      v81 = v157;
      v83 = 0;
      v69 = v167;
    }

    else
    {
      v69 = v167;
      v64 = v156;
      v81 = v157;
    }
  }

  sub_1D5D2CFE8(v82, type metadata accessor for FormatVersionRequirement);

  if (qword_1EDF31F58[0] != -1)
  {
    swift_once();
  }

  v88 = __swift_project_value_buffer(v64, qword_1EDFFCE98);
  v89 = v147;
  v159(v147, v88, v64);
  swift_storeEnumTagMultiPayload();
  v167 = xmmword_1D72BAA70;
  v171 = xmmword_1D72BAA70;
  v172 = 0;
  LOBYTE(v168) = 0;
  v90 = swift_allocObject();
  v92 = v90;
  *(v90 + 16) = v167;
  *(v90 + 32) = v168;
  *(v90 + 40) = v81;
  *(v90 + 48) = v69;
  if (v146 == 2)
  {

    v93 = v89;
  }

  else
  {
    *&v166 = &v144;
    LOBYTE(v168) = v146 & 1;
    MEMORY[0x1EEE9AC00](v90, v91);
    *(&v144 - 4) = sub_1D5B4AA6C;
    *(&v144 - 3) = 0;
    v142 = sub_1D6708934;
    v143 = v92;
    v173 = 0;
    v131 = swift_allocObject();
    *(v131 + 16) = v167;
    *(v131 + 32) = v173;
    *(v131 + 40) = v81;
    *(v131 + 48) = v69;
    swift_retain_n();
    v132 = sub_1D72647CC();
    v173 = 0;
    v133 = swift_allocObject();
    *(v133 + 16) = v132;
    *(v133 + 24) = v167;
    *(v133 + 40) = v173;
    v134 = __swift_project_boxed_opaque_existential_1(v165, v165[3]);
    MEMORY[0x1EEE9AC00](v134, v135);
    MEMORY[0x1EEE9AC00](v136, v137);
    *(&v144 - 4) = sub_1D615B4A4;
    *(&v144 - 3) = (&v144 - 6);
    v142 = sub_1D666C30C;
    v143 = v131;
    sub_1D5D2F7A4(v89, sub_1D615B49C, v138, sub_1D615B4A4, (&v144 - 6));
    if (v83)
    {
      sub_1D5D2CFE8(v89, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v60, sub_1D666C1E4);
    }

    sub_1D72647EC();
    v93 = v147;
  }

  sub_1D5D2CFE8(v93, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v60, sub_1D666C1E4);
}

uint64_t FormatGroupBinding.URL.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
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
          *(v20 + 16) = &unk_1F51120A8;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v13, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D666C388();
    v26 = 0uLL;
    sub_1D726431C();
    if (v27)
    {
      v22 = v25;
      v26 = xmmword_1D7279980;
      if (v27 == 1)
      {
        sub_1D5CCBB44();
        sub_1D726431C();
        (*(v7 + 8))(v13, v6);
        v23 = v27 | 0x40;
      }

      else
      {
        sub_1D60F3AFC();
        sub_1D726431C();
        (*(v7 + 8))(v13, v6);
        v23 = 0x80;
      }
    }

    else
    {
      v26 = xmmword_1D7279980;
      sub_1D66663E4();
      sub_1D726431C();
      v22 = v25;
      (*(v7 + 8))(v13, v6);
      v23 = v27;
    }

    *v22 = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatGroupBinding.URL.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatGroupBinding.URL, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatGroupBinding.URL, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyC, v21, v18, v22, &off_1F51F6B18);
  if (v19 >> 6)
  {
    if (v19 >> 6 == 1)
    {
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v24 = sub_1D725BD1C();
      v25 = __swift_project_value_buffer(v24, qword_1EDFFCD68);
      (*(*(v24 - 8) + 16))(v10, v25, v24);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63AC99C(1, v19 & 1, v10);
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
      sub_1D63ACB34(2, v6);
      v26 = v6;
    }
  }

  else
  {
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCD00);
    (*(*(v27 - 8) + 16))(v14, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63AC808(0, v19, v14);
    v26 = v14;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t FormatGroupNodeMaskPath.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
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
LABEL_15:
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
          *(v22 + 16) = &unk_1F51120F8;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_15;
        }
      }
    }

    sub_1D666C3DC();
    v39 = 0;
    v40 = 0;
    sub_1D726431C();
    if (v41 > 1u)
    {
      if (v41 == 2)
      {
        (*(v11 + 8))(v15, v5);
        v23 = 0;
        v29 = 0;
        v27 = 0;
        v28 = 0uLL;
        v26 = 3;
        v24 = 0uLL;
        v25 = 0uLL;
      }

      else
      {
        v33 = xmmword_1D7279980;
        sub_1D5C4C9E8();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v28 = v34;
        v29 = v35;
        v24 = v36;
        v25 = v37;
        v23 = v38;
        v27 = v35 & 0xFFFFFFFFFFFFFF00;
        v26 = 2;
      }
    }

    else if (v41)
    {
      v34 = xmmword_1D7279980;
      sub_1D666C430();
      sub_1D726431C();
      (*(v11 + 8))(v15, v5);
      v27 = 0;
      *&v28 = v33;
      v26 = 1;
    }

    else
    {
      v33 = xmmword_1D7279980;
      sub_1D5C8C780();
      sub_1D726431C();
      (*(v11 + 8))(v15, v5);
      v26 = 0;
      v27 = 0;
      v28 = v34;
      v29 = v35;
    }

    *v12 = v28;
    *(v12 + 16) = v27 | v29;
    *(v12 + 24) = v24;
    *(v12 + 40) = v25;
    *(v12 + 56) = v23;
    *(v12 + 64) = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatGroupNodeMaskPath.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v41 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v41 - v17;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v2 + 8);
  v45 = *v2;
  v43 = v23;
  v44 = *(v2 + 16);
  v24 = *(v2 + 64);
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v27 = sub_1D5C30408();
  v50 = v22;
  sub_1D5D2EE70(&type metadata for FormatGroupNodeMaskPath, &type metadata for FormatCodingKeys, v28, v25, &type metadata for FormatGroupNodeMaskPath, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v26, v22, v27, &off_1F51F6CD8);
  if (v24 > 1)
  {
    if (v24 == 2)
    {
      *&v46 = v45;
      *(&v46 + 1) = v43;
      v47 = v44;
      v48 = *(v2 + 17);
      *v49 = *(v2 + 33);
      *&v49[15] = *(v2 + 48);
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v33 = sub_1D725BD1C();
      v34 = __swift_project_value_buffer(v33, qword_1EDFFCDE0);
      v35 = v42;
      (*(*(v33 - 8) + 16))(v42, v34, v33);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v31 = v50;
      sub_1D6394850(3, &v46, v35);
      v32 = v35;
    }

    else
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v38 = sub_1D725BD1C();
      v39 = __swift_project_value_buffer(v38, qword_1EDFFCD50);
      (*(*(v38 - 8) + 16))(v10, v39, v38);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v31 = v50;
      sub_1D641C924(2, v10);
      v32 = v10;
    }
  }

  else if (v24)
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v36 = sub_1D725BD1C();
    v37 = __swift_project_value_buffer(v36, qword_1EDFFCD50);
    (*(*(v36 - 8) + 16))(v14, v37, v36);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v31 = v50;
    sub_1D63946BC(1, v45, v14);
    v32 = v14;
  }

  else
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v29 = sub_1D725BD1C();
    v30 = __swift_project_value_buffer(v29, qword_1EDFFCD50);
    (*(*(v29 - 8) + 16))(v18, v30, v29);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v31 = v50;
    sub_1D6394524(0, v45, v43, v44, v18);
    v32 = v18;
  }

  sub_1D5D2CFE8(v32, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v31, sub_1D5D30DC4);
}

uint64_t FormatPuzzleStatisticBinding.Bool.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatPuzzleStatisticBinding.Bool, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatPuzzleStatisticBinding.Bool, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.DawnburstF, v25, v22, v26, &off_1F51F6BD8);
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCE80);
      (*(*(v31 - 8) + 16))(v10, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641A588(2, v10);
      v30 = v10;
    }

    else
    {
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCE80);
      (*(*(v35 - 8) + 16))(v6, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641A588(3, v6);
      v30 = v6;
    }
  }

  else if (v23)
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCE80);
    (*(*(v33 - 8) + 16))(v14, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641A588(1, v14);
    v30 = v14;
  }

  else
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCE80);
    (*(*(v28 - 8) + 16))(v18, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641A588(0, v18);
    v30 = v18;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t FormatNumberFormat.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  sub_1D666C4D8();
  v7 = v6;
  v66 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D666C56C();
  sub_1D5B58B84(&qword_1EDF0C360, sub_1D666C56C);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v65 = a2;
  v11 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  v14 = v66;
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
          goto LABEL_7;
        }
      }

      v32 = *(v17 - 2);
      v31 = *(v17 - 1);

      v33 = sub_1D6617678();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v34 = v32;
      *(v34 + 8) = v31;
      *(v34 + 16) = v33;
      *(v34 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v14 + 8))(v10, v7);
      a1 = v11;
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D666C6EC();
  v73 = 0uLL;
  v74 = 0;
  sub_1D726427C();
  v18 = v72[0];
  v73 = xmmword_1D728CF30;
  v74 = 0;
  sub_1D666C740();
  sub_1D726427C();
  v19 = v72[0];
  v73 = xmmword_1D7297410;
  v74 = 0;
  v20 = sub_1D726425C();
  v63 = v21;
  v64 = v20;
  v73 = xmmword_1D72BAA60;
  v74 = 0;
  v22 = sub_1D726425C();
  v61 = v23;
  v62 = v22;
  v73 = xmmword_1D72BAA70;
  v74 = 0;
  v24 = sub_1D726425C();
  v59 = v25;
  v60 = v24;
  v73 = xmmword_1D72BAA80;
  v74 = 0;
  v26 = sub_1D726425C();
  v57 = v27;
  v58 = v26;
  v73 = xmmword_1D72BAA90;
  v74 = 0;
  v28 = sub_1D726425C();
  v55 = v29;
  v56 = v28;
  v73 = xmmword_1D72BAAA0;
  v74 = 0;
  v30 = sub_1D726425C();
  v52 = v36;
  v53 = v30;
  v73 = xmmword_1D72BAAB0;
  v74 = 0;
  v54 = sub_1D726424C();
  v38 = v37;
  (*(v14 + 8))(v10, v7);
  v39 = v63 & 1;
  LOBYTE(v72[0]) = v63 & 1;
  LOBYTE(v71[0]) = v61 & 1;
  LOBYTE(v70[0]) = v59 & 1;
  LOBYTE(v69[0]) = v57 & 1;
  LOBYTE(v68[0]) = v55 & 1;
  LOBYTE(v67[0]) = v52 & 1;
  LOBYTE(v75) = v38 & 1;
  v40 = v61 & 1;
  v41 = v59 & 1;
  v42 = v57 & 1;
  v43 = v55 & 1;
  v44 = v52 & 1;
  v45 = v65;
  *v65 = v18;
  v45[1] = v19;
  *(v45 + 2) = v75;
  *(v45 + 3) = v76;
  *(v45 + 1) = v64;
  v45[16] = v39;
  *(v45 + 17) = v72[0];
  *(v45 + 5) = *(v72 + 3);
  *(v45 + 3) = v62;
  v45[32] = v40;
  v46 = v71[0];
  *(v45 + 9) = *(v71 + 3);
  *(v45 + 33) = v46;
  *(v45 + 5) = v60;
  v45[48] = v41;
  v47 = v70[0];
  *(v45 + 13) = *(v70 + 3);
  *(v45 + 49) = v47;
  *(v45 + 7) = v58;
  v45[64] = v42;
  v48 = v69[0];
  *(v45 + 17) = *(v69 + 3);
  *(v45 + 65) = v48;
  *(v45 + 9) = v56;
  v45[80] = v43;
  v49 = v68[0];
  *(v45 + 21) = *(v68 + 3);
  *(v45 + 81) = v49;
  *(v45 + 11) = v53;
  v45[96] = v44;
  v50 = v67[0];
  *(v45 + 25) = *(v67 + 3);
  *(v45 + 97) = v50;
  *(v45 + 13) = v54;
  v45[112] = v38 & 1;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatNumberFormat.encode(to:)(void *a1)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v241 = &v237 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v244 = &v237 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v247 = &v237 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v250 = &v237 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v253 = &v237 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v256 = &v237 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v263 = &v237 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v264 = (&v237 - v27);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v237 - v30;
  sub_1D666C794();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v32, v34);
  v36 = &v237 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *v1;
  LODWORD(v262) = v1[1];
  v254 = *(v1 + 1);
  v258 = v1[16];
  v251 = *(v1 + 3);
  v255 = v1[32];
  v248 = *(v1 + 5);
  v252 = v1[48];
  v245 = *(v1 + 7);
  v249 = v1[64];
  v242 = *(v1 + 9);
  v246 = v1[80];
  v239 = *(v1 + 11);
  v243 = v1[96];
  v38 = *(v1 + 13);
  v240 = v1[112];
  v39 = a1[3];
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v39);
  sub_1D666C56C();
  v42 = v41;
  v43 = sub_1D5B58B84(&qword_1EDF0C360, sub_1D666C56C);
  sub_1D5D2EE70(&type metadata for FormatNumberFormat, v42, v44, v39, &type metadata for FormatNumberFormat, v42, &type metadata for FormatVersions.JazzkonG, v40, v36, v43, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v45 = sub_1D725BD1C();
  v46 = __swift_project_value_buffer(v45, qword_1EDFFCD18);
  v47 = *(v45 - 8);
  v269 = *(v47 + 16);
  *&v270 = v46;
  v268 = v47 + 16;
  (v269)(v31);
  v267 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v274 = 0uLL;
  v275 = 0;
  v48 = &v36[*(v33 + 44)];
  v50 = *v48;
  v49 = *(v48 + 1);
  LOBYTE(v273) = 0;
  v51 = swift_allocObject();
  v53 = v51;
  *(v51 + 16) = 0;
  *(v51 + 24) = 0;
  *(v51 + 32) = v273;
  *(v51 + 40) = v50;
  *(v51 + 48) = v49;
  v271 = v36;
  v261 = v45;
  v257 = v50;
  v259 = v33;
  v260 = v49;
  if (v37 == 9)
  {
    v266 = v2;

    goto LABEL_11;
  }

  v266 = &v237;
  LOBYTE(v273) = v37;
  MEMORY[0x1EEE9AC00](v51, v52);
  *&v265 = &v237 - 6;
  *(&v237 - 4) = sub_1D5B4AA6C;
  *(&v237 - 3) = 0;
  v235 = sub_1D6708938;
  v236 = v53;
  v272 = 0;
  v54 = swift_allocObject();
  *(v54 + 16) = 0;
  *(v54 + 24) = 0;
  *(v54 + 32) = v272;
  *(v54 + 40) = v50;
  *(v54 + 48) = v49;
  sub_1D666C828();
  v55 = v2;
  v57 = v56;
  v58 = sub_1D5B58B84(&qword_1EDF029B8, sub_1D666C828);
  swift_retain_n();
  v238 = v57;
  v237 = v58;
  v59 = sub_1D72647CC();
  v272 = 0;
  v60 = swift_allocObject();
  *(v60 + 24) = 0;
  *(v60 + 32) = 0;
  *(v60 + 16) = v59;
  *(v60 + 40) = v272;
  v61 = __swift_project_boxed_opaque_existential_1(&v36[*(v33 + 36)], *&v36[*(v33 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v61, v62);
  MEMORY[0x1EEE9AC00](v63, v64);
  v65 = v265;
  *(&v237 - 4) = sub_1D615B4A4;
  *(&v237 - 3) = v65;
  v235 = sub_1D6708938;
  v236 = v54;
  v67 = sub_1D5D2F7A4(v31, sub_1D615B49C, v66, sub_1D615B4A4, (&v237 - 6));
  if (!v55)
  {
    v69 = v67;
    v33 = v259;

    if (v69)
    {
      sub_1D666C9A0();
      v36 = v271;
      sub_1D72647EC();
      v45 = v261;
      v266 = 0;
      v49 = v260;
    }

    else
    {
      v266 = 0;
      v36 = v271;
      v49 = v260;
      v45 = v261;
    }

    v50 = v257;
LABEL_11:
    sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);

    v70 = v264;
    (v269)(v264, v270, v45);
    swift_storeEnumTagMultiPayload();
    v265 = xmmword_1D728CF30;
    v274 = xmmword_1D728CF30;
    v275 = 0;
    LOBYTE(v273) = 0;
    v71 = swift_allocObject();
    v73 = v71;
    *(v71 + 16) = v265;
    *(v71 + 32) = v273;
    *(v71 + 40) = v50;
    *(v71 + 48) = v49;
    if (v262 == 7)
    {

      v74 = v263;
    }

    else
    {
      v238 = &v237;
      LOBYTE(v273) = v262;
      MEMORY[0x1EEE9AC00](v71, v72);
      *(&v237 - 4) = sub_1D5B4AA6C;
      *(&v237 - 3) = 0;
      v235 = sub_1D6708938;
      v236 = v73;
      v272 = 0;
      v78 = swift_allocObject();
      *(v78 + 16) = v265;
      *(v78 + 32) = v272;
      *(v78 + 40) = v50;
      *(v78 + 48) = v49;
      sub_1D666C828();
      v80 = v79;
      sub_1D5B58B84(&qword_1EDF029B8, sub_1D666C828);
      swift_retain_n();
      v262 = v80;
      v81 = sub_1D72647CC();
      v272 = 0;
      v82 = swift_allocObject();
      *(v82 + 16) = v81;
      *(v82 + 24) = v265;
      *(v82 + 40) = v272;
      v83 = __swift_project_boxed_opaque_existential_1(&v36[*(v33 + 36)], *&v36[*(v33 + 36) + 24]);
      MEMORY[0x1EEE9AC00](v83, v84);
      MEMORY[0x1EEE9AC00](v85, v86);
      *(&v237 - 4) = sub_1D615B4A4;
      *(&v237 - 3) = (&v237 - 6);
      v235 = sub_1D6708938;
      v236 = v78;
      v87 = v266;
      v89 = sub_1D5D2F7A4(v70, sub_1D615B49C, v88, sub_1D615B4A4, (&v237 - 6));
      v266 = v87;
      if (v87)
      {
        goto LABEL_59;
      }

      v104 = v89;
      v33 = v259;
      v105 = v260;

      if (v104)
      {
        sub_1D666C94C();
        v106 = v271;
        v107 = v266;
        sub_1D72647EC();
        v45 = v261;
        v74 = v263;
        if (v107)
        {
          v108 = v264;
LABEL_75:
          sub_1D5D2CFE8(v108, type metadata accessor for FormatVersionRequirement);

          goto LABEL_61;
        }

        v266 = 0;
        v49 = v105;
        v50 = v257;
        v70 = v264;
      }

      else
      {
        v49 = v105;
        v50 = v257;
        v45 = v261;
        v74 = v263;
        v70 = v264;
      }
    }

    sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);

    (v269)(v74, v270, v45);
    swift_storeEnumTagMultiPayload();
    v265 = xmmword_1D7297410;
    v274 = xmmword_1D7297410;
    v275 = 0;
    LOBYTE(v273) = 0;
    v75 = swift_allocObject();
    v77 = v75;
    *(v75 + 16) = v265;
    *(v75 + 32) = v273;
    *(v75 + 40) = v50;
    *(v75 + 48) = v49;
    if (v258)
    {

      v70 = v256;
    }

    else
    {
      v264 = &v237;
      v273 = v254;
      MEMORY[0x1EEE9AC00](v75, v76);
      *(&v237 - 4) = sub_1D5B4AA6C;
      *(&v237 - 3) = 0;
      v235 = sub_1D6708938;
      v236 = v77;
      v272 = 0;
      v90 = v33;
      v91 = swift_allocObject();
      *(v91 + 16) = v265;
      *(v91 + 32) = v272;
      *(v91 + 40) = v50;
      *(v91 + 48) = v49;
      sub_1D666C828();
      sub_1D5B58B84(&qword_1EDF029B8, sub_1D666C828);
      swift_retain_n();
      v92 = v271;
      v93 = sub_1D72647CC();
      v272 = 0;
      v94 = swift_allocObject();
      *(v94 + 16) = v93;
      *(v94 + 24) = v265;
      *(v94 + 40) = v272;
      v95 = __swift_project_boxed_opaque_existential_1((v92 + *(v90 + 36)), *(v92 + *(v90 + 36) + 24));
      MEMORY[0x1EEE9AC00](v95, v96);
      MEMORY[0x1EEE9AC00](v97, v98);
      *(&v237 - 4) = sub_1D615B4A4;
      *(&v237 - 3) = (&v237 - 6);
      v99 = v263;
      v235 = sub_1D6708938;
      v236 = v91;
      v100 = v266;
      v102 = sub_1D5D2F7A4(v263, sub_1D615B49C, v101, sub_1D615B4A4, (&v237 - 6));
      if (v100)
      {
        sub_1D5D2CFE8(v99, type metadata accessor for FormatVersionRequirement);

        return sub_1D5D2CFE8(v271, sub_1D666C794);
      }

      v109 = v102;
      v110 = v260;

      if (v109)
      {
        sub_1D72647EC();
        v45 = v261;
        v33 = v90;
        v266 = 0;
        v49 = v110;
        v50 = v257;
      }

      else
      {
        v266 = 0;
        v33 = v90;
        v49 = v110;
        v50 = v257;
        v45 = v261;
      }

      v70 = v256;
      v74 = v263;
    }

    sub_1D5D2CFE8(v74, type metadata accessor for FormatVersionRequirement);

    (v269)(v70, v270, v45);
    swift_storeEnumTagMultiPayload();
    v265 = xmmword_1D72BAA60;
    v274 = xmmword_1D72BAA60;
    v275 = 0;
    LOBYTE(v273) = 0;
    v111 = swift_allocObject();
    v113 = v111;
    *(v111 + 16) = v265;
    *(v111 + 32) = v273;
    *(v111 + 40) = v50;
    *(v111 + 48) = v49;
    if (v255)
    {
    }

    else
    {
      v264 = &v237;
      v273 = v251;
      MEMORY[0x1EEE9AC00](v111, v112);
      *(&v237 - 4) = sub_1D5B4AA6C;
      *(&v237 - 3) = 0;
      v235 = sub_1D6708938;
      v236 = v113;
      v272 = 0;
      v114 = v33;
      v115 = swift_allocObject();
      *(v115 + 16) = v265;
      *(v115 + 32) = v272;
      *(v115 + 40) = v50;
      *(v115 + 48) = v49;
      sub_1D666C828();
      v117 = v116;
      sub_1D5B58B84(&qword_1EDF029B8, sub_1D666C828);
      swift_retain_n();
      v118 = v271;
      v263 = v117;
      v119 = sub_1D72647CC();
      v272 = 0;
      v120 = swift_allocObject();
      *(v120 + 16) = v119;
      *(v120 + 24) = v265;
      *(v120 + 40) = v272;
      v121 = __swift_project_boxed_opaque_existential_1((v118 + *(v114 + 36)), *(v118 + *(v114 + 36) + 24));
      MEMORY[0x1EEE9AC00](v121, v122);
      MEMORY[0x1EEE9AC00](v123, v124);
      *(&v237 - 4) = sub_1D615B4A4;
      *(&v237 - 3) = (&v237 - 6);
      v235 = sub_1D6708938;
      v236 = v115;
      v125 = v266;
      v127 = sub_1D5D2F7A4(v70, sub_1D615B49C, v126, sub_1D615B4A4, (&v237 - 6));
      if (v125)
      {
        goto LABEL_59;
      }

      v128 = v127;
      v129 = v259;
      v130 = v260;

      if (v128)
      {
        sub_1D72647EC();
        v45 = v261;
        v33 = v129;
        v266 = 0;
        v49 = v130;
        v50 = v257;
      }

      else
      {
        v266 = 0;
        v33 = v129;
        v49 = v130;
        v50 = v257;
        v45 = v261;
      }

      v70 = v256;
    }

    sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);

    v70 = v253;
    (v269)(v253, v270, v45);
    swift_storeEnumTagMultiPayload();
    v265 = xmmword_1D72BAA70;
    v274 = xmmword_1D72BAA70;
    v275 = 0;
    LOBYTE(v273) = 0;
    v131 = swift_allocObject();
    v133 = v131;
    *(v131 + 16) = v265;
    *(v131 + 32) = v273;
    *(v131 + 40) = v50;
    *(v131 + 48) = v49;
    if (v252)
    {

      v134 = v70;
    }

    else
    {
      v264 = &v237;
      v273 = v248;
      MEMORY[0x1EEE9AC00](v131, v132);
      *(&v237 - 4) = sub_1D5B4AA6C;
      *(&v237 - 3) = 0;
      v235 = sub_1D6708938;
      v236 = v133;
      v272 = 0;
      v135 = v33;
      v136 = swift_allocObject();
      *(v136 + 16) = v265;
      *(v136 + 32) = v272;
      *(v136 + 40) = v50;
      *(v136 + 48) = v49;
      sub_1D666C828();
      v138 = v137;
      sub_1D5B58B84(&qword_1EDF029B8, sub_1D666C828);
      swift_retain_n();
      v139 = v271;
      v263 = v138;
      v140 = sub_1D72647CC();
      v272 = 0;
      v141 = swift_allocObject();
      *(v141 + 16) = v140;
      *(v141 + 24) = v265;
      *(v141 + 40) = v272;
      v142 = __swift_project_boxed_opaque_existential_1((v139 + *(v135 + 36)), *(v139 + *(v135 + 36) + 24));
      MEMORY[0x1EEE9AC00](v142, v143);
      MEMORY[0x1EEE9AC00](v144, v145);
      *(&v237 - 4) = sub_1D615B4A4;
      *(&v237 - 3) = (&v237 - 6);
      v235 = sub_1D6708938;
      v236 = v136;
      v146 = v266;
      v148 = sub_1D5D2F7A4(v70, sub_1D615B49C, v147, sub_1D615B4A4, (&v237 - 6));
      if (v146)
      {
        goto LABEL_59;
      }

      v149 = v148;
      v150 = v259;
      v151 = v260;

      if (v149)
      {
        sub_1D72647EC();
        v45 = v261;
        v33 = v150;
        v266 = 0;
        v49 = v151;
        v50 = v257;
      }

      else
      {
        v266 = 0;
        v33 = v150;
        v49 = v151;
        v50 = v257;
        v45 = v261;
      }

      v134 = v253;
    }

    sub_1D5D2CFE8(v134, type metadata accessor for FormatVersionRequirement);

    v70 = v250;
    (v269)(v250, v270, v45);
    swift_storeEnumTagMultiPayload();
    v265 = xmmword_1D72BAA80;
    v274 = xmmword_1D72BAA80;
    v275 = 0;
    LOBYTE(v273) = 0;
    v152 = swift_allocObject();
    v154 = v152;
    *(v152 + 16) = v265;
    *(v152 + 32) = v273;
    *(v152 + 40) = v50;
    *(v152 + 48) = v49;
    if (v249)
    {

      v155 = v70;
    }

    else
    {
      v264 = &v237;
      v273 = v245;
      MEMORY[0x1EEE9AC00](v152, v153);
      *(&v237 - 4) = sub_1D5B4AA6C;
      *(&v237 - 3) = 0;
      v235 = sub_1D6708938;
      v236 = v154;
      v272 = 0;
      v156 = v33;
      v157 = swift_allocObject();
      *(v157 + 16) = v265;
      *(v157 + 32) = v272;
      *(v157 + 40) = v50;
      *(v157 + 48) = v49;
      sub_1D666C828();
      v159 = v158;
      sub_1D5B58B84(&qword_1EDF029B8, sub_1D666C828);
      swift_retain_n();
      v160 = v271;
      v263 = v159;
      v161 = sub_1D72647CC();
      v272 = 0;
      v162 = swift_allocObject();
      *(v162 + 16) = v161;
      *(v162 + 24) = v265;
      *(v162 + 40) = v272;
      v163 = __swift_project_boxed_opaque_existential_1((v160 + *(v156 + 36)), *(v160 + *(v156 + 36) + 24));
      MEMORY[0x1EEE9AC00](v163, v164);
      MEMORY[0x1EEE9AC00](v165, v166);
      *(&v237 - 4) = sub_1D615B4A4;
      *(&v237 - 3) = (&v237 - 6);
      v235 = sub_1D6708938;
      v236 = v157;
      v167 = v266;
      v169 = sub_1D5D2F7A4(v70, sub_1D615B49C, v168, sub_1D615B4A4, (&v237 - 6));
      if (v167)
      {
        goto LABEL_59;
      }

      v170 = v169;
      v171 = v259;
      v172 = v260;

      if (v170)
      {
        sub_1D72647EC();
        v45 = v261;
        v33 = v171;
        v266 = 0;
        v49 = v172;
        v50 = v257;
      }

      else
      {
        v266 = 0;
        v33 = v171;
        v49 = v172;
        v50 = v257;
        v45 = v261;
      }

      v155 = v250;
    }

    sub_1D5D2CFE8(v155, type metadata accessor for FormatVersionRequirement);

    v70 = v247;
    (v269)(v247, v270, v45);
    swift_storeEnumTagMultiPayload();
    v265 = xmmword_1D72BAA90;
    v274 = xmmword_1D72BAA90;
    v275 = 0;
    LOBYTE(v273) = 0;
    v173 = swift_allocObject();
    v175 = v173;
    *(v173 + 16) = v265;
    *(v173 + 32) = v273;
    *(v173 + 40) = v50;
    *(v173 + 48) = v49;
    if (v246)
    {

      v176 = v70;
    }

    else
    {
      v264 = &v237;
      v273 = v242;
      MEMORY[0x1EEE9AC00](v173, v174);
      *(&v237 - 4) = sub_1D5B4AA6C;
      *(&v237 - 3) = 0;
      v235 = sub_1D6708938;
      v236 = v175;
      v272 = 0;
      v177 = v33;
      v178 = swift_allocObject();
      *(v178 + 16) = v265;
      *(v178 + 32) = v272;
      *(v178 + 40) = v50;
      *(v178 + 48) = v49;
      sub_1D666C828();
      v180 = v179;
      sub_1D5B58B84(&qword_1EDF029B8, sub_1D666C828);
      swift_retain_n();
      v181 = v271;
      v263 = v180;
      v182 = sub_1D72647CC();
      v272 = 0;
      v183 = swift_allocObject();
      *(v183 + 16) = v182;
      *(v183 + 24) = v265;
      *(v183 + 40) = v272;
      v184 = __swift_project_boxed_opaque_existential_1((v181 + *(v177 + 36)), *(v181 + *(v177 + 36) + 24));
      MEMORY[0x1EEE9AC00](v184, v185);
      MEMORY[0x1EEE9AC00](v186, v187);
      *(&v237 - 4) = sub_1D615B4A4;
      *(&v237 - 3) = (&v237 - 6);
      v235 = sub_1D6708938;
      v236 = v178;
      v188 = v266;
      v190 = sub_1D5D2F7A4(v70, sub_1D615B49C, v189, sub_1D615B4A4, (&v237 - 6));
      if (v188)
      {
        goto LABEL_59;
      }

      v191 = v190;
      v192 = v259;
      v193 = v260;

      if (v191)
      {
        sub_1D72647EC();
        v45 = v261;
        v33 = v192;
        v266 = 0;
        v49 = v193;
        v50 = v257;
      }

      else
      {
        v266 = 0;
        v33 = v192;
        v49 = v193;
        v50 = v257;
        v45 = v261;
      }

      v176 = v247;
    }

    sub_1D5D2CFE8(v176, type metadata accessor for FormatVersionRequirement);

    v70 = v244;
    (v269)(v244, v270, v45);
    swift_storeEnumTagMultiPayload();
    v265 = xmmword_1D72BAAA0;
    v274 = xmmword_1D72BAAA0;
    v275 = 0;
    LOBYTE(v273) = 0;
    v194 = swift_allocObject();
    v196 = v194;
    *(v194 + 16) = v265;
    *(v194 + 32) = v273;
    *(v194 + 40) = v50;
    *(v194 + 48) = v49;
    if (v243)
    {

      v197 = v266;
      v198 = v49;
      v106 = v271;
      v199 = v70;
LABEL_67:
      sub_1D5D2CFE8(v199, type metadata accessor for FormatVersionRequirement);

      v217 = v241;
      (v269)(v241, v270, v261);
      swift_storeEnumTagMultiPayload();
      v270 = xmmword_1D72BAAB0;
      v274 = xmmword_1D72BAAB0;
      v275 = 0;
      LOBYTE(v273) = 0;
      v218 = swift_allocObject();
      v220 = v218;
      *(v218 + 16) = v270;
      *(v218 + 32) = v273;
      *(v218 + 40) = v50;
      *(v218 + 48) = v198;
      if (v240)
      {

        v108 = v217;
        goto LABEL_75;
      }

      v269 = &v237;
      v273 = v38;
      MEMORY[0x1EEE9AC00](v218, v219);
      v266 = v197;
      *(&v237 - 4) = sub_1D5B4AA6C;
      *(&v237 - 3) = 0;
      v235 = sub_1D6708938;
      v236 = v220;
      v272 = 0;
      v221 = v33;
      v222 = swift_allocObject();
      *(v222 + 16) = v270;
      *(v222 + 32) = v272;
      *(v222 + 40) = v50;
      *(v222 + 48) = v198;
      sub_1D666C828();
      v224 = v223;
      sub_1D5B58B84(&qword_1EDF029B8, sub_1D666C828);
      swift_retain_n();
      v268 = v224;
      v225 = sub_1D72647CC();
      v272 = 0;
      v226 = swift_allocObject();
      *(v226 + 16) = v225;
      *(v226 + 24) = v270;
      *(v226 + 40) = v272;
      v227 = __swift_project_boxed_opaque_existential_1((v106 + *(v221 + 36)), *(v106 + *(v221 + 36) + 24));
      MEMORY[0x1EEE9AC00](v227, v228);
      MEMORY[0x1EEE9AC00](v229, v230);
      *(&v237 - 4) = sub_1D615B4A4;
      *(&v237 - 3) = (&v237 - 6);
      v235 = sub_1D666C8BC;
      v236 = v222;
      v231 = v266;
      v233 = sub_1D5D2F7A4(v217, sub_1D615B49C, v232, sub_1D615B4A4, (&v237 - 6));
      if (!v231)
      {
        v234 = v233;

        if (v234)
        {
          v106 = v271;
          sub_1D72647EC();
        }

        else
        {
          v106 = v271;
        }

        v108 = v241;
        goto LABEL_75;
      }

      sub_1D5D2CFE8(v217, type metadata accessor for FormatVersionRequirement);

LABEL_60:
      v106 = v271;
LABEL_61:
      v68 = v106;
      return sub_1D5D2CFE8(v68, sub_1D666C794);
    }

    v264 = &v237;
    v273 = v239;
    MEMORY[0x1EEE9AC00](v194, v195);
    *(&v237 - 4) = sub_1D5B4AA6C;
    *(&v237 - 3) = 0;
    v235 = sub_1D6708938;
    v236 = v196;
    v272 = 0;
    v200 = v33;
    v201 = swift_allocObject();
    *(v201 + 16) = v265;
    *(v201 + 32) = v272;
    *(v201 + 40) = v50;
    *(v201 + 48) = v49;
    sub_1D666C828();
    v203 = v202;
    sub_1D5B58B84(&qword_1EDF029B8, sub_1D666C828);
    swift_retain_n();
    v204 = v271;
    v263 = v203;
    v205 = sub_1D72647CC();
    v272 = 0;
    v206 = swift_allocObject();
    *(v206 + 16) = v205;
    *(v206 + 24) = v265;
    *(v206 + 40) = v272;
    v207 = __swift_project_boxed_opaque_existential_1((v204 + *(v200 + 36)), *(v204 + *(v200 + 36) + 24));
    MEMORY[0x1EEE9AC00](v207, v208);
    MEMORY[0x1EEE9AC00](v209, v210);
    *(&v237 - 4) = sub_1D615B4A4;
    *(&v237 - 3) = (&v237 - 6);
    v235 = sub_1D6708938;
    v236 = v201;
    v211 = v266;
    v213 = sub_1D5D2F7A4(v70, sub_1D615B49C, v212, sub_1D615B4A4, (&v237 - 6));
    v197 = v211;
    if (!v211)
    {
      v215 = v259;
      v214 = v260;
      v216 = v213;

      if (v216)
      {
        v106 = v271;
        sub_1D72647EC();
      }

      else
      {
        v106 = v271;
      }

      v33 = v215;
      v199 = v244;
      v198 = v214;
      v50 = v257;
      goto LABEL_67;
    }

LABEL_59:
    sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);

    goto LABEL_60;
  }

  sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);

  v68 = v271;
  return sub_1D5D2CFE8(v68, sub_1D666C794);
}

uint64_t FormatSizeEquation.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D666C9F4();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D666CA88();
  sub_1D5B58B84(&qword_1EC8864C8, sub_1D666CA88);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v7;
  v11 = v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  v14 = v10;
  if (v13)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    v17 = v26;
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

      v22 = sub_1D6627E68(0x6874646977, 0xE500000000000000, 0x746867696568, 0xE600000000000000);
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
  v28 = 0uLL;
  v29 = 0;
  sub_1D726431C();
  v19 = v30;
  v28 = xmmword_1D728CF30;
  v29 = 0;
  sub_1D726431C();
  (*(v26 + 8))(v10, v6);
  v25 = v30;
  *v11 = v19;
  v11[1] = v25;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSizeEquation.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v78 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v69 - v8;
  sub_1D666CC08();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v77 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D666CA88();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EC8864C8, sub_1D666CA88);
  sub_1D5D2EE70(&type metadata for FormatSizeEquation, v19, v21, v16, &type metadata for FormatSizeEquation, v19, &type metadata for FormatVersions.JazzkonG, v17, v14, v20, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD18);
  v24 = *(v22 - 8);
  v74 = *(v24 + 16);
  v75 = v23;
  v73 = v24 + 16;
  v74(v9);
  v72 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v88 = v15;
  v86 = 0uLL;
  v87 = 0;
  v25 = &v14[*(v11 + 44)];
  v26 = *v25;
  v27 = *(v25 + 1);
  v85 = 0;
  v28 = swift_allocObject();
  v81 = v69;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v85;
  *(v28 + 40) = v26;
  *(v28 + 48) = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v83 = v9;
  v69[-4] = sub_1D5B4AA6C;
  v69[-3] = 0;
  v67 = sub_1D670893C;
  v68 = v30;
  v85 = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v85;
  v76 = v26;
  *(v31 + 40) = v26;
  *(v31 + 48) = v27;
  sub_1D666CC9C();
  v33 = v32;
  v34 = sub_1D5B58B84(&qword_1EC8864E0, sub_1D666CC9C);
  swift_retain_n();
  v79 = v34;
  v80 = v33;
  v35 = sub_1D72647CC();
  v85 = 0;
  v36 = swift_allocObject();
  *(v36 + 24) = 0;
  *(v36 + 32) = 0;
  *(v36 + 16) = v35;
  *(v36 + 40) = v85;
  v37 = *(v11 + 36);
  v82 = v14;
  v38 = &v14[v37];
  v39 = __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
  MEMORY[0x1EEE9AC00](v39, v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  v69[-4] = sub_1D615B4A4;
  v69[-3] = &v69[-6];
  v44 = v83;
  v43 = v84;
  v67 = sub_1D666CD30;
  v68 = v31;
  sub_1D5D2BC70(v83, sub_1D615B49C, v45, sub_1D615B4A4, &v69[-6]);
  if (v43)
  {
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);

    v51 = v82;
  }

  else
  {
    v70 = v38;
    v71 = v27;

    sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    v47 = v46;
    v48 = sub_1D66582DC();
    v49 = v82;
    sub_1D72647EC();
    v50 = v49;
    v69[1] = v48;
    v81 = v47;
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);

    v53 = v78;
    (v74)(v78, v75, v22);
    swift_storeEnumTagMultiPayload();
    v88 = v77;
    v84 = xmmword_1D728CF30;
    v86 = xmmword_1D728CF30;
    v87 = 0;
    v85 = 0;
    v54 = swift_allocObject();
    v83 = v69;
    *(v54 + 16) = v84;
    *(v54 + 32) = v85;
    v55 = v76;
    v56 = v71;
    *(v54 + 40) = v76;
    *(v54 + 48) = v56;
    MEMORY[0x1EEE9AC00](v54, v57);
    v69[-4] = sub_1D5B4AA6C;
    v69[-3] = 0;
    v67 = sub_1D670893C;
    v68 = v58;
    v85 = 0;
    v59 = swift_allocObject();
    *(v59 + 16) = v84;
    *(v59 + 32) = v85;
    *(v59 + 40) = v55;
    *(v59 + 48) = v56;
    swift_retain_n();
    v60 = sub_1D72647CC();
    v85 = 0;
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = v84;
    *(v61 + 40) = v85;
    v62 = __swift_project_boxed_opaque_existential_1(v70, *(v70 + 3));
    MEMORY[0x1EEE9AC00](v62, v63);
    MEMORY[0x1EEE9AC00](v64, v65);
    v69[-4] = sub_1D615B4A4;
    v69[-3] = &v69[-6];
    v67 = sub_1D670893C;
    v68 = v59;
    sub_1D5D2BC70(v53, sub_1D615B49C, v66, sub_1D615B4A4, &v69[-6]);

    sub_1D72647EC();
    sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);

    v51 = v50;
  }

  return sub_1D5D2CFE8(v51, sub_1D666CC08);
}

uint64_t FormatSupplementary.Kind.encode(to:)(void *a1)
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
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v15 = sub_1D725BD1C();
  v16 = __swift_project_value_buffer(v15, qword_1EDFFCD30);
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

uint64_t FormatSupplementary.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v213 = &v211 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v215 = &v211 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v216 = &v211 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v217 = &v211 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v220 = &v211 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v224 = &v211 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v222 = &v211 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v228 = &v211 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v225 = &v211 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v211 - v32;
  sub_1D666CE3C();
  v35 = v34;
  MEMORY[0x1EEE9AC00](v34, v36);
  v38 = &v211 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *v1;
  v40 = *(v1 + 8);
  v41 = *(v1 + 56);
  v227 = *(v1 + 48);
  v223 = v41;
  v42 = *(v1 + 72);
  v221 = *(v1 + 64);
  v219 = v42;
  v244 = *(v1 + 80);
  v43 = *(v1 + 96);
  v218 = *(v1 + 88);
  v214 = v43;
  v212 = *(v1 + 104);
  v44 = a1[3];
  v45 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v44);
  sub_1D5CA580C();
  v47 = v46;
  v48 = sub_1D5B58B84(&qword_1EDF25468, sub_1D5CA580C);
  sub_1D5D2EE70(&type metadata for FormatSupplementary, v47, v49, v44, &type metadata for FormatSupplementary, v47, &type metadata for FormatVersions.JazzkonC, v45, v38, v48, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v50 = sub_1D725BD1C();
  v51 = __swift_project_value_buffer(v50, qword_1EDFFCD30);
  v52 = *(v50 - 8);
  v53 = *(v52 + 16);
  v226 = v51;
  v231 = v50;
  v232 = v52 + 16;
  v229 = v53;
  v53(v33);
  v233 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v241 = v39;
  v242 = v40;
  v239 = 0uLL;
  v240 = 0;
  v54 = &v38[*(v35 + 44)];
  v55 = *v54;
  v56 = *(v54 + 1);
  v243 = 0;
  v57 = swift_allocObject();
  *&v237 = &v211;
  *(v57 + 16) = 0;
  *(v57 + 24) = 0;
  *(v57 + 32) = v243;
  *(v57 + 40) = v55;
  *(v57 + 48) = v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v236 = &v211 - 6;
  *(&v211 - 4) = sub_1D5B4AA6C;
  *(&v211 - 3) = 0;
  v209 = sub_1D6708940;
  v210 = v59;
  v243 = 0;
  v60 = swift_allocObject();
  *(v60 + 16) = 0;
  *(v60 + 24) = 0;
  *(v60 + 32) = v243;
  v230 = v55;
  *(v60 + 40) = v55;
  *(v60 + 48) = v56;
  sub_1D5E1C2D8(0);
  v62 = v61;
  v63 = sub_1D5B58B84(&qword_1EDF034A8, sub_1D5E1C2D8);
  swift_retain_n();
  v234 = v62;
  v235 = v63;
  v64 = sub_1D72647CC();
  v243 = 0;
  v65 = swift_allocObject();
  *(v65 + 24) = 0;
  *(v65 + 32) = 0;
  *(v65 + 16) = v64;
  *(v65 + 40) = v243;
  v66 = v38;
  v67 = v33;
  v68 = &v66[*(v35 + 36)];
  v69 = __swift_project_boxed_opaque_existential_1(v68, *(v68 + 3));
  MEMORY[0x1EEE9AC00](v69, v70);
  MEMORY[0x1EEE9AC00](v71, v72);
  v73 = v236;
  *(&v211 - 4) = sub_1D615B4A4;
  *(&v211 - 3) = v73;
  v209 = sub_1D6708940;
  v210 = v60;
  v74 = v238;
  sub_1D5D2BC70(v67, sub_1D615B49C, v75, sub_1D615B4A4, (&v211 - 6));
  if (!v74)
  {
    v238 = v67;
    v211 = v68;
    v236 = v56;

    sub_1D72647EC();
    v78 = v66;
    sub_1D5D2CFE8(v238, type metadata accessor for FormatVersionRequirement);

    v80 = v225;
    v79 = v226;
    v81 = v231;
    v82 = v229;
    v229(v225, v226, v231);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v80, type metadata accessor for FormatVersionRequirement);
    v82(v80, v79, v81);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v80, type metadata accessor for FormatVersionRequirement);
    v83 = v228;
    v82(v228, v79, v81);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v239) = 0;
    v84 = swift_allocObject();
    v237 = xmmword_1D72BAA60;
    *(v84 + 16) = xmmword_1D72BAA60;
    *(v84 + 32) = v239;
    *(v84 + 40) = v230;
    *(v84 + 48) = v236;

    v238 = v78;
    v85 = sub_1D72647CC();
    LOBYTE(v239) = 0;
    v86 = swift_allocObject();
    *(v86 + 16) = v85;
    *(v86 + 24) = v237;
    *(v86 + 40) = v239;
    v87 = v211;
    v88 = __swift_project_boxed_opaque_existential_1(v211, *(v211 + 3));
    MEMORY[0x1EEE9AC00](v88, v89);
    MEMORY[0x1EEE9AC00](v90, v91);
    *(&v211 - 4) = sub_1D5B4AA6C;
    *(&v211 - 3) = 0;
    v209 = sub_1D666CED0;
    v210 = v84;
    v93 = sub_1D5D2F7A4(v83, sub_1D615B49C, v92, sub_1D615B4A4, (&v211 - 6));
    v94 = v93;
    v95 = v87;

    if (v94)
    {
      v239 = v237;
      v240 = 0;
      v241 = v227;
      sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
      sub_1D66594A0();
      sub_1D72647EC();

      sub_1D5D2CFE8(v228, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v228, type metadata accessor for FormatVersionRequirement);
    }

    v96 = v231;
    v97 = v224;
    v98 = v236;
    v99 = v229;
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v228 = 0;
    v100 = __swift_project_value_buffer(v96, qword_1EDFFCD18);
    v101 = v222;
    v99(v222, v100, v96);
    swift_storeEnumTagMultiPayload();
    v237 = xmmword_1D72BAA70;
    v239 = xmmword_1D72BAA70;
    v240 = 0;
    LOBYTE(v241) = 0;
    v102 = swift_allocObject();
    v104 = v102;
    *(v102 + 16) = v237;
    *(v102 + 32) = v241;
    v105 = v230;
    *(v102 + 40) = v230;
    *(v102 + 48) = v98;
    if (v223)
    {
      v227 = &v211;
      v241 = v223;
      MEMORY[0x1EEE9AC00](v102, v103);
      *(&v211 - 4) = sub_1D5B4AA6C;
      *(&v211 - 3) = 0;
      v209 = sub_1D6708940;
      v210 = v104;
      v243 = 0;
      v106 = swift_allocObject();
      *(v106 + 16) = v237;
      *(v106 + 32) = v243;
      *(v106 + 40) = v105;
      *(v106 + 48) = v98;
      swift_retain_n();

      v107 = sub_1D72647CC();
      v243 = 0;
      v108 = swift_allocObject();
      *(v108 + 16) = v107;
      *(v108 + 24) = v237;
      *(v108 + 40) = v243;
      v109 = __swift_project_boxed_opaque_existential_1(v95, *(v95 + 3));
      MEMORY[0x1EEE9AC00](v109, v110);
      MEMORY[0x1EEE9AC00](v111, v112);
      *(&v211 - 4) = sub_1D615B4A4;
      *(&v211 - 3) = (&v211 - 6);
      v209 = sub_1D6708940;
      v210 = v106;
      v113 = v228;
      v115 = sub_1D5D2F7A4(v101, sub_1D615B49C, v114, sub_1D615B4A4, (&v211 - 6));
      if (v113)
      {

        v116 = v238;
        sub_1D5D2CFE8(v101, type metadata accessor for FormatVersionRequirement);
LABEL_15:
        v76 = v116;
        return sub_1D5D2CFE8(v76, sub_1D666CE3C);
      }

      v117 = v115;

      if (v117)
      {
        type metadata accessor for FormatSupplementaryNodeStyle();
        sub_1D5B58B84(&qword_1EDF0A840, type metadata accessor for FormatSupplementaryNodeStyle);
        sub_1D72647EC();
        v96 = v231;
        v228 = 0;

        v98 = v236;
        v99 = v229;
        v105 = v230;
      }

      else
      {
        v228 = 0;

        v98 = v236;
        v105 = v230;
        v96 = v231;
        v99 = v229;
      }

      v95 = v211;
      v97 = v224;
    }

    else
    {
    }

    sub_1D5D2CFE8(v222, type metadata accessor for FormatVersionRequirement);
    v118 = v226;
    v99(v97, v226, v96);
    swift_storeEnumTagMultiPayload();
    if (*(v221 + 16))
    {
      LOBYTE(v239) = 0;
      v119 = swift_allocObject();
      v237 = xmmword_1D72BAA80;
      *(v119 + 16) = xmmword_1D72BAA80;
      *(v119 + 32) = v239;
      *(v119 + 40) = v105;
      *(v119 + 48) = v98;

      v120 = v238;
      v121 = sub_1D72647CC();
      LOBYTE(v239) = 0;
      v122 = swift_allocObject();
      *(v122 + 16) = v121;
      *(v122 + 24) = v237;
      *(v122 + 40) = v239;
      v123 = __swift_project_boxed_opaque_existential_1(v95, *(v95 + 3));
      MEMORY[0x1EEE9AC00](v123, v124);
      MEMORY[0x1EEE9AC00](v125, v126);
      *(&v211 - 4) = sub_1D5B4AA6C;
      *(&v211 - 3) = 0;
      v209 = sub_1D6708940;
      v210 = v119;
      v127 = v228;
      v129 = sub_1D5D2F7A4(v97, sub_1D615B49C, v128, sub_1D615B4A4, (&v211 - 6));
      v130 = v127;
      if (v127)
      {
        sub_1D5D2CFE8(v97, type metadata accessor for FormatVersionRequirement);

        v76 = v120;
        return sub_1D5D2CFE8(v76, sub_1D666CE3C);
      }

      v131 = v129;

      if (v131)
      {
        v239 = v237;
        v240 = 0;
        v241 = v221;
        sub_1D5C34D84(0, &qword_1EDF05000, &type metadata for FormatNodeStyle, MEMORY[0x1E69E62F8]);
        sub_1D5D2FA60();
        sub_1D72647EC();
        v118 = v226;
        v132 = v224;
        v96 = v231;

        sub_1D5D2CFE8(v132, type metadata accessor for FormatVersionRequirement);
        v98 = v236;
        v99 = v229;
      }

      else
      {
        sub_1D5D2CFE8(v224, type metadata accessor for FormatVersionRequirement);

        v98 = v236;
        v118 = v226;
        v99 = v229;
        v96 = v231;
      }
    }

    else
    {
      sub_1D5D2CFE8(v97, type metadata accessor for FormatVersionRequirement);
      v130 = v228;
    }

    v133 = v220;
    v99(v220, v118, v96);
    swift_storeEnumTagMultiPayload();
    if (*(v219 + 16))
    {
      LOBYTE(v239) = 0;
      v134 = swift_allocObject();
      v237 = xmmword_1D72BAA90;
      *(v134 + 16) = xmmword_1D72BAA90;
      *(v134 + 32) = v239;
      *(v134 + 40) = v230;
      *(v134 + 48) = v98;

      v135 = sub_1D72647CC();
      LOBYTE(v239) = 0;
      v136 = swift_allocObject();
      *(v136 + 16) = v135;
      *(v136 + 24) = v237;
      *(v136 + 40) = v239;
      v137 = __swift_project_boxed_opaque_existential_1(v95, *(v95 + 3));
      MEMORY[0x1EEE9AC00](v137, v138);
      MEMORY[0x1EEE9AC00](v139, v140);
      *(&v211 - 4) = sub_1D5B4AA6C;
      *(&v211 - 3) = 0;
      v209 = sub_1D6708940;
      v210 = v134;
      v142 = sub_1D5D2F7A4(v133, sub_1D615B49C, v141, sub_1D615B4A4, (&v211 - 6));
      if (v130)
      {

        v143 = v238;
        sub_1D5D2CFE8(v220, type metadata accessor for FormatVersionRequirement);
        v76 = v143;
        return sub_1D5D2CFE8(v76, sub_1D666CE3C);
      }

      v145 = v142;

      if (v145)
      {
        sub_1D5E07AF8(v219, v238, 6, 0, 0);
      }

      v118 = v226;

      v99 = v229;
      v144 = v220;
    }

    else
    {
      v144 = v133;
    }

    sub_1D5D2CFE8(v144, type metadata accessor for FormatVersionRequirement);
    v146 = v217;
    v99(v217, v118, v96);
    swift_storeEnumTagMultiPayload();
    v228 = v130;
    if (v244)
    {
      v147 = sub_1D72646CC();

      v148 = v218;
      if ((v147 & 1) == 0)
      {
        LOBYTE(v239) = 0;
        v149 = swift_allocObject();
        v237 = xmmword_1D72BAAA0;
        *(v149 + 16) = xmmword_1D72BAAA0;
        *(v149 + 32) = v239;
        *(v149 + 40) = v230;
        *(v149 + 48) = v236;

        v150 = sub_1D72647CC();
        LOBYTE(v239) = 0;
        v151 = swift_allocObject();
        *(v151 + 16) = v150;
        *(v151 + 24) = v237;
        *(v151 + 40) = v239;
        v152 = __swift_project_boxed_opaque_existential_1(v95, *(v95 + 3));
        v227 = &v211;
        MEMORY[0x1EEE9AC00](v152, v153);
        MEMORY[0x1EEE9AC00](v154, v155);
        *(&v211 - 4) = sub_1D5B4AA6C;
        *(&v211 - 3) = 0;
        v209 = sub_1D6708940;
        v210 = v149;
        v156 = v228;
        v158 = sub_1D5D2F7A4(v146, sub_1D615B49C, v157, sub_1D615B4A4, (&v211 - 6));
        if (v156)
        {
          sub_1D5D2CFE8(v146, type metadata accessor for FormatVersionRequirement);

          v76 = v238;
          return sub_1D5D2CFE8(v76, sub_1D666CE3C);
        }

        v174 = v158;

        if (v174)
        {
          v239 = v237;
          v240 = 0;
          LOBYTE(v241) = 1;
          sub_1D619D760();
          sub_1D72647EC();
          sub_1D5D2CFE8(v217, type metadata accessor for FormatVersionRequirement);
          v228 = 0;
        }

        else
        {
          v228 = 0;
          sub_1D5D2CFE8(v217, type metadata accessor for FormatVersionRequirement);
        }

        v159 = v236;
        v160 = v230;
        v118 = v226;
LABEL_41:
        v161 = v216;
        v229(v216, v118, v96);
        swift_storeEnumTagMultiPayload();
        if (v148[2])
        {
          LOBYTE(v239) = 0;
          v162 = swift_allocObject();
          v237 = xmmword_1D72BAAB0;
          *(v162 + 16) = xmmword_1D72BAAB0;
          *(v162 + 32) = v239;
          *(v162 + 40) = v160;
          *(v162 + 48) = v159;

          v163 = v238;
          v164 = sub_1D72647CC();
          LOBYTE(v239) = 0;
          v165 = swift_allocObject();
          *(v165 + 16) = v164;
          *(v165 + 24) = v237;
          *(v165 + 40) = v239;
          v166 = __swift_project_boxed_opaque_existential_1(v95, *(v95 + 3));
          MEMORY[0x1EEE9AC00](v166, v167);
          MEMORY[0x1EEE9AC00](v168, v169);
          *(&v211 - 4) = sub_1D5B4AA6C;
          *(&v211 - 3) = 0;
          v209 = sub_1D6708940;
          v210 = v162;
          v170 = v228;
          v172 = sub_1D5D2F7A4(v161, sub_1D615B49C, v171, sub_1D615B4A4, (&v211 - 6));
          if (v170)
          {
            sub_1D5D2CFE8(v161, type metadata accessor for FormatVersionRequirement);

            v76 = v163;
            return sub_1D5D2CFE8(v76, sub_1D666CE3C);
          }

          v173 = v172;

          if (v173)
          {
            v239 = v237;
            v240 = 0;
            v241 = v218;
            sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
            sub_1D60AD304();
            sub_1D72647EC();
            v118 = v226;
            v228 = 0;

            sub_1D5D2CFE8(v216, type metadata accessor for FormatVersionRequirement);
            v159 = v236;
          }

          else
          {
            v228 = 0;
            sub_1D5D2CFE8(v216, type metadata accessor for FormatVersionRequirement);

            v159 = v236;
            v118 = v226;
          }
        }

        else
        {
          sub_1D5D2CFE8(v161, type metadata accessor for FormatVersionRequirement);
        }

        v175 = v215;
        v176 = v229;
        v229(v215, v118, v96);
        swift_storeEnumTagMultiPayload();
        if (*(v214 + 16))
        {
          LOBYTE(v239) = 0;
          v177 = swift_allocObject();
          v237 = xmmword_1D72BAAC0;
          *(v177 + 16) = xmmword_1D72BAAC0;
          *(v177 + 32) = v239;
          *(v177 + 40) = v230;
          *(v177 + 48) = v159;

          v178 = v238;
          v179 = sub_1D72647CC();
          LOBYTE(v239) = 0;
          v180 = swift_allocObject();
          *(v180 + 16) = v179;
          *(v180 + 24) = v237;
          *(v180 + 40) = v239;
          v181 = *(v95 + 3);
          v182 = v95;
          v183 = v175;
          v184 = __swift_project_boxed_opaque_existential_1(v182, v181);
          MEMORY[0x1EEE9AC00](v184, v185);
          MEMORY[0x1EEE9AC00](v186, v187);
          *(&v211 - 4) = sub_1D5B4AA6C;
          *(&v211 - 3) = 0;
          v209 = sub_1D6708940;
          v210 = v177;
          v188 = v228;
          v190 = sub_1D5D2F7A4(v175, sub_1D615B49C, v189, sub_1D615B4A4, (&v211 - 6));
          v191 = v188;
          if (v188)
          {
            sub_1D5D2CFE8(v183, type metadata accessor for FormatVersionRequirement);

            v76 = v178;
            return sub_1D5D2CFE8(v76, sub_1D666CE3C);
          }

          v194 = v190;

          if (v194)
          {
            v239 = v237;
            v240 = 0;
            v241 = v214;
            sub_1D5C34D84(0, &qword_1EDF1B448, &type metadata for FormatType, MEMORY[0x1E69E62F8]);
            sub_1D6659404();
            sub_1D72647EC();

            sub_1D5D2CFE8(v215, type metadata accessor for FormatVersionRequirement);
          }

          else
          {
            sub_1D5D2CFE8(v215, type metadata accessor for FormatVersionRequirement);
          }

          v192 = v213;
          v159 = v236;
          v193 = v231;
          v118 = v226;
          v176 = v229;
          v95 = v211;
        }

        else
        {
          sub_1D5D2CFE8(v175, type metadata accessor for FormatVersionRequirement);
          v191 = v228;
          v192 = v213;
          v193 = v231;
        }

        v176(v192, v118, v193);
        swift_storeEnumTagMultiPayload();
        v237 = xmmword_1D72BAAD0;
        v239 = xmmword_1D72BAAD0;
        v240 = 0;
        LOBYTE(v241) = 0;
        v195 = swift_allocObject();
        v197 = v195;
        *(v195 + 16) = v237;
        *(v195 + 32) = v241;
        v198 = v230;
        *(v195 + 40) = v230;
        *(v195 + 48) = v159;
        if (v212 == 7)
        {
        }

        else
        {
          v236 = &v211;
          LOBYTE(v241) = v212;
          MEMORY[0x1EEE9AC00](v195, v196);
          *(&v211 - 4) = sub_1D5B4AA6C;
          *(&v211 - 3) = 0;
          v209 = sub_1D6708940;
          v210 = v197;
          v243 = 0;
          v199 = swift_allocObject();
          *(v199 + 16) = v237;
          *(v199 + 32) = v243;
          *(v199 + 40) = v198;
          *(v199 + 48) = v159;
          swift_retain_n();
          v200 = sub_1D72647CC();
          v243 = 0;
          v201 = swift_allocObject();
          *(v201 + 16) = v200;
          *(v201 + 24) = v237;
          *(v201 + 40) = v243;
          v202 = __swift_project_boxed_opaque_existential_1(v95, *(v95 + 3));
          MEMORY[0x1EEE9AC00](v202, v203);
          MEMORY[0x1EEE9AC00](v204, v205);
          *(&v211 - 4) = sub_1D615B4A4;
          *(&v211 - 3) = (&v211 - 6);
          v192 = v213;
          v209 = sub_1D6708940;
          v210 = v199;
          v207 = sub_1D5D2F7A4(v213, sub_1D615B49C, v206, sub_1D615B4A4, (&v211 - 6));
          if (v191)
          {
            sub_1D5D2CFE8(v192, type metadata accessor for FormatVersionRequirement);

            v116 = v238;
            goto LABEL_15;
          }

          v208 = v207;

          if (v208)
          {
            sub_1D6327494();
            v116 = v238;
            sub_1D72647EC();
            goto LABEL_63;
          }
        }

        v116 = v238;
LABEL_63:
        sub_1D5D2CFE8(v192, type metadata accessor for FormatVersionRequirement);

        goto LABEL_15;
      }
    }

    else
    {

      v148 = v218;
    }

    sub_1D5D2CFE8(v146, type metadata accessor for FormatVersionRequirement);
    v159 = v236;
    v160 = v230;
    goto LABEL_41;
  }

  sub_1D5D2CFE8(v67, type metadata accessor for FormatVersionRequirement);

  v76 = v66;
  return sub_1D5D2CFE8(v76, sub_1D666CE3C);
}

uint64_t FormatBundleImage.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v101 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v109 = (&v97 - v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v97 - v11;
  sub_1D666CF60();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v19 = *(v1 + 8);
  v20 = *(v1 + 24);
  v100 = *(v1 + 16);
  v104 = v20;
  v21 = *(v1 + 40);
  v99 = *(v1 + 32);
  v98 = v21;
  v122 = *(v1 + 48);
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1D5CCFACC();
  v25 = v24;
  v26 = sub_1D5B58B84(&qword_1EDF25648, sub_1D5CCFACC);
  sub_1D5D2EE70(&type metadata for FormatBundleImage, v25, v27, v22, &type metadata for FormatBundleImage, v25, &type metadata for FormatVersions.JazzkonC, v23, v17, v26, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v28 = sub_1D725BD1C();
  v29 = __swift_project_value_buffer(v28, qword_1EDFFCD30);
  v30 = *(v28 - 8);
  v31 = *(v30 + 16);
  v102 = v29;
  v107 = v31;
  v108 = v28;
  v106 = v30 + 16;
  (v31)(v12);
  v105 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v116 = v18;
  v117 = v19;
  v119 = 0uLL;
  v120 = 0;
  v32 = &v17[*(v14 + 44)];
  v33 = *v32;
  v34 = *(v32 + 1);
  v121 = 0;
  v35 = swift_allocObject();
  *&v113 = &v97;
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v121;
  *(v35 + 40) = v33;
  *(v35 + 48) = v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v112 = (&v97 - 6);
  *(&v97 - 4) = sub_1D5B4AA6C;
  *(&v97 - 3) = 0;
  v95 = sub_1D6708944;
  v96 = v37;
  v121 = 0;
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = v121;
  v103 = v33;
  *(v38 + 40) = v33;
  *(v38 + 48) = v34;
  sub_1D666CFF4();
  v40 = v39;
  v41 = sub_1D5B58B84(&qword_1EDF036C8, sub_1D666CFF4);
  swift_retain_n();
  v110 = v41;
  v111 = v40;
  v42 = sub_1D72647CC();
  v121 = 0;
  v43 = swift_allocObject();
  *(v43 + 24) = 0;
  *(v43 + 32) = 0;
  *(v43 + 16) = v42;
  *(v43 + 40) = v121;
  v44 = *(v14 + 36);
  v45 = v12;
  v115 = v17;
  v46 = &v17[v44];
  v47 = __swift_project_boxed_opaque_existential_1(&v17[v44], *&v17[v44 + 24]);
  MEMORY[0x1EEE9AC00](v47, v48);
  MEMORY[0x1EEE9AC00](v49, v50);
  v51 = v112;
  *(&v97 - 4) = sub_1D615B4A4;
  *(&v97 - 3) = v51;
  v95 = sub_1D6708944;
  v96 = v38;
  v52 = v114;
  sub_1D5D2BC70(v45, sub_1D615B49C, v53, sub_1D615B4A4, (&v97 - 6));
  if (v52)
  {
    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);

    v54 = v115;
  }

  else
  {
    v112 = v46;
    *&v114 = v34;

    v54 = v115;
    sub_1D72647EC();
    sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);

    v55 = v109;
    v107(v109, v102, v108);
    swift_storeEnumTagMultiPayload();
    v113 = xmmword_1D728CF30;
    v119 = xmmword_1D728CF30;
    v120 = 0;
    LOBYTE(v116) = 0;
    v56 = swift_allocObject();
    v58 = v56;
    *(v56 + 16) = v113;
    *(v56 + 32) = v116;
    v59 = v103;
    v60 = v104;
    v61 = v114;
    *(v56 + 40) = v103;
    *(v56 + 48) = v61;
    if (v60)
    {
      v102 = &v97;
      v116 = v100;
      v117 = v60;
      MEMORY[0x1EEE9AC00](v56, v57);
      *(&v97 - 4) = sub_1D5B4AA6C;
      *(&v97 - 3) = 0;
      v95 = sub_1D6708944;
      v96 = v58;
      v121 = 0;
      v62 = swift_allocObject();
      *(v62 + 16) = v113;
      *(v62 + 32) = v121;
      *(v62 + 40) = v59;
      *(v62 + 48) = v61;
      swift_retain_n();

      v63 = sub_1D72647CC();
      v121 = 0;
      v64 = swift_allocObject();
      *(v64 + 16) = v63;
      *(v64 + 24) = v113;
      *(v64 + 40) = v121;
      v65 = __swift_project_boxed_opaque_existential_1(v112, *(v112 + 3));
      MEMORY[0x1EEE9AC00](v65, v66);
      MEMORY[0x1EEE9AC00](v67, v68);
      *(&v97 - 4) = sub_1D615B4A4;
      *(&v97 - 3) = (&v97 - 6);
      v69 = v109;
      v95 = sub_1D6708944;
      v96 = v62;
      v71 = sub_1D5D2F7A4(v109, sub_1D615B49C, v70, sub_1D615B4A4, (&v97 - 6));
      v73 = v71;

      v72 = v101;
      if (v73)
      {
        v54 = v115;
        sub_1D72647EC();
        v61 = v114;

        sub_1D5D2CFE8(v69, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v69, type metadata accessor for FormatVersionRequirement);
        v54 = v115;
        v61 = v114;
      }

      v59 = v103;
    }

    else
    {

      sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);

      v72 = v101;
    }

    v74 = v122;
    v75 = v108;
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v76 = __swift_project_value_buffer(v75, qword_1EDFFCD18);
    v107(v72, v76, v75);
    swift_storeEnumTagMultiPayload();
    v114 = xmmword_1D7297410;
    v119 = xmmword_1D7297410;
    v120 = 0;
    LOBYTE(v116) = 0;
    v77 = swift_allocObject();
    v79 = v77;
    *(v77 + 16) = v114;
    *(v77 + 32) = v116;
    *(v77 + 40) = v59;
    *(v77 + 48) = v61;
    if (v74 == 255)
    {

      sub_1D5D2CFE8(v72, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      *&v113 = &v97;
      v80 = v99;
      v81 = v98;
      v116 = v99;
      v117 = v98;
      v118 = v74;
      MEMORY[0x1EEE9AC00](v77, v78);
      v109 = &v97 - 6;
      *(&v97 - 4) = sub_1D5B4AA6C;
      *(&v97 - 3) = 0;
      v95 = sub_1D6708944;
      v96 = v79;
      v121 = 0;
      v82 = swift_allocObject();
      *(v82 + 16) = v114;
      *(v82 + 32) = v121;
      *(v82 + 40) = v59;
      *(v82 + 48) = v61;
      swift_retain_n();
      sub_1D5E433CC(v80, v81, v74);
      v83 = sub_1D72647CC();
      v121 = 0;
      v84 = swift_allocObject();
      *(v84 + 16) = v83;
      *(v84 + 24) = v114;
      *(v84 + 40) = v121;
      v85 = __swift_project_boxed_opaque_existential_1(v112, *(v112 + 3));
      MEMORY[0x1EEE9AC00](v85, v86);
      MEMORY[0x1EEE9AC00](v87, v88);
      v89 = v109;
      *(&v97 - 4) = sub_1D615B4A4;
      *(&v97 - 3) = v89;
      v90 = v101;
      v95 = sub_1D666D088;
      v96 = v82;
      v92 = sub_1D5D2F7A4(v101, sub_1D615B49C, v91, sub_1D615B4A4, (&v97 - 6));
      v93 = v92;

      if (v93)
      {
        sub_1D62EC7A8();
        v54 = v115;
        sub_1D72647EC();

        sub_1D5E43440(v116, v117, v118);
        sub_1D5D2CFE8(v90, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5E43440(v116, v117, v118);
        sub_1D5D2CFE8(v90, type metadata accessor for FormatVersionRequirement);
        v54 = v115;
      }
    }
  }

  return sub_1D5D2CFE8(v54, sub_1D666CF60);
}

uint64_t sub_1D6418464(char a1, uint64_t a2)
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
  v13[2] = sub_1D670918C;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F6E9C();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D64185B8(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v14 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D6705F68;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705F90();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641870C(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v14 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D6700E2C;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6700E54();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D6418860(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v14 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D6702F3C;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702F64();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D64189B4(char a1, uint64_t a2)
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
  v13[2] = sub_1D67091A4;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F795C();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D6418B08(char a1, uint64_t a2)
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
  v13[2] = sub_1D67027DC;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702804();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D6418C5C(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v14 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D6709110;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705FE4();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D6418DB0(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v14 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D67090A8;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F88BC();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D6418F04(char a1, uint64_t a2)
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
  v13[2] = sub_1D67092A8;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702BB0();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D6419058(uint64_t a1)
{
  sub_1D5D30DC4();
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v11[2] = sub_1D67023E4;
  v11[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v11);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702408();
    v11[4] = 0;
    v11[5] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641919C(char a1, uint64_t a2)
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
  v13[2] = sub_1D66FAC14;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FAC3C();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D64192F0(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v14 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D66FAB98;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FABC0();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D6419444(char a1, uint64_t a2)
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
  v13[2] = sub_1D66F13AC;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F13D4();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D6419598(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v14 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D670622C;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6706254();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D64196EC(char a1, uint64_t a2)
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
  v13[2] = sub_1D6709270;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6700ED0();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D6419840(char a1, uint64_t a2)
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
  v13[2] = sub_1D6709304;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705CD0();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D6419994(char a1, uint64_t a2)
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
  v13[2] = sub_1D67091FC;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FC70C();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D6419AE8(char a1, uint64_t a2)
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
  v13[2] = sub_1D67092C4;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6703D5C();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D6419C3C(char a1, uint64_t a2)
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
  v13[2] = sub_1D6700DB0;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6700DD8();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D6419D90(char a1, uint64_t a2)
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
  v13[2] = sub_1D66FA458;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FA480();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D6419EE4(char a1, uint64_t a2)
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
  v13[2] = sub_1D67091F0;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FBCC4();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641A038(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v14 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D66F66CC;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F66F4();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641A18C(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v14 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D66F9D68;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F9D90();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641A2E0(char a1, uint64_t a2)
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
  v13[2] = sub_1D66F9DE4;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F9E0C();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641A434(char a1, uint64_t a2)
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
  v13[2] = sub_1D66F9CEC;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F9D14();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641A588(char a1, uint64_t a2)
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
  v13[2] = sub_1D6703154;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D670317C();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641A6DC(uint64_t a1)
{
  sub_1D5D30DC4();
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v11[2] = sub_1D66F9FC0;
  v11[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v11);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F9FE4();
    v11[4] = 0;
    v11[5] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641A820(char a1, uint64_t a2)
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
  v13[2] = sub_1D6702368;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702390();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641A974(char a1, uint64_t a2)
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
  v13[2] = sub_1D670915C;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F4F30();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641AAC8(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v14 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D6709100;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67033D4();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641AC1C(char a1, uint64_t a2)
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
  v13[2] = sub_1D6709298;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67024D8();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641AD70(char a1, uint64_t a2)
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
  v13[2] = sub_1D6709308;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705EEC();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641AEC4(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v14 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D6707B04;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6707B2C();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641B018(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v14 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D6705928;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705950();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641B16C(char a1, uint64_t a2)
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
  v13[2] = sub_1D67092B0;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702E48();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641B2C0(uint64_t a1)
{
  sub_1D5D30DC4();
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v11[2] = sub_1D6701E60;
  v11[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v11);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701E84();
    v11[4] = 0;
    v11[5] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641B404(char a1, uint64_t a2)
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
  v13[2] = sub_1D67091B8;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F8F60();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641B558(char a1, uint64_t a2)
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
  v13[2] = sub_1D67091D0;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FA3DC();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641B6AC(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v14 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D66FAEA8;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FAED0();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641B800(char a1, uint64_t a2)
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
  v13[2] = sub_1D6709278;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701268();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641B954(uint64_t a1)
{
  sub_1D5D30DC4();
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v11[2] = sub_1D66F7678;
  v11[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v11);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F769C();
    v11[4] = 0;
    v11[5] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641BA98(char a1, uint64_t a2)
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
  v13[2] = sub_1D67091A0;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F7850();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641BBEC(char a1, uint64_t a2)
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
  v13[2] = sub_1D66F7F7C;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F7FA4();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641BD40(char a1, uint64_t a2)
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
  v13[2] = sub_1D67091B0;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F8910();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641BE94(char a1, uint64_t a2)
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
  v13[2] = sub_1D6709320;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6706C98();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641BFE8(char a1, uint64_t a2)
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
  v13[2] = sub_1D67091F8;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FC600();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641C13C(char a1, uint64_t a2)
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
  v13[2] = sub_1D66F14A4;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F14CC();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641C290(char a1, uint64_t a2)
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
  v13[2] = sub_1D67092A4;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6666858();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641C3E4(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v14 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D67090AC;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F89E0();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641C538(uint64_t a1)
{
  sub_1D5D30DC4();
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v11[2] = sub_1D66F9BF8;
  v11[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v11);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F9C1C();
    v11[4] = 0;
    v11[5] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641C67C(char a1, uint64_t a2)
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
  v13[2] = sub_1D67091C8;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F9C70();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641C7D0(char a1, uint64_t a2)
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
  v13[2] = sub_1D67091C4;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F9B50();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641C924(char a1, uint64_t a2)
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
  v13[2] = sub_1D67092B4;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67031F8();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641CA78(char a1, uint64_t a2)
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
  v13[2] = sub_1D670920C;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FDA98();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641CBCC(char a1, uint64_t a2)
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
  v13[2] = sub_1D66F1220;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D66F1248, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F1250();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641CD20(char a1, uint64_t a2)
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
  v13[2] = sub_1D670923C;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FEEB0();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641CE74(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v14 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D66FF328;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FF350();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641CFC8(uint64_t a1)
{
  sub_1D5D30DC4();
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v11[2] = sub_1D6704244;
  v11[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v11);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6704268();
    v11[4] = 0;
    v11[5] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641D10C(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v14 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D6701598;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67015C0();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641D260(char a1, uint64_t a2)
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
  v13[2] = sub_1D6709280;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67014C8();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641D3B4(char a1, uint64_t a2)
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
  v13[2] = sub_1D6709284;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6701614();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641D508(char a1, uint64_t a2)
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
  v13[2] = sub_1D670929C;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D670257C();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641D65C(char a1, uint64_t a2)
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
  v13[2] = sub_1D67092F4;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D670581C();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641D7B0(uint64_t a1)
{
  sub_1D5D30DC4();
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v11[2] = sub_1D66F86A0;
  v11[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v11);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F86C4();
    v11[4] = 0;
    v11[5] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641D8F4(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v14 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D6705E70;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6705E98();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641DA48(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v14 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D670312C;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D61A707C();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641DB9C(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v14 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D6709080;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F23B8();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641DCF0(char a1, uint64_t a2)
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
  v13[2] = sub_1D6709268;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6700860();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641DE44(uint64_t a1)
{
  sub_1D5D30DC4();
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v11[2] = sub_1D66F5484;
  v11[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v11);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F54A8();
    v11[4] = 0;
    v11[5] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641DF88(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v14 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D6709088;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F52E8();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641E0DC(char a1, uint64_t a2)
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
  v13[2] = sub_1D66F5408;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F5430();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641E230(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v14 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D670657C;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67065A4();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641E384(uint64_t a1)
{
  sub_1D5D30DC4();
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v11[2] = sub_1D66F5390;
  v11[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v11);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F53B4();
    v11[4] = 0;
    v11[5] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641E4C8(char a1, uint64_t a2)
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
  v13[2] = sub_1D66FD230;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FD258();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641E61C(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v14 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D66FD3A0;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FD3C8();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641E770(char a1, uint64_t a2)
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
  v13[2] = sub_1D66FD0BC;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FD0E4();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641E8C4(char a1, uint64_t a2)
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
  v13[2] = sub_1D66FD1B4;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FD1DC();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641EA18(char a1, uint64_t a2)
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
  v13[2] = sub_1D6703F74;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6703F9C();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641EB6C(char a1, uint64_t a2)
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
  v13[2] = sub_1D6709204;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FCE2C();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641ECC0(char a1, uint64_t a2)
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
  v13[2] = sub_1D66FD2AC;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FD2D4();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641EE14(char a1, uint64_t a2)
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
  v13[2] = sub_1D66FCD88;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FCDB0();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641EF68(uint64_t a1)
{
  sub_1D5D30DC4();
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v11[2] = sub_1D66FD328;
  v11[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v11);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FD34C();
    v11[4] = 0;
    v11[5] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641F0AC(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v14 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D66FCF50;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FCF78();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641F200(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v14 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D66FCED4;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FCEFC();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641F354(uint64_t a1)
{
  sub_1D5D30DC4();
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v11[2] = sub_1D66FD044;
  v11[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v11);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FD068();
    v11[4] = 0;
    v11[5] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641F498(uint64_t a1)
{
  sub_1D5D30DC4();
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v11[2] = sub_1D66FCFCC;
  v11[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v11);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FCFF0();
    v11[4] = 0;
    v11[5] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641F5DC(char a1, uint64_t a2)
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
  v13[2] = sub_1D66F1428;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F1450();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641F730(uint64_t a1)
{
  sub_1D5D30DC4();
  v5 = (v1 + *(v4 + 44));
  v7 = *v5;
  v6 = v5[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v11[2] = sub_1D66F55F4;
  v11[3] = v8;

  v9 = sub_1D5D31088(a1, 0, 0, sub_1D6709140, v11);
  if (!v2 && (v9 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F5618();
    v11[4] = 0;
    v11[5] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641F874(char a1, uint64_t a2)
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
  v13[2] = sub_1D6709164;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F5524();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641F9C8(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v14 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D6702FB8;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702FE0();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641FB1C(char a1, uint64_t a2)
{
  v5 = a1 & 1;
  v14 = a1 & 1;
  sub_1D5D30DC4();
  v7 = (v2 + *(v6 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  *(v10 + 32) = v8;
  v13[2] = sub_1D67090F4;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6702D78();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641FC70(char a1, uint64_t a2)
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
  v13[2] = sub_1D66F9138;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F9160();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641FDC4(char a1, uint64_t a2)
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
  v13[2] = sub_1D67092C8;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D6703E78();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D641FF18(char a1, uint64_t a2)
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
  v13[2] = sub_1D66FA8C8;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FA8F0();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D642006C(char a1, uint64_t a2)
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
  v13[2] = sub_1D66FA944;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FA96C();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D64201C0(char a1, uint64_t a2)
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
  v13[2] = sub_1D6709324;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67081C0();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}

uint64_t sub_1D6420314(char a1, uint64_t a2)
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
  v13[2] = sub_1D67091F4;
  v13[3] = v10;

  v11 = sub_1D5D31088(a2, 0, 0, sub_1D6709140, v13);
  if (!v3 && (v11 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FBD40();
    v13[5] = 0;
    v13[6] = 0;
    sub_1D72647EC();
  }
}