uint64_t sub_1CF1A1938(void *a1, uint64_t a2)
{
  v3 = *(a2 + *(type metadata accessor for FPFeedbackManagerState() + 20));
  v24 = v3 + 64;
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v23 = (v4 + 63) >> 6;
  v26 = v3;

  for (i = 0; v6; result = )
  {
    v30 = v2;
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = v10 | (v9 << 6);
    v12 = *(v26 + 48) + 48 * v11;
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
    v17 = *(v12 + 25);
    v18 = *(v12 + 26);
    v19 = *(v12 + 40);
    v27 = *(v12 + 32);
    v20 = *(*(v26 + 56) + 8 * v11);
    v28 = a1[3];
    v29 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v28);
    v2 = v30 & 0xFF000000 | v16 | (v17 << 8) | (v18 << 16);

    v21 = sub_1CF19F0C0(v13, v14, v15, v2);
    MEMORY[0x1D3868CC0](v21);

    MEMORY[0x1D3868CC0](0x3A72657620, 0xE500000000000000);
    MEMORY[0x1D3868CC0](v27, v19);
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    MEMORY[0x1D3868CC0](60, 0xE100000000000000);

    MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
    v22 = sub_1CF9E6F58();
    MEMORY[0x1D3868CC0](v22);

    sub_1CF4FB2BC(0, 0xE000000000000000, v28, v29);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v23)
    {
    }

    v6 = *(v24 + 8 * v9);
    ++i;
    if (v6)
    {
      v30 = v2;
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF1A1B94(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDDB8, &qword_1CF9FB1A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1A8C20();
  sub_1CF9E82A8();
  v18 = 0;
  sub_1CF9E5CF8();
  sub_1CF1A9300(&qword_1EDEAB3D0, MEMORY[0x1E6969530]);
  sub_1CF9E7E68();
  if (!v2)
  {
    v11 = type metadata accessor for FPFeedbackManagerState();
    v17 = *(v3 + *(v11 + 20));
    v16[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDD98, &qword_1CF9FB198);
    sub_1CF1A8D80(&qword_1EC4BDDC0, sub_1CF1A8E10, sub_1CF1A8E64);
    sub_1CF9E7F08();
    v12 = (v3 + *(v11 + 24));
    v13 = *v12;
    v14 = *(v12 + 8);
    v16[14] = 2;
    sub_1CF9E7EA8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1CF1A1DF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v39 = &v30 - v5;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDD88, &qword_1CF9FB190);
  v36 = *(v38 - 8);
  v6 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v8 = &v30 - v7;
  v9 = type metadata accessor for FPFeedbackManagerState();
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E5CF8();
  v15 = *(*(v14 - 8) + 56);
  v35 = v14;
  v15(v13, 1, 1);
  v16 = *(v10 + 28);
  v17 = sub_1CF4E06FC(MEMORY[0x1E69E7CC0]);
  *&v13[v16] = v17;
  v18 = &v13[*(v10 + 32)];
  *v18 = 0;
  v18[8] = 1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1A8C20();
  v37 = v8;
  v20 = v40;
  sub_1CF9E8298();
  if (v20)
  {
    v29 = a1;
  }

  else
  {
    v31 = v18;
    v32 = v17;
    v40 = a1;
    v33 = v16;
    v21 = v36;
    v44 = 0;
    sub_1CF1A9300(&unk_1EDEAB3A0, MEMORY[0x1E6969530]);
    v22 = v38;
    v23 = v37;
    sub_1CF9E7CF8();
    sub_1CEFE4804(v39, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDD98, &qword_1CF9FB198);
    v43 = 1;
    sub_1CF1A8D80(&qword_1EC4BDDA0, sub_1CF1A8C74, sub_1CF1A8CC8);
    sub_1CF9E7D88();

    *&v13[v33] = v41;
    v42 = 2;
    v25 = sub_1CF9E7D38();
    v27 = v26;
    (*(v21 + 8))(v23, v22);
    v28 = v31;
    *v31 = v25;
    *(v28 + 8) = v27 & 1;
    sub_1CF1A8D1C(v13, v34);
    v29 = v40;
  }

  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_1CF1A9030(v13, type metadata accessor for FPFeedbackManagerState);
}

unint64_t sub_1CF1A2200()
{
  v1 = 0x676E696C706D6173;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_1CF1A226C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CF1A8340(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CF1A2294(uint64_t a1)
{
  v2 = sub_1CF1A8C20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF1A22D0(uint64_t a1)
{
  v2 = sub_1CF1A8C20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1CF1A233C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CF9E5CF8();
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = *(a1 + 20);
  result = sub_1CF4E06FC(MEMORY[0x1E69E7CC0]);
  *(a2 + v5) = result;
  v7 = a2 + *(a1 + 24);
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t sub_1CF1A2478()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  v14 = *(v0 + 112);
  sub_1CF1A6E34();
  if (!v1)
  {
    v16 = *(*v14 + 136);
    swift_beginAccess();
    sub_1CEFCCBDC(v14 + v16, v5, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1CEFCCC44(v5, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v15 = 0;
    }

    else
    {
      (*(v7 + 32))(v13, v5, v6);
      sub_1CF9E5CC8();
      v17 = sub_1CF9E5C58();
      v18 = *(v7 + 8);
      v18(v11, v6);
      v18(v13, v6);
      v15 = v17 ^ 1;
    }
  }

  return v15 & 1;
}

uint64_t sub_1CF1A26B0(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = *(v1 + 112);
  result = sub_1CF1A6E34();
  if (!v2)
  {
    v10 = sub_1CF9E5CF8();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v7, a1, v10);
    (*(v11 + 56))(v7, 0, 1, v10);
    v12 = *(*v8 + 136);
    swift_beginAccess();
    sub_1CEFE4804(v7, &v8[v12]);
    swift_endAccess();
    v8[72] = 1;
    return sub_1CF7F1D28();
  }

  return result;
}

uint64_t sub_1CF1A2824(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v45 = *MEMORY[0x1E69E9840];
  *(v6 + 248) = a5;
  *(v6 + 256) = v5;
  *(v6 + 808) = a4;
  *(v6 + 232) = a2;
  *(v6 + 240) = a3;
  *(v6 + 224) = a1;
  v7 = *v5;
  v8 = sub_1CF9E5E28();
  *(v6 + 264) = v8;
  v9 = *(v8 - 8);
  *(v6 + 272) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 280) = swift_task_alloc();
  v11 = sub_1CF9E5E38();
  *(v6 + 288) = v11;
  v12 = *(v11 - 8);
  *(v6 + 296) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 304) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0) - 8) + 64) + 15;
  *(v6 + 312) = swift_task_alloc();
  *(v6 + 320) = swift_task_alloc();
  v15 = sub_1CF9E5CF8();
  *(v6 + 328) = v15;
  v16 = *(v15 - 8);
  *(v6 + 336) = v16;
  v17 = *(v16 + 64) + 15;
  *(v6 + 344) = swift_task_alloc();
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();
  v18 = sub_1CF9E6388();
  *(v6 + 376) = v18;
  v19 = *(v18 - 8);
  *(v6 + 384) = v19;
  v20 = *(v19 + 64) + 15;
  *(v6 + 392) = swift_task_alloc();
  *(v6 + 400) = swift_task_alloc();
  v21 = sub_1CF9E6498();
  *(v6 + 408) = v21;
  v22 = *(v21 - 8);
  *(v6 + 416) = v22;
  v23 = *(v22 + 64) + 15;
  *(v6 + 424) = swift_task_alloc();
  *(v6 + 432) = swift_task_alloc();
  v24 = sub_1CF9E6448();
  *(v6 + 440) = v24;
  v25 = *(v24 - 8);
  *(v6 + 448) = v25;
  v26 = *(v25 + 64) + 15;
  *(v6 + 456) = swift_task_alloc();
  v27 = sub_1CF9E73D8();
  *(v6 + 464) = v27;
  v28 = *(v27 - 8);
  *(v6 + 472) = v28;
  v29 = *(v28 + 64) + 15;
  *(v6 + 480) = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0) - 8) + 64) + 15;
  *(v6 + 488) = swift_task_alloc();
  *(v6 + 496) = swift_task_alloc();
  *(v6 + 504) = swift_task_alloc();
  v31 = sub_1CF9E5A58();
  *(v6 + 512) = v31;
  v32 = *(v31 - 8);
  *(v6 + 520) = v32;
  *(v6 + 528) = *(v32 + 64);
  *(v6 + 536) = swift_task_alloc();
  *(v6 + 544) = swift_task_alloc();
  *(v6 + 552) = swift_task_alloc();
  *(v6 + 560) = swift_task_alloc();
  *(v6 + 568) = v7[12];
  *(v6 + 576) = v7[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v6 + 584) = v7[13];
  *(v6 + 592) = v7[11];
  v34 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v36 = swift_getAssociatedConformanceWitness();
  *(v6 + 56) = AssociatedTypeWitness;
  *(v6 + 64) = v34;
  *(v6 + 72) = AssociatedConformanceWitness;
  *(v6 + 80) = v36;
  *(v6 + 600) = type metadata accessor for ReconciliationID();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  *(v6 + 608) = TupleTypeMetadata3;
  v38 = sub_1CF9E75D8();
  *(v6 + 616) = v38;
  v39 = *(v38 - 8);
  *(v6 + 624) = v39;
  v40 = *(v39 + 64) + 15;
  *(v6 + 632) = swift_task_alloc();
  v41 = *(TupleTypeMetadata3 - 8);
  *(v6 + 640) = v41;
  v42 = *(v41 + 64) + 15;
  *(v6 + 648) = swift_task_alloc();
  *(v6 + 656) = swift_task_alloc();
  *(v6 + 664) = swift_task_alloc();
  *(v6 + 672) = swift_task_alloc();
  v43 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1CF1A2EC0, v5, 0);
}

uint64_t sub_1CF1A2EC0()
{
  v156 = *MEMORY[0x1E69E9840];
  if (!fpfs_supports_tap_to_feedback())
  {
    *(v0 + 144) = *(v0 + 224);
    v3 = *(v0 + 600);
    v4 = swift_task_alloc();
    v5 = *(v0 + 584);
    v6 = vzip2q_s64(*(v0 + 568), v5);
    v7 = vzip1q_s64(*(v0 + 568), v5);
    *(v4 + 16) = v6;
    *(v4 + 32) = v7;
    swift_getTupleTypeMetadata3();
    v8 = sub_1CF9E6E58();
    WitnessTable = swift_getWitnessTable();
    v154 = sub_1CF054A5C(sub_1CF1A9B28, v4, v8, v3, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);

    v11 = 10;
LABEL_4:
    v112 = v11;
LABEL_5:
    v12 = *(v0 + 672);
    v13 = *(v0 + 664);
    v14 = *(v0 + 656);
    v15 = *(v0 + 648);
    v16 = *(v0 + 632);
    v17 = *(v0 + 560);
    v18 = *(v0 + 552);
    v19 = *(v0 + 544);
    v20 = *(v0 + 536);
    v21 = *(v0 + 504);
    v114 = *(v0 + 496);
    v116 = *(v0 + 488);
    v118 = *(v0 + 480);
    v120 = *(v0 + 456);
    v122 = *(v0 + 432);
    v124 = *(v0 + 424);
    v126 = *(v0 + 400);
    v128 = *(v0 + 392);
    v130 = *(v0 + 368);
    v132 = *(v0 + 360);
    v135 = *(v0 + 352);
    v137 = *(v0 + 344);
    v139 = *(v0 + 320);
    v142 = *(v0 + 312);
    v145 = *(v0 + 304);
    v150 = *(v0 + 280);

    v22 = *(v0 + 8);
    v23 = *MEMORY[0x1E69E9840];

    return v22(v112, v154);
  }

  v1 = *(v0 + 256);
  v2 = sub_1CF1A2478();
  v25 = *(v0 + 600);
  v26 = *(v0 + 592);
  v27 = *(v0 + 584);
  v28 = *(v0 + 576);
  v29 = *(v0 + 568);
  if (v2)
  {
    *(v0 + 216) = *(v0 + 224);
    v30 = swift_task_alloc();
    v30[2] = v28;
    v30[3] = v26;
    v30[4] = v29;
    v30[5] = v27;
    swift_getTupleTypeMetadata3();
    v31 = sub_1CF9E6E58();
    v32 = swift_getWitnessTable();
    v154 = sub_1CF054A5C(sub_1CF1A92D4, v30, v31, v25, MEMORY[0x1E69E73E0], v32, MEMORY[0x1E69E7410], v33);

    v112 = 0;
    goto LABEL_5;
  }

  v34 = *(v0 + 256);
  *(v0 + 152) = *(v0 + 224);
  v35 = swift_task_alloc();
  v35[2] = v28;
  v35[3] = v26;
  v35[4] = v29;
  v35[5] = v27;
  v35[6] = sub_1CF1A9090;
  v35[7] = v34;
  swift_getTupleTypeMetadata3();
  v36 = sub_1CF9E6E58();
  swift_getWitnessTable();
  v37 = sub_1CF9E6B88();
  *(v0 + 680) = v37;
  v143 = *(v0 + 632);
  v146 = *(v0 + 640);
  v140 = *(v0 + 608);
  v38 = *(v0 + 592);
  v39 = *(v0 + 584);
  v40 = *(v0 + 576);
  v41 = *(v0 + 568);
  v42 = *(v0 + 224);
  v43 = v36;
  v44 = v37;

  *(v0 + 160) = v42;
  v45 = swift_task_alloc();
  v45[2] = v40;
  v45[3] = v38;
  v45[4] = v41;
  v45[5] = v39;
  v154 = v44;
  v45[6] = v44;
  v46 = swift_task_alloc();
  v46[2] = v40;
  v46[3] = v38;
  v46[4] = v41;
  v46[5] = v39;
  v46[6] = sub_1CF1A90D8;
  v46[7] = v45;
  v47 = sub_1CF9E6B88();
  *(v0 + 688) = 0;

  *(v0 + 168) = v47;
  sub_1CF9E6E58();
  swift_getWitnessTable();
  sub_1CF9E7118();
  if ((*(v146 + 48))(v143, 1, v140) == 1)
  {
    (*(*(v0 + 624) + 8))(*(v0 + 632), *(v0 + 616));

    v11 = 3;
    goto LABEL_4;
  }

  v48 = (v0 + 568);
  v49 = *(v0 + 256);
  (*(*(v0 + 640) + 32))(*(v0 + 672), *(v0 + 632), *(v0 + 608));

  if ((*(v49 + 160) & 1) == 0 && !fp_shouldObfuscateFilenames())
  {
    v64 = *(v0 + 672);
    v65 = *(v0 + 640);
    v66 = *(v0 + 608);
    v67 = *(v0 + 600);
    v68 = *(v0 + 224);
    v148 = *v48;
    v152 = *(v0 + 584);

    *(v0 + 176) = v68;
    v69 = swift_task_alloc();
    v69[1] = vzip2q_s64(v148, v152);
    v69[2] = vzip1q_s64(v148, v152);
    v70 = swift_getWitnessTable();
    v154 = sub_1CF054A5C(sub_1CF1A9B28, v69, v43, v67, MEMORY[0x1E69E73E0], v70, MEMORY[0x1E69E7410], v71);

    (*(v65 + 8))(v64, v66);
    v11 = 11;
    goto LABEL_4;
  }

  v50 = *(v0 + 256);
  if (*(v50 + 161))
  {
    v51 = *(v0 + 672);
    v52 = *(v0 + 640);
    v53 = *(v0 + 608);
    v54 = *(v0 + 600);
    v55 = *(v0 + 224);
    v147 = *v48;
    v151 = *(v0 + 584);

    *(v0 + 208) = v55;
    v56 = swift_task_alloc();
    v56[1] = vzip2q_s64(v147, v151);
    v56[2] = vzip1q_s64(v147, v151);
    v57 = swift_getWitnessTable();
    v154 = sub_1CF054A5C(sub_1CF1A9B28, v56, v43, v54, MEMORY[0x1E69E73E0], v57, MEMORY[0x1E69E7410], v58);

    (*(v52 + 8))(v51, v53);
    v11 = 5;
    goto LABEL_4;
  }

  v59 = *(v50 + 112);
  *(v0 + 696) = v59;
  v60 = *(*v59 + 136);
  *(v0 + 704) = v60;
  v61 = v59 + v60;
  swift_beginAccess();
  v62 = type metadata accessor for FPFeedbackManagerState();
  *(v0 + 712) = v62;
  v63 = v61 + *(v62 + 24);
  v155 = (*(v63 + 8) & 1) == 0 && *v63 > 2uLL;
  if (fpfs_is_internal_build())
  {
    v72 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v73 = sub_1CF9E6888();
    v74 = [v72 initWithSuiteName_];

    if (v74)
    {
      v75 = sub_1CF9E6888();
      v76 = [v74 objectForKey_];

      if (v76)
      {
        sub_1CF9E7728();
        swift_unknownObjectRelease();
        sub_1CEFCCC44(v0 + 88, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        v77 = sub_1CF9E6888();
        v78 = [v74 integerForKey_];

        v79 = 5;
        if (v78 > 5)
        {
          v79 = v78;
        }

        if (v79 >= 600)
        {
          v80 = 600;
        }

        else
        {
          v80 = v79;
        }

        goto LABEL_30;
      }

      *(v0 + 104) = 0u;
      *(v0 + 88) = 0u;
      sub_1CEFCCC44(v0 + 88, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    }
  }

  v80 = 300;
LABEL_30:
  v81 = *(v0 + 520);
  v82 = *(v0 + 504);
  v83 = *(v0 + 512);
  v84 = *(v0 + 240);
  *(v50 + 161) = 1;
  v85 = swift_allocObject();
  *(v0 + 720) = v85;
  *(v85 + 16) = 0;
  sub_1CEFCCBDC(v84, v82, &unk_1EC4BE310, qword_1CF9FCBE0);
  v86 = *(v81 + 48);
  *(v0 + 728) = v86;
  *(v0 + 736) = (v81 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v86(v82, 1, v83) == 1)
  {
    sub_1CEFCCC44(*(v0 + 504), &unk_1EC4BE310, qword_1CF9FCBE0);
    v87 = 0;
  }

  else
  {
    v153 = *(v0 + 560);
    v111 = *(v0 + 552);
    v115 = *(v0 + 528);
    v88 = *(v0 + 512);
    v141 = v88;
    v144 = *(v0 + 520);
    v90 = *(v0 + 472);
    v89 = *(v0 + 480);
    v129 = v80;
    v91 = *(v0 + 464);
    v117 = *(v0 + 456);
    v119 = *(v0 + 448);
    v121 = *(v0 + 440);
    v131 = *(v0 + 432);
    v133 = *(v0 + 416);
    v136 = *(v0 + 408);
    v123 = *(v0 + 424);
    v125 = *(v0 + 400);
    v138 = *(v0 + 392);
    v127 = *(v0 + 384);
    v149 = *(v0 + 376);
    v92 = *(v0 + 256);
    v108 = *(v0 + 248);
    v113 = *(v144 + 32);
    v109 = *v48;
    v110 = *(v0 + 584);
    v113();
    sub_1CF1A9160();
    v93 = *(v92 + 168);
    *(v0 + 200) = MEMORY[0x1E69E7CC0];
    sub_1CF1A9300(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
    sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
    sub_1CF9E77B8();
    v87 = sub_1CF9E73E8();
    (*(v90 + 8))(v89, v91);
    ObjectType = swift_getObjectType();
    v95 = swift_allocObject();
    swift_weakInit();
    sub_1CF1A91AC(v108, v0 + 16);
    (*(v144 + 16))(v111, v153, v141);
    v96 = (*(v144 + 80) + 96) & ~*(v144 + 80);
    v97 = swift_allocObject();
    v97[1] = vzip2q_s64(v109, v110);
    v97[2] = vzip1q_s64(v109, v110);
    v97[3].i64[0] = v95;
    sub_1CF054EA0((v0 + 16), &v97[3].i64[1]);
    (v113)(&v97->i8[v96], v111, v141);
    *(v97->i64 + ((v115 + v96 + 7) & 0xFFFFFFFFFFFFFFF8)) = v85;

    sub_1CF042F9C();
    sub_1CEFD5828(0, v117, sub_1CF1A9210, v97);

    (*(v119 + 8))(v117, v121);

    sub_1CF9E6478();
    *v125 = v129;
    (*(v127 + 104))(v125, *MEMORY[0x1E69E7F48], v149);
    MEMORY[0x1D3868740](v123, v125);
    v98 = *(v127 + 8);
    v98(v125, v149);
    v134 = *(v133 + 8);
    v134(v123, v136);
    sub_1CEFD5B64(v125);
    sub_1CEFD5BD8(v138);
    MEMORY[0x1D3869770](v131, v125, v138, ObjectType);
    v98(v138, v149);
    v98(v125, v149);
    v134(v131, v136);
    sub_1CF9E7428();
    sub_1CF9E7448();
    (*(v144 + 8))(v153, v141);
    swift_unknownObjectRetain();
  }

  *(v0 + 744) = v87;
  v99 = *(v0 + 672);
  v100 = *(v0 + 608);
  v101 = __swift_project_boxed_opaque_existential_1(*(v0 + 248), *(*(v0 + 248) + 24));
  v102 = (v99 + *(v100 + 64));
  v103 = *v102;
  v104 = v102[1];
  v105 = *v101;
  v106 = swift_task_alloc();
  *(v0 + 752) = v106;
  *v106 = v0;
  v106[1] = sub_1CF1A3F38;
  v107 = *MEMORY[0x1E69E9840];

  return sub_1CF36E168(v103, v104, v155);
}

uint64_t sub_1CF1A3F38(char a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 752);
  v3 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 809) = a1;

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1CF1A407C, v3, 0);
}

