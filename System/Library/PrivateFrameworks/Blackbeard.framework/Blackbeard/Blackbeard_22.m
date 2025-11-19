uint64_t sub_1E60B19A0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for AppState() + 172);
  v4 = *(v3 + 8);

  *(v3 + 8) = v2;
  return result;
}

uint64_t sub_1E60B19F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v122 = a6;
  v109 = a5;
  LODWORD(v120) = a4;
  LODWORD(v126) = a3;
  v118 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072630, &qword_1E65EB948);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v117 = &v104 - v11;
  v12 = sub_1E65E0438();
  v111 = *(v12 - 8);
  v112 = v12;
  v13 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v125 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for SectionMetrics();
  v113 = *(v116 - 8);
  v15 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v124 = (&v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v108 = &v104 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072640, &qword_1E65EB958);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v107 = &v104 - v22;
  v23 = sub_1E65D7848();
  v105 = *(v23 - 8);
  v24 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1E65E5C28();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v104 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1E65D72D8();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v106 = &v104 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
  v35 = *(*(v110 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v110);
  v38 = (&v104 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = MEMORY[0x1EEE9AC00](v36);
  v123 = &v104 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v128 = (&v104 - v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072648, &qword_1E65EB960);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x1EEE9AC00](v42 - 8);
  v121 = &v104 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v127 = &v104 - v46;
  v47 = *(type metadata accessor for AppComposer() + 20);
  v119 = a2;
  v48 = *(a2 + v47 + 8);
  v114 = a1;
  if (sub_1E65DF4D8() == 0x796C746E65636572 && v49 == 0xED00006465646441)
  {
  }

  else
  {
    v50 = sub_1E65E6C18();

    if ((v50 & 1) == 0)
    {
LABEL_10:
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
      (*(*(v58 - 8) + 56))(v127, 1, 1, v58);
      goto LABEL_11;
    }
  }

  v51 = sub_1E65DAE38();
  if (v51 == sub_1E65DAE38() || (v126 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_1E65E5BA8();
  v52 = *v119;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65DF228();
  (*(v105 + 8))(v26, v23);
  (*(v28 + 8))(v31, v27);
  if (qword_1EE2D7270 != -1)
  {
    swift_once();
  }

  v53 = sub_1E65D7348();
  __swift_project_value_buffer(v53, qword_1EE2EA268);
  sub_1E65E5D38();

  v54 = type metadata accessor for SectionHeaderSubtitleDescriptor();
  (*(*(v54 - 8) + 56))(v107, 1, 1, v54);
  v55 = type metadata accessor for ActionButtonDescriptor(0);
  (*(*(v55 - 8) + 56))(v108, 1, 1, v55);
  sub_1E60C330C(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
  sub_1E60C330C(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
  v56 = v127;
  sub_1E65E0458();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
  (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
LABEL_11:
  v59 = v128;
  if (v48 < 2)
  {
    v60 = sub_1E65DF628();
    v61 = 1;
    if (v60 < 7u)
    {
      v61 = 2;
    }

    v62 = 2;
    if (v60 < 7u)
    {
      v62 = 3;
    }

    v63 = 20.0;
    if (v126)
    {
      v63 = 10.0;
    }

    else
    {
      v61 = v62;
    }

    *v38 = v61;
    v38[1] = v63;
    v64 = *MEMORY[0x1E699D840];
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072678, &qword_1E65EB988);
    (*(*(v65 - 8) + 104))(v38, v64, v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072680, &qword_1E65EB990);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v66 = sub_1E65DF568();
    v68 = v67;
    if (v66 == sub_1E65DF568() && v68 == v69)
    {

LABEL_25:
      sub_1E5FAB460(v38, v59, &qword_1ED072650, &qword_1E65EB968);
LABEL_29:
      v73 = v120;
      v74 = sub_1E65DF568();
      v76 = v75;
      v77 = sub_1E65DF548();
      v79 = v78;
      v80 = v116;
      v81 = *(v116 + 24);
      v82 = *MEMORY[0x1E69CBCB0];
      v83 = sub_1E65D8F28();
      v84 = v124;
      (*(*(v83 - 8) + 104))(v124 + v81, v82, v83);
      v85 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
      *v84 = v74;
      v84[1] = v76;
      v84[2] = v77;
      v84[3] = v79;
      *(v84 + *(v80 + 32)) = v85;
      v86 = v114;
      v87 = sub_1E65DF4D8();
      v109 = v88;
      v110 = v87;
      sub_1E5DFD1CC(v128, v123, &qword_1ED072650, &qword_1E65EB968);
      sub_1E5DFD1CC(v127, v121, &qword_1ED072648, &qword_1E65EB960);
      (*(v111 + 104))(v125, *MEMORY[0x1E699D7D8], v112);
      v89 = sub_1E65DF4E8();
      MEMORY[0x1EEE9AC00](v89);
      v99 = v86;
      v100 = v122;
      v101 = v119;
      v102 = v73;
      v103 = v126 & 1;
      v90 = v115;
      v122 = sub_1E5F9F768(sub_1E60C32E0, v98, v89);
      v126 = v90;

      v91 = v117;
      sub_1E5E1D41C(v84, v117, type metadata accessor for SectionMetrics);
      (*(v113 + 56))(v91, 0, 1, v80);
      v120 = type metadata accessor for ActionButtonDescriptor(0);
      v119 = type metadata accessor for ArtworkDescriptor();
      v115 = type metadata accessor for ContextMenu(0);
      v114 = type metadata accessor for ItemContext();
      v113 = type metadata accessor for ItemMetrics();
      v112 = type metadata accessor for SectionHeaderSubtitleDescriptor();
      v111 = type metadata accessor for ViewDescriptor();
      v108 = sub_1E60C330C(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
      v107 = sub_1E60C330C(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
      v106 = sub_1E60C330C(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
      sub_1E60C330C(&qword_1EE2DB720, type metadata accessor for ItemContext);
      sub_1E60C330C(&qword_1EE2DB738, type metadata accessor for ItemContext);
      sub_1E60C330C(&qword_1EE2DB730, type metadata accessor for ItemContext);
      v92 = sub_1E60C330C(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
      v93 = sub_1E60C330C(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
      v94 = sub_1E5DF11E0();
      v95 = sub_1E60C330C(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
      v96 = sub_1E60C330C(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
      v100 = v95;
      v101 = v96;
      v98[1] = v93;
      v99 = v94;
      v98[0] = v92;
      sub_1E65E0418();
      sub_1E60C3430(v124, type metadata accessor for SectionMetrics);
      sub_1E5DFE50C(v128, &qword_1ED072650, &qword_1E65EB968);
      return sub_1E5DFE50C(v127, &qword_1ED072648, &qword_1E65EB960);
    }

    v70 = sub_1E65E6C18();

    if ((v70 & 1) != 0 || (v126 & 1) == 0)
    {
      goto LABEL_25;
    }

    sub_1E5DFE50C(v38, &qword_1ED072650, &qword_1E65EB968);
    *v59 = 2;
LABEL_28:
    swift_storeEnumTagMultiPayload();
    goto LABEL_29;
  }

  if (v48 == 3)
  {
    *v128 = 3;
    v59[1] = 0x4044000000000000;
    v71 = *MEMORY[0x1E699D840];
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072678, &qword_1E65EB988);
    (*(*(v72 - 8) + 104))(v59, v71, v72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072680, &qword_1E65EB990);
    swift_storeEnumTagMultiPayload();
    goto LABEL_28;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E60B29A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, int a3@<W4>, int a4@<W5>, uint64_t a5@<X8>)
{
  v33 = a4;
  v35 = a3;
  v37 = a5;
  v36 = sub_1E65E03F8();
  v7 = *(*(v36 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v36);
  v34 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = type metadata accessor for ItemContext();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v32[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32[-v15];
  v38 = sub_1E65DF4D8();
  v39 = v17;
  MEMORY[0x1E694D7C0](45, 0xE100000000000000);
  v18 = sub_1E65DF378();
  MEMORY[0x1E694D7C0](v18);

  MEMORY[0x1E694D7C0](45, 0xE100000000000000);
  v19 = sub_1E65DF398();
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xE000000000000000;
  }

  MEMORY[0x1E694D7C0](v19, v21);

  MEMORY[0x1E694D7C0](45, 0xE100000000000000);
  sub_1E65D7848();
  sub_1E60C330C(&qword_1EE2D7180, MEMORY[0x1E6969770]);
  v22 = sub_1E65E6BC8();
  MEMORY[0x1E694D7C0](v22);

  v23 = *(a2 + *(type metadata accessor for AppComposer() + 20) + 8);
  if (v23 < 2)
  {
    v24 = sub_1E65DF568();
    v26 = v25;
    if (v24 == sub_1E65DF568() && v26 == v27)
    {
    }

    else
    {
      v28 = sub_1E65E6C18();

      if ((v28 & 1) == 0)
      {
        v31 = sub_1E65DF3B8();
        (*(*(v31 - 8) + 16))(v14, a1, v31);
        type metadata accessor for LibraryItemContext();
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        if (v33)
        {
          sub_1E65E0AC8();
        }

        else
        {
          sub_1E65E0A68();
        }

        swift_storeEnumTagMultiPayload();
        sub_1E60C330C(&qword_1EE2DB720, type metadata accessor for ItemContext);
        sub_1E60C330C(&qword_1EE2DB738, type metadata accessor for ItemContext);
        sub_1E60C330C(&qword_1EE2DB730, type metadata accessor for ItemContext);
        sub_1E65E04D8();
        goto LABEL_12;
      }
    }

LABEL_11:
    v29 = sub_1E65DF3B8();
    (*(*(v29 - 8) + 16))(v16, a1, v29);
    type metadata accessor for LibraryItemContext();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1E65E0A68();
    swift_storeEnumTagMultiPayload();
    sub_1E60C330C(&qword_1EE2DB720, type metadata accessor for ItemContext);
    sub_1E60C330C(&qword_1EE2DB738, type metadata accessor for ItemContext);
    sub_1E60C330C(&qword_1EE2DB730, type metadata accessor for ItemContext);
    sub_1E65E04D8();
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0720A8, &qword_1E65EA790);
    return swift_storeEnumTagMultiPayload();
  }

  if (v23 == 3)
  {
    goto LABEL_11;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E60B3068()
{
  v1[3] = v0;
  v2 = sub_1E65DF3B8();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743E0, &qword_1E65F0AE8);
  v1[8] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v7 = sub_1E65D76A8();
  v1[12] = v7;
  v8 = *(v7 - 8);
  v1[13] = v8;
  v9 = *(v8 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072910, &qword_1E65EC030);
  v1[16] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072918, &qword_1E65EC038);
  v1[19] = v12;
  v13 = *(v12 - 8);
  v1[20] = v13;
  v14 = *(v13 + 64) + 15;
  v1[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60B32A0, 0, 0);
}

uint64_t sub_1E60B32A0()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v7 = **(v0 + 24);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  (*(v2 + 8))(v1, v3);
  sub_1E5FAB460(v4, v5, &qword_1ED072910, &qword_1E65EC030);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v13 = **(v0 + 136);
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v9 = *(v0 + 136);
      v10 = *(v0 + 96);
      v11 = *(v0 + 104);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072930, &qword_1E65EC070);
      v13 = *v9;
      (*(v11 + 8))(&v9[*(v12 + 48)], v10);
      goto LABEL_8;
    }

    sub_1E5DFE50C(*(v0 + 136), &qword_1ED072910, &qword_1E65EC030);
  }

  v13 = MEMORY[0x1E69E7CD0];
LABEL_8:
  *(v0 + 176) = v13;
  v14 = *(v0 + 24);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743E8, &qword_1E65F0AF0);
  v16 = swift_task_alloc();
  *(v0 + 184) = v16;
  *(v16 + 16) = v14;
  *(v16 + 24) = v13;
  v17 = *(MEMORY[0x1E69E88A0] + 4);
  v18 = swift_task_alloc();
  *(v0 + 192) = v18;
  *v18 = v0;
  v18[1] = sub_1E60B34BC;

  return MEMORY[0x1EEE6DD58](v0 + 16, v15, v15, 0, 0, &unk_1E65F0B00, v16, v15);
}

uint64_t sub_1E60B34BC()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v8 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_1E60B3DAC;
  }

  else
  {
    v5 = *(v2 + 176);
    v6 = *(v2 + 184);

    v4 = sub_1E60B35E0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E60B35E0()
{
  v100 = v0;
  v1 = v0[2];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v0[13];
    v78 = v0[8];
    v5 = v0[5];
    v99 = MEMORY[0x1E69E7CC0];
    sub_1E601C578(0, v2, 0);
    v3 = v99;
    v6 = v1 + 64;
    v7 = -1 << *(v1 + 32);
    result = sub_1E65E6748();
    v9 = result;
    v10 = 0;
    v77 = v5;
    v76 = v4;
    v73 = v1 + 72;
    v74 = v2;
    v79 = v1;
    v81 = v0;
    v75 = v1 + 64;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v1 + 32))
    {
      if ((*(v6 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_51;
      }

      v86 = 1 << v9;
      v88 = v9 >> 6;
      v83 = v10;
      v84 = *(v1 + 36);
      v90 = *(v78 + 48);
      v12 = v1;
      v13 = v0[11];
      v14 = v0[12];
      v96 = v3;
      v16 = v0[9];
      v15 = v0[10];
      v17 = v0[4];
      v92 = v0[15];
      v93 = *(v4 + 72);
      (*(v4 + 16))(v13, *(v12 + 48) + v93 * v9, v14);
      v95 = v9;
      (*(v77 + 16))(v13 + v90, *(v12 + 56) + *(v77 + 72) * v9, v17);
      v18 = *(v4 + 32);
      v18(v15, v13, v14);
      (*(v77 + 32))(v15 + *(v78 + 48), v13 + v90, v17);
      sub_1E5FAB460(v15, v16, &qword_1ED0743E0, &qword_1E65F0AE8);
      v19 = *(v78 + 48);
      v20 = v14;
      v21 = v18;
      v18(v92, v16, v20);
      v22 = v16 + v19;
      v3 = v96;
      (*(v77 + 8))(v22, v17);
      v99 = v96;
      v24 = v96[2];
      v23 = v96[3];
      if (v24 >= v23 >> 1)
      {
        sub_1E601C578(v23 > 1, v24 + 1, 1);
        v3 = v99;
      }

      v0 = v81;
      v25 = v81[15];
      v26 = v81[12];
      v3[2] = v24 + 1;
      v4 = v76;
      v21(v3 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + v24 * v93, v25, v26);
      v1 = v79;
      v11 = 1 << *(v79 + 32);
      result = v95;
      if (v95 >= v11)
      {
        goto LABEL_52;
      }

      v6 = v75;
      v27 = *(v75 + 8 * v88);
      if ((v27 & v86) == 0)
      {
        goto LABEL_53;
      }

      if (v84 != *(v79 + 36))
      {
        goto LABEL_54;
      }

      v28 = v27 & (-2 << (v95 & 0x3F));
      if (v28)
      {
        v11 = __clz(__rbit64(v28)) | v95 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v29 = v88 << 6;
        v30 = (v73 + 8 * v88);
        v31 = v88 + 1;
        while (v31 < (v11 + 63) >> 6)
        {
          v33 = *v30++;
          v32 = v33;
          v29 += 64;
          ++v31;
          if (v33)
          {
            result = sub_1E5F87098(v95, v84, 0);
            v11 = __clz(__rbit64(v32)) + v29;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v95, v84, 0);
      }

LABEL_4:
      v10 = v83 + 1;
      v9 = v11;
      if (v83 + 1 == v74)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

LABEL_19:
  v34 = v0[25];
  v99 = v3;

  sub_1E60BAF60(&v99);
  if (v34)
  {
  }

  v35 = v99;
  v36 = v99[2];
  if (v36 >= 0xC)
  {
    v37 = v36 - 12;
  }

  else
  {
    v37 = 0;
  }

  if (v36 != v37)
  {
    v39 = v0[13];
    v97 = v99 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v40 = (v39 + 8);
    v94 = v0[5];
    if (v36 >= 0xC)
    {
      v41 = 12;
    }

    else
    {
      v41 = v99[2];
    }

    v38 = MEMORY[0x1E69E7CC0];
    v80 = v1;
    v82 = v0;
    v87 = v37;
    v89 = v99;
    v85 = v0[13];
    while (v37 < v36)
    {
      if (v36-- < 1)
      {
        goto LABEL_56;
      }

      if (v36 >= v35[2])
      {
        goto LABEL_57;
      }

      (*(v39 + 16))(v0[14], &v97[*(v39 + 72) * v36], v0[12]);
      if (*(v1 + 16) && (v43 = sub_1E64173CC(v0[14]), (v44 & 1) != 0))
      {
        v45 = v0[14];
        v46 = v1;
        v47 = v0[12];
        v48 = v38;
        v50 = v0[6];
        v49 = v0[7];
        v51 = v0[4];
        v91 = *(v94 + 72);
        (*(v94 + 16))(v50, *(v46 + 56) + v91 * v43, v51);
        (*v40)(v45, v47);
        v52 = *(v94 + 32);
        v53 = v50;
        v38 = v48;
        v52(v49, v53, v51);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_1E64F6690(0, v48[2] + 1, 1, v48);
        }

        v55 = v38[2];
        v54 = v38[3];
        v0 = v82;
        v35 = v89;
        v39 = v85;
        if (v55 >= v54 >> 1)
        {
          v38 = sub_1E64F6690(v54 > 1, v55 + 1, 1, v38);
        }

        v56 = v82[7];
        v57 = v82[4];
        v38[2] = v55 + 1;
        result = (v52)(v38 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + v55 * v91, v56, v57);
        v1 = v80;
        v37 = v87;
        if (!--v41)
        {
LABEL_43:

          goto LABEL_44;
        }
      }

      else
      {
        result = (*v40)(v0[14], v0[12]);
        if (!--v41)
        {
          goto LABEL_43;
        }
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    return result;
  }

  v38 = MEMORY[0x1E69E7CC0];
LABEL_44:

  if (v38[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743C8, &qword_1E65F0AB0);
    v58 = *(sub_1E65DF4F8() - 8);
    v59 = *(v58 + 72);
    v60 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1E65EA670;
    v98 = v61;
    sub_1E65DF4C8();
  }

  else
  {

    v98 = MEMORY[0x1E69E7CC0];
  }

  v62 = v0[21];
  v64 = v0[17];
  v63 = v0[18];
  v66 = v0[14];
  v65 = v0[15];
  v68 = v0[10];
  v67 = v0[11];
  v69 = v0[9];
  v70 = v0[6];
  v71 = v0[7];

  v72 = v0[1];

  return v72(v98);
}

uint64_t sub_1E60B3DAC()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[14];
  v6 = v0[15];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];
  v14 = v0[7];
  v15 = v0[6];

  v11 = v0[1];
  v12 = v0[25];

  return v11();
}

uint64_t sub_1E60B3EA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E65D7F58();
  *a1 = result;
  return result;
}

uint64_t sub_1E60B3ED0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1E65D7848();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a3;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E6140BB8(a1, a2, v12, a4);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1E60B3FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074548, &qword_1E65F0D38);
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v8 = *(type metadata accessor for AppComposer() - 8);
  v4[12] = v8;
  v4[13] = *(v8 + 64);
  v4[14] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60B4160, 0, 0);
}

uint64_t sub_1E60B4160()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v16 = v0[13];
  v5 = v0[7];
  v4 = v0[8];
  v17 = v4;
  v19 = v0[6];
  v20 = v0[11];
  v6 = sub_1E65E60A8();
  v18 = *(*(v6 - 8) + 56);
  v18(v1, 1, 1, v6);
  sub_1E5E1D41C(v4, v2, type metadata accessor for AppComposer);
  v7 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v5;
  sub_1E5E1E0B0(v2, v8 + v7, type metadata accessor for AppComposer);

  sub_1E62301E8(v1, &unk_1E65F0D48, v8);
  sub_1E5DFE50C(v1, &unk_1ED0735B0, &qword_1E65EA000);
  v18(v1, 1, 1, v6);
  sub_1E5E1D41C(v17, v2, type metadata accessor for AppComposer);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v5;
  sub_1E5E1E0B0(v2, v9 + v7, type metadata accessor for AppComposer);

  sub_1E62301E8(v1, &unk_1E65F0D58, v9);
  sub_1E5DFE50C(v1, &unk_1ED0735B0, &qword_1E65EA000);
  v0[2] = MEMORY[0x1E69E7CD0];
  v10 = *v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074540, &qword_1E65F0D20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
  sub_1E65E6168();
  v11 = *(MEMORY[0x1E69E8710] + 4);
  v12 = swift_task_alloc();
  v0[16] = v12;
  *v12 = v0;
  v12[1] = sub_1E60B4444;
  v13 = v0[11];
  v14 = v0[9];

  return MEMORY[0x1EEE6DAD8](v0 + 3, 0, 0, v14, v0 + 4);
}

uint64_t sub_1E60B4444()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;

  if (v0)
  {
    v4 = *(v2 + 16);

    v5 = sub_1E60B46A0;
  }

  else
  {
    v5 = sub_1E60B455C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E60B455C()
{
  v1 = v0[3];
  if (v1)
  {
    sub_1E60B5C00(v1);
    v2 = *(MEMORY[0x1E69E8710] + 4);
    v3 = swift_task_alloc();
    v0[16] = v3;
    *v3 = v0;
    v3[1] = sub_1E60B4444;
    v4 = v0[11];
    v5 = v0[9];

    return MEMORY[0x1EEE6DAD8](v0 + 3, 0, 0, v5, v0 + 4);
  }

  else
  {
    v6 = v0[14];
    v7 = v0[15];
    v8 = v0[5];
    (*(v0[10] + 8))(v0[11], v0[9]);
    *v8 = v0[2];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1E60B46A0()
{
  v1 = v0[14];
  v2 = v0[15];
  (*(v0[10] + 8))(v0[11], v0[9]);
  v3 = v0[4];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E60B473C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_1E65DF3B8();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = type metadata accessor for ItemContext();
  v5[8] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v11 = type metadata accessor for LibraryItemContext();
  v5[10] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v13 = sub_1E65D9CC8();
  v5[13] = v13;
  v14 = *(v13 - 8);
  v5[14] = v14;
  v15 = *(v14 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v5[17] = v16;
  v17 = *(v16 - 8);
  v5[18] = v17;
  v18 = *(v17 + 64) + 15;
  v5[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60B493C, 0, 0);
}

uint64_t sub_1E60B493C()
{
  v1 = *(v0 + 24);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 24) + 32);
  v7 = *(v0 + 48);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v8 = v5 & v2;
  v9 = (63 - v6) >> 6;
  v65 = *(v0 + 144);
  v62 = (v7 + 32);
  v63 = (v65 + 8);
  v59 = *(v0 + 112);
  v60 = (v59 + 32);
  v61 = (v7 + 8);
  v64 = *(v0 + 24);

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v14 = v11;
    *(v0 + 160) = v12;
    if (!v8)
    {
      break;
    }

LABEL_9:
    v16 = *(v0 + 64);
    v15 = *(v0 + 72);
    v17 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    (*(v65 + 16))(*(v0 + 152), *(v64 + 48) + *(v65 + 72) * (v17 | (v11 << 6)), *(v0 + 136));
    sub_1E65E04E8();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v19 = *(v0 + 88);
      v18 = *(v0 + 96);
      v20 = *(v0 + 80);
      sub_1E5E1E0B0(*(v0 + 72), v18, type metadata accessor for LibraryItemContext);
      sub_1E5E1D41C(v18, v19, type metadata accessor for LibraryItemContext);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v62)(*(v0 + 56), *(v0 + 88), *(v0 + 40));
        v21 = sub_1E65DF388();
        if (sub_1E62DFD64(v21, &unk_1F5FA8490))
        {
          v28 = *(v0 + 56);
          sub_1E65DF378();
          v29 = qword_1E65F0DE8[sub_1E65DF388()];
          v55 = *(v0 + 136);
          v56 = *(v0 + 152);
          v30 = *(v0 + 120);
          v57 = *(v0 + 104);
          v58 = *(v0 + 128);
          v54 = *(v0 + 96);
          v31 = *(v0 + 56);
          v32 = *(v0 + 40);
          sub_1E65D9C88();
          (*v61)(v31, v32);
          sub_1E60C3430(v54, type metadata accessor for LibraryItemContext);
          (*v63)(v56, v55);
          v33 = *v60;
          (*v60)(v58, v30, v57);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_1E64F610C(0, v12[2] + 1, 1, v12);
          }

          v35 = v12[2];
          v34 = v12[3];
          if (v35 >= v34 >> 1)
          {
            v12 = sub_1E64F610C(v34 > 1, v35 + 1, 1, v12);
          }

          v36 = *(v0 + 128);
          v37 = *(v0 + 104);
          v12[2] = v35 + 1;
          result = v33(v12 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v35, v36, v37);
        }

        else
        {
          v22 = *(v0 + 152);
          v23 = *(v0 + 136);
          v24 = *(v0 + 96);
          (*v61)(*(v0 + 56), *(v0 + 40));
          sub_1E60C3430(v24, type metadata accessor for LibraryItemContext);
          result = (*v63)(v22, v23);
        }
      }

      else
      {
        v25 = *(v0 + 152);
        v26 = *(v0 + 136);
        v27 = *(v0 + 88);
        sub_1E60C3430(*(v0 + 96), type metadata accessor for LibraryItemContext);
        (*v63)(v25, v26);
        result = sub_1E60C3430(v27, type metadata accessor for LibraryItemContext);
      }
    }

    else
    {
      v13 = *(v0 + 72);
      (*v63)(*(v0 + 152), *(v0 + 136));
      result = sub_1E60C3430(v13, type metadata accessor for ItemContext);
    }
  }

  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return result;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v3 + 8 * v11);
    ++v14;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  v38 = *(v0 + 24);

  if (v12[2])
  {
    v39 = *(v0 + 32);
    v40 = v39 + *(type metadata accessor for AppComposer() + 20);
    v41 = v40 + *(type metadata accessor for AppEnvironment() + 48);
    v42 = CatalogService.fetchRemoteCatalogLockups.getter();
    *(v0 + 168) = v43;
    v66 = (v42 + *v42);
    v44 = v42[1];
    v45 = swift_task_alloc();
    *(v0 + 176) = v45;
    *v45 = v0;
    v45[1] = sub_1E60B4F40;

    return (v66)(20, v12);
  }

  else
  {

    v46 = *(v0 + 152);
    v47 = *(v0 + 120);
    v48 = *(v0 + 128);
    v50 = *(v0 + 88);
    v49 = *(v0 + 96);
    v51 = *(v0 + 72);
    v52 = *(v0 + 56);
    **(v0 + 16) = MEMORY[0x1E69E7CD0];

    v53 = *(v0 + 8);

    return v53();
  }
}

uint64_t sub_1E60B4F40(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v7 = sub_1E60B5154;
  }

  else
  {
    v9 = v4[20];
    v8 = v4[21];

    v4[24] = a1;
    v7 = sub_1E60B5078;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E60B5078()
{
  v1 = sub_1E600BEE0(*(v0 + 192));

  v2 = *(v0 + 152);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v0 + 72);
  v8 = *(v0 + 56);
  **(v0 + 16) = v1;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1E60B5154()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[9];
  v9 = v0[7];

  v10 = v0[1];
  v11 = v0[23];

  return v10();
}

uint64_t sub_1E60B5224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_1E65DF3B8();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v9 = type metadata accessor for ItemContext();
  v5[9] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v11 = type metadata accessor for LibraryItemContext();
  v5[11] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v5[15] = v13;
  v14 = *(v13 - 8);
  v5[16] = v14;
  v15 = *(v14 + 64) + 15;
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60B53D4, 0, 0);
}

uint64_t sub_1E60B53D4()
{
  v1 = v0[16];
  v60 = v0[12];
  v2 = v0[3];
  v5 = *(v2 + 56);
  v4 = v2 + 56;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(v0[3] + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = 63 - v7;
  v10 = v0[6];
  v11 = v9 >> 6;
  v64 = (v1 + 8);
  v61 = (v10 + 8);
  v62 = (v10 + 32);
  v65 = v0[3];

  v13 = 0;
  v14 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v63 = v14;
  v0[18] = v14;
  while (1)
  {
    v16 = v13;
    if (!v8)
    {
      break;
    }

LABEL_10:
    v18 = v0[9];
    v17 = v0[10];
    v19 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    (*(v1 + 16))(v0[17], *(v65 + 48) + *(v1 + 72) * (v19 | (v13 << 6)), v0[15]);
    sub_1E65E04E8();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v21 = v0[13];
      v20 = v0[14];
      v22 = v0[11];
      sub_1E5E1E0B0(v0[10], v20, type metadata accessor for LibraryItemContext);
      sub_1E5E1D41C(v20, v21, type metadata accessor for LibraryItemContext);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = *v62;
        (*v62)(v0[8], v0[13], v0[5]);
        sub_1E65DF388();
        v24 = sub_1E65DF528();
        v26 = v25;
        if (v24 == sub_1E65DF528() && v26 == v27)
        {

LABEL_18:
          v35 = v0[11];
          sub_1E5E1D41C(v0[14], v0[12], type metadata accessor for LibraryItemContext);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v37 = v0[17];
          v39 = v0[14];
          v38 = v0[15];
          if (EnumCaseMultiPayload == 1)
          {
            v58 = v0[15];
            v59 = v0[17];
            v40 = v0[7];
            v41 = v0[5];
            v57 = v0[8];
            v23(v40, v0[12], v41);
            v42 = sub_1E65DF378();
            v55 = v43;
            v56 = v42;
            v44 = *v61;
            (*v61)(v40, v41);
            v45 = v41;
            v46 = v56;
            v44(v57, v45);
            v47 = v55;
            sub_1E60C3430(v39, type metadata accessor for LibraryItemContext);
            (*v64)(v59, v58);
          }

          else
          {
            v48 = v0[12];
            (*v61)(v0[8], v0[5]);
            sub_1E60C3430(v39, type metadata accessor for LibraryItemContext);
            (*v64)(v37, v38);
            v46 = *v48;
            v47 = *(v60 + 8);
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1E64F6718(0, *(v63 + 16) + 1, 1, v63);
            v63 = result;
          }

          v50 = *(v63 + 16);
          v49 = *(v63 + 24);
          if (v50 >= v49 >> 1)
          {
            result = sub_1E64F6718((v49 > 1), v50 + 1, 1, v63);
            v63 = result;
          }

          *(v63 + 16) = v50 + 1;
          v51 = v63 + 16 * v50;
          *(v51 + 32) = v46;
          *(v51 + 40) = v47;
          v14 = v63;
          goto LABEL_4;
        }

        v28 = sub_1E65E6C18();

        if (v28)
        {
          goto LABEL_18;
        }

        v29 = v0[17];
        v31 = v0[14];
        v30 = v0[15];
        (*v61)(v0[8], v0[5]);
        sub_1E60C3430(v31, type metadata accessor for LibraryItemContext);
        result = (*v64)(v29, v30);
      }

      else
      {
        v32 = v0[17];
        v33 = v0[15];
        v34 = v0[13];
        sub_1E60C3430(v0[14], type metadata accessor for LibraryItemContext);
        (*v64)(v32, v33);
        result = sub_1E60C3430(v34, type metadata accessor for LibraryItemContext);
      }
    }

    else
    {
      v15 = v0[10];
      (*v64)(v0[17], v0[15]);
      result = sub_1E60C3430(v15, type metadata accessor for ItemContext);
    }
  }

  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v11)
    {
      break;
    }

    v8 = *(v4 + 8 * v13);
    ++v16;
    if (v8)
    {
      goto LABEL_10;
    }
  }

  v52 = v0[3];

  v53 = swift_task_alloc();
  v0[19] = v53;
  *v53 = v0;
  v53[1] = sub_1E60B594C;
  v54 = v0[4];

  return sub_1E60AE8FC(v63);
}

uint64_t sub_1E60B594C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v7 = sub_1E60B5B3C;
  }

  else
  {
    v8 = *(v4 + 144);

    *(v4 + 168) = a1;
    v7 = sub_1E60B5A7C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E60B5A7C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = *(v0 + 80);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  **(v0 + 16) = *(v0 + 168);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1E60B5B3C()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v6 = v0[10];
  v8 = v0[7];
  v7 = v0[8];

  v9 = v0[1];
  v10 = v0[20];

  return v9();
}

uint64_t sub_1E60B5C00(uint64_t a1)
{
  v2 = sub_1E65D8258();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v24 - v9;
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = v24 - v12;
  v14 = 0;
  v25 = a1;
  v17 = *(a1 + 56);
  v16 = a1 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v24[1] = v3 + 32;
  v24[2] = v3 + 16;
  v24[0] = v3 + 8;
  if ((v19 & v15) != 0)
  {
    do
    {
      v22 = v14;
LABEL_9:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      (*(v3 + 16))(v13, *(v25 + 48) + *(v3 + 72) * (v23 | (v22 << 6)), v2);
      (*(v3 + 32))(v7, v13, v2);
      sub_1E60F4CC8(v10, v7);
      result = (*(v3 + 8))(v10, v2);
    }

    while (v20);
  }

  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
    }

    v20 = *(v16 + 8 * v22);
    ++v14;
    if (v20)
    {
      v14 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E60B5E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v213 = a3;
  v245 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072668, &qword_1E65EB978);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v192 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072670, &qword_1E65EB980);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v226 = &v192 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v224 = &v192 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v234 = &v192 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074528, &unk_1E660F4D0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v233 = &v192 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v243 = &v192 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v225 = &v192 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v244 = &v192 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v208 = &v192 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v206 = &v192 - v33;
  v205 = sub_1E65DAC98();
  v203 = *(v205 - 8);
  v34 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v205);
  v200 = &v192 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_1E65DB268();
  v36 = *(*(v207 - 8) + 64);
  MEMORY[0x1EEE9AC00](v207);
  v201 = &v192 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_1E65DA0B8();
  v202 = *(v204 - 8);
  v38 = *(v202 + 64);
  v39 = MEMORY[0x1EEE9AC00](v204);
  v199 = &v192 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v218 = &v192 - v41;
  v198 = sub_1E65D9D58();
  v197 = *(v198 - 8);
  v42 = *(v197 + 64);
  v43 = MEMORY[0x1EEE9AC00](v198);
  v196 = &v192 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v195 = &v192 - v45;
  v214 = sub_1E65D8BB8();
  v46 = *(*(v214 - 8) + 64);
  v47 = MEMORY[0x1EEE9AC00](v214);
  v215 = &v192 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v227 = &v192 - v49;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074530, &qword_1E65F0CA8);
  v50 = *(*(v217 - 8) + 64);
  v51 = MEMORY[0x1EEE9AC00](v217);
  v216 = &v192 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v242 = (&v192 - v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v55 = *(*(v54 - 8) + 64);
  v56 = MEMORY[0x1EEE9AC00](v54 - 8);
  v229 = &v192 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v236 = &v192 - v59;
  MEMORY[0x1EEE9AC00](v58);
  v241 = &v192 - v60;
  v250 = sub_1E65D72D8();
  v240 = *(v250 - 8);
  v61 = *(v240 + 64);
  MEMORY[0x1EEE9AC00](v250);
  v249 = &v192 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E78, &qword_1E65ECC50);
  v64 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63 - 8);
  v211 = &v192 - v65;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E80, &qword_1E65ECC58);
  v209 = *(v210 - 1);
  v66 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v210);
  v68 = &v192 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072198, &unk_1E660C690);
  v70 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69 - 8);
  v72 = &v192 - v71;
  v232 = sub_1E65D9AC8();
  v248 = *(v232 - 8);
  v73 = v248[8];
  v74 = MEMORY[0x1EEE9AC00](v232);
  v212 = &v192 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74);
  v235 = &v192 - v76;
  v223 = sub_1E65D7848();
  v222 = *(v223 - 8);
  v77 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](v223);
  v246 = &v192 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = type metadata accessor for ItemContext();
  v79 = *(*(v219 - 8) + 64);
  v80 = MEMORY[0x1EEE9AC00](v219);
  v230 = &v192 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v80);
  v239 = &v192 - v82;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v220 = *(v221 - 8);
  v83 = *(v220 + 64);
  MEMORY[0x1EEE9AC00](v221);
  v238 = &v192 - v84;
  v85 = sub_1E65E03F8();
  v86 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v237 = &v192 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v88 = *(v231 - 8);
  v89 = v88[8];
  v90 = MEMORY[0x1EEE9AC00](v231);
  v92 = &v192 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v90);
  v228 = &v192 - v93;
  v247 = a1;
  v94 = sub_1E65D8078();
  if (!*(a2 + 16))
  {

    goto LABEL_7;
  }

  v96 = a2;
  v194 = v9;
  v97 = sub_1E6215038(v94, v95);
  v99 = v98;

  if ((v99 & 1) == 0)
  {
LABEL_7:
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
    return (*(*(v112 - 8) + 56))(v245, 1, 1, v112);
  }

  v100 = *(v96 + 56) + v88[9] * v97;
  v101 = v88[2];
  v102 = v88;
  v103 = v231;
  v101(v92, v100, v231);
  v193 = v102;
  (v102[4])(v228, v92, v103);
  sub_1E65E0A68();
  swift_storeEnumTagMultiPayload();
  v104 = v213;
  v105 = *v213;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E04E8();
  v213 = (v104 + *(type metadata accessor for AppComposer() + 20));
  v254 = *(v213 + 8);
  swift_getKeyPath();
  v106 = v246;
  sub_1E65E4EC8();

  swift_getKeyPath();
  sub_1E65E4EC8();

  v107 = v211;
  v108 = v210;
  sub_1E65E4C98();
  sub_1E60EEE88(v72);
  sub_1E5DFE50C(v107, &qword_1ED072E78, &qword_1E65ECC50);
  (*(v209 + 8))(v68, v108);
  v109 = v248;
  v110 = v248[6];
  v111 = v232;
  if (v110(v72, 1, v232) == 1)
  {
    MEMORY[0x1E6941490]();
    if (v110(v72, 1, v111) != 1)
    {
      sub_1E5DFE50C(v72, &qword_1ED072198, &unk_1E660C690);
    }
  }

  else
  {
    (v109[4])(v235, v72, v111);
  }

  v114 = *(type metadata accessor for AppEnvironment() + 136);
  v115 = sub_1E5F9B6D0(&unk_1F5FA84B8);
  v116 = sub_1E65D8248();
  sub_1E63C4134(v106, (v213 + v114), v116, v249);

  v117 = sub_1E65D80A8();
  v118 = sub_1E65D9AA8();
  v120 = v119;
  v121 = v212;
  MEMORY[0x1E6941490]();
  v122 = sub_1E65D9AA8();
  v124 = v123;
  v125 = v248[1];
  ++v248;
  v212 = v125;
  (v125)(v121, v111);
  if (v118 == v122 && v120 == v124)
  {
  }

  else
  {
    v126 = sub_1E65E6C18();

    if ((v126 & 1) == 0)
    {
      v127 = sub_1E65D8198();
      v128 = sub_1E65D9AA8();
      v130 = sub_1E637CA94(v128, v129, v127);

      if (v130)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E70, &unk_1E65ECC20);
        v131 = *(sub_1E65DADF8() - 8);
        v132 = *(v131 + 72);
        v133 = (*(v131 + 80) + 32) & ~*(v131 + 80);
        v134 = swift_allocObject();
        *(v134 + 16) = xmmword_1E65EB9E0;
        v135 = (v134 + v133);
        *v135 = sub_1E65D9AA8();
        v135[1] = v136;
        swift_storeEnumTagMultiPayload();
        *(v135 + v132) = 1;
        swift_storeEnumTagMultiPayload();
        v137 = sub_1E65D80A8();
        v251 = v134;
        sub_1E5FA9E2C(v137);
        v117 = v251;
      }
    }
  }

  v138 = *(sub_1E65D8068() + 16);

  v139 = v241;
  if (v138)
  {
    v140 = sub_1E65D8068();
    sub_1E63C4134(v246, (v213 + v114), v140, v139);

    v141 = 0;
  }

  else
  {
    v141 = 1;
  }

  v211 = v117;
  v142 = v240 + 56;
  v209 = *(v240 + 56);
  (v209)(v139, v141, 1, v250);
  v210 = sub_1E63B0704(v115);

  v143 = v227;
  sub_1E65D8128();
  v144 = v143;
  v145 = v215;
  sub_1E5E1D41C(v144, v215, MEMORY[0x1E69CB950]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v146 = v202;
    v147 = *(v202 + 32);
    v148 = v218;
    v214 = v142;
    v149 = v204;
    v147(v218, v145, v204);
    v150 = v199;
    (*(v146 + 16))(v199, v148, v149);
    v151 = v200;
    sub_1E65DA098();
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    v215 = v114;
    sub_1E65DB248();
    (*(v203 + 8))(v151, v205);
    sub_1E65DA0A8();
    sub_1E60C330C(&qword_1EE2D6D80, MEMORY[0x1E699D120]);
    v152 = v216;
    v114 = v215;
    sub_1E65DC438();
    v153 = *(v146 + 8);
    v153(v150, v149);
    v153(v218, v149);
  }

  else
  {
    v154 = v197;
    v155 = v195;
    v156 = v145;
    v157 = v198;
    (*(v197 + 32))(v195, v156, v198);
    v158 = v196;
    (*(v154 + 16))(v196, v155, v157);
    v152 = v216;
    sub_1E6134678(v158, v216);
    (*(v154 + 8))(v155, v157);
  }

  sub_1E60C3430(v227, MEMORY[0x1E69CB950]);
  swift_storeEnumTagMultiPayload();
  sub_1E5FAB460(v152, v242, &qword_1ED074530, &qword_1E65F0CA8);
  v159 = sub_1E65D81E8();
  v162 = v211;
  if (v161 == -1)
  {
    v166 = 4;
  }

  else
  {
    v251 = v159;
    v252 = v160;
    v253 = v161 & 1;
    v163 = v159;
    v164 = v160;
    v165 = v161;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074538, &qword_1E65F0D18);
    sub_1E65D7FB8();
    sub_1E5F87158(v163, v164, v165);
    v166 = v255;
  }

  LODWORD(v218) = v166;
  v167 = v209;
  v168 = v236;
  v169 = v250;
  (*(v240 + 16))(v236, v249, v250);
  v170 = 1;
  v167(v168, 0, 1, v169);
  sub_1E65D8158();
  v171 = v229;
  if (*(v162 + 16))
  {
    sub_1E63C4134(v246, (v213 + v114), v162, v229);
    v170 = 0;
  }

  v167(v171, v170, 1, v250);
  sub_1E65D8178();
  v172 = type metadata accessor for ActionButtonDescriptor(0);
  v227 = v172;
  v173 = *(*(v172 - 8) + 56);
  v174 = v234;
  v173(v234, 1, 1, v172);
  v175 = v224;
  v173(v224, 1, 1, v172);
  v176 = sub_1E65D8088();
  v178 = v177;
  v217 = v177;
  v179 = sub_1E65D80C8();
  v181 = v180;
  v183 = v182;
  v184 = sub_1E65D81B8();
  v183 &= 1u;
  v191 = v178;
  v190 = v174;
  v185 = v229;
  v186 = v233;
  sub_1E63A0574(v238, v242, v210, v218, v236, v243, v229, v233, v244, v241, v254, v190, v175, v176, v191, v179, v181, v183, v184, v187, 7u);

  sub_1E5F87058(v179, v181, v183);

  sub_1E5DFE50C(v175, &qword_1ED072638, &qword_1E65EB950);
  sub_1E5DFE50C(v234, &qword_1ED072638, &qword_1E65EB950);
  sub_1E5DFE50C(v186, &qword_1ED074528, &unk_1E660F4D0);
  sub_1E5DFE50C(v185, &qword_1ED072D90, &qword_1E66040F0);
  sub_1E5DFE50C(v243, &qword_1ED074528, &unk_1E660F4D0);
  sub_1E5DFE50C(v236, &qword_1ED072D90, &qword_1E66040F0);
  sub_1E5E1D41C(v239, v230, type metadata accessor for ItemContext);
  sub_1E5DFD1CC(v244, v225, &qword_1ED072610, &qword_1E65EB930);
  sub_1E62E2980(v226);
  sub_1E622BB88(v249, v194);
  v247 = type metadata accessor for ArtworkDescriptor();
  v243 = type metadata accessor for ContextMenu(0);
  v236 = type metadata accessor for ItemMetrics();
  v234 = type metadata accessor for ViewDescriptor();
  v233 = sub_1E60C330C(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
  sub_1E60C330C(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  sub_1E60C330C(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
  sub_1E60C330C(&qword_1EE2DB720, type metadata accessor for ItemContext);
  sub_1E60C330C(&qword_1EE2DB738, type metadata accessor for ItemContext);
  sub_1E60C330C(&qword_1EE2DB730, type metadata accessor for ItemContext);
  sub_1E60C330C(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
  sub_1E60C330C(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
  v188 = v245;
  sub_1E65E0488();
  sub_1E5DFE50C(v244, &qword_1ED072610, &qword_1E65EB930);
  sub_1E5DFE50C(v242, &qword_1ED074530, &qword_1E65F0CA8);
  sub_1E5DFE50C(v241, &qword_1ED072D90, &qword_1E66040F0);
  (*(v240 + 8))(v249, v250);
  (v212)(v235, v232);
  (*(v222 + 8))(v246, v223);
  sub_1E60C3430(v239, type metadata accessor for ItemContext);
  (*(v220 + 8))(v238, v221);
  sub_1E60C3430(v237, MEMORY[0x1E699D780]);
  (v193[1])(v228, v231);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  return (*(*(v189 - 8) + 56))(v188, 0, 1, v189);
}

uint64_t sub_1E60B79AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743F0, &qword_1E65F0B08);
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v8 = *(type metadata accessor for AppComposer() - 8);
  v4[11] = v8;
  v4[12] = *(v8 + 64);
  v4[13] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60B7B14, 0, 0);
}

uint64_t sub_1E60B7B14()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v22 = v0[10];
  v6 = v0[6];
  v5 = v0[7];
  v24 = v0[5];
  v7 = sub_1E65E60A8();
  v8 = *(*(v7 - 8) + 56);
  v9 = v7;
  v8(v1, 1, 1);
  sub_1E5E1D41C(v6, v2, type metadata accessor for AppComposer);
  v23 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v10 = (v23 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  sub_1E5E1E0B0(v2, v11 + v23, type metadata accessor for AppComposer);
  *(v11 + v10) = v5;

  sub_1E62301FC(v1, &unk_1E65F0B18, v11);
  sub_1E5DFE50C(v1, &unk_1ED0735B0, &qword_1E65EA000);
  (v8)(v1, 1, 1, v9);
  sub_1E5E1D41C(v6, v2, type metadata accessor for AppComposer);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  sub_1E5E1E0B0(v2, v12 + v23, type metadata accessor for AppComposer);
  *(v12 + v10) = v5;

  sub_1E62301FC(v1, &unk_1E65F0B28, v12);
  sub_1E5DFE50C(v1, &unk_1ED0735B0, &qword_1E65EA000);
  (v8)(v1, 1, 1, v9);
  sub_1E5E1D41C(v6, v2, type metadata accessor for AppComposer);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  sub_1E5E1E0B0(v2, v13 + v23, type metadata accessor for AppComposer);
  sub_1E62301FC(v1, &unk_1E65F0B38, v13);
  sub_1E5DFE50C(v1, &unk_1ED0735B0, &qword_1E65EA000);
  (v8)(v1, 1, 1, v9);
  sub_1E5E1D41C(v6, v2, type metadata accessor for AppComposer);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  sub_1E5E1E0B0(v2, v14 + v23, type metadata accessor for AppComposer);
  sub_1E62301FC(v1, &unk_1E65F0B48, v14);
  sub_1E5DFE50C(v1, &unk_1ED0735B0, &qword_1E65EA000);
  (v8)(v1, 1, 1, v9);
  sub_1E5E1D41C(v6, v2, type metadata accessor for AppComposer);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  sub_1E5E1E0B0(v2, v15 + v23, type metadata accessor for AppComposer);
  *(v15 + v10) = v5;

  sub_1E62301FC(v1, &unk_1E65F0B58, v15);
  sub_1E5DFE50C(v1, &unk_1ED0735B0, &qword_1E65EA000);
  v16 = *v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743E8, &qword_1E65F0AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
  sub_1E65E6168();
  v0[15] = MEMORY[0x1E69E7CC8];
  v17 = *(MEMORY[0x1E69E8710] + 4);
  v18 = swift_task_alloc();
  v0[16] = v18;
  *v18 = v0;
  v18[1] = sub_1E60B8020;
  v19 = v0[10];
  v20 = v0[8];

  return MEMORY[0x1EEE6DAD8](v0 + 2, 0, 0, v20, v0 + 3);
}

uint64_t sub_1E60B8020()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = *(v2 + 120);

    v5 = sub_1E60B82D0;
  }

  else
  {
    v5 = sub_1E60B813C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E60B813C()
{
  v16 = v0;
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[17];
    v3 = v0[15];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = v3;
    sub_1E60C0120(v1, sub_1E60BAE80, 0, isUniquelyReferenced_nonNull_native, &v15);

    v0[15] = v15;
    v5 = *(MEMORY[0x1E69E8710] + 4);
    v6 = swift_task_alloc();
    v0[16] = v6;
    *v6 = v0;
    v6[1] = sub_1E60B8020;
    v7 = v0[10];
    v8 = v0[8];

    return MEMORY[0x1EEE6DAD8](v0 + 2, 0, 0, v8, v0 + 3);
  }

  else
  {
    v9 = v0[14];
    v10 = v0[15];
    v11 = v0[13];
    v12 = v0[4];
    (*(v0[9] + 8))(v0[10], v0[8]);
    *v12 = v10;

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1E60B82D0()
{
  v1 = v0[13];
  v2 = v0[14];
  (*(v0[9] + 8))(v0[10], v0[8]);
  v3 = v0[3];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E60B836C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_1E65DF3B8();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v9 = sub_1E65D76A8();
  v5[9] = v9;
  v10 = *(v9 - 8);
  v5[10] = v10;
  v11 = *(v10 + 64) + 15;
  v5[11] = swift_task_alloc();
  v12 = sub_1E65DADD8();
  v5[12] = v12;
  v13 = *(v12 - 8);
  v5[13] = v13;
  v14 = *(v13 + 64) + 15;
  v5[14] = swift_task_alloc();
  v15 = sub_1E65D8438();
  v5[15] = v15;
  v16 = *(v15 - 8);
  v5[16] = v16;
  v17 = *(v16 + 64) + 15;
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60B8550, 0, 0);
}

uint64_t sub_1E60B8550()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 44);
  v4 = BookmarkService.filterBookmarks.getter();
  v0[18] = v5;
  v6 = &unk_1F5FA7FD0;
  if (*(v2 + 8) > 1u)
  {
    if (*(v2 + 8) == 2)
    {
      return sub_1E65E69D8();
    }
  }

  else if (!*(v2 + 8))
  {
    v6 = &unk_1F5FA7FA8;
  }

  v8 = v0[17];
  v9 = v0[4];
  v10 = sub_1E5F9B388(v6);
  v11 = sub_1E60A23CC(v10, sub_1E601C638, 1);

  v12 = sub_1E60A23CC(v9, sub_1E601C638, 0);
  sub_1E5FA9FA8(v12);
  sub_1E600BD90(v11);

  sub_1E65D8428();
  v16 = (v4 + *v4);
  v13 = v4[1];
  v14 = swift_task_alloc();
  v0[19] = v14;
  *v14 = v0;
  v14[1] = sub_1E60B87B0;
  v15 = v0[17];

  return v16(v15);
}

uint64_t sub_1E60B87B0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v5 = *(*v2 + 144);
  v6 = *(*v2 + 136);
  v7 = *(*v2 + 128);
  v8 = *(*v2 + 120);
  v11 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  (*(v7 + 8))(v6, v8);

  if (v1)
  {
    v9 = sub_1E60C3494;
  }

  else
  {
    v9 = sub_1E60C3498;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1E60B8948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_1E65DF3B8();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v9 = sub_1E65D76A8();
  v5[9] = v9;
  v10 = *(v9 - 8);
  v5[10] = v10;
  v11 = *(v10 + 64) + 15;
  v5[11] = swift_task_alloc();
  v12 = sub_1E65DADD8();
  v5[12] = v12;
  v13 = *(v12 - 8);
  v5[13] = v13;
  v14 = *(v13 + 64) + 15;
  v5[14] = swift_task_alloc();
  v15 = sub_1E65D8438();
  v5[15] = v15;
  v16 = *(v15 - 8);
  v5[16] = v16;
  v17 = *(v16 + 64) + 15;
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60B8B2C, 0, 0);
}

uint64_t sub_1E60B8B2C()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 44);
  v4 = BookmarkService.filterBookmarks.getter();
  v0[18] = v5;
  if (qword_1ED071890 != -1)
  {
    swift_once();
  }

  v6 = v0[17];
  v7 = v0[4];

  v9 = sub_1E60A23CC(v8, sub_1E601C638, 1);

  v10 = sub_1E60A23CC(v7, sub_1E601C638, 0);
  sub_1E5FA9FA8(v10);
  sub_1E600BD90(v9);

  sub_1E65D8428();
  v15 = (v4 + *v4);
  v11 = v4[1];
  v12 = swift_task_alloc();
  v0[19] = v12;
  *v12 = v0;
  v12[1] = sub_1E60B8D30;
  v13 = v0[17];

  return v15(v13);
}