uint64_t sub_1CF1A407C()
{
  v228 = *MEMORY[0x1E69E9840];
  if (*(v0 + 744))
  {
    v1 = *(v0 + 744);
    swift_getObjectType();
    sub_1CF9E7418();
    swift_unknownObjectRelease();
  }

  v2 = *(v0 + 809);
  v3 = *(v0 + 712);
  *(*(v0 + 256) + 161) = 0;
  v4 = *(v3 + 24);
  v5 = *(v0 + 704);
  v6 = *(v0 + 696);
  if (v2 == 1)
  {
    v7 = (v6 + v5 + v4);
    if (v7[1])
    {
      v8 = 1;
    }

    else
    {
      v9 = *v7;
      v10 = __CFADD__(v9, 1);
      v8 = v9 + 1;
      if (v10)
      {
        __break(1u);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v11 = *(v0 + 688);
  v12 = v6 + v5 + v4;
  *v12 = v8;
  *(v12 + 8) = 0;
  *(v6 + 72) = 1;
  sub_1CF7F1D28();
  if (v11)
  {
    v13 = *(v0 + 744);
    v14 = *(v0 + 720);
    v15 = *(v0 + 680);
    v16 = *(v0 + 672);
    v17 = *(v0 + 640);
    v18 = *(v0 + 608);

    swift_unknownObjectRelease();
    (*(v17 + 8))(v16, v18);
LABEL_10:
    v19 = *(v0 + 672);
    v20 = *(v0 + 664);
    v21 = *(v0 + 656);
    v22 = *(v0 + 648);
    v23 = *(v0 + 632);
    v24 = *(v0 + 560);
    v25 = *(v0 + 552);
    v26 = *(v0 + 544);
    v27 = *(v0 + 536);
    v28 = *(v0 + 504);
    v175 = *(v0 + 496);
    v177 = *(v0 + 488);
    v179 = *(v0 + 480);
    v181 = *(v0 + 456);
    v183 = *(v0 + 432);
    v185 = *(v0 + 424);
    v187 = *(v0 + 400);
    v189 = *(v0 + 392);
    v191 = *(v0 + 368);
    v193 = *(v0 + 360);
    v195 = *(v0 + 352);
    v198 = *(v0 + 344);
    v203 = *(v0 + 320);
    v207 = *(v0 + 312);
    v213 = *(v0 + 304);
    v219 = *(v0 + 280);

    v29 = *(v0 + 8);
    v30 = *MEMORY[0x1E69E9840];

    return v29();
  }

  if (*(v0 + 809) > 2u)
  {
LABEL_16:
    v32 = *(v0 + 352);
    v33 = *(v0 + 336);
    v208 = *(v0 + 328);
    v34 = *(v0 + 320);
    v35 = *(v0 + 304);
    v214 = *(v0 + 296);
    v36 = *(v0 + 280);
    v220 = *(v0 + 288);
    v37 = *(v0 + 264);
    v38 = *(v0 + 272);
    v39 = *(v0 + 696) + *(v0 + 704) + *(*(v0 + 712) + 24);
    v40 = *(v39 + 8) | (*v39 != 1);
    v41 = [objc_opt_self() defaultStore];
    v42 = v41;
    v43 = &selRef_spsFeedbackBackoffAfterOtherResponses_MultipleAttempts_InSeconds;
    if ((v40 & 1) == 0)
    {
      v43 = &selRef_spsFeedbackBackoffAfterOtherResponsesInSeconds;
    }

    [v41 *v43];

    sub_1CF9E5E08();
    (*(v38 + 104))(v36, *MEMORY[0x1E6969A98], v37);
    sub_1CF9E5CC8();
    sub_1CF9E5DF8();
    v44 = *(v33 + 8);
    v44(v32, v208);
    (*(v38 + 8))(v36, v37);
    (*(v214 + 8))(v35, v220);
    if ((*(v33 + 48))(v34, 1, v208) != 1)
    {
      v66 = v44;
      v67 = *(v0 + 360);
      v68 = *(v0 + 256);
      (*(*(v0 + 336) + 32))(v67, *(v0 + 320), *(v0 + 328));
      sub_1CF1A26B0(v67);
      v87 = *(v0 + 736);
      v88 = *(v0 + 728);
      v89 = *(v0 + 512);
      v90 = *(v0 + 488);
      sub_1CEFCCBDC(*(v0 + 240), v90, &unk_1EC4BE310, qword_1CF9FCBE0);
      if (v88(v90, 1, v89) == 1)
      {
        v91 = *(v0 + 744);
        v92 = *(v0 + 488);
        v66(*(v0 + 360), *(v0 + 328));
        swift_unknownObjectRelease();
        sub_1CEFCCC44(v92, &unk_1EC4BE310, qword_1CF9FCBE0);
      }

      else
      {
        (*(*(v0 + 520) + 32))(*(v0 + 536), *(v0 + 488), *(v0 + 512));
        v95 = [objc_opt_self() defaultManager];
        v96 = sub_1CF9E5928();
        *(v0 + 184) = 0;
        v97 = [v95 removeItemAtURL:v96 error:v0 + 184];

        v98 = *(v0 + 184);
        v99 = *(v0 + 744);
        if (!v97)
        {
          v146 = v98;
          v212 = *(v0 + 720);
          v147 = *(v0 + 680);
          v148 = *(v0 + 640);
          v218 = *(v0 + 608);
          v224 = *(v0 + 672);
          v149 = *(v0 + 536);
          v150 = *(v0 + 520);
          v151 = *(v0 + 512);
          v202 = *(v0 + 328);
          v206 = *(v0 + 360);

          sub_1CF9E57F8();

          swift_willThrow();
          swift_unknownObjectRelease();
          (*(v150 + 8))(v149, v151);
          v66(v206, v202);

          (*(v148 + 8))(v224, v218);
          goto LABEL_10;
        }

        v100 = *(v0 + 536);
        v101 = *(v0 + 520);
        v102 = *(v0 + 512);
        v103 = *(v0 + 360);
        v104 = *(v0 + 328);
        v105 = *(v0 + 744);
        swift_unknownObjectRelease();
        (*(v101 + 8))(v100, v102);
        v66(v103, v104);
      }

      v106 = *(v0 + 720);
      v107 = *(v0 + 672);
      v108 = *(v0 + 640);
      v109 = *(v0 + 608);

      (*(v108 + 8))(v107, v109);
      v174 = *(v0 + 680);
      v53 = 7;
      goto LABEL_21;
    }

    v45 = *(v0 + 744);
    v46 = *(v0 + 720);
    v47 = *(v0 + 680);
    v48 = *(v0 + 672);
    v49 = *(v0 + 640);
    v50 = *(v0 + 608);
    v51 = *(v0 + 600);
    v52 = *(v0 + 320);

    sub_1CEFCCC44(v52, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v174 = sub_1CF9E6DA8();

    swift_unknownObjectRelease();
    (*(v49 + 8))(v48, v50);
    goto LABEL_20;
  }

  if (*(v0 + 809))
  {
    if (*(v0 + 809) != 1)
    {
      v84 = *(v0 + 680);
      v85 = *(v0 + 368);
      v86 = *(v0 + 256);

      sub_1CF9E5C18();
      sub_1CF1A26B0(v85);
      v110 = *(v0 + 736);
      v111 = *(v0 + 728);
      v112 = *(v0 + 512);
      v113 = *(v0 + 496);
      v114 = *(v0 + 240);
      (*(*(v0 + 336) + 8))(*(v0 + 368), *(v0 + 328));
      sub_1CEFCCBDC(v114, v113, &unk_1EC4BE310, qword_1CF9FCBE0);
      if (v111(v113, 1, v112) == 1)
      {
        sub_1CEFCCC44(*(v0 + 496), &unk_1EC4BE310, qword_1CF9FCBE0);
      }

      else
      {
        (*(*(v0 + 520) + 32))(*(v0 + 544), *(v0 + 496), *(v0 + 512));
        v152 = [objc_opt_self() defaultManager];
        v153 = sub_1CF9E5928();
        *(v0 + 192) = 0;
        v154 = [v152 removeItemAtURL:v153 error:v0 + 192];

        v155 = *(v0 + 192);
        if (!v154)
        {
          v166 = *(v0 + 744);
          v167 = *(v0 + 720);
          v225 = *(v0 + 672);
          v168 = *(v0 + 640);
          v169 = *(v0 + 608);
          v170 = *(v0 + 544);
          v171 = *(v0 + 520);
          v172 = *(v0 + 512);
          v173 = v155;
          sub_1CF9E57F8();

          swift_willThrow();
          swift_unknownObjectRelease();
          (*(v171 + 8))(v170, v172);

          (*(v168 + 8))(v225, v169);
          goto LABEL_10;
        }

        v156 = *(v0 + 544);
        v157 = *(v0 + 512);
        v158 = *(*(v0 + 520) + 8);
        v159 = v155;
        v158(v156, v157);
      }

      v160 = *(v0 + 744);
      v161 = *(v0 + 720);
      v162 = *(v0 + 672);
      v163 = *(v0 + 640);
      v164 = *(v0 + 608);
      v165 = *(v0 + 600);
      v174 = sub_1CF9E6DA8();

      swift_unknownObjectRelease();
      (*(v163 + 8))(v162, v164);
      v53 = 8;
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v69 = *(v0 + 352);
  v70 = *(v0 + 336);
  v210 = *(v0 + 328);
  v71 = *(v0 + 304);
  v72 = *(v0 + 312);
  v216 = *(v0 + 296);
  v222 = *(v0 + 288);
  v73 = *(v0 + 272);
  v74 = *(v0 + 280);
  v75 = *(v0 + 264);
  v76 = [objc_opt_self() defaultStore];
  [v76 spsFeedbackBackoffAfterSayingYesInSeconds];

  sub_1CF9E5E08();
  (*(v73 + 104))(v74, *MEMORY[0x1E6969A98], v75);
  sub_1CF9E5CC8();
  sub_1CF9E5DF8();
  v77 = *(v70 + 8);
  *(v0 + 760) = v77;
  *(v0 + 768) = (v70 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v77(v69, v210);
  (*(v73 + 8))(v74, v75);
  (*(v216 + 8))(v71, v222);
  if ((*(v70 + 48))(v72, 1, v210) == 1)
  {
    v78 = *(v0 + 744);
    v79 = *(v0 + 720);
    v80 = *(v0 + 672);
    v81 = *(v0 + 640);
    v82 = *(v0 + 608);
    v83 = *(v0 + 312);
    swift_unknownObjectRelease();
    sub_1CEFCCC44(v83, &unk_1EC4BEDC0, &unk_1CF9FEEA0);

    (*(v81 + 8))(v80, v82);
    v174 = *(v0 + 680);
LABEL_20:
    v53 = 4;
LABEL_21:
    v176 = v53;
    v54 = *(v0 + 672);
    v55 = *(v0 + 664);
    v56 = *(v0 + 656);
    v57 = *(v0 + 648);
    v58 = *(v0 + 632);
    v59 = *(v0 + 560);
    v60 = *(v0 + 552);
    v61 = *(v0 + 544);
    v62 = *(v0 + 536);
    v63 = *(v0 + 504);
    v178 = *(v0 + 496);
    v180 = *(v0 + 488);
    v182 = *(v0 + 480);
    v184 = *(v0 + 456);
    v186 = *(v0 + 432);
    v188 = *(v0 + 424);
    v190 = *(v0 + 400);
    v192 = *(v0 + 392);
    v194 = *(v0 + 368);
    v196 = *(v0 + 360);
    v199 = *(v0 + 352);
    v204 = *(v0 + 344);
    v209 = *(v0 + 320);
    v215 = *(v0 + 312);
    v221 = *(v0 + 304);
    v226 = *(v0 + 280);

    v64 = *(v0 + 8);
    v65 = *MEMORY[0x1E69E9840];

    return v64(v176, v174);
  }

  v93 = *(v0 + 344);
  v94 = *(v0 + 256);
  (*(*(v0 + 336) + 32))(v93, *(v0 + 312), *(v0 + 328));
  sub_1CF1A26B0(v93);
  v115 = *(v0 + 672);
  v116 = *(v0 + 664);
  v117 = *(v0 + 656);
  v223 = *(v0 + 648);
  v227 = *(v0 + 720);
  v118 = *(v0 + 608);
  v119 = *(v0 + 600);
  v217 = *(v0 + 248);
  v120 = *(*(v0 + 640) + 16);
  v197 = *(v0 + 808);
  v211 = v115;
  v120(v116, v115, v118);
  v121 = (v116 + *(v118 + 48));
  v122 = v121[1];
  v200 = *v121;
  v205 = v120;
  v123 = v121[5];
  v124 = *(v116 + *(v118 + 64) + 8);

  v120(v117, v115, v118);
  v125 = (v117 + *(v118 + 48));
  v127 = v125[1];
  v126 = v125[2];
  v128 = v125[5];
  v129 = *(v117 + *(v118 + 64) + 8);

  v130 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v131 = sub_1CF9E6888();

  v201 = [v130 initWithDomain:v131 code:v126 userInfo:0];
  *(v0 + 776) = v201;

  v132 = *(*(v119 - 1) + 8);
  v132(v117, v119);
  v132(v116, v119);
  v133 = __swift_project_boxed_opaque_existential_1(v217, v217[3]);
  v205(v223, v211, v118);
  v134 = v223 + *(v118 + 48);
  v135 = *(v134 + 8);
  v136 = *(v134 + 40);

  v137 = *(v223 + *(v118 + 64) + 8);

  v138 = sub_1CF01D738(v119);
  v140 = v139;
  *(v0 + 784) = v139;
  v132(v223, v119);
  v141 = *(v227 + 16);
  v142 = *v133;
  v143 = swift_task_alloc();
  *(v0 + 792) = v143;
  *v143 = v0;
  v143[1] = sub_1CF1A5080;
  v144 = *(v0 + 232);
  v145 = *MEMORY[0x1E69E9840];

  return sub_1CF36F790(v138, v140, v201, v144, v141 & 1, v197 & 1);
}

uint64_t sub_1CF1A5080()
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 792);
  v4 = *v1;
  v2[100] = v0;

  v5 = v2[98];
  if (v0)
  {
    v6 = v2[85];
    v7 = v2[32];

    v8 = sub_1CF1A5450;
  }

  else
  {
    v7 = v2[32];

    v8 = sub_1CF1A5200;
  }

  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1CF1A5200()
{
  v40 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 768);
  v2 = *(v0 + 760);
  v3 = *(v0 + 744);
  v4 = *(v0 + 720);
  v5 = *(v0 + 672);
  v6 = *(v0 + 640);
  v7 = *(v0 + 608);
  v8 = *(v0 + 344);
  v9 = *(v0 + 328);

  swift_unknownObjectRelease();
  v2(v8, v9);

  (*(v6 + 8))(v5, v7);
  v10 = *(v0 + 672);
  v11 = *(v0 + 664);
  v12 = *(v0 + 656);
  v13 = *(v0 + 648);
  v14 = *(v0 + 632);
  v15 = *(v0 + 560);
  v16 = *(v0 + 552);
  v17 = *(v0 + 544);
  v18 = *(v0 + 536);
  v19 = *(v0 + 504);
  v23 = *(v0 + 680);
  v24 = *(v0 + 496);
  v25 = *(v0 + 488);
  v26 = *(v0 + 480);
  v27 = *(v0 + 456);
  v28 = *(v0 + 432);
  v29 = *(v0 + 424);
  v30 = *(v0 + 400);
  v31 = *(v0 + 392);
  v32 = *(v0 + 368);
  v33 = *(v0 + 360);
  v34 = *(v0 + 352);
  v35 = *(v0 + 344);
  v36 = *(v0 + 320);
  v37 = *(v0 + 312);
  v38 = *(v0 + 304);
  v39 = *(v0 + 280);

  v20 = *(v0 + 8);
  v21 = *MEMORY[0x1E69E9840];

  return v20(6, v23);
}

uint64_t sub_1CF1A5450()
{
  v40 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 768);
  v2 = *(v0 + 760);
  v3 = *(v0 + 744);
  v4 = *(v0 + 720);
  v5 = *(v0 + 672);
  v6 = *(v0 + 640);
  v7 = *(v0 + 608);
  v8 = *(v0 + 344);
  v9 = *(v0 + 328);

  swift_unknownObjectRelease();
  v2(v8, v9);

  (*(v6 + 8))(v5, v7);
  v10 = *(v0 + 672);
  v11 = *(v0 + 664);
  v12 = *(v0 + 656);
  v13 = *(v0 + 648);
  v14 = *(v0 + 632);
  v15 = *(v0 + 560);
  v16 = *(v0 + 552);
  v17 = *(v0 + 544);
  v18 = *(v0 + 536);
  v19 = *(v0 + 504);
  v23 = *(v0 + 800);
  v24 = *(v0 + 496);
  v25 = *(v0 + 488);
  v26 = *(v0 + 480);
  v27 = *(v0 + 456);
  v28 = *(v0 + 432);
  v29 = *(v0 + 424);
  v30 = *(v0 + 400);
  v31 = *(v0 + 392);
  v32 = *(v0 + 368);
  v33 = *(v0 + 360);
  v34 = *(v0 + 352);
  v35 = *(v0 + 344);
  v36 = *(v0 + 320);
  v37 = *(v0 + 312);
  v38 = *(v0 + 304);
  v39 = *(v0 + 280);

  v20 = *(v0 + 8);
  v21 = *MEMORY[0x1E69E9840];

  return v20();
}

uint64_t sub_1CF1A5698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X4>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = *(a2 + 56);
  v9 = *a3;
  if (v8 == 2 || (v8 & 1) == 0)
  {
    result = sub_1CF1A6420(*a2, *(a2 + 8), *(a2 + 16), *(a2 + 24) | (*(a2 + 26) << 16), *(a2 + 32), *(a2 + 40), *(a2 + 48));
    if (!v4)
    {
      v17 = result;
      v25 = a4;
      v27 = a1;
      v18 = v9[12];
      v19 = v9[10];
      swift_getAssociatedTypeWitness();
      v20 = v9[13];
      v21 = v9[11];
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedConformanceWitness();
      if (v17)
      {
        v22 = type metadata accessor for ReconciliationID();
        return (*(*(v22 - 8) + 56))(v25, 1, 1, v22);
      }

      else
      {
        v23 = type metadata accessor for ReconciliationID();
        v24 = *(v23 - 8);
        (*(v24 + 16))(v25, v27, v23);
        return (*(v24 + 56))(v25, 0, 1, v23);
      }
    }
  }

  else
  {
    v10 = v7[12];
    v11 = v7[10];
    swift_getAssociatedTypeWitness();
    v12 = v9[13];
    v13 = v9[11];
    v26 = a1;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v14 = type metadata accessor for ReconciliationID();
    v15 = *(v14 - 8);
    (*(v15 + 16))(a4, v26, v14);
    return (*(v15 + 56))(a4, 0, 1, v14);
  }

  return result;
}

uint64_t sub_1CF1A59E0(uint64_t a1, uint64_t (*a2)(uint64_t, __int128 *, void, void))
{
  *&v8 = swift_getAssociatedTypeWitness();
  *(&v8 + 1) = swift_getAssociatedTypeWitness();
  *&v9 = swift_getAssociatedConformanceWitness();
  *(&v9 + 1) = swift_getAssociatedConformanceWitness();
  type metadata accessor for ReconciliationID();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v4 = (a1 + *(TupleTypeMetadata3 + 48));
  *&v10[9] = *(v4 + 41);
  v5 = v4[1];
  v8 = *v4;
  v9 = v5;
  *v10 = v4[2];
  return a2(a1, &v8, *(a1 + *(TupleTypeMetadata3 + 64)), *(a1 + *(TupleTypeMetadata3 + 64) + 8));
}

uint64_t sub_1CF1A5B4C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v19[8] = a5;
  v19[0] = swift_getAssociatedTypeWitness();
  v19[1] = swift_getAssociatedTypeWitness();
  v19[2] = swift_getAssociatedConformanceWitness();
  v19[3] = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for ReconciliationID();
  sub_1CF9E6E58();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v9 = sub_1CF9E6C08();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v11 = TupleTypeMetadata3;
  if (v9)
  {
    return (*(*(TupleTypeMetadata3 - 8) + 56))(a6, 1, 1, TupleTypeMetadata3);
  }

  v13 = (a6 + *(TupleTypeMetadata3 + 48));
  v14 = (a6 + *(TupleTypeMetadata3 + 64));
  (*(*(v8 - 8) + 16))(a6, a1, v8);
  v15 = a2[1];
  *v13 = *a2;
  v13[1] = v15;
  v13[2] = a2[2];
  *(v13 + 41) = *(a2 + 41);
  *v14 = a3;
  v14[1] = a4;
  (*(*(v11 - 8) + 56))(a6, 0, 1, v11);
  sub_1CF1A8918(a2, v19);
}

uint64_t sub_1CF1A5DD4(uint64_t a1, uint64_t (*a2)(uint64_t, __int128 *, void, void))
{
  *&v8 = swift_getAssociatedTypeWitness();
  *(&v8 + 1) = swift_getAssociatedTypeWitness();
  *&v9 = swift_getAssociatedConformanceWitness();
  *(&v9 + 1) = swift_getAssociatedConformanceWitness();
  type metadata accessor for ReconciliationID();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v4 = (a1 + *(TupleTypeMetadata3 + 48));
  *&v10[9] = *(v4 + 41);
  v5 = v4[1];
  v8 = *v4;
  v9 = v5;
  *v10 = v4[2];
  return a2(a1, &v8, *(a1 + *(TupleTypeMetadata3 + 64)), *(a1 + *(TupleTypeMetadata3 + 64) + 8));
}

uint64_t sub_1CF1A5F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = swift_getAssociatedConformanceWitness();
  v3 = type metadata accessor for ReconciliationID();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v5 = *(*(TupleTypeMetadata3 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v7 = &v14 - v6;
  (*(v8 + 16))(&v14 - v6, a1, TupleTypeMetadata3);
  v9 = &v7[*(TupleTypeMetadata3 + 48)];
  v10 = *(v9 + 1);
  v11 = *(v9 + 5);

  v12 = *&v7[*(TupleTypeMetadata3 + 64) + 8];

  return (*(*(v3 - 8) + 32))(v15, v7, v3);
}

void sub_1CF1A6150(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v6 = [objc_opt_self() sharedManager];
    v7 = *(*__swift_project_boxed_opaque_existential_1(a2, a2[3]) + 32);
    v8 = sub_1CF9E5928();
    aBlock[4] = sub_1CF1A92F8;
    aBlock[5] = a4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF0892D0;
    aBlock[3] = &block_descriptor_0;
    v9 = _Block_copy(aBlock);

    [v6 triggerDiagnosticsFor:v7 persistingAt:v8 completionHandler:v9];
    _Block_release(v9);
  }
}

uint64_t sub_1CF1A62B8(char a1, uint64_t a2)
{
  v4 = sub_1CF9E6118();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v10 = sub_1CF9E6108();
  v11 = sub_1CF9E7298();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = a1 & 1;
    _os_log_impl(&dword_1CEFC7000, v10, v11, "DE was ran? %{BOOL}d", v12, 8u);
    MEMORY[0x1D386CDC0](v12, -1, -1);
  }

  result = (*(v5 + 8))(v8, v4);
  *(a2 + 16) = a1 & 1;
  return result;
}

BOOL sub_1CF1A6420(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, double a7)
{
  v16 = *(v7 + 112);
  sub_1CF1A6E34();
  if (!v8)
  {
    *&v29 = a1;
    *(&v29 + 1) = a2;
    v30 = a3;
    v31 = a4;
    v32 = BYTE2(a4);
    v33 = a5;
    v34 = a6;
    v18 = &v16[*(*v16 + 136)];
    swift_beginAccess();
    v19 = type metadata accessor for FPFeedbackManagerState();
    v20 = v19;
    v21 = *&v18[*(v19 + 20)];
    if (*(v21 + 16) && (v19 = sub_1CF7BF13C(&v29), (v22 & 1) != 0))
    {
      v23 = *(*(v21 + 56) + 8 * v19);
    }

    else
    {
      sub_1CF8DEF70(v19, 0.0, 1.0);
      v23 = v24;
      swift_beginAccess();
      v25 = *(v20 + 20);
      v26 = *&v18[v25];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *&v18[v25];
      *&v18[v25] = 0x8000000000000000;
      sub_1CF1D169C(&v29, isUniquelyReferenced_nonNull_native, v23);
      *&v18[v25] = v35;
      swift_endAccess();
      v16[72] = 1;
      sub_1CF7F1D28();
    }

    return v23 <= a7;
  }

  return v17;
}

uint64_t sub_1CF1A65AC()
{
  v1 = *(v0 + 112);

  __swift_destroy_boxed_opaque_existential_1((v0 + 120));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1CF1A65E4()
{
  sub_1CF1A65AC();

  return MEMORY[0x1EEE6DEF0](v0);
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1CF1A6644(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CF1A668C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CF1A66EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CF1A6734(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy27_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_1CF1A679C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 27))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CF1A67E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 27) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 27) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for FPFeedbackManagerState()
{
  result = qword_1EDEA55A0;
  if (!qword_1EDEA55A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CF1A68B0()
{
  sub_1CF1A694C();
  if (v0 <= 0x3F)
  {
    sub_1CF1A69A4();
    if (v1 <= 0x3F)
    {
      sub_1CF1A6A5C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CF1A694C()
{
  if (!qword_1EDEAFE00)
  {
    sub_1CF9E5CF8();
    v0 = sub_1CF9E75D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEAFE00);
    }
  }
}

void sub_1CF1A69A4()
{
  if (!qword_1EDEA3848)
  {
    sub_1CF1A6A08();
    v0 = sub_1CF9E6708();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEA3848);
    }
  }
}

unint64_t sub_1CF1A6A08()
{
  result = qword_1EDEA5068[0];
  if (!qword_1EDEA5068[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEA5068);
  }

  return result;
}

void sub_1CF1A6A5C()
{
  if (!qword_1EDEAECF8)
  {
    v0 = sub_1CF9E75D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEAECF8);
    }
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1CF1A6AD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CF1A6B18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1CF1A6B78()
{
  result = qword_1EDEA5060;
  if (!qword_1EDEA5060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA5060);
  }

  return result;
}

unint64_t sub_1CF1A6BD0()
{
  result = qword_1EDEAD848;
  if (!qword_1EDEAD848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAD848);
  }

  return result;
}

uint64_t sub_1CF1A6C4C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1CF1A6D14;

  return sub_1CF1A2824(a1, a2, a3, a4, a5);
}

uint64_t sub_1CF1A6D14(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_1CF1A6E24(void *a1, void *a2)
{
  v3 = a2[10];
  v2 = a2[11];
  v4 = a2[12];
  v5 = a2[13];
  return sub_1CF1A8470(a1);
}

uint64_t sub_1CF1A6E34()
{
  v2 = type metadata accessor for FPFeedbackManagerState();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
  result = (*(v7 + 16))(*(v0 + 56), *(v0 + 64), v6, v7);
  if (!v1)
  {
    if (v9 >> 60 != 15)
    {
      v10 = result;
      v11 = v9;
      v12 = sub_1CF9E5688();
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      swift_allocObject();
      sub_1CEFE42D4(v10, v11);
      sub_1CF9E5678();
      sub_1CF1A9300(&qword_1EC4C4D70, type metadata accessor for FPFeedbackManagerState);
      sub_1CF9E5668();

      sub_1CEFE48D8(v10, v11);
      sub_1CEFE48D8(v10, v11);
      v15 = *(*v0 + 136);
      swift_beginAccess();
      sub_1CF1A8FC8(v5, v0 + v15, type metadata accessor for FPFeedbackManagerState);
      swift_endAccess();
      result = sub_1CF1A9030(v5, type metadata accessor for FPFeedbackManagerState);
    }

    *(v0 + 72) = 0;
  }

  return result;
}

uint64_t sub_1CF1A7030()
{
  v2 = type metadata accessor for FPDownloadSchedulerFastPassState();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
  result = (*(v7 + 16))(*(v0 + 56), *(v0 + 64), v6, v7);
  if (!v1)
  {
    if (v9 >> 60 != 15)
    {
      v10 = result;
      v11 = v9;
      v12 = sub_1CF9E5688();
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      swift_allocObject();
      sub_1CEFE42D4(v10, v11);
      sub_1CF9E5678();
      sub_1CF1A9300(&qword_1EC4BDF90, type metadata accessor for FPDownloadSchedulerFastPassState);
      sub_1CF9E5668();

      sub_1CEFE48D8(v10, v11);
      sub_1CEFE48D8(v10, v11);
      v15 = *(*v0 + 136);
      swift_beginAccess();
      sub_1CF1A8FC8(v5, v0 + v15, type metadata accessor for FPDownloadSchedulerFastPassState);
      swift_endAccess();
      result = sub_1CF1A9030(v5, type metadata accessor for FPDownloadSchedulerFastPassState);
    }

    *(v0 + 72) = 0;
  }

  return result;
}

uint64_t sub_1CF1A722C()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  result = (*(v3 + 16))(*(v0 + 56), *(v0 + 64), v2, v3);
  if (!v1)
  {
    if (v5 >> 60 != 15)
    {
      v6 = result;
      v7 = v5;
      v8 = sub_1CF9E5688();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      sub_1CEFE42D4(v6, v7);
      sub_1CF9E5678();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE08, &qword_1CF9FB1C8);
      sub_1CEFCCCEC(&qword_1EC4BDE10, &qword_1EC4BDE08, &qword_1CF9FB1C8);
      sub_1CF9E5668();

      sub_1CEFE48D8(v6, v7);
      sub_1CEFE48D8(v6, v7);
      swift_beginAccess();
      v11 = *(v0 + 80);
      *(v0 + 80) = v12;
    }

    *(v0 + 72) = 0;
  }

  return result;
}

void sub_1CF1A73B4()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = (*(v3 + 16))(*(v0 + 56), *(v0 + 64), v2, v3);
  if (!v1)
  {
    if (v5 >> 60 != 15)
    {
      v6 = v4;
      v7 = v5;
      v8 = sub_1CF9E5688();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      sub_1CEFE42D4(v6, v7);
      sub_1CF9E5678();
      type metadata accessor for FPCKReport();
      sub_1CF1A9300(&qword_1EC4BDF98, type metadata accessor for FPCKReport);
      sub_1CF9E5668();

      sub_1CEFE48D8(v6, v7);
      sub_1CEFE48D8(v6, v7);
      swift_beginAccess();
      v11 = *(v0 + 80);
      *(v0 + 80) = v12;
    }

    *(v0 + 72) = 0;
  }
}