uint64_t sub_1E60B8D30(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v5 = *(*v2 + 144);
  v6 = *(*v2 + 136);
  v7 = *(*v2 + 128);
  v8 = *(*v2 + 120);
  v11 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  (*(v7 + 8))(v6, v8);

  if (v1)
  {
    v9 = sub_1E60B9314;
  }

  else
  {
    v9 = sub_1E60B8EC8;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

unint64_t sub_1E60B8EC8()
{
  v1 = v0[20];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[6];
  v5 = sub_1E6427FF0(MEMORY[0x1E69E7CC0]);
  v6 = v1 + 56;
  v7 = -1;
  v8 = -1 << *(v1 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v1 + 56);
  v10 = (63 - v8) >> 6;
  v55 = (v4 + 32);
  v46 = v3;
  v52 = v2;
  v53 = v1;
  v49 = (v2 + 8);
  v50 = (v3 + 8);
  v51 = v4;

  v12 = 0;
  v47 = v10;
  v48 = v1 + 56;
  while (v9)
  {
    v13 = v12;
LABEL_11:
    v14 = v0[11];
    v16 = v0[7];
    v15 = v0[8];
    v17 = v0[5];
    (*(v52 + 16))(v0[14], *(v53 + 48) + *(v52 + 72) * (__clz(__rbit64(v9)) | (v13 << 6)), v0[12]);
    sub_1E65DAD88();
    sub_1E65DADA8();
    sub_1E65DF368();
    v18 = *v55;
    (*v55)(v16, v15, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v5;
    result = sub_1E64173CC(v14);
    v21 = v5[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }

    v25 = v20;
    v54 = v18;
    if (v5[3] >= v24)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = result;
        sub_1E6424BA8();
        result = v36;
        v5 = v57;
      }
    }

    else
    {
      v26 = v0[11];
      sub_1E641BEB0(v24, isUniquelyReferenced_nonNull_native);
      result = sub_1E64173CC(v26);
      if ((v25 & 1) != (v27 & 1))
      {
        v45 = v0[9];

        return sub_1E65E6C68();
      }
    }

    v9 &= v9 - 1;
    v28 = v0[14];
    v29 = v0[11];
    v56 = v0[12];
    v30 = v0[9];
    v31 = v0[7];
    v32 = v0[5];
    if (v25)
    {
      (*(v51 + 40))(v5[7] + *(v51 + 72) * result, v0[7], v0[5]);
      (*v50)(v29, v30);
      result = (*v49)(v28, v56);
    }

    else
    {
      v5[(result >> 6) + 8] |= 1 << result;
      v33 = result;
      (*(v46 + 16))(v5[6] + *(v46 + 72) * result, v29, v30);
      v54(v5[7] + *(v51 + 72) * v33, v31, v32);
      (*(v46 + 8))(v29, v30);
      result = (*v49)(v28, v56);
      v34 = v5[2];
      v23 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v23)
      {
        goto LABEL_28;
      }

      v5[2] = v35;
    }

    v12 = v13;
    v10 = v47;
    v6 = v48;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      goto LABEL_11;
    }
  }

  v37 = v0[20];
  v38 = v0[17];
  v39 = v0[14];
  v40 = v0[11];
  v42 = v0[7];
  v41 = v0[8];
  v43 = v0[2];

  *v43 = v5;

  v44 = v0[1];

  return v44();
}

uint64_t sub_1E60B9314()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[11];
  v5 = v0[7];
  v4 = v0[8];

  v6 = v0[1];
  v7 = v0[21];

  return v6();
}

uint64_t sub_1E60B93AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_1E65DF3B8();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v8 = sub_1E65D76A8();
  v4[8] = v8;
  v9 = *(v8 - 8);
  v4[9] = v9;
  v10 = *(v9 + 64) + 15;
  v4[10] = swift_task_alloc();
  v11 = sub_1E65DADD8();
  v4[11] = v11;
  v12 = *(v11 - 8);
  v4[12] = v12;
  v13 = *(v12 + 64) + 15;
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60B9530, 0, 0);
}

uint64_t sub_1E60B9530()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 44);
  v4 = BookmarkService.queryBookmarksByReferenceTypes.getter();
  v0[14] = v5;
  v6 = sub_1E5F9B84C(&unk_1F5FA84E0);
  v0[15] = v6;
  v10 = (v4 + *v4);
  v7 = v4[1];
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_1E60B966C;

  return v10(v6);
}

uint64_t sub_1E60B966C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v9 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {
    v5 = sub_1E60B9BD0;
  }

  else
  {
    v6 = v3[14];
    v7 = v3[15];

    v5 = sub_1E60B9790;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

unint64_t sub_1E60B9790()
{
  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[5];
  v5 = sub_1E6427FF0(MEMORY[0x1E69E7CC0]);
  v6 = v1 + 56;
  v7 = -1;
  v8 = -1 << *(v1 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v1 + 56);
  v10 = (63 - v8) >> 6;
  v54 = (v4 + 32);
  v45 = v3;
  v51 = v2;
  v52 = v1;
  v48 = (v2 + 8);
  v49 = (v3 + 8);
  v50 = v4;

  v12 = 0;
  v46 = v10;
  v47 = v1 + 56;
  while (v9)
  {
    v13 = v12;
LABEL_11:
    v14 = v0[10];
    v16 = v0[6];
    v15 = v0[7];
    v17 = v0[4];
    (*(v51 + 16))(v0[13], *(v52 + 48) + *(v51 + 72) * (__clz(__rbit64(v9)) | (v13 << 6)), v0[11]);
    sub_1E65DAD88();
    sub_1E65DADA8();
    sub_1E65DF368();
    v18 = *v54;
    (*v54)(v16, v15, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v5;
    result = sub_1E64173CC(v14);
    v21 = v5[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }

    v25 = v20;
    v53 = v18;
    if (v5[3] >= v24)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = result;
        sub_1E6424BA8();
        result = v36;
        v5 = v56;
      }
    }

    else
    {
      v26 = v0[10];
      sub_1E641BEB0(v24, isUniquelyReferenced_nonNull_native);
      result = sub_1E64173CC(v26);
      if ((v25 & 1) != (v27 & 1))
      {
        v44 = v0[8];

        return sub_1E65E6C68();
      }
    }

    v9 &= v9 - 1;
    v28 = v0[13];
    v29 = v0[10];
    v55 = v0[11];
    v30 = v0[8];
    v31 = v0[6];
    v32 = v0[4];
    if (v25)
    {
      (*(v50 + 40))(v5[7] + *(v50 + 72) * result, v0[6], v0[4]);
      (*v49)(v29, v30);
      result = (*v48)(v28, v55);
    }

    else
    {
      v5[(result >> 6) + 8] |= 1 << result;
      v33 = result;
      (*(v45 + 16))(v5[6] + *(v45 + 72) * result, v29, v30);
      v53(v5[7] + *(v50 + 72) * v33, v31, v32);
      (*(v45 + 8))(v29, v30);
      result = (*v48)(v28, v55);
      v34 = v5[2];
      v23 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v23)
      {
        goto LABEL_28;
      }

      v5[2] = v35;
    }

    v12 = v13;
    v10 = v46;
    v6 = v47;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      goto LABEL_11;
    }
  }

  v37 = v0[17];
  v38 = v0[13];
  v39 = v0[10];
  v41 = v0[6];
  v40 = v0[7];
  v42 = v0[2];

  *v42 = v5;

  v43 = v0[1];

  return v43();
}

uint64_t sub_1E60B9BD0()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  v6 = v0[6];
  v5 = v0[7];

  v7 = v0[1];
  v8 = v0[18];

  return v7();
}

uint64_t sub_1E60B9C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_1E65DF3B8();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v8 = sub_1E65D76A8();
  v4[8] = v8;
  v9 = *(v8 - 8);
  v4[9] = v9;
  v10 = *(v9 + 64) + 15;
  v4[10] = swift_task_alloc();
  v11 = sub_1E65DADD8();
  v4[11] = v11;
  v12 = *(v11 - 8);
  v4[12] = v12;
  v13 = *(v12 + 64) + 15;
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60B9DFC, 0, 0);
}

uint64_t sub_1E60B9DFC()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 44);
  v4 = BookmarkService.queryBookmarksByReferenceTypes.getter();
  v0[14] = v5;
  v6 = sub_1E5F9B84C(&unk_1F5FA8508);
  v0[15] = v6;
  v10 = (v4 + *v4);
  v7 = v4[1];
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_1E60B9F38;

  return v10(v6);
}

uint64_t sub_1E60B9F38(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v9 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {
    v5 = sub_1E60C3490;
  }

  else
  {
    v6 = v3[14];
    v7 = v3[15];

    v5 = sub_1E60BA05C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

unint64_t sub_1E60BA05C()
{
  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[5];
  v5 = sub_1E6427FF0(MEMORY[0x1E69E7CC0]);
  v6 = v1 + 56;
  v7 = -1;
  v8 = -1 << *(v1 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v1 + 56);
  v10 = (63 - v8) >> 6;
  v54 = (v4 + 32);
  v45 = v3;
  v51 = v2;
  v52 = v1;
  v48 = (v2 + 8);
  v49 = (v3 + 8);
  v50 = v4;

  v12 = 0;
  v46 = v10;
  v47 = v1 + 56;
  while (v9)
  {
    v13 = v12;
LABEL_11:
    v14 = v0[10];
    v16 = v0[6];
    v15 = v0[7];
    v17 = v0[4];
    (*(v51 + 16))(v0[13], *(v52 + 48) + *(v51 + 72) * (__clz(__rbit64(v9)) | (v13 << 6)), v0[11]);
    sub_1E65DAD88();
    sub_1E65DADA8();
    sub_1E65DF368();
    v18 = *v54;
    (*v54)(v16, v15, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v5;
    result = sub_1E64173CC(v14);
    v21 = v5[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }

    v25 = v20;
    v53 = v18;
    if (v5[3] >= v24)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = result;
        sub_1E6424BA8();
        result = v36;
        v5 = v56;
      }
    }

    else
    {
      v26 = v0[10];
      sub_1E641BEB0(v24, isUniquelyReferenced_nonNull_native);
      result = sub_1E64173CC(v26);
      if ((v25 & 1) != (v27 & 1))
      {
        v44 = v0[8];

        return sub_1E65E6C68();
      }
    }

    v9 &= v9 - 1;
    v28 = v0[13];
    v29 = v0[10];
    v55 = v0[11];
    v30 = v0[8];
    v31 = v0[6];
    v32 = v0[4];
    if (v25)
    {
      (*(v50 + 40))(v5[7] + *(v50 + 72) * result, v0[6], v0[4]);
      (*v49)(v29, v30);
      result = (*v48)(v28, v55);
    }

    else
    {
      v5[(result >> 6) + 8] |= 1 << result;
      v33 = result;
      (*(v45 + 16))(v5[6] + *(v45 + 72) * result, v29, v30);
      v53(v5[7] + *(v50 + 72) * v33, v31, v32);
      (*(v45 + 8))(v29, v30);
      result = (*v48)(v28, v55);
      v34 = v5[2];
      v23 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v23)
      {
        goto LABEL_28;
      }

      v5[2] = v35;
    }

    v12 = v13;
    v10 = v46;
    v6 = v47;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      goto LABEL_11;
    }
  }

  v37 = v0[17];
  v38 = v0[13];
  v39 = v0[10];
  v41 = v0[6];
  v40 = v0[7];
  v42 = v0[2];

  *v42 = v5;

  v43 = v0[1];

  return v43();
}

uint64_t sub_1E60BA49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  v6 = sub_1E65DF3B8();
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v9 = sub_1E65D76A8();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v12 = sub_1E65DAEB8();
  v5[13] = v12;
  v13 = *(v12 - 8);
  v5[14] = v13;
  v14 = *(v13 + 64) + 15;
  v5[15] = swift_task_alloc();
  v15 = sub_1E65D86C8();
  v5[16] = v15;
  v16 = *(v15 - 8);
  v5[17] = v16;
  v17 = *(v16 + 64) + 15;
  v5[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60BA680, 0, 0);
}

uint64_t sub_1E60BA680()
{
  v1 = v0[18];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v2 + *(type metadata accessor for AppComposer() + 20);
  v5 = v4 + *(type metadata accessor for AppEnvironment() + 44);
  v6 = BookmarkService.filterPlaylists.getter();
  v0[19] = v7;
  v8 = sub_1E60A219C(v3);
  sub_1E600AAA0(v8);

  sub_1E65D86B8();
  v13 = (v6 + *v6);
  v9 = v6[1];
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_1E60BA7E8;
  v11 = v0[18];

  return v13(v11);
}

uint64_t sub_1E60BA7E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v5 = *(*v2 + 152);
  v6 = *(*v2 + 144);
  v7 = *(*v2 + 136);
  v8 = *(*v2 + 128);
  v11 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  (*(v7 + 8))(v6, v8);

  if (v1)
  {
    v9 = sub_1E60BADE8;
  }

  else
  {
    v9 = sub_1E60BA980;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

unint64_t sub_1E60BA980()
{
  v1 = v0[21];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[7];
  v5 = sub_1E6427FF0(MEMORY[0x1E69E7CC0]);
  v6 = v1 + 56;
  v7 = -1;
  v8 = -1 << *(v1 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v1 + 56);
  v10 = (63 - v8) >> 6;
  v52 = v4;
  v54 = v1;
  v55 = (v4 + 32);
  v49 = (v3 + 8);
  v53 = v2;
  v47 = v3;
  v48 = (v2 + 8);

  v12 = 0;
  v50 = v1 + 56;
  v51 = v10;
  while (v9)
  {
LABEL_11:
    v16 = v0[12];
    v17 = v0[9];
    v56 = v0[8];
    v57 = v0[6];
    (*(v53 + 16))(v0[15], *(v54 + 48) + *(v53 + 72) * (__clz(__rbit64(v9)) | (v12 << 6)), v0[13]);
    sub_1E65DAE58();
    sub_1E65DAE48();
    sub_1E65DAE78();
    MEMORY[0x1E694D7C0](45, 0xE100000000000000);
    v18 = *(sub_1E65DAE88() + 16);

    v0[2] = v18;
    v19 = sub_1E65E6BC8();
    MEMORY[0x1E694D7C0](v19);

    sub_1E65DF368();
    v20 = *v55;
    (*v55)(v56, v17, v57);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_1E64173CC(v16);
    v23 = v5[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    v27 = v22;
    if (v5[3] < v26)
    {
      v28 = v0[12];
      sub_1E641BEB0(v26, isUniquelyReferenced_nonNull_native);
      result = sub_1E64173CC(v28);
      if ((v27 & 1) != (v29 & 1))
      {
        v46 = v0[10];

        return sub_1E65E6C68();
      }

LABEL_16:
      v10 = v51;
      if (v27)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v37 = result;
    sub_1E6424BA8();
    result = v37;
    v10 = v51;
    if (v27)
    {
LABEL_4:
      (*(v52 + 40))(v5[7] + *(v52 + 72) * result, v0[8], v0[6]);
      goto LABEL_5;
    }

LABEL_17:
    v30 = v0[12];
    v31 = v0[10];
    v32 = v0[8];
    v33 = v0[6];
    v5[(result >> 6) + 8] |= 1 << result;
    v34 = result;
    (*(v47 + 16))(v5[6] + *(v47 + 72) * result, v30, v31);
    result = v20(v5[7] + *(v52 + 72) * v34, v32, v33);
    v35 = v5[2];
    v25 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v25)
    {
      goto LABEL_29;
    }

    v5[2] = v36;
LABEL_5:
    v9 &= v9 - 1;
    v13 = v0[15];
    v14 = v0[13];
    (*v49)(v0[12], v0[10]);
    result = (*v48)(v13, v14);
    v6 = v50;
  }

  while (1)
  {
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v15 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v15);
    ++v12;
    if (v9)
    {
      v12 = v15;
      goto LABEL_11;
    }
  }

  v38 = v0[21];
  v39 = v0[18];
  v40 = v0[15];
  v41 = v0[12];
  v43 = v0[8];
  v42 = v0[9];
  v44 = v0[3];

  *v44 = v5;

  v45 = v0[1];

  return v45();
}

uint64_t sub_1E60BADE8()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[12];
  v5 = v0[8];
  v4 = v0[9];

  v6 = v0[1];
  v7 = v0[22];

  return v6();
}

uint64_t sub_1E60BAE80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743E0, &qword_1E65F0AE8) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074400, &qword_1E65F0B68) + 48);
  v6 = sub_1E65D76A8();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = sub_1E65DF3B8();
  v8 = *(*(v7 - 8) + 16);

  return v8(a2 + v5, a1 + v4, v7);
}