uint64_t sub_1CF1A752C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  if (a1 == a5 && a2 == a6)
  {
    result = 0;
  }

  else
  {
    v13 = sub_1CF9E8048();
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  if (a3 == a7 && a8 == a4)
  {
    if (BYTE1(a4) == 89)
    {
      if (BYTE1(a8) != 89)
      {
        return 0;
      }
    }

    else if (BYTE1(a8) == 89 || qword_1CF9FBAF8[SBYTE1(a4)] != qword_1CF9FBAF8[SBYTE1(a8)])
    {
      return 0;
    }

    if ((a4 & 0xFF0000) == 0x20000)
    {
      if (BYTE2(a8) != 2)
      {
        return 0;
      }
    }

    else if (BYTE2(a8) == 2 || ((((a4 & 0x10000) == 0) ^ HIWORD(a8)) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_1CF1A7638@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDDF0, &qword_1CF9FB1B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1A8F0C();
  sub_1CF9E8298();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v24) = 0;
  sub_1CF1A8870();
  sub_1CF9E7D88();
  v11 = v28;
  v21 = v29;
  v22 = v27;
  HIDWORD(v20) = v30;
  v35 = v31;
  v23 = v32;
  v36 = 1;
  v12 = sub_1CF9E7D48();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  v16 = v21;
  v15 = v22;
  *&v24 = v22;
  *(&v24 + 1) = v11;
  *&v25 = v21;
  v17 = BYTE4(v20);
  BYTE8(v25) = BYTE4(v20);
  BYTE9(v25) = v35;
  BYTE10(v25) = v23;
  *&v26 = v12;
  *(&v26 + 1) = v14;
  sub_1CF1A8F60(&v24, &v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v27 = v15;
  v28 = v11;
  v29 = v16;
  v30 = v17;
  v31 = v35;
  v32 = v23;
  v33 = v12;
  v34 = v14;
  result = sub_1CF1A8F98(&v27);
  v19 = v25;
  *a2 = v24;
  a2[1] = v19;
  a2[2] = v26;
  return result;
}

uint64_t sub_1CF1A78B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6F44726F727265 && a2 == 0xEB000000006E6961;
  if (v4 || (sub_1CF9E8048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065 || (sub_1CF9E8048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726944726F727265 && a2 == 0xEE006E6F69746365 || (sub_1CF9E8048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65646F43626F6ALL && a2 == 0xE700000000000000 || (sub_1CF9E8048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69796C7265646E75 && a2 == 0xEA0000000000676ELL)
  {

    return 4;
  }

  else
  {
    v6 = sub_1CF9E8048();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1CF1A7A80(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDD68, &qword_1CF9FB180);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1A8A7C();
  sub_1CF9E8298();
  if (!v1)
  {
    v17 = 0;
    v8 = sub_1CF9E7D48();
    v16 = 1;
    sub_1CF9E7D78();
    v14 = 2;
    sub_1CF1A8AD0();
    sub_1CF9E7D88();
    v10[3] = v15;
    v12 = 3;
    sub_1CF1A8B24();
    sub_1CF9E7CF8();
    v10[2] = v13;
    v11 = 4;
    sub_1CF9E7CC8();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_1CF1A7D1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_1CF9E8048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696C706D6173 && a2 == 0xEC00000065746152 || (sub_1CF9E8048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x796C6E4F727474 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1CF9E8048();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double sub_1CF1A7E38(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDD58, &qword_1CF9FB170);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1A8A28();
  sub_1CF9E8298();
  if (!v1)
  {
    v15 = 0;
    sub_1CF9E7D48();
    v14 = 1;
    sub_1CF9E7D68();
    v2 = v11;
    v13 = 2;
    sub_1CF9E7CC8();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_1CF1A8040@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDD38, &qword_1CF9FB160);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1A881C();
  sub_1CF9E8298();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v28) = 0;
  sub_1CF1A8870();
  sub_1CF9E7D88();
  v11 = v32;
  v27 = v31;
  v12 = v33;
  v26 = v34;
  v25 = v35;
  v24 = v36;
  v41 = 1;
  sub_1CF1A88C4();
  sub_1CF9E7D88();
  (*(v6 + 8))(v9, v5);
  v22 = *(&v42 + 1);
  v23 = v42;
  v13 = v43;
  v21 = v44;
  v14 = v27;
  *&v28 = v27;
  *(&v28 + 1) = v11;
  *&v29 = v12;
  v15 = v26;
  BYTE8(v29) = v26;
  v16 = v25;
  BYTE9(v29) = v25;
  v17 = v24;
  BYTE10(v29) = v24;
  *v30 = v42;
  *&v30[16] = v43;
  v30[24] = v44;
  sub_1CF1A8918(&v28, &v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v31 = v14;
  v32 = v11;
  v33 = v12;
  v34 = v15;
  v35 = v16;
  v36 = v17;
  v37 = v23;
  v38 = v22;
  v39 = v13;
  v40 = v21;
  result = sub_1CF1A8950(&v31);
  v19 = v29;
  *a2 = v28;
  a2[1] = v19;
  a2[2] = *v30;
  *(a2 + 41) = *&v30[9];
  return result;
}

uint64_t sub_1CF1A8340(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000018 && 0x80000001CFA2DD90 == a2 || (sub_1CF9E8048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696C706D6173 && a2 == 0xEF73746C75736552 || (sub_1CF9E8048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001CFA2DDB0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1CF9E8048();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1CF1A8470(void *a1)
{
  v2 = type metadata accessor for GlobalResourceStore();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v21[3] = v2;
  v21[4] = &off_1F4C04308;
  v21[0] = sub_1CF51BB3C();
  sub_1CF1A91AC(v21, v20);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C06E0, &unk_1CFA05AF0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  *(v8 + 72) = 0;
  sub_1CF1A91AC(v20, v8 + 16);
  v9 = v8 + *(*v8 + 136);
  v10 = sub_1CF9E5CF8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = type metadata accessor for FPFeedbackManagerState();
  v12 = *(v11 + 20);
  v13 = sub_1CF4E06FC(MEMORY[0x1E69E7CC0]);
  __swift_destroy_boxed_opaque_existential_1(v20);
  *(v9 + v12) = v13;
  v14 = v9 + *(v11 + 24);
  *v14 = 0;
  *(v14 + 8) = 1;
  *(v8 + 56) = 0xD000000000000016;
  *(v8 + 64) = 0x80000001CF9FA770;
  sub_1CF1A6E34();
  __swift_destroy_boxed_opaque_existential_1(v21);
  v15 = *(*v8 + 136);
  swift_beginAccess();
  sub_1CF1A1590(a1);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v8 + 16));
  v16 = *(v8 + 64);

  sub_1CF1A9030(v8 + *(*v8 + 136), type metadata accessor for FPFeedbackManagerState);
  v17 = *(*v8 + 48);
  v18 = *(*v8 + 52);
  return swift_deallocClassInstance();
}

unint64_t sub_1CF1A881C()
{
  result = qword_1EDEAC5C8;
  if (!qword_1EDEAC5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAC5C8);
  }

  return result;
}

unint64_t sub_1CF1A8870()
{
  result = qword_1EDEAD840;
  if (!qword_1EDEAD840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAD840);
  }

  return result;
}

unint64_t sub_1CF1A88C4()
{
  result = qword_1EDEACB38;
  if (!qword_1EDEACB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEACB38);
  }

  return result;
}

unint64_t sub_1CF1A8980()
{
  result = qword_1EC4BDD48;
  if (!qword_1EC4BDD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDD48);
  }

  return result;
}

unint64_t sub_1CF1A89D4()
{
  result = qword_1EC4BDD50;
  if (!qword_1EC4BDD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDD50);
  }

  return result;
}

unint64_t sub_1CF1A8A28()
{
  result = qword_1EDEACB50;
  if (!qword_1EDEACB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEACB50);
  }

  return result;
}

unint64_t sub_1CF1A8A7C()
{
  result = qword_1EDEAD860[0];
  if (!qword_1EDEAD860[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEAD860);
  }

  return result;
}

unint64_t sub_1CF1A8AD0()
{
  result = qword_1EDEADDC0;
  if (!qword_1EDEADDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEADDC0);
  }

  return result;
}

unint64_t sub_1CF1A8B24()
{
  result = qword_1EDEABCB8[0];
  if (!qword_1EDEABCB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEABCB8);
  }

  return result;
}

unint64_t sub_1CF1A8B78()
{
  result = qword_1EC4BDD78;
  if (!qword_1EC4BDD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDD78);
  }

  return result;
}

unint64_t sub_1CF1A8BCC()
{
  result = qword_1EC4BDD80;
  if (!qword_1EC4BDD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDD80);
  }

  return result;
}

unint64_t sub_1CF1A8C20()
{
  result = qword_1EC4BDD90;
  if (!qword_1EC4BDD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDD90);
  }

  return result;
}

unint64_t sub_1CF1A8C74()
{
  result = qword_1EC4BDDA8;
  if (!qword_1EC4BDDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDDA8);
  }

  return result;
}

unint64_t sub_1CF1A8CC8()
{
  result = qword_1EC4BDDB0;
  if (!qword_1EC4BDDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDDB0);
  }

  return result;
}

uint64_t sub_1CF1A8D1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FPFeedbackManagerState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF1A8D80(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BDD98, &qword_1CF9FB198);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CF1A8E10()
{
  result = qword_1EC4BDDC8;
  if (!qword_1EC4BDDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDDC8);
  }

  return result;
}

unint64_t sub_1CF1A8E64()
{
  result = qword_1EC4BDDD0;
  if (!qword_1EC4BDDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDDD0);
  }

  return result;
}

unint64_t sub_1CF1A8EB8()
{
  result = qword_1EC4BDDE0;
  if (!qword_1EC4BDDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDDE0);
  }

  return result;
}

unint64_t sub_1CF1A8F0C()
{
  result = qword_1EC4BDDF8;
  if (!qword_1EC4BDDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDDF8);
  }

  return result;
}

uint64_t sub_1CF1A8FC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CF1A9030(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CF1A90D8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5[2];
  v7 = v5[3];
  v8 = v5[4];
  v10 = v5[5];
  return sub_1CF1A5B4C(a1, a2, a3, a4, v5[6], a5);
}

unint64_t sub_1CF1A9160()
{
  result = qword_1EDEAED60;
  if (!qword_1EDEAED60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEAED60);
  }

  return result;
}

uint64_t sub_1CF1A91AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1CF1A9210()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(sub_1CF9E5A58() - 8);
  v6 = (*(v5 + 80) + 96) & ~*(v5 + 80);
  v7 = v0[6];
  v8 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1CF1A6150(v7, v0 + 7, v0 + v6, v8);
}

uint64_t sub_1CF1A92D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  return sub_1CF1A5F40(a1, a2);
}

uint64_t sub_1CF1A9300(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for SpeculativeDownloadsDiskManagementState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SpeculativeDownloadsDiskManagementState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1CF1A94EC()
{
  result = qword_1EC4BDFA0;
  if (!qword_1EC4BDFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDFA0);
  }

  return result;
}

unint64_t sub_1CF1A9544()
{
  result = qword_1EC4BDFA8;
  if (!qword_1EC4BDFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDFA8);
  }

  return result;
}

unint64_t sub_1CF1A959C()
{
  result = qword_1EC4BDFB0;
  if (!qword_1EC4BDFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDFB0);
  }

  return result;
}

unint64_t sub_1CF1A95F4()
{
  result = qword_1EC4BDFB8;
  if (!qword_1EC4BDFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDFB8);
  }

  return result;
}

unint64_t sub_1CF1A964C()
{
  result = qword_1EC4BDFC0;
  if (!qword_1EC4BDFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDFC0);
  }

  return result;
}

unint64_t sub_1CF1A96A4()
{
  result = qword_1EC4BDFC8;
  if (!qword_1EC4BDFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDFC8);
  }

  return result;
}

unint64_t sub_1CF1A96FC()
{
  result = qword_1EC4BDFD0;
  if (!qword_1EC4BDFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDFD0);
  }

  return result;
}

unint64_t sub_1CF1A9754()
{
  result = qword_1EC4BDFD8;
  if (!qword_1EC4BDFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDFD8);
  }

  return result;
}

unint64_t sub_1CF1A97AC()
{
  result = qword_1EC4BDFE0;
  if (!qword_1EC4BDFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDFE0);
  }

  return result;
}

unint64_t sub_1CF1A9804()
{
  result = qword_1EC4BDFE8;
  if (!qword_1EC4BDFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDFE8);
  }

  return result;
}

unint64_t sub_1CF1A985C()
{
  result = qword_1EC4BDFF0;
  if (!qword_1EC4BDFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDFF0);
  }

  return result;
}

unint64_t sub_1CF1A98B4()
{
  result = qword_1EC4BDFF8;
  if (!qword_1EC4BDFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BDFF8);
  }

  return result;
}

unint64_t sub_1CF1A990C()
{
  result = qword_1EDEAD850;
  if (!qword_1EDEAD850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAD850);
  }

  return result;
}

unint64_t sub_1CF1A9964()
{
  result = qword_1EDEAD858;
  if (!qword_1EDEAD858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAD858);
  }

  return result;
}

unint64_t sub_1CF1A99BC()
{
  result = qword_1EDEACB40;
  if (!qword_1EDEACB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEACB40);
  }

  return result;
}

unint64_t sub_1CF1A9A14()
{
  result = qword_1EDEACB48;
  if (!qword_1EDEACB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEACB48);
  }

  return result;
}

unint64_t sub_1CF1A9A6C()
{
  result = qword_1EDEAC5B8;
  if (!qword_1EDEAC5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAC5B8);
  }

  return result;
}

unint64_t sub_1CF1A9AC4()
{
  result = qword_1EDEAC5C0;
  if (!qword_1EDEAC5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAC5C0);
  }

  return result;
}

uint64_t sub_1CF1A9B40(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v9 = fpfs_fileattrs_fullpath();
  if (v9 && (v10 = v9, v11 = strlen(v9), v11 > 0))
  {
    v12 = v11;
    v13 = [objc_opt_self() defaultManager];
    v14 = [v13 stringWithFileSystemRepresentation:v10 length:v12];

    v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v17 = v16;

    a3(&v25, a5, v15, v17);
    if (v5)
    {
      v18 = v5;
    }

    else
    {
      v18 = v25;
    }

    v22 = *a2;
    v23 = *(a2 + 8);
    *a2 = v18;
    *(a2 + 8) = v5 != 0;
    sub_1CF0BA6EC(v22, v23);
  }

  else
  {
    sub_1CEFDB034();
    v19 = swift_allocError();
    *v20 = 1;
    *(v20 + 8) = 0u;
    *(v20 + 24) = 0u;
    *(v20 + 40) = 19;
    v21 = *a2;
    LOBYTE(v20) = *(a2 + 8);
    *a2 = v19;
    *(a2 + 8) = 1;
    sub_1CF0BA6EC(v21, v20);
  }

  return 0;
}