uint64_t sub_1E60BAF60(void **a1)
{
  v2 = *(sub_1E65D76A8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1E636B230(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1E60BB1F8(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1E60BB008(void **a1)
{
  v2 = *(sub_1E65D7B58() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1E636B244(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1E60BB324(v6, MEMORY[0x1E69CB020], MEMORY[0x1E69CB020], MEMORY[0x1E69CAFF8], sub_1E636AC88);
  *a1 = v3;
  return result;
}

uint64_t sub_1E60BB100(void **a1)
{
  v2 = *(sub_1E65DADD8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1E636B258(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1E60BB324(v6, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2B0], sub_1E636ACA0);
  *a1 = v3;
  return result;
}

uint64_t sub_1E60BB1F8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E65E6BA8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1E65D76A8();
        v6 = sub_1E65E5F98();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1E65D76A8() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1E60BBB20(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1E60BB49C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E60BB324(uint64_t *a1, void (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t), void (*a5)(unint64_t *, unint64_t *, unint64_t *))
{
  v10 = a1[1];
  result = sub_1E65E6BA8();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v14 = sub_1E65E5F98();
        *(v14 + 16) = v13;
      }

      v15 = *((a2)(0) - 8);
      v16[0] = v14 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
      v16[1] = v13;
      sub_1E60BC548(v16, v17, a1, v12, a3, a4, a3, a4, a5);
      *(v14 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    return sub_1E60BB760(0, v10, 1, a1, a3, a4);
  }

  return result;
}

uint64_t sub_1E60BB49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1E65D76A8();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v42 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v46 = &v32 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v45 = &v32 - v16;
  v34 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v43 = *(v15 + 16);
    v44 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v40 = (v15 + 32);
    v41 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v39 = -v18;
    v21 = a1 - a3;
    v33 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v37 = v20;
    v38 = a3;
    v35 = v22;
    v36 = v21;
    v23 = v20;
    while (1)
    {
      v24 = v45;
      v25 = v43;
      v43(v45, v22, v8);
      v26 = v46;
      v25(v46, v23, v8);
      sub_1E60C330C(&qword_1ED073FD8, MEMORY[0x1E6969530]);
      v27 = sub_1E65E5B78();
      v28 = *v19;
      (*v19)(v26, v8);
      result = v28(v24, v8);
      if ((v27 & 1) == 0)
      {
LABEL_4:
        a3 = v38 + 1;
        v20 = v37 + v33;
        v21 = v36 - 1;
        v22 = v35 + v33;
        if (v38 + 1 == v34)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v41)
      {
        break;
      }

      v29 = *v40;
      v30 = v42;
      (*v40)(v42, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v29)(v23, v30, v8);
      v23 += v39;
      v22 += v39;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E60BB760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void), void (*a6)(uint64_t))
{
  v69 = a6;
  v68 = sub_1E65D76A8();
  v11 = *(v68 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v68);
  v67 = &v49[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v66 = &v49[-v15];
  v16 = a5(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v59 = &v49[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x1EEE9AC00](v18);
  v65 = &v49[-v21];
  result = MEMORY[0x1EEE9AC00](v20);
  v64 = &v49[-v24];
  v51 = a2;
  if (a3 != a2)
  {
    v25 = *a4;
    v27 = *(v23 + 16);
    v26 = v23 + 16;
    v28 = *(v26 + 56);
    v61 = (v11 + 8);
    v62 = v27;
    v60 = (v26 - 8);
    v63 = v26;
    v29 = v25 + v28 * (a3 - 1);
    v56 = -v28;
    v57 = (v26 + 16);
    v30 = a1 - a3;
    v58 = v25;
    v50 = v28;
    v31 = v25 + v28 * a3;
    v32 = v64;
LABEL_5:
    v54 = v29;
    v55 = a3;
    v52 = v31;
    v53 = v30;
    v70 = v30;
    while (1)
    {
      v33 = v62;
      v62(v32, v31, v16);
      v34 = v16;
      v35 = v65;
      v36 = v33(v65, v29, v34);
      v37 = v66;
      v38 = v69;
      v39 = (v69)(v36);
      v40 = v67;
      v38(v39);
      v71 = sub_1E65D7658();
      v41 = *v61;
      v42 = v40;
      v43 = v68;
      (*v61)(v42, v68);
      v41(v37, v43);
      v44 = *v60;
      v45 = v35;
      v16 = v34;
      (*v60)(v45, v34);
      result = v44(v32, v34);
      if ((v71 & 1) == 0)
      {
LABEL_4:
        a3 = v55 + 1;
        v29 = v54 + v50;
        v30 = v53 - 1;
        v31 = v52 + v50;
        if (v55 + 1 == v51)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v58)
      {
        break;
      }

      v46 = *v57;
      v47 = v59;
      (*v57)(v59, v31, v34);
      swift_arrayInitWithTakeFrontToBack();
      result = v46(v29, v47, v34);
      v29 += v56;
      v31 += v56;
      if (__CFADD__(v70++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E60BBB20(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v123 = a1;
  v8 = sub_1E65D76A8();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v128 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v135 = &v120 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v141 = &v120 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v140 = &v120 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v22 = *v123;
    if (!*v123)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_1E636AC44(v21);
      v21 = result;
    }

    v143 = v21;
    v116 = *(v21 + 2);
    if (v116 >= 2)
    {
      while (*a3)
      {
        v117 = *&v21[16 * v116];
        v118 = *&v21[16 * v116 + 24];
        sub_1E60BD18C(*a3 + v9[9] * v117, *a3 + v9[9] * *&v21[16 * v116 + 16], *a3 + v9[9] * v118, v22);
        if (v5)
        {
        }

        if (v118 < v117)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1E636AC44(v21);
        }

        if (v116 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v119 = &v21[16 * v116];
        *v119 = v117;
        *(v119 + 1) = v118;
        v143 = v21;
        result = sub_1E636ABB8(v116 - 1);
        v21 = v143;
        v116 = *(v143 + 2);
        if (v116 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v120 = a4;
  v20 = 0;
  v138 = (v9 + 1);
  v139 = v9 + 2;
  v137 = (v9 + 4);
  v21 = MEMORY[0x1E69E7CC0];
  v125 = v9;
  v142 = v8;
  v121 = a3;
  while (1)
  {
    v22 = v20;
    v126 = v21;
    if (v20 + 1 >= v19)
    {
      v35 = v20 + 1;
    }

    else
    {
      v133 = v19;
      v122 = v5;
      v23 = *a3;
      v24 = v9[9];
      v25 = v20;
      v124 = v20;
      v26 = &v23[v24 * (v20 + 1)];
      v27 = v8;
      v28 = v9[2];
      v29 = v140;
      v28(v140, v26, v27);
      v30 = &v23[v24 * v25];
      v31 = v141;
      v132 = v28;
      v28(v141, v30, v27);
      v131 = sub_1E60C330C(&qword_1ED073FD8, MEMORY[0x1E6969530]);
      LODWORD(v134) = sub_1E65E5B78();
      v32 = v9[1];
      v32(v31, v27);
      v130 = v32;
      result = (v32)(v29, v27);
      v33 = v124 + 2;
      v136 = v24;
      v34 = &v23[v24 * (v124 + 2)];
      while (1)
      {
        v35 = v133;
        if (v133 == v33)
        {
          break;
        }

        v36 = v140;
        v37 = v9;
        v38 = v142;
        v39 = v132;
        (v132)(v140, v34, v142);
        v40 = v141;
        v39(v141, v26, v38);
        v41 = sub_1E65E5B78() & 1;
        v42 = v130;
        (v130)(v40, v38);
        v43 = v38;
        v9 = v37;
        result = v42(v36, v43);
        ++v33;
        v34 += v136;
        v26 += v136;
        if ((v134 & 1) != v41)
        {
          v35 = v33 - 1;
          break;
        }
      }

      v5 = v122;
      v21 = v126;
      v8 = v142;
      a3 = v121;
      v22 = v124;
      if (v134)
      {
        if (v35 < v124)
        {
          goto LABEL_123;
        }

        if (v124 < v35)
        {
          v44 = v35;
          v45 = v136 * (v35 - 1);
          v46 = v35 * v136;
          v133 = v35;
          v47 = v124;
          v48 = v124 * v136;
          do
          {
            if (v47 != --v44)
            {
              v50 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v134 = *v137;
              v134(v128, &v50[v48], v142);
              if (v48 < v45 || &v50[v48] >= &v50[v46])
              {
                v49 = v142;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v49 = v142;
                if (v48 != v45)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v134)(&v50[v45], v128, v49);
              v9 = v125;
              v21 = v126;
            }

            ++v47;
            v45 -= v136;
            v46 -= v136;
            v48 += v136;
          }

          while (v47 < v44);
          v5 = v122;
          v8 = v142;
          v22 = v124;
          v35 = v133;
        }
      }
    }

    v51 = a3[1];
    if (v35 < v51)
    {
      if (__OFSUB__(v35, v22))
      {
        goto LABEL_122;
      }

      if (v35 - v22 < v120)
      {
        if (__OFADD__(v22, v120))
        {
          goto LABEL_124;
        }

        if (v22 + v120 >= v51)
        {
          v52 = a3[1];
        }

        else
        {
          v52 = v22 + v120;
        }

        if (v52 < v22)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v35 != v52)
        {
          break;
        }
      }
    }

    v53 = v35;
    if (v35 < v22)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E636ADD0(0, *(v21 + 2) + 1, 1, v21);
      v21 = result;
    }

    v55 = *(v21 + 2);
    v54 = *(v21 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      result = sub_1E636ADD0((v54 > 1), v55 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v56;
    v57 = &v21[16 * v55];
    *(v57 + 4) = v22;
    *(v57 + 5) = v53;
    v22 = *v123;
    if (!*v123)
    {
      goto LABEL_131;
    }

    v129 = v53;
    if (v55)
    {
      while (1)
      {
        v58 = v56 - 1;
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v59 = *(v21 + 4);
          v60 = *(v21 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_52:
          if (v62)
          {
            goto LABEL_110;
          }

          v75 = &v21[16 * v56];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_113;
          }

          v81 = &v21[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_117;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v56 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v85 = &v21[16 * v56];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_66:
        if (v80)
        {
          goto LABEL_112;
        }

        v88 = &v21[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_115;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_73:
        v96 = v58 - 1;
        if (v58 - 1 >= v56)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v97 = *&v21[16 * v96 + 32];
        v98 = *&v21[16 * v58 + 40];
        sub_1E60BD18C(*a3 + v9[9] * v97, *a3 + v9[9] * *&v21[16 * v58 + 32], *a3 + v9[9] * v98, v22);
        if (v5)
        {
        }

        if (v98 < v97)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1E636AC44(v21);
        }

        if (v96 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v99 = &v21[16 * v96];
        *(v99 + 4) = v97;
        *(v99 + 5) = v98;
        v143 = v21;
        result = sub_1E636ABB8(v58);
        v21 = v143;
        v56 = *(v143 + 2);
        v8 = v142;
        if (v56 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v21[16 * v56 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_108;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_109;
      }

      v70 = &v21[16 * v56];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_111;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_114;
      }

      if (v74 >= v66)
      {
        v92 = &v21[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_118;
        }

        if (v61 < v95)
        {
          v58 = v56 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v129;
    if (v129 >= v19)
    {
      goto LABEL_94;
    }
  }

  v122 = v5;
  v100 = *a3;
  v101 = v9[9];
  v136 = v9[2];
  v102 = v100 + v101 * (v35 - 1);
  v103 = -v101;
  v124 = v22;
  v104 = v22 - v35;
  v134 = v100;
  v127 = v101;
  v105 = v100 + v35 * v101;
  v129 = v52;
LABEL_85:
  v132 = v102;
  v133 = v35;
  v130 = v105;
  v131 = v104;
  v106 = v102;
  while (1)
  {
    v107 = v140;
    v108 = v136;
    (v136)(v140, v105, v8);
    v109 = v141;
    v108(v141, v106, v142);
    sub_1E60C330C(&qword_1ED073FD8, MEMORY[0x1E6969530]);
    v110 = sub_1E65E5B78();
    v111 = *v138;
    v112 = v109;
    v8 = v142;
    (*v138)(v112, v142);
    result = v111(v107, v8);
    if ((v110 & 1) == 0)
    {
LABEL_84:
      v35 = v133 + 1;
      v102 = &v132[v127];
      v104 = v131 - 1;
      v105 = &v130[v127];
      v53 = v129;
      if (v133 + 1 != v129)
      {
        goto LABEL_85;
      }

      v5 = v122;
      a3 = v121;
      v9 = v125;
      v21 = v126;
      v22 = v124;
      if (v129 < v124)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v134)
    {
      break;
    }

    v113 = *v137;
    v114 = v135;
    (*v137)(v135, v105, v8);
    swift_arrayInitWithTakeFrontToBack();
    v113(v106, v114, v8);
    v106 += v103;
    v105 += v103;
    if (__CFADD__(v104++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1E60BC548(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, void (*a6)(uint64_t), uint64_t (*a7)(void), void (*a8)(uint64_t), void (*a9)(unint64_t *, unint64_t *, unint64_t *))
{
  v152 = a8;
  v148 = a7;
  v169 = a6;
  v140 = a1;
  v151 = a9;
  v168 = sub_1E65D76A8();
  v12 = *(v168 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v168);
  v167 = &v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v166 = &v139 - v16;
  v17 = (a5)(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v144 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v158 = &v139 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v165 = &v139 - v24;
  result = MEMORY[0x1EEE9AC00](v23);
  v170 = &v139 - v27;
  v28 = a3[1];
  v153 = v26;
  if (v28 < 1)
  {
    v30 = MEMORY[0x1E69E7CC0];
LABEL_96:
    a5 = *v140;
    if (!*v140)
    {
      goto LABEL_136;
    }

    v12 = v30;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v12;
    }

    else
    {
LABEL_130:
      result = sub_1E636AC44(v12);
    }

    v172 = result;
    v12 = *(result + 16);
    if (v12 >= 2)
    {
      v133 = v148;
      while (*a3)
      {
        v134 = *(result + 16 * v12);
        v135 = result;
        v136 = *(result + 16 * (v12 - 1) + 40);
        v137 = v155;
        sub_1E60BD780(*a3 + *(v153 + 72) * v134, *a3 + *(v153 + 72) * *(result + 16 * (v12 - 1) + 32), *a3 + *(v153 + 72) * v136, a5, v133, v152, v151);
        v155 = v137;
        if (v137)
        {
        }

        if (v136 < v134)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v135 = sub_1E636AC44(v135);
        }

        if (v12 - 2 >= *(v135 + 2))
        {
          goto LABEL_124;
        }

        v138 = &v135[16 * v12];
        *v138 = v134;
        *(v138 + 1) = v136;
        v172 = v135;
        sub_1E636ABB8(v12 - 1);
        result = v172;
        v12 = *(v172 + 16);
        if (v12 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v29 = 0;
  v162 = (v12 + 8);
  v163 = v26 + 16;
  v160 = (v26 + 32);
  v161 = (v26 + 8);
  v30 = MEMORY[0x1E69E7CC0];
  v142 = a3;
  v139 = a4;
  v164 = v17;
  while (1)
  {
    v31 = v29;
    v145 = v30;
    if (v29 + 1 >= v28)
    {
      v48 = v29 + 1;
    }

    else
    {
      v154 = v28;
      v32 = *a3;
      v33 = *(v26 + 72);
      v159 = v33;
      v34 = *(v26 + 16);
      v35 = v32 + v33 * (v29 + 1);
      v34();
      v36 = v32 + v33 * v31;
      v37 = v165;
      v156 = v34;
      v38 = (v34)(v165, v36, v17);
      v141 = v31;
      v39 = v166;
      v40 = v169;
      v41 = (v169)(v38);
      v42 = v167;
      v40(v41);
      LODWORD(v157) = sub_1E65D7658();
      v43 = *v162;
      v12 = v168;
      (*v162)(v42, v168);
      v150 = v43;
      (v43)(v39, v12);
      v44 = *(v153 + 8);
      v45 = v37;
      a5 = v161;
      v44(v45, v17);
      v149 = v44;
      result = (v44)(v170, v17);
      v46 = v141 + 2;
      v47 = v32 + v159 * (v141 + 2);
      while (1)
      {
        v48 = v154;
        if (v154 == v46)
        {
          break;
        }

        v49 = v164;
        v50 = v156;
        v171 = v46;
        v156();
        v51 = v165;
        v52 = v50(v165, v35, v49);
        v53 = v166;
        v54 = v169;
        v55 = (v169)(v52);
        v56 = v167;
        v54(v55);
        v12 = sub_1E65D7658() & 1;
        v57 = v168;
        v58 = v150;
        (v150)(v56, v168);
        v58(v53, v57);
        a5 = v161;
        v59 = v149;
        v149(v51, v49);
        result = v59(v170, v49);
        v46 = v171 + 1;
        v47 += v159;
        v35 += v159;
        if ((v157 & 1) != v12)
        {
          v48 = v171;
          break;
        }
      }

      a3 = v142;
      v26 = v153;
      v30 = v145;
      a4 = v139;
      v17 = v164;
      v31 = v141;
      if (v157)
      {
        if (v48 < v141)
        {
          goto LABEL_127;
        }

        if (v141 < v48)
        {
          a5 = v159 * (v48 - 1);
          v60 = v48 * v159;
          v154 = v48;
          v61 = v48;
          v62 = v141 * v159;
          do
          {
            if (v31 != --v61)
            {
              v63 = *a3;
              if (!v63)
              {
                goto LABEL_133;
              }

              v12 = v63 + v62;
              v64 = *v160;
              (*v160)(v144, v63 + v62, v17, v30);
              if (v62 < a5 || v12 >= v63 + v60)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v62 != a5)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = v64(v63 + a5, v144, v17);
              a3 = v142;
              v30 = v145;
            }

            ++v31;
            a5 -= v159;
            v60 -= v159;
            v62 += v159;
          }

          while (v31 < v61);
          v26 = v153;
          v48 = v154;
          a4 = v139;
          v31 = v141;
        }
      }
    }

    v65 = a3[1];
    if (v48 < v65)
    {
      if (__OFSUB__(v48, v31))
      {
        goto LABEL_126;
      }

      if (v48 - v31 < a4)
      {
        if (__OFADD__(v31, a4))
        {
          goto LABEL_128;
        }

        if (v31 + a4 >= v65)
        {
          v66 = a3[1];
        }

        else
        {
          v66 = v31 + a4;
        }

        if (v66 < v31)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v48 != v66)
        {
          break;
        }
      }
    }

    v67 = v48;
    if (v48 < v31)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v30 = v145;
    }

    else
    {
      result = sub_1E636ADD0(0, *(v145 + 2) + 1, 1, v145);
      v30 = result;
    }

    a5 = *(v30 + 2);
    v68 = *(v30 + 3);
    v12 = a5 + 1;
    if (a5 >= v68 >> 1)
    {
      result = sub_1E636ADD0((v68 > 1), a5 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = v12;
    v69 = &v30[16 * a5];
    *(v69 + 4) = v31;
    *(v69 + 5) = v67;
    v70 = *v140;
    if (!*v140)
    {
      goto LABEL_135;
    }

    v146 = v67;
    if (a5)
    {
      v71 = v70;
      while (1)
      {
        v72 = v12 - 1;
        if (v12 >= 4)
        {
          break;
        }

        if (v12 == 3)
        {
          v73 = *(v30 + 4);
          v74 = *(v30 + 5);
          v83 = __OFSUB__(v74, v73);
          v75 = v74 - v73;
          v76 = v83;
LABEL_53:
          if (v76)
          {
            goto LABEL_114;
          }

          v89 = &v30[16 * v12];
          v91 = *v89;
          v90 = *(v89 + 1);
          v92 = __OFSUB__(v90, v91);
          v93 = v90 - v91;
          v94 = v92;
          if (v92)
          {
            goto LABEL_117;
          }

          v95 = &v30[16 * v72 + 32];
          v97 = *v95;
          v96 = *(v95 + 1);
          v83 = __OFSUB__(v96, v97);
          v98 = v96 - v97;
          if (v83)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v93, v98))
          {
            goto LABEL_121;
          }

          if (v93 + v98 >= v75)
          {
            if (v75 < v98)
            {
              v72 = v12 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v99 = &v30[16 * v12];
        v101 = *v99;
        v100 = *(v99 + 1);
        v83 = __OFSUB__(v100, v101);
        v93 = v100 - v101;
        v94 = v83;
LABEL_67:
        if (v94)
        {
          goto LABEL_116;
        }

        v102 = &v30[16 * v72];
        v104 = *(v102 + 4);
        v103 = *(v102 + 5);
        v83 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v83)
        {
          goto LABEL_119;
        }

        if (v105 < v93)
        {
          goto LABEL_3;
        }

LABEL_74:
        a5 = v72 - 1;
        if (v72 - 1 >= v12)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v110 = v30;
        v12 = *&v30[16 * a5 + 32];
        v111 = *&v30[16 * v72 + 40];
        v112 = v155;
        sub_1E60BD780(*a3 + *(v153 + 72) * v12, *a3 + *(v153 + 72) * *&v30[16 * v72 + 32], *a3 + *(v153 + 72) * v111, v71, v148, v152, v151);
        v155 = v112;
        if (v112)
        {
        }

        if (v111 < v12)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v110 = sub_1E636AC44(v110);
        }

        if (a5 >= *(v110 + 2))
        {
          goto LABEL_111;
        }

        v113 = &v110[16 * a5];
        *(v113 + 4) = v12;
        *(v113 + 5) = v111;
        v172 = v110;
        result = sub_1E636ABB8(v72);
        v30 = v172;
        v12 = *(v172 + 16);
        if (v12 <= 1)
        {
          goto LABEL_3;
        }
      }

      v77 = &v30[16 * v12 + 32];
      v78 = *(v77 - 64);
      v79 = *(v77 - 56);
      v83 = __OFSUB__(v79, v78);
      v80 = v79 - v78;
      if (v83)
      {
        goto LABEL_112;
      }

      v82 = *(v77 - 48);
      v81 = *(v77 - 40);
      v83 = __OFSUB__(v81, v82);
      v75 = v81 - v82;
      v76 = v83;
      if (v83)
      {
        goto LABEL_113;
      }

      v84 = &v30[16 * v12];
      v86 = *v84;
      v85 = *(v84 + 1);
      v83 = __OFSUB__(v85, v86);
      v87 = v85 - v86;
      if (v83)
      {
        goto LABEL_115;
      }

      v83 = __OFADD__(v75, v87);
      v88 = v75 + v87;
      if (v83)
      {
        goto LABEL_118;
      }

      if (v88 >= v80)
      {
        v106 = &v30[16 * v72 + 32];
        v108 = *v106;
        v107 = *(v106 + 1);
        v83 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v83)
        {
          goto LABEL_122;
        }

        if (v75 < v109)
        {
          v72 = v12 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v28 = a3[1];
    v29 = v146;
    v26 = v153;
    a4 = v139;
    if (v146 >= v28)
    {
      goto LABEL_96;
    }
  }

  v114 = *a3;
  v115 = *(v26 + 72);
  v159 = *(v26 + 16);
  v116 = (v114 + v115 * (v48 - 1));
  v156 = -v115;
  v141 = v31;
  a5 = v31 - v48;
  v143 = v115;
  v157 = v114;
  v117 = v114 + v48 * v115;
  v146 = v66;
LABEL_86:
  v154 = v48;
  v147 = v117;
  v149 = a5;
  v150 = v116;
  while (1)
  {
    v118 = v170;
    v119 = v159;
    (v159)(v170, v117, v17, v30);
    v120 = v165;
    v121 = v119(v165, v116, v17);
    v122 = v166;
    v123 = v169;
    v124 = (v169)(v121);
    v125 = v167;
    v123(v124);
    LODWORD(v171) = sub_1E65D7658();
    v126 = *v162;
    v127 = v125;
    v128 = v168;
    (*v162)(v127, v168);
    v129 = v122;
    v17 = v164;
    v126(v129, v128);
    v12 = v161;
    v130 = *v161;
    (*v161)(v120, v17);
    result = v130(v118, v17);
    if ((v171 & 1) == 0)
    {
LABEL_85:
      v48 = v154 + 1;
      v116 = &v150[v143];
      a5 = v149 - 1;
      v117 = v147 + v143;
      v67 = v146;
      if (v154 + 1 != v146)
      {
        goto LABEL_86;
      }

      a3 = v142;
      v31 = v141;
      if (v146 < v141)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v157)
    {
      break;
    }

    v12 = *v160;
    v131 = v158;
    (*v160)(v158, v117, v17);
    swift_arrayInitWithTakeFrontToBack();
    (v12)(v116, v131, v17);
    v116 = v156 + v116;
    v117 += v156;
    if (__CFADD__(a5++, 1))
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_1E60BD18C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = sub_1E65D76A8();
  v8 = *(v53 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v53);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v50 = &v41 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_63;
  }

  v52 = a3;
  v17 = (a2 - a1) / v15;
  v56 = a1;
  v55 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v19;
    if (v19 >= 1)
    {
      v29 = -v15;
      v44 = a4;
      v45 = (v8 + 16);
      v42 = (v8 + 8);
      v43 = a1;
      v30 = a4 + v19;
      v31 = v52;
      v46 = v29;
      do
      {
        v41 = v28;
        v32 = a2 + v29;
        v48 = a2 + v29;
        v49 = v28;
        v47 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v56 = a2;
            v28 = v41;
            goto LABEL_59;
          }

          v34 = v31;
          v52 = v31 + v29;
          v35 = v30 + v29;
          v36 = *v45;
          v37 = v50;
          v38 = v53;
          (*v45)(v50, v30 + v29, v53);
          v39 = v51;
          v36(v51, v32, v38);
          sub_1E60C330C(&qword_1ED073FD8, MEMORY[0x1E6969530]);
          LOBYTE(v36) = sub_1E65E5B78();
          v40 = *v42;
          (*v42)(v39, v38);
          v40(v37, v38);
          if (v36)
          {
            break;
          }

          v31 = v52;
          if (v34 < v30 || v52 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v48;
            a1 = v43;
          }

          else
          {
            v32 = v48;
            a1 = v43;
            if (v34 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v49 = v35;
          v30 = v35;
          v33 = v35 > v44;
          v29 = v46;
          a2 = v47;
          if (!v33)
          {
            v28 = v49;
            goto LABEL_58;
          }
        }

        v31 = v52;
        if (v34 < v47 || v52 >= v47)
        {
          a2 = v48;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v43;
        }

        else
        {
          a2 = v48;
          a1 = v43;
          if (v34 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v28 = v49;
        v29 = v46;
      }

      while (v30 > v44);
    }

LABEL_58:
    v56 = a2;
LABEL_59:
    v54 = v28;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v49 = a4 + v18;
    v54 = a4 + v18;
    if (v18 >= 1 && a2 < v52)
    {
      v47 = *(v8 + 16);
      v48 = v8 + 16;
      v45 = v15;
      v46 = (v8 + 8);
      do
      {
        v21 = v50;
        v22 = v53;
        v23 = v47;
        v47(v50, a2, v53);
        v24 = v51;
        v23(v51, a4, v22);
        sub_1E60C330C(&qword_1ED073FD8, MEMORY[0x1E6969530]);
        LOBYTE(v23) = sub_1E65E5B78();
        v25 = *v46;
        (*v46)(v24, v22);
        v25(v21, v22);
        if (v23)
        {
          v26 = v45;
          if (a1 < a2 || a1 >= v45 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v26;
        }

        else
        {
          v26 = v45;
          v27 = v45 + a4;
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v55 = v27;
          a4 += v26;
        }

        a1 += v26;
        v56 = a1;
      }

      while (a4 < v49 && a2 < v52);
    }
  }

  sub_1E636AC70(&v56, &v55, &v54);
  return 1;
}

uint64_t sub_1E60BD780(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t), void (*a7)(unint64_t *, unint64_t *, unint64_t *))
{
  v88 = a6;
  v92 = a3;
  v87 = sub_1E65D76A8();
  v12 = *(v87 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v87);
  v86 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v71 - v16;
  v91 = a5(0);
  v17 = *(v91 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v91);
  v84 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v19);
  v83 = &v71 - v22;
  v82 = *(v23 + 72);
  if (!v82)
  {
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v90 = a1;
  v24 = v82;
  if (a2 - a1 == 0x8000000000000000 && v82 == -1)
  {
    goto LABEL_60;
  }

  v25 = v92 - a2;
  if (v92 - a2 != 0x8000000000000000 || v82 != -1)
  {
    v26 = (a2 - a1) / v82;
    v27 = v90;
    v95 = v90;
    v94 = a4;
    v73 = a7;
    if (v26 < v25 / v82)
    {
      v28 = v26 * v82;
      if (a4 < v90 || v90 + v28 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != v90)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v81 = (a4 + v28);
      v93 = a4 + v28;
      if (v28 >= 1 && a2 < v92)
      {
        v31 = *(v17 + 16);
        v78 = (v12 + 8);
        v79 = v31;
        v80 = v17 + 16;
        v77 = (v17 + 8);
        do
        {
          v90 = v27;
          v32 = v83;
          v33 = a2;
          v34 = v91;
          v35 = v79;
          (v79)(v83, a2, v91);
          v36 = v84;
          v37 = v35(v84, a4, v34);
          v38 = v85;
          v39 = v88;
          v40 = (v88)(v37);
          v41 = v86;
          v39(v40);
          LODWORD(v89) = sub_1E65D7658();
          v42 = *v78;
          v43 = v41;
          v44 = a4;
          v45 = v87;
          (*v78)(v43, v87);
          v42(v38, v45);
          v46 = *v77;
          (*v77)(v36, v34);
          v46(v32, v34);
          if (v89)
          {
            v47 = v82;
            a2 = v33 + v82;
            v48 = v90;
            a4 = v44;
            if (v90 < v33 || v90 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v90 != v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          else
          {
            a2 = v33;
            v47 = v82;
            a4 = v44 + v82;
            v48 = v90;
            if (v90 < v44 || v90 >= a4)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v90 != v44)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v94 = a4;
          }

          v27 = v48 + v47;
          v95 = v27;
        }

        while (a4 < v81 && a2 < v92);
      }

LABEL_58:
      v73(&v95, &v94, &v93);
      return 1;
    }

    v29 = v25 / v82 * v82;
    if (a4 < a2 || a2 + v29 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_38:
        v49 = a4 + v29;
        if (v29 >= 1)
        {
          v50 = -v24;
          v77 = (v12 + 8);
          v78 = (v17 + 16);
          v75 = (v17 + 8);
          v76 = a4;
          v51 = v49;
          v52 = v90;
          v79 = -v24;
          v53 = v85;
          while (2)
          {
            while (1)
            {
              v72 = v49;
              v54 = (a2 + v50);
              v80 = a2;
              v81 = (a2 + v50);
              while (1)
              {
                v55 = v92;
                if (a2 <= v52)
                {
                  v95 = a2;
                  v93 = v72;
                  goto LABEL_58;
                }

                v74 = v49;
                v92 += v50;
                v56 = &v51[v50];
                v57 = *v78;
                v58 = v83;
                v59 = v91;
                v89 = v55;
                (v57)(v83, v56, v91);
                v60 = v84;
                v61 = (v57)(v84, v54, v59);
                v62 = v88;
                v63 = (v88)(v61);
                v64 = v86;
                v62(v63);
                LODWORD(v82) = sub_1E65D7658();
                v65 = *v77;
                v66 = v64;
                v67 = v87;
                (*v77)(v66, v87);
                v65(v53, v67);
                v68 = *v75;
                (*v75)(v60, v59);
                v68(v58, v59);
                if (v82)
                {
                  break;
                }

                v49 = v56;
                v69 = v76;
                if (v89 < v51 || v92 >= v51)
                {
                  swift_arrayInitWithTakeFrontToBack();
                  v52 = v90;
                }

                else
                {
                  v52 = v90;
                  if (v89 != v51)
                  {
                    swift_arrayInitWithTakeBackToFront();
                  }
                }

                v51 = v56;
                a2 = v80;
                v54 = v81;
                v50 = v79;
                if (v56 <= v69)
                {
                  goto LABEL_56;
                }
              }

              v70 = v76;
              if (v89 < v80 || v92 >= v80)
              {
                break;
              }

              a2 = v81;
              v52 = v90;
              v49 = v74;
              v50 = v79;
              if (v89 != v80)
              {
                swift_arrayInitWithTakeBackToFront();
                a2 = v81;
              }

              if (v51 <= v70)
              {
                goto LABEL_56;
              }
            }

            a2 = v81;
            swift_arrayInitWithTakeFrontToBack();
            v52 = v90;
            v49 = v74;
            v50 = v79;
            if (v51 > v70)
            {
              continue;
            }

            break;
          }
        }

LABEL_56:
        v95 = a2;
        v93 = v49;
        goto LABEL_58;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v24 = v82;
    goto LABEL_38;
  }

LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_1E60BDEBC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074368, &qword_1E65F08F8) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E60A5E2C(v0 + v2, v3);
}

unint64_t sub_1E60BDF64()
{
  result = qword_1ED074390;
  if (!qword_1ED074390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074388, &qword_1E65F0978);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074368, &qword_1E65F08F8);
    sub_1E60BE02C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074390);
  }

  return result;
}

unint64_t sub_1E60BE02C()
{
  result = qword_1ED074398;
  if (!qword_1ED074398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074368, &qword_1E65F08F8);
    sub_1E60BE0B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074398);
  }

  return result;
}

unint64_t sub_1E60BE0B8()
{
  result = qword_1ED0743A0;
  if (!qword_1ED0743A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0743A8, &qword_1E65F0980);
    sub_1E5FEAB1C();
    sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0743A0);
  }

  return result;
}

uint64_t sub_1E60BE170(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E60B79AC(a1, a2, v7, v6);
}

uint64_t sub_1E60BE224(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E60B836C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E60BE344(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E60B8948(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E60BE464(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E60B93AC(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_105Tm()
{
  v112 = type metadata accessor for AppComposer();
  v111 = *(*(v112 - 1) + 80);
  v110 = *(*(v112 - 1) + 64);
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v107 = (v0 + ((v111 + 32) & ~v111));
  v2 = *v107;

  v3 = v107 + v112[5];
  v4 = *v3;
  swift_unknownObjectRelease();
  v5 = type metadata accessor for AppEnvironment();
  v6 = v5[6];
  v109 = type metadata accessor for AccountService();
  v108 = *(v109[-1].Description + 1);
  v108(&v3[v6], v109);
  v7 = v5[7];
  v106 = type metadata accessor for AppStateService();
  v105 = *(v106[-1].Description + 1);
  v105(&v3[v7], v106);
  v8 = v5[8];
  v104 = type metadata accessor for ArchivedSessionService();
  v103 = *(v104[-1].Description + 1);
  v103(&v3[v8], v104);
  v9 = v5[9];
  v102 = type metadata accessor for AssetService();
  v101 = *(v102[-1].Description + 1);
  v101(&v3[v9], v102);
  v10 = v5[10];
  v100 = type metadata accessor for AwardsService();
  v99 = *(v100[-1].Description + 1);
  v99(&v3[v10], v100);
  v11 = v5[11];
  v98 = type metadata accessor for BookmarkService();
  v97 = *(v98[-1].Description + 1);
  v97(&v3[v11], v98);
  v12 = v5[12];
  v96 = type metadata accessor for CatalogService();
  v95 = *(v96[-1].Description + 1);
  v95(&v3[v12], v96);
  v13 = v5[13];
  v94 = type metadata accessor for ConfigurationService();
  v93 = *(v94[-1].Description + 1);
  v93(&v3[v13], v94);
  v14 = v5[14];
  v92 = type metadata accessor for ContentAvailabilityService();
  v91 = *(v92[-1].Description + 1);
  v91(&v3[v14], v92);
  v15 = v5[15];
  v90 = type metadata accessor for EngagementService();
  v89 = *(v90[-1].Description + 1);
  v89(&v3[v15], v90);
  v16 = v5[16];
  v88 = type metadata accessor for HealthDataService();
  v87 = *(v88[-1].Description + 1);
  v87(&v3[v16], v88);
  v17 = v5[17];
  v86 = type metadata accessor for InteropService();
  v85 = *(v86[-1].Description + 1);
  v85(&v3[v17], v86);
  v18 = v5[18];
  v84 = type metadata accessor for LocalizationService();
  v83 = *(v84[-1].Description + 1);
  v83(&v3[v18], v84);
  v19 = v5[19];
  v82 = type metadata accessor for MarketingService();
  v81 = *(v82[-1].Description + 1);
  v81(&v3[v19], v82);
  v20 = v5[20];
  v80 = type metadata accessor for MetricService();
  v79 = *(v80[-1].Description + 1);
  v79(&v3[v20], v80);
  v21 = v5[21];
  v78 = type metadata accessor for PersonalizationService();
  v77 = *(v78[-1].Description + 1);
  v77(&v3[v21], v78);
  v22 = v5[22];
  v76 = type metadata accessor for PlayerService();
  v75 = *(v76[-1].Description + 1);
  v75(&v3[v22], v76);
  v23 = v5[23];
  v74 = type metadata accessor for PrivacyPreferenceService();
  v73 = *(v74[-1].Description + 1);
  v73(&v3[v23], v74);
  v24 = v5[24];
  v72 = type metadata accessor for RecommendationService();
  v71 = *(v72[-1].Description + 1);
  v71(&v3[v24], v72);
  v25 = v5[25];
  v70 = type metadata accessor for RemoteBrowsingService();
  v69 = *(v70[-1].Description + 1);
  v69(&v3[v25], v70);
  v26 = v5[26];
  v68 = type metadata accessor for SearchService();
  v67 = *(v68[-1].Description + 1);
  v67(&v3[v26], v68);
  v27 = v5[27];
  v66 = type metadata accessor for ServiceSubscriptionService();
  v65 = *(v66[-1].Description + 1);
  v65(&v3[v27], v66);
  v28 = v5[28];
  v59 = type metadata accessor for SessionService();
  v64 = *(v59[-1].Description + 1);
  v64(&v3[v28], v59);
  v29 = v5[29];
  v30 = type metadata accessor for SharePlayService();
  v63 = *(v30[-1].Description + 1);
  v63(&v3[v29], v30);
  v31 = v5[30];
  v32 = type metadata accessor for SiriService();
  v62 = *(v32[-1].Description + 1);
  v62(&v3[v31], v32);
  v33 = v5[31];
  v34 = type metadata accessor for SyncService();
  v61 = *(v34[-1].Description + 1);
  v61(&v3[v33], v34);
  v35 = &v3[v5[32]];
  v36 = *(v35 + 1);

  v37 = *(v35 + 3);

  v38 = *(v35 + 5);

  v39 = v5[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v60 = *(QueueService[-1].Description + 1);
  v60(&v3[v39], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v3[v5[34]]);
  v41 = *&v3[v5[35]];

  v42 = v5[36];
  v43 = type metadata accessor for WorkoutPlanService();
  v58 = *(v43[-1].Description + 1);
  v58(&v3[v42], v43);
  v44 = *(v107 + v112[6]);

  v45 = (v107 + v112[7]);
  v46 = *v45;

  v47 = v45[1];

  v48 = v45 + *(type metadata accessor for AppDataItemResolver() + 24);
  v49 = *v48;
  swift_unknownObjectRelease();
  v108(&v48[v5[6]], v109);
  v105(&v48[v5[7]], v106);
  v103(&v48[v5[8]], v104);
  v101(&v48[v5[9]], v102);
  v99(&v48[v5[10]], v100);
  v97(&v48[v5[11]], v98);
  v95(&v48[v5[12]], v96);
  v93(&v48[v5[13]], v94);
  v91(&v48[v5[14]], v92);
  v89(&v48[v5[15]], v90);
  v87(&v48[v5[16]], v88);
  v85(&v48[v5[17]], v86);
  v83(&v48[v5[18]], v84);
  v81(&v48[v5[19]], v82);
  v79(&v48[v5[20]], v80);
  v77(&v48[v5[21]], v78);
  v75(&v48[v5[22]], v76);
  v73(&v48[v5[23]], v74);
  v71(&v48[v5[24]], v72);
  v69(&v48[v5[25]], v70);
  v67(&v48[v5[26]], v68);
  v65(&v48[v5[27]], v66);
  v64(&v48[v5[28]], v59);
  v63(&v48[v5[29]], v30);
  v62(&v48[v5[30]], v32);
  v61(&v48[v5[31]], v34);
  v50 = &v48[v5[32]];
  v51 = *(v50 + 1);

  v52 = *(v50 + 3);

  v53 = *(v50 + 5);

  v60(&v48[v5[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v48[v5[34]]);
  v54 = *&v48[v5[35]];

  v58(&v48[v5[36]], v43);
  v55 = *(v107 + v112[8]);
  swift_unknownObjectRelease();
  if (*(v107 + v112[9] + 8) >= 0xC)
  {
  }

  v56 = (v107 + v112[10]);
  if (v56[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  return swift_deallocObject();
}

uint64_t sub_1E60BF224(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E60B9C78(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_97Tm()
{
  v115 = type metadata accessor for AppComposer();
  v113 = *(*(v115 - 1) + 80);
  v111 = *(*(v115 - 1) + 64);
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v114 = v0;
  v112 = (v113 + 32) & ~v113;
  v108 = v0 + v112;
  v2 = *(v0 + v112);

  v3 = (v0 + v112 + v115[5]);
  v4 = *v3;
  swift_unknownObjectRelease();
  v5 = type metadata accessor for AppEnvironment();
  v6 = v5[6];
  v110 = type metadata accessor for AccountService();
  v109 = *(v110[-1].Description + 1);
  v109(&v3[v6], v110);
  v7 = v5[7];
  v107 = type metadata accessor for AppStateService();
  v106 = *(v107[-1].Description + 1);
  v106(&v3[v7], v107);
  v8 = v5[8];
  v105 = type metadata accessor for ArchivedSessionService();
  v104 = *(v105[-1].Description + 1);
  v104(&v3[v8], v105);
  v9 = v5[9];
  v103 = type metadata accessor for AssetService();
  v102 = *(v103[-1].Description + 1);
  v102(&v3[v9], v103);
  v10 = v5[10];
  v101 = type metadata accessor for AwardsService();
  v100 = *(v101[-1].Description + 1);
  v100(&v3[v10], v101);
  v11 = v5[11];
  v99 = type metadata accessor for BookmarkService();
  v98 = *(v99[-1].Description + 1);
  v98(&v3[v11], v99);
  v12 = v5[12];
  v97 = type metadata accessor for CatalogService();
  v96 = *(v97[-1].Description + 1);
  v96(&v3[v12], v97);
  v13 = v5[13];
  v95 = type metadata accessor for ConfigurationService();
  v94 = *(v95[-1].Description + 1);
  v94(&v3[v13], v95);
  v14 = v5[14];
  v93 = type metadata accessor for ContentAvailabilityService();
  v92 = *(v93[-1].Description + 1);
  v92(&v3[v14], v93);
  v15 = v5[15];
  v91 = type metadata accessor for EngagementService();
  v90 = *(v91[-1].Description + 1);
  v90(&v3[v15], v91);
  v16 = v5[16];
  v89 = type metadata accessor for HealthDataService();
  v88 = *(v89[-1].Description + 1);
  v88(&v3[v16], v89);
  v17 = v5[17];
  v87 = type metadata accessor for InteropService();
  v86 = *(v87[-1].Description + 1);
  v86(&v3[v17], v87);
  v18 = v5[18];
  v85 = type metadata accessor for LocalizationService();
  v84 = *(v85[-1].Description + 1);
  v84(&v3[v18], v85);
  v19 = v5[19];
  v83 = type metadata accessor for MarketingService();
  v82 = *(v83[-1].Description + 1);
  v82(&v3[v19], v83);
  v20 = v5[20];
  v81 = type metadata accessor for MetricService();
  v80 = *(v81[-1].Description + 1);
  v80(&v3[v20], v81);
  v21 = v5[21];
  v79 = type metadata accessor for PersonalizationService();
  v78 = *(v79[-1].Description + 1);
  v78(&v3[v21], v79);
  v22 = v5[22];
  v77 = type metadata accessor for PlayerService();
  v76 = *(v77[-1].Description + 1);
  v76(&v3[v22], v77);
  v23 = v5[23];
  v75 = type metadata accessor for PrivacyPreferenceService();
  v74 = *(v75[-1].Description + 1);
  v74(&v3[v23], v75);
  v24 = v5[24];
  v73 = type metadata accessor for RecommendationService();
  v72 = *(v73[-1].Description + 1);
  v72(&v3[v24], v73);
  v25 = v5[25];
  v71 = type metadata accessor for RemoteBrowsingService();
  v70 = *(v71[-1].Description + 1);
  v70(&v3[v25], v71);
  v26 = v5[26];
  v69 = type metadata accessor for SearchService();
  v68 = *(v69[-1].Description + 1);
  v68(&v3[v26], v69);
  v27 = v5[27];
  v67 = type metadata accessor for ServiceSubscriptionService();
  v66 = *(v67[-1].Description + 1);
  v66(&v3[v27], v67);
  v28 = v5[28];
  v60 = type metadata accessor for SessionService();
  v65 = *(v60[-1].Description + 1);
  v65(&v3[v28], v60);
  v29 = v5[29];
  v30 = type metadata accessor for SharePlayService();
  v64 = *(v30[-1].Description + 1);
  v64(&v3[v29], v30);
  v31 = v5[30];
  v32 = type metadata accessor for SiriService();
  v63 = *(v32[-1].Description + 1);
  v63(&v3[v31], v32);
  v33 = v5[31];
  v34 = type metadata accessor for SyncService();
  v62 = *(v34[-1].Description + 1);
  v62(&v3[v33], v34);
  v35 = &v3[v5[32]];
  v36 = *(v35 + 1);

  v37 = *(v35 + 3);

  v38 = *(v35 + 5);

  v39 = v5[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v61 = *(QueueService[-1].Description + 1);
  v61(&v3[v39], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v3[v5[34]]);
  v41 = *&v3[v5[35]];

  v42 = v5[36];
  v43 = type metadata accessor for WorkoutPlanService();
  v59 = *(v43[-1].Description + 1);
  v59(&v3[v42], v43);
  v44 = *(v108 + v115[6]);

  v45 = (v108 + v115[7]);
  v46 = *v45;

  v47 = v45[1];

  v48 = v45 + *(type metadata accessor for AppDataItemResolver() + 24);
  v49 = *v48;
  swift_unknownObjectRelease();
  v109(&v48[v5[6]], v110);
  v106(&v48[v5[7]], v107);
  v104(&v48[v5[8]], v105);
  v102(&v48[v5[9]], v103);
  v100(&v48[v5[10]], v101);
  v98(&v48[v5[11]], v99);
  v96(&v48[v5[12]], v97);
  v94(&v48[v5[13]], v95);
  v92(&v48[v5[14]], v93);
  v90(&v48[v5[15]], v91);
  v88(&v48[v5[16]], v89);
  v86(&v48[v5[17]], v87);
  v84(&v48[v5[18]], v85);
  v82(&v48[v5[19]], v83);
  v80(&v48[v5[20]], v81);
  v78(&v48[v5[21]], v79);
  v76(&v48[v5[22]], v77);
  v74(&v48[v5[23]], v75);
  v72(&v48[v5[24]], v73);
  v70(&v48[v5[25]], v71);
  v68(&v48[v5[26]], v69);
  v66(&v48[v5[27]], v67);
  v65(&v48[v5[28]], v60);
  v64(&v48[v5[29]], v30);
  v63(&v48[v5[30]], v32);
  v62(&v48[v5[31]], v34);
  v50 = &v48[v5[32]];
  v51 = *(v50 + 1);

  v52 = *(v50 + 3);

  v53 = *(v50 + 5);

  v61(&v48[v5[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v48[v5[34]]);
  v54 = *&v48[v5[35]];

  v59(&v48[v5[36]], v43);
  v55 = *(v108 + v115[8]);
  swift_unknownObjectRelease();
  if (*(v108 + v115[9] + 8) >= 0xCuLL)
  {
  }

  v56 = (v108 + v115[10]);
  if (v56[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  v57 = *(v114 + ((v111 + v112 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1E60C0000(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E60BA49C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E60C0120(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v72 = a5;
  v9 = sub_1E65DF3B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v59 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v64 = v54 - v14;
  v63 = sub_1E65D76A8();
  v15 = *(v63 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v18 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743F8, &qword_1E65F0B60);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = v54 - v21;
  v23 = -1 << *(a1 + 32);
  v24 = ~v23;
  v25 = *(a1 + 64);
  v26 = -v23;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v65 = a1;
  v66 = a1 + 64;
  v67 = v24;
  v68 = 0;
  v61 = (v10 + 32);
  v62 = (v15 + 32);
  v69 = v27 & v25;
  v70 = a2;
  v71 = a3;
  v56 = v10 + 8;
  v57 = v10 + 16;
  v58 = v15;
  v60 = v10;
  v54[3] = v10 + 40;
  v55 = (v15 + 8);

  v54[1] = a3;

  while (1)
  {
    sub_1E6121170(v22);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074400, &qword_1E65F0B68);
    if ((*(*(v31 - 8) + 48))(v22, 1, v31) == 1)
    {
      sub_1E5E24EE4();
    }

    v32 = a4;
    v33 = *(v31 + 48);
    v34 = *v62;
    (*v62)(v18, v22, v63);
    v35 = *v61;
    v36 = v9;
    (*v61)(v64, &v22[v33], v9);
    v37 = *v72;
    v39 = sub_1E64173CC(v18);
    v40 = *(v37 + 16);
    v41 = (v38 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      break;
    }

    v43 = v38;
    if (*(v37 + 24) >= v42)
    {
      if ((v32 & 1) == 0)
      {
        sub_1E6424BA8();
      }
    }

    else
    {
      v44 = v72;
      sub_1E641BEB0(v42, v32 & 1);
      v45 = *v44;
      v46 = sub_1E64173CC(v18);
      if ((v43 & 1) != (v47 & 1))
      {
        goto LABEL_19;
      }

      v39 = v46;
    }

    v48 = *v72;
    if (v43)
    {
      v29 = v59;
      v28 = v60;
      v30 = *(v60 + 72) * v39;
      v9 = v36;
      (*(v60 + 16))(v59, v48[7] + v30, v36);
      (*(v28 + 8))(v64, v36);
      (*v55)(v18, v63);
      (*(v28 + 40))(v48[7] + v30, v29, v36);
      a4 = 1;
    }

    else
    {
      v48[(v39 >> 6) + 8] |= 1 << v39;
      v34((v48[6] + *(v58 + 72) * v39), v18, v63);
      v49 = v48[7] + *(v60 + 72) * v39;
      v9 = v36;
      v35(v49, v64, v36);
      v50 = v48[2];
      v51 = __OFADD__(v50, 1);
      v52 = v50 + 1;
      if (v51)
      {
        goto LABEL_18;
      }

      v48[2] = v52;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1E65E6C68();
  __break(1u);
  return result;
}

uint64_t sub_1E60C0620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(type metadata accessor for AppComposer() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 47) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 87) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(sub_1E65D76F8() - 8);
  v15 = *(v4 + v13);
  v16 = v4 + ((*(v14 + 80) + v13 + 8) & ~*(v14 + 80));

  return sub_1E6123D00(a1, a2, a3, v4 + v10, v4 + v11, (v4 + v12), v15, v16, a4);
}

uint64_t sub_1E60C074C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(type metadata accessor for AppComposer() - 8);
  v12 = (*(v11 + 64) + ((*(v11 + 80) + 16) & ~*(v11 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 47) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v5 + ((v13 + 87) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E6124CA8(a1, a2, a3 & 1, a4, v5 + v12, (v5 + v13), v14, a5);
}

uint64_t sub_1E60C0848(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_1E60C08DC()
{
  result = qword_1EE2D4C70;
  if (!qword_1EE2D4C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074418, &qword_1E65F0B80);
    sub_1E60C0968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4C70);
  }

  return result;
}

unint64_t sub_1E60C0968()
{
  result = qword_1EE2D4CE8;
  if (!qword_1EE2D4CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074438, &qword_1E65F0BA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074440, &qword_1E65F0BA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074448, &qword_1E65F0BB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074450, &qword_1E65F0BB8);
    sub_1E60C0A9C();
    sub_1E60C0DB8();
    sub_1E60C0E70();
    swift_getOpaqueTypeConformance2();
    sub_1E60C0F28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4CE8);
  }

  return result;
}

unint64_t sub_1E60C0A9C()
{
  result = qword_1EE2D4E20;
  if (!qword_1EE2D4E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074440, &qword_1E65F0BA8);
    sub_1E60C0B54();
    sub_1E5FED46C(&qword_1EE2D4C08, &qword_1ED074470, &qword_1E65F0BD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E20);
  }

  return result;
}

unint64_t sub_1E60C0B54()
{
  result = qword_1EE2D4EA0;
  if (!qword_1EE2D4EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074458, &qword_1E65F0BC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074460, &qword_1E65F0BC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0776B0, &unk_1E65EDE50);
    sub_1E60C0CA8();
    sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50);
    swift_getOpaqueTypeConformance2();
    sub_1E5FED46C(&qword_1EE2D4C28, &qword_1ED073AA8, &qword_1E6600E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4EA0);
  }

  return result;
}

unint64_t sub_1E60C0CA8()
{
  result = qword_1EE2D4E48;
  if (!qword_1EE2D4E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074460, &qword_1E65F0BC8);
    sub_1E60C0D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E48);
  }

  return result;
}

unint64_t sub_1E60C0D34()
{
  result = qword_1EE2D4EC8;
  if (!qword_1EE2D4EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074468, &qword_1E65F0BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4EC8);
  }

  return result;
}

unint64_t sub_1E60C0DB8()
{
  result = qword_1EE2D4DF8;
  if (!qword_1EE2D4DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074448, &qword_1E65F0BB0);
    sub_1E60C0A9C();
    sub_1E5FED46C(&qword_1EE2D4EF8, &qword_1ED073AB8, &qword_1E65EDEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4DF8);
  }

  return result;
}

unint64_t sub_1E60C0E70()
{
  result = qword_1EE2D4E00;
  if (!qword_1EE2D4E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074450, &qword_1E65F0BB8);
    sub_1E60C0A9C();
    sub_1E5FED46C(&qword_1EE2D4F00, &qword_1ED074478, &qword_1E6600DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E00);
  }

  return result;
}

unint64_t sub_1E60C0F28()
{
  result = qword_1EE2D4E90;
  if (!qword_1EE2D4E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074480, &qword_1E65F0BE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074488, &qword_1E65F0BE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074490, &qword_1E65F0BF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074498, &qword_1E65F0BF8);
    sub_1E60C108C();
    sub_1E60C1450();
    sub_1E60C1508();
    swift_getOpaqueTypeConformance2();
    sub_1E60C330C(&qword_1EE2D4BC8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E90);
  }

  return result;
}

unint64_t sub_1E60C108C()
{
  result = qword_1EE2D4DD8;
  if (!qword_1EE2D4DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074488, &qword_1E65F0BE8);
    sub_1E60C1144();
    sub_1E5FED46C(&qword_1EE2D4C08, &qword_1ED074470, &qword_1E65F0BD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4DD8);
  }

  return result;
}

unint64_t sub_1E60C1144()
{
  result = qword_1EE2D4DE8;
  if (!qword_1EE2D4DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0744A0, &qword_1E65F0C00);
    sub_1E60C11FC();
    sub_1E5FED46C(&qword_1EE2D4C28, &qword_1ED073AA8, &qword_1E6600E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4DE8);
  }

  return result;
}

unint64_t sub_1E60C11FC()
{
  result = qword_1EE2D4E10;
  if (!qword_1EE2D4E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0744A8, &qword_1E65F0C08);
    sub_1E60C1288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E10);
  }

  return result;
}

unint64_t sub_1E60C1288()
{
  result = qword_1EE2D4E38;
  if (!qword_1EE2D4E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0744B0, &qword_1E65F0C10);
    sub_1E60C1314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E38);
  }

  return result;
}

unint64_t sub_1E60C1314()
{
  result = qword_1EE2D4EB8;
  if (!qword_1EE2D4EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0744B8, &qword_1E65F0C18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0776B0, &unk_1E65EDE50);
    sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50);
    swift_getOpaqueTypeConformance2();
    sub_1E5FED46C(&qword_1EE2D4C18, &qword_1ED072AA0, &qword_1E65EDF10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4EB8);
  }

  return result;
}

unint64_t sub_1E60C1450()
{
  result = qword_1EE2D4DB8;
  if (!qword_1EE2D4DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074490, &qword_1E65F0BF0);
    sub_1E60C108C();
    sub_1E5FED46C(&qword_1EE2D4EF8, &qword_1ED073AB8, &qword_1E65EDEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4DB8);
  }

  return result;
}

unint64_t sub_1E60C1508()
{
  result = qword_1EE2D4DC0;
  if (!qword_1EE2D4DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074498, &qword_1E65F0BF8);
    sub_1E60C108C();
    sub_1E5FED46C(&qword_1EE2D4F00, &qword_1ED074478, &qword_1E6600DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4DC0);
  }

  return result;
}

unint64_t sub_1E60C15C0()
{
  result = qword_1EE2D4C88;
  if (!qword_1EE2D4C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074420, &qword_1E65F0B88);
    sub_1E60C164C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4C88);
  }

  return result;
}

unint64_t sub_1E60C164C()
{
  result = qword_1EE2D4D30;
  if (!qword_1EE2D4D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0744C0, &qword_1E65F0C20);
    sub_1E60C16D8();
    sub_1E60C1E6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4D30);
  }

  return result;
}

unint64_t sub_1E60C16D8()
{
  result = qword_1EE2D4E88;
  if (!qword_1EE2D4E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0744C8, &qword_1E65F0C28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0744D0, &qword_1E65F0C30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0744D8, &qword_1E65F0C38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0744E0, &qword_1E65F0C40);
    sub_1E60C183C();
    sub_1E60C1CFC();
    sub_1E60C1DB4();
    swift_getOpaqueTypeConformance2();
    sub_1E60C330C(&qword_1EE2D4BC8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E88);
  }

  return result;
}

unint64_t sub_1E60C183C()
{
  result = qword_1EE2D4DE0;
  if (!qword_1EE2D4DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0744D0, &qword_1E65F0C30);
    sub_1E60C18F4();
    sub_1E5FED46C(&qword_1EE2D4C08, &qword_1ED074470, &qword_1E65F0BD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4DE0);
  }

  return result;
}

unint64_t sub_1E60C18F4()
{
  result = qword_1EE2D4DF0;
  if (!qword_1EE2D4DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0744E8, &qword_1E65F0C48);
    sub_1E60C19AC();
    sub_1E5FED46C(&qword_1EE2D4C28, &qword_1ED073AA8, &qword_1E6600E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4DF0);
  }

  return result;
}

unint64_t sub_1E60C19AC()
{
  result = qword_1EE2D4E18;
  if (!qword_1EE2D4E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0744F0, &qword_1E65F0C50);
    sub_1E60C1A38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E18);
  }

  return result;
}

unint64_t sub_1E60C1A38()
{
  result = qword_1EE2D4E98;
  if (!qword_1EE2D4E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0744F8, &qword_1E65F0C58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074500, &qword_1E65F0C60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0776B0, &unk_1E65EDE50);
    sub_1E60C1B8C();
    sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50);
    swift_getOpaqueTypeConformance2();
    sub_1E5FED46C(&qword_1EE2D4C18, &qword_1ED072AA0, &qword_1E65EDF10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E98);
  }

  return result;
}

unint64_t sub_1E60C1B8C()
{
  result = qword_1EE2D4E40;
  if (!qword_1EE2D4E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074500, &qword_1E65F0C60);
    sub_1E60C1C44();
    sub_1E5FED46C(&qword_1EE2D4BE8, &unk_1ED0779E0, &qword_1E65EC400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E40);
  }

  return result;
}

unint64_t sub_1E60C1C44()
{
  result = qword_1EE2D4EC0;
  if (!qword_1EE2D4EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074508, &qword_1E65F0C68);
    sub_1E5FED46C(&unk_1EE2D4BD0, &qword_1ED073840, &qword_1E65EDBA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4EC0);
  }

  return result;
}

unint64_t sub_1E60C1CFC()
{
  result = qword_1EE2D4DC8;
  if (!qword_1EE2D4DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0744D8, &qword_1E65F0C38);
    sub_1E60C183C();
    sub_1E5FED46C(&qword_1EE2D4EF8, &qword_1ED073AB8, &qword_1E65EDEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4DC8);
  }

  return result;
}

unint64_t sub_1E60C1DB4()
{
  result = qword_1EE2D4DD0;
  if (!qword_1EE2D4DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0744E0, &qword_1E65F0C40);
    sub_1E60C183C();
    sub_1E5FED46C(&qword_1EE2D4F00, &qword_1ED074478, &qword_1E6600DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4DD0);
  }

  return result;
}

unint64_t sub_1E60C1E6C()
{
  result = qword_1EE2D4E08;
  if (!qword_1EE2D4E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074510, &qword_1E65F0C70);
    sub_1E60C1F28();
    sub_1E60C330C(&qword_1EE2D4BC8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E08);
  }

  return result;
}

unint64_t sub_1E60C1F28()
{
  result = qword_1EE2D4E30;
  if (!qword_1EE2D4E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074518, &qword_1E65F0C78);
    sub_1E60C1FB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E30);
  }

  return result;
}

unint64_t sub_1E60C1FB4()
{
  result = qword_1EE2D4EB0;
  if (!qword_1EE2D4EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074520, &qword_1E65F0C80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0776B0, &unk_1E65EDE50);
    sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50);
    swift_getOpaqueTypeConformance2();
    sub_1E5FED46C(&unk_1EE2D4BD0, &qword_1ED073840, &qword_1E65EDBA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4EB0);
  }

  return result;
}

unint64_t sub_1E60C20F0()
{
  result = qword_1EE2D4CB0;
  if (!qword_1EE2D4CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073DA0, &unk_1E65FA8A0);
    sub_1E6071CE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4CB0);
  }

  return result;
}

unint64_t sub_1E60C217C()
{
  result = qword_1EE2D4C60;
  if (!qword_1EE2D4C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074430, &qword_1E65F0B98);
    sub_1E60123A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4C60);
  }

  return result;
}

uint64_t sub_1E60C2208(char *a1)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E60A5184(a1, v1 + v4, (v1 + v5), (v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E60C22FC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E60B3FF8(a1, a2, v7, v6);
}

uint64_t sub_1E60C23CC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E60B473C(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_185Tm()
{
  v113 = type metadata accessor for AppComposer();
  v112 = *(*(v113 - 1) + 80);
  v111 = *(*(v113 - 1) + 64);
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v108 = (v0 + ((v112 + 40) & ~v112));
  v3 = *v108;

  v4 = v108 + v113[5];
  v5 = *v4;
  swift_unknownObjectRelease();
  v6 = type metadata accessor for AppEnvironment();
  v7 = v6[6];
  v110 = type metadata accessor for AccountService();
  v109 = *(v110[-1].Description + 1);
  v109(&v4[v7], v110);
  v8 = v6[7];
  v107 = type metadata accessor for AppStateService();
  v106 = *(v107[-1].Description + 1);
  v106(&v4[v8], v107);
  v9 = v6[8];
  v105 = type metadata accessor for ArchivedSessionService();
  v104 = *(v105[-1].Description + 1);
  v104(&v4[v9], v105);
  v10 = v6[9];
  v103 = type metadata accessor for AssetService();
  v102 = *(v103[-1].Description + 1);
  v102(&v4[v10], v103);
  v11 = v6[10];
  v101 = type metadata accessor for AwardsService();
  v100 = *(v101[-1].Description + 1);
  v100(&v4[v11], v101);
  v12 = v6[11];
  v99 = type metadata accessor for BookmarkService();
  v98 = *(v99[-1].Description + 1);
  v98(&v4[v12], v99);
  v13 = v6[12];
  v97 = type metadata accessor for CatalogService();
  v96 = *(v97[-1].Description + 1);
  v96(&v4[v13], v97);
  v14 = v6[13];
  v95 = type metadata accessor for ConfigurationService();
  v94 = *(v95[-1].Description + 1);
  v94(&v4[v14], v95);
  v15 = v6[14];
  v93 = type metadata accessor for ContentAvailabilityService();
  v92 = *(v93[-1].Description + 1);
  v92(&v4[v15], v93);
  v16 = v6[15];
  v91 = type metadata accessor for EngagementService();
  v90 = *(v91[-1].Description + 1);
  v90(&v4[v16], v91);
  v17 = v6[16];
  v89 = type metadata accessor for HealthDataService();
  v88 = *(v89[-1].Description + 1);
  v88(&v4[v17], v89);
  v18 = v6[17];
  v87 = type metadata accessor for InteropService();
  v86 = *(v87[-1].Description + 1);
  v86(&v4[v18], v87);
  v19 = v6[18];
  v85 = type metadata accessor for LocalizationService();
  v84 = *(v85[-1].Description + 1);
  v84(&v4[v19], v85);
  v20 = v6[19];
  v83 = type metadata accessor for MarketingService();
  v82 = *(v83[-1].Description + 1);
  v82(&v4[v20], v83);
  v21 = v6[20];
  v81 = type metadata accessor for MetricService();
  v80 = *(v81[-1].Description + 1);
  v80(&v4[v21], v81);
  v22 = v6[21];
  v79 = type metadata accessor for PersonalizationService();
  v78 = *(v79[-1].Description + 1);
  v78(&v4[v22], v79);
  v23 = v6[22];
  v77 = type metadata accessor for PlayerService();
  v76 = *(v77[-1].Description + 1);
  v76(&v4[v23], v77);
  v24 = v6[23];
  v75 = type metadata accessor for PrivacyPreferenceService();
  v74 = *(v75[-1].Description + 1);
  v74(&v4[v24], v75);
  v25 = v6[24];
  v73 = type metadata accessor for RecommendationService();
  v72 = *(v73[-1].Description + 1);
  v72(&v4[v25], v73);
  v26 = v6[25];
  v71 = type metadata accessor for RemoteBrowsingService();
  v70 = *(v71[-1].Description + 1);
  v70(&v4[v26], v71);
  v27 = v6[26];
  v69 = type metadata accessor for SearchService();
  v68 = *(v69[-1].Description + 1);
  v68(&v4[v27], v69);
  v28 = v6[27];
  v67 = type metadata accessor for ServiceSubscriptionService();
  v66 = *(v67[-1].Description + 1);
  v66(&v4[v28], v67);
  v29 = v6[28];
  v60 = type metadata accessor for SessionService();
  v65 = *(v60[-1].Description + 1);
  v65(&v4[v29], v60);
  v30 = v6[29];
  v31 = type metadata accessor for SharePlayService();
  v64 = *(v31[-1].Description + 1);
  v64(&v4[v30], v31);
  v32 = v6[30];
  v33 = type metadata accessor for SiriService();
  v63 = *(v33[-1].Description + 1);
  v63(&v4[v32], v33);
  v34 = v6[31];
  v35 = type metadata accessor for SyncService();
  v62 = *(v35[-1].Description + 1);
  v62(&v4[v34], v35);
  v36 = &v4[v6[32]];
  v37 = *(v36 + 1);

  v38 = *(v36 + 3);

  v39 = *(v36 + 5);

  v40 = v6[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v61 = *(QueueService[-1].Description + 1);
  v61(&v4[v40], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v4[v6[34]]);
  v42 = *&v4[v6[35]];

  v43 = v6[36];
  v44 = type metadata accessor for WorkoutPlanService();
  v59 = *(v44[-1].Description + 1);
  v59(&v4[v43], v44);
  v45 = *(v108 + v113[6]);

  v46 = (v108 + v113[7]);
  v47 = *v46;

  v48 = v46[1];

  v49 = v46 + *(type metadata accessor for AppDataItemResolver() + 24);
  v50 = *v49;
  swift_unknownObjectRelease();
  v109(&v49[v6[6]], v110);
  v106(&v49[v6[7]], v107);
  v104(&v49[v6[8]], v105);
  v102(&v49[v6[9]], v103);
  v100(&v49[v6[10]], v101);
  v98(&v49[v6[11]], v99);
  v96(&v49[v6[12]], v97);
  v94(&v49[v6[13]], v95);
  v92(&v49[v6[14]], v93);
  v90(&v49[v6[15]], v91);
  v88(&v49[v6[16]], v89);
  v86(&v49[v6[17]], v87);
  v84(&v49[v6[18]], v85);
  v82(&v49[v6[19]], v83);
  v80(&v49[v6[20]], v81);
  v78(&v49[v6[21]], v79);
  v76(&v49[v6[22]], v77);
  v74(&v49[v6[23]], v75);
  v72(&v49[v6[24]], v73);
  v70(&v49[v6[25]], v71);
  v68(&v49[v6[26]], v69);
  v66(&v49[v6[27]], v67);
  v65(&v49[v6[28]], v60);
  v64(&v49[v6[29]], v31);
  v63(&v49[v6[30]], v33);
  v62(&v49[v6[31]], v35);
  v51 = &v49[v6[32]];
  v52 = *(v51 + 1);

  v53 = *(v51 + 3);

  v54 = *(v51 + 5);

  v61(&v49[v6[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v49[v6[34]]);
  v55 = *&v49[v6[35]];

  v59(&v49[v6[36]], v44);
  v56 = *(v108 + v113[8]);
  swift_unknownObjectRelease();
  if (*(v108 + v113[9] + 8) >= 0xC)
  {
  }

  v57 = (v108 + v113[10]);
  if (v57[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  return swift_deallocObject();
}

uint64_t sub_1E60C319C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E60B5224(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1E60C32E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1E60B29A8(a1, *(v2 + 32), *(v2 + 40), *(v2 + 41), a2);
}

uint64_t sub_1E60C330C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E60C3354(uint64_t a1)
{
  v4 = *(type metadata accessor for RouteDestination() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E5FD0850(a1, v1 + 16, v1 + v5);
}

uint64_t sub_1E60C3430(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E60C34A8(uint64_t a1, uint64_t a2)
{
  v448 = a2;
  v447 = a1;
  v454 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v389 = &v375 - v5;
  v6 = sub_1E65DCE18();
  v406 = *(v6 - 8);
  v407 = v6;
  v7 = *(v406 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v405 = &v375 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65E5158();
  v385 = *(v9 - 8);
  v386 = v9;
  v10 = *(v385 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v384 = &v375 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E65DCBA8();
  v408 = *(v12 - 8);
  v409 = v12;
  v13 = *(v408 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v413 = &v375 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65DCAE8();
  v402 = *(v15 - 8);
  v403 = v15;
  v16 = *(v402 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v401 = &v375 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E65D86A8();
  v391 = *(v18 - 8);
  v392 = v18;
  v19 = *(v391 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v390 = &v375 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v411 = sub_1E65DCAB8();
  v395 = *(v411 - 8);
  v21 = *(v395 + 64);
  MEMORY[0x1EEE9AC00](v411);
  v442 = &v375 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v430 = sub_1E65D97D8();
  v427 = *(v430 - 8);
  v23 = *(v427 + 64);
  v24 = MEMORY[0x1EEE9AC00](v430);
  v415 = (&v375 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v404 = &v375 - v26;
  v27 = sub_1E65DCA18();
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v380 = &v375 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v388 = &v375 - v31;
  v397 = sub_1E65DCBE8();
  v32 = *(*(v397 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v397);
  v398 = &v375 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v387 = &v375 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073570, &unk_1E65F4570);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v422 = &v375 - v38;
  v39 = sub_1E65D8F28();
  v418 = *(v39 - 8);
  v419 = v39;
  v40 = *(v418 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v421 = &v375 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v420 = &v375 - v44;
  v45 = sub_1E65D76A8();
  v46 = *(v45 - 8);
  v424 = v45;
  v425 = v46;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v423 = &v375 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v50 = *(*(v49 - 8) + 64);
  v51 = MEMORY[0x1EEE9AC00](v49 - 8);
  v399 = &v375 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v431 = &v375 - v53;
  v54 = sub_1E65D8C68();
  v416 = *(v54 - 8);
  v417 = v54;
  v55 = *(v416 + 64);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v394 = &v375 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v383 = &v375 - v59;
  MEMORY[0x1EEE9AC00](v58);
  v429 = &v375 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60);
  v62 = *(*(v61 - 8) + 64);
  v63 = MEMORY[0x1EEE9AC00](v61 - 8);
  v393 = &v375 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v428 = &v375 - v65;
  v432 = sub_1E65D7D78();
  v426 = *(v432 - 8);
  v66 = *(v426 + 64);
  v67 = MEMORY[0x1EEE9AC00](v432);
  v400 = &v375 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = MEMORY[0x1EEE9AC00](v67);
  v414 = &v375 - v70;
  MEMORY[0x1EEE9AC00](v69);
  v396 = &v375 - v71;
  v412 = sub_1E65DD228();
  v410 = *(v412 - 8);
  v72 = *(v410 + 64);
  v73 = MEMORY[0x1EEE9AC00](v412);
  v382 = &v375 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v73);
  v440 = &v375 - v75;
  v439 = sub_1E65DD0D8();
  v76 = *(*(v439 - 8) + 64);
  v77 = MEMORY[0x1EEE9AC00](v439);
  *&v441 = &v375 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v77);
  v449 = &v375 - v79;
  v80 = sub_1E65E3B68();
  v437 = *(v80 - 8);
  v438 = v80;
  v81 = *(v437 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v83 = &v375 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1E65DD0A8();
  v85 = *(v84 - 8);
  v86 = *(v85 + 64);
  v87 = MEMORY[0x1EEE9AC00](v84);
  v381 = &v375 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = MEMORY[0x1EEE9AC00](v87);
  v91 = (&v375 - v90);
  v92 = MEMORY[0x1EEE9AC00](v89);
  v94 = &v375 - v93;
  v379 = v95;
  MEMORY[0x1EEE9AC00](v92);
  v97 = &v375 - v96;
  v98 = OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_currentState;
  swift_beginAccess();
  v446 = v85;
  v99 = *(v85 + 16);
  v444 = v2;
  v445 = v98;
  v99(v97, v2 + v98, v84);
  sub_1E65DD1C8();
  v434 = v94;
  v99(v94, v97, v84);
  v435 = v91;
  v100 = v91;
  v101 = v447;
  v377 = v99;
  v378 = v85 + 16;
  v99(v100, v448, v84);
  sub_1E60C95C4(v101, v449);
  v436 = v83;
  v102 = sub_1E65E3B48();
  v103 = sub_1E65E6338();
  v104 = os_log_type_enabled(v102, v103);
  v443 = v84;
  if (v104)
  {
    v105 = swift_slowAlloc();
    v376 = swift_slowAlloc();
    v451 = v376;
    *v105 = 141559299;
    *(v105 + 4) = 1752392040;
    *(v105 + 12) = 2081;
    sub_1E60C988C(&qword_1ED074580, MEMORY[0x1E699EF28]);
    v433 = v97;
    v375 = v102;
    v106 = v434;
    v107 = sub_1E65E6BC8();
    v108 = v84;
    v110 = v109;
    v111 = *(v446 + 8);
    v111(v106, v108);
    v112 = sub_1E5DFD4B0(v107, v110, &v451);

    *(v105 + 14) = v112;
    *(v105 + 22) = 2160;
    *(v105 + 24) = 1752392040;
    *(v105 + 32) = 2081;
    v113 = v435;
    v114 = v433;
    v115 = sub_1E65E6BC8();
    LODWORD(v434) = v103;
    v117 = v116;
    v435 = v111;
    v111(v113, v108);
    v118 = v444;
    v119 = v115;
    v120 = v114;
    v121 = sub_1E5DFD4B0(v119, v117, &v451);

    *(v105 + 34) = v121;
    *(v105 + 42) = 2160;
    v122 = v446;
    v123 = v445;
    *(v105 + 44) = 1752392040;
    *(v105 + 52) = 2081;
    v124 = v449;
    v125 = sub_1E65DD0B8();
    v127 = v126;
    sub_1E60C98D4(v124, MEMORY[0x1E699EF50]);
    v128 = sub_1E5DFD4B0(v125, v127, &v451);

    *(v105 + 54) = v128;
    v129 = v375;
    _os_log_impl(&dword_1E5DE9000, v375, v434, "[Metrics] State: %{private,mask.hash}s -> %{private,mask.hash}s: [%{private,mask.hash}s]", v105, 0x3Eu);
    v130 = v376;
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v130, -1, -1);
    v131 = v105;
    v132 = v447;
    MEMORY[0x1E694F1C0](v131, -1, -1);

    (*(v437 + 8))(v436, v438);
  }

  else
  {

    sub_1E60C98D4(v449, MEMORY[0x1E699EF50]);
    v133 = v97;
    v134 = v101;
    v135 = v446;
    v136 = *(v446 + 8);
    v136(v435, v84);
    v435 = v136;
    v136(v434, v84);
    v122 = v135;
    v132 = v134;
    v120 = v133;
    (*(v437 + 8))(v436, v438);
    v118 = v444;
    v123 = v445;
  }

  v137 = v441;
  sub_1E60C95C4(v132, v441);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v139 = v442;
  v140 = v440;
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 10:
      v435(v120, v443);
      result = sub_1E60C98D4(v137, MEMORY[0x1E699EF50]);
      goto LABEL_53;
    case 2:
      sub_1E60C98D4(v137, MEMORY[0x1E699EF50]);
      goto LABEL_5;
    case 3:
      v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074578, &qword_1E65F0EA8);
      v196 = v137;
      v197 = *(v195 + 64);
      v198 = v395;
      (*(v395 + 32))(v139, v196 + *(v195 + 48), v411);
      v199 = v410;
      v200 = v196 + v197;
      v201 = v382;
      (*(v410 + 32))(v382, v200, v412);
      v202 = v448;
      sub_1E60C6C78(v120, v448, v201);
      swift_beginAccess();
      (*(v122 + 24))(v118 + v123, v202, v443);
      swift_endAccess();
      sub_1E65DD088();
      if (sub_1E65DD238())
      {
        v203 = v442;
        v204 = sub_1E65DCAA8();
        sub_1E60C71F0(v204);

        (*(v199 + 8))(v201, v412);
        (*(v198 + 8))(v203, v411);
      }

      else
      {
        (*(v199 + 8))(v201, v412);
        (*(v198 + 8))(v442, v411);
      }

      v435(v120, v443);
      v333 = sub_1E65DD128();
      result = (*(*(v333 - 8) + 8))(v441, v333);
      goto LABEL_53;
    case 4:
      v205 = *(v137 + 8);
      v449 = *v137;
      v206 = *(v137 + 16);
      v207 = sub_1E65DCB08();
      v209 = v208;
      if (v207 == sub_1E65DCB08() && v209 == v210)
      {

LABEL_41:
        _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
        (*(v418 + 104))(v421, *MEMORY[0x1E69CBCC8], v419);
        sub_1E6427498(MEMORY[0x1E69E7CC0]);
        v307 = v390;
        sub_1E65D8678();
        v308 = sub_1E65D9D78();
        (*(*(v308 - 8) + 56))(v428, 1, 1, v308);
        (*(v416 + 104))(v429, *MEMORY[0x1E69CBA78], v417);
        v309 = sub_1E65D74E8();
        (*(*(v309 - 8) + 56))(v431, 1, 1, v309);
        v310 = *(v118 + 16);
        v311 = *(v118 + 24);
        ObjectType = swift_getObjectType();
        v442 = v205;
        v313 = v423;
        sub_1E65D7698();
        ImpressionsTracker.snapshotOnScreenImpressions(on:)(v313, ObjectType, v311);
        (*(v425 + 8))(v313, v424);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
        v314 = *(v391 + 72);
        v315 = v391;
        v316 = (*(v391 + 80) + 32) & ~*(v391 + 80);
        v317 = swift_allocObject();
        v441 = xmmword_1E65EA670;
        *(v317 + 16) = xmmword_1E65EA670;
        (*(v315 + 16))(v317 + v316, v307, v392);
        sub_1E65D8688();
        v433 = v120;
        v318 = sub_1E65D9908();
        (*(*(v318 - 8) + 56))(v420, 1, 1, v318);
        sub_1E65D8698();
        v319 = sub_1E65DA208();
        (*(*(v319 - 8) + 56))(v422, 1, 1, v319);
        v320 = v414;
        sub_1E65D7D68();
        v321 = v426;
        v322 = v415;
        (*(v426 + 16))(v415, v320, v432);
        v323 = v427;
        v324 = v430;
        (*(v427 + 104))(v322, *MEMORY[0x1E69CC330], v430);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
        inited = swift_initStackObject();
        *(inited + 16) = v441;
        *(inited + 32) = 6;
        v451 = v449;
        v452 = v442;
        sub_1E65E6848();
        v326 = sub_1E6427784(inited);
        swift_setDeallocating();
        sub_1E60C9748(inited + 32);
        v327 = v433;
        sub_1E60C8828(v322, v433, v326);

        (*(v323 + 8))(v322, v324);
        v328 = v448;
        sub_1E60C66A4(v327, v448, v447);
        (*(v321 + 8))(v320, v432);
        (*(v391 + 8))(v390, v392);
        v329 = v446;
        v330 = v327;
        v331 = v443;
        (*(v446 + 8))(v330, v443);
        v332 = v445;
        swift_beginAccess();
        (*(v329 + 24))(v118 + v332, v328, v331);
        goto LABEL_52;
      }

      v306 = sub_1E65E6C18();

      if (v306)
      {
        goto LABEL_41;
      }

      v132 = v447;
      v123 = v445;
LABEL_5:
      v141 = v448;
      sub_1E60C66A4(v120, v448, v132);
      v142 = v443;
      v435(v120, v443);
      swift_beginAccess();
      (*(v122 + 24))(v118 + v123, v141, v142);
LABEL_52:
      result = swift_endAccess();
LABEL_53:
      v357 = *MEMORY[0x1E69E9840];
      return result;
    case 5:
      (*(v402 + 32))(v401, v137, v403);
      v171 = sub_1E65D9D78();
      (*(*(v171 - 8) + 56))(v428, 1, 1, v171);
      (*(v416 + 104))(v429, *MEMORY[0x1E69CB9E0], v417);
      v172 = sub_1E65D74E8();
      (*(*(v172 - 8) + 56))(v431, 1, 1, v172);
      v173 = *(v118 + 16);
      v174 = *(v118 + 24);
      v175 = swift_getObjectType();
      v176 = v423;
      sub_1E65D7698();
      v449 = ImpressionsTracker.snapshotOnScreenImpressions(on:)(v176, v175, v174);
      (*(v425 + 8))(v176, v424);
      sub_1E65DCAD8();
      v177 = *MEMORY[0x1E69CC440];
      v178 = sub_1E65D9908();
      v433 = v120;
      v179 = v178;
      v180 = *(v178 - 8);
      v181 = v420;
      (*(v180 + 104))(v420, v177, v178);
      (*(v180 + 56))(v181, 0, 1, v179);
      (*(v418 + 104))(v421, *MEMORY[0x1E69CBCC8], v419);
      v182 = sub_1E65DA208();
      (*(*(v182 - 8) + 56))(v422, 1, 1, v182);
      v183 = MEMORY[0x1E69E7CC0];
      v184 = v414;
      sub_1E65D7D68();
      v185 = v118;
      v186 = v426;
      v187 = v415;
      (*(v426 + 16))(v415, v184, v432);
      v188 = v427;
      v189 = v430;
      (*(v427 + 104))(v187, *MEMORY[0x1E69CC330], v430);
      v190 = sub_1E6427784(v183);
      v191 = v433;
      sub_1E60C8828(v187, v433, v190);

      (*(v188 + 8))(v187, v189);
      v192 = v448;
      sub_1E60C66A4(v191, v448, v447);
      (*(v186 + 8))(v184, v432);
      (*(v402 + 8))(v401, v403);
      v193 = v443;
      (*(v122 + 8))(v191, v443);
      v194 = v445;
      swift_beginAccess();
      (*(v122 + 24))(v185 + v194, v192, v193);
      goto LABEL_52;
    case 6:
      v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074570, &qword_1E65F0EA0);
      v145 = v410;
      v146 = v412;
      (*(v410 + 32))(v140, v137 + *(v236 + 48), v412);
      v237 = sub_1E65DD128();
      (*(*(v237 - 8) + 8))(v137, v237);
      goto LABEL_26;
    case 7:
      v433 = v120;
      (*(v408 + 32))(v413, v137, v409);
      v148 = v384;
      v147 = v385;
      v149 = v386;
      (*(v385 + 104))(v384, *MEMORY[0x1E69AB3E0], v386);
      v150 = v423;
      sub_1E65D7688();
      v151 = *(v118 + 16);
      v152 = *(v118 + 24);
      swift_getObjectType();
      v153 = sub_1E65E50B8();
      (*(v425 + 8))(v150, v424);
      (*(v147 + 8))(v148, v149);
      v154 = sub_1E65D9D78();
      (*(*(v154 - 8) + 56))(v393, 1, 1, v154);
      (*(v416 + 104))(v394, *MEMORY[0x1E69CBAA0], v417);
      v155 = sub_1E65D74E8();
      (*(*(v155 - 8) + 56))(v399, 1, 1, v155);
      v156 = *(v153 + 16);
      v449 = v153;
      if (v156)
      {
        v157 = objc_opt_self();
        v158 = v153 + 32;
        v159 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1E5DFA11C(v158, &v451);
          __swift_project_boxed_opaque_existential_1(&v451, v453);
          v162 = sub_1E65E6BF8();
          v450[0] = 0;
          v163 = [v157 dataWithJSONObject:v162 options:0 error:v450];
          swift_unknownObjectRelease();
          v164 = v450[0];
          if (v163)
          {
            v165 = sub_1E65D7518();
            v167 = v166;

            __swift_destroy_boxed_opaque_existential_1(&v451);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v159 = sub_1E64F695C(0, *(v159 + 2) + 1, 1, v159);
            }

            v169 = *(v159 + 2);
            v168 = *(v159 + 3);
            if (v169 >= v168 >> 1)
            {
              v159 = sub_1E64F695C((v168 > 1), v169 + 1, 1, v159);
            }

            *(v159 + 2) = v169 + 1;
            v170 = &v159[16 * v169];
            *(v170 + 4) = v165;
            *(v170 + 5) = v167;
          }

          else
          {
            v160 = v164;
            v161 = sub_1E65D73B8();

            swift_willThrow();
            __swift_destroy_boxed_opaque_existential_1(&v451);
          }

          v158 += 32;
          --v156;
        }

        while (v156);
      }

      sub_1E60139B4();
      sub_1E65DCB28();
      v358 = sub_1E65D9908();
      (*(*(v358 - 8) + 56))(v420, 1, 1, v358);
      (*(v418 + 104))(v421, *MEMORY[0x1E69CBCD0], v419);
      v359 = sub_1E65DA208();
      (*(*(v359 - 8) + 56))(v422, 1, 1, v359);
      v360 = v400;
      sub_1E65D7D68();
      v361 = v426;
      v362 = v415;
      (*(v426 + 16))(v415, v360, v432);
      v363 = v427;
      (*(v427 + 104))(v362, *MEMORY[0x1E69CC330], v430);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
      v364 = swift_initStackObject();
      *(v364 + 16) = xmmword_1E65EB9E0;
      *(v364 + 32) = 5;
      v451 = sub_1E65DCB48();
      v452 = v365;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
      sub_1E5FEE0FC();
      sub_1E65E6848();
      *(v364 + 80) = 6;
      v366 = v448;
      v451 = sub_1E65DD008();
      v452 = v367;
      sub_1E65E6848();
      v368 = sub_1E6427784(v364);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072988, &qword_1E65EC128);
      swift_arrayDestroy();
      v369 = v433;
      v370 = v444;
      sub_1E60C8828(v362, v433, v368);

      (*(v363 + 8))(v362, v430);
      sub_1E60C66A4(v369, v366, v447);
      v371 = v445;
      swift_beginAccess();
      v372 = v446;
      v373 = v370 + v371;
      v374 = v443;
      (*(v446 + 24))(v373, v366, v443);
      swift_endAccess();
      sub_1E60C757C(v366, v449);

      (*(v361 + 8))(v400, v432);
      (*(v408 + 8))(v413, v409);
      result = (*(v372 + 8))(v369, v374);
      goto LABEL_53;
    case 8:
      (*(v406 + 32))(v405, v137, v407);
      v211 = sub_1E65D9D78();
      (*(*(v211 - 8) + 56))(v428, 1, 1, v211);
      (*(v416 + 104))(v429, *MEMORY[0x1E69CBA10], v417);
      v212 = sub_1E65D74E8();
      (*(*(v212 - 8) + 56))(v431, 1, 1, v212);
      v213 = *(v118 + 16);
      v214 = *(v118 + 24);
      v215 = swift_getObjectType();
      v216 = v423;
      sub_1E65D7698();
      ImpressionsTracker.snapshotOnScreenImpressions(on:)(v216, v215, v214);
      (*(v425 + 8))(v216, v424);
      sub_1E65DD088();
      sub_1E6013678();
      sub_1E65DCDA8();
      v433 = v120;
      v217 = *MEMORY[0x1E69CC440];
      v218 = sub_1E65D9908();
      v219 = *(v218 - 8);
      v220 = v420;
      (*(v219 + 104))(v420, v217, v218);
      (*(v219 + 56))(v220, 0, 1, v218);
      (*(v418 + 104))(v421, *MEMORY[0x1E69CBC88], v419);
      v221 = sub_1E65DA208();
      (*(*(v221 - 8) + 56))(v422, 1, 1, v221);
      v222 = v414;
      sub_1E65D7D68();
      v223 = v426;
      v224 = v415;
      (*(v426 + 16))(v415, v222, v432);
      v225 = v427;
      (*(v427 + 104))(v224, *MEMORY[0x1E69CC330], v430);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
      v226 = swift_initStackObject();
      *(v226 + 16) = xmmword_1E65EB9E0;
      *(v226 + 32) = 6;
      v451 = sub_1E65DCFD8();
      v452 = v227;
      sub_1E65E6848();
      *(v226 + 80) = 5;
      v228 = v405;
      v451 = sub_1E65DCDC8();
      v452 = v229;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
      sub_1E5FEE0FC();
      sub_1E65E6848();
      v230 = sub_1E6427784(v226);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072988, &qword_1E65EC128);
      swift_arrayDestroy();
      v231 = v448;
      sub_1E60C8828(v224, v448, v230);

      (*(v225 + 8))(v224, v430);
      v232 = v433;
      sub_1E60C66A4(v433, v231, v447);
      (*(v223 + 8))(v414, v432);
      (*(v406 + 8))(v228, v407);
      v233 = v446;
      v234 = v443;
      (*(v446 + 8))(v232, v443);
      v235 = v445;
      swift_beginAccess();
      (*(v233 + 24))(v118 + v235, v231, v234);
      goto LABEL_52;
    case 9:
      v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074568, &qword_1E65F0E98);
      v145 = v410;
      v146 = v412;
      (*(v410 + 32))(v140, v137 + *(v144 + 48), v412);
      (*(v395 + 8))(v137, v411);
LABEL_26:
      v238 = v448;
      sub_1E60C6C78(v120, v448, v140);
      (*(v145 + 8))(v140, v146);
      v239 = v443;
      v435(v120, v443);
      swift_beginAccess();
      (*(v122 + 24))(v118 + v123, v238, v239);
      goto LABEL_52;
    case 11:
      v261 = sub_1E65D9D78();
      (*(*(v261 - 8) + 56))(v428, 1, 1, v261);
      (*(v416 + 104))(v429, *MEMORY[0x1E69CBA90], v417);
      v262 = sub_1E65D74E8();
      (*(*(v262 - 8) + 56))(v431, 1, 1, v262);
      v263 = *(v118 + 16);
      v264 = *(v118 + 24);
      v265 = swift_getObjectType();
      v266 = v423;
      sub_1E65D7698();
      ImpressionsTracker.snapshotOnScreenImpressions(on:)(v266, v265, v264);
      (*(v425 + 8))(v266, v424);
      v267 = sub_1E65D9908();
      (*(*(v267 - 8) + 56))(v420, 1, 1, v267);
      (*(v418 + 104))(v421, *MEMORY[0x1E69CBCC8], v419);
      v268 = sub_1E65DA208();
      (*(*(v268 - 8) + 56))(v422, 1, 1, v268);
      sub_1E65D7D68();
      v269 = v387;
      sub_1E65DD078();
      v270 = v398;
      swift_storeEnumTagMultiPayload();
      LOBYTE(v263) = MEMORY[0x1E69445D0](v269, v270);
      v271 = MEMORY[0x1E699EEA0];
      sub_1E60C98D4(v270, MEMORY[0x1E699EEA0]);
      sub_1E60C98D4(v269, v271);
      if (v263)
      {
        v272 = v388;
        sub_1E65DD018();
        v273 = sub_1E65DC9E8();
        v275 = v274;
        v276 = MEMORY[0x1E699EE58];
        v277 = v272;
      }

      else
      {
        sub_1E65DD078();
        v273 = sub_1E65DCBB8();
        v275 = v334;
        v276 = MEMORY[0x1E699EEA0];
        v277 = v269;
      }

      sub_1E60C98D4(v277, v276);
      v335 = v122;
      sub_1E65DD078();
      v336 = v398;
      swift_storeEnumTagMultiPayload();
      v337 = MEMORY[0x1E69445D0](v269, v336);
      v338 = MEMORY[0x1E699EEA0];
      sub_1E60C98D4(v336, MEMORY[0x1E699EEA0]);
      sub_1E60C98D4(v269, v338);
      if (v337)
      {
        v339 = v388;
        v340 = v120;
        sub_1E65DD018();
        v341 = sub_1E65DC9F8();
        v343 = v342;
        v344 = MEMORY[0x1E699EE58];
        v345 = v339;
      }

      else
      {
        v340 = v120;
        sub_1E65DD078();
        v341 = sub_1E65DCBD8();
        v343 = v346;
        v344 = MEMORY[0x1E699EEA0];
        v345 = v269;
      }

      sub_1E60C98D4(v345, v344);
      v347 = v396;
      v348 = v404;
      (*(v426 + 16))(v404, v396, v432);
      (*(v427 + 104))(v348, *MEMORY[0x1E69CC330], v430);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
      v349 = swift_initStackObject();
      *(v349 + 16) = xmmword_1E65EB9E0;
      *(v349 + 32) = 6;
      if (!v343)
      {
        v341 = sub_1E65DCFD8();
        v343 = v350;
      }

      v451 = v341;
      v452 = v343;
      sub_1E65E6848();
      *(v349 + 80) = 5;
      v451 = v273;
      v452 = v275;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
      sub_1E5FEE0FC();
      sub_1E65E6848();
      v351 = sub_1E6427784(v349);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072988, &qword_1E65EC128);
      swift_arrayDestroy();
      v352 = v404;
      v353 = v444;
      sub_1E60C8828(v404, v340, v351);

      (*(v427 + 8))(v352, v430);
      v354 = v448;
      sub_1E60C66A4(v340, v448, v447);
      (*(v426 + 8))(v347, v432);
      v355 = v443;
      v435(v340, v443);
      v356 = v445;
      swift_beginAccess();
      (*(v335 + 24))(v353 + v356, v354, v355);
      goto LABEL_52;
    case 13:
      goto LABEL_33;
    case 15:
      v278 = sub_1E65D9D78();
      (*(*(v278 - 8) + 56))(v428, 1, 1, v278);
      v279 = *MEMORY[0x1E69CBA70];
      v280 = v416;
      v433 = v120;
      v281 = *(v416 + 104);
      v282 = v417;
      v281(v429, v279, v417);
      v283 = sub_1E65D74E8();
      (*(*(v283 - 8) + 56))(v431, 1, 1, v283);
      v284 = *(v118 + 16);
      v285 = *(v118 + 24);
      v286 = swift_getObjectType();
      v287 = v423;
      sub_1E65D7698();
      ImpressionsTracker.snapshotOnScreenImpressions(on:)(v287, v286, v285);
      (*(v425 + 8))(v287, v424);
      v288 = v383;
      v281(v383, *MEMORY[0x1E69CBA38], v282);
      sub_1E65D8C58();
      (*(v280 + 8))(v288, v282);
      v289 = sub_1E65D9908();
      (*(*(v289 - 8) + 56))(v420, 1, 1, v289);
      (*(v418 + 104))(v421, *MEMORY[0x1E69CBCC8], v419);
      v290 = sub_1E65DA208();
      (*(*(v290 - 8) + 56))(v422, 1, 1, v290);
      v291 = MEMORY[0x1E69E7CC0];
      v292 = v414;
      sub_1E65D7D68();
      v293 = v426;
      v294 = v415;
      v295 = v432;
      (*(v426 + 16))(v415, v292, v432);
      v296 = v427;
      v297 = v430;
      (*(v427 + 104))(v294, *MEMORY[0x1E69CC330], v430);
      v298 = sub_1E6427784(v291);
      v299 = v433;
      v300 = v444;
      sub_1E60C8828(v294, v433, v298);

      (*(v296 + 8))(v294, v297);
      v301 = v448;
      v302 = v300;
      sub_1E60C66A4(v299, v448, v447);
      (*(v293 + 8))(v292, v295);
      v303 = v446;
      v304 = v443;
      (*(v446 + 8))(v299, v443);
      v305 = v445;
      swift_beginAccess();
      (*(v303 + 24))(v302 + v305, v301, v304);
      goto LABEL_52;
    case 17:
      if ((sub_1E65DCFC8() & 1) == 0)
      {
        v240 = sub_1E65E60A8();
        (*(*(v240 - 8) + 56))(v389, 1, 1, v240);
        v241 = v443;
        v377(v381, v448, v443);
        sub_1E65E6058();

        v242 = sub_1E65E6048();
        v243 = (*(v122 + 80) + 32) & ~*(v122 + 80);
        v244 = (v379 + v243 + 7) & 0xFFFFFFFFFFFFFFF8;
        v245 = v123;
        v246 = swift_allocObject();
        v247 = MEMORY[0x1E69E85E0];
        *(v246 + 16) = v242;
        *(v246 + 24) = v247;
        (*(v122 + 32))(v246 + v243, v381, v241);
        *(v246 + v244) = v118;
        v248 = v246;
        v123 = v245;
        sub_1E64B80F8(0, 0, v389, &unk_1E65F0E70, v248);
      }

      swift_beginAccess();
      (*(v122 + 24))(v118 + v123, v448, v443);
      swift_endAccess();
      sub_1E65DD088();
      if (sub_1E65DD238())
      {
        v249 = v380;
        sub_1E65DD018();
        v250 = sub_1E65DCA08();
        sub_1E60C98D4(v249, MEMORY[0x1E699EE58]);
        if (v250)
        {
          sub_1E60C71F0(v250);
        }
      }

LABEL_33:
      result = (v435)(v120, v443);
      goto LABEL_53;
    case 18:
      if ((sub_1E65DCFC8() & 1) == 0)
      {
        v251 = *(v118 + 16);
        v252 = *(v118 + 24);
        v253 = swift_getObjectType();
        v254 = v423;
        sub_1E65D7698();
        v255 = ImpressionsTracker.consumeImpressions(on:)(v254, v253, v252);
        (*(v425 + 8))(v254, v424);
        v256 = v415;
        *v415 = v255;
        v257 = v427;
        v258 = v430;
        (*(v427 + 104))(v256, *MEMORY[0x1E69CC318], v430);
        v259 = sub_1E6014274();
        sub_1E60C8828(v256, v120, v259);
        v123 = v445;

        (*(v257 + 8))(v256, v258);
      }

      v260 = v443;
      v435(v120, v443);
      swift_beginAccess();
      (*(v122 + 24))(v118 + v123, v448, v260);
      goto LABEL_52;
    default:
      goto LABEL_5;
  }
}

uint64_t sub_1E60C66A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v64 = a2;
  v4 = sub_1E65DD0A8();
  v60 = *(v4 - 8);
  v61 = v4;
  v5 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v58 = &v53 - v8;
  v9 = sub_1E65D76A8();
  v54 = *(v9 - 8);
  v55 = v9;
  v10 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E65D97D8();
  v56 = *(v13 - 8);
  v57 = v13;
  v14 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_1E65DD288();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v53 - v22;
  v24 = sub_1E65DD0D8();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v28 = MEMORY[0x1E6944AD0](a3, v27);
  result = sub_1E60C98D4(v27, MEMORY[0x1E699EF50]);
  if ((v28 & 1) == 0)
  {
    swift_storeEnumTagMultiPayload();
    v30 = MEMORY[0x1E6944AD0](a3, v27);
    result = sub_1E60C98D4(v27, MEMORY[0x1E699EF50]);
    if ((v30 & 1) == 0)
    {
      sub_1E65DCFB8();
      sub_1E65DCFB8();
      v31 = MEMORY[0x1E6944C80](v23, v21);
      v32 = MEMORY[0x1E699EF78];
      sub_1E60C98D4(v21, MEMORY[0x1E699EF78]);
      result = sub_1E60C98D4(v23, v32);
      if ((v31 & 1) == 0)
      {
        v33 = v63;
        sub_1E65DCFB8();
        swift_storeEnumTagMultiPayload();
        v34 = MEMORY[0x1E6944C80](v23, v21);
        v35 = MEMORY[0x1E699EF78];
        sub_1E60C98D4(v21, MEMORY[0x1E699EF78]);
        sub_1E60C98D4(v23, v35);
        if ((v34 & 1) == 0 && (sub_1E65DCFC8() & 1) == 0)
        {
          v36 = *(v62 + 16);
          v37 = *(v62 + 24);
          ObjectType = swift_getObjectType();
          sub_1E65D7698();
          v39 = ImpressionsTracker.consumeImpressions(on:)(v12, ObjectType, v37);
          (*(v54 + 8))(v12, v55);
          *v16 = v39;
          v41 = v56;
          v40 = v57;
          (*(v56 + 104))(v16, *MEMORY[0x1E69CC318], v57);
          v42 = sub_1E6014274();
          sub_1E60C8828(v16, v33, v42);

          (*(v41 + 8))(v16, v40);
        }

        result = sub_1E65DCFC8();
        if ((result & 1) == 0)
        {
          v43 = sub_1E65E60A8();
          v44 = v58;
          (*(*(v43 - 8) + 56))(v58, 1, 1, v43);
          v46 = v59;
          v45 = v60;
          v47 = v61;
          (*(v60 + 16))(v59, v64, v61);
          sub_1E65E6058();
          v48 = v62;

          v49 = sub_1E65E6048();
          v50 = (*(v45 + 80) + 32) & ~*(v45 + 80);
          v51 = swift_allocObject();
          v52 = MEMORY[0x1E69E85E0];
          *(v51 + 16) = v49;
          *(v51 + 24) = v52;
          (*(v45 + 32))(v51 + v50, v46, v47);
          *(v51 + ((v5 + v50 + 7) & 0xFFFFFFFFFFFFFFF8)) = v48;
          sub_1E64B80F8(0, 0, v44, &unk_1E65F0EF8, v51);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E60C6C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v65 = a3;
  v66 = a2;
  v6 = sub_1E65DD0A8();
  v7 = *(v6 - 8);
  v59 = v6;
  v60 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v58 = &v54 - v12;
  v13 = sub_1E65D8C68();
  v63 = *(v13 - 8);
  v64 = v13;
  v14 = *(v63 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v62 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v61 = &v54 - v17;
  v18 = sub_1E65D76A8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E65D97D8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = (&v54 - v29);
  v67 = a1;
  if ((sub_1E65DCFC8() & 1) == 0)
  {
    v55 = v18;
    v31 = *(v4 + 16);
    v32 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    sub_1E65D7698();
    v34 = ImpressionsTracker.consumeImpressions(on:)(v22, ObjectType, v32);
    (*(v19 + 8))(v22, v55);
    *v30 = v34;
    (*(v24 + 104))(v30, *MEMORY[0x1E69CC318], v23);
    v35 = v67;
    v36 = sub_1E6014274();
    sub_1E60C8828(v30, v35, v36);

    (*(v24 + 8))(v30, v23);
  }

  v37 = sub_1E65DD218();
  v38 = v62;
  v39 = v63;
  v40 = v64;
  (*(v63 + 104))(v62, **(&unk_1E8797408 + v37), v64);
  (*(v39 + 32))(v61, v38, v40);
  sub_1E65D7F28();
  (*(v24 + 104))(v28, *MEMORY[0x1E69CC348], v23);
  v41 = sub_1E6013C48();
  sub_1E60C8828(v28, v67, v41);

  (*(v24 + 8))(v28, v23);
  v42 = v66;
  result = sub_1E65DCFC8();
  if ((result & 1) == 0)
  {
    v44 = sub_1E65E60A8();
    v45 = v58;
    (*(*(v44 - 8) + 56))(v58, 1, 1, v44);
    v46 = v59;
    v47 = v60;
    v48 = v56;
    (*(v60 + 16))(v56, v42, v59);
    sub_1E65E6058();

    v49 = sub_1E65E6048();
    v50 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v51 = (v57 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    v53 = MEMORY[0x1E69E85E0];
    *(v52 + 16) = v49;
    *(v52 + 24) = v53;
    (*(v47 + 32))(v52 + v50, v48, v46);
    *(v52 + v51) = v4;
    sub_1E64B80F8(0, 0, v45, &unk_1E65F0EB0, v52);
  }

  return result;
}

uint64_t sub_1E60C71F0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E65D76A8();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65E5078();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E65E50A8();
  v14 = *(*(v13 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v13);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 16);
  if (v19)
  {
    v32 = result;
    v33 = v9;
    v31 = v16;
    swift_beginAccess();
    sub_1E65DD088();
    swift_endAccess();
    v20 = sub_1E65DD238();
    v34 = v18;
    sub_1E65E5098();
    if (v20)
    {
      sub_1E65DCDD8();
      sub_1E65D7688();
      v22 = *(v2 + 16);
      v21 = *(v2 + 24);
      swift_getObjectType();
      sub_1E65E50C8();
      (*(v35 + 8))(v7, v4);
      (*(v33 + 8))(v12, v8);
    }

    v23 = *(v2 + 16);
    v38 = *(v2 + 24);
    v39 = v23;
    v40 = v4;
    ObjectType = swift_getObjectType();
    v37 = v8;
    v24 = *(sub_1E65DCE18() - 8);
    v25 = a1 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v26 = *(v24 + 72);
    v27 = v34;
    v28 = (v35 + 8);
    v29 = (v33 + 8);
    do
    {
      sub_1E65DCDB8();
      sub_1E65D7688();
      sub_1E65E50C8();
      (*v28)(v7, v40);
      (*v29)(v12, v37);
      v25 += v26;
      --v19;
    }

    while (v19);
    return (*(v31 + 8))(v27, v32);
  }

  return result;
}

uint64_t sub_1E60C757C(uint64_t a1, uint64_t a2)
{
  v101 = a2;
  v3 = sub_1E65D76A8();
  v90 = *(v3 - 8);
  v4 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1E65E5078();
  v89 = *(v88 - 8);
  v7 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65DCBA8();
  v102 = *(v9 - 8);
  v10 = *(v102 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v86 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v104 = &v80 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v103 = &v80 - v15;
  v16 = sub_1E65E50A8();
  v92 = *(v16 - 8);
  v93 = v16;
  v17 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v94 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E65DCBE8();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E65DD128();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DD078();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_1E60C98D4(v22, MEMORY[0x1E699EEA0]);
  }

  (*(v24 + 32))(v27, v22, v23);
  v91 = sub_1E60C8054(v101);
  if (!v91)
  {
    return (*(v24 + 8))(v27, v23);
  }

  v83 = v24;
  v84 = v23;
  v80 = v6;
  v81 = v3;
  v82 = v2;
  sub_1E65E5098();
  v85 = v27;
  v28 = sub_1E65DD118();
  v29 = v28;
  v100 = *(v28 + 16);
  v101 = v9;
  if (!v100)
  {
    v31 = MEMORY[0x1E69E7CC8];
LABEL_22:

    v52 = *(v91 + 16);
    v53 = v85;
    if (!v52)
    {
LABEL_50:

      (*(v92 + 8))(v94, v93);
      return (*(v83 + 8))(v53, v84);
    }

    v54 = v91 + 32;
    v99 = v102 + 16;
    v103 = (v90 + 8);
    v100 = (v89 + 8);
    v98 = v102 + 8;
    while (1)
    {
      v55 = *v54;
      if (!*(*v54 + 16))
      {
        goto LABEL_25;
      }

      v56 = *v54;

      v57 = sub_1E6215038(0x6973736572706D69, 0xEE00657079546E6FLL);
      if ((v58 & 1) == 0)
      {
        goto LABEL_24;
      }

      sub_1E5DFA11C(*(v55 + 56) + 32 * v57, v107);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_24;
      }

      v59 = v106;
      if (!*(v55 + 16))
      {
        break;
      }

      v60 = v105;
      v61 = sub_1E6215038(25705, 0xE200000000000000);
      if ((v62 & 1) == 0)
      {
        break;
      }

      sub_1E5DFA11C(*(v55 + 56) + 32 * v61, v107);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_24;
      }

      v63 = v106;
      v104 = v105;
      if (v60 == 0x7265746C6966 && v59 == 0xE600000000000000 || (sub_1E65E6C18()) && v31[2] && (v64 = sub_1E6215038(v104, v63), (v65))
      {
        v66 = v64;

        v67 = v86;
        (*(v102 + 16))(v86, v31[7] + *(v102 + 72) * v66, v101);
        v68 = v87;
        sub_1E65DCB38();
        v69 = v80;
        sub_1E65D7688();
        v70 = *(v82 + 16);
        v104 = *(v82 + 24);
        swift_getObjectType();
        sub_1E65E50C8();
        (*v103)(v69, v81);
        v71 = v68;
        v53 = v85;
        (*v100)(v71, v88);
        (*(v102 + 8))(v67, v101);
      }

      else
      {
        if (v60 == 0x666C656873 && v59 == 0xE500000000000000)
        {
        }

        else
        {
          v72 = sub_1E65E6C18();

          if ((v72 & 1) == 0)
          {

            v53 = v85;
            goto LABEL_25;
          }
        }

        if (v104 == sub_1E65DD248() && v63 == v73)
        {

LABEL_48:
          v75 = v87;
          sub_1E65DCB58();
          v76 = v80;
          sub_1E65D7688();
          v78 = *(v82 + 16);
          v77 = *(v82 + 24);
          swift_getObjectType();
          sub_1E65E50C8();
          (*v103)(v76, v81);
          v79 = v75;
          v53 = v85;
          (*v100)(v79, v88);
          goto LABEL_25;
        }

        v74 = sub_1E65E6C18();

        v53 = v85;
        if (v74)
        {
          goto LABEL_48;
        }
      }

LABEL_25:
      v54 += 8;
      if (!--v52)
      {
        goto LABEL_50;
      }
    }

LABEL_24:

    goto LABEL_25;
  }

  v30 = 0;
  v99 = v28 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
  v97 = (v102 + 8);
  v98 = v102 + 16;
  v95 = (v102 + 40);
  v96 = (v102 + 32);
  v31 = MEMORY[0x1E69E7CC8];
  while (v30 < *(v29 + 16))
  {
    v32 = v103;
    v33 = *(v102 + 72);
    v34 = *(v102 + 16);
    v34(v103, v99 + v33 * v30, v9);
    v35 = sub_1E65DCB28();
    v37 = v36;
    v34(v104, v32, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v107[0] = v31;
    v40 = sub_1E6215038(v35, v37);
    v41 = v31[2];
    v42 = (v39 & 1) == 0;
    v43 = v41 + v42;
    if (__OFADD__(v41, v42))
    {
      goto LABEL_53;
    }

    v44 = v39;
    if (v31[3] >= v43)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v39)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_1E6424EFC();
        if (v44)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_1E641C358(v43, isUniquelyReferenced_nonNull_native);
      v45 = sub_1E6215038(v35, v37);
      if ((v44 & 1) != (v46 & 1))
      {
        goto LABEL_55;
      }

      v40 = v45;
      if (v44)
      {
LABEL_5:

        v31 = v107[0];
        v9 = v101;
        (*v95)(*(v107[0] + 56) + v40 * v33, v104, v101);
        (*v97)(v103, v9);
        goto LABEL_6;
      }
    }

    v31 = v107[0];
    *(v107[0] + 8 * (v40 >> 6) + 64) |= 1 << v40;
    v47 = (v31[6] + 16 * v40);
    *v47 = v35;
    v47[1] = v37;
    v9 = v101;
    (*v96)(v31[7] + v40 * v33, v104, v101);
    (*v97)(v103, v9);
    v48 = v31[2];
    v49 = __OFADD__(v48, 1);
    v50 = v48 + 1;
    if (v49)
    {
      goto LABEL_54;
    }

    v31[2] = v50;
LABEL_6:
    if (v100 == ++v30)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  result = sub_1E65E6C68();
  __break(1u);
  return result;
}

uint64_t sub_1E60C8054(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  sub_1E601C6B0(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1E5DFA11C(i, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0730D8, &qword_1E65ECF30);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1E601C6B0((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1E60C817C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1E65D97D8();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = sub_1E65D9F68();
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();
  v12 = sub_1E65D7A38();
  v5[10] = v12;
  v13 = *(v12 - 8);
  v5[11] = v13;
  v14 = *(v13 + 64) + 15;
  v5[12] = swift_task_alloc();
  sub_1E65E6058();
  v5[13] = sub_1E65E6048();
  v16 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E60C8328, v16, v15);
}

uint64_t sub_1E60C8328()
{
  v2 = v0[12];
  v1 = v0[13];
  v16 = v0[11];
  v17 = v0[10];
  v11 = v0[9];
  v12 = v0[8];
  v3 = v0[6];
  v4 = v0[5];
  v15 = v0[4];
  v5 = v0[3];
  v13 = v0[7];
  v14 = v0[2];

  sub_1E6013E58(v2);
  v6 = *(v5 + OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_navigationTracker);
  v7 = *(v5 + OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_navigationTracker + 8);
  swift_getObjectType();
  sub_1E65DB6A8();
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();

  sub_1E65DB668();

  (*(v12 + 16))(v3, v11, v13);
  (*(v4 + 104))(v3, *MEMORY[0x1E69CC328], v15);
  v8 = sub_1E6014274();
  sub_1E60C8828(v3, v14, v8);

  (*(v4 + 8))(v3, v15);
  (*(v12 + 8))(v11, v13);
  (*(v16 + 8))(v2, v17);

  v9 = v0[1];

  return v9();
}

unint64_t sub_1E60C85A4()
{
  v0 = sub_1E65DD0A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return sub_1E6427784(MEMORY[0x1E69E7CC0]);
  }

  v6 = OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_currentState;
  v7 = Strong;
  swift_beginAccess();
  (*(v1 + 16))(v4, v7 + v6, v0);

  v8 = sub_1E6014274();
  (*(v1 + 8))(v4, v0);
  return v8;
}

uint64_t sub_1E60C86F0()
{
  v0 = sub_1E65D76A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = *(Strong + 16);
  v7 = *(Strong + 24);
  ObjectType = swift_getObjectType();
  sub_1E65D7698();
  v9 = ImpressionsTracker.consumeImpressions(on:)(v4, ObjectType, v7);
  (*(v1 + 8))(v4, v0);

  return v9;
}

uint64_t sub_1E60C8828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = a3;
  v72 = a1;
  v84 = sub_1E65E4F38();
  v86 = *(v84 - 8);
  v3 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1E65E4F68();
  v83 = *(v85 - 8);
  v5 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v81 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MetricService();
  Description = v7[-1].Description;
  v77 = v7;
  v78 = Description[8];
  MEMORY[0x1EEE9AC00](v7);
  v75 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65D8A08();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v74 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074588, &unk_1E65F0EC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v70 = &v64 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072320, &unk_1E65EAB60);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v67 = &v64 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074590, &unk_1E65F0ED0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v65 = &v64 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074598, &unk_1E65FE820);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v64 = &v64 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v64 - v26;
  v28 = sub_1E65D97D8();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1E65D8C88();
  v33 = *(v68 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x1EEE9AC00](v68);
  v66 = &v64 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v87 = &v64 - v36;
  v37 = sub_1E65D7A38();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v64 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v41;
  sub_1E6013E58(v41);
  (*(v29 + 16))(v32, v72, v28);
  v69 = v38;
  v42 = *(v38 + 16);
  v71 = v37;
  v42(v27, v41, v37);
  (*(v38 + 56))(v27, 0, 1, v37);
  v43 = sub_1E65D9208();
  (*(*(v43 - 8) + 56))(v64, 1, 1, v43);
  v44 = sub_1E65D9218();
  (*(*(v44 - 8) + 56))(v65, 1, 1, v44);
  v45 = v67;
  sub_1E65D8CA8();
  v46 = sub_1E65D8CB8();
  (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745A0, &unk_1E65F0EE8);
  (*(*(v47 - 8) + 56))(v70, 1, 1, v47);
  v48 = sub_1E65D9928();
  (*(*(v48 - 8) + 56))(v74, 1, 1, v48);

  v49 = v87;
  sub_1E65D8C78();
  v79 = *(v80 + OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_queue);
  v50 = v75;
  v51 = Description;
  v52 = v77;
  (Description[2])(v75, v80 + OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_metricService, v77);
  v53 = v66;
  v54 = v68;
  (*(v33 + 16))(v66, v49, v68);
  v55 = v51;
  v56 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v57 = (v78 + *(v33 + 80) + v56) & ~*(v33 + 80);
  v58 = swift_allocObject();
  (v55[4])(v58 + v56, v50, v52);
  (*(v33 + 32))(v58 + v57, v53, v54);
  aBlock[4] = sub_1E60C97C0;
  aBlock[5] = v58;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E5E05AB0;
  aBlock[3] = &block_descriptor_1;
  v59 = _Block_copy(aBlock);
  v60 = v81;
  sub_1E65E4F48();
  v88 = MEMORY[0x1E69E7CC0];
  sub_1E60C988C(&qword_1EE2D4A00, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078770, &unk_1E65EAB00);
  sub_1E5E05A4C();
  v61 = v82;
  v62 = v84;
  sub_1E65E6738();
  MEMORY[0x1E694DDE0](0, v60, v61, v59);
  _Block_release(v59);
  (*(v86 + 8))(v61, v62);
  (*(v83 + 8))(v60, v85);
  (*(v33 + 8))(v87, v54);
  (*(v69 + 8))(v73, v71);
}

id sub_1E60C9230(uint64_t a1, uint64_t a2)
{
  v3 = MetricService.record.getter();
  v3(a2);

  v4 = objc_opt_self();

  return [v4 sleepForTimeInterval_];
}

uint64_t SearchMetricsMonitor.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_currentState;
  v3 = sub_1E65DD0A8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = *(v0 + OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_navigationTracker);
  swift_unknownObjectRelease();
  v5 = OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_metricService;
  v6 = type metadata accessor for MetricService();
  (*(v6[-1].Description + 1))(v0 + v5, v6);
  return v0;
}

uint64_t SearchMetricsMonitor.__deallocating_deinit()
{
  v1 = *(v0 + 2);
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_currentState;
  v3 = sub_1E65DD0A8();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);

  v4 = *&v0[OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_navigationTracker];
  swift_unknownObjectRelease();
  v5 = OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_metricService;
  v6 = type metadata accessor for MetricService();
  (*(v6[-1].Description + 1))(&v0[v5], v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchMetricsMonitor()
{
  result = qword_1EE2D9320;
  if (!qword_1EE2D9320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E60C94C4()
{
  result = sub_1E65DD0A8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for MetricService();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1E60C95C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DD0D8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E60C9628(uint64_t a1)
{
  v4 = *(sub_1E65DD0A8() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E60C817C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E60C9748(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072988, &qword_1E65EC128);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1E60C97C0()
{
  Description = type metadata accessor for MetricService()[-1].Description;
  v2 = (*(Description + 80) + 16) & ~*(Description + 80);
  v3 = Description[8];
  v4 = *(sub_1E65D8C88() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1E60C9230(v0 + v2, v5);
}

uint64_t sub_1E60C988C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E60C98D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E60C9934(uint64_t a1)
{
  v4 = *(sub_1E65DD0A8() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E60C817C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E60C9A58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = a1;
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745A8, &qword_1E65F0F00);
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v33 - v6;
  v7 = type metadata accessor for AppComposer();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - v15;
  v17 = sub_1E65E2618();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v36 = sub_1E65E25F8();
  v39 = *(v36 - 8);
  v19 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v34 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *v3;
  sub_1E5E1DEAC(v3, v16);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = swift_allocObject();
  sub_1E5E1E118(v16, v22 + v21, type metadata accessor for AppComposer);
  sub_1E5E1DEAC(v3, v14);
  v23 = swift_allocObject();
  sub_1E5E1E118(v14, v23 + v21, type metadata accessor for AppComposer);
  sub_1E5E1DEAC(v3, v11);
  v24 = swift_allocObject();
  sub_1E5E1E118(v11, v24 + v21, type metadata accessor for AppComposer);
  v25 = (v24 + ((v21 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v26 = v38;
  *v25 = v37;
  v25[1] = v26;

  sub_1E65E2608();
  v27 = v34;
  sub_1E65E25E8();
  type metadata accessor for AppFeature();
  sub_1E60CBB50(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E60CBB50(&qword_1EE2D6228, MEMORY[0x1E699F360]);
  v28 = v40;
  v29 = v36;
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v30 = v29;
  v31 = sub_1E65E4F08();
  (*(v41 + 8))(v28, v42);
  (*(v39 + 8))(v27, v30);
  return v31;
}

uint64_t sub_1E60C9F04(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745B8, &qword_1E65F0F70);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60C9FA4, 0, 0);
}

uint64_t sub_1E60C9FA4()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 112);
  v4 = SessionService.makeSessionSummaryDismissedStream.getter();
  v0[6] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1E60CA0C0;
  v8 = v0[5];

  return v10(v8);
}

uint64_t sub_1E60CA0C0()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1E5FE45F0;
  }

  else
  {
    v4 = sub_1E60CA1F0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E60CA1F0()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745C0, &qword_1E65F0F80);
  v3[4] = sub_1E5FED46C(&qword_1EE2D4488, &qword_1ED0745C0, &qword_1E65F0F80);
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1E5FED46C(&qword_1EE2D4760, &qword_1ED0745B8, &qword_1E65F0F70);
  sub_1E65E69C8();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E60CA32C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E60C9F04(a1, v1 + v5);
}

uint64_t sub_1E60CA408(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE4654(a1, v1 + v5);
}

uint64_t sub_1E60CA4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[27] = a2;
  v3[28] = a3;
  v3[26] = a1;
  v4 = type metadata accessor for RouteResource();
  v3[29] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v6 = type metadata accessor for RouteDestination();
  v3[31] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v8 = sub_1E65D9048();
  v3[33] = v8;
  v9 = *(v8 - 8);
  v3[34] = v9;
  v10 = *(v9 + 64) + 15;
  v3[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60CA608, 0, 0);
}

uint64_t sub_1E60CA608()
{
  v1 = *(v0 + 208);
  *(v0 + 188) = *(type metadata accessor for AppComposer() + 20);
  *(v0 + 392) = *(type metadata accessor for AppEnvironment() + 144);
  active = WorkoutPlanService.evaluateActiveWorkoutPlanCompletion.getter();
  *(v0 + 288) = v3;
  v7 = (active + *active);
  v4 = active[1];
  v5 = swift_task_alloc();
  *(v0 + 296) = v5;
  *v5 = v0;
  v5[1] = sub_1E60CA724;

  return v7();
}

uint64_t sub_1E60CA724()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_1E60CB2CC;
  }

  else
  {
    v3 = sub_1E60CA838;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E60CA838()
{
  v1 = *(v0 + 288);

  v2 = *(v0 + 208) + *(v0 + 188) + *(v0 + 392);
  v3 = WorkoutPlanService.queryPendingWorkoutPlanSummary.getter();
  *(v0 + 312) = v4;
  v9 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  *(v0 + 320) = v6;
  *v6 = v0;
  v6[1] = sub_1E60CA94C;
  v7 = *(v0 + 280);

  return v9(v7);
}

uint64_t sub_1E60CA94C()
{
  v2 = *(*v1 + 320);
  v5 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = sub_1E60CB548;
  }

  else
  {
    v3 = sub_1E60CAA60;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E60CAA60()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 188);
  v3 = *(v0 + 208);

  *(v0 + 186) = *(v3 + v2 + 8);
  v4 = sub_1E65DAE38();
  *(v0 + 336) = v4;
  v5 = sub_1E65DAE38();
  *(v0 + 344) = v5;
  v6 = *v3;
  swift_getKeyPath();
  sub_1E65E4EC8();

  v7 = *(v0 + 152);
  *(v0 + 352) = v7;
  if (v7 == 6)
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v8 = sub_1E65E3B68();
    __swift_project_value_buffer(v8, qword_1EE2EA2A0);
    v9 = sub_1E65E3B48();
    v10 = sub_1E65E6328();
    v11 = os_log_type_enabled(v9, v10);
    v13 = *(v0 + 272);
    v12 = *(v0 + 280);
    v14 = *(v0 + 264);
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1E5DE9000, v9, v10, "[PlanCompletionComposer] Failed to get the currently selected root item", v15, 2u);
      MEMORY[0x1E694F1C0](v15, -1, -1);
    }

    if (v4 == v5)
    {
      v16 = -64;
    }

    else
    {
      v16 = 0;
    }

    sub_1E5F94E00(1, v16);

    (*(v13 + 8))(v12, v14);
    v17 = *(v0 + 280);
    v18 = *(v0 + 256);
    v19 = *(v0 + 240);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v22 = *(v0 + 144);
    *(v0 + 360) = v22;
    *(v0 + 160) = v22;
    *(v0 + 168) = v7;
    sub_1E65E6058();
    *(v0 + 368) = sub_1E65E6048();
    v24 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E60CACCC, v24, v23);
  }
}

uint64_t sub_1E60CACCC()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];
  v5 = v0[27];
  v4 = v0[28];

  v5(v0 + 20);
  sub_1E5E07DA0(v2, v3);

  return MEMORY[0x1EEE6DFA0](sub_1E60CAD60, 0, 0);
}

uint64_t sub_1E60CAD60()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 272);
    v2 = *(v0 + 280);
    v3 = *(v0 + 256);
    v4 = *(v0 + 264);
    v6 = *(v0 + 240);
    v5 = *(v0 + 248);
    v7 = *(v0 + 232);
    if (*(v0 + 336) == *(v0 + 344))
    {
      v8 = -64;
    }

    else
    {
      v8 = 0;
    }

    v35 = v8;
    v9 = *(v0 + 186);
    sub_1E5DF599C((v0 + 56), v0 + 16);
    v10 = *(v0 + 40);
    v34 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v10);
    (*(v1 + 16))(v6, v2, v4);
    v11 = sub_1E65DAE38();
    v12 = v11 != sub_1E65DAE38();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077830, &qword_1E65F0F68);
    *(v6 + *(v13 + 48)) = v12;
    v14 = sub_1E65DAE38();
    *(v6 + *(v13 + 64)) = v14 != sub_1E65DAE38();
    swift_storeEnumTagMultiPayload();
    v15 = *(v5 + 20);
    type metadata accessor for RouteSource(0);
    swift_storeEnumTagMultiPayload();
    sub_1E5E1E118(v6, v3, type metadata accessor for RouteResource);
    *(v3 + *(v5 + 24)) = MEMORY[0x1E69E7CD0];
    *(v0 + 176) = 1;
    *(v0 + 184) = v35;
    sub_1E600F5B0((v0 + 185));
    v16 = swift_task_alloc();
    *(v0 + 376) = v16;
    *v16 = v0;
    v16[1] = sub_1E60CB0D8;
    v17 = *(v0 + 256);

    return RoutingContext.presentDestination(_:style:priority:)(v17, (v0 + 176), (v0 + 185), v10, v34);
  }

  else
  {
    sub_1E601B260(v0 + 56);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v19 = sub_1E65E3B68();
    __swift_project_value_buffer(v19, qword_1EE2EA2A0);
    v20 = sub_1E65E3B48();
    v21 = sub_1E65E6328();
    v22 = os_log_type_enabled(v20, v21);
    v24 = *(v0 + 336);
    v23 = *(v0 + 344);
    v26 = *(v0 + 272);
    v25 = *(v0 + 280);
    v27 = *(v0 + 264);
    if (v22)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1E5DE9000, v20, v21, "[PlanCompletionComposer] Failed to get routing context", v28, 2u);
      MEMORY[0x1E694F1C0](v28, -1, -1);
    }

    if (v24 == v23)
    {
      v29 = -64;
    }

    else
    {
      v29 = 0;
    }

    sub_1E5F94E00(1, v29);

    (*(v26 + 8))(v25, v27);
    v30 = *(v0 + 280);
    v31 = *(v0 + 256);
    v32 = *(v0 + 240);

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_1E60CB0D8()
{
  v2 = *(*v1 + 376);
  v3 = *(*v1 + 256);
  v6 = *v1;
  *(*v1 + 384) = v0;

  sub_1E60111F8(v3);
  if (v0)
  {
    v4 = sub_1E60CB730;
  }

  else
  {
    v4 = sub_1E60CB208;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E60CB208()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  if (v0[42] == v0[43])
  {
    v4 = -64;
  }

  else
  {
    v4 = 0;
  }

  sub_1E5F94E00(1, v4);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = v0[35];
  v6 = v0[32];
  v7 = v0[30];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E60CB2CC()
{
  v26 = v0;
  v1 = *(v0 + 288);

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 304);
  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  v4 = v2;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 304);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = *(v0 + 120);
    v11 = *(v0 + 128);
    v13 = *(v0 + 136);
    v14 = sub_1E65E6C78();
    v16 = sub_1E5DFD4B0(v14, v15, &v25);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "[PlanCompletionComposer] Evaluating active workout plan completion failed with error: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 208) + *(v0 + 188) + *(v0 + 392);
  v18 = WorkoutPlanService.queryPendingWorkoutPlanSummary.getter();
  *(v0 + 312) = v19;
  v24 = (v18 + *v18);
  v20 = v18[1];
  v21 = swift_task_alloc();
  *(v0 + 320) = v21;
  *v21 = v0;
  v21[1] = sub_1E60CA94C;
  v22 = *(v0 + 280);

  return v24(v22);
}