uint64_t sub_1CF1A9D0C@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v109 = a6;
  v172 = *MEMORY[0x1E69E9840];
  v11 = a4[1];
  v168 = *a4;
  v169 = v11;
  v12 = a4[3];
  v170 = a4[2];
  v171 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v107 = (&v103 - v15);
  v108 = sub_1CF9E5CF8();
  v16 = *(v108 - 1);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v108);
  v106 = (&v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v103 - v20;
  v115[2] = a3;
  v115[3] = a4;
  v104 = a5;
  v115[4] = a5;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v22 = type metadata accessor for ItemMetadata();
  v23 = a2[v22[10]];
  v111 = a3;

  v112 = a4;
  sub_1CF1AE1DC(a4, &v120);
  sub_1CF1ADED4(v23, &v124);
  sub_1CF1ADEF4(a2[v22[13]], &v124);
  if (*a2 > 1u)
  {
    if (*a2 == 2)
    {
      LODWORD(v124) = 4;
      v25 = 0;
    }

    else
    {
      LODWORD(v124) = 1;
      v25 = 1;
    }

    sub_1CF1ADF14(v25, &v124);
  }

  else if (*a2)
  {
    LODWORD(v124) = 2;
  }

  else
  {
    if (a2[v22[28]])
    {
      v24 = 3;
    }

    else
    {
      v24 = 1;
    }

    LODWORD(v124) = v24;
  }

  v26 = v21;
  v27 = a2[v22[20]];
  sub_1CF1ADF34(a2[v22[20]], &v124);
  sub_1CF1ADF48(a2[v22[9]], &v124);
  v28 = a2[v22[21]];
  v29 = v108;
  if (v28)
  {
    sub_1CF1ADF68((a2[v22[12]] & 1) == 0, &v124);
    v30 = qword_1CF9FBDC0[v28 - 1];
  }

  else
  {
    sub_1CF1ADF68(0, &v124);
    v30 = 0;
  }

  *(&v136 + 1) = v30;
  v31 = a2[v22[23]];
  if (v31 == 6)
  {
    v32 = 0;
  }

  else
  {
    v32 = v31 + 1;
  }

  BYTE4(v137) = v32;
  *(&v131 + 1) = *&a2[v22[19]];
  sub_1CF1ADF88(a2[v22[11]], &v124);
  sub_1CF1ADFA8(a2[v22[15]], &v124);
  sub_1CF1ADFC8(a2[v22[16]], &v124);
  sub_1CF1ADFE8(a2[v22[29]], &v124);
  sub_1CF1AE008(a2[v22[36]], &v124);
  sub_1CF1AE028(a2[v22[18]], &v124);
  sub_1CF1AE048(a2[v22[24]], &v124);
  sub_1CF1AE068(a2[v22[25]], &v124);
  v33 = *(a1 + 208);
  v164 = *(a1 + 192);
  v165 = v33;
  v166 = *(a1 + 224);
  v167 = *(a1 + 240);
  v34 = *(a1 + 144);
  v160 = *(a1 + 128);
  v161 = v34;
  v35 = *(a1 + 176);
  v162 = *(a1 + 160);
  v163 = v35;
  v36 = *(a1 + 80);
  v156 = *(a1 + 64);
  v157 = v36;
  v37 = *(a1 + 112);
  v158 = *(a1 + 96);
  v159 = v37;
  v38 = *(a1 + 16);
  v153[0] = *a1;
  v153[1] = v38;
  v39 = *(a1 + 48);
  v154 = *(a1 + 32);
  v155 = v39;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v153) != 1)
  {
    BYTE8(v135) = v154;
    BYTE9(v135) = BYTE2(v154);
  }

  if (v27)
  {
    LODWORD(v137) = a2[v22[22]];
  }

  if (*a2 != 1)
  {
    v40 = *&a2[v22[27]];
    *&v125 = *&a2[v22[26]];
    *&v132 = v40;
  }

  WORD4(v124) = *(a2 + 5);
  v41 = *(v16 + 16);
  v41(v26, &a2[v22[7]], v29);
  *(&v125 + 1) = sub_1CF1ADD60(v26);
  *&v126 = v42;
  v41(v26, &a2[v22[8]], v29);
  *(&v126 + 1) = sub_1CF1ADD60(v26);
  *&v127 = v43;
  v44 = &a2[v22[30]];
  v105 = v26;
  v45 = v107;
  sub_1CEFCCBDC(v44, v107, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  if ((*(v16 + 48))(v45, 1, v29) == 1)
  {
    sub_1CEFCCC44(v45, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  }

  else
  {
    v46 = *(v16 + 32);
    v103 = v22;
    v47 = v29;
    v48 = v106;
    v46(v106, v45, v47);
    v49 = v105;
    v41(v105, v48, v47);
    *(&v127 + 1) = sub_1CF1ADD60(v49);
    *&v128 = v50;
    sub_1CF1AE164(&v124);
    v51 = v47;
    v22 = v103;
    (*(v16 + 8))(v48, v51);
  }

  v52 = &a2[v22[32]];
  if (v52[8])
  {
    v53 = 0;
  }

  else
  {
    v53 = *v52;
  }

  *(&v128 + 1) = v53;
  if (a2[8])
  {
    v54 = &a2[v22[37]];
    if (v54[4])
    {
      v55 = 0;
      goto LABEL_35;
    }
  }

  else
  {
    v54 = a2 + 4;
  }

  v55 = *v54;
LABEL_35:
  DWORD2(v130) = v55;
  v56 = &a2[v22[35]];
  if (v56[8])
  {
    v57 = 0;
  }

  else
  {
    v57 = __ROR8__(*v56, 32);
  }

  *&v131 = v57;
  v58 = &a2[v22[38]];
  v59 = *(v58 + 1);
  v60 = MEMORY[0x1EEE9AC00](*v58);
  *(&v103 - 6) = &v124;
  *(&v103 - 5) = a1;
  v99 = a2;
  v100 = sub_1CF1AE1BC;
  v101 = v115;
  if (v61)
  {
    sub_1CF1ACD04(v60, v61, sub_1CF1AE45C);
    v62 = v112;
    goto LABEL_54;
  }

  *&v135 = 0;
  v63 = *(a1 + 208);
  v149 = *(a1 + 192);
  v150 = v63;
  v151 = *(a1 + 224);
  v152 = *(a1 + 240);
  v64 = *(a1 + 144);
  v145 = *(a1 + 128);
  v146 = v64;
  v65 = *(a1 + 176);
  v147 = *(a1 + 160);
  v148 = v65;
  v66 = *(a1 + 80);
  v141 = *(a1 + 64);
  v142 = v66;
  v67 = *(a1 + 112);
  v143 = *(a1 + 96);
  v144 = v67;
  v68 = *(a1 + 16);
  v138[0] = *a1;
  v138[1] = v68;
  v69 = *(a1 + 48);
  v139 = *(a1 + 32);
  v140 = v69;
  get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v138);
  v70 = MEMORY[0x1EEE9AC00](*(&v139 + 1));
  v99 = &v124;
  v100 = a2;
  v101 = sub_1CF1AE1BC;
  v102 = v115;
  if (v72 != 1 && v71)
  {
    sub_1CF1ACD04(v70, v71, sub_1CF1AE4A4);
    v62 = v112;
    goto LABEL_54;
  }

  *&v136 = 0;
  v73 = &a2[v22[14]];
  v74 = *(v73 + 1);
  if (v74)
  {
    *&v120 = *v73;
    *(&v120 + 1) = v74;
    *&v116 = 47;
    *(&v116 + 1) = 0xE100000000000000;
    v113 = 58;
    v114 = 0xE100000000000000;
    v101 = sub_1CEFE4E68();
    v102 = v101;
    v99 = MEMORY[0x1E69E6158];
    v100 = v101;
    v75 = sub_1CF9E7668();
    v77 = v76;
  }

  else
  {
    v75 = 0;
    v77 = 0;
  }

  v78 = MEMORY[0x1EEE9AC00](v75);
  v99 = &v124;
  v100 = a2;
  v101 = sub_1CF1AE1BC;
  v102 = v115;
  if (v77)
  {
    sub_1CF1ACD04(v78, v77, sub_1CF1AE4BC);

LABEL_53:
    v62 = v112;
    goto LABEL_54;
  }

  *(&v132 + 1) = 0;
  v79 = MEMORY[0x1EEE9AC00](v78);
  v99 = a2;
  v100 = v80;
  v101 = sub_1CF1AE1BC;
  v102 = v81;
  v82 = &a2[v22[34]];
  v83 = *(v82 + 1);
  if (v83 >> 60 != 15)
  {
    v87 = *v82;
    sub_1CEFF05F4(*v82, *(v82 + 1));
    sub_1CF1ADB60(v87, v83, sub_1CF1AE51C);
    sub_1CEFE48D8(v87, v83);
    goto LABEL_53;
  }

  v84 = MEMORY[0x1EEE9AC00](v79);
  v99 = &v124;
  v100 = a2;
  v101 = sub_1CF1AE1BC;
  v102 = v115;
  v85 = *&a2[v22[33]];
  if (v85)
  {
    v86 = v110;
    sub_1CF9BBCF4(sub_1CF1AE48C, (&v103 - 6), v85, v109);
    if (!v86)
    {
      v108 = &v103;
      v62 = v112;
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  v108 = &v103;
  *&v134 = 0;
  v90 = *&a2[v22[31]];
  if (v90)
  {
    v91 = swift_allocObject();
    *(v91 + 16) = 0;
    v92 = swift_allocObject();
    *(v92 + 16) = v91;
    *(v92 + 24) = v90;
    *&v118 = sub_1CF1AE580;
    *(&v118 + 1) = v92;
    *&v116 = MEMORY[0x1E69E9820];
    *(&v116 + 1) = 1107296256;
    *&v117 = sub_1CF1AD9FC;
    *(&v117 + 1) = &block_descriptor_40;
    v93 = _Block_copy(&v116);
    v106 = *(&v118 + 1);
    v94 = v111;

    v95 = v112;
    sub_1CF1AE1DC(v112, &v120);

    v107 = v91;

    fpfs_serialize_tags();
    _Block_release(v93);
    v106 = &v103;
    v120 = v168;
    v121 = v169;
    v122 = v170;
    v123 = v171;
    MEMORY[0x1EEE9AC00](v96);
    v99 = v94;
    v100 = &v124;
    v101 = v104;
    v97 = *(*v94 + 600);
    sub_1CF1AE1DC(v95, &v116);
    v97(&v120, sub_1CF1AE54C, &v103 - 6, MEMORY[0x1E69E7CA8] + 8);
    v116 = v120;
    v117 = v121;
    v118 = v122;
    v119 = v123;
    sub_1CEFCCC44(&v116, &unk_1EC4BF260, &unk_1CFA01B60);

    v62 = v112;
    sub_1CF1AE25C(v112);
  }

  else
  {
    v107 = &v103;
    v120 = v168;
    v121 = v169;
    v122 = v170;
    v123 = v171;
    MEMORY[0x1EEE9AC00](v84);
    v62 = v112;
    v99 = v111;
    v100 = &v124;
    v101 = v104;
    v98 = *(*v111 + 600);
    sub_1CF1AE1DC(v112, &v116);

    sub_1CF1AE1DC(v62, &v116);
    v98(&v120, sub_1CF1AE2D4, &v103 - 6, MEMORY[0x1E69E7CA8] + 8);
    v116 = v120;
    v117 = v121;
    v118 = v122;
    v119 = v123;
    sub_1CEFCCC44(&v116, &unk_1EC4BF260, &unk_1CFA01B60);

    sub_1CF1AE25C(v62);
  }

LABEL_54:
  fpfs_free_metadata_tag_data();

  sub_1CF1AE25C(v62);

  result = sub_1CF1AE25C(v62);
  v89 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF1AAA14@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t (*a6)(uint64_t a1)@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, void *a10)
{
  v122 = a9;
  LODWORD(v126) = a8;
  v188 = *MEMORY[0x1E69E9840];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v119 = &v113[-v19];
  v20 = sub_1CF9E5CF8();
  v120 = *(v20 - 8);
  v121 = v20;
  v21 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v117 = &v113[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v118 = &v113[-v24];
  v130[2] = a3;
  v130[3] = a4;
  v115 = a5;
  v116 = a10;
  v130[4] = a5;
  v130[5] = a6;
  v114 = a7;
  v131 = a7;
  v132 = v126;
  v133 = a10;
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  v25 = type metadata accessor for ItemMetadata();
  v26 = a2[v25[10]];
  v127 = a3;

  v124 = a4;
  sub_1CEFCCBDC(a4, &v140, &unk_1EC4BF260, &unk_1CFA01B60);
  v125 = a6;

  sub_1CF1ADED4(v26, &v144);
  sub_1CF1ADEF4(a2[v25[13]], &v144);
  if (*a2 > 1u)
  {
    if (*a2 == 2)
    {
      LODWORD(v144) = 4;
      v28 = 0;
    }

    else
    {
      LODWORD(v144) = 1;
      v28 = 1;
    }

    sub_1CF1ADF14(v28, &v144);
  }

  else if (*a2)
  {
    LODWORD(v144) = 2;
  }

  else
  {
    if (a2[v25[28]])
    {
      v27 = 3;
    }

    else
    {
      v27 = 1;
    }

    LODWORD(v144) = v27;
  }

  v30 = v120;
  v29 = v121;
  v31 = v118;
  v32 = a2[v25[20]];
  sub_1CF1ADF34(a2[v25[20]], &v144);
  sub_1CF1ADF48(a2[v25[9]], &v144);
  v33 = a2[v25[21]];
  if (v33)
  {
    sub_1CF1ADF68((a2[v25[12]] & 1) == 0, &v144);
    v34 = qword_1CF9FBDC0[v33 - 1];
  }

  else
  {
    sub_1CF1ADF68(0, &v144);
    v34 = 0;
  }

  *(&v156 + 1) = v34;
  v35 = a2[v25[23]];
  if (v35 == 6)
  {
    v36 = 0;
  }

  else
  {
    v36 = v35 + 1;
  }

  BYTE4(v157) = v36;
  *(&v151 + 1) = *&a2[v25[19]];
  sub_1CF1ADF88(a2[v25[11]], &v144);
  sub_1CF1ADFA8(a2[v25[15]], &v144);
  sub_1CF1ADFC8(a2[v25[16]], &v144);
  sub_1CF1ADFE8(a2[v25[29]], &v144);
  sub_1CF1AE008(a2[v25[36]], &v144);
  sub_1CF1AE028(a2[v25[18]], &v144);
  sub_1CF1AE048(a2[v25[24]], &v144);
  sub_1CF1AE068(a2[v25[25]], &v144);
  v37 = *(a1 + 208);
  v184 = *(a1 + 192);
  v185 = v37;
  v186 = *(a1 + 224);
  v187 = *(a1 + 240);
  v38 = *(a1 + 144);
  v180 = *(a1 + 128);
  v181 = v38;
  v39 = *(a1 + 176);
  v182 = *(a1 + 160);
  v183 = v39;
  v40 = *(a1 + 80);
  v176 = *(a1 + 64);
  v177 = v40;
  v41 = *(a1 + 112);
  v178 = *(a1 + 96);
  v179 = v41;
  v42 = *(a1 + 16);
  v173[0] = *a1;
  v173[1] = v42;
  v43 = *(a1 + 48);
  v174 = *(a1 + 32);
  v175 = v43;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v173) != 1)
  {
    BYTE8(v155) = v174;
    BYTE9(v155) = BYTE2(v174);
  }

  if (v32)
  {
    LODWORD(v157) = a2[v25[22]];
  }

  if (*a2 != 1)
  {
    v44 = *&a2[v25[27]];
    *&v145 = *&a2[v25[26]];
    *&v152 = v44;
  }

  WORD4(v144) = *(a2 + 5);
  v45 = *(v30 + 16);
  (v45)(v31, &a2[v25[7]], v29);
  *(&v145 + 1) = sub_1CF1ADD60(v31);
  *&v146 = v46;
  v47 = &a2[v25[8]];
  v121 = v45;
  (v45)(v31, v47, v29);
  *(&v146 + 1) = sub_1CF1ADD60(v31);
  *&v147 = v48;
  v49 = v119;
  sub_1CEFCCBDC(&a2[v25[30]], v119, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  if ((*(v30 + 48))(v49, 1, v29) == 1)
  {
    sub_1CEFCCC44(v49, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  }

  else
  {
    v50 = *(v30 + 32);
    v120 = v25;
    v51 = v30;
    v52 = v117;
    v50(v117, v49, v29);
    (v121)(v31, v52, v29);
    *(&v147 + 1) = sub_1CF1ADD60(v31);
    *&v148 = v53;
    sub_1CF1AE164(&v144);
    (*(v51 + 8))(v52, v29);
    v25 = v120;
  }

  v54 = &a2[v25[32]];
  if (v54[8])
  {
    v55 = 0;
  }

  else
  {
    v55 = *v54;
  }

  *(&v148 + 1) = v55;
  if (a2[8])
  {
    v56 = &a2[v25[37]];
    if (v56[4])
    {
      v57 = 0;
      goto LABEL_35;
    }
  }

  else
  {
    v56 = a2 + 4;
  }

  v57 = *v56;
LABEL_35:
  DWORD2(v150) = v57;
  v58 = &a2[v25[35]];
  if (v58[8])
  {
    v59 = 0;
  }

  else
  {
    v59 = __ROR8__(*v58, 32);
  }

  *&v151 = v59;
  v60 = &a2[v25[38]];
  v61 = *(v60 + 1);
  MEMORY[0x1EEE9AC00](*v60);
  *&v113[-48] = &v144;
  *&v113[-40] = a1;
  v109 = a2;
  v110 = sub_1CF1ADEA8;
  v111 = v130;
  if (v63)
  {
    sub_1CF1ACD04(v62, v63, sub_1CF1AE088);
    v64 = v124;
    goto LABEL_54;
  }

  *&v155 = 0;
  v65 = *(a1 + 208);
  v169 = *(a1 + 192);
  v170 = v65;
  v171 = *(a1 + 224);
  v172 = *(a1 + 240);
  v66 = *(a1 + 144);
  v165 = *(a1 + 128);
  v166 = v66;
  v67 = *(a1 + 176);
  v167 = *(a1 + 160);
  v168 = v67;
  v68 = *(a1 + 80);
  v161 = *(a1 + 64);
  v162 = v68;
  v69 = *(a1 + 112);
  v163 = *(a1 + 96);
  v164 = v69;
  v70 = *(a1 + 16);
  v158[0] = *a1;
  v158[1] = v70;
  v71 = *(a1 + 48);
  v159 = *(a1 + 32);
  v160 = v71;
  get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v158);
  MEMORY[0x1EEE9AC00](*(&v159 + 1));
  v109 = &v144;
  v110 = a2;
  v111 = sub_1CF1ADEA8;
  v112 = v130;
  if (v74 != 1 && v73)
  {
    sub_1CF1ACD04(v72, v73, sub_1CF1AE0A0);
    v64 = v124;
    goto LABEL_54;
  }

  *&v156 = 0;
  v75 = &a2[v25[14]];
  v76 = *(v75 + 1);
  if (v76)
  {
    *&v140 = *v75;
    *(&v140 + 1) = v76;
    v134 = 47;
    v135 = 0xE100000000000000;
    v128 = 58;
    v129 = 0xE100000000000000;
    v111 = sub_1CEFE4E68();
    v112 = v111;
    v109 = MEMORY[0x1E69E6158];
    v110 = v111;
    v77 = sub_1CF9E7668();
    v79 = v78;
  }

  else
  {
    v77 = 0;
    v79 = 0;
  }

  MEMORY[0x1EEE9AC00](v77);
  v109 = &v144;
  v110 = a2;
  v111 = sub_1CF1ADEA8;
  v112 = v130;
  if (v79)
  {
    sub_1CF1ACD04(v80, v79, sub_1CF1AE0C0);

LABEL_53:
    v64 = v124;
    goto LABEL_54;
  }

  *(&v152 + 1) = 0;
  MEMORY[0x1EEE9AC00](v80);
  v109 = a2;
  v110 = v82;
  v111 = sub_1CF1ADEA8;
  v112 = v83;
  v84 = &a2[v25[34]];
  v85 = *(v84 + 1);
  if (v85 >> 60 != 15)
  {
    v89 = *v84;
    sub_1CEFF05F4(*v84, *(v84 + 1));
    sub_1CF1ADB60(v89, v85, sub_1CF1AE0E0);
    sub_1CEFE48D8(v89, v85);
    goto LABEL_53;
  }

  MEMORY[0x1EEE9AC00](v81);
  v109 = &v144;
  v110 = a2;
  v111 = sub_1CF1ADEA8;
  v112 = v130;
  v87 = *&a2[v25[33]];
  if (v87)
  {
    v88 = v123;
    sub_1CF9BBCF4(sub_1CF1AE0F8, &v113[-48], v87, v122);
    if (!v88)
    {
      v64 = v124;
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  v121 = v113;
  *&v154 = 0;
  v92 = *&a2[v25[31]];
  if (v92)
  {
    LODWORD(v120) = v126 & 1;
    LODWORD(v119) = v114 & 1;
    v93 = swift_allocObject();
    *(v93 + 16) = 0;
    v94 = swift_allocObject();
    *(v94 + 16) = v93;
    *(v94 + 24) = v92;
    v138 = sub_1CF1AE130;
    v139 = v94;
    v134 = MEMORY[0x1E69E9820];
    v135 = 1107296256;
    v136 = sub_1CF1AD9FC;
    v137 = &block_descriptor_9_0;
    v95 = _Block_copy(&v134);
    v117 = v139;
    v118 = v95;
    v96 = v127;

    v64 = v124;
    sub_1CEFCCBDC(v124, &v140, &unk_1EC4BF260, &unk_1CFA01B60);
    v97 = v125;

    v126 = v93;

    v98 = v118;
    fpfs_serialize_tags();
    _Block_release(v98);
    v99 = v64[1];
    v140 = *v64;
    v141 = v99;
    v100 = v64[3];
    v142 = v64[2];
    v143 = v100;
    v102 = MEMORY[0x1EEE9AC00](v101);
    *&v113[-48] = v96;
    *&v113[-40] = &v144;
    v109 = v115;
    v110 = v97;
    LOBYTE(v111) = v119;
    BYTE1(v111) = v120;
    v112 = v116;
    (*(*v96 + 600))(&v140, sub_1CF1AE444, v102);
  }

  else
  {
    v126 = v113;
    v64 = v124;
    v103 = v124[1];
    v140 = *v124;
    v141 = v103;
    v104 = v124[3];
    v142 = v124[2];
    v143 = v104;
    MEMORY[0x1EEE9AC00](v86);
    v105 = v127;
    *&v113[-48] = v127;
    *&v113[-40] = &v144;
    v109 = v115;
    v110 = v125;
    LOBYTE(v111) = v106;
    BYTE1(v111) = v107;
    v112 = v116;
    v120 = *v105 + 600;
    v108 = *v120;

    sub_1CEFCCBDC(v64, &v134, &unk_1EC4BF260, &unk_1CFA01B60);

    v108(&v140, sub_1CF1AE118, &v113[-64], MEMORY[0x1E69E7CA8] + 8);
  }

  sub_1CEFCCC44(v64, &unk_1EC4BF260, &unk_1CFA01B60);

LABEL_54:
  fpfs_free_metadata_tag_data();

  sub_1CEFCCC44(v64, &unk_1EC4BF260, &unk_1CFA01B60);

  sub_1CEFCCC44(v64, &unk_1EC4BF260, &unk_1CFA01B60);

  v91 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *sub_1CF1AB7D4(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v166 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v104 - v8;
  v10 = sub_1CF9E5CF8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v105 = v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v108 = v104 - v15;
  v104[3] = a3;
  v121[4] = a3;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v16 = type metadata accessor for ItemMetadata();
  sub_1CF1ADED4(a2[v16[10]], &v122);
  sub_1CF1ADEF4(a2[v16[13]], &v122);
  if (*a2 > 1u)
  {
    if (*a2 == 2)
    {
      LODWORD(v122) = 4;
      v18 = 0;
    }

    else
    {
      LODWORD(v122) = 1;
      v18 = 1;
    }

    sub_1CF1ADF14(v18, &v122);
  }

  else if (*a2)
  {
    LODWORD(v122) = 2;
  }

  else
  {
    if (a2[v16[28]])
    {
      v17 = 3;
    }

    else
    {
      v17 = 1;
    }

    LODWORD(v122) = v17;
  }

  v19 = a2[v16[20]];
  sub_1CF1ADF34(a2[v16[20]], &v122);
  sub_1CF1ADF48(a2[v16[9]], &v122);
  v20 = a2[v16[21]];
  if (v20)
  {
    sub_1CF1ADF68((a2[v16[12]] & 1) == 0, &v122);
    v21 = qword_1CF9FBDC0[v20 - 1];
  }

  else
  {
    sub_1CF1ADF68(0, &v122);
    v21 = 0;
  }

  *(&v134 + 1) = v21;
  v22 = a2[v16[23]];
  if (v22 == 6)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22 + 1;
  }

  BYTE4(v135) = v23;
  *(&v129 + 1) = *&a2[v16[19]];
  sub_1CF1ADF88(a2[v16[11]], &v122);
  sub_1CF1ADFA8(a2[v16[15]], &v122);
  sub_1CF1ADFC8(a2[v16[16]], &v122);
  sub_1CF1ADFE8(a2[v16[29]], &v122);
  sub_1CF1AE008(a2[v16[36]], &v122);
  sub_1CF1AE028(a2[v16[18]], &v122);
  sub_1CF1AE048(a2[v16[24]], &v122);
  sub_1CF1AE068(a2[v16[25]], &v122);
  v24 = *(a1 + 208);
  v162 = *(a1 + 192);
  v163 = v24;
  v164 = *(a1 + 224);
  v165 = *(a1 + 240);
  v25 = *(a1 + 144);
  v158 = *(a1 + 128);
  v159 = v25;
  v26 = *(a1 + 176);
  v160 = *(a1 + 160);
  v161 = v26;
  v27 = *(a1 + 80);
  v154 = *(a1 + 64);
  v155 = v27;
  v28 = *(a1 + 112);
  v156 = *(a1 + 96);
  v157 = v28;
  v29 = *(a1 + 16);
  v151[0] = *a1;
  v151[1] = v29;
  v30 = *(a1 + 48);
  v152 = *(a1 + 32);
  v153 = v30;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v151) != 1)
  {
    BYTE8(v133) = v152;
    BYTE9(v133) = BYTE2(v152);
  }

  if (v19)
  {
    LODWORD(v135) = a2[v16[22]];
  }

  v106 = a1;
  if (*a2 != 1)
  {
    v31 = *&a2[v16[27]];
    *&v123 = *&a2[v16[26]];
    *&v130 = v31;
  }

  WORD4(v122) = *(a2 + 5);
  v32 = v16[7];
  v33 = v11;
  v34 = v16;
  v35 = *(v11 + 16);
  v36 = v108;
  v35(v108, &a2[v32], v10);
  *(&v123 + 1) = sub_1CF1ADD60(v36);
  *&v124 = v37;
  v35(v36, &a2[v34[8]], v10);
  *(&v124 + 1) = sub_1CF1ADD60(v36);
  *&v125 = v38;
  v110 = v34;
  v39 = v34[30];
  v107 = a2;
  sub_1CEFCCBDC(&a2[v39], v9, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v40 = v33;
  v42 = *(v33 + 48);
  v41 = (v33 + 48);
  if (v42(v9, 1, v10) == 1)
  {
    sub_1CEFCCC44(v9, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  }

  else
  {
    v43 = v40;
    v44 = *(v40 + 32);
    v45 = v105;
    v44(v105, v9, v10);
    v35(v36, v45, v10);
    *(&v125 + 1) = sub_1CF1ADD60(v36);
    *&v126 = v46;
    sub_1CF1AE164(&v122);
    (*(v43 + 8))(v45, v10);
  }

  v47 = v110;
  v48 = v107;
  v49 = &v107[v110[32]];
  if (v49[8])
  {
    v50 = 0;
  }

  else
  {
    v50 = *v49;
  }

  *(&v126 + 1) = v50;
  if (v107[8])
  {
    v51 = &v107[v110[37]];
    if (v51[4])
    {
      v52 = 0;
      goto LABEL_35;
    }
  }

  else
  {
    v51 = v107 + 4;
  }

  v52 = *v51;
LABEL_35:
  DWORD2(v128) = v52;
  v53 = &v107[v110[35]];
  if (v53[8])
  {
    v54 = 0;
  }

  else
  {
    v54 = __ROR8__(*v53, 32);
  }

  *&v129 = v54;
  v55 = &v107[v110[38]];
  v56 = *(v55 + 1);
  v57 = MEMORY[0x1EEE9AC00](*v55);
  *&v104[-12] = &v122;
  *&v104[-10] = v59;
  v100 = v48;
  v101 = sub_1CF1AE2F4;
  v102 = v121;
  if (v58)
  {
    v60 = v109;
    v61 = sub_1CF9BB390(v57, v58, sub_1CF1AE310);
    if (!v60)
    {
      v41 = v61;
    }
  }

  else
  {
    *&v133 = 0;
    v62 = *(v59 + 208);
    v147 = *(v59 + 192);
    v148 = v62;
    v149 = *(v59 + 224);
    v150 = *(v59 + 240);
    v63 = *(v59 + 144);
    v143 = *(v59 + 128);
    v144 = v63;
    v64 = *(v59 + 176);
    v145 = *(v59 + 160);
    v146 = v64;
    v65 = *(v59 + 80);
    v139 = *(v59 + 64);
    v140 = v65;
    v66 = *(v59 + 112);
    v141 = *(v59 + 96);
    v142 = v66;
    v67 = *(v59 + 16);
    v136[0] = *v59;
    v136[1] = v67;
    v68 = *(v59 + 48);
    v137 = *(v59 + 32);
    v138 = v68;
    get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v136);
    v69 = MEMORY[0x1EEE9AC00](*(&v137 + 1));
    v100 = &v122;
    v101 = v48;
    v102 = sub_1CF1AE2F4;
    v103 = v121;
    if (v71 == 1 || !v70)
    {
      *&v134 = 0;
      v74 = (v48 + v47[14]);
      v75 = v74[1];
      if (v75)
      {
        v115 = *v74;
        v116 = v75;
        v113 = 47;
        v114 = 0xE100000000000000;
        v111 = 58;
        v112 = 0xE100000000000000;
        v102 = sub_1CEFE4E68();
        v103 = v102;
        v100 = MEMORY[0x1E69E6158];
        v101 = v102;
        v41 = &v115;
        v76 = sub_1CF9E7668();
        v78 = v77;
      }

      else
      {
        v76 = 0;
        v78 = 0;
      }

      v79 = MEMORY[0x1EEE9AC00](v76);
      v100 = &v122;
      v101 = v48;
      v102 = sub_1CF1AE2F4;
      v103 = v121;
      if (v78)
      {
        v80 = v109;
        v81 = sub_1CF9BB390(v79, v78, sub_1CF1AE348);
        if (!v80)
        {
          v41 = v81;
        }
      }

      else
      {
        *(&v130 + 1) = 0;
        v82 = MEMORY[0x1EEE9AC00](v79);
        v41 = &v104[-12];
        v100 = v48;
        v101 = v83;
        v102 = sub_1CF1AE2F4;
        v103 = v84;
        v85 = v48 + v110[34];
        v86 = *(v85 + 1);
        if (v86 >> 60 == 15)
        {
          MEMORY[0x1EEE9AC00](v82);
          v100 = &v122;
          v101 = v48;
          v102 = sub_1CF1AE2F4;
          v103 = v121;
          v88 = *(v48 + *(v87 + 132));
          if (v88)
          {
            v89 = v109;
            v90 = sub_1CF9BC414(sub_1CF1AE380, &v104[-12], v88);
            if (!v89)
            {
              v41 = v90;
            }
          }

          else
          {
            *&v132 = 0;
            v94 = *(v48 + *(v87 + 124));
            if (v94)
            {
              v95 = swift_allocObject();
              *(v95 + 16) = 0;
              v96 = swift_allocObject();
              *(v96 + 16) = v95;
              *(v96 + 24) = v94;
              v119 = sub_1CF1AE580;
              v120 = v96;
              v115 = MEMORY[0x1E69E9820];
              v116 = 1107296256;
              v117 = sub_1CF1AD9FC;
              v118 = &block_descriptor_49;
              v97 = _Block_copy(&v115);

              fpfs_serialize_tags();
              _Block_release(v97);
              v41 = fpfs_set_dataless_cmpfs_attrs();
            }

            else
            {
              v41 = fpfs_set_dataless_cmpfs_attrs();
            }
          }
        }

        else
        {
          v91 = *v85;
          sub_1CEFF05F4(*v85, *(v85 + 1));
          v92 = v109;
          v93 = sub_1CF9B86B0(v91, v86, sub_1CF1AE368);
          if (v92)
          {
            sub_1CEFE48D8(v91, v86);
          }

          else
          {
            v41 = v93;
            sub_1CEFE48D8(v91, v86);
          }
        }
      }
    }

    else
    {
      v72 = v109;
      v73 = sub_1CF9BB390(v69, v70, sub_1CF1AE328);
      if (!v72)
      {
        v41 = v73;
      }
    }
  }

  fpfs_free_metadata_tag_data();
  v98 = *MEMORY[0x1E69E9840];
  return v41;
}

uint64_t *sub_1CF1AC258(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v166 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v104 - v8;
  v10 = sub_1CF9E5CF8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v105 = v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v108 = v104 - v15;
  v104[3] = a3;
  v121[4] = a3;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v16 = type metadata accessor for ItemMetadata();
  sub_1CF1ADED4(a2[v16[10]], &v122);
  sub_1CF1ADEF4(a2[v16[13]], &v122);
  if (*a2 > 1u)
  {
    if (*a2 == 2)
    {
      LODWORD(v122) = 4;
      v18 = 0;
    }

    else
    {
      LODWORD(v122) = 1;
      v18 = 1;
    }

    sub_1CF1ADF14(v18, &v122);
  }

  else if (*a2)
  {
    LODWORD(v122) = 2;
  }

  else
  {
    if (a2[v16[28]])
    {
      v17 = 3;
    }

    else
    {
      v17 = 1;
    }

    LODWORD(v122) = v17;
  }

  v19 = a2[v16[20]];
  sub_1CF1ADF34(a2[v16[20]], &v122);
  sub_1CF1ADF48(a2[v16[9]], &v122);
  v20 = a2[v16[21]];
  if (v20)
  {
    sub_1CF1ADF68((a2[v16[12]] & 1) == 0, &v122);
    v21 = qword_1CF9FBDC0[v20 - 1];
  }

  else
  {
    sub_1CF1ADF68(0, &v122);
    v21 = 0;
  }

  *(&v134 + 1) = v21;
  v22 = a2[v16[23]];
  if (v22 == 6)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22 + 1;
  }

  BYTE4(v135) = v23;
  *(&v129 + 1) = *&a2[v16[19]];
  sub_1CF1ADF88(a2[v16[11]], &v122);
  sub_1CF1ADFA8(a2[v16[15]], &v122);
  sub_1CF1ADFC8(a2[v16[16]], &v122);
  sub_1CF1ADFE8(a2[v16[29]], &v122);
  sub_1CF1AE008(a2[v16[36]], &v122);
  sub_1CF1AE028(a2[v16[18]], &v122);
  sub_1CF1AE048(a2[v16[24]], &v122);
  sub_1CF1AE068(a2[v16[25]], &v122);
  v24 = *(a1 + 208);
  v162 = *(a1 + 192);
  v163 = v24;
  v164 = *(a1 + 224);
  v165 = *(a1 + 240);
  v25 = *(a1 + 144);
  v158 = *(a1 + 128);
  v159 = v25;
  v26 = *(a1 + 176);
  v160 = *(a1 + 160);
  v161 = v26;
  v27 = *(a1 + 80);
  v154 = *(a1 + 64);
  v155 = v27;
  v28 = *(a1 + 112);
  v156 = *(a1 + 96);
  v157 = v28;
  v29 = *(a1 + 16);
  v151[0] = *a1;
  v151[1] = v29;
  v30 = *(a1 + 48);
  v152 = *(a1 + 32);
  v153 = v30;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v151) != 1)
  {
    BYTE8(v133) = v152;
    BYTE9(v133) = BYTE2(v152);
  }

  if (v19)
  {
    LODWORD(v135) = a2[v16[22]];
  }

  v106 = a1;
  if (*a2 != 1)
  {
    v31 = *&a2[v16[27]];
    *&v123 = *&a2[v16[26]];
    *&v130 = v31;
  }

  WORD4(v122) = *(a2 + 5);
  v32 = v16[7];
  v33 = v11;
  v34 = v16;
  v35 = *(v11 + 16);
  v36 = v108;
  v35(v108, &a2[v32], v10);
  *(&v123 + 1) = sub_1CF1ADD60(v36);
  *&v124 = v37;
  v35(v36, &a2[v34[8]], v10);
  *(&v124 + 1) = sub_1CF1ADD60(v36);
  *&v125 = v38;
  v110 = v34;
  v39 = v34[30];
  v107 = a2;
  sub_1CEFCCBDC(&a2[v39], v9, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v40 = v33;
  v42 = *(v33 + 48);
  v41 = (v33 + 48);
  if (v42(v9, 1, v10) == 1)
  {
    sub_1CEFCCC44(v9, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  }

  else
  {
    v43 = v40;
    v44 = *(v40 + 32);
    v45 = v105;
    v44(v105, v9, v10);
    v35(v36, v45, v10);
    *(&v125 + 1) = sub_1CF1ADD60(v36);
    *&v126 = v46;
    sub_1CF1AE164(&v122);
    (*(v43 + 8))(v45, v10);
  }

  v47 = v110;
  v48 = v107;
  v49 = &v107[v110[32]];
  if (v49[8])
  {
    v50 = 0;
  }

  else
  {
    v50 = *v49;
  }

  *(&v126 + 1) = v50;
  if (v107[8])
  {
    v51 = &v107[v110[37]];
    if (v51[4])
    {
      v52 = 0;
      goto LABEL_35;
    }
  }

  else
  {
    v51 = v107 + 4;
  }

  v52 = *v51;
LABEL_35:
  DWORD2(v128) = v52;
  v53 = &v107[v110[35]];
  if (v53[8])
  {
    v54 = 0;
  }

  else
  {
    v54 = __ROR8__(*v53, 32);
  }

  *&v129 = v54;
  v55 = &v107[v110[38]];
  v56 = *(v55 + 1);
  MEMORY[0x1EEE9AC00](*v55);
  *&v104[-12] = &v122;
  *&v104[-10] = v59;
  v100 = v48;
  v101 = sub_1CF1AE2F4;
  v102 = v121;
  if (v58)
  {
    v60 = v109;
    v61 = sub_1CF9BB390(v57, v58, sub_1CF1AE474);
    if (!v60)
    {
      v41 = v61;
    }
  }

  else
  {
    *&v133 = 0;
    v62 = *(v59 + 208);
    v147 = *(v59 + 192);
    v148 = v62;
    v149 = *(v59 + 224);
    v150 = *(v59 + 240);
    v63 = *(v59 + 144);
    v143 = *(v59 + 128);
    v144 = v63;
    v64 = *(v59 + 176);
    v145 = *(v59 + 160);
    v146 = v64;
    v65 = *(v59 + 80);
    v139 = *(v59 + 64);
    v140 = v65;
    v66 = *(v59 + 112);
    v141 = *(v59 + 96);
    v142 = v66;
    v67 = *(v59 + 16);
    v136[0] = *v59;
    v136[1] = v67;
    v68 = *(v59 + 48);
    v137 = *(v59 + 32);
    v138 = v68;
    get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v136);
    MEMORY[0x1EEE9AC00](*(&v137 + 1));
    v100 = &v122;
    v101 = v48;
    v102 = sub_1CF1AE2F4;
    v103 = v121;
    if (v71 == 1 || !v70)
    {
      *&v134 = 0;
      v74 = (v48 + v47[14]);
      v75 = v74[1];
      if (v75)
      {
        v115 = *v74;
        v116 = v75;
        v113 = 47;
        v114 = 0xE100000000000000;
        v111 = 58;
        v112 = 0xE100000000000000;
        v102 = sub_1CEFE4E68();
        v103 = v102;
        v100 = MEMORY[0x1E69E6158];
        v101 = v102;
        v41 = &v115;
        v76 = sub_1CF9E7668();
        v78 = v77;
      }

      else
      {
        v76 = 0;
        v78 = 0;
      }

      MEMORY[0x1EEE9AC00](v76);
      v100 = &v122;
      v101 = v48;
      v102 = sub_1CF1AE2F4;
      v103 = v121;
      if (v78)
      {
        v80 = v109;
        v81 = sub_1CF9BB390(v79, v78, sub_1CF1AE4EC);
        if (!v80)
        {
          v41 = v81;
        }
      }

      else
      {
        *(&v130 + 1) = 0;
        MEMORY[0x1EEE9AC00](v79);
        v41 = &v104[-12];
        v100 = v48;
        v101 = v83;
        v102 = sub_1CF1AE2F4;
        v103 = v84;
        v85 = v48 + v110[34];
        v86 = *(v85 + 1);
        if (v86 >> 60 == 15)
        {
          MEMORY[0x1EEE9AC00](v82);
          v100 = &v122;
          v101 = v48;
          v102 = sub_1CF1AE2F4;
          v103 = v121;
          v88 = *(v48 + *(v87 + 132));
          if (v88)
          {
            v89 = v109;
            v90 = sub_1CF9BC414(sub_1CF1AE504, &v104[-12], v88);
            if (!v89)
            {
              v41 = v90;
            }
          }

          else
          {
            *&v132 = 0;
            v94 = *(v48 + *(v87 + 124));
            if (v94)
            {
              v95 = swift_allocObject();
              *(v95 + 16) = 0;
              v96 = swift_allocObject();
              *(v96 + 16) = v95;
              *(v96 + 24) = v94;
              v119 = sub_1CF1AE580;
              v120 = v96;
              v115 = MEMORY[0x1E69E9820];
              v116 = 1107296256;
              v117 = sub_1CF1AD9FC;
              v118 = &block_descriptor_62;
              v97 = _Block_copy(&v115);

              fpfs_serialize_tags();
              _Block_release(v97);
              v41 = fpfs_set_dataless_cmpfs_attrs();
            }

            else
            {
              v41 = fpfs_set_dataless_cmpfs_attrs();
            }
          }
        }

        else
        {
          v91 = *v85;
          sub_1CEFF05F4(*v85, *(v85 + 1));
          v92 = v109;
          v93 = sub_1CF9B86B0(v91, v86, sub_1CF1AE534);
          if (v92)
          {
            sub_1CEFE48D8(v91, v86);
          }

          else
          {
            v41 = v93;
            sub_1CEFE48D8(v91, v86);
          }
        }
      }
    }

    else
    {
      v72 = v109;
      v73 = sub_1CF9BB390(v69, v70, sub_1CF1AE4D4);
      if (!v72)
      {
        v41 = v73;
      }
    }
  }

  fpfs_free_metadata_tag_data();
  v98 = *MEMORY[0x1E69E9840];
  return v41;
}

uint64_t sub_1CF1ACD04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_1CF9E7938();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5[0] = a1;
    v5[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v3 = v5;
    return a3(v3);
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
    return sub_1CF9E7938();
  }

  v3 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return a3(v3);
}

void *sub_1CF1ACD90(uint64_t a1, int a2)
{
  v82 = a2;
  v91 = *MEMORY[0x1E69E9840];
  v80 = sub_1CF9E6938();
  v3 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = 0x80000001CFA2DDF0;
  v79 = (v4 + 8);

  v83 = 0;
  v84 = 0x80000001CFA2DDF0;
  v11 = 0;
LABEL_4:
  if (v8)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_99;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(a1 + 64 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
LABEL_9:
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v14 = v13 | (v11 << 6);
      v15 = (*(a1 + 48) + 16 * v14);
      v17 = *v15;
      v16 = v15[1];
      if (*v15 != 0xD000000000000015 || v10 != v16)
      {
        v19 = (*(a1 + 56) + 16 * v14);
        v21 = *v19;
        v20 = v19[1];
        v22 = sub_1CF9E8048();
        v10 = v84;
        if ((v22 & 1) == 0)
        {
          aBlock = v17;
          v86 = v16;

          v78 = v21;
          sub_1CEFE42D4(v21, v20);
          sub_1CF9E6918();
          sub_1CEFE4E68();
          v77 = sub_1CF9E7648();
          (*v79)(v81, v80);
          v76 = v20;
          v23 = v20 >> 62;
          if ((v20 >> 62) <= 1)
          {
            v24 = v77;
            if (!v23)
            {
              v25 = BYTE6(v76);
              goto LABEL_24;
            }

            LODWORD(v25) = HIDWORD(v78) - v78;
            if (!__OFSUB__(HIDWORD(v78), v78))
            {
              v25 = v25;
              goto LABEL_24;
            }

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
            goto LABEL_113;
          }

          v24 = v77;
          if (v23 != 2)
          {
            v25 = 0;
            goto LABEL_24;
          }

          v27 = *(v78 + 16);
          v26 = *(v78 + 24);
          v28 = __OFSUB__(v26, v27);
          v25 = v26 - v27;
          if (v28)
          {
            goto LABEL_107;
          }

LABEL_24:
          v28 = __OFADD__(v25, 24);
          v29 = v25 + 24;
          if (v28)
          {
            goto LABEL_100;
          }

          v28 = __OFADD__(v29, v24);
          v30 = v29 + v24;
          if (v28)
          {
            goto LABEL_101;
          }

          if (__OFADD__(v30, 1))
          {
            goto LABEL_102;
          }

          v31 = swift_slowAlloc();
          v32 = v31;
          v33 = (v31 + 24);
          v75 = v31;
          if (v23 > 1)
          {
            v34 = v78;
            if (v23 == 2)
            {
              v38 = *(v78 + 16);
              v37 = *(v78 + 24);
              v28 = __OFSUB__(v37, v38);
              v36 = v37 - v38;
              v35 = v77;
              if (v28)
              {
                goto LABEL_110;
              }

              goto LABEL_36;
            }

            v40 = 0;
            v35 = v77;
            *(v31 + 16) = 0;
            goto LABEL_88;
          }

          v34 = v78;
          if (!v23)
          {
            v35 = v77;
            v36 = BYTE6(v76);
            goto LABEL_37;
          }

          LODWORD(v36) = HIDWORD(v78) - v78;
          if (__OFSUB__(HIDWORD(v78), v78))
          {
            goto LABEL_109;
          }

          v36 = v36;
          v35 = v77;
LABEL_36:
          if (v36 < 0)
          {
            goto LABEL_103;
          }

LABEL_37:
          if (!v36)
          {
            goto LABEL_47;
          }

          if (v23)
          {
            if (v23 == 2)
            {
              v39 = *(v34 + 16);
            }

            else
            {
              v39 = v34;
            }
          }

          else
          {
            v39 = 0;
          }

          v41 = v39 + v36;
          if (__OFADD__(v39, v36))
          {
            goto LABEL_105;
          }

          v42 = v36;
          if (v41 < v39)
          {
            goto LABEL_106;
          }

          if (v41 != v39)
          {
            v74 = (v31 + 24);
            if (v23 == 2)
            {
              if (v39 >= *(v34 + 16))
              {
                v72 = v39 + v36;
                v73 = v39;
                if (*(v34 + 24) < v41)
                {
                  goto LABEL_117;
                }

                v49 = sub_1CF9E5498();
                if (v49)
                {
                  v71 = v49;
                  v50 = sub_1CF9E54C8();
                  v51 = v73;
                  if (__OFSUB__(v73, v50))
                  {
                    goto LABEL_120;
                  }

                  v71 = &v73[v71 - v50];
                }

                else
                {
                  v71 = 0;
                  v51 = v73;
                }

                v73 = (v72 - v51);
                if (__OFSUB__(v72, v51))
                {
LABEL_118:
                  __break(1u);
                  goto LABEL_119;
                }

                v52 = sub_1CF9E54B8();
                v35 = v77;
                v34 = v78;
                v33 = v74;
                v32 = v75;
                if (v71)
                {
                  if (v52 >= v73)
                  {
                    v53 = v73;
                  }

                  else
                  {
                    v53 = v52;
                  }

                  v54 = v78;
                  memmove(v74, v71, v53);
                  v34 = v54;
                  v33 = v74;
                  v32 = v75;
                  v35 = v77;
                }

LABEL_86:
                v56 = *(v34 + 16);
                v55 = *(v34 + 24);
                v28 = __OFSUB__(v55, v56);
                v57 = v55 - v56;
                if (v28)
                {
                  goto LABEL_112;
                }

                v32[2] = v57;
                v59 = *(v34 + 16);
                v58 = *(v34 + 24);
                v40 = v58 - v59;
                if (!__OFSUB__(v58, v59))
                {
                  goto LABEL_88;
                }

LABEL_113:
                __break(1u);
                goto LABEL_114;
              }
            }

            else
            {
              if (v23 == 1)
              {
                v72 = v36;
                if (v34 >> 32 >= v41 && v39 >= v78 && v34 >> 32 >= v39 && v41 >= v78)
                {
                  v73 = v39;
                  v44 = sub_1CF9E5498();
                  if (!v44)
                  {
                    sub_1CF9E54B8();
                    v35 = v77;
                    v34 = v78;
                    v33 = v74;
                    v32 = v75;
LABEL_49:
                    v43 = HIDWORD(v34) - v34;
                    if (__OFSUB__(HIDWORD(v34), v34))
                    {
                      goto LABEL_111;
                    }

                    v40 = v43;
                    v32[2] = v43;
                    goto LABEL_88;
                  }

                  v71 = v44;
                  v45 = sub_1CF9E54C8();
                  if (!__OFSUB__(v73, v45))
                  {
                    v73 = &v73[v71 - v45];
                    v46 = sub_1CF9E54B8();
                    v33 = v74;
                    v35 = v77;
                    v34 = v78;
                    v32 = v75;
                    if (v73)
                    {
                      if (v46 >= v72)
                      {
                        v47 = v72;
                      }

                      else
                      {
                        v47 = v46;
                      }

                      v48 = v78;
                      memmove(v74, v73, v47);
                      v34 = v48;
                      v33 = v74;
                      v32 = v75;
                      v35 = v77;
                    }

                    goto LABEL_49;
                  }

LABEL_119:
                  __break(1u);
LABEL_120:
                  __break(1u);
                }

LABEL_116:
                __break(1u);
LABEL_117:
                __break(1u);
                goto LABEL_118;
              }

              v40 = BYTE6(v76);
              if (v39 <= BYTE6(v76) && v41 <= BYTE6(v76))
              {
                aBlock = v34;
                LODWORD(v86) = v76;
                WORD2(v86) = WORD2(v76);
                if (v36 >= 14)
                {
                  v42 = 14;
                }

                else if (v36 < 1)
                {
                  goto LABEL_77;
                }

                memcpy((v31 + 24), &aBlock + v39, v42);
                v33 = v74;
LABEL_77:
                v35 = v77;
                v75[2] = v40;
                goto LABEL_88;
              }

LABEL_114:
              __break(1u);
            }

            __break(1u);
            goto LABEL_116;
          }

LABEL_47:
          if (v23 == 2)
          {
            goto LABEL_86;
          }

          if (v23 == 1)
          {
            goto LABEL_49;
          }

          v40 = BYTE6(v76);
          *(v31 + 16) = BYTE6(v76);
LABEL_88:
          if (v35 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_104;
          }

          v60 = &v33[v40];
          v61 = sub_1CF9E6978();

          memcpy(v60, (v61 + 32), v35);

          v60[v35] = 0;
          v63 = v75;
          v62 = v76;
          *v75 = v83;
          v63[1] = v60;
          sub_1CEFE4714(v78, v62);
          v83 = v63;
          v10 = v84;
        }
      }

      goto LABEL_4;
    }
  }

  v64 = v83;
  if (!v83)
  {
    result = fpfs_delete_xattrs();
    goto LABEL_97;
  }

  v89 = sub_1CF189FC0;
  v90 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v86 = 1107296256;
  v87 = sub_1CF9B8AD8;
  v88 = &block_descriptor_65;
  v65 = _Block_copy(&aBlock);

  fpfs_set_syncable_xattrs();
  _Block_release(v65);
  if (swift_isEscapingClosureAtFileLocation())
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v66 = *v64;
  result = MEMORY[0x1D386CDC0](v64, -1, -1);
  if (v66)
  {
    result = v66;
    do
    {
      v68 = *result;
      MEMORY[0x1D386CDC0]();
      result = v68;
    }

    while (v68);
  }

LABEL_97:
  v69 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1CF1AD558@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t (*a3)(uint64_t)@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v16[2] = a2;
  v16[3] = a1;
  v16[4] = a3;
  v16[5] = a4;
  v9 = type metadata accessor for ItemMetadata();
  v10 = *(a1 + *(v9 + 132));
  if (v10)
  {
    return sub_1CF9BBCF4(sub_1CF1AE48C, v16, v10, a5);
  }

  *(a2 + 160) = 0;
  v12 = *(a1 + *(v9 + 124));
  if (!v12)
  {
    return a3(a2);
  }

  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  aBlock[4] = sub_1CF1AE580;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF1AD9FC;
  aBlock[3] = &block_descriptor_19;
  v15 = _Block_copy(aBlock);

  fpfs_serialize_tags();
  _Block_release(v15);
  a3(a2);
}

void *sub_1CF1AD70C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t (*a3)(uint64_t)@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v16[2] = a2;
  v16[3] = a1;
  v16[4] = a3;
  v16[5] = a4;
  v9 = type metadata accessor for ItemMetadata();
  v10 = *(a1 + *(v9 + 132));
  if (v10)
  {
    return sub_1CF9BBCF4(sub_1CF1AE19C, v16, v10, a5);
  }

  *(a2 + 160) = 0;
  v12 = *(a1 + *(v9 + 124));
  if (!v12)
  {
    return a3(a2);
  }

  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  aBlock[4] = sub_1CF1AE580;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF1AD9FC;
  aBlock[3] = &block_descriptor_27;
  v15 = _Block_copy(aBlock);

  fpfs_serialize_tags();
  _Block_release(v15);
  a3(a2);
}

uint64_t sub_1CF1AD8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  v7 = *(a2 + 16);
  v8 = *(a3 + 16);
  if (v7 >= v8)
  {
    return v7 < v8;
  }

  if (v7 < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = a3 + 32;
  v10 = (a3 + 32 + 24 * v7);
  v11 = *v10;
  v12 = v10[1];

  v13 = sub_1CF9E6888();

  if (!a1)
  {
LABEL_6:

    result = swift_beginAccess();
    v15 = *(a2 + 16);
    v16 = v15 + 1;
    if (!__OFADD__(v15, 1))
    {
      swift_beginAccess();
      *(a2 + 16) = v16;
      return v7 < v8;
    }

    goto LABEL_10;
  }

  *a1 = [v13 UTF8String];
  result = swift_beginAccess();
  v14 = *(a2 + 16);
  if (v14 < v8)
  {
    *(a1 + 8) = *(v9 + 24 * v14 + 16);
    goto LABEL_6;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1CF1AD9FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  LOBYTE(a2) = v4(a2);

  return a2 & 1;
}

uint64_t sub_1CF1ADA4C(uint64_t *a1, uint64_t a2)
{
  if (!a1)
  {
    return 1;
  }

  v3 = *a1;
  v4 = *(a1 + 8);
  result = swift_beginAccess();
  if (!*(a2 + 16))
  {
LABEL_12:
    swift_endAccess();
    return 1;
  }

  if (v3)
  {
    v6 = sub_1CF9E6A58();
    v8 = v7;
    if (v4 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v4;
    }

    v10 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1CF1F65BC(0, *(v10 + 2) + 1, 1, v10);
      *(a2 + 16) = v10;
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = sub_1CF1F65BC((v12 > 1), v13 + 1, 1, v10);
    }

    *(v10 + 2) = v13 + 1;
    v14 = &v10[24 * v13];
    *(v14 + 4) = v6;
    *(v14 + 5) = v8;
    v14[48] = v9;
    *(a2 + 16) = v10;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF1ADB60(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v9, 0, 14);
      v4 = v9;
      goto LABEL_9;
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
  }

  else
  {
    if (!v3)
    {
      v9[0] = a1;
      LOWORD(v9[1]) = a2;
      BYTE2(v9[1]) = BYTE2(a2);
      BYTE3(v9[1]) = BYTE3(a2);
      BYTE4(v9[1]) = BYTE4(a2);
      BYTE5(v9[1]) = BYTE5(a2);
      v4 = v9 + BYTE6(a2);
LABEL_9:
      result = a3(v9, v4, 0);
      goto LABEL_10;
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1CF1ADC9C(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
LABEL_10:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF1ADC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void))
{
  result = sub_1CF9E5498();
  v8 = result;
  if (result)
  {
    result = sub_1CF9E54C8();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_1CF9E54B8();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v8;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return a4(v8, v14, 0);
}

uint64_t sub_1CF1ADD60(uint64_t a1)
{
  sub_1CF9E5C98();
  v3 = v2;
  v4 = sub_1CF9E5CF8();
  result = (*(*(v4 - 8) + 8))(a1, v4);
  if (v3 >= 9.22337204e18)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v3 <= -9.22337204e18)
  {
    return 0x8000000000000000;
  }

  if (v3 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = (v3 - v3) * 1000000000.0;
  v7 = COERCE__INT64(fabs(v6)) > 0x7FEFFFFFFFFFFFFFLL;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v7)
  {
    goto LABEL_14;
  }

  if (v6 > -9.22337204e18)
  {
    if (v6 < 9.22337204e18)
    {
      return v3;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1CF1ADED4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 4) = *(a2 + 4) & 0xFFFFFFFB | v2;
  return result;
}

uint64_t sub_1CF1ADEF4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 4) = *(a2 + 4) & 0xFFFFFFF7 | v2;
  return result;
}

uint64_t sub_1CF1ADF14(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 4) = *(a2 + 4) & 0xFFFFFFFD | v2;
  return result;
}

uint64_t sub_1CF1ADF48(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 4) = *(a2 + 4) & 0xFFFFFFEF | v2;
  return result;
}

uint64_t sub_1CF1ADF68(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 4) = *(a2 + 4) & 0xFFFFFFDF | v2;
  return result;
}

uint64_t sub_1CF1ADF88(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = 128;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 4) = *(a2 + 4) & 0xFFFFFF7F | v2;
  return result;
}

uint64_t sub_1CF1ADFA8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 4) = *(a2 + 4) & 0xFFFFFEFF | v2;
  return result;
}

uint64_t sub_1CF1ADFC8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = 512;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 4) = *(a2 + 4) & 0xFFFFFDFF | v2;
  return result;
}

uint64_t sub_1CF1ADFE8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = 2048;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 4) = *(a2 + 4) & 0xFFFFF7FF | v2;
  return result;
}

uint64_t sub_1CF1AE008(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = 1024;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 4) = *(a2 + 4) & 0xFFFFFBFF | v2;
  return result;
}

uint64_t sub_1CF1AE028(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = 0x4000;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 4) = *(a2 + 4) & 0xFFFFBFFF | v2;
  return result;
}

uint64_t sub_1CF1AE048(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = 0x8000;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 4) = *(a2 + 4) & 0xFFFF7FFF | v2;
  return result;
}

uint64_t sub_1CF1AE068(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 4) = *(a2 + 4) & 0xFFFEFFFF | v2;
  return result;
}

uint64_t sub_1CF1AE174()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