uint64_t sub_1E60CB548()
{
  v21 = v0;
  v1 = v0[39];

  v2 = v0[41];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  v4 = v2;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[12];
    v9 = v0[13];
    v11 = v0[14];
    v12 = sub_1E65E6C78();
    v14 = sub_1E5DFD4B0(v12, v13, &v20);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "[PlanCompletionComposer] Querying pending workout plan summary failed with error: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E694F1C0](v8, -1, -1);
    MEMORY[0x1E694F1C0](v7, -1, -1);
  }

  else
  {
  }

  v15 = v0[35];
  v16 = v0[32];
  v17 = v0[30];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1E60CB730()
{
  v23 = v0;
  v1 = v0[42];
  v2 = v0[43];
  (*(v0[34] + 8))(v0[35], v0[33]);
  if (v1 == v2)
  {
    v3 = -64;
  }

  else
  {
    v3 = 0;
  }

  sub_1E5F94E00(1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v4 = v0[48];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v5 = sub_1E65E3B68();
  __swift_project_value_buffer(v5, qword_1EE2EA2A0);
  v6 = v4;
  v7 = sub_1E65E3B48();
  v8 = sub_1E65E6328();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = v0[12];
    v11 = v0[13];
    v13 = v0[14];
    v14 = sub_1E65E6C78();
    v16 = sub_1E5DFD4B0(v14, v15, &v22);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_1E5DE9000, v7, v8, "[PlanCompletionComposer] Querying pending workout plan summary failed with error: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);
  }

  else
  {
  }

  v17 = v0[35];
  v18 = v0[32];
  v19 = v0[30];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1E60CB948()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E60CA4E4(v0 + v3, v5, v6);
}