__int128 *sub_1CF1AE2D4(__int128 *a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_1CF9CA564(a1, v1[2]);
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t FPDDomain.cleanupDomain(with:)(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v149 = a1;
  v156[3] = *MEMORY[0x1E69E9840];
  v5 = sub_1CF9E5A58();
  v150 = *(v5 - 8);
  v6 = *(v150 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v145 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v144 = &v134 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v141 = (&v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v140 = &v134 - v14;
  v15 = sub_1CF9E6118();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v134 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v134 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v143 = &v134 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v142 = &v134 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v134 - v31;
  v151 = v4;
  LODWORD(v4) = [v4 isUsingFPFS];
  v33 = fpfs_current_or_default_log();
  if (!v4)
  {
    sub_1CF9E6128();
    v40 = sub_1CF9E6108();
    v41 = sub_1CF9E72A8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1CEFC7000, v40, v41, "removing non FPFS domain not supported", v42, 2u);
      MEMORY[0x1D386CDC0](v42, -1, -1);
    }

    v44 = *(v16 + 8);
    v43 = (v16 + 8);
    v44(v26, v15);
    if (FPNotSupportedError())
    {
      swift_willThrow();
LABEL_50:
      v107 = *MEMORY[0x1E69E9840];
      return v43;
    }

    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v137 = v20;
  sub_1CF9E6128();
  v34 = sub_1CF9E6108();
  v26 = sub_1CF9E72C8();
  v35 = os_log_type_enabled(v34, v26);
  v138 = v15;
  v146 = v16;
  if (!v35)
  {

    v45 = *(v16 + 8);
    v45(v32, v15);
    goto LABEL_18;
  }

  v148 = v2;
  v36 = swift_slowAlloc();
  v37 = swift_slowAlloc();
  v156[0] = v37;
  *v36 = 136446210;
  if (v149 > 1)
  {
    if (v149 == 2)
    {
      v38 = 0xEF61746144726573;
      v39 = 0x5565766968637261;
      goto LABEL_17;
    }

    if (v149 == 3)
    {
      v38 = 0x80000001CFA2DE20;
      v39 = 0xD000000000000015;
      goto LABEL_17;
    }

LABEL_63:
    type metadata accessor for FPDomainRemovalMode(0);
    v152 = v149;
    sub_1CF9E80C8();
    __break(1u);
    goto LABEL_64;
  }

  if (v149)
  {
    if (v149 == 1)
    {
      v39 = 0xD000000000000010;
      v38 = 0x80000001CFA2DE40;
      goto LABEL_17;
    }

    goto LABEL_63;
  }

  v38 = 0xE90000000000006CLL;
  v39 = 0x6C4165766F6D6572;
LABEL_17:
  v46 = sub_1CEFD0DF0(v39, v38, v156);

  *(v36 + 4) = v46;
  _os_log_impl(&dword_1CEFC7000, v34, v26, "removing FPFS domain data with mode %{public}s", v36, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v37);
  MEMORY[0x1D386CDC0](v37, -1, -1);
  MEMORY[0x1D386CDC0](v36, -1, -1);

  v45 = *(v146 + 8);
  v15 = v138;
  v45(v32, v138);
  v3 = v148;
LABEL_18:
  v139 = [objc_allocWithZone(FPDDomainCleanupResult) init];
  v156[0] = 0;
  if ([v151 removeSupportFilesAndReturnError_])
  {
    v47 = v156[0];
    v147 = 0;
  }

  else
  {
    v48 = v156[0];
    v49 = sub_1CF9E57F8();

    swift_willThrow();
    v50 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v51 = v49;
    v52 = sub_1CF9E6108();
    v53 = sub_1CF9E72A8();
    v147 = v49;

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      swift_getErrorValue();
      v56 = Error.prettyDescription.getter(v153);
      *(v54 + 4) = v56;
      *v55 = v56;
      _os_log_impl(&dword_1CEFC7000, v52, v53, "support files could not be removed: %@", v54, 0xCu);
      sub_1CEFCCC44(v55, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v55, -1, -1);
      MEMORY[0x1D386CDC0](v54, -1, -1);
    }

    v45(v23, v15);
    v3 = 0;
  }

  v148 = v3;
  v57 = v151;
  v58 = [v151 providerDomainID];
  v59 = [v57 nsDomain];
  v60 = [v59 personaIdentifier];

  v136 = v45;
  if (v60)
  {
    v61 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v63 = v62;
  }

  else
  {
    v61 = 0;
    v63 = 0;
  }

  v64 = v150;
  v65 = [v57 volume];
  v66 = type metadata accessor for InternalPathsManager();
  v67 = objc_allocWithZone(v66);
  v68 = *(v64 + 56);
  v68(&v67[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_appSupportURL], 1, 1, v5);
  v68(&v67[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_wharfDirectoryURL], 1, 1, v5);
  v68(&v67[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbDirectoryURL], 1, 1, v5);
  v68(&v67[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbURL], 1, 1, v5);
  v68(&v67[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_temporaryDirectoryURL], 1, 1, v5);
  v68(&v67[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_stateDirectoryURL], 1, 1, v5);
  v68(&v67[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_diagnosticsDirectoryURL], 1, 1, v5);
  *&v67[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_providerDomainID] = v58;
  v69 = &v67[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_personaIdentifier];
  *v69 = v61;
  v69[1] = v63;
  *&v67[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_extensionManager] = 0;
  *&v67[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_volume] = v65;
  *&v67[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_rtcReporter] = 0;
  v155.receiver = v67;
  v155.super_class = v66;
  v43 = v151;
  v70 = objc_msgSendSuper2(&v155, sel_init);
  v156[0] = 0;
  v71 = [v43 mergeSyncRootsWithPathsManager:v70 error:v156];
  v26 = v156[0];
  if (!v71)
  {
    v77 = v156[0];
    sub_1CF9E57F8();

    swift_willThrow();
    goto LABEL_50;
  }

  v72 = v149;
  if (v149 <= 1)
  {
    v73 = v148;
    v74 = v136;
    if (!v149)
    {
      v75 = v156[0];
      [v43 removeEbihilSymlink];
      v156[0] = 0;
      if ([v43 removeAllFilesAndReturnError_])
      {
        v76 = v156[0];
        v43 = v139;
        if (!v147)
        {
LABEL_31:

          goto LABEL_50;
        }

LABEL_49:
        swift_willThrow();

        goto LABEL_50;
      }

      v135 = v70;
      v98 = v156[0];
      v81 = sub_1CF9E57F8();

      goto LABEL_43;
    }

    if (v149 == 1)
    {
      v82 = v156[0];
      [v43 removeEbihilSymlink];
      v83 = v144;
      v135 = v70;
      sub_1CF799C50(v43);
      v81 = v73;
      if (!v73)
      {
        v84 = swift_allocBox();
        v85 = v83;
        v86 = v150;
        v87 = *(v150 + 16);
        v143 = v88;
        v141 = v87;
        v89 = (v87)(v88, v85, v5);
        v145 = &v134;
        MEMORY[0x1EEE9AC00](v89);
        *(&v134 - 16) = 0;
        v149 = v84;
        *(&v134 - 1) = v84;
        sub_1CF1AF818(0x6576726573657270, 0xE800000000000000, sub_1CF1B8134, &v134 - 4);
        v148 = 0;
        v109 = v85;
        v110 = *(v86 + 8);
        v110(v109, v5);
        v111 = v143;
        swift_beginAccess();
        v112 = v140;
        v141(v140, v111, v5);
        v68(v112, 0, 1, v5);

        v113 = (*(v86 + 48))(v112, 1, v5);
        v114 = 0;
        if (v113 != 1)
        {
          v114 = sub_1CF9E5928();
          v110(v112, v5);
        }

        v43 = v139;
        [v139 setResultURL_];

        v115 = fpfs_current_or_default_log();
        v116 = v142;
        sub_1CF9E6128();
        v117 = sub_1CF9E6108();
        v118 = sub_1CF9E72C8();
        v119 = os_log_type_enabled(v117, v118);
        v120 = v138;
        v121 = v136;
        if (!v119)
        {
          goto LABEL_60;
        }

        v122 = swift_slowAlloc();
        *v122 = 0;
        v123 = "preserving user data";
LABEL_59:
        _os_log_impl(&dword_1CEFC7000, v117, v118, v123, v122, 2u);
        MEMORY[0x1D386CDC0](v122, -1, -1);
LABEL_60:

        v121(v116, v120);
        goto LABEL_48;
      }

      goto LABEL_44;
    }

    goto LABEL_64;
  }

  v78 = v148;
  v74 = v136;
  v135 = v70;
  if (v149 == 2)
  {
    v79 = v156[0];
    v80 = FPNotSupportedError();
    if (v80)
    {
      v81 = v80;
LABEL_43:
      swift_willThrow();
      goto LABEL_44;
    }

    goto LABEL_62;
  }

  if (v149 == 3)
  {
    v90 = v156[0];
    [v43 removeEbihilSymlink];
    v91 = v145;
    sub_1CF799C50(v43);
    v81 = v78;
    if (!v78)
    {
      v92 = swift_allocBox();
      v93 = v91;
      v94 = v150;
      v95 = *(v150 + 16);
      v142 = v96;
      v140 = v95;
      v97 = (v95)(v96, v93, v5);
      v144 = &v134;
      MEMORY[0x1EEE9AC00](v97);
      *(&v134 - 16) = 1;
      v149 = v92;
      *(&v134 - 1) = v92;
      sub_1CF1AF818(0x6576726573657270, 0xE800000000000000, sub_1CF1B5ED0, &v134 - 4);
      v148 = 0;
      v124 = v93;
      v125 = *(v94 + 8);
      v125(v124, v5);
      v126 = v142;
      swift_beginAccess();
      v127 = v141;
      (v140)(v141, v126, v5);
      v68(v127, 0, 1, v5);

      v128 = (*(v94 + 48))(v127, 1, v5);
      v129 = 0;
      if (v128 != 1)
      {
        v129 = sub_1CF9E5928();
        v125(v127, v5);
      }

      v43 = v139;
      [v139 setResultURL_];

      v130 = fpfs_current_or_default_log();
      v116 = v143;
      sub_1CF9E6128();
      v117 = sub_1CF9E6108();
      v118 = sub_1CF9E72C8();
      v131 = os_log_type_enabled(v117, v118);
      v120 = v138;
      v121 = v136;
      if (!v131)
      {
        goto LABEL_60;
      }

      v122 = swift_slowAlloc();
      *v122 = 0;
      v123 = "preserving dirty user data";
      goto LABEL_59;
    }

LABEL_44:
    v99 = v138;
    v100 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v101 = v81;
    v102 = sub_1CF9E6108();
    v103 = sub_1CF9E72A8();

    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      *v104 = 138412290;
      swift_getErrorValue();
      v106 = Error.prettyDescription.getter(v154);
      *(v104 + 4) = v106;
      *v105 = v106;
      _os_log_impl(&dword_1CEFC7000, v102, v103, "domain removal failed: %@", v104, 0xCu);
      sub_1CEFCCC44(v105, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v105, -1, -1);
      MEMORY[0x1D386CDC0](v104, -1, -1);
    }

    else
    {
    }

    v74(v137, v99);
    v43 = v139;
LABEL_48:
    v70 = v135;
    if (!v147)
    {
      goto LABEL_31;
    }

    goto LABEL_49;
  }

LABEL_64:
  v132 = v72;
  type metadata accessor for FPDomainRemovalMode(0);
  v156[0] = v132;
  v133 = v26;
  result = sub_1CF9E80C8();
  __break(1u);
  return result;
}

void sub_1CF1AF818(uint64_t a1, unint64_t a2, uint64_t a3, NSObject *a4)
{
  v5 = v4;
  v97 = a3;
  v98 = a4;
  v110[1] = *MEMORY[0x1E69E9840];
  v107 = sub_1CF9E5A58();
  v104 = *(v107 - 8);
  v8 = *(v104 + 64);
  v9 = MEMORY[0x1EEE9AC00](v107);
  v95 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v106 = &v92 - v11;
  v105 = sub_1CF9E6118();
  v12 = *(v105 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v105);
  v16 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v92 - v17;
  v19 = [v5 log];
  v100 = fpfs_adopt_log();

  v20 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v21 = v5;
  v22 = sub_1CF9E6108();
  v23 = sub_1CF9E72C8();

  v24 = os_log_type_enabled(v22, v23);
  v101 = a2;
  v103 = a1;
  v99 = v12;
  v96 = v16;
  if (v24)
  {
    v25 = a1;
    v26 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    aBlock[0] = v93;
    *v26 = 136446466;
    *(v26 + 4) = sub_1CEFD0DF0(v25, a2, aBlock);
    *(v26 + 12) = 2080;
    v27 = [v21 providerDomainID];
    v94 = v21;
    v28 = v27;
    v29 = [v27 fp_obfuscatedProviderDomainID];

    v30 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v32 = v31;

    v33 = v30;
    v34 = v107;
    v21 = v94;
    v35 = sub_1CEFD0DF0(v33, v32, aBlock);
    v36 = v105;

    *(v26 + 14) = v35;
    _os_log_impl(&dword_1CEFC7000, v22, v23, "♻️  %{public}s all files for %s", v26, 0x16u);
    v37 = v93;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v37, -1, -1);
    v38 = v99;
    MEMORY[0x1D386CDC0](v26, -1, -1);

    v39 = *(v38 + 8);
    v39(v18, v36);
  }

  else
  {

    v39 = *(v12 + 8);
    v39(v18, v105);
    v34 = v107;
  }

  v110[0] = 0;
  v40 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
  v41 = [v21 purposeIdentifier];
  if (!v41)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v41 = sub_1CF9E6888();
  }

  [v40 setPurposeIdentifier_];

  v42 = [v21 rootURLs];
  v43 = sub_1CF9E6D48();

  v44 = v103;
  if (*(v43 + 16))
  {
    v94 = v39;
    v45 = *(v104 + 16);
    v45(v106, v43 + ((*(v104 + 80) + 32) & ~*(v104 + 80)), v34);

    v46 = sub_1CF9E5928();
    v47 = swift_allocObject();
    v48 = v101;
    v47[2] = v44;
    v47[3] = v48;
    v49 = v98;
    v47[4] = v97;
    v47[5] = v49;
    v47[6] = v40;
    v47[7] = v110;
    v50 = swift_allocObject();
    v50[2] = sub_1CF1B810C;
    v50[3] = v47;
    aBlock[4] = sub_1CF1B811C;
    aBlock[5] = v50;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF2FCAB8;
    aBlock[3] = &block_descriptor_27_0;
    v51 = _Block_copy(aBlock);

    v52 = v40;

    aBlock[0] = 0;
    [v52 coordinateWritingItemAtURL:v46 options:0x10000 error:aBlock byAccessor:v51];
    _Block_release(v51);

    v53 = aBlock[0];
    LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

    if (v46)
    {
      __break(1u);
    }

    if (v53)
    {
      v102 = v52;
      v54 = fpfs_current_or_default_log();
      v55 = v96;
      sub_1CF9E6128();
      v56 = v95;
      v57 = v107;
      v45(v95, v106, v107);
      v58 = v101;

      v59 = v53;
      v60 = sub_1CF9E6108();
      v61 = sub_1CF9E72B8();

      if (os_log_type_enabled(v60, v61))
      {
        LODWORD(v97) = v61;
        v98 = v60;
        v62 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        aBlock[0] = v93;
        *v62 = 136446722;
        *(v62 + 4) = sub_1CEFD0DF0(v103, v58, aBlock);
        *(v62 + 12) = 2080;
        v63 = sub_1CF9E5928();
        v64 = v59;
        v65 = v56;
        v66 = [v63 fp_shortDescription];

        v67 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v68 = v57;
        v70 = v69;

        v104 = *(v104 + 8);
        (v104)(v65, v68);
        v71 = sub_1CEFD0DF0(v67, v70, aBlock);

        *(v62 + 14) = v71;
        *(v62 + 22) = 2112;
        v108 = v64;
        sub_1CF1B7E64();
        sub_1CF00BB30(&qword_1EC4BE010, sub_1CF1B7E64);
        v72 = v64;
        v73 = v64;
        v74 = sub_1CF9E7FB8();
        if (v74)
        {
          v75 = v74;
        }

        else
        {
          v75 = swift_allocError();
          *v83 = v73;
        }

        v84 = sub_1CF9E57E8();

        v85 = [v84 fp_prettyDescription];
        *(v62 + 24) = v85;
        v86 = v92;
        *v92 = v85;
        v87 = v98;
        _os_log_impl(&dword_1CEFC7000, v98, v97, "cannot get coordination to %{public}s %s: %@", v62, 0x20u);
        sub_1CEFCCC44(v86, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v86, -1, -1);
        v88 = v93;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v88, -1, -1);
        MEMORY[0x1D386CDC0](v62, -1, -1);

        v94(v96, v105);
        v59 = v72;
        v57 = v107;
        v82 = v104;
      }

      else
      {

        v82 = *(v104 + 8);
        v82(v56, v57);
        v94(v55, v105);
      }

      swift_willThrow();

      v82(v106, v57);
      goto LABEL_21;
    }

    v79 = v110[0];
    v80 = v107;
    if (v110[0])
    {
      swift_willThrow();
      v81 = v79;

      (*(v104 + 8))(v106, v80);
LABEL_21:

      v89 = v100;
      v90 = fpfs_adopt_log();

      goto LABEL_22;
    }

    (*(v104 + 8))(v106, v107);

    v76 = sub_1CF1B810C;
  }

  else
  {

    v76 = 0;
  }

  v77 = v100;
  v78 = fpfs_adopt_log();

  sub_1CEFF7124(v76);
LABEL_22:
  v91 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF1B02DC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v50 = a7;
  v52 = a6;
  v53 = a5;
  v54 = a4;
  v10 = sub_1CF9E5A58();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v56 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v43 - v15;
  v17 = sub_1CF9E6118();
  v57 = *(v17 - 8);
  v18 = *(v57 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  v22 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v23 = v11[2];
  v55 = a1;
  v47 = v23;
  v48 = v11 + 2;
  v23(v16, a1, v10);

  v24 = sub_1CF9E6108();
  v25 = sub_1CF9E7288();

  v46 = v25;
  v26 = os_log_type_enabled(v24, v25);
  v45 = a2;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v51 = v17;
    v28 = v27;
    v44 = swift_slowAlloc();
    v58[0] = v44;
    *v28 = 136446466;
    *(v28 + 4) = sub_1CEFD0DF0(a2, a3, v58);
    *(v28 + 12) = 2080;
    v43 = v24;
    v29 = sub_1CF9E5928();
    v30 = v11;
    v31 = v10;
    v32 = [v29 fp_shortDescription];

    v33 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v35 = v34;

    v49 = v30[1];
    v49(v16, v31);
    v36 = sub_1CEFD0DF0(v33, v35, v58);
    v37 = v57;

    *(v28 + 14) = v36;
    v38 = v43;
    _os_log_impl(&dword_1CEFC7000, v43, v46, "%{public}s path %s", v28, 0x16u);
    v39 = v44;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v39, -1, -1);
    v40 = v28;
    v17 = v51;
    MEMORY[0x1D386CDC0](v40, -1, -1);

    v41 = v37;
  }

  else
  {

    v49 = v11[1];
    v49(v16, v10);
    v41 = v57;
  }

  (*(v41 + 8))(v21, v17);
  return v54(v55, v52);
}