uint64_t sub_1E60CBA54(uint64_t a1)
{
  v2 = sub_1E65E2628();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65E25C8();
  v7 = a1 + *(type metadata accessor for AppState() + 228);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745B0, &qword_1E65F0F38);
  return (*(v3 + 40))(v7 + *(v8 + 28), v6, v2);
}

uint64_t sub_1E60CBB50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E60CBB98()
{
  v1 = v0 + *(type metadata accessor for AppState() + 136);
  v2 = *(v1 + 32);
  sub_1E5FED384(v2, *(v1 + 40), *(v1 + 48), *(v1 + 56));
  return v2;
}

uint64_t sub_1E60CBBFC()
{
  v1 = *(v0 + *(type metadata accessor for AppState() + 100) + 8);
}

uint64_t sub_1E60CBC34()
{
  v1 = *(v0 + *(type metadata accessor for AppState() + 68) + 8);
}

uint64_t sub_1E60CBC6C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppState() + 220);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073560, &qword_1E65ED560) + 28);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073568, &qword_1E65FD8A0);
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1E60CBD10@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppState() + 276);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E58, &qword_1E65F1128) + 28);
  v5 = sub_1E65DD0A8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1E60CBDA8()
{
  v1 = *(v0 + *(type metadata accessor for AppState() + 172) + 8);
}

uint64_t sub_1E60CBDE0()
{
  v1 = *(v0 + *(type metadata accessor for AppState() + 96) + 8);
}

uint64_t sub_1E60CBE18()
{
  v1 = *(v0 + *(type metadata accessor for AppState() + 132) + 8);
}

uint64_t sub_1E60CBE50@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppState() + 216);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CF0, &qword_1E65F10D8) + 28);
  v5 = sub_1E65E1B08();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1E60CBEE8()
{
  v1 = type metadata accessor for AppState();
  v2 = v0 + v1[5];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745E0, &qword_1E65F0F90);
  sub_1E60E0610(v2, v2 + *(v3 + 28));
  *(v0 + v1[9] + 1) = *(v0 + v1[9]);
  v4 = (v0 + v1[11]);
  v5 = *v4;
  v6 = v4[1];

  v4[1] = v5;
  v7 = (v0 + v1[14]);
  v8 = *v7;
  v9 = v7[1];

  v7[1] = v8;
  v10 = (v0 + v1[15]);
  v11 = *v10;
  v12 = v10[1];

  v10[1] = v11;
  v13 = (v0 + v1[16]);
  v14 = *v13;
  v15 = v13[1];

  v13[1] = v14;
  v16 = (v0 + v1[17]);
  v17 = *v16;
  v18 = v16[1];

  v16[1] = v17;
  v19 = v0;
  v20 = v0 + v1[18];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074858, &qword_1E65F1008);
  sub_1E60E0674(v20, v20 + *(v21 + 28));
  v22 = v1;
  v23 = v19 + v1[19];
  v24 = v19;
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741C8, &qword_1E65EFB48) + 28);
  v26 = sub_1E65DBD48();
  (*(*(v26 - 8) + 24))(v23 + v25, v23, v26);
  v27 = (v24 + v22[24]);
  v28 = *v27;
  v29 = v27[1];

  v27[1] = v28;
  v30 = (v24 + v22[25]);
  v31 = *v30;
  v32 = v30[1];

  v30[1] = v31;
  v33 = v24 + v22[26];
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0749A0, &qword_1E65F1038) + 28);
  v35 = sub_1E65E02A8();
  (*(*(v35 - 8) + 24))(v33 + v34, v33, v35);
  v36 = v24 + v22[27];
  v99 = v24;
  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0) + 28);
  v38 = sub_1E65E23A8();
  (*(*(v38 - 8) + 24))(v36 + v37, v36, v38);
  v39 = (v24 + v22[33]);
  v40 = *v39;
  v41 = v39[1];

  v39[1] = v40;
  v42 = v24 + v22[34];
  v43 = *v42;
  v44 = *(v42 + 8);
  v45 = *(v42 + 16);
  v46 = *(v42 + 32);
  v47 = *(v42 + 40);
  v48 = *(v42 + 48);
  v49 = *(v42 + 24);
  v50 = *(v42 + 56);
  sub_1E5FED384(*v42, v44, v45, v49);
  sub_1E5FED324(v46, v47, v48, v50);
  *(v42 + 32) = v43;
  *(v42 + 40) = v44;
  *(v42 + 48) = v45;
  *(v42 + 56) = v49;
  v51 = v99 + v22[36];
  v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072800, &qword_1E65EBDF8) + 28);
  v53 = sub_1E65DC638();
  (*(*(v53 - 8) + 24))(v51 + v52, v51, v53);
  v54 = (v99 + v22[43]);
  v55 = *v54;
  v56 = v54[1];

  v54[1] = v55;
  v57 = (v99 + v22[44]);
  v58 = *v57;
  v59 = v57[1];

  v57[1] = v58;
  v60 = v99 + v22[45];
  v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BD8, &qword_1E65F10B0) + 28);
  v62 = sub_1E65DF608();
  (*(*(v62 - 8) + 24))(v60 + v61, v60, v62);
  v63 = (v99 + v22[48]);
  v64 = v63[1];
  v65 = v63[2];
  v66 = v63[3];
  v67 = v63[4];
  v68 = v63[5];
  v69 = v63[6];
  v106 = v63[7];
  v104 = *v63;
  v105 = v63[8];
  v102 = v63[10];
  v103 = v63[9];
  v70 = v63[13];
  v100 = v63[12];
  v101 = v63[11];

  v63[7] = v104;
  v63[8] = v64;
  v63[9] = v65;
  v63[10] = v66;
  v63[11] = v67;
  v63[12] = v68;
  v63[13] = v69;
  v71 = v99 + v22[49];
  v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074C70, &qword_1E65F10D0) + 28);
  v73 = sub_1E65DB1C8();
  (*(*(v73 - 8) + 24))(v71 + v72, v71, v73);
  v74 = v99 + v22[55];
  v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073560, &qword_1E65ED560) + 28);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073568, &qword_1E65FD8A0);
  (*(*(v76 - 8) + 24))(v74 + v75, v74, v76);
  v77 = v99 + v22[54];
  v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CF0, &qword_1E65F10D8) + 28);
  v79 = sub_1E65E1B08();
  (*(*(v79 - 8) + 24))(v77 + v78, v77, v79);
  v80 = v99 + v22[57];
  v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745B0, &qword_1E65F0F38) + 28);
  v82 = sub_1E65E2628();
  (*(*(v82 - 8) + 24))(v80 + v81, v80, v82);
  v83 = (v99 + v22[58]);
  v84 = *v83;
  v85 = v83[1];

  v83[1] = v84;
  v86 = (v99 + v22[67]);
  v87 = *v86;
  v88 = v86[1];

  v86[1] = v87;
  v89 = (v99 + v22[68]);
  v90 = *v89;
  v91 = v89[1];

  v89[1] = v90;
  v92 = v99 + v22[69];
  v93 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E58, &qword_1E65F1128) + 28);
  v94 = sub_1E65DD0A8();
  (*(*(v94 - 8) + 24))(v92 + v93, v92, v94);
  v95 = (v99 + v22[79]);
  v96 = *v95;
  v97 = v95[1];

  v95[1] = v96;
  return result;
}

uint64_t sub_1E60CC620(char a1)
{
  result = 0x53746E756F636361;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      return 0x614C657669746361;
    case 3:
    case 31:
    case 37:
    case 44:
    case 48:
      return 0xD000000000000016;
    case 4:
    case 40:
    case 45:
    case 46:
    case 54:
    case 60:
    case 67:
    case 69:
      return 0xD000000000000011;
    case 5:
      return 0xD000000000000021;
    case 6:
    case 74:
      v4 = 5;
      goto LABEL_53;
    case 7:
    case 56:
      return 0xD00000000000001ELL;
    case 8:
    case 57:
      return 0xD00000000000001CLL;
    case 9:
      return 0xD000000000000010;
    case 10:
      return 0xD000000000000010;
    case 11:
      return 0x616D496472617761;
    case 13:
    case 17:
    case 23:
    case 79:
      v4 = 11;
      goto LABEL_53;
    case 14:
      return 0xD000000000000010;
    case 15:
      return 0x616F546472617761;
    case 16:
    case 34:
    case 36:
      return 0xD000000000000017;
    case 18:
      return 0xD000000000000013;
    case 19:
      return 0xD000000000000010;
    case 20:
      v3 = 0x6573776F7262;
      goto LABEL_31;
    case 21:
      v3 = 0x7361766E6163;
      goto LABEL_31;
    case 22:
    case 53:
    case 62:
      v4 = 10;
      goto LABEL_53;
    case 24:
      return 0x5379616C70736964;
    case 25:
    case 47:
    case 72:
      v4 = 9;
LABEL_53:
      result = v4 | 0xD000000000000010;
      break;
    case 27:
      result = 0x6169726F74696465;
      break;
    case 28:
      result = 0xD000000000000010;
      break;
    case 29:
      result = 0xD000000000000010;
      break;
    case 30:
      result = 0x6F4C756F59726F66;
      break;
    case 33:
      result = 0x7373416567616D69;
      break;
    case 35:
      result = 0xD000000000000010;
      break;
    case 38:
      result = 0x636E79537473616CLL;
      break;
    case 39:
      result = 0xD000000000000014;
      break;
    case 41:
      result = 0x537972617262696CLL;
      break;
    case 42:
      result = 0x6E6974656B72616DLL;
      break;
    case 43:
      result = 0x7974696C61646F6DLL;
      break;
    case 49:
      result = 0xD000000000000010;
      break;
    case 50:
      result = 0x696472616F626E6FLL;
      break;
    case 51:
      result = 0xD000000000000010;
      break;
    case 52:
      result = 0xD000000000000018;
      break;
    case 55:
      result = 0x446D6172676F7270;
      break;
    case 58:
      result = 0xD000000000000010;
      break;
    case 59:
      result = 0x6D657449746F6F72;
      break;
    case 63:
      result = 0xD000000000000025;
      break;
    case 64:
      result = 0xD000000000000026;
      break;
    case 65:
      v3 = 0x686372616573;
LABEL_31:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7453000000000000;
      break;
    case 66:
      result = 0x616C506572616873;
      break;
    case 68:
      result = 0x7461745369726973;
      break;
    case 70:
      result = 0x4472656E69617274;
      break;
    case 71:
      result = 0x75517478654E7075;
      break;
    case 73:
      result = 0x4474756F6B726F77;
      break;
    case 75:
      result = 0x5374756F6B726F77;
      break;
    case 76:
      result = 0x577972617262696CLL;
      break;
    case 78:
      result = 0x507972617262696CLL;
      break;
    case 80:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}