void sub_1CF1B0944()
{
  v31[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1CF9E5A58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - v9;
  v31[0] = 0;
  v11 = [v0 moveAwaySyncRootAndReturnError_];
  v12 = v31[0];
  if (v11)
  {
    v30 = v1;
    v13 = v11;
    sub_1CF9E59D8();
    v14 = v12;

    if (qword_1EDEA70C8 != -1)
    {
      swift_once();
    }

    v29 = qword_1EDEA70D0;
    sub_1CF9E5988();
    if (qword_1EDEA70E0 != -1)
    {
      swift_once();
    }

    v15 = fpfs_current_log();
    (*(v3 + 16))(&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v2);
    v16 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v18 = swift_allocObject();
    v28 = v8;
    v19 = v29;
    *(v18 + 16) = v29;
    (*(v3 + 32))(v18 + v17, v16, v2);
    v20 = v19;
    sub_1CF01001C(v15, "purgeAsync(at:)", 15, 2, sub_1CF1B80A8, v18);

    v21 = *(v3 + 8);
    v21(v28, v2);
    v21(v10, v2);
  }

  else
  {
    v22 = v31[0];
    v23 = sub_1CF9E57F8();

    swift_willThrow();
    v24 = v23;
    LODWORD(v31[0]) = sub_1CF9E5328();
    sub_1CF196978();
    v25 = sub_1CF9E5658();

    if (v25)
    {
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

void sub_1CF1B0CB0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v127 = a2;
  v139[16] = *MEMORY[0x1E69E9840];
  v124 = sub_1CF9E5248();
  v6 = *(v124 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v123 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E6118();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v113 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v116 = &v109 - v14;
  v126 = sub_1CF9E5A58();
  v15 = *(v126 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v126);
  v112 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v122 = &v109 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v121 = &v109 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v114 = &v109 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v133 = &v109 - v25;
  v115 = a4;
  v135 = swift_projectBox();
  v26 = [objc_opt_self() defaultManager];
  sub_1CF9E5A18();
  sub_1CF9E6978();

  fpfs_recursive_prune_fault();

  v128 = a1;
  sub_1CF9E5A18();
  v27 = sub_1CF9E6888();

  LOBYTE(a4) = [v26 fileExistsAtPath_];

  if (a4)
  {
    v110 = v10;
    if (qword_1EDEA70C8 != -1)
    {
      swift_once();
    }

    v111 = v9;
    _s18FileProviderDaemon17ConcreteFPDPurgerC31prepareDomainForSyncRootRemoval3urly10Foundation3URLV_tF_0(v128);
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v28 = (v15 + 16);
    v134 = (v15 + 8);
    v120 = (v6 + 8);
    v119 = *MEMORY[0x1E696A250];
    v118 = (v15 + 40);
    v130 = 2;
    v125 = v26;
    for (i = (v15 + 16); ; v28 = i)
    {
      v29 = sub_1CF9E5928();
      v30 = *v28;
      v31 = v133;
      v32 = v126;
      v30(v133, v135, v126);
      v33 = sub_1CF9E5928();
      v34 = *v134;
      (*v134)(v31, v32);
      [v127 itemAtURL:v29 willMoveToURL:v33];

      v35 = v34;
      v36 = v30;
      v37 = v32;
      v38 = sub_1CF9E5928();
      v36(v31, v135, v32);
      v39 = sub_1CF9E5928();
      v132 = v35;
      v35(v31, v32);
      v137[0] = 0;
      v40 = v125;
      LODWORD(v31) = [v125 moveItemAtURL:v38 toURL:v39 error:v137];

      if (v31)
      {
        v65 = v137[0];
        v66 = sub_1CF9E5928();
        v67 = v135;
        swift_beginAccess();
        v68 = v133;
        v36(v133, v67, v37);
        v69 = sub_1CF9E5928();
        v132(v68, v37);
        [v127 itemAtURL:v66 didMoveToURL:v69];

        goto LABEL_27;
      }

      v41 = v137[0];
      v42 = sub_1CF9E57F8();

      swift_willThrow();
      v43 = v42;
      v44 = v123;
      sub_1CF9E50F8();
      sub_1CF00BB30(&qword_1EDEAB460, MEMORY[0x1E6967E70]);
      v45 = v124;
      v46 = sub_1CF9E5658();

      (*v120)(v44, v45);
      v117 = v36;
      if (v46)
      {
        break;
      }

      v137[0] = v42;
      v47 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      sub_1CF1B7E64();
      if (!swift_dynamicCast())
      {
        goto LABEL_17;
      }

      v136 = v139[0];
      if ([v139[0] code] != 516)
      {
LABEL_16:

LABEL_17:
        swift_willThrow();

        v136 = v42;
        goto LABEL_27;
      }

      v48 = [v136 domain];
      v49 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v51 = v50;

      if (v49 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v51 == v52)
      {
      }

      else
      {
        v53 = sub_1CF9E8048();

        if ((v53 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v54 = v133;
      v36(v133, v135, v37);
      sub_1CF9E58E8();
      v55 = v37;
      v56 = v132;
      v132(v54, v37);
      v57 = sub_1CF9E6888();

      v58 = v130;
      v59 = [v57 fp:v130 bouncedNameWithIndex:?];

      v129 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v60 = v122;
      v61 = v135;
      v36(v122, v135, v55);
      v62 = v121;
      sub_1CF9E5988();
      v56(v60, v55);
      sub_1CF9E5968();

      v56(v62, v55);
      v63 = v54;
      v64 = v55;
      (*v118)(v61, v63, v55);
      if (v58 == 500)
      {
        v94 = fpfs_current_or_default_log();
        v95 = v113;
        sub_1CF9E6128();
        v96 = v112;
        v117(v112, v128, v55);
        v97 = sub_1CF9E6108();
        v98 = sub_1CF9E72A8();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = v95;
          v100 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          v138 = v101;
          *v100 = 136315138;
          sub_1CF00BB30(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0]);
          v102 = sub_1CF9E7F98();
          v103 = v64;
          v105 = v104;
          v132(v96, v103);
          v106 = sub_1CEFD0DF0(v102, v105, &v138);

          *(v100 + 4) = v106;
          _os_log_impl(&dword_1CEFC7000, v97, v98, "preserve Domain Folder directory %s, reached max bounce number", v100, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v101);
          MEMORY[0x1D386CDC0](v101, -1, -1);
          MEMORY[0x1D386CDC0](v100, -1, -1);

          (*(v110 + 8))(v99, v111);
        }

        else
        {

          v132(v96, v55);
          (*(v110 + 8))(v95, v111);
        }

        v107 = v125;
        swift_willThrow();

        goto LABEL_27;
      }

      v130 = v58 + 1;
      v136 = 0;
    }

    v70 = fpfs_current_or_default_log();
    v71 = v116;
    sub_1CF9E6128();
    v72 = v114;
    v36(v114, v128, v37);

    v73 = sub_1CF9E6108();
    v74 = sub_1CF9E72A8();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v139[0] = v136;
      *v75 = 136446466;
      v76 = sub_1CF9E5928();
      v77 = [v76 fp_shortDescription];
      LODWORD(v130) = v74;
      v78 = v77;

      v79 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v80 = v72;
      v82 = v81;

      v132(v80, v37);
      v83 = sub_1CEFD0DF0(v79, v82, v139);

      *(v75 + 4) = v83;
      *(v75 + 12) = 2082;
      v84 = v135;
      swift_beginAccess();
      v85 = v73;
      v86 = v133;
      v117(v133, v84, v37);
      v87 = sub_1CF9E5928();
      v88 = [v87 &selRef_fp_errorWithPOSIXCode_];

      v89 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v91 = v90;

      v132(v86, v37);
      v92 = sub_1CEFD0DF0(v89, v91, v139);

      *(v75 + 14) = v92;
      _os_log_impl(&dword_1CEFC7000, v85, v130, "Domain syncroot URL %{public}s or destination URL %{public}s is invalid, did not move anything...", v75, 0x16u);
      v93 = v136;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v93, -1, -1);
      MEMORY[0x1D386CDC0](v75, -1, -1);

      (*(v110 + 8))(v116, v111);
    }

    else
    {

      v132(v72, v37);
      (*(v110 + 8))(v71, v111);
    }

    v136 = 0;
  }

  else
  {
  }

LABEL_27:
  v108 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF1B1BF4@<X0>(_DWORD *a1@<X8>)
{
  sub_1CF9E5A18();
  result = sub_1CF9E5578();
  if (result == 2)
  {
    __break(1u);
  }

  else
  {
    sub_1CF9E6978();

    v3 = fpfs_recursive_unlinkat();

    *a1 = v3;
  }

  return result;
}

void sub_1CF1B1DE4(uint64_t *a1, void *a2, uint64_t a3)
{
  v235[1] = *MEMORY[0x1E69E9840];
  v203 = sub_1CF9E5248();
  v202 = *(v203 - 8);
  v6 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v203);
  v201 = &v193 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_1CF9E5A58();
  v211 = *(v214 - 8);
  v8 = *(v211 + 64);
  v9 = MEMORY[0x1EEE9AC00](v214);
  *&v199 = &v193 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v206 = &v193 - v11;
  v198 = sub_1CF9E53C8();
  v197 = *(v198 - 8);
  v12 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v198);
  v196 = &v193 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E6118();
  v212 = *(v14 - 8);
  v15 = *(v212 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v200 = &v193 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v213 = &v193 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v195 = &v193 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v205 = &v193 - v22;
  v218 = sub_1CF9E5CF8();
  v225 = *(v218 - 1);
  isa = v225[8].isa;
  v24 = MEMORY[0x1EEE9AC00](v218);
  v210 = &v193 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v208 = &v193 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v209 = &v193 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v224 = (&v193 - v32);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v222 = (&v193 - v34);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v207 = &v193 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v219 = &v193 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v220 = &v193 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v221 = &v193 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v193 - v43;
  v45 = type metadata accessor for ItemMetadata();
  v46 = *(*(v45 - 1) + 64);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v49 = &v193 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v216 = &v193 - v50;
  v51 = sub_1CF9E5928();
  v52 = sub_1CF9E5928();
  v204 = a2;
  [a2 itemAtURL:v51 willMoveToURL:v52];

  v53 = [objc_opt_self() defaultManager];
  v223 = a1;
  v54 = sub_1CF9E5928();
  v217 = a3;
  v55 = sub_1CF9E5928();
  aBlock = 0;
  LODWORD(a1) = [v53 moveItemAtURL:v54 toURL:v55 error:&aBlock];

  v56 = aBlock;
  if (!a1)
  {
    v78 = v14;
    v79 = aBlock;
    v80 = sub_1CF9E57F8();

    swift_willThrow();
    aBlock = v80;
    v81 = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CF1B7E64();
    if (swift_dynamicCast())
    {
      v82 = v235[0];
      v83 = [v235[0] code];
      v84 = v201;
      sub_1CF9E50F8();
      v85 = sub_1CF9E5238();
      (*(v202 + 8))(v84, v203);
      if (v83 == v85)
      {
        v86 = [v82 domain];
        v87 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v89 = v88;

        v90 = *MEMORY[0x1E696A250];
        if (v87 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v89 == v91)
        {

LABEL_33:

          v151 = fpfs_current_or_default_log();
          v152 = v200;
          sub_1CF9E6128();
          v153 = v211;
          v154 = v199;
          v155 = v214;
          (*(v211 + 16))(v199, v223, v214);
          v156 = v82;
          v157 = sub_1CF9E6108();
          v158 = sub_1CF9E72A8();

          if (os_log_type_enabled(v157, v158))
          {
            LODWORD(v224) = v158;
            v225 = v157;
            v203 = v78;
            v159 = v154;
            v160 = swift_slowAlloc();
            v222 = swift_slowAlloc();
            v223 = swift_slowAlloc();
            v234 = v223;
            *v160 = 136446466;
            v161 = sub_1CF9E5928();
            v162 = [v161 fp_shortDescription];

            v163 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v165 = v164;

            (*(v153 + 8))(v159, v155);
            v166 = sub_1CEFD0DF0(v163, v165, &v234);

            *(v160 + 4) = v166;
            *(v160 + 12) = 2112;
            v227 = v156;
            sub_1CF00BB30(&qword_1EC4BE010, sub_1CF1B7E64);
            v167 = v156;
            v168 = sub_1CF9E7FB8();
            if (v168)
            {
              v169 = v168;
            }

            else
            {
              v169 = swift_allocError();
              *v172 = v167;
            }

            v173 = v225;
            v174 = sub_1CF9E57E8();

            v175 = [v174 fp_prettyDescription];
            *(v160 + 14) = v175;
            v176 = v222;
            *v222 = v175;
            _os_log_impl(&dword_1CEFC7000, v173, v224, "Failed to move away domain syncroot %{public}s error: %@", v160, 0x16u);
            sub_1CEFCCC44(v176, &qword_1EC4BE350, &unk_1CF9FC3B0);
            MEMORY[0x1D386CDC0](v176, -1, -1);
            v177 = v223;
            __swift_destroy_boxed_opaque_existential_1(v223);
            MEMORY[0x1D386CDC0](v177, -1, -1);
            MEMORY[0x1D386CDC0](v160, -1, -1);

            (*(v212 + 8))(v200, v203);
          }

          else
          {

            (*(v153 + 8))(v154, v155);
            (*(v212 + 8))(v152, v78);
          }

          goto LABEL_38;
        }

        v150 = sub_1CF9E8048();

        if (v150)
        {
          goto LABEL_33;
        }
      }
    }

    swift_willThrow();
LABEL_38:
    v170 = *MEMORY[0x1E69E9840];
    return;
  }

  v203 = v14;
  v57 = v225[7].isa;
  v58 = v44;
  v194 = v44;
  v59 = v218;
  v57(v44, 1, 1, v218);
  v60 = v221;
  v57(v221, 1, 1, v59);
  v61 = v220;
  v57(v220, 1, 1, v59);
  v62 = v58;
  v63 = v219;
  sub_1CF06EAD4(v62, v219);
  v64 = v60;
  v65 = v207;
  sub_1CF06EAD4(v64, v207);
  sub_1CF06EAD4(v61, v222);
  v66 = &v49[v45[14]];
  *v66 = 0;
  *(v66 + 1) = 0;
  v201 = v66;
  v49[v45[17]] = 2;
  v202 = v45[23];
  v49[v202] = 6;
  v193 = v45[30];
  v57(&v49[v193], 1, 1, v59);
  v200 = &v49[v45[34]];
  v199 = xmmword_1CF9F4E20;
  *v200 = xmmword_1CF9F4E20;
  v67 = &v49[v45[37]];
  v68 = &v49[v45[38]];
  *v68 = 0;
  *(v68 + 1) = 0;
  v69 = v56;
  fpfs_supports_vfs_ignore_permissions_iopolicy();
  *v49 = 1;
  v49[v45[20]] = 0;
  v49[v45[28]] = 0;
  v49[v45[29]] = 0;
  *&v49[v45[26]] = 0;
  *&v49[v45[27]] = 0;
  *(v49 + 1) = 0;
  v49[8] = 1;
  *v67 = 0;
  v67[4] = 1;
  *(v49 + 5) = 493;
  v70 = v224;
  sub_1CF06EAD4(v63, v224);
  v71 = v225;
  v72 = v225[6].isa;
  v73 = v72(v70, 1, v59);
  v74 = v71;
  v75 = v65;
  if (v73 == 1)
  {
    v76 = v208;
    sub_1CF9E5C88();
    v77 = v218;
    if (v72(v224, 1, v218) != 1)
    {
      sub_1CEFCCC44(v224, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    }
  }

  else
  {
    v92 = v71[4];
    v76 = v208;
    v77 = v218;
    v92(v208, v224, v218);
  }

  v93 = &v49[v45[7]];
  v224 = v74[4];
  (v224)(v93, v76, v77);
  v94 = v209;
  sub_1CF06EAD4(v75, v209);
  v95 = v72(v94, 1, v77);
  v96 = v72;
  v97 = v77;
  v225 = (v74 + 4);
  if (v95 == 1)
  {
    v98 = v210;
    v218 = v96;
    sub_1CF9E5C88();
    sub_1CEFCCC44(v75, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v219, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v220, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v221, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v194, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v99 = (v218)(v94, 1, v97) == 1;
    v100 = v94;
    v101 = v224;
    v102 = v97;
    if (!v99)
    {
      sub_1CEFCCC44(v100, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v102 = v97;
    }
  }

  else
  {
    sub_1CEFCCC44(v75, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v219, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v220, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v221, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v194, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v103 = v210;
    v104 = v94;
    v101 = v224;
    (v224)(v210, v104, v77);
    v98 = v103;
    v102 = v97;
  }

  v105 = v45[31];
  v106 = &v49[v45[32]];
  v107 = v45[33];
  v108 = &v49[v45[35]];
  v101(&v49[v45[8]], v98, v102);
  v49[v45[9]] = 0;
  v49[v45[10]] = 0;
  v49[v45[13]] = 0;
  *&v49[v45[19]] = 0;
  v49[v45[21]] = 0;
  v49[v45[15]] = 0;
  v49[v45[16]] = 0;
  v49[v45[11]] = 0;
  v49[v45[12]] = 0;
  v49[v45[18]] = 0;
  sub_1CEFE4804(v222, &v49[v193]);
  *&v49[v105] = 0;
  *v106 = 0;
  v106[8] = 1;
  *&v49[v107] = 0;
  v109 = v201;
  v110 = *(v201 + 1);

  *v109 = 0;
  v109[1] = 0;
  v111 = v200;
  sub_1CEFE48D8(*v200, *(v200 + 1));
  *v111 = v199;
  *v108 = 0;
  v108[8] = 1;
  v49[v45[36]] = 0;
  v49[v45[24]] = 0;
  v49[v45[25]] = 0;
  v49[v45[22]] = 0;
  v49[v202] = 6;
  v112 = v216;
  sub_1CF1B7EB0(v49, v216, type metadata accessor for ItemMetadata);
  v113 = sub_1CF9E5A18();
  MEMORY[0x1EEE9AC00](v113);
  v191 = v112;
  LODWORD(v234) = 0;
  BYTE4(v234) = 1;
  v235[0] = 0;
  v114 = swift_allocObject();
  v114[2] = &v234;
  v114[3] = sub_1CF1B7F18;
  v114[4] = &v193 - 4;
  v114[5] = v235;
  v115 = swift_allocObject();
  *(v115 + 16) = sub_1CF1B7F70;
  *(v115 + 24) = v114;
  v232 = sub_1CF005DC8;
  v233 = v115;
  aBlock = MEMORY[0x1E69E9820];
  v229 = 1107296256;
  v230 = sub_1CF005DF8;
  v231 = &block_descriptor_15;
  v116 = _Block_copy(&aBlock);

  sub_1CF9E6978();
  v117 = fpfs_openat();

  _Block_release(v116);

  LOBYTE(v111) = swift_isEscapingClosureAtFileLocation();

  if (v111)
  {
    __break(1u);
  }

  v119 = v235[0];
  if (v235[0])
  {
    swift_willThrow();
    v215 = 0;
    v120 = v212;
    v121 = v206;
    v122 = v205;
LABEL_18:

    v123 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v124 = v119;
    v125 = sub_1CF9E6108();
    v126 = sub_1CF9E72A8();

    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = v120;
      v129 = swift_slowAlloc();
      *v127 = 138412290;
      swift_getErrorValue();
      v130 = Error.prettyDescription.getter(v226);
      *(v127 + 4) = v130;
      *v129 = v130;
      _os_log_impl(&dword_1CEFC7000, v125, v126, "Failed to mark syncroot as dataless, error: %@", v127, 0xCu);
      sub_1CEFCCC44(v129, &qword_1EC4BE350, &unk_1CF9FC3B0);
      v131 = v129;
      v120 = v128;
      MEMORY[0x1D386CDC0](v131, -1, -1);
      MEMORY[0x1D386CDC0](v127, -1, -1);
    }

    else
    {
    }

    v132 = v214;
    v133 = v213;
    (*(v120 + 8))(v122, v203);
    v134 = v211;
    goto LABEL_25;
  }

  v120 = v212;
  v121 = v206;
  v122 = v205;
  if (v117 < 0)
  {
    if (MEMORY[0x1D38683F0](v118))
    {
      if (MEMORY[0x1D38683F0]() == 9939394)
      {
        v119 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
      }

      else
      {
        MEMORY[0x1D38683F0]();
        v171 = sub_1CF9E6138();
        if ((v171 & 0x100000000) != 0)
        {
          LODWORD(aBlock) = 22;
        }

        else
        {
          LODWORD(aBlock) = v171;
        }

        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF00BB30(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        v178 = v196;
        v179 = v198;
        sub_1CF9E57D8();
        v119 = sub_1CF9E53A8();
        (*(v197 + 8))(v178, v179);
      }

      swift_willThrow();
      v215 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v134 = v211;
    if ((BYTE4(v234) & 1) == 0)
    {

      v132 = v214;
      v133 = v213;
LABEL_25:
      v135 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      (*(v134 + 16))(v121, v223, v132);
      v136 = sub_1CF9E6108();
      v137 = sub_1CF9E7288();
      if (os_log_type_enabled(v136, v137))
      {
        v138 = v121;
        v139 = swift_slowAlloc();
        v225 = swift_slowAlloc();
        aBlock = v225;
        *v139 = 136315138;
        v140 = sub_1CF9E5928();
        v141 = v120;
        v142 = [v140 fp_shortDescription];

        v143 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v145 = v144;

        (*(v134 + 8))(v138, v214);
        v146 = sub_1CEFD0DF0(v143, v145, &aBlock);

        *(v139 + 4) = v146;
        _os_log_impl(&dword_1CEFC7000, v136, v137, "Marked the syncroot dataless, url: %s", v139, 0xCu);
        v147 = v225;
        __swift_destroy_boxed_opaque_existential_1(v225);
        MEMORY[0x1D386CDC0](v147, -1, -1);
        MEMORY[0x1D386CDC0](v139, -1, -1);

        (*(v141 + 8))(v213, v203);
      }

      else
      {

        (*(v134 + 8))(v121, v132);
        (*(v120 + 8))(v133, v203);
      }

      v148 = sub_1CF9E5928();
      v149 = sub_1CF9E5928();
      [v204 itemAtURL:v148 didMoveToURL:v149];

      sub_1CF1B802C(v216, type metadata accessor for ItemMetadata);
      goto LABEL_38;
    }

    __break(1u);
  }

  aBlock = 0;
  v229 = 0xE000000000000000;
  sub_1CF9E7948();

  aBlock = 0xD00000000000001ALL;
  v229 = 0x80000001CFA2DF30;
  LODWORD(v227) = v117;
  v180 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v180);

  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v181 = aBlock;
  v182 = v229;
  v183 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v184 = sub_1CF9E6108();
  v185 = sub_1CF9E72B8();

  if (os_log_type_enabled(v184, v185))
  {
    v186 = swift_slowAlloc();
    v187 = swift_slowAlloc();
    aBlock = v187;
    *v186 = 136315650;
    v188 = sub_1CF9E7988();
    v190 = sub_1CEFD0DF0(v188, v189, &aBlock);

    *(v186 + 4) = v190;
    *(v186 + 12) = 2048;
    *(v186 + 14) = 315;
    *(v186 + 22) = 2080;
    *(v186 + 24) = sub_1CEFD0DF0(v181, v182, &aBlock);
    _os_log_impl(&dword_1CEFC7000, v184, v185, "[ASSERT] ‼️  %s:%lu: %s", v186, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v187, -1, -1);
    MEMORY[0x1D386CDC0](v186, -1, -1);
  }

  (*(v212 + 8))(v195, v203);
  v192 = 0;
  v191 = 315;
  sub_1CF9E7B68();
  __break(1u);
}

uint64_t sub_1CF1B3740@<X0>(_DWORD *a1@<X8>)
{
  result = fpfs_set_dataless_cmpfs_attrs();
  *a1 = result;
  return result;
}

void sub_1CF1B394C()
{
  v1 = [v0 volume];
  if (([v1 isDefaultVolumeForCurrentPersona] & 1) == 0 && FPFeatureFlagEbihilIsEnabled() && (objc_msgSend(v0, sel_removeEbihilSymlinkFromDefaultLocation) & 1) == 0)
  {
    [v1 removeBrokenEbihilLinksFromRoot];
  }
}

uint64_t sub_1CF1B3A1C()
{
  v1 = v0;
  v52[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v44[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1CF9E5A58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v44[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v44[-v13];
  result = [v1 getDefaultRootExposureSymlinkURL];
  if (result)
  {
    v49 = v3;
    v50 = v2;
    v16 = result;
    sub_1CF9E59D8();

    sub_1CF9E5A18();
    v17 = [v1 providerDomainID];
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    sub_1CF9E6978();

    sub_1CF9E6978();

    is_equal = fpfs_root_exposure_symlink_xattr_is_equal();

    if (is_equal)
    {
      v19 = [objc_opt_self() defaultManager];
      v20 = sub_1CF9E5928();
      v52[0] = 0;
      v21 = [v19 removeItemAtURL:v20 error:v52];

      if (v21)
      {
        v22 = *(v8 + 8);
        v23 = v52[0];
        v22(v14, v7);
        result = 1;
        goto LABEL_7;
      }

      v25 = v52[0];
      v26 = sub_1CF9E57F8();

      swift_willThrow();
      v27 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      (*(v8 + 16))(v12, v14, v7);
      v28 = v26;
      v29 = sub_1CF9E6108();
      v30 = sub_1CF9E72A8();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v52[0] = v48;
        *v31 = 136315394;
        v46 = v29;
        sub_1CF9E5A18();
        v32 = sub_1CF9E6888();

        v33 = [v32 fp_prettyPath];

        v34 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v45 = v30;
        v36 = v35;

        v37 = *(v8 + 8);
        v37(v12, v7);
        v38 = sub_1CEFD0DF0(v34, v36, v52);

        *(v31 + 4) = v38;
        *(v31 + 12) = 2112;
        swift_getErrorValue();
        v39 = Error.prettyDescription.getter(v51);
        *(v31 + 14) = v39;
        v40 = v46;
        v41 = v47;
        *v47 = v39;
        _os_log_impl(&dword_1CEFC7000, v40, v45, "Failed to remove %s domain link, with error %@", v31, 0x16u);
        sub_1CEFCCC44(v41, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v41, -1, -1);
        v42 = v48;
        __swift_destroy_boxed_opaque_existential_1(v48);
        MEMORY[0x1D386CDC0](v42, -1, -1);
        MEMORY[0x1D386CDC0](v31, -1, -1);

        (*(v49 + 8))(v6, v50);
        v37(v14, v7);
      }

      else
      {

        v43 = *(v8 + 8);
        v43(v12, v7);
        (*(v49 + 8))(v6, v50);
        v43(v14, v7);
      }
    }

    else
    {
      (*(v8 + 8))(v14, v7);
    }

    result = 0;
  }

LABEL_7:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF1B3FCC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v46 = v39 - v6;
  v7 = sub_1CF9E5868();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v45 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E5A58();
  v47 = *(v11 - 8);
  v12 = *(v47 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v43 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v39 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = v39 - v18;
  v20 = [v1 volume];
  v21 = [v20 root];

  v44 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v23 = v22;

  v24 = [v2 rootURLs];
  v25 = sub_1CF9E6D48();

  if (*(v25 + 16))
  {
    (*(v47 + 16))(v17, v25 + ((*(v47 + 80) + 32) & ~*(v47 + 80)), v11);

    v26 = *(v47 + 32);
    v39[1] = v23;
    v40 = v19;
    v26(v19, v17, v11);
    v27 = *MEMORY[0x1E6968F58];
    v41 = a1;
    v28 = v8;
    v29 = v8;
    v30 = v7;
    v31 = *(v28 + 104);
    v32 = v45;
    v31(v45, v27, v30);
    v42 = *(v47 + 56);
    v42(v46, 1, 1, v11);
    v33 = v43;
    sub_1CF9E5A38();
    v48 = sub_1CF9E58E8();
    v49 = v34;
    v31(v32, *MEMORY[0x1E6968F68], v30);
    sub_1CEFE4E68();
    v35 = v41;
    sub_1CF9E5A48();
    (*(v29 + 8))(v32, v30);
    v36 = *(v47 + 8);
    v47 += 8;
    v36(v33, v11);
    v36(v40, v11);

    return (v42)(v35, 0, 1, v11);
  }

  else
  {

    v38 = *(v47 + 56);

    return v38(a1, 1, 1, v11);
  }
}

void sub_1CF1B4554()
{
  v1 = v0;
  v92[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1CF9E6118();
  v89 = *(v2 - 8);
  v3 = *(v89 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v82 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v88 = (&v77 - v6);
  v7 = sub_1CF9E5A58();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v77 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v77 - v16;
  v18 = [v0 volume];
  v92[0] = 0;
  v19 = [v18 supportPathForDomain:v1 failIfNotExisting:1 error:v92];

  v20 = v92[0];
  if (v19)
  {
    v84 = v12;
    v87 = v2;
    sub_1CF9E59D8();
    v21 = v20;

    v22 = sub_1CF9E5928();
    v83 = v1;
    [v1 unregisterFromSpaceForceWithUrl_];

    v23 = fpfs_current_or_default_log();
    v24 = v88;
    sub_1CF9E6128();
    v25 = v8[2];
    v86 = v17;
    v80 = v25;
    v81 = v8 + 2;
    (v25)(v15, v17, v7);
    v26 = sub_1CF9E6108();
    v27 = v7;
    v28 = sub_1CF9E7288();
    v29 = os_log_type_enabled(v26, v28);
    v30 = v8;
    v85 = v8;
    if (v29)
    {
      v31 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v92[0] = v79;
      *v31 = 136315138;
      v78 = v27;
      v32 = sub_1CF9E5928();
      v33 = [v32 fp_shortDescription];

      v34 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v36 = v35;

      v37 = v30[1];
      v38 = v15;
      v39 = v78;
      v37(v38, v78);
      v40 = sub_1CEFD0DF0(v34, v36, v92);

      *(v31 + 4) = v40;
      _os_log_impl(&dword_1CEFC7000, v26, v28, "removing support path %s", v31, 0xCu);
      v41 = v79;
      __swift_destroy_boxed_opaque_existential_1(v79);
      MEMORY[0x1D386CDC0](v41, -1, -1);
      MEMORY[0x1D386CDC0](v31, -1, -1);

      v42 = *(v89 + 8);
      v42(v24, v87);
      v43 = v39;
    }

    else
    {

      v37 = v8[1];
      v37(v15, v27);
      v42 = *(v89 + 8);
      v42(v24, v87);
      v43 = v27;
    }

    v46 = v86;
    v47 = sub_1CF9E5928();
    v92[0] = 0;
    v48 = [v83 forceRecursiveRemoveAt:v47 error:v92];

    v49 = v84;
    if (v48)
    {
      v50 = v92[0];
      v37(v46, v43);
    }

    else
    {
      v51 = v92[0];
      v52 = sub_1CF9E57F8();

      swift_willThrow();
      v53 = v52;
      LODWORD(v92[0]) = sub_1CF9E5328();
      sub_1CF196978();
      v54 = sub_1CF9E5658();
      v90 = v52;

      if (v54)
      {
        v37(v46, v43);

        v90 = 0;
      }

      else
      {
        v55 = fpfs_current_or_default_log();
        v56 = v82;
        sub_1CF9E6128();
        (v80)(v49, v46, v43);
        v57 = v90;
        v58 = v90;
        v59 = sub_1CF9E6108();
        v60 = sub_1CF9E72B8();

        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          LODWORD(v83) = v60;
          v62 = v61;
          v81 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v92[0] = v88;
          *v62 = 136315394;
          v80 = v59;
          v63 = sub_1CF9E5928();
          v64 = [v63 fp_shortDescription];

          v65 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v66 = v49;
          v67 = v43;
          v69 = v68;

          v37(v66, v67);
          v70 = sub_1CEFD0DF0(v65, v69, v92);
          v43 = v67;

          *(v62 + 4) = v70;
          *(v62 + 12) = 2112;
          swift_getErrorValue();
          v71 = Error.prettyDescription.getter(v91);
          *(v62 + 14) = v71;
          v72 = v80;
          v73 = v81;
          *v81 = v71;
          _os_log_impl(&dword_1CEFC7000, v72, v83, "removal of %s failed: %@", v62, 0x16u);
          sub_1CEFCCC44(v73, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v73, -1, -1);
          v74 = v88;
          __swift_destroy_boxed_opaque_existential_1(v88);
          MEMORY[0x1D386CDC0](v74, -1, -1);
          MEMORY[0x1D386CDC0](v62, -1, -1);

          v75 = v82;
        }

        else
        {

          v37(v49, v43);
          v75 = v56;
        }

        v42(v75, v87);
        swift_willThrow();
        v37(v86, v43);
      }
    }
  }

  else
  {
    v44 = v92[0];
    v45 = sub_1CF9E57F8();

    v90 = v45;
    swift_willThrow();
  }

  v76 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF1B4D18(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  a4();

  return 1;
}

void sub_1CF1B4D9C()
{
  v1 = sub_1CF9E6118();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v61[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v61[-v11];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v61[-v13];
  if (FPFeatureFlagSpaceAttributionIsEnabled())
  {
    v73 = v2;
    v74 = v1;
    v76 = [objc_allocWithZone(MEMORY[0x1E69D3980]) init];
    v15 = [v0 rootURLs];
    v16 = sub_1CF9E6D48();

    if (*(v16 + 16))
    {
      v71 = &v61[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
      v17 = *(v7 + 16);
      v75 = *(v7 + 80);
      v70 = (v75 + 32) & ~v75;
      v17(v14, v16 + v70, v6);

      v18 = [v0 provider];
      if (v18)
      {
        v19 = v18;
        v69 = v7;
        v67 = ~v75;
        v20 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v72 = v14;
        v68 = v7 + 16;
        v17(v12, v14, v6);
        v21 = v19;
        v22 = sub_1CF9E6108();
        v23 = sub_1CF9E7288();

        v24 = v17;
        if (os_log_type_enabled(v22, v23))
        {
          v25 = swift_slowAlloc();
          v64 = v17;
          v26 = v25;
          v63 = swift_slowAlloc();
          aBlock[0] = v63;
          *v26 = 136315394;
          sub_1CF00BB30(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0]);
          v62 = v23;
          v27 = sub_1CF9E7F98();
          v29 = v28;
          v30 = v69;
          v31 = *(v69 + 8);
          v65 = (v69 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v66 = v31;
          v31(v12, v6);
          v32 = sub_1CEFD0DF0(v27, v29, aBlock);

          *(v26 + 4) = v32;
          *(v26 + 12) = 2080;
          v33 = [v21 identifier];
          v34 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v36 = v35;

          v37 = sub_1CEFD0DF0(v34, v36, aBlock);

          *(v26 + 14) = v37;
          _os_log_impl(&dword_1CEFC7000, v22, v62, "Domain Backend: Space Attribution unregistration for path %s and bundle %s", v26, 0x16u);
          v38 = v63;
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v38, -1, -1);
          v39 = v26;
          v24 = v64;
          MEMORY[0x1D386CDC0](v39, -1, -1);
        }

        else
        {

          v30 = v69;
          v41 = *(v69 + 8);
          v65 = (v69 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v66 = v41;
          v41(v12, v6);
        }

        v73[1](v5, v74);
        v42 = v21;
        v43 = dispatch_group_create();
        dispatch_group_enter(v43);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
        v44 = *(v30 + 72);
        v45 = v30;
        v46 = v70;
        v47 = v75;
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_1CF9FA450;
        v49 = v48 + v46;
        v50 = v72;
        v24(v49, v72, v6);
        v74 = sub_1CF9E6D28();

        v73 = [v42 identifier];
        v51 = v42;
        v52 = v71;
        v24(v71, v50, v6);
        v53 = (v47 + 16) & v67;
        v54 = (v8 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
        v55 = swift_allocObject();
        (*(v45 + 32))(v55 + v53, v52, v6);
        *(v55 + v54) = v51;
        *(v55 + ((v54 + 15) & 0xFFFFFFFFFFFFFFF8)) = v43;
        aBlock[4] = sub_1CF1B7DA0;
        aBlock[5] = v55;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1CF00A468;
        aBlock[3] = &block_descriptor_2;
        v56 = _Block_copy(aBlock);
        v57 = v51;
        v58 = v43;

        v60 = v73;
        v59 = v74;
        [v76 unregisterURLs:v74 forBundleID:v73 completionHandler:v56];
        _Block_release(v56);

        sub_1CF9E72F8();
        v66(v72, v6);
      }

      else
      {
        (*(v7 + 8))(v14, v6);
      }
    }

    else
    {

      v40 = v76;
    }
  }
}

void sub_1CF1B547C(void *a1, uint64_t a2, void *a3, NSObject *a4)
{
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v59[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v59[-v14];
  v16 = sub_1CF9E6118();
  v64 = *(v16 - 8);
  v65 = v16;
  v17 = *(v64 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v59[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v59[-v21];
  if (a1)
  {
    v63 = a4;
    v23 = a1;
    v24 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    (*(v9 + 16))(v15, a2, v8);
    v25 = a1;
    v26 = a3;
    v27 = sub_1CF9E6108();
    v28 = sub_1CF9E72B8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v67 = v62;
      *v29 = 136315650;
      sub_1CF00BB30(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0]);
      v60 = v28;
      v30 = sub_1CF9E7F98();
      v32 = v31;
      (*(v9 + 8))(v15, v8);
      v33 = sub_1CEFD0DF0(v30, v32, &v67);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      v34 = [v26 identifier];
      v35 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v37 = v36;

      v38 = sub_1CEFD0DF0(v35, v37, &v67);

      *(v29 + 14) = v38;
      *(v29 + 22) = 2112;
      swift_getErrorValue();
      v39 = Error.prettyDescription.getter(v66);
      *(v29 + 24) = v39;
      v40 = v61;
      *v61 = v39;
      _os_log_impl(&dword_1CEFC7000, v27, v60, "Domain Backend: Path %s for bundle %s Space Attribution unregistration error: %@", v29, 0x20u);
      sub_1CEFCCC44(v40, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v40, -1, -1);
      v41 = v62;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v41, -1, -1);
      MEMORY[0x1D386CDC0](v29, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v15, v8);
    }

    (*(v64 + 8))(v22, v65);
    a4 = v63;
  }

  else
  {
    v42 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    (*(v9 + 16))(v13, a2, v8);
    v43 = a3;
    v44 = sub_1CF9E6108();
    v45 = sub_1CF9E7288();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      LODWORD(v62) = v45;
      v47 = v46;
      v63 = swift_slowAlloc();
      v67 = v63;
      *v47 = 136315394;
      sub_1CF00BB30(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0]);
      v48 = sub_1CF9E7F98();
      v49 = a4;
      v51 = v50;
      (*(v9 + 8))(v13, v8);
      v52 = sub_1CEFD0DF0(v48, v51, &v67);
      a4 = v49;

      *(v47 + 4) = v52;
      *(v47 + 12) = 2080;
      v53 = [v43 identifier];
      v54 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v56 = v55;

      v57 = sub_1CEFD0DF0(v54, v56, &v67);

      *(v47 + 14) = v57;
      _os_log_impl(&dword_1CEFC7000, v44, v62, "Path %s was unregistered from Space Attribution with bundle %s", v47, 0x16u);
      v58 = v63;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v58, -1, -1);
      MEMORY[0x1D386CDC0](v47, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v13, v8);
    }

    (*(v64 + 8))(v20, v65);
  }

  dispatch_group_leave(a4);
}

uint64_t sub_1CF1B5BF8@<X0>(_DWORD *a1@<X8>)
{
  sub_1CF9E5A18();
  sub_1CF9E5A18();
  v2 = sub_1CF9E6978();

  v3 = sub_1CF9E6978();

  v4 = MEMORY[0x1D386BA20](4294967294, v2 + 32, 4294967294, v3 + 32, 4);

  *a1 = v4;
  return result;
}

uint64_t sub_1CF1B5D54(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_1CF1B5DC8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1CF1B5DD8(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1CEFD0DF0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

void sub_1CF1B5E5C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void sub_1CF1B5EF0(uint64_t a1)
{
  v97[6] = *MEMORY[0x1E69E9840];
  v84 = sub_1CF9E5D98();
  v83 = *(v84 - 8);
  v3 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v88 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v90 = &v76 - v9;
  v95 = sub_1CF9E5A58();
  v89 = *(v95 - 8);
  v10 = *(v89 + 64);
  v11 = MEMORY[0x1EEE9AC00](v95);
  v80 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v92 = &v76 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v76 - v15;
  v91 = sub_1CF9E6118();
  v94 = *(v91 - 8);
  v17 = *(v94 + 64);
  v18 = MEMORY[0x1EEE9AC00](v91);
  v81 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v93 = &v76 - v20;
  v21 = sub_1CF9E5648();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4700, &qword_1CFA00810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  v27 = *MEMORY[0x1E695DB78];
  *(inited + 32) = *MEMORY[0x1E695DB78];
  v28 = v27;
  sub_1CEFF8A84(inited);
  swift_setDeallocating();
  sub_1CF1B802C(inited + 32, type metadata accessor for URLResourceKey);
  sub_1CF9E58A8();
  if (v1)
  {

    v85 = 0;
    v30 = fpfs_current_or_default_log();
    v31 = v93;
    sub_1CF9E6128();
    v32 = v89;
    v33 = *(v89 + 16);
    v86 = a1;
    v33(v16, a1, v95);
    v34 = v1;
    v35 = sub_1CF9E6108();
    v36 = sub_1CF9E72A8();

    v37 = os_log_type_enabled(v35, v36);
    v87 = v1;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v97[0] = v78;
      *v38 = 136315394;
      v39 = sub_1CF9E5928();
      v40 = [v39 fp_shortDescription];

      v41 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v43 = v42;

      v79 = *(v32 + 8);
      v79(v16, v95);
      v44 = sub_1CEFD0DF0(v41, v43, v97);

      *(v38 + 4) = v44;
      *(v38 + 12) = 2112;
      swift_getErrorValue();
      v45 = Error.prettyDescription.getter(v96);
      *(v38 + 14) = v45;
      v46 = v77;
      *v77 = v45;
      _os_log_impl(&dword_1CEFC7000, v35, v36, "Can't unlink %s: %@", v38, 0x16u);
      sub_1CEFCCC44(v46, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v46, -1, -1);
      v47 = v78;
      __swift_destroy_boxed_opaque_existential_1(v78);
      MEMORY[0x1D386CDC0](v47, -1, -1);
      MEMORY[0x1D386CDC0](v38, -1, -1);

      v48 = v93;
      v49 = *(v94 + 8);
    }

    else
    {

      v79 = *(v32 + 8);
      v79(v16, v95);
      v49 = *(v94 + 8);
      v48 = v31;
    }

    v50 = v91;
    v49(v48, v91);
    v51 = v32;
    v52 = v88;
    v53 = [objc_opt_self() fp_secureTempDirectory];
    v54 = v92;
    v55 = v90;
    if (v53)
    {
      v56 = v53;
      sub_1CF9E59D8();

      v57 = 0;
    }

    else
    {
      v57 = 1;
    }

    v58 = v95;
    (*(v51 + 56))(v52, v57, 1, v95);
    sub_1CF007D78(v52, v55);
    if ((*(v51 + 48))(v55, 1, v58) == 1)
    {
      sub_1CEFCCC44(v55, &unk_1EC4BE310, qword_1CF9FCBE0);
      v59 = fpfs_current_or_default_log();
      v60 = v81;
      sub_1CF9E6128();
      v61 = sub_1CF9E6108();
      v62 = sub_1CF9E72A8();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_1CEFC7000, v61, v62, "Couldn't get tmp URL for fallback for forceRecursiveRemove", v63, 2u);
        MEMORY[0x1D386CDC0](v63, -1, -1);
      }

      else
      {
      }

      v49(v60, v50);
    }

    else
    {
      v64 = v51;
      v65 = v82;
      sub_1CF9E5D88();
      sub_1CF9E5D18();
      (*(v83 + 8))(v65, v84);
      v66 = v80;
      sub_1CF9E5968();

      v67 = v55;
      v68 = v95;
      v69 = v79;
      v79(v67, v95);
      (*(v64 + 32))(v54, v66, v68);
      v70 = [objc_opt_self() defaultManager];
      sub_1CF9E5A18();
      v71 = sub_1CF9E6888();

      sub_1CF9E5A18();
      v72 = sub_1CF9E6888();

      v97[0] = 0;
      LODWORD(v65) = [v70 moveItemAtPath:v71 toPath:v72 error:v97];

      if (v65)
      {
        v73 = v97[0];
        v69(v54, v95);
      }

      else
      {
        v74 = v97[0];
        sub_1CF9E57F8();

        swift_willThrow();
        v69(v54, v95);
      }
    }
  }

  else
  {

    MEMORY[0x1EEE9AC00](v29);
    *(&v76 - 2) = a1;
    *(&v76 - 1) = v25;
    sub_1CEFE1894(sub_1CF1B808C);
    (*(v22 + 8))(v25, v21);
  }

  v75 = *MEMORY[0x1E69E9840];
}

void sub_1CF1B68F0()
{
  v1 = v0;
  v156 = sub_1CF9E5D98();
  v177 = *(v156 - 8);
  v2 = *(v177 + 8);
  MEMORY[0x1EEE9AC00](v156);
  v155 = v138 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v159 = v138 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE008, &unk_1CFA04210);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v138 - v9;
  v158 = type metadata accessor for VFSDetachedRootBookmark();
  v174 = *(v158 - 8);
  v11 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v158);
  v149 = v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_1CF9E53C8();
  v161 = *(v146 - 8);
  v13 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v146);
  v145 = v138 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E6118();
  v166 = *(v15 - 8);
  v167 = v15;
  v16 = v166[8];
  v17 = MEMORY[0x1EEE9AC00](v15);
  v147 = v138 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v169 = v138 - v19;
  v20 = sub_1CF9E5A58();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v154 = v138 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v141 = v138 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v140 = v138 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v148 = v138 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v176 = v138 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v165 = v138 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v172 = v138 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v38 = v138 - v37;
  v39 = v1;
  v40 = [v1 rootURLs];
  v41 = sub_1CF9E6D48();

  if (*(v41 + 16))
  {
    v157 = v10;
    v42 = *(v21 + 16);
    v43 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v173 = v38;
    v170 = v42;
    v171 = v21 + 16;
    v42(v38, (v41 + v43), v20);

    v44 = [v39 rootURLs];
    v45 = v20;
    v46 = sub_1CF9E6D48();

    v48 = *(v46 + 16);
    v49 = v21;
    if (v48 >= 2)
    {
      v138[1] = v46;
      v164 = v46 + v43;
      v178 = (v21 + 8);
      ++v166;
      v152 = (v174 + 56);
      v153 = (v21 + 56);
      v151 = (v177 + 8);
      v50 = *MEMORY[0x1E696AA08];
      v143 = (v161 + 8);
      v144 = v50;
      v51 = 1;
      *&v47 = 136315394;
      v150 = v47;
      *(&v52 + 1) = 2;
      v142 = xmmword_1CF9FA450;
      *&v52 = 136315650;
      v139 = v52;
      v53 = v45;
      v54 = v172;
      v55 = v173;
      v56 = v176;
      v57 = v165;
      v162 = v48;
      v163 = v49;
      v168 = v53;
      while (v51 < v48)
      {
        v62 = *(v49 + 72);
        v174 = v51;
        v63 = v170;
        v170(v54, (v164 + v62 * v51), v53);
        v64 = fpfs_current_or_default_log();
        v65 = v169;
        sub_1CF9E6128();
        v63(v57, v54, v53);
        v63(v56, v55, v53);
        v66 = v57;
        v67 = sub_1CF9E6108();
        v68 = v65;
        v69 = sub_1CF9E7288();
        if (os_log_type_enabled(v67, v69))
        {
          v70 = swift_slowAlloc();
          v161 = swift_slowAlloc();
          *v183 = v161;
          *v70 = v150;
          v160 = v69;
          v71 = sub_1CF9E5928();
          v72 = [v71 fp_shortDescription];

          v73 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v75 = v74;

          v76 = *v178;
          v77 = v66;
          v78 = v168;
          (*v178)(v77, v168);
          v79 = sub_1CEFD0DF0(v73, v75, v183);

          *(v70 + 4) = v79;
          *(v70 + 12) = 2080;
          v80 = sub_1CF9E5928();
          v81 = [v80 fp_shortDescription];

          v82 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v84 = v83;

          v177 = v76;
          (v76)(v176, v78);
          v85 = sub_1CEFD0DF0(v82, v84, v183);
          v55 = v173;

          *(v70 + 14) = v85;
          _os_log_impl(&dword_1CEFC7000, v67, v160, "relocating %s into %s", v70, 0x16u);
          v86 = v161;
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v86, -1, -1);
          v87 = v70;
          v56 = v176;
          MEMORY[0x1D386CDC0](v87, -1, -1);

          v88 = *v166;
          (*v166)(v169, v167);
          v53 = v168;
        }

        else
        {

          v89 = *v178;
          v90 = v168;
          (*v178)(v56, v168);
          v177 = v89;
          (v89)(v66, v90);
          v88 = *v166;
          (*v166)(v68, v167);
          v53 = v90;
        }

        sub_1CF9E5A18();
        sub_1CF9E6978();

        v91 = openat_s();

        if (v91 < 0)
        {
          v96 = MEMORY[0x1D38683F0](v92);
          memset(v183, 0, 40);
          v183[40] = 19;
          if (!v96 || (v97 = sub_1CF9E6138(), (v97 & 0x100000000) != 0))
          {
            sub_1CEFDB034();
            v103 = swift_allocError();
            v105 = *&v183[25];
            v106 = *&v183[16];
            *v107 = *v183;
            v107[1] = v106;
            *(v107 + 25) = v105;
          }

          else
          {
            LODWORD(v181) = v97;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
            inited = swift_initStackObject();
            *(inited + 16) = v142;
            *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            *(inited + 40) = v99;
            *(inited + 72) = &type metadata for VFSFileError;
            v100 = swift_allocObject();
            *(inited + 48) = v100;
            sub_1CF19A730(v183, v100 + 16);
            sub_1CF4E04E8(inited);
            swift_setDeallocating();
            sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
            sub_1CF00BB30(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
            v102 = v145;
            v101 = v146;
            sub_1CF9E57D8();
            v103 = sub_1CF9E53A8();
            v104 = v102;
            v56 = v176;
            (*v143)(v104, v101);
            sub_1CF1969CC(v183);
          }

          v49 = v163;
          swift_willThrow();

          v175 = 0;
          v54 = v172;
          v57 = v165;
          v60 = v174;
        }

        else
        {
          v93 = v159;
          v170(v159, v55, v53);
          (*v153)(v93, 0, 1, v53);
          v94 = v157;
          v95 = v175;
          sub_1CF36C8E0(v91, v93, v157);
          if (v95)
          {

            (*v152)(v94, 1, 1, v158);
            sub_1CEFCCC44(v94, &qword_1EC4BE008, &unk_1CFA04210);
            v49 = v163;
            v114 = v155;
            sub_1CF9E5D88();
            sub_1CF9E5D18();
            (*v151)(v114, v156);
            v115 = v154;
            sub_1CF9E5968();

            MEMORY[0x1EEE9AC00](v116);
            v54 = v172;
            sub_1CEFE1894(sub_1CF1B7D84);
            v175 = 0;
            (v177)(v115, v53);
          }

          else
          {
            v161 = v88;
            v108 = v158;
            (*v152)(v94, 0, 1, v158);
            v109 = v149;
            sub_1CF1B7EB0(v94, v149, type metadata accessor for VFSDetachedRootBookmark);
            v110 = (v109 + *(v108 + 20));
            v112 = *v110;
            v111 = v110[1];
            *v183 = v112;
            *&v183[8] = v111;
            v181 = 47;
            v182 = 0xE100000000000000;
            v179 = 58;
            v180 = 0xE100000000000000;
            sub_1CEFE4E68();
            sub_1CF9E7668();
            v113 = v148;
            sub_1CF9E5958();

            v54 = v172;
            sub_1CF7A41CC();
            v175 = 0;
            (v177)(v113, v53);
            sub_1CF1B802C(v109, type metadata accessor for VFSDetachedRootBookmark);
            v49 = v163;
          }

          v56 = v176;
          v117 = fpfs_clear_acl();
          v55 = v173;
          v60 = v174;
          if (v117 < 0)
          {
            v118 = MEMORY[0x1D38683F0]();
            *v183 = 8;
            memset(&v183[8], 0, 32);
            v183[40] = 19;
            if (!v118 || (v119 = sub_1CF9E6138(), (v119 & 0x100000000) != 0))
            {
              sub_1CEFDB034();
              v125 = swift_allocError();
              sub_1CF19A730(v183, v128);
            }

            else
            {
              LODWORD(v181) = v119;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
              v120 = swift_initStackObject();
              *(v120 + 16) = v142;
              *(v120 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              *(v120 + 40) = v121;
              *(v120 + 72) = &type metadata for VFSFileError;
              v122 = swift_allocObject();
              *(v120 + 48) = v122;
              sub_1CF19A730(v183, v122 + 16);
              sub_1CF4E04E8(v120);
              swift_setDeallocating();
              sub_1CEFCCC44(v120 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
              sub_1CF00BB30(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
              v124 = v145;
              v123 = v146;
              v56 = v176;
              sub_1CF9E57D8();
              v125 = sub_1CF9E53A8();
              v126 = v124;
              v127 = v123;
              v54 = v172;
              v55 = v173;
              (*v143)(v126, v127);
            }

            sub_1CF1969CC(v183);
            swift_willThrow();

            v175 = 0;
            v60 = v174;
          }

          if ((fpfs_fset_syncroot() & 0x80000000) != 0)
          {
            v129 = MEMORY[0x1D38683F0]();
            *v183 = 0;
            v183[40] = 6;
            if (!v129 || (v130 = sub_1CF9E6138(), (v130 & 0x100000000) != 0))
            {
              sub_1CEFDB034();
              v58 = swift_allocError();
              sub_1CF19A730(v183, v59);
            }

            else
            {
              LODWORD(v181) = v130;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
              v131 = swift_initStackObject();
              *(v131 + 16) = v142;
              *(v131 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              *(v131 + 40) = v132;
              *(v131 + 72) = &type metadata for VFSFileError;
              v133 = swift_allocObject();
              *(v131 + 48) = v133;
              sub_1CF19A730(v183, v133 + 16);
              sub_1CF4E04E8(v131);
              swift_setDeallocating();
              sub_1CEFCCC44(v131 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
              sub_1CF00BB30(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
              v135 = v145;
              v134 = v146;
              v56 = v176;
              sub_1CF9E57D8();
              v58 = sub_1CF9E53A8();
              v136 = v135;
              v137 = v134;
              v54 = v172;
              v55 = v173;
              (*v143)(v136, v137);
            }

            sub_1CF1969CC(v183);
            swift_willThrow();

            v175 = 0;
            v60 = v174;
          }

          close(v91);
          v57 = v165;
        }

        v51 = v60 + 1;
        v61 = v177;
        (v177)(v54, v53);
        v48 = v162;
        if (v162 == v51)
        {

          v61(v55, v53);
          return;
        }
      }

      __break(1u);
    }

    else
    {

      (*(v21 + 8))(v173, v45);
    }
  }

  else
  {
  }
}

uint64_t sub_1CF1B7D84@<X0>(_DWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF1B5BF8(a1);
}

void sub_1CF1B7DA0(void *a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1CF1B547C(a1, v1 + v4, v6, v7);
}

unint64_t sub_1CF1B7E64()
{
  result = qword_1EDEA3440;
  if (!qword_1EDEA3440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEA3440);
  }

  return result;
}

uint64_t sub_1CF1B7EB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CF1B7F18@<X0>(_DWORD *a1@<X8>)
{
  v5 = *(v1 + 16);
  result = sub_1CEFE1894(sub_1CF1B7F7C);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1CF1B7F70(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_1CF6BCDA8(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t *sub_1CF1B7F7C@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_1CEFE528C(v8);
  v6[12] = v8[12];
  v6[13] = v8[13];
  v6[14] = v8[14];
  v7 = v9;
  v6[8] = v8[8];
  v6[9] = v8[9];
  v6[10] = v8[10];
  v6[11] = v8[11];
  v6[4] = v8[4];
  v6[5] = v8[5];
  v6[6] = v8[6];
  v6[7] = v8[7];
  v6[0] = v8[0];
  v6[1] = v8[1];
  v6[2] = v8[2];
  v6[3] = v8[3];
  result = sub_1CF1AB7D4(v6, v3, v4);
  *a1 = result;
  return result;
}

uint64_t sub_1CF1B802C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CF1B808C@<X0>(_DWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF1B1BF4(a1);
}

uint64_t sub_1CF1B80A8()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1CF7433B8(v2, v3);
}

unint64_t sub_1CF1B8150()
{
  result = qword_1EC4BEC30;
  if (!qword_1EC4BEC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEC30);
  }

  return result;
}

uint64_t sub_1CF1B81A4(uint64_t a1)
{
  v2 = sub_1CF1B8528();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1CF1B81E0(uint64_t a1)
{
  v2 = sub_1CF1B8528();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_1CF1B821C(unint64_t a1)
{
  if ((a1 >> 60) - 8 > 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CF9FA450;
    v15 = *MEMORY[0x1E696A578];
    *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(inited + 40) = v16;
    sub_1CF1B857C(a1);
    v17 = sub_1CF9E6948();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v17;
    *(inited + 56) = v18;
    v13 = sub_1CF4E04E8(inited);
    swift_setDeallocating();
    sub_1CF1B8600(inited + 32);
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    sub_1CF1B8150();
    v3 = swift_allocError();
    *v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_1CF9FA440;
    v6 = *MEMORY[0x1E696A578];
    *(v5 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v5 + 40) = v7;
    sub_1CF1B857C(v2);
    sub_1CF1B857C(a1);
    v8 = sub_1CF9E6948();
    *(v5 + 72) = MEMORY[0x1E69E6158];
    *(v5 + 48) = v8;
    *(v5 + 56) = v9;
    v10 = *MEMORY[0x1E696AA08];
    *(v5 + 80) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v5 + 88) = v11;
    swift_getErrorValue();
    *(v5 + 120) = v20;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v5 + 96));
    (*(*(v20 - 8) + 16))(boxed_opaque_existential_0);
    v13 = sub_1CF4E04E8(v5);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_arrayDestroy();
  }

  return v13;
}

uint64_t sub_1CF1B846C()
{
  v1 = *v0 >> 60;
  if (v1 > 5)
  {
    if (v1 > 8)
    {
      if (v1 == 9)
      {
        return -2;
      }

      else if (v1 == 10)
      {
        return -3;
      }

      else
      {
        return *(&unk_1CF9FBFD8 + ((*v0 + 0x5000000000000000) & 0xFFFFFFFFFFFFFFF8));
      }
    }

    else
    {
      v6 = 13;
      if (v1 != 7)
      {
        v6 = -1;
      }

      if (v1 == 6)
      {
        return 11;
      }

      else
      {
        return v6;
      }
    }
  }

  else
  {
    v2 = 5;
    v3 = 6;
    if (v1 != 4)
    {
      v3 = 7;
    }

    if (v1 != 3)
    {
      v2 = v3;
    }

    v4 = 1;
    if (v1 != 1)
    {
      v4 = 2;
    }

    if (!v1)
    {
      v4 = *v0 >> 60;
    }

    if (v1 <= 2)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_1CF1B8528()
{
  result = qword_1EC4BE020[0];
  if (!qword_1EC4BE020[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4BE020);
  }

  return result;
}

unint64_t sub_1CF1B857C(unint64_t result)
{
  v1 = result >> 60;
  if ((result >> 60) <= 4)
  {
    if (v1 <= 1)
    {
      if (v1 > 1)
      {
        return result;
      }
    }

    if (v1 == 2 || v1 == 3 || v1 == 4)
    {
    }
  }

  else
  {
    if (v1 <= 7)
    {
      if (v1 != 5 && v1 != 6 && v1 != 7)
      {
        return result;
      }
    }

    if (v1 == 8 || v1 == 9 || v1 == 10)
    {
    }
  }

  return result;
}

uint64_t sub_1CF1B8600(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE300, &unk_1CF9FC5D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_18FileProviderDaemon11VFSFileTreeC18ItemNotFoundReasonO(void *a1)
{
  v1 = *a1 >> 60;
  if (v1 <= 0xA)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 11;
  }
}

uint64_t sub_1CF1B8684(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x75 && *(a1 + 8))
  {
    return (*a1 + 117);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x74)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1CF1B86D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x74)
  {
    *result = a2 - 117;
    if (a3 >= 0x75)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x75)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1CF1B8734(void *result, uint64_t a2)
{
  if (a2 < 0xB)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    *result = (8 * (a2 - 11)) | 0xB000000000000000;
  }

  return result;
}

uint64_t sub_1CF1B8798()
{
  v0 = sub_1CF9E65D8();
  sub_1CF9E65E8();
  return v0;
}

uint64_t sub_1CF1B87DC(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = *(v12 + 24);
  sub_1CF9E6728();
  v14 = v27;
  if (v27)
  {
    v16 = *(v7 + 16);
    v15 = v7 + 16;
    v16(v10, a2, v6);
    v17 = v3[1];
    v26 = sub_1CF9E6DF8();
    v27 = 0;
    sub_1CF9E6708();
    sub_1CF9E6738();
    v18 = sub_1CF656CD8(v6, v6);
    v19 = *(v18 + 52);
    v20 = *(v15 + 56);
    v21 = (*(v15 + 64) + *(v18 + 48)) & ~*(v15 + 64);
    swift_allocObject();
    v22 = sub_1CF9E6D68();
    v16(v23, a2, v6);
    sub_1CF045898(v22);
    sub_1CF9E6DD8();

    v16(a1, a2, v6);
  }

  else
  {
    v24 = v3[1];
    sub_1CF9E6EA8();
  }

  return v14;
}

uint64_t sub_1CF1B89D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OrderedSet();
  sub_1CF1B87DC(v8, a1, v9);
  return (*(v5 + 8))(v8, a3);
}

uint64_t sub_1CF1B8AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  v16 = *v3;
  v18 = *(v17 + 24);
  sub_1CF9E6728();
  if (v38)
  {
    return (*(v6 + 56))(a3, 1, 1, v5);
  }

  v30 = v9;
  v32 = v15;
  v33 = a3;
  v20 = v37;
  v21 = v3[1];
  sub_1CF9E6EA8();
  sub_1CF9E6E58();
  sub_1CF9E6E28();
  v22 = *(v6 + 8);
  v36 = v6 + 8;
  v22(v12, v5);
  sub_1CF9E6708();
  v31 = v3;
  sub_1CF9E6658();
  v23 = v3[1];
  result = sub_1CF9E6DF8();
  if (result < v20)
  {
    __break(1u);
  }

  else
  {
    v34 = v6;
    if (v20 == result)
    {
LABEL_8:
      v27 = v33;
      v28 = v34;
      (*(v34 + 32))(v33, v32, v5);
      return (*(v28 + 56))(v27, 0, 1, v5);
    }

    if (v20 < result)
    {
      v24 = (v34 + 16);
      v25 = v30;
      v35 = v22;
      do
      {
        v26 = result;
        sub_1CF9E6EA8();
        (*v24)(v25, v12, v5);
        v37 = v20;
        v38 = 0;
        sub_1CF9E6738();
        v35(v12, v5);
        result = v26;
        ++v20;
      }

      while (v26 != v20);
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}