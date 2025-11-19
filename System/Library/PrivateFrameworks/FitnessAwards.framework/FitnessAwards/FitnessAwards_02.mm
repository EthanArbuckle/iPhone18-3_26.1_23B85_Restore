uint64_t AwardEarnedLoadState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE82A8, &qword_24B45D330);
  v4 = *(v3 - 8);
  v69 = v3;
  v70 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v76 = &v63 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE82B0, &qword_24B45D338);
  v8 = *(v7 - 8);
  v67 = v7;
  v68 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v75 = &v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE82B8, &qword_24B45D340);
  v72 = *(v11 - 8);
  v73 = v11;
  v12 = *(v72 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v63 - v13;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE82C0, &unk_24B45D348);
  v77 = *(v74 - 8);
  v15 = *(v77 + 64);
  MEMORY[0x28223BE20](v74);
  v17 = &v63 - v16;
  State = type metadata accessor for AwardEarnedLoadState();
  v19 = *(*(State - 8) + 64);
  v20 = MEMORY[0x28223BE20](State);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v63 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v63 - v26;
  v28 = a1[3];
  v29 = a1[4];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_24B4006B8();
  v30 = v78;
  sub_24B45927C();
  if (v30)
  {
    return __swift_destroy_boxed_opaque_existential_1(v79);
  }

  v64 = v22;
  v65 = v25;
  v32 = v72;
  v31 = v73;
  v34 = v75;
  v33 = v76;
  v78 = 0;
  v66 = v27;
  v35 = v74;
  v36 = sub_24B4590FC();
  v37 = (2 * *(v36 + 16)) | 1;
  v80 = v36;
  v81 = v36 + 32;
  v82 = 0;
  v83 = v37;
  v38 = sub_24B3E3808();
  v39 = v35;
  if (v38 == 3 || v82 != v83 >> 1)
  {
    v48 = sub_24B458FFC();
    swift_allocError();
    v50 = v49;
    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0) + 48);
    *v50 = State;
    sub_24B45906C();
    sub_24B458FEC();
    (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D84160], v48);
    swift_willThrow();
    (*(v77 + 8))(v17, v39);
LABEL_9:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v79);
  }

  if (!v38)
  {
    v84 = 0;
    sub_24B40086C();
    v53 = v14;
    v40 = v35;
    v54 = v78;
    sub_24B45905C();
    if (!v54)
    {
      (*(v32 + 8))(v53, v31);
      (*(v77 + 8))(v17, v35);
      swift_unknownObjectRelease();
      v46 = v66;
      swift_storeEnumTagMultiPayload();
      v47 = v71;
      goto LABEL_18;
    }

    v42 = v77;
LABEL_13:
    (*(v42 + 8))(v17, v40);
    goto LABEL_9;
  }

  if (v38 != 1)
  {
    v84 = 2;
    sub_24B400770();
    v55 = v33;
    v56 = v35;
    v57 = v78;
    sub_24B45905C();
    v47 = v71;
    v58 = v77;
    if (!v57)
    {
      v59 = v56;
      sub_24B4008C0();
      v60 = v69;
      sub_24B4590EC();
      (*(v70 + 8))(v55, v60);
      (*(v58 + 8))(v17, v59);
      swift_unknownObjectRelease();
      v61 = v64;
      *v64 = v84;
      swift_storeEnumTagMultiPayload();
      v62 = v61;
      v46 = v66;
      sub_24B3D843C(v62, v66);
      goto LABEL_18;
    }

    (*(v77 + 8))(v17, v56);
    goto LABEL_9;
  }

  v84 = 1;
  sub_24B400818();
  v40 = v35;
  v41 = v78;
  sub_24B45905C();
  v42 = v77;
  if (v41)
  {
    goto LABEL_13;
  }

  sub_24B45836C();
  sub_24B40095C(&qword_27EFE7E68, MEMORY[0x277CC95F0]);
  v43 = v65;
  v44 = v34;
  v45 = v67;
  sub_24B4590EC();
  (*(v68 + 8))(v44, v45);
  (*(v42 + 8))(v17, v35);
  swift_unknownObjectRelease();
  swift_storeEnumTagMultiPayload();
  v46 = v66;
  sub_24B3D843C(v43, v66);
  v47 = v71;
LABEL_18:
  sub_24B3D843C(v46, v47);
  return __swift_destroy_boxed_opaque_existential_1(v79);
}

uint64_t AwardEarnedLoadState.hash(into:)()
{
  v1 = sub_24B45836C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for AwardEarnedLoadState();
  v7 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B40070C(v0, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v11 = *v9;
      MEMORY[0x24C2403C0](2);
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    return MEMORY[0x24C2403C0](v12);
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    MEMORY[0x24C2403C0](1);
    sub_24B40095C(&qword_27EFE7E70, MEMORY[0x277CC95F0]);
    sub_24B458D9C();
    return (*(v2 + 8))(v5, v1);
  }
}

uint64_t AwardEarnedLoadState.hashValue.getter()
{
  sub_24B45922C();
  AwardEarnedLoadState.hash(into:)();
  return sub_24B45926C();
}

uint64_t sub_24B400378()
{
  sub_24B45922C();
  AwardEarnedLoadState.hash(into:)();
  return sub_24B45926C();
}

uint64_t sub_24B4003BC()
{
  sub_24B45922C();
  AwardEarnedLoadState.hash(into:)();
  return sub_24B45926C();
}

uint64_t _s13FitnessAwards20AwardEarnedLoadStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B45836C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for AwardEarnedLoadState();
  v10 = *(*(State - 8) + 64);
  v11 = MEMORY[0x28223BE20](State);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8330, &unk_24B45D840);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v27 - v19;
  v21 = *(v18 + 56);
  sub_24B40070C(a1, &v27 - v19);
  sub_24B40070C(a2, &v20[v21]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_24B40070C(v20, v15);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v5 + 32))(v8, &v20[v21], v4);
      v24 = sub_24B45834C();
      v26 = *(v5 + 8);
      v26(v8, v4);
      v26(v15, v4);
      sub_24B400E14(v20);
      return v24 & 1;
    }

    (*(v5 + 8))(v15, v4);
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_24B400E14(v20);
      v24 = 1;
      return v24 & 1;
    }

LABEL_9:
    sub_24B400DAC(v20);
    v24 = 0;
    return v24 & 1;
  }

  sub_24B40070C(v20, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_9;
  }

  v23 = *v13 ^ v20[v21];
  sub_24B400E14(v20);
  v24 = v23 ^ 1;
  return v24 & 1;
}

unint64_t sub_24B4006B8()
{
  result = qword_27EFE8280;
  if (!qword_27EFE8280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8280);
  }

  return result;
}

uint64_t sub_24B40070C(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for AwardEarnedLoadState();
  (*(*(State - 8) + 16))(a2, a1, State);
  return a2;
}

unint64_t sub_24B400770()
{
  result = qword_27EFE8288;
  if (!qword_27EFE8288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8288);
  }

  return result;
}

unint64_t sub_24B4007C4()
{
  result = qword_27EFE8290;
  if (!qword_27EFE8290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8290);
  }

  return result;
}

unint64_t sub_24B400818()
{
  result = qword_27EFE8298;
  if (!qword_27EFE8298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8298);
  }

  return result;
}

unint64_t sub_24B40086C()
{
  result = qword_27EFE82A0;
  if (!qword_27EFE82A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE82A0);
  }

  return result;
}

unint64_t sub_24B4008C0()
{
  result = qword_27EFE82C8;
  if (!qword_27EFE82C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE82C8);
  }

  return result;
}

uint64_t sub_24B40095C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24B4009E8()
{
  result = qword_27EFE82D8;
  if (!qword_27EFE82D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE82D8);
  }

  return result;
}

unint64_t sub_24B400A40()
{
  result = qword_27EFE82E0;
  if (!qword_27EFE82E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE82E0);
  }

  return result;
}

unint64_t sub_24B400A98()
{
  result = qword_27EFE82E8;
  if (!qword_27EFE82E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE82E8);
  }

  return result;
}

unint64_t sub_24B400AF0()
{
  result = qword_27EFE82F0;
  if (!qword_27EFE82F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE82F0);
  }

  return result;
}

unint64_t sub_24B400B48()
{
  result = qword_27EFE82F8;
  if (!qword_27EFE82F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE82F8);
  }

  return result;
}

unint64_t sub_24B400BA0()
{
  result = qword_27EFE8300;
  if (!qword_27EFE8300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8300);
  }

  return result;
}

unint64_t sub_24B400BF8()
{
  result = qword_27EFE8308;
  if (!qword_27EFE8308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8308);
  }

  return result;
}

unint64_t sub_24B400C50()
{
  result = qword_27EFE8310;
  if (!qword_27EFE8310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8310);
  }

  return result;
}

unint64_t sub_24B400CA8()
{
  result = qword_27EFE8318;
  if (!qword_27EFE8318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8318);
  }

  return result;
}

unint64_t sub_24B400D00()
{
  result = qword_27EFE8320;
  if (!qword_27EFE8320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8320);
  }

  return result;
}

unint64_t sub_24B400D58()
{
  result = qword_27EFE8328;
  if (!qword_27EFE8328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8328);
  }

  return result;
}

uint64_t sub_24B400DAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8330, &unk_24B45D840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B400E14(uint64_t a1)
{
  State = type metadata accessor for AwardEarnedLoadState();
  (*(*(State - 8) + 8))(a1, State);
  return a1;
}

uint64_t TVAwardHeaderView.init(store:awardImageViewBuilder:awardProgressViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X8>)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *a5 = sub_24B3DB5A8;
  *(a5 + 8) = v9;
  *(a5 + 16) = 0;
  v10 = type metadata accessor for TVAwardHeaderView();
  v11 = *(v10 + 52);

  v13 = a3(v12);
  v14 = a5 + *(v10 + 56);
  a4(v13);
}

uint64_t TVAwardHeaderView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v47 = *(a1 - 8);
  v48 = *(v47 + 64);
  v2 = MEMORY[0x28223BE20](a1);
  v46 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v2 + 16);
  v5 = v2;
  v50 = v2;
  v39 = v4;
  sub_24B4585BC();
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8338, &qword_24B45D858);
  v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AC8, &qword_24B45A200);
  v7 = *(v5 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8048, &qword_24B45C188);
  sub_24B4585BC();
  sub_24B4585BC();
  v38 = v7;
  sub_24B4585BC();
  sub_24B45872C();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  v59 = sub_24B458F6C();
  v60 = v6;
  v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE8340, &qword_24B45D860);
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  sub_24B458C1C();
  sub_24B4585BC();
  sub_24B45872C();
  swift_getTupleTypeMetadata3();
  sub_24B458CDC();
  swift_getWitnessTable();
  v8 = sub_24B458BFC();
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v12 = sub_24B4585BC();
  v43 = *(v12 - 8);
  v13 = *(v43 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - v14;
  v16 = sub_24B4585BC();
  v44 = *(v16 - 8);
  v17 = *(v44 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v40 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v42 = &v37 - v20;
  sub_24B4586BC();
  *&v21 = v4;
  *(&v21 + 1) = v7;
  v22 = v45;
  v53 = v45;
  v37 = *(v50 + 32);
  v51 = v21;
  v52 = v37;
  sub_24B458BEC();
  sub_24B3E4898();
  swift_getKeyPath();
  sub_24B458D5C();

  sub_24B458CBC();
  WitnessTable = swift_getWitnessTable();
  sub_24B458A4C();
  (*(v41 + 8))(v11, v8);
  v24 = v47;
  v25 = v46;
  v26 = v50;
  (*(v47 + 16))(v46, v22, v50);
  v27 = v24;
  v28 = (*(v24 + 80) + 48) & ~*(v24 + 80);
  v29 = swift_allocObject();
  v30 = v38;
  *(v29 + 16) = v39;
  *(v29 + 24) = v30;
  *(v29 + 32) = v37;
  (*(v27 + 32))(v29 + v28, v25, v26);
  v56 = WitnessTable;
  v57 = MEMORY[0x277CDF678];
  v31 = swift_getWitnessTable();
  v32 = v40;
  sub_24B458AAC();

  (*(v43 + 8))(v15, v12);
  v54 = v31;
  v55 = MEMORY[0x277CE0790];
  v33 = swift_getWitnessTable();
  v34 = v42;
  sub_24B3ECD00(v32, v16, v33);
  v35 = *(v44 + 8);
  v35(v32, v16);
  sub_24B3ECD00(v34, v16, v33);
  return (v35)(v34, v16);
}

uint64_t sub_24B4016B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v53 = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8338, &qword_24B45D858);
  v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AC8, &qword_24B45A200);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8048, &qword_24B45C188);
  sub_24B4585BC();
  sub_24B4585BC();
  sub_24B4585BC();
  sub_24B45872C();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  v62 = sub_24B458F6C();
  v63 = v9;
  v64 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE8340, &qword_24B45D860);
  swift_getTupleTypeMetadata();
  sub_24B458CDC();
  swift_getWitnessTable();
  v49 = sub_24B458C1C();
  v50 = sub_24B4585BC();
  v10 = sub_24B45872C();
  v11 = *(v10 - 8);
  v51 = v10;
  v52 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v47 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v48 = &v39 - v15;
  v46 = a1;
  v16 = sub_24B4585BC();
  v17 = *(v16 - 8);
  v54 = v16;
  v55 = v17;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v56 = &v39 - v22;
  v61 = a1;
  v62 = a2;
  v63 = a3;
  v64 = a4;
  v23 = type metadata accessor for TVAwardHeaderView();
  v24 = *(v23 + 52);
  sub_24B3E4898();
  swift_getKeyPath();
  sub_24B458D5C();

  sub_24B3E4898();
  swift_getKeyPath();
  sub_24B458D5C();

  sub_24B458CBC();
  sub_24B458A4C();
  v70[7] = a3;
  v70[8] = MEMORY[0x277CDF678];
  v25 = v54;
  WitnessTable = swift_getWitnessTable();
  v26 = v21;
  sub_24B3ECD00(v21, v25, WitnessTable);
  v45 = *(v55 + 8);
  v46 = v55 + 8;
  v45(v21, v25);
  sub_24B3E4898();
  swift_getKeyPath();
  sub_24B458D5C();

  sub_24B458CBC();
  sub_24B45855C();
  v40 = v70[9];
  v41 = v72;
  v42 = v75;
  v43 = v74;
  v81 = 1;
  v79 = v71;
  v77 = v73;
  v27 = v47;
  sub_24B401D9C(v23, v47);
  v28 = sub_24B403D7C();
  v70[5] = swift_getWitnessTable();
  v70[6] = MEMORY[0x277CDFC60];
  v29 = swift_getWitnessTable();
  v70[3] = v28;
  v70[4] = v29;
  v30 = v51;
  v31 = swift_getWitnessTable();
  v32 = v48;
  sub_24B3ECD00(v27, v30, v31);
  v33 = v52;
  v34 = *(v52 + 8);
  v34(v27, v30);
  v35 = *(v55 + 16);
  v39 = v26;
  v36 = v54;
  v35(v26, v56, v54);
  v61 = 0;
  LOBYTE(v62) = v81;
  *(&v62 + 1) = *v80;
  HIDWORD(v62) = *&v80[3];
  v63 = v40;
  LOBYTE(v64) = v79;
  *(&v64 + 1) = *v78;
  HIDWORD(v64) = *&v78[3];
  v65 = v41;
  v66 = v77;
  *v67 = *v76;
  *&v67[3] = *&v76[3];
  v68 = v43;
  v69 = v42;
  v70[0] = v26;
  v70[1] = &v61;
  (*(v33 + 16))(v27, v32, v30);
  v70[2] = v27;
  v60[0] = v36;
  v60[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7D08, &qword_24B45D850);
  v60[2] = v30;
  v57 = WitnessTable;
  v58 = sub_24B3EC908();
  v59 = v31;
  sub_24B437D88(v70, 3uLL, v60);
  v34(v32, v30);
  v37 = v45;
  v45(v56, v36);
  v34(v27, v30);
  return v37(v39, v36);
}

uint64_t sub_24B401D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  *&v73 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7AC8, &qword_24B45A200);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  v5 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8048, &qword_24B45C188);
  sub_24B4585BC();
  sub_24B4585BC();
  v60 = v5;
  sub_24B4585BC();
  sub_24B45872C();
  swift_getTupleTypeMetadata2();
  sub_24B458CDC();
  *(&v73 + 1) = sub_24B458F6C();
  *&v74 = v4;
  *(&v74 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE8340, &qword_24B45D860);
  swift_getTupleTypeMetadata();
  v6 = sub_24B458CDC();
  v55[0] = swift_getWitnessTable();
  v55[1] = v6;
  v7 = sub_24B458C1C();
  v57 = *(v7 - 8);
  v8 = *(v57 + 64);
  MEMORY[0x28223BE20](v7);
  v56 = v55 - v9;
  v67 = v10;
  v11 = sub_24B4585BC();
  v59 = *(v11 - 8);
  v12 = *(v59 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v58 = v55 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB0, &unk_24B45D910);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v55 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = v55 - v24;
  v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8338, &qword_24B45D858);
  v26 = sub_24B45872C();
  v65 = *(v26 - 8);
  v66 = v26;
  v27 = *(v65 + 64);
  MEMORY[0x28223BE20](v26);
  v64 = v55 - v28;
  v61 = a1;
  v62 = v2;
  sub_24B3E4898();
  swift_getKeyPath();
  sub_24B458D5C();

  sub_24B458D0C();
  (*(v22 + 8))(v25, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v30 = MEMORY[0x277CDFC60];
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_8;
  }

  if (!EnumCaseMultiPayload)
  {
    v32 = *v20;
    v31 = *(v20 + 1);
    v34 = *(v20 + 2);
    v33 = *(v20 + 3);
    v35 = v20[32];
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_24B3DF4F0(v20, &qword_27EFE7DB0, &unk_24B45D910);
LABEL_8:
    v44 = sub_24B458B1C();
    sub_24B3E4898();
    swift_getKeyPath();
    sub_24B458D5C();

    sub_24B458CBC();
    sub_24B45861C();
    *&v71[0] = v44;
    sub_24B403D7C();
    WitnessTable = swift_getWitnessTable();
    v70 = v30;
    swift_getWitnessTable();
    v43 = v64;
    sub_24B437B98(v71, v63);
    v77 = v71[4];
    v78 = v71[5];
    v79 = v71[6];
    v80 = v72;
    v73 = v71[0];
    v74 = v71[1];
    v75 = v71[2];
    v76 = v71[3];
    sub_24B3DF4F0(&v73, &qword_27EFE8338, &qword_24B45D858);
    goto LABEL_9;
  }

  v32 = *v20;
  v31 = *(v20 + 1);
  v34 = *(v20 + 2);
  v33 = *(v20 + 3);
  v35 = v20[32];
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DE8, &qword_24B45D940) + 48);
  v37 = sub_24B45833C();
  (*(*(v37 - 8) + 8))(&v20[v36], v37);
LABEL_6:
  *&v73 = v32;
  *(&v73 + 1) = v31;
  *&v74 = v34;
  *(&v74 + 1) = v33;
  LOBYTE(v75) = v35;
  v38 = sub_24B4586FC();
  MEMORY[0x28223BE20](v38);
  v51 = *(v61 + 16);
  v52 = *(v61 + 32);
  v39 = v56;
  sub_24B458C0C();

  sub_24B458CBC();
  v53 = v67;
  v54 = swift_getWitnessTable();
  sub_24B458A5C();
  (*(v57 + 8))(v39, v53);
  v85 = v54;
  v30 = MEMORY[0x277CDFC60];
  v86 = MEMORY[0x277CDFC60];
  v40 = swift_getWitnessTable();
  v41 = v58;
  sub_24B3ECD00(v15, v11, v40);
  v42 = *(v59 + 8);
  v42(v15, v11);
  sub_24B3ECD00(v41, v11, v40);
  sub_24B403D7C();
  v43 = v64;
  sub_24B437C90(v15, v63, v11);
  v42(v15, v11);
  v42(v41, v11);
LABEL_9:
  v46 = v65;
  v45 = v66;
  v47 = sub_24B403D7C();
  v83 = swift_getWitnessTable();
  v84 = v30;
  v48 = swift_getWitnessTable();
  v81 = v47;
  v82 = v48;
  v49 = swift_getWitnessTable();
  sub_24B3ECD00(v43, v45, v49);
  return (*(v46 + 8))(v43, v45);
}

uint64_t sub_24B402708()
{
  type metadata accessor for TVAwardHeaderView();
  sub_24B3E4898();
  sub_24B458D6C();
}

uint64_t sub_24B402758()
{
  v1 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v2 = *(*(type metadata accessor for TVAwardHeaderView() - 8) + 80);

  return sub_24B402708();
}

uint64_t sub_24B4027FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B402840@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *&v104 = a5;
  *(&v104 + 1) = a6;
  v101 = a4;
  v102 = a2;
  v103 = a3;
  v113 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE7D08, &qword_24B45D850);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8048, &qword_24B45C188);
  v94[0] = sub_24B4585BC();
  v9 = sub_24B4585BC();
  v10 = sub_24B4585BC();
  v94[1] = v9;
  v94[2] = v10;
  v11 = sub_24B45872C();
  v114 = v8;
  swift_getTupleTypeMetadata2();
  v12 = sub_24B458CDC();
  v105 = *(v12 - 8);
  v13 = *(v105 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v98 = v94 - v15;
  v99 = v11;
  v95 = *(v11 - 8);
  v16 = *(v95 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v97 = v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v96 = v94 - v19;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB0, &unk_24B45D910);
  v20 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v22 = v94 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DB8, &qword_24B4610A0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = v94 - v26;
  v118 = v12;
  v117 = sub_24B458F6C();
  v115 = *(v117 - 8);
  v28 = *(v115 + 64);
  v29 = MEMORY[0x28223BE20](v117);
  v116 = v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v119 = v94 - v31;
  v32 = *a1;
  v33 = a1[1];
  v108 = a1;
  *&v167 = v32;
  *(&v167 + 1) = v33;
  v34 = sub_24B3EC9AC();

  v106 = v34;
  v35 = sub_24B45892C();
  v37 = v36;
  v39 = v38;
  sub_24B45886C();
  v40 = sub_24B45890C();
  v110 = v41;
  v111 = v40;
  v107 = v42;
  v112 = v43;

  sub_24B3DF478(v35, v37, v39 & 1);

  KeyPath = swift_getKeyPath();
  *&v167 = v103;
  *(&v167 + 1) = v101;
  v168 = v104;
  v44 = *(&v104 + 1);
  v45 = type metadata accessor for TVAwardHeaderView();
  sub_24B3E4898();
  swift_getKeyPath();
  sub_24B458D5C();

  sub_24B458D0C();
  (*(v24 + 8))(v27, v23);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24B3DF4F0(v22, &qword_27EFE7DB0, &unk_24B45D910);
    goto LABEL_5;
  }

  v46 = *(v22 + 1);
  v47 = *(v22 + 3);
  v48 = v22[32];
  v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7DE8, &qword_24B45D940) + 48);
  v50 = sub_24B45833C();
  (*(*(v50 - 8) + 8))(&v22[v49], v50);

  if (v48 != 1)
  {
LABEL_5:
    v65 = v116;
    (*(v105 + 56))(v116, 1, 1, v118);
    swift_getWitnessTable();
    sub_24B428520(v65, v119);
    v66 = *(v115 + 8);
    v105 = (v115 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v66(v65, v117);
    goto LABEL_6;
  }

  sub_24B3E4898();
  swift_getKeyPath();
  sub_24B458D5C();

  sub_24B458CBC();
  sub_24B45855C();
  v100 = v172;
  v101 = v174;
  v103 = v177;
  *&v104 = v176;
  LOBYTE(v133[0]) = 1;
  LOBYTE(v129) = v173;
  LOBYTE(v160[0]) = v175;
  v51 = v97;
  sub_24B4035B0(v45, v97);
  v52 = sub_24B3DF11C(&qword_2810E27F0, &qword_27EFE8048, &qword_24B45C188);
  v126 = v44;
  v127 = v52;
  WitnessTable = swift_getWitnessTable();
  v125 = MEMORY[0x277CDFC48];
  v53 = swift_getWitnessTable();
  v122 = v44;
  v123 = MEMORY[0x277CDF678];
  v54 = swift_getWitnessTable();
  v120 = v53;
  v121 = v54;
  v55 = v99;
  v56 = swift_getWitnessTable();
  v57 = v96;
  sub_24B3ECD00(v51, v55, v56);
  v58 = v95;
  v59 = *(v95 + 8);
  v59(v51, v55);
  *&v167 = 0;
  BYTE8(v167) = v133[0];
  *(&v167 + 9) = v178;
  HIDWORD(v167) = *(&v178 + 3);
  *&v168 = v100;
  BYTE8(v168) = v129;
  *(&v168 + 9) = v149;
  HIDWORD(v168) = *(&v149 + 3);
  *&v169 = v101;
  BYTE8(v169) = v160[0];
  *(&v169 + 9) = v155[0];
  HIDWORD(v169) = *(v155 + 3);
  *&v170 = v104;
  *(&v170 + 1) = v103;
  *&v162 = &v167;
  (*(v58 + 16))(v51, v57, v55);
  *(&v162 + 1) = v51;
  *&v134 = v114;
  *(&v134 + 1) = v55;
  v139 = sub_24B3EC908();
  v140 = v56;
  v60 = v98;
  sub_24B437D88(&v162, 2uLL, &v134);
  v59(v57, v55);
  v59(v51, v55);
  v61 = v105;
  v62 = v116;
  v63 = v118;
  (*(v105 + 32))(v116, v60, v118);
  (*(v61 + 56))(v62, 0, 1, v63);
  swift_getWitnessTable();
  sub_24B428520(v62, v119);
  v64 = *(v115 + 8);
  v105 = (v115 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v64(v62, v117);
LABEL_6:
  sub_24B3E4898();
  swift_getKeyPath();
  sub_24B458D5C();

  sub_24B458CBC();
  sub_24B45855C();
  v102 = v178;
  v103 = v180;
  *&v104 = v183;
  *(&v104 + 1) = v182;
  v161 = 1;
  v159 = v179;
  v157 = v181;
  v67 = v108[3];
  *&v167 = v108[2];
  *(&v167 + 1) = v67;

  v68 = sub_24B45892C();
  v70 = v69;
  v72 = v71;
  sub_24B45889C();
  v73 = sub_24B45890C();
  v75 = v74;
  v77 = v76;

  sub_24B3DF478(v68, v70, v72 & 1);

  LODWORD(v167) = sub_24B45875C();
  v78 = sub_24B4588DC();
  v80 = v79;
  v82 = v81;
  v84 = v83;
  sub_24B3DF478(v73, v75, v77 & 1);

  v85 = swift_getKeyPath();
  v86 = swift_getKeyPath();
  LOBYTE(v139) = v82 & 1;
  *&v162 = v78;
  *(&v162 + 1) = v80;
  LOBYTE(v163) = v82 & 1;
  *(&v163 + 1) = v167;
  DWORD1(v163) = *(&v167 + 3);
  *(&v163 + 1) = v84;
  *&v164 = v85;
  *(&v164 + 1) = 3;
  LOBYTE(v165) = 0;
  *(&v165 + 1) = v134;
  DWORD1(v165) = *(&v134 + 3);
  *(&v165 + 1) = v86;
  v166 = 0;
  v88 = v110;
  v87 = v111;
  v149 = v111;
  v150 = v110;
  LOBYTE(v78) = v107 & 1;
  v151 = v107 & 1;
  v152 = v112;
  v153 = KeyPath;
  v154 = 0;
  v155[0] = &v149;
  v89 = v116;
  v90 = v115 + 16;
  v91 = v117;
  (*(v115 + 16))(v116, v119, v117);
  v139 = 0;
  LOBYTE(v140) = v161;
  *(&v140 + 1) = v160[0];
  HIDWORD(v140) = *(v160 + 3);
  v141 = v102;
  v142 = v159;
  *v143 = *v158;
  *&v143[3] = *&v158[3];
  v144 = v103;
  v145 = v157;
  *v146 = *v156;
  *&v146[3] = *&v156[3];
  v147 = *(&v104 + 1);
  v148 = v104;
  v155[1] = v89;
  v155[2] = &v139;
  v136 = v164;
  v137 = v165;
  v138 = v166;
  v134 = v162;
  v135 = v163;
  v155[3] = &v134;
  sub_24B3DF5A4(v87, v88, v78);

  sub_24B403E10(&v162, &v167);
  v133[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7AC8, &qword_24B45A200);
  v133[1] = v91;
  v133[2] = v114;
  v133[3] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFE8340, &qword_24B45D860);
  v129 = sub_24B3DEDBC();
  v128 = swift_getWitnessTable();
  v130 = swift_getWitnessTable();
  v131 = sub_24B3EC908();
  v132 = sub_24B403E80();
  sub_24B437D88(v155, 4uLL, v133);
  sub_24B3DF478(v87, v88, v78);

  sub_24B3DF4F0(&v162, qword_27EFE8340, &qword_24B45D860);
  v92 = *(v90 - 8);
  v92(v119, v91);
  v168 = v135;
  v169 = v136;
  v170 = v137;
  v171 = v138;
  v167 = v134;
  sub_24B3DF4F0(&v167, qword_27EFE8340, &qword_24B45D860);
  v92(v89, v91);
  sub_24B3DF478(v149, v150, v151);
}

uint64_t sub_24B4035B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v4 = *(a1 + 24);
  v5 = sub_24B4585BC();
  v54 = *(v5 - 8);
  v6 = *(v54 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v52 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v53 = &v52 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8048, &qword_24B45C188);
  v10 = sub_24B4585BC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v52 - v13;
  v15 = sub_24B4585BC();
  v56 = *(v15 - 8);
  v16 = *(v56 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v55 = &v52 - v20;
  v57 = v21;
  v61 = v5;
  v60 = sub_24B45872C();
  v59 = *(v60 - 8);
  v22 = *(v59 + 64);
  MEMORY[0x28223BE20](v60);
  v58 = &v52 - v23;
  sub_24B3E4898();
  swift_getKeyPath();
  sub_24B458D5C();

  if (v83 == 0xD00000000000001CLL && 0x800000024B4668F0 == v84)
  {
  }

  else
  {
    v24 = sub_24B4591AC();

    if ((v24 & 1) == 0)
    {
      v38 = *(a1 + 56);
      sub_24B458CBC();
      v36 = *(a1 + 40);
      v39 = v52;
      sub_24B458A4C();
      v81 = v36;
      v37 = MEMORY[0x277CDF678];
      v82 = MEMORY[0x277CDF678];
      v40 = v61;
      WitnessTable = swift_getWitnessTable();
      v42 = v53;
      sub_24B3ECD00(v39, v40, WitnessTable);
      v56 = *(v54 + 8);
      (v56)(v39, v40);
      sub_24B3ECD00(v42, v40, WitnessTable);
      v43 = sub_24B3DF11C(&qword_2810E27F0, &qword_27EFE8048, &qword_24B45C188);
      v79 = v36;
      v80 = v43;
      v77 = swift_getWitnessTable();
      v78 = MEMORY[0x277CDFC48];
      v44 = v57;
      swift_getWitnessTable();
      v35 = v58;
      sub_24B437C90(v39, v44, v40);
      v45 = v56;
      (v56)(v39, v40);
      v45(v42, v40);
      goto LABEL_7;
    }
  }

  v25 = *(a1 + 40);
  v26 = v2 + *(a1 + 56);
  sub_24B458AFC();
  v27 = sub_24B3DF11C(&qword_2810E27F0, &qword_27EFE8048, &qword_24B45C188);
  v67 = v25;
  v68 = v27;
  v28 = swift_getWitnessTable();
  sub_24B458AEC();
  (*(v11 + 8))(v14, v10);
  v65 = v28;
  v66 = MEMORY[0x277CDFC48];
  v29 = v57;
  v30 = swift_getWitnessTable();
  v31 = v55;
  sub_24B3ECD00(v19, v29, v30);
  v32 = *(v56 + 8);
  v32(v19, v29);
  sub_24B3ECD00(v31, v29, v30);
  v63 = v25;
  v64 = MEMORY[0x277CDF678];
  swift_getWitnessTable();
  v33 = v58;
  sub_24B437B98(v19, v29);
  v34 = v19;
  v35 = v33;
  v32(v34, v29);
  v32(v31, v29);
  v36 = v25;
  v37 = MEMORY[0x277CDF678];
LABEL_7:
  v46 = sub_24B3DF11C(&qword_2810E27F0, &qword_27EFE8048, &qword_24B45C188);
  v75 = v36;
  v76 = v46;
  v73 = swift_getWitnessTable();
  v74 = MEMORY[0x277CDFC48];
  v47 = swift_getWitnessTable();
  v71 = v36;
  v72 = v37;
  v48 = swift_getWitnessTable();
  v69 = v47;
  v70 = v48;
  v49 = v60;
  v50 = swift_getWitnessTable();
  sub_24B3ECD00(v35, v49, v50);
  return (*(v59 + 8))(v35, v49);
}

unint64_t sub_24B403D7C()
{
  result = qword_27EFE83C8;
  if (!qword_27EFE83C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8338, &qword_24B45D858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE83C8);
  }

  return result;
}

uint64_t sub_24B403E10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFE8340, &qword_24B45D860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B403E80()
{
  result = qword_27EFE83D0;
  if (!qword_27EFE83D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EFE8340, &qword_24B45D860);
    sub_24B3F8F24();
    sub_24B3DF11C(&qword_2810E2800, &qword_27EFE7AD0, &qword_24B45A208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE83D0);
  }

  return result;
}

uint64_t sub_24B403F4C(uint64_t a1)
{
  v2 = sub_24B4045C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B403F88(uint64_t a1)
{
  v2 = sub_24B4045C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B403FC4()
{
  v1 = 0x7265746E6563;
  if (*v0 != 1)
  {
    v1 = 0x676E696C69617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E696461656CLL;
  }
}

uint64_t sub_24B40401C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B40503C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B404044(uint64_t a1)
{
  v2 = sub_24B404518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B404080(uint64_t a1)
{
  v2 = sub_24B404518();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4040BC(uint64_t a1)
{
  v2 = sub_24B404614();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4040F8(uint64_t a1)
{
  v2 = sub_24B404614();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B404134(uint64_t a1)
{
  v2 = sub_24B40456C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B404170(uint64_t a1)
{
  v2 = sub_24B40456C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DescriptionTextAlignment.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE83D8, &qword_24B45D9E0);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE83E0, &qword_24B45D9E8);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE83E8, &qword_24B45D9F0);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE83F0, &qword_24B45D9F8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B404518();
  sub_24B45928C();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_24B4045C0();
      v12 = v26;
      sub_24B45910C();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_24B40456C();
      v12 = v29;
      sub_24B45910C();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_24B404614();
    sub_24B45910C();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_24B404518()
{
  result = qword_27EFE83F8;
  if (!qword_27EFE83F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE83F8);
  }

  return result;
}

unint64_t sub_24B40456C()
{
  result = qword_27EFE8400;
  if (!qword_27EFE8400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8400);
  }

  return result;
}

unint64_t sub_24B4045C0()
{
  result = qword_27EFE8408;
  if (!qword_27EFE8408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8408);
  }

  return result;
}

unint64_t sub_24B404614()
{
  result = qword_27EFE8410;
  if (!qword_27EFE8410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8410);
  }

  return result;
}

uint64_t DescriptionTextAlignment.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8418, &qword_24B45DA00);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8420, &qword_24B45DA08);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8428, &qword_24B45DA10);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8430, &unk_24B45DA18);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_24B404518();
  v20 = v43;
  sub_24B45927C();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_24B4590FC();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_24B3E3808();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_24B458FFC();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0) + 48);
      *v30 = &type metadata for DescriptionTextAlignment;
      sub_24B45906C();
      sub_24B458FEC();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_24B4045C0();
          sub_24B45905C();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_24B40456C();
          v33 = v22;
          sub_24B45905C();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_24B404614();
        sub_24B45905C();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t DescriptionTextAlignment.hashValue.getter()
{
  v1 = *v0;
  sub_24B45922C();
  MEMORY[0x24C2403C0](v1);
  return sub_24B45926C();
}

unint64_t sub_24B404C80()
{
  result = qword_27EFE8438;
  if (!qword_27EFE8438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8438);
  }

  return result;
}

unint64_t sub_24B404D28()
{
  result = qword_27EFE8440;
  if (!qword_27EFE8440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8440);
  }

  return result;
}

unint64_t sub_24B404D80()
{
  result = qword_27EFE8448;
  if (!qword_27EFE8448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8448);
  }

  return result;
}

unint64_t sub_24B404DD8()
{
  result = qword_27EFE8450;
  if (!qword_27EFE8450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8450);
  }

  return result;
}

unint64_t sub_24B404E30()
{
  result = qword_27EFE8458;
  if (!qword_27EFE8458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8458);
  }

  return result;
}

unint64_t sub_24B404E88()
{
  result = qword_27EFE8460;
  if (!qword_27EFE8460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8460);
  }

  return result;
}

unint64_t sub_24B404EE0()
{
  result = qword_27EFE8468;
  if (!qword_27EFE8468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8468);
  }

  return result;
}

unint64_t sub_24B404F38()
{
  result = qword_27EFE8470;
  if (!qword_27EFE8470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8470);
  }

  return result;
}

unint64_t sub_24B404F90()
{
  result = qword_27EFE8478;
  if (!qword_27EFE8478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8478);
  }

  return result;
}

unint64_t sub_24B404FE8()
{
  result = qword_27EFE8480;
  if (!qword_27EFE8480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8480);
  }

  return result;
}

uint64_t sub_24B40503C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E696461656CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265746E6563 && a2 == 0xE600000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E696C69617274 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B4591AC();

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

uint64_t sub_24B405150(uint64_t a1)
{
  v2 = sub_24B405BA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B40518C(uint64_t a1)
{
  v2 = sub_24B405BA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4051C8()
{
  v1 = 0x7274537472617473;
  v2 = 0x646573656C616F63;
  if (*v0 != 2)
  {
    v2 = 0x6E7261457478656ELL;
  }

  if (*v0)
  {
    v1 = 0x6E6961746E69616DLL;
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

uint64_t sub_24B405260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B406F38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B405288(uint64_t a1)
{
  v2 = sub_24B405AFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4052C4(uint64_t a1)
{
  v2 = sub_24B405AFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B405320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x654C6B6165727473 && a2 == 0xEC0000006874676ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B4591AC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B4053AC(uint64_t a1)
{
  v2 = sub_24B405BF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4053E8(uint64_t a1)
{
  v2 = sub_24B405BF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B405440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000024B466A10 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24B4591AC();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24B4054D4(uint64_t a1)
{
  v2 = sub_24B405B50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B405510(uint64_t a1)
{
  v2 = sub_24B405B50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B40554C(uint64_t a1)
{
  v2 = sub_24B405C4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B405588(uint64_t a1)
{
  v2 = sub_24B405C4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardToastKind.encode(to:)(void *a1)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8488, &qword_24B45DE70);
  v36 = *(v38 - 8);
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v34 = v29 - v4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8490, &qword_24B45DE78);
  v35 = *(v37 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v33 = v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8498, &qword_24B45DE80);
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE84A0, &qword_24B45DE88);
  v30 = *(v11 - 8);
  v12 = *(v30 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE84A8, &qword_24B45DE90);
  v40 = *(v15 - 8);
  v41 = v15;
  v16 = *(v40 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v29 - v17;
  v19 = v1[1];
  v39 = *v1;
  v29[1] = v19;
  v20 = *(v1 + 16);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B405AFC();
  sub_24B45928C();
  if (v20 <= 1)
  {
    if (!v20)
    {
      v44 = 1;
      sub_24B405BF8();
      v22 = v41;
      sub_24B45910C();
      v23 = v32;
      sub_24B45917C();
      (*(v31 + 8))(v10, v23);
      return (*(v40 + 8))(v18, v22);
    }

    v45 = 2;
    sub_24B405BA4();
    v24 = v33;
    v22 = v41;
    sub_24B45910C();
    v42 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE84C8, &qword_24B45DE98);
    sub_24B40646C(&qword_27EFE84D0);
    v25 = v37;
    sub_24B45918C();
    v26 = v35;
LABEL_7:
    (*(v26 + 8))(v24, v25);
    return (*(v40 + 8))(v18, v22);
  }

  if (v20 == 2)
  {
    v46 = 3;
    sub_24B405B50();
    v24 = v34;
    v22 = v41;
    sub_24B45910C();
    v25 = v38;
    sub_24B45914C();
    v26 = v36;
    goto LABEL_7;
  }

  v43 = 0;
  sub_24B405C4C();
  v28 = v41;
  sub_24B45910C();
  (*(v30 + 8))(v14, v11);
  return (*(v40 + 8))(v18, v28);
}

unint64_t sub_24B405AFC()
{
  result = qword_27EFE84B0;
  if (!qword_27EFE84B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE84B0);
  }

  return result;
}

unint64_t sub_24B405B50()
{
  result = qword_27EFE84B8;
  if (!qword_27EFE84B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE84B8);
  }

  return result;
}

unint64_t sub_24B405BA4()
{
  result = qword_27EFE84C0;
  if (!qword_27EFE84C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE84C0);
  }

  return result;
}

unint64_t sub_24B405BF8()
{
  result = qword_27EFE84D8;
  if (!qword_27EFE84D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE84D8);
  }

  return result;
}

unint64_t sub_24B405C4C()
{
  result = qword_27EFE84E0;
  if (!qword_27EFE84E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE84E0);
  }

  return result;
}

uint64_t AwardToastKind.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE84E8, &qword_24B45DEA0);
  v53 = *(v57 - 8);
  v3 = *(v53 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v47 - v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE84F0, &qword_24B45DEA8);
  v54 = *(v51 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v51);
  v55 = &v47 - v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE84F8, &qword_24B45DEB0);
  v52 = *(v49 - 8);
  v7 = *(v52 + 64);
  MEMORY[0x28223BE20](v49);
  v9 = &v47 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8500, &qword_24B45DEB8);
  v50 = *(v10 - 8);
  v11 = *(v50 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8508, &unk_24B45DEC0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v47 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_24B405AFC();
  v21 = v59;
  sub_24B45927C();
  if (!v21)
  {
    v22 = v13;
    v47 = v10;
    v48 = 0;
    v23 = v55;
    v24 = v56;
    v59 = v15;
    v26 = v57;
    v25 = v58;
    v27 = sub_24B4590FC();
    v28 = (2 * *(v27 + 16)) | 1;
    v61 = v27;
    v62 = v27 + 32;
    v63 = 0;
    v64 = v28;
    v29 = sub_24B3E380C();
    if (v29 == 4 || v63 != v64 >> 1)
    {
      v33 = sub_24B458FFC();
      swift_allocError();
      v35 = v34;
      v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0) + 48);
      *v35 = &type metadata for AwardToastKind;
      sub_24B45906C();
      sub_24B458FEC();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
      swift_willThrow();
    }

    else
    {
      if (v29 > 1u)
      {
        if (v29 == 2)
        {
          LOBYTE(v65) = 2;
          sub_24B405BA4();
          v39 = v23;
          v40 = v48;
          sub_24B45905C();
          v37 = v59;
          if (v40)
          {
            goto LABEL_10;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE84C8, &qword_24B45DE98);
          sub_24B40646C(&qword_27EFE8510);
          v41 = v51;
          sub_24B4590EC();
          (*(v54 + 8))(v39, v41);
          (*(v37 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v31 = 0;
          v55 = v65;
          v32 = 1;
        }

        else
        {
          LOBYTE(v65) = 3;
          sub_24B405B50();
          v44 = v48;
          sub_24B45905C();
          v45 = v59;
          if (v44)
          {
            (*(v59 + 8))(v18, v14);
            swift_unknownObjectRelease();
            return __swift_destroy_boxed_opaque_existential_1(v60);
          }

          v55 = sub_24B4590AC();
          v31 = v46;
          (*(v53 + 8))(v24, v26);
          (*(v45 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v32 = 2;
        }

        v25 = v58;
        goto LABEL_21;
      }

      if (v29)
      {
        LOBYTE(v65) = 1;
        sub_24B405BF8();
        v42 = v48;
        sub_24B45905C();
        if (!v42)
        {
          v43 = v49;
          v55 = sub_24B4590DC();
          (*(v52 + 8))(v9, v43);
          (*(v59 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v31 = 0;
          v32 = 0;
          goto LABEL_21;
        }
      }

      else
      {
        LOBYTE(v65) = 0;
        sub_24B405C4C();
        v30 = v48;
        sub_24B45905C();
        if (!v30)
        {
          (*(v50 + 8))(v22, v47);
          (*(v59 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v55 = 0;
          v31 = 0;
          v32 = 3;
LABEL_21:
          *v25 = v55;
          *(v25 + 8) = v31;
          *(v25 + 16) = v32;
          return __swift_destroy_boxed_opaque_existential_1(v60);
        }
      }
    }

    v37 = v59;
LABEL_10:
    (*(v37 + 8))(v18, v14);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v60);
}

uint64_t sub_24B40646C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE84C8, &qword_24B45DE98);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AwardToastKind.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) != 2)
    {
      v2 = 0;
      return MEMORY[0x24C2403C0](v2);
    }

    v3 = v0[1];
    MEMORY[0x24C2403C0](3);

    return sub_24B458E6C();
  }

  else
  {
    if (!*(v0 + 16))
    {
      MEMORY[0x24C2403C0](1);
      v2 = v1;
      return MEMORY[0x24C2403C0](v2);
    }

    MEMORY[0x24C2403C0](2);
    result = MEMORY[0x24C2403C0](*(v1 + 16));
    v5 = *(v1 + 16);
    if (v5)
    {
      v6 = (v1 + 40);
      do
      {
        v7 = *(v6 - 1);
        v8 = *v6;

        sub_24B458E6C();

        v6 += 2;
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

uint64_t AwardToastKind.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_24B45922C();
  AwardToastKind.hash(into:)();
  return sub_24B45926C();
}

uint64_t sub_24B406660()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_24B45922C();
  AwardToastKind.hash(into:)();
  return sub_24B45926C();
}

uint64_t sub_24B4066B8()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_24B45922C();
  AwardToastKind.hash(into:)();
  return sub_24B45926C();
}

BOOL _s13FitnessAwards14AwardToastKindO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 1)
  {
    if (!*(a1 + 16))
    {
      if (!*(a2 + 16))
      {
        sub_24B3D810C(*a1, v3, 0);
        sub_24B3D810C(v5, v6, 0);
        return v2 == v5;
      }

      goto LABEL_22;
    }

    v15 = *a1;
    if (v7 == 1)
    {
      v11 = sub_24B40EB18(v2, *a2);
      sub_24B4070AC(v5, v6, 1);
      sub_24B4070AC(v2, v3, 1);
      sub_24B3D810C(v2, v3, 1);
      v12 = v5;
      v13 = v6;
      v14 = 1;
      goto LABEL_14;
    }

    goto LABEL_21;
  }

  if (v4 == 2)
  {
    v9 = *(a1 + 8);
    if (v7 != 2)
    {
LABEL_21:

LABEL_22:
      sub_24B4070AC(v5, v6, v7);
      sub_24B3D810C(v2, v3, v4);
      sub_24B3D810C(v5, v6, v7);
      return 0;
    }

    if (v2 != v5 || v3 != v6)
    {
      v11 = sub_24B4591AC();
      sub_24B4070AC(v5, v6, 2);
      sub_24B4070AC(v2, v3, 2);
      sub_24B3D810C(v2, v3, 2);
      v12 = v5;
      v13 = v6;
      v14 = 2;
LABEL_14:
      sub_24B3D810C(v12, v13, v14);
      return v11 & 1;
    }

    sub_24B4070AC(v2, v3, 2);
    sub_24B4070AC(v2, v3, 2);
    sub_24B3D810C(v2, v3, 2);
    v17 = v2;
    v18 = v3;
    v19 = 2;
  }

  else
  {
    if (v7 != 3 || (v6 | v5) != 0)
    {
      goto LABEL_22;
    }

    sub_24B3D810C(*a1, v3, 3);
    v17 = 0;
    v18 = 0;
    v19 = 3;
  }

  sub_24B3D810C(v17, v18, v19);
  return 1;
}

unint64_t sub_24B406910()
{
  result = qword_27EFE8518;
  if (!qword_27EFE8518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8518);
  }

  return result;
}

uint64_t sub_24B406964(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24B4069AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_24B4069F0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_24B406A6C()
{
  result = qword_27EFE8520;
  if (!qword_27EFE8520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8520);
  }

  return result;
}

unint64_t sub_24B406AC4()
{
  result = qword_27EFE8528;
  if (!qword_27EFE8528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8528);
  }

  return result;
}

unint64_t sub_24B406B1C()
{
  result = qword_27EFE8530;
  if (!qword_27EFE8530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8530);
  }

  return result;
}

unint64_t sub_24B406B74()
{
  result = qword_27EFE8538;
  if (!qword_27EFE8538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8538);
  }

  return result;
}

unint64_t sub_24B406BCC()
{
  result = qword_27EFE8540;
  if (!qword_27EFE8540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8540);
  }

  return result;
}

unint64_t sub_24B406C24()
{
  result = qword_27EFE8548;
  if (!qword_27EFE8548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8548);
  }

  return result;
}

unint64_t sub_24B406C7C()
{
  result = qword_27EFE8550;
  if (!qword_27EFE8550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8550);
  }

  return result;
}

unint64_t sub_24B406CD4()
{
  result = qword_27EFE8558;
  if (!qword_27EFE8558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8558);
  }

  return result;
}

unint64_t sub_24B406D2C()
{
  result = qword_27EFE8560;
  if (!qword_27EFE8560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8560);
  }

  return result;
}

unint64_t sub_24B406D84()
{
  result = qword_27EFE8568;
  if (!qword_27EFE8568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8568);
  }

  return result;
}

unint64_t sub_24B406DDC()
{
  result = qword_27EFE8570;
  if (!qword_27EFE8570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8570);
  }

  return result;
}

unint64_t sub_24B406E34()
{
  result = qword_27EFE8578;
  if (!qword_27EFE8578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8578);
  }

  return result;
}

unint64_t sub_24B406E8C()
{
  result = qword_27EFE8580;
  if (!qword_27EFE8580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8580);
  }

  return result;
}

unint64_t sub_24B406EE4()
{
  result = qword_27EFE8588;
  if (!qword_27EFE8588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8588);
  }

  return result;
}

uint64_t sub_24B406F38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7274537472617473 && a2 == 0xEB000000006B6165;
  if (v4 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6961746E69616DLL && a2 == 0xEE006B6165727453 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646573656C616F63 && a2 == 0xE800000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E7261457478656ELL && a2 == 0xEC000000656C6261)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B4591AC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24B4070AC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1 || a3 == 2)
  {
  }

  return result;
}

uint64_t sub_24B4070D0()
{
  if (*v0)
  {
    result = 0x6B6165727473;
  }

  else
  {
    result = 1818324839;
  }

  *v0;
  return result;
}

uint64_t sub_24B407100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1818324839 && a2 == 0xE400000000000000;
  if (v5 || (sub_24B4591AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B6165727473 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B4591AC();

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

uint64_t sub_24B4071D8(uint64_t a1)
{
  v2 = sub_24B407B44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B407214(uint64_t a1)
{
  v2 = sub_24B407B44();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24B407250()
{
  v1 = 0x73736572676F7270;
  if (*v0 != 1)
  {
    v1 = 1818324839;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_24B4072A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B407C40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4072D0(uint64_t a1)
{
  v2 = sub_24B407BEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B40730C(uint64_t a1)
{
  v2 = sub_24B407BEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B407348()
{
  v1 = 0x6261646E65747865;
  if (*v0 != 1)
  {
    v1 = 0x53747365676E6F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x654C6B6165727473;
  }
}

uint64_t sub_24B4073BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B407D64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4073E4(uint64_t a1)
{
  v2 = sub_24B407B98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B407420(uint64_t a1)
{
  v2 = sub_24B407B98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardProgress.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8590, &qword_24B45E590);
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8598, &qword_24B45E598);
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE85A0, &qword_24B45E5A0);
  v32 = *(v12 - 8);
  v13 = *(v32 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v27 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B407B44();
  sub_24B45928C();
  v17 = *v2;
  v18 = v2[1];
  v27[1] = v2[2];
  if (v2[4])
  {
    v40 = 1;
    sub_24B407B98();
    sub_24B45910C();
    v39 = 0;
    v20 = v30;
    v19 = v31;
    sub_24B45917C();
    if (!v19)
    {
      v38 = 1;
      sub_24B45915C();
      v37 = 2;
      sub_24B45917C();
      (*(v29 + 8))(v7, v20);
      return (*(v32 + 8))(v15, v12);
    }

    v21 = *(v29 + 8);
    v22 = v7;
    v23 = v20;
LABEL_8:
    v21(v22, v23);
    return (*(v32 + 8))(v15, v12);
  }

  v24 = v2[3];
  v36 = 0;
  sub_24B407BEC();
  sub_24B45910C();
  v35 = 0;
  v25 = v31;
  sub_24B45914C();
  if (v25)
  {
    v21 = *(v28 + 8);
    v22 = v11;
    v23 = v8;
    goto LABEL_8;
  }

  v34 = 1;
  sub_24B45916C();
  v33 = 2;
  sub_24B45916C();
  (*(v28 + 8))(v11, v8);
  return (*(v32 + 8))(v15, v12);
}

double AwardProgress.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24B407E90(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

double sub_24B407860@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24B407E90(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t AwardProgress.hash(into:)()
{
  v2 = *v0;
  v1 = *(v0 + 1);
  v3 = *(v0 + 2);
  if (v0[4])
  {
    MEMORY[0x24C2403C0](1);
    MEMORY[0x24C2403C0](*&v2);
    sub_24B45924C();
    return MEMORY[0x24C2403C0](v3);
  }

  else
  {
    v5 = v0[3];
    MEMORY[0x24C2403C0](0);
    sub_24B458E6C();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x24C2403E0](v6);
    v7 = 0.0;
    if (v5 != 0.0)
    {
      v7 = v5;
    }

    return MEMORY[0x24C2403E0](*&v7);
  }
}

uint64_t AwardProgress.hashValue.getter()
{
  sub_24B45922C();
  AwardProgress.hash(into:)();
  return sub_24B45926C();
}

uint64_t sub_24B4079A4()
{
  sub_24B45922C();
  AwardProgress.hash(into:)();
  return sub_24B45926C();
}

uint64_t sub_24B4079E8()
{
  sub_24B45922C();
  AwardProgress.hash(into:)();
  return sub_24B45926C();
}

uint64_t sub_24B407A24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s13FitnessAwards13AwardProgressO2eeoiySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t _s13FitnessAwards13AwardProgressO2eeoiySbAC_ACtFZ_0(double *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = a1[2];
  if (a1[4])
  {
    if (*(a2 + 32))
    {
      v7 = *(a2 + 16);
      v8 = (*&v4 == *a2) & ~(v5 ^ *(a2 + 8));
      if (*&v6 == v7)
      {
        return v8;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  if (*(a2 + 32))
  {
    return 0;
  }

  v10 = a1[3];
  v11 = a1[2];
  v13 = *(a2 + 16);
  v12 = *(a2 + 24);
  if (*&v4 == *a2 && v5 == *(a2 + 8))
  {
    if (v13 != v6)
    {
      return 0;
    }

    return v10 == v12;
  }

  v15 = sub_24B4591AC();
  result = 0;
  if ((v15 & 1) != 0 && v13 == v11)
  {
    return v10 == v12;
  }

  return result;
}

unint64_t sub_24B407B44()
{
  result = qword_2810E3608;
  if (!qword_2810E3608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E3608);
  }

  return result;
}

unint64_t sub_24B407B98()
{
  result = qword_2810E35D8;
  if (!qword_2810E35D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E35D8);
  }

  return result;
}

unint64_t sub_24B407BEC()
{
  result = qword_2810E35F0;
  if (!qword_2810E35F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E35F0);
  }

  return result;
}

uint64_t sub_24B407C40(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000024B466A10 == a2 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xE800000000000000 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1818324839 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_24B4591AC();

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

uint64_t sub_24B407D64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654C6B6165727473 && a2 == 0xEC0000006874676ELL;
  if (v4 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6261646E65747865 && a2 == 0xEA0000000000656CLL || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x53747365676E6F6CLL && a2 == 0xED00006B61657274)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B4591AC();

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

uint64_t sub_24B407E90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v46 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE85C0, &qword_24B45EA40);
  v49 = *(v47 - 8);
  v3 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  v5 = &v44 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE85C8, &qword_24B45EA48);
  v48 = *(v6 - 8);
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE85D0, &unk_24B45EA50);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_24B407B44();
  v17 = v50;
  sub_24B45927C();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  v18 = v6;
  v50 = v11;
  v19 = sub_24B4590FC();
  v20 = (2 * *(v19 + 16)) | 1;
  v52 = v19;
  v53 = v19 + 32;
  v54 = 0;
  v55 = v20;
  v21 = sub_24B3E3810();
  if (v21 == 2 || v54 != v55 >> 1)
  {
    v25 = sub_24B458FFC();
    swift_allocError();
    v27 = v26;
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0) + 48);
    *v27 = &type metadata for AwardProgress;
    sub_24B45906C();
    sub_24B458FEC();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
    swift_willThrow();
    (*(v50 + 8))(v14, v10);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  v56 = v21;
  if (v21)
  {
    v57 = 1;
    sub_24B407B98();
    sub_24B45905C();
    v22 = v50;
    v57 = 0;
    v23 = v47;
    v24 = sub_24B4590DC();
    v57 = 1;
    v38 = sub_24B4590BC();
    v45 = v24;
    v57 = 2;
    v39 = sub_24B4590DC();
    (*(v49 + 8))(v5, v23);
    (*(v22 + 8))(v14, v10);
    swift_unknownObjectRelease();
    v41 = v38 & 1;
    v42 = 0;
  }

  else
  {
    v57 = 0;
    sub_24B407BEC();
    v30 = v9;
    sub_24B45905C();
    v31 = v50;
    v32 = v10;
    v57 = 0;
    v33 = sub_24B4590AC();
    v41 = v34;
    v45 = v33;
    v57 = 1;
    sub_24B4590CC();
    v35 = v48;
    v37 = v36;
    v57 = 2;
    sub_24B4590CC();
    v42 = v40;
    (*(v35 + 8))(v30, v18);
    (*(v31 + 8))(v14, v32);
    swift_unknownObjectRelease();
    v39 = v37;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v51);
  v43 = v46;
  *v46 = v45;
  v43[1] = v41;
  v43[2] = v39;
  v43[3] = v42;
  *(v43 + 32) = v56 & 1;
  return result;
}

unint64_t sub_24B4084C8()
{
  result = qword_2810E35B0;
  if (!qword_2810E35B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E35B0);
  }

  return result;
}

uint64_t sub_24B40851C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24B408564(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_24B4085FC()
{
  result = qword_27EFE85A8;
  if (!qword_27EFE85A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE85A8);
  }

  return result;
}

unint64_t sub_24B408654()
{
  result = qword_27EFE85B0;
  if (!qword_27EFE85B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE85B0);
  }

  return result;
}

unint64_t sub_24B4086AC()
{
  result = qword_27EFE85B8;
  if (!qword_27EFE85B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE85B8);
  }

  return result;
}

unint64_t sub_24B408704()
{
  result = qword_2810E35E0;
  if (!qword_2810E35E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E35E0);
  }

  return result;
}

unint64_t sub_24B40875C()
{
  result = qword_2810E35E8;
  if (!qword_2810E35E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E35E8);
  }

  return result;
}

unint64_t sub_24B4087B4()
{
  result = qword_2810E35C8;
  if (!qword_2810E35C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E35C8);
  }

  return result;
}

unint64_t sub_24B40880C()
{
  result = qword_2810E35D0;
  if (!qword_2810E35D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E35D0);
  }

  return result;
}

unint64_t sub_24B408864()
{
  result = qword_2810E35F8;
  if (!qword_2810E35F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E35F8);
  }

  return result;
}

unint64_t sub_24B4088BC()
{
  result = qword_2810E3600;
  if (!qword_2810E3600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E3600);
  }

  return result;
}

uint64_t sub_24B408924()
{
  if (*v0)
  {
    result = 0x64656E7261656E75;
  }

  else
  {
    result = 0x64656E726165;
  }

  *v0;
  return result;
}

uint64_t sub_24B40895C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64656E726165 && a2 == 0xE600000000000000;
  if (v6 || (sub_24B4591AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64656E7261656E75 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B4591AC();

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

uint64_t sub_24B408A34(uint64_t a1)
{
  v2 = sub_24B408E58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B408A70(uint64_t a1)
{
  v2 = sub_24B408E58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B408AAC(uint64_t a1)
{
  v2 = sub_24B408F00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B408AE8(uint64_t a1)
{
  v2 = sub_24B408F00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B408B24(uint64_t a1)
{
  v2 = sub_24B408EAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B408B60(uint64_t a1)
{
  v2 = sub_24B408EAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardEarnedState.encode(to:)(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE85D8, &qword_24B45EA60);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE85E0, &qword_24B45EA68);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE85E8, &qword_24B45EA70);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B408E58();
  sub_24B45928C();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_24B408EAC();
    sub_24B45910C();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_24B408F00();
    sub_24B45910C();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

unint64_t sub_24B408E58()
{
  result = qword_27EFE85F0;
  if (!qword_27EFE85F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE85F0);
  }

  return result;
}

unint64_t sub_24B408EAC()
{
  result = qword_27EFE85F8;
  if (!qword_27EFE85F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE85F8);
  }

  return result;
}

unint64_t sub_24B408F00()
{
  result = qword_27EFE8600;
  if (!qword_27EFE8600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8600);
  }

  return result;
}

uint64_t sub_24B408F70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24B40902C(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t AwardEarnedState.hashValue.getter(char a1)
{
  sub_24B45922C();
  MEMORY[0x24C2403C0](a1 & 1);
  return sub_24B45926C();
}

uint64_t sub_24B40902C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8648, &qword_24B45EDE0);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8650, &qword_24B45EDE8);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8658, &unk_24B45EDF0);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B408E58();
  v15 = v32;
  sub_24B45927C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = sub_24B4590FC();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = sub_24B3E3810();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = sub_24B458FFC();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0) + 48);
    *v24 = &type metadata for AwardEarnedState;
    sub_24B45906C();
    sub_24B458FEC();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
    swift_willThrow();
    (*(v31 + 8))(v13, v21);
    swift_unknownObjectRelease();
    a1 = v32;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v19;
  if (v19)
  {
    v38 = 1;
    sub_24B408EAC();
    sub_24B45905C();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_24B408F00();
    sub_24B45905C();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v37 & 1;
}

unint64_t sub_24B4094EC()
{
  result = qword_27EFE8608;
  if (!qword_27EFE8608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8608);
  }

  return result;
}

unint64_t sub_24B409584()
{
  result = qword_27EFE8610;
  if (!qword_27EFE8610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8610);
  }

  return result;
}

unint64_t sub_24B4095DC()
{
  result = qword_27EFE8618;
  if (!qword_27EFE8618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8618);
  }

  return result;
}

unint64_t sub_24B409634()
{
  result = qword_27EFE8620;
  if (!qword_27EFE8620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8620);
  }

  return result;
}

unint64_t sub_24B40968C()
{
  result = qword_27EFE8628;
  if (!qword_27EFE8628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8628);
  }

  return result;
}

unint64_t sub_24B4096E4()
{
  result = qword_27EFE8630;
  if (!qword_27EFE8630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8630);
  }

  return result;
}

unint64_t sub_24B40973C()
{
  result = qword_27EFE8638;
  if (!qword_27EFE8638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8638);
  }

  return result;
}

unint64_t sub_24B409794()
{
  result = qword_27EFE8640;
  if (!qword_27EFE8640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8640);
  }

  return result;
}

__n128 AwardDetailFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for AwardDetailFeature() + 20);
  sub_24B45835C();
  result = *a1;
  v6 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v6;
  return result;
}

uint64_t type metadata accessor for AwardDetailFeature()
{
  result = qword_27EFE8680;
  if (!qword_27EFE8680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AwardDetailFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t *a2, void **a3, int a4)
{
  v200 = a3;
  v202 = a2;
  v5 = sub_24B45836C();
  v195 = *(v5 - 8);
  v196 = v5;
  v6 = *(v195 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v189 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = type metadata accessor for AwardDetailFeature();
  v197 = *(v194 - 8);
  v9 = *(v197 + 64);
  v10 = MEMORY[0x28223BE20](v194);
  v192 = &v189 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v193 = &v189 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7F60, &qword_24B45BCE0);
  v198 = *(v12 - 8);
  v199 = v12;
  v13 = *(v198 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v190 = &v189 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v189 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v189 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v189 - v22;
  State = type metadata accessor for AwardEarnedLoadState();
  v25 = *(*(State - 8) + 64);
  v26 = MEMORY[0x28223BE20](State);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v189 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v31 = MEMORY[0x28223BE20](v30);
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v189 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v189 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  MEMORY[0x28223BE20](v39);
  v41 = MEMORY[0x28223BE20](&v189 - v40);
  v42 = MEMORY[0x28223BE20](v41);
  v191 = a4;
  if (a4 > 3u)
  {
    switch(a4)
    {
      case 4u:
        v82 = *v202;
        v81 = v202[1];
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7EE0, &qword_24B45F8F0);
        v84 = v83[12];
        v85 = v83[16];
        v86 = v83[20];
        v87 = &v23[v83[24]];
        v204 = v82;
        v205 = v81;
        v206 = 1;
        sub_24B40C6A4();
        swift_bridgeObjectRetain_n();
        sub_24B458F9C();
        sub_24B458EFC();
        v88 = *MEMORY[0x277D04400];
        v89 = sub_24B458D4C();
        (*(*(v89 - 8) + 104))(&v23[v85], v88, v89);
        v90 = *MEMORY[0x277D043E0];
        v91 = sub_24B458D3C();
        (*(*(v91 - 8) + 104))(&v23[v86], v90, v91);
        v92 = v193;
        sub_24B40C7A0(v201, v193, type metadata accessor for AwardDetailFeature);
        v93 = (*(v197 + 80) + 16) & ~*(v197 + 80);
        v94 = swift_allocObject();
        sub_24B40C808(v92, v94 + v93);
        v95 = (v94 + ((v9 + v93 + 7) & 0xFFFFFFFFFFFFFFF8));
        *v95 = v82;
        v95[1] = v81;
        *v87 = &unk_24B45EE38;
        *(v87 + 1) = v94;
        v97 = v198;
        v96 = v199;
        (*(v198 + 104))(v23, *MEMORY[0x277D043B0], v199);
        v71 = v200;
        v72 = *v200;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_24B3F1348(0, v72[2] + 1, 1, v72);
        }

        v99 = v72[2];
        v98 = v72[3];
        if (v99 >= v98 >> 1)
        {
          v72 = sub_24B3F1348(v98 > 1, v99 + 1, 1, v72);
        }

        v72[2] = v99 + 1;
        result = (*(v97 + 32))(v72 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v99, v23, v96);
        goto LABEL_30;
      case 5u:
        v102 = *v202;
        v101 = v202[1];
        v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7EE0, &qword_24B45F8F0);
        v104 = v103[12];
        v105 = v103[16];
        v106 = v103[20];
        v107 = &v18[v103[24]];
        v204 = v102;
        v205 = v101;
        v206 = 2;
        sub_24B40C6A4();
        swift_bridgeObjectRetain_n();
        sub_24B458F9C();
        sub_24B458EFC();
        v108 = *MEMORY[0x277D04400];
        v109 = sub_24B458D4C();
        (*(*(v109 - 8) + 104))(&v18[v105], v108, v109);
        v110 = v192;
        sub_24B40C7A0(v201, v192, type metadata accessor for AwardDetailFeature);
        v111 = (*(v197 + 80) + 32) & ~*(v197 + 80);
        v112 = swift_allocObject();
        *(v112 + 16) = v102;
        *(v112 + 24) = v101;
        sub_24B40C808(v110, v112 + v111);
        *v107 = &unk_24B45EE18;
        *(v107 + 1) = v112;
        v113 = *MEMORY[0x277D043E8];
        v114 = sub_24B458D3C();
        (*(*(v114 - 8) + 104))(&v18[v106], v113, v114);
        v116 = v198;
        v115 = v199;
        (*(v198 + 104))(v18, *MEMORY[0x277D043B0], v199);
        v71 = v200;
        v72 = *v200;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_24B3F1348(0, v72[2] + 1, 1, v72);
        }

        v118 = v72[2];
        v117 = v72[3];
        if (v118 >= v117 >> 1)
        {
          v72 = sub_24B3F1348(v117 > 1, v118 + 1, 1, v72);
        }

        v72[2] = v118 + 1;
        result = (*(v116 + 32))(v72 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v118, v18, v115);
        goto LABEL_30;
      case 6u:
        v50 = v43;
        v51 = v47;
        v52 = v202;
        v54 = *v202;
        v53 = v202[1];
        v55 = v48;
        v56 = *(type metadata accessor for AwardDetailState() + 28);
        sub_24B40C7A0(v52 + v56, v55, type metadata accessor for AwardEarnedLoadState);
        v197 = v55;
        sub_24B40C7A0(v55, v29, type metadata accessor for AwardEarnedLoadState);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

        sub_24B400E14(v29);
        if (EnumCaseMultiPayload == 2)
        {
          sub_24B400E14(v52 + v56);
          (*(v195 + 16))(v52 + v56, v201 + *(v194 + 20), v196);
          swift_storeEnumTagMultiPayload();
          v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7EE0, &qword_24B45F8F0);
          v59 = v58[12];
          v60 = v58[16];
          v61 = v58[20];
          v62 = v190;
          v63 = &v190[v58[24]];
          v204 = v54;
          v205 = v53;
          v206 = 3;
          sub_24B40C6A4();

          sub_24B458F9C();
          sub_24B458EFC();
          v64 = swift_allocObject();
          *(v64 + 16) = v54;
          *(v64 + 24) = v53;
          *v63 = &unk_24B45EE08;
          *(v63 + 1) = v64;
          v65 = *MEMORY[0x277D043F8];
          v66 = sub_24B458D4C();
          (*(*(v66 - 8) + 104))(&v62[v60], v65, v66);
          v67 = *MEMORY[0x277D043E8];
          v68 = sub_24B458D3C();
          (*(*(v68 - 8) + 104))(&v62[v61], v67, v68);
          v70 = v198;
          v69 = v199;
          (*(v198 + 104))(v62, *MEMORY[0x277D043B0], v199);
          v71 = v200;
          v72 = *v200;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v72 = sub_24B3F1348(0, v72[2] + 1, 1, v72);
          }

          v73 = v197;
          v75 = v72[2];
          v74 = v72[3];
          v76 = v75 + 1;
          if (v75 >= v74 >> 1)
          {
            v72 = sub_24B3F1348(v74 > 1, v75 + 1, 1, v72);
            v73 = v197;
          }

LABEL_29:
          sub_24B400E14(v73);
          v72[2] = v76;
          result = (*(v70 + 32))(v72 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v75, v62, v69);
LABEL_30:
          *v71 = v72;
          return result;
        }

        if (qword_2810E3610 != -1)
        {
          swift_once();
        }

        v172 = sub_24B45847C();
        __swift_project_value_buffer(v172, qword_2810E3618);
        v173 = v197;
        sub_24B40C7A0(v197, v50, type metadata accessor for AwardEarnedLoadState);

        v174 = sub_24B45845C();
        v175 = sub_24B458F4C();

        if (os_log_type_enabled(v174, v175))
        {
          v176 = swift_slowAlloc();
          v177 = swift_slowAlloc();
          v204 = v177;
          *v176 = 136315394;
          v178 = sub_24B3F17BC(v54, v53, &v204);

          *(v176 + 4) = v178;
          *(v176 + 12) = 2080;
          sub_24B40C7A0(v50, v51, type metadata accessor for AwardEarnedLoadState);
          v179 = sub_24B458E4C();
          v181 = v180;
          sub_24B400E14(v50);
          v182 = sub_24B3F17BC(v179, v181, &v204);

          *(v176 + 14) = v182;
          _os_log_impl(&dword_24B3CE000, v174, v175, "[AwardDetailFeature] View appeared for %s but load state was %s, returning.", v176, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C2408A0](v177, -1, -1);
          MEMORY[0x24C2408A0](v176, -1, -1);
        }

        else
        {

          sub_24B400E14(v50);
        }

        v80 = v173;
        return sub_24B400E14(v80);
    }

LABEL_31:
    v137 = v45;
    v201 = v42;
    v138 = &v189 - v46;
    v197 = v47;
    v139 = v202;
    v141 = *v202;
    v140 = v202[1];
    if (qword_2810E3610 != -1)
    {
      swift_once();
    }

    v142 = sub_24B45847C();
    __swift_project_value_buffer(v142, qword_2810E3618);

    v143 = sub_24B45845C();
    v144 = sub_24B458F4C();

    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v204 = v146;
      *v145 = 136315394;
      *(v145 + 4) = sub_24B3F17BC(v141, v140, &v204);
      *(v145 + 12) = 2080;
      v203 = v191 & 1;
      v147 = sub_24B458E4C();
      v149 = sub_24B3F17BC(v147, v148, &v204);

      *(v145 + 14) = v149;
      _os_log_impl(&dword_24B3CE000, v143, v144, "[AwardDetailFeature] (%s) Earned state fetched: %s", v145, 0x16u);
      swift_arrayDestroy();
      v150 = v146;
      v139 = v202;
      MEMORY[0x24C2408A0](v150, -1, -1);
      MEMORY[0x24C2408A0](v145, -1, -1);
    }

    v151 = *(type metadata accessor for AwardDetailState() + 28);
    sub_24B40C7A0(v139 + v151, v138, type metadata accessor for AwardEarnedLoadState);
    sub_24B40C7A0(v138, v137, type metadata accessor for AwardEarnedLoadState);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_24B400E14(v138);
      (*(v195 + 8))(v137, v196);
      sub_24B400E14(v139 + v151);
      *(v139 + v151) = v191 & 1;
      return swift_storeEnumTagMultiPayload();
    }

    sub_24B400E14(v137);
    v152 = v201;
    sub_24B40C7A0(v138, v201, type metadata accessor for AwardEarnedLoadState);
    v153 = sub_24B45845C();
    v154 = sub_24B458F4C();
    if (os_log_type_enabled(v153, v154))
    {
      v155 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      v204 = v156;
      *v155 = 136315138;
      sub_24B40C7A0(v152, v197, type metadata accessor for AwardEarnedLoadState);
      v157 = sub_24B458E4C();
      v159 = v158;
      sub_24B400E14(v152);
      v160 = sub_24B3F17BC(v157, v159, &v204);

      *(v155 + 4) = v160;
      _os_log_impl(&dword_24B3CE000, v153, v154, "[AwardDetailFeature] Current state is %s, skipping .fetched update", v155, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v156);
      MEMORY[0x24C2408A0](v156, -1, -1);
      MEMORY[0x24C2408A0](v155, -1, -1);
    }

    else
    {

      sub_24B400E14(v152);
    }

    v80 = v138;
    return sub_24B400E14(v80);
  }

  if (a4 == 2)
  {
    v119 = v44;
    v197 = v47;
    v120 = v202;
    v122 = *v202;
    v121 = v202[1];
    v123 = v49;
    v124 = *(type metadata accessor for AwardDetailState() + 28);
    sub_24B40C7A0(v120 + v124, v123, type metadata accessor for AwardEarnedLoadState);
    v193 = v123;
    sub_24B40C7A0(v123, v34, type metadata accessor for AwardEarnedLoadState);
    v125 = swift_getEnumCaseMultiPayload();

    sub_24B400E14(v34);
    if (v125 == 2)
    {
      sub_24B400E14(v120 + v124);
      (*(v195 + 16))(v120 + v124, v201 + *(v194 + 20), v196);
      swift_storeEnumTagMultiPayload();
      v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7EE0, &qword_24B45F8F0);
      v127 = v126[12];
      v128 = v126[16];
      v129 = v126[20];
      v62 = v21;
      v130 = &v21[v126[24]];
      v204 = v122;
      v205 = v121;
      v206 = 0;
      sub_24B40C6A4();

      sub_24B458F9C();
      sub_24B458EFC();
      v131 = swift_allocObject();
      *(v131 + 16) = v122;
      *(v131 + 24) = v121;
      *v130 = &unk_24B45EE28;
      *(v130 + 1) = v131;
      v132 = *MEMORY[0x277D043F8];
      v133 = sub_24B458D4C();
      (*(*(v133 - 8) + 104))(&v62[v128], v132, v133);
      v134 = *MEMORY[0x277D043E8];
      v135 = sub_24B458D3C();
      (*(*(v135 - 8) + 104))(&v62[v129], v134, v135);
      v70 = v198;
      v69 = v199;
      (*(v198 + 104))(v62, *MEMORY[0x277D043B0], v199);
      v71 = v200;
      v72 = *v200;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = sub_24B3F1348(0, v72[2] + 1, 1, v72);
      }

      v73 = v193;
      v75 = v72[2];
      v136 = v72[3];
      v76 = v75 + 1;
      if (v75 >= v136 >> 1)
      {
        v72 = sub_24B3F1348(v136 > 1, v75 + 1, 1, v72);
        v73 = v193;
      }

      goto LABEL_29;
    }

    if (qword_2810E3610 != -1)
    {
      swift_once();
    }

    v161 = sub_24B45847C();
    __swift_project_value_buffer(v161, qword_2810E3618);
    v162 = v193;
    sub_24B40C7A0(v193, v119, type metadata accessor for AwardEarnedLoadState);

    v163 = sub_24B45845C();
    v164 = sub_24B458F4C();

    if (os_log_type_enabled(v163, v164))
    {
      v165 = swift_slowAlloc();
      v166 = swift_slowAlloc();
      v204 = v166;
      *v165 = 136315394;
      v167 = sub_24B3F17BC(v122, v121, &v204);

      *(v165 + 4) = v167;
      *(v165 + 12) = 2080;
      sub_24B40C7A0(v119, v197, type metadata accessor for AwardEarnedLoadState);
      v168 = sub_24B458E4C();
      v170 = v169;
      sub_24B400E14(v119);
      v171 = sub_24B3F17BC(v168, v170, &v204);

      *(v165 + 14) = v171;
      _os_log_impl(&dword_24B3CE000, v163, v164, "[AwardDetailFeature] Notified of earned load state being cleared for %s but load state was %s, returning", v165, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C2408A0](v166, -1, -1);
      MEMORY[0x24C2408A0](v165, -1, -1);
    }

    else
    {

      sub_24B400E14(v119);
    }

    v80 = v162;
    return sub_24B400E14(v80);
  }

  if (a4 != 3)
  {
    goto LABEL_31;
  }

  v77 = v8;
  v78 = *(type metadata accessor for AwardDetailState() + 28);
  v79 = v202;
  sub_24B40C7A0(v202 + v78, v38, type metadata accessor for AwardEarnedLoadState);
  if (swift_getEnumCaseMultiPayload())
  {
    v80 = v38;
    return sub_24B400E14(v80);
  }

  v183 = v195;
  v184 = v77;
  v185 = v38;
  v186 = v196;
  (*(v195 + 32))(v77, v185, v196);
  v187 = *(v194 + 20);
  v188 = sub_24B45834C();
  result = (*(v183 + 8))(v184, v186);
  if (v188)
  {
    sub_24B400E14(v79 + v78);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_24B40AE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  sub_24B458EEC();
  v4[10] = sub_24B458EDC();
  v6 = sub_24B458EBC();
  v4[11] = v6;
  v4[12] = v5;

  return MEMORY[0x2822009F8](sub_24B40AEB4, v6, v5);
}

uint64_t sub_24B40AEB4()
{
  v1 = v0[7];
  v2 = v1[1];
  v8 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_24B40AFA8;
  v6 = v0[8];
  v5 = v0[9];

  return v8(v6, v5);
}

uint64_t sub_24B40AFA8(char a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(v4 + 139) = a1;
  *(v4 + 112) = v1;

  v7 = *(v3 + 96);
  v8 = *(v3 + 88);
  if (v1)
  {
    v9 = sub_24B40B45C;
  }

  else
  {
    v9 = sub_24B40B0F0;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24B40B0F0()
{
  v21 = v0;
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = sub_24B45847C();
  __swift_project_value_buffer(v2, qword_2810E3618);

  v3 = sub_24B45845C();
  v4 = sub_24B458F4C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 139);
  if (v5)
  {
    v8 = *(v0 + 64);
    v7 = *(v0 + 72);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315394;
    v11 = v6 & 1;
    *(v0 + 138) = v6 & 1;
    v12 = sub_24B458E4C();
    v14 = sub_24B3F17BC(v12, v13, &v20);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_24B3F17BC(v8, v7, &v20);
    _os_log_impl(&dword_24B3CE000, v3, v4, "[AwardDetailFeature] Sending .earnedStateFetched(%s) action for %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C2408A0](v10, -1, -1);
    MEMORY[0x24C2408A0](v9, -1, -1);
  }

  else
  {

    v11 = v6 & 1;
  }

  *(v0 + 137) = v11;
  v15 = *(MEMORY[0x277D043C8] + 4);
  v16 = swift_task_alloc();
  *(v0 + 120) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8698, &unk_24B45EFE0);
  *v16 = v0;
  v16[1] = sub_24B40B33C;
  v18 = *(v0 + 48);

  return MEMORY[0x282159B08](v0 + 137, v17);
}

uint64_t sub_24B40B33C()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v6 = *v0;

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_24B3F0F48, v4, v3);
}

uint64_t sub_24B40B45C()
{
  v23 = v0;
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 72);
  v3 = sub_24B45847C();
  __swift_project_value_buffer(v3, qword_2810E3618);

  MEMORY[0x24C2406E0](v1);
  v4 = sub_24B45845C();
  v5 = sub_24B458F4C();

  MEMORY[0x24C2406D0](v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 112);
    v8 = *(v0 + 64);
    v7 = *(v0 + 72);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_24B3F17BC(v8, v7, &v22);
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v12 = *(v0 + 16);
    v11 = *(v0 + 24);
    v13 = *(v0 + 32);
    v14 = sub_24B4591DC();
    v16 = sub_24B3F17BC(v14, v15, &v22);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_24B3CE000, v4, v5, "[AwardDetailFeature] Failed to fetch earned state for %s with error %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C2408A0](v10, -1, -1);
    MEMORY[0x24C2408A0](v9, -1, -1);
  }

  *(v0 + 136) = 3;
  v17 = *(MEMORY[0x277D043C8] + 4);
  v18 = swift_task_alloc();
  *(v0 + 128) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8698, &unk_24B45EFE0);
  *v18 = v0;
  v18[1] = sub_24B40B6B0;
  v20 = *(v0 + 48);

  return MEMORY[0x282159B08](v0 + 136, v19);
}

uint64_t sub_24B40B6B0()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v6 = *v0;

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_24B40B7D0, v4, v3);
}

uint64_t sub_24B40B7D0()
{
  v1 = v0[14];
  v2 = v0[10];

  MEMORY[0x24C2406D0](v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_24B40B840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_24B458EEC();
  v3[5] = sub_24B458EDC();
  v5 = sub_24B458EBC();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_24B40B8DC, v5, v4);
}

uint64_t sub_24B40B8DC()
{
  v15 = v0;
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_24B45847C();
  __swift_project_value_buffer(v2, qword_2810E3618);

  v3 = sub_24B45845C();
  v4 = sub_24B458F4C();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 24);
    v5 = *(v0 + 32);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_24B3F17BC(v6, v5, &v14);
    _os_log_impl(&dword_24B3CE000, v3, v4, "[AwardDetailFeature] Sending .fetchEarnedState(%s) action for earnedLoadStateCleared", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x24C2408A0](v8, -1, -1);
    MEMORY[0x24C2408A0](v7, -1, -1);
  }

  *(v0 + 72) = 4;
  v9 = *(MEMORY[0x277D043C8] + 4);
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8698, &unk_24B45EFE0);
  *v10 = v0;
  v10[1] = sub_24B40BAC8;
  v12 = *(v0 + 16);

  return MEMORY[0x282159B08](v0 + 72, v11);
}

uint64_t sub_24B40BAC8()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v6 = *v0;

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_24B40CDC0, v4, v3);
}

uint64_t sub_24B40BBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  sub_24B458EEC();
  v4[5] = sub_24B458EDC();
  v6 = sub_24B458EBC();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_24B40BC84, v6, v5);
}

uint64_t sub_24B40BC84()
{
  v16 = v0;
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_24B45847C();
  __swift_project_value_buffer(v2, qword_2810E3618);

  v3 = sub_24B45845C();
  v4 = sub_24B458F4C();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_24B3F17BC(v6, v5, &v15);
    _os_log_impl(&dword_24B3CE000, v3, v4, "[AwardDetailFeature] Refreshing suggested workouts canvas for %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x24C2408A0](v8, -1, -1);
    MEMORY[0x24C2408A0](v7, -1, -1);
  }

  v9 = v0[4];
  v10 = *(v9 + 24);
  v14 = (*(v9 + 16) + **(v9 + 16));
  v11 = *(*(v9 + 16) + 4);
  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_24B40BE9C;

  return v14();
}

uint64_t sub_24B40BE9C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 56);
  v6 = *(v2 + 48);
  if (v0)
  {
    v7 = sub_24B40C03C;
  }

  else
  {
    v7 = sub_24B40BFD8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24B40BFD8()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B40C03C()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_24B40C0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_24B458EEC();
  v3[5] = sub_24B458EDC();
  v5 = sub_24B458EBC();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_24B40C13C, v5, v4);
}

uint64_t sub_24B40C13C()
{
  v15 = v0;
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_24B45847C();
  __swift_project_value_buffer(v2, qword_2810E3618);

  v3 = sub_24B45845C();
  v4 = sub_24B458F4C();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 24);
    v5 = *(v0 + 32);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_24B3F17BC(v6, v5, &v14);
    _os_log_impl(&dword_24B3CE000, v3, v4, "[AwardDetailFeature] Sending .fetchEarnedState(%s) action on view appeared", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x24C2408A0](v8, -1, -1);
    MEMORY[0x24C2408A0](v7, -1, -1);
  }

  *(v0 + 72) = 4;
  v9 = *(MEMORY[0x277D043C8] + 4);
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8698, &unk_24B45EFE0);
  *v10 = v0;
  v10[1] = sub_24B40BAC8;
  v12 = *(v0 + 16);

  return MEMORY[0x282159B08](v0 + 72, v11);
}

uint64_t AwardDetailFeature.dispose(localState:sharedState:)(uint64_t a1)
{
  State = type metadata accessor for AwardEarnedLoadState();
  v3 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B45836C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(type metadata accessor for AwardDetailState() + 28);
  sub_24B40C7A0(a1 + v11, v5, type metadata accessor for AwardEarnedLoadState);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_24B400E14(v5);
  }

  (*(v7 + 32))(v10, v5, v6);
  v13 = *(type metadata accessor for AwardDetailFeature() + 20);
  v14 = sub_24B45834C();
  result = (*(v7 + 8))(v10, v6);
  if (v14)
  {
    sub_24B400E14(a1 + v11);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_24B40C4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  State = type metadata accessor for AwardEarnedLoadState();
  v6 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24B45836C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(type metadata accessor for AwardDetailState() + 28);
  sub_24B40C7A0(a2 + v14, v8, type metadata accessor for AwardEarnedLoadState);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_24B400E14(v8);
  }

  (*(v10 + 32))(v13, v8, v9);
  v16 = *(a3 + 20);
  v17 = sub_24B45834C();
  result = (*(v10 + 8))(v13, v9);
  if (v17)
  {
    sub_24B400E14(a2 + v14);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

unint64_t sub_24B40C6A4()
{
  result = qword_27EFE8660;
  if (!qword_27EFE8660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8660);
  }

  return result;
}

uint64_t sub_24B40C6F8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B3F2574;

  return sub_24B40C0A0(a1, v5, v4);
}

uint64_t sub_24B40C7A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B40C808(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AwardDetailFeature();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B40C86C(uint64_t a1)
{
  v4 = *(type metadata accessor for AwardDetailFeature() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B3F1E60;

  return sub_24B40BBE8(a1, v6, v7, v1 + v5);
}

uint64_t sub_24B40C958(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B3F2574;

  return sub_24B40B840(a1, v5, v4);
}

uint64_t sub_24B40CA00(uint64_t a1)
{
  v4 = *(type metadata accessor for AwardDetailFeature() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24B3F2574;

  return sub_24B40AE18(a1, v1 + v5, v7, v8);
}

unint64_t sub_24B40CB1C()
{
  result = qword_27EFE8668;
  if (!qword_27EFE8668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8668);
  }

  return result;
}

unint64_t sub_24B40CB74()
{
  result = qword_27EFE8670;
  if (!qword_27EFE8670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8670);
  }

  return result;
}

unint64_t sub_24B40CBCC()
{
  result = qword_27EFE8678;
  if (!qword_27EFE8678)
  {
    type metadata accessor for AwardDetailState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8678);
  }

  return result;
}

uint64_t sub_24B40CC4C()
{
  result = sub_24B45836C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24B40CCF0()
{
  result = qword_27EFE8690;
  if (!qword_27EFE8690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8690);
  }

  return result;
}

uint64_t sub_24B40CD44(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 != 2)
      {
        return 0;
      }
    }

    else if (a6 != 3)
    {
      return 0;
    }
  }

  else if (a3)
  {
    if (a6 != 1)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_24B4591AC();
  }
}

uint64_t sub_24B40CDC4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24B45922C();
  MEMORY[0x24C2403C0](0);
  sub_24B458E6C();
  return sub_24B45926C();
}

uint64_t sub_24B40CE24()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x24C2403C0](0);

  return sub_24B458E6C();
}

uint64_t sub_24B40CE78()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24B45922C();
  MEMORY[0x24C2403C0](0);
  sub_24B458E6C();
  return sub_24B45926C();
}

uint64_t sub_24B40CED4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24B4591AC();
  }
}

__n128 AchievementEnvironmentCacheMonitorFeature.init(environment:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t AchievementEnvironmentCacheMonitorFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t *a2, void **a3, _BYTE *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7F50, &qword_24B45BCD0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v89 - v11;
  State = type metadata accessor for AwardToastLoadState();
  v14 = *(*(State - 8) + 64);
  v15 = MEMORY[0x28223BE20](State);
  v16 = MEMORY[0x28223BE20](v15);
  v91 = v89 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v89 - v19;
  if (*a4)
  {
    v22 = *v4;
    v21 = v4[1];
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7EE0, &qword_24B45F8F0);
    v24 = v23[12];
    v25 = v23[16];
    v26 = v23[20];
    v27 = &v12[v23[24]];
    v92[0] = 0x726F74696E6F6DLL;
    v92[1] = 0xE700000000000000;
    sub_24B40E210();
    sub_24B458F9C();
    sub_24B458EFC();
    v28 = *MEMORY[0x277D043F0];
    v29 = sub_24B458D4C();
    (*(*(v29 - 8) + 104))(&v12[v25], v28, v29);
    v30 = *MEMORY[0x277D043E0];
    v31 = sub_24B458D3C();
    (*(*(v31 - 8) + 104))(&v12[v26], v30, v31);
    v32 = swift_allocObject();
    *(v32 + 16) = v22;
    *(v32 + 24) = v21;
    *v27 = &unk_24B45EFF8;
    *(v27 + 1) = v32;
    (*(v9 + 104))(v12, *MEMORY[0x277D043B0], v8);
    v33 = *a3;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_24B3F136C(0, v33[2] + 1, 1, v33);
    }

    v35 = v33[2];
    v34 = v33[3];
    if (v35 >= v34 >> 1)
    {
      v33 = sub_24B3F136C(v34 > 1, v35 + 1, 1, v33);
    }

    v33[2] = v35 + 1;
    result = (*(v9 + 32))(v33 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v35, v12, v8);
    *a3 = v33;
  }

  else
  {
    v89[0] = v18;
    v37 = *a2;
    if (qword_2810E3610 != -1)
    {
      swift_once();
    }

    v38 = sub_24B45847C();
    __swift_project_value_buffer(v38, qword_2810E3618);

    v39 = sub_24B45845C();
    v40 = sub_24B458F4C();

    v41 = os_log_type_enabled(v39, v40);
    v90 = v20;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v92[0] = v43;
      *v42 = 136315138;
      type metadata accessor for AwardEarnedLoadState();
      v44 = sub_24B458D7C();
      v46 = sub_24B3F17BC(v44, v45, v92);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_24B3CE000, v39, v40, "[AchievementEnvironmentCacheMonitor] Clearing previous earned load states %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x24C2408A0](v43, -1, -1);
      MEMORY[0x24C2408A0](v42, -1, -1);
    }

    v47 = a2[1];

    v48 = sub_24B45845C();
    v49 = sub_24B458F4C();

    v50 = os_log_type_enabled(v48, v49);
    v89[2] = v47;
    if (v50)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v92[0] = v52;
      *v51 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8090, &qword_24B45C2C0);
      v53 = sub_24B458D7C();
      v55 = sub_24B3F17BC(v53, v54, v92);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_24B3CE000, v48, v49, "[AchievementEnvironmentCacheMonitor] Clearing previous image load states %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x24C2408A0](v52, -1, -1);
      MEMORY[0x24C2408A0](v51, -1, -1);
    }

    v56 = a2[2];

    v57 = sub_24B45845C();
    v58 = sub_24B458F4C();

    v59 = os_log_type_enabled(v57, v58);
    v89[3] = v37;
    v89[1] = v56;
    if (v59)
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v92[0] = v61;
      *v60 = 136315138;
      type metadata accessor for AwardProgressLoadState();
      v62 = sub_24B458D7C();
      v64 = sub_24B3F17BC(v62, v63, v92);

      *(v60 + 4) = v64;
      _os_log_impl(&dword_24B3CE000, v57, v58, "[AchievementEnvironmentCacheMonitor] Clearing previous progress load states %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x24C2408A0](v61, -1, -1);
      MEMORY[0x24C2408A0](v60, -1, -1);
    }

    v65 = a2[3];

    v66 = sub_24B45845C();
    v67 = sub_24B458F4C();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v92[0] = v69;
      *v68 = 136315138;
      v70 = sub_24B458D7C();
      v72 = sub_24B3F17BC(v70, v71, v92);

      *(v68 + 4) = v72;
      _os_log_impl(&dword_24B3CE000, v66, v67, "[AchievementEnvironmentCacheMonitor] Clearing previous suggested workout load states %s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v69);
      MEMORY[0x24C2408A0](v69, -1, -1);
      MEMORY[0x24C2408A0](v68, -1, -1);
    }

    v73 = v90;
    v74 = v91;
    v75 = *(type metadata accessor for AchievementEnvironmentCacheMonitorState() + 32);
    sub_24B3D1D24(a2 + v75, v73);
    sub_24B3D1D24(v73, v74);
    v76 = sub_24B45845C();
    v77 = sub_24B458F4C();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v92[0] = v79;
      *v78 = 136315138;
      sub_24B3D1D24(v74, v89[0]);
      v80 = sub_24B458E4C();
      v82 = v81;
      sub_24B3D1D88(v74);
      v83 = sub_24B3F17BC(v80, v82, v92);
      v73 = v90;

      *(v78 + 4) = v83;
      _os_log_impl(&dword_24B3CE000, v76, v77, "[AchievementEnvironmentCacheMonitor] Clearing previous toast load state %s", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v79);
      MEMORY[0x24C2408A0](v79, -1, -1);
      MEMORY[0x24C2408A0](v78, -1, -1);
    }

    else
    {

      sub_24B3D1D88(v74);
    }

    v84 = MEMORY[0x277D84F90];
    v85 = sub_24B3FA5A8(MEMORY[0x277D84F90]);

    *a2 = v85;
    v86 = sub_24B3FA790(v84);

    a2[1] = v86;
    v87 = sub_24B3FA894(v84);

    a2[2] = v87;
    v88 = sub_24B3FAA7C(v84);
    sub_24B3D1D88(v73);

    a2[3] = v88;
    sub_24B3D1D88(a2 + v75);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_24B40D864(uint64_t a1, int *a2)
{
  v2[12] = a1;
  v2[13] = sub_24B458EEC();
  v2[14] = sub_24B458EDC();
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  v2[15] = v5;
  *v5 = v2;
  v5[1] = sub_24B40D980;

  return v7(v2 + 7);
}

uint64_t sub_24B40D980()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v11 = *v1;
  v3[16] = v2;

  v8 = sub_24B458EBC();
  v3[17] = v8;
  v3[18] = v7;
  if (v2)
  {
    v9 = sub_24B3FA440;
  }

  else
  {
    v9 = sub_24B40DAE0;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24B40DAE0()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B458F1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[13];
  v7 = sub_24B458EDC();
  v0[19] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_24B40DCB8;
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 22, v7, v11);
}

uint64_t sub_24B40DCB8()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[19];

    v6 = v2[17];
    v7 = v2[18];

    return MEMORY[0x2822009F8](sub_24B40DDCC, v6, v7);
  }

  return result;
}

uint64_t sub_24B40DDCC()
{
  v17 = v0;
  if (*(v0 + 176) == 1)
  {
    v1 = *(v0 + 112);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    if (qword_2810E3610 != -1)
    {
      swift_once();
    }

    v4 = sub_24B45847C();
    __swift_project_value_buffer(v4, qword_2810E3618);
    v5 = sub_24B45845C();
    v6 = sub_24B458F4C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v16 = v8;
      *v7 = 136315138;
      v9 = sub_24B458E4C();
      v11 = sub_24B3F17BC(v9, v10, &v16);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_24B3CE000, v5, v6, "[AchievementEnvironmentCacheMonitor] Received updated achievement environment cache (%s) - clearing cached awards data.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x24C2408A0](v8, -1, -1);
      MEMORY[0x24C2408A0](v7, -1, -1);
    }

    *(v0 + 177) = 0;
    v12 = *(MEMORY[0x277D043C8] + 4);
    v13 = swift_task_alloc();
    *(v0 + 168) = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE86A0, &qword_24B45F158);
    *v13 = v0;
    v13[1] = sub_24B40E00C;
    v15 = *(v0 + 96);

    return MEMORY[0x282159B08](v0 + 177, v14);
  }
}

uint64_t sub_24B40E00C()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v6 = *v0;

  v3 = *(v1 + 144);
  v4 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_24B40E12C, v4, v3);
}

uint64_t sub_24B40E12C()
{
  v1 = v0[13];
  v2 = sub_24B458EDC();
  v0[19] = v2;
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_24B40DCB8;
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 22, v2, v6);
}

unint64_t sub_24B40E210()
{
  result = qword_2810E28F8;
  if (!qword_2810E28F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E28F8);
  }

  return result;
}

uint64_t sub_24B40E264(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B3F1E60;

  return sub_24B40D864(a1, v5);
}

unint64_t sub_24B40E310()
{
  result = qword_2810E2900;
  if (!qword_2810E2900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2900);
  }

  return result;
}

unint64_t sub_24B40E368()
{
  result = qword_2810E2908;
  if (!qword_2810E2908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2908);
  }

  return result;
}

uint64_t sub_24B40E3BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_24B40E404(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24B40E454()
{
  result = qword_2810E28F0;
  if (!qword_2810E28F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E28F0);
  }

  return result;
}

uint64_t AwardsError.hashValue.getter()
{
  v1 = *v0;
  sub_24B45922C();
  MEMORY[0x24C2403C0](v1);
  return sub_24B45926C();
}

unint64_t sub_24B40E534()
{
  result = qword_27EFE86A8;
  if (!qword_27EFE86A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE86A8);
  }

  return result;
}

uint64_t static AwardSuggestedWorkoutsLoadState.== infix(_:_:)(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

  return sub_24B40E5E4(a1, a2);
}

uint64_t sub_24B40E5E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 64);
    for (i = (a2 + 64); ; i += 5)
    {
      v6 = *(v3 - 2);
      v5 = *(v3 - 1);
      v7 = *v3;
      v9 = *(i - 2);
      v8 = *(i - 1);
      v14 = *i;
      v10 = *(v3 - 4) == *(i - 4) && *(v3 - 3) == *(i - 3);
      if (!v10 && (sub_24B4591AC() & 1) == 0)
      {
        break;
      }

      v11 = v6 == v9 && v5 == v8;
      if (!v11 && (sub_24B4591AC() & 1) == 0)
      {
        break;
      }

      v12 = sub_24B40E74C(v7, v14);

      if ((v12 & 1) == 0)
      {
        break;
      }

      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_24B40E74C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v5 = 0;
    do
    {
      v7 = *(a1 + v5 + 48);
      v8 = *(a1 + v5 + 56);
      v9 = *(a1 + v5 + 64);
      v10 = *(a2 + v5 + 48);
      v11 = *(a2 + v5 + 56);
      v12 = *(a2 + v5 + 64);
      v13 = *(a1 + v5 + 32) == *(a2 + v5 + 32) && *(a1 + v5 + 40) == *(a2 + v5 + 40);
      if (!v13 && (sub_24B4591AC() & 1) == 0)
      {
        return 0;
      }

      if (v7 <= 3)
      {
        if (v7 > 1)
        {
          if (v7 == 2)
          {
            v15 = 0xD000000000000013;
            v14 = 0x800000024B466930;
            if (v10 <= 3)
            {
              goto LABEL_45;
            }
          }

          else
          {
            v14 = 0xE800000000000000;
            v15 = 0x7974696C61646F6DLL;
            if (v10 <= 3)
            {
              goto LABEL_45;
            }
          }
        }

        else if (v7)
        {
          v15 = 0x6169726F74696465;
          v14 = 0xED0000647261436CLL;
          if (v10 <= 3)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v14 = 0xE500000000000000;
          v15 = 0x6472617761;
          if (v10 <= 3)
          {
            goto LABEL_45;
          }
        }
      }

      else if (v7 <= 5)
      {
        if (v7 == 4)
        {
          v14 = 0xE800000000000000;
          v15 = 0x7473696C79616C70;
          if (v10 <= 3)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v14 = 0xE700000000000000;
          v15 = 0x6D6172676F7270;
          if (v10 <= 3)
          {
LABEL_45:
            if (v10 > 1)
            {
              if (v10 == 2)
              {
                v16 = 0x800000024B466930;
                if (v15 != 0xD000000000000013)
                {
                  goto LABEL_65;
                }
              }

              else
              {
                v16 = 0xE800000000000000;
                if (v15 != 0x7974696C61646F6DLL)
                {
                  goto LABEL_65;
                }
              }
            }

            else if (v10)
            {
              v16 = 0xED0000647261436CLL;
              if (v15 != 0x6169726F74696465)
              {
                goto LABEL_65;
              }
            }

            else
            {
              v16 = 0xE500000000000000;
              if (v15 != 0x6472617761)
              {
                goto LABEL_65;
              }
            }

            goto LABEL_63;
          }
        }
      }

      else if (v7 == 6)
      {
        v14 = 0xE300000000000000;
        v15 = 7367028;
        if (v10 <= 3)
        {
          goto LABEL_45;
        }
      }

      else if (v7 == 7)
      {
        v14 = 0xE700000000000000;
        v15 = 0x72656E69617274;
        if (v10 <= 3)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v14 = 0xE700000000000000;
        v15 = 0x74756F6B726F77;
        if (v10 <= 3)
        {
          goto LABEL_45;
        }
      }

      if (v10 <= 5)
      {
        if (v10 == 4)
        {
          v16 = 0xE800000000000000;
          if (v15 != 0x7473696C79616C70)
          {
            goto LABEL_65;
          }
        }

        else
        {
          v16 = 0xE700000000000000;
          if (v15 != 0x6D6172676F7270)
          {
            goto LABEL_65;
          }
        }
      }

      else if (v10 == 6)
      {
        v16 = 0xE300000000000000;
        if (v15 != 7367028)
        {
          goto LABEL_65;
        }
      }

      else if (v10 == 7)
      {
        v16 = 0xE700000000000000;
        if (v15 != 0x72656E69617274)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v16 = 0xE700000000000000;
        if (v15 != 0x74756F6B726F77)
        {
          goto LABEL_65;
        }
      }

LABEL_63:
      if (v14 == v16)
      {

        goto LABEL_66;
      }

LABEL_65:
      v17 = sub_24B4591AC();

      if ((v17 & 1) == 0)
      {
        return 0;
      }

LABEL_66:
      if (v9)
      {
        if (!v12)
        {
          return 0;
        }
      }

      else
      {
        if (v8 == v11)
        {
          v6 = v12;
        }

        else
        {
          v6 = 1;
        }

        if (v6)
        {
          return 0;
        }
      }

      v5 += 40;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_24B40EB18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_24B4591AC() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_24B40EBA8(uint64_t a1)
{
  v2 = sub_24B40F24C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B40EBE4(uint64_t a1)
{
  v2 = sub_24B40F24C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B40EC40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEB0000000073726FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B4591AC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B40ECCC(uint64_t a1)
{
  v2 = sub_24B40F2A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B40ED08(uint64_t a1)
{
  v2 = sub_24B40F2A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B40ED44(uint64_t a1)
{
  v2 = sub_24B40F2F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B40ED80(uint64_t a1)
{
  v2 = sub_24B40F2F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B40EDBC(uint64_t a1)
{
  v2 = sub_24B40F348();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B40EDF8(uint64_t a1)
{
  v2 = sub_24B40F348();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardSuggestedWorkoutsLoadState.encode(to:)(void *a1, uint64_t a2)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE86B0, &qword_24B45F230);
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v28 = &v24 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE86B8, &qword_24B45F238);
  v26 = *(v6 - 8);
  v27 = v6;
  v7 = *(v26 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE86C0, &qword_24B45F240);
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE86C8, &qword_24B45F248);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B40F24C();
  v20 = v31;
  sub_24B45928C();
  if (!v20)
  {
    v33 = 0;
    sub_24B40F348();
    sub_24B45910C();
    (*(v25 + 8))(v13, v10);
    return (*(v15 + 8))(v18, v14);
  }

  if (v20 == 1)
  {
    v34 = 1;
    sub_24B40F2F4();
    sub_24B45910C();
    (*(v26 + 8))(v9, v27);
    return (*(v15 + 8))(v18, v14);
  }

  v35 = 2;
  sub_24B40F2A0();
  v22 = v28;
  sub_24B45910C();
  v32 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE86E0, &qword_24B45F250);
  sub_24B4108F0(&qword_27EFE86E8, sub_24B3E1068);
  v23 = v30;
  sub_24B45918C();
  (*(v29 + 8))(v22, v23);
  return (*(v15 + 8))(v18, v14);
}

unint64_t sub_24B40F24C()
{
  result = qword_27EFE86D0;
  if (!qword_27EFE86D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE86D0);
  }

  return result;
}

unint64_t sub_24B40F2A0()
{
  result = qword_27EFE86D8;
  if (!qword_27EFE86D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE86D8);
  }

  return result;
}

unint64_t sub_24B40F2F4()
{
  result = qword_27EFE86F0;
  if (!qword_27EFE86F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE86F0);
  }

  return result;
}

unint64_t sub_24B40F348()
{
  result = qword_27EFE86F8;
  if (!qword_27EFE86F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE86F8);
  }

  return result;
}

uint64_t sub_24B40F3B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_24B40FDC0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t AwardSuggestedWorkoutsLoadState.hash(into:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = 0;
    return MEMORY[0x24C2403C0](v3);
  }

  if (a2 == 1)
  {
    v3 = 1;
    return MEMORY[0x24C2403C0](v3);
  }

  MEMORY[0x24C2403C0](2);

  return sub_24B40F944(a1, a2);
}

uint64_t AwardSuggestedWorkoutsLoadState.hashValue.getter(uint64_t a1)
{
  sub_24B45922C();
  if (a1)
  {
    if (a1 != 1)
    {
      MEMORY[0x24C2403C0](2);
      sub_24B40F944(v4, a1);
      return sub_24B45926C();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x24C2403C0](v2);
  return sub_24B45926C();
}

uint64_t sub_24B40F4DC()
{
  v1 = *v0;
  sub_24B45922C();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x24C2403C0](2);
      sub_24B40F944(v4, v1);
      return sub_24B45926C();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x24C2403C0](v2);
  return sub_24B45926C();
}

uint64_t sub_24B40F550(uint64_t a1)
{
  v3 = *v1;
  if (!*v1)
  {
    v4 = 0;
    return MEMORY[0x24C2403C0](v4);
  }

  if (v3 == 1)
  {
    v4 = 1;
    return MEMORY[0x24C2403C0](v4);
  }

  MEMORY[0x24C2403C0](2);

  return sub_24B40F944(a1, v3);
}

uint64_t sub_24B40F5D0()
{
  v1 = *v0;
  sub_24B45922C();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x24C2403C0](2);
      sub_24B40F944(v4, v1);
      return sub_24B45926C();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x24C2403C0](v2);
  return sub_24B45926C();
}

uint64_t sub_24B40F640(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!v2)
  {
    return !v3;
  }

  if (v2 == 1)
  {
    return v3 == 1;
  }

  if (v3 < 2)
  {
    return 0;
  }

  return sub_24B40E5E4(v2, v3);
}

uint64_t sub_24B40F680(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v10 = 0xE500000000000000;
    v11 = 0xD000000000000013;
    v12 = 0x800000024B466930;
    if (a1 != 2)
    {
      v11 = 0x7974696C61646F6DLL;
      v12 = 0xE800000000000000;
    }

    v13 = 0x6169726F74696465;
    if (a1)
    {
      v10 = 0xED0000647261436CLL;
    }

    else
    {
      v13 = 0x6472617761;
    }

    if (a1 <= 1u)
    {
      v8 = v13;
    }

    else
    {
      v8 = v11;
    }

    if (v2 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = v12;
    }
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 7367028;
    v5 = 0x72656E69617274;
    if (a1 != 7)
    {
      v5 = 0x74756F6B726F77;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = 0xE700000000000000;
    }

    v6 = 0xE800000000000000;
    v7 = 0x7473696C79616C70;
    if (a1 != 4)
    {
      v7 = 0x6D6172676F7270;
      v6 = 0xE700000000000000;
    }

    if (a1 <= 5u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v4;
    }

    if (v2 <= 5)
    {
      v9 = v6;
    }

    else
    {
      v9 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v14 = 0x800000024B466930;
        if (v8 != 0xD000000000000013)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v14 = 0xE800000000000000;
        if (v8 != 0x7974696C61646F6DLL)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v14 = 0xED0000647261436CLL;
      if (v8 != 0x6169726F74696465)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = 0xE500000000000000;
      if (v8 != 0x6472617761)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v14 = 0xE800000000000000;
      if (v8 != 0x7473696C79616C70)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = 0xE700000000000000;
      if (v8 != 0x6D6172676F7270)
      {
LABEL_52:
        v15 = sub_24B4591AC();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v14 = 0xE300000000000000;
    if (v8 != 7367028)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v14 = 0xE700000000000000;
    if (a2 == 7)
    {
      if (v8 != 0x72656E69617274)
      {
        goto LABEL_52;
      }
    }

    else if (v8 != 0x74756F6B726F77)
    {
      goto LABEL_52;
    }
  }

  if (v9 != v14)
  {
    goto LABEL_52;
  }

  v15 = 1;
LABEL_53:

  return v15 & 1;
}

uint64_t sub_24B40F944(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x24C2403C0](v3);
  if (v3)
  {
    v5 = 0;
    do
    {
      v20 = v5;
      v6 = (a2 + 32 + 40 * v5);
      v8 = *v6;
      v7 = v6[1];
      v10 = v6[2];
      v9 = v6[3];
      v11 = v6[4];

      sub_24B458E6C();
      sub_24B458E6C();
      v12 = *(v11 + 16);
      MEMORY[0x24C2403C0](v12);
      if (v12)
      {
        v13 = (v11 + 64);
        do
        {
          v16 = *(v13 - 4);
          v15 = *(v13 - 3);
          v17 = *(v13 - 16);
          v18 = *(v13 - 1);
          v19 = *v13;

          sub_24B458E6C();
          sub_24B458E6C();

          if (v19)
          {
            sub_24B45924C();
          }

          else
          {
            sub_24B45924C();
            if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v14 = v18;
            }

            else
            {
              v14 = 0;
            }

            MEMORY[0x24C2403E0](v14);
          }

          v13 += 40;
          --v12;
        }

        while (v12);
      }

      v5 = v20 + 1;
    }

    while (v20 + 1 != v3);
  }

  return result;
}

uint64_t sub_24B40FBDC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x24C2403C0](v3);
  if (v3)
  {
    v5 = (a2 + 64);
    do
    {
      v7 = *(v5 - 4);
      v6 = *(v5 - 3);
      v8 = *(v5 - 16);
      v9 = *(v5 - 1);
      v10 = *v5;

      sub_24B458E6C();
      sub_24B458E6C();

      if (v10)
      {
        sub_24B45924C();
      }

      else
      {
        sub_24B45924C();
        if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v11 = v9;
        }

        else
        {
          v11 = 0;
        }

        MEMORY[0x24C2403E0](v11);
      }

      v5 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_24B40FDC0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8758, &qword_24B45F728);
  v3 = *(v2 - 8);
  v40 = v2;
  v41 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v43 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8760, &qword_24B45F730);
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8768, &qword_24B45F738);
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8770, &qword_24B45F740);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v45 = a1;
  v21 = __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_24B40F24C();
  v22 = v44;
  sub_24B45927C();
  if (!v22)
  {
    v37 = v10;
    v23 = v42;
    v24 = v43;
    v44 = v15;
    v25 = sub_24B4590FC();
    v26 = (2 * *(v25 + 16)) | 1;
    v46 = v25;
    v47 = v25 + 32;
    v48 = 0;
    v49 = v26;
    v27 = sub_24B3E3808();
    if (v27 == 3 || v48 != v49 >> 1)
    {
      v29 = sub_24B458FFC();
      swift_allocError();
      v31 = v30;
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7A40, &qword_24B45A4F0) + 48);
      *v31 = &type metadata for AwardSuggestedWorkoutsLoadState;
      v21 = v18;
      sub_24B45906C();
      sub_24B458FEC();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84160], v29);
      swift_willThrow();
      (*(v44 + 8))(v18, v14);
      swift_unknownObjectRelease();
    }

    else if (v27)
    {
      v28 = v44;
      if (v27 == 1)
      {
        LOBYTE(v50) = 1;
        sub_24B40F2F4();
        sub_24B45905C();
        (*(v38 + 8))(v9, v39);
        (*(v28 + 8))(v18, v14);
        swift_unknownObjectRelease();
        v21 = 1;
      }

      else
      {
        LOBYTE(v50) = 2;
        sub_24B40F2A0();
        sub_24B45905C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE86E0, &qword_24B45F250);
        sub_24B4108F0(&qword_27EFE8778, sub_24B3E25B4);
        v35 = v40;
        sub_24B4590EC();
        (*(v41 + 8))(v24, v35);
        (*(v28 + 8))(v18, v14);
        swift_unknownObjectRelease();
        v21 = v50;
      }
    }

    else
    {
      LOBYTE(v50) = 0;
      sub_24B40F348();
      sub_24B45905C();
      v34 = v44;
      (*(v23 + 8))(v13, v37);
      (*(v34 + 8))(v18, v14);
      swift_unknownObjectRelease();
      v21 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v45);
  return v21;
}

unint64_t sub_24B4103F8()
{
  result = qword_27EFE8700;
  if (!qword_27EFE8700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8700);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13FitnessAwards31AwardSuggestedWorkoutsLoadStateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24B410470(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B4104C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_24B410520(void *result, int a2)
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

unint64_t sub_24B410584()
{
  result = qword_27EFE8708;
  if (!qword_27EFE8708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8708);
  }

  return result;
}

unint64_t sub_24B4105DC()
{
  result = qword_27EFE8710;
  if (!qword_27EFE8710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8710);
  }

  return result;
}

unint64_t sub_24B410634()
{
  result = qword_27EFE8718;
  if (!qword_27EFE8718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8718);
  }

  return result;
}

unint64_t sub_24B41068C()
{
  result = qword_27EFE8720;
  if (!qword_27EFE8720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8720);
  }

  return result;
}

unint64_t sub_24B4106E4()
{
  result = qword_27EFE8728;
  if (!qword_27EFE8728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8728);
  }

  return result;
}

unint64_t sub_24B41073C()
{
  result = qword_27EFE8730;
  if (!qword_27EFE8730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8730);
  }

  return result;
}

unint64_t sub_24B410794()
{
  result = qword_27EFE8738;
  if (!qword_27EFE8738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8738);
  }

  return result;
}

unint64_t sub_24B4107EC()
{
  result = qword_27EFE8740;
  if (!qword_27EFE8740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8740);
  }

  return result;
}

unint64_t sub_24B410844()
{
  result = qword_27EFE8748;
  if (!qword_27EFE8748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8748);
  }

  return result;
}

unint64_t sub_24B41089C()
{
  result = qword_27EFE8750;
  if (!qword_27EFE8750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8750);
  }

  return result;
}

uint64_t sub_24B4108F0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE86E0, &qword_24B45F250);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AwardImageView.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = sub_24B3DB5A8;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

uint64_t AwardImageView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8780, &unk_24B45F8E0);
  v3 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v5 = v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8788, &qword_24B45F748);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = *(v1 + 16);
  sub_24B410D74(v26 - v8);
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v11;
  *(v13 + 32) = v12;
  v26[1] = v6;
  v14 = &v9[*(v6 + 36)];
  *v14 = sub_24B4119C4;
  v14[1] = v13;
  v14[2] = 0;
  v14[3] = 0;
  sub_24B3DE5D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8790, &qword_24B45F750);
  sub_24B4119D0();
  sub_24B45851C();
  swift_getKeyPath();
  sub_24B458D5C();

  v15 = v30;
  sub_24B45851C();
  swift_getKeyPath();
  sub_24B458D5C();

  if (*(v15 + 16) && (v16 = sub_24B4121B8(v28, v29), (v17 & 1) != 0))
  {
    v18 = v16;
    v19 = *(v15 + 56);
    State = type metadata accessor for AwardImageLoadState();
    v21 = *(State - 8);
    v26[0] = a1;
    v22 = v21;
    sub_24B412634(v19 + *(v21 + 72) * v18, v5);

    (*(v22 + 56))(v5, 0, 1, State);
  }

  else
  {

    v23 = type metadata accessor for AwardImageLoadState();
    (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
  }

  v24 = swift_allocObject();
  *(v24 + 16) = v10;
  *(v24 + 24) = v11;
  *(v24 + 32) = v12;
  sub_24B3DE5D8();
  sub_24B412274();
  sub_24B412558();
  sub_24B458ABC();

  sub_24B3DF4F0(v5, &qword_27EFE8780, &unk_24B45F8E0);
  return sub_24B3DF4F0(v9, &qword_27EFE8788, &qword_24B45F748);
}

uint64_t sub_24B410D74@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v55 = sub_24B458BAC();
  v54 = *(v55 - 8);
  v1 = *(v54 + 64);
  MEMORY[0x28223BE20](v55);
  v53 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_24B45830C();
  v56 = *(v58 - 8);
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v58);
  v57 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE87C0, &qword_24B45F8C0);
  v5 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v70 = (&v52 - v6);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE87C8, &qword_24B45F8C8);
  v7 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v66 = (&v52 - v8);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE87A8, &qword_24B45F7A8);
  v9 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v67 = &v52 - v10;
  v60 = sub_24B45860C();
  v59 = *(v60 - 8);
  v11 = *(v59 + 64);
  MEMORY[0x28223BE20](v60);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7B28, &qword_24B45A368);
  *&v62 = *(v65 - 8);
  v14 = *(v62 + 64);
  MEMORY[0x28223BE20](v65);
  v61 = &v52 - v15;
  State = type metadata accessor for AwardImageLoadState();
  *&v63 = *(State - 8);
  v17 = *(v63 + 64);
  MEMORY[0x28223BE20](State);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8790, &qword_24B45F750);
  sub_24B4119D0();
  sub_24B45851C();
  swift_getKeyPath();
  sub_24B458D5C();

  v20 = v82;
  sub_24B45851C();
  swift_getKeyPath();
  sub_24B458D5C();

  if (!*(v20 + 16) || (v21 = sub_24B4121B8(v80, v81), (v22 & 1) == 0))
  {

    *v70 = sub_24B458B1C();
    swift_storeEnumTagMultiPayload();
    sub_24B412410();
    return sub_24B45871C();
  }

  sub_24B412634(*(v20 + 56) + *(v63 + 72) * v21, v19);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v36 = sub_24B45836C();
    (*(*(v36 - 8) + 8))(v19, v36);
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_9:
    *&v77 = 0xD00000000000001BLL;
    *(&v77 + 1) = 0x800000024B466EF0;
    LOBYTE(v78) = 0;
    *(&v78 + 1) = MEMORY[0x277D84F90];
    sub_24B4585FC();
    v37 = MEMORY[0x277CE0BD8];
    v38 = MEMORY[0x277CE0BC8];
    v39 = v61;
    sub_24B458ACC();
    (*(v59 + 8))(v13, v60);
    v40 = v62;
    v41 = v65;
    (*(v62 + 16))(v66, v39, v65);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE87B0, &qword_24B45F7B0);
    *&v77 = v37;
    *(&v77 + 1) = v38;
    swift_getOpaqueTypeConformance2();
    sub_24B4124CC();
    v42 = v67;
    sub_24B45871C();
    sub_24B3D3A58(v42, v70);
    swift_storeEnumTagMultiPayload();
    sub_24B412410();
    sub_24B45871C();
    sub_24B3DF4F0(v42, &qword_27EFE87A8, &qword_24B45F7A8);
    return (*(v40 + 8))(v39, v41);
  }

  v24 = v56;
  (*(v56 + 32))(v57, v19, v58);
  sub_24B4582FC();
  v25 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v26 = sub_24B458E3C();

  v27 = [v25 initWithContentsOfFile_];

  v28 = MEMORY[0x277CE0BD8];
  v29 = MEMORY[0x277CE0BC8];
  if (v27)
  {
    v30 = v27;
    sub_24B458B8C();
    v31 = v54;
    v32 = v53;
    v33 = v55;
    (*(v54 + 104))(v53, *MEMORY[0x277CE0FE0], v55);
    v34 = sub_24B458BBC();

    (*(v31 + 8))(v32, v33);
    v72 = v34;
    v73 = 0x3FF0000000000000;
    v74 = 0;
    v75 = 0;
    v76 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8248, &qword_24B45D200);
    sub_24B3FF010();
    sub_24B45871C();
  }

  else
  {
    sub_24B4586CC();
    v72 = sub_24B45891C();
    v73 = v43;
    v74 = v44 & 1;
    v75 = v45;
    v76 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8248, &qword_24B45D200);
    sub_24B3FF010();
    sub_24B45871C();
  }

  v46 = v78;
  v47 = v79;
  v62 = v77;
  v63 = v78;
  v48 = v66;
  *v66 = v77;
  v48[1] = v46;
  *(v48 + 32) = v47;
  swift_storeEnumTagMultiPayload();
  v49 = v62;
  v50 = v63;
  sub_24B412924(v62, *(&v62 + 1), v63, *(&v63 + 1), v47);
  sub_24B412924(v49, *(&v49 + 1), v50, *(&v50 + 1), v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE87B0, &qword_24B45F7B0);
  *&v77 = v28;
  *(&v77 + 1) = v29;
  swift_getOpaqueTypeConformance2();
  sub_24B4124CC();
  v51 = v67;
  sub_24B45871C();
  sub_24B3D3A58(v51, v70);
  swift_storeEnumTagMultiPayload();
  sub_24B412410();
  sub_24B45871C();
  sub_24B412974(v49, *(&v49 + 1), v50, *(&v50 + 1), v47);
  sub_24B412974(v49, *(&v49 + 1), v50, *(&v50 + 1), v47);
  sub_24B3DF4F0(v51, &qword_27EFE87A8, &qword_24B45F7A8);
  return (*(v24 + 8))(v57, v58);
}

uint64_t sub_24B411868()
{
  v0 = type metadata accessor for AwardImageAction();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8790, &qword_24B45F750);
  sub_24B4119D0();
  sub_24B45851C();
  sub_24B45851C();
  swift_getKeyPath();
  sub_24B458D5C();

  *v3 = v5;
  swift_storeEnumTagMultiPayload();
  sub_24B458D6C();

  return sub_24B4127E8(v3, type metadata accessor for AwardImageAction);
}

uint64_t sub_24B4119C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_24B411868();
}

unint64_t sub_24B4119D0()
{
  result = qword_2810E27C8;
  if (!qword_2810E27C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8790, &qword_24B45F750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E27C8);
  }

  return result;
}

uint64_t sub_24B411A34(uint64_t a1, uint64_t a2, int a3)
{
  v53 = type metadata accessor for AwardImageAction();
  v6 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v54 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  State = type metadata accessor for AwardImageLoadState();
  v58 = *(State - 8);
  v9 = *(v58 + 64);
  MEMORY[0x28223BE20](State);
  v48 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE87B8, &qword_24B45F898);
  v11 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v13 = &v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8780, &unk_24B45F8E0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v55 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v47 - v19;
  MEMORY[0x28223BE20](v18);
  v59 = &v47 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8790, &qword_24B45F750);
  v23 = sub_24B4119D0();
  sub_24B45851C();
  swift_getKeyPath();
  sub_24B458D5C();

  v24 = v61;
  v25 = v62;
  v51 = a3;
  v49 = v23;
  v50 = a1;
  v52 = a2;
  v56 = v22;
  sub_24B45851C();
  swift_getKeyPath();
  sub_24B458D5C();

  v26 = *&v61;
  if (*(*&v61 + 16) && (v27 = sub_24B4121B8(v24, v25), (v28 & 1) != 0))
  {
    v30 = v58;
    v29 = v59;
    sub_24B412634(*(v26 + 56) + *(v58 + 72) * v27, v59);
    v31 = 0;
  }

  else
  {
    v31 = 1;
    v30 = v58;
    v29 = v59;
  }

  v32 = *(v30 + 56);
  v32(v29, v31, 1, State);
  swift_storeEnumTagMultiPayload();
  v32(v20, 0, 1, State);
  v33 = *(v57 + 48);
  sub_24B412778(v29, v13);
  sub_24B412778(v20, &v13[v33]);
  v34 = *(v30 + 48);
  if (v34(v13, 1, State) != 1)
  {
    v35 = v55;
    sub_24B412778(v13, v55);
    if (v34(&v13[v33], 1, State) != 1)
    {
      v36 = v48;
      sub_24B412848(&v13[v33], v48);
      StateO2eeoiySbAC_ACtFZ_0 = _s13FitnessAwards19AwardImageLoadStateO2eeoiySbAC_ACtFZ_0(v35, v36);
      sub_24B4127E8(v36, type metadata accessor for AwardImageLoadState);
      sub_24B3DF4F0(v20, &qword_27EFE8780, &unk_24B45F8E0);
      sub_24B4127E8(v35, type metadata accessor for AwardImageLoadState);
      sub_24B3DF4F0(v13, &qword_27EFE8780, &unk_24B45F8E0);
      if ((StateO2eeoiySbAC_ACtFZ_0 & 1) == 0)
      {
        return sub_24B3DF4F0(v29, &qword_27EFE8780, &unk_24B45F8E0);
      }

      goto LABEL_12;
    }

    sub_24B3DF4F0(v20, &qword_27EFE8780, &unk_24B45F8E0);
    sub_24B4127E8(v35, type metadata accessor for AwardImageLoadState);
LABEL_10:
    sub_24B3DF4F0(v13, &qword_27EFE87B8, &qword_24B45F898);
    return sub_24B3DF4F0(v29, &qword_27EFE8780, &unk_24B45F8E0);
  }

  sub_24B3DF4F0(v20, &qword_27EFE8780, &unk_24B45F8E0);
  if (v34(&v13[v33], 1, State) != 1)
  {
    goto LABEL_10;
  }

  sub_24B3DF4F0(v13, &qword_27EFE8780, &unk_24B45F8E0);
LABEL_12:
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v38 = sub_24B45847C();
  __swift_project_value_buffer(v38, qword_2810E3618);
  sub_24B3DE5D8();
  v39 = sub_24B45845C();
  v40 = sub_24B458F4C();
  sub_24B3DE5B8();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v60 = v42;
    *v41 = 136315138;
    sub_24B45851C();
    swift_getKeyPath();
    sub_24B458D5C();

    v43 = sub_24B3F17BC(*&v61, *&v62, &v60);

    *(v41 + 4) = v43;
    _os_log_impl(&dword_24B3CE000, v39, v40, "[AwardImageView] Load state was reset to idle for  %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x24C2408A0](v42, -1, -1);
    v44 = v41;
    v29 = v59;
    MEMORY[0x24C2408A0](v44, -1, -1);
  }

  sub_24B45851C();
  v45 = v54;
  *v54 = v24;
  *(v45 + 8) = v25;
  swift_storeEnumTagMultiPayload();
  sub_24B458D6C();

  sub_24B4127E8(v45, type metadata accessor for AwardImageAction);
  return sub_24B3DF4F0(v29, &qword_27EFE8780, &unk_24B45F8E0);
}

unint64_t sub_24B412140(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24B45922C();
  sub_24B458E6C();
  v6 = sub_24B45926C();

  return sub_24B4126C0(a1, a2, v6);
}

unint64_t sub_24B4121B8(double a1, double a2)
{
  v5 = *(v2 + 40);
  sub_24B45922C();
  sub_24B3DB298(a1, a2);
  v6 = sub_24B45926C();

  return sub_24B4128AC(v6, a1, a2);
}

uint64_t objectdestroy_2Tm_1()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_24B3DE5B8();

  return swift_deallocObject();
}

unint64_t sub_24B412274()
{
  result = qword_2810E28A8;
  if (!qword_2810E28A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8788, &qword_24B45F748);
    sub_24B412300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E28A8);
  }

  return result;
}

unint64_t sub_24B412300()
{
  result = qword_2810E27E0;
  if (!qword_2810E27E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8798, &qword_24B45F798);
    sub_24B412384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E27E0);
  }

  return result;
}

unint64_t sub_24B412384()
{
  result = qword_2810E2820;
  if (!qword_2810E2820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE87A0, &qword_24B45F7A0);
    sub_24B412410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2820);
  }

  return result;
}

unint64_t sub_24B412410()
{
  result = qword_2810E2840;
  if (!qword_2810E2840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE87A8, &qword_24B45F7A8);
    swift_getOpaqueTypeConformance2();
    sub_24B4124CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2840);
  }

  return result;
}

unint64_t sub_24B4124CC()
{
  result = qword_2810E2860;
  if (!qword_2810E2860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE87B0, &qword_24B45F7B0);
    sub_24B3FF010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2860);
  }

  return result;
}

unint64_t sub_24B412558()
{
  result = qword_2810E3018[0];
  if (!qword_2810E3018[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE8780, &unk_24B45F8E0);
    sub_24B4125DC();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810E3018);
  }

  return result;
}

unint64_t sub_24B4125DC()
{
  result = qword_2810E3058[0];
  if (!qword_2810E3058[0])
  {
    type metadata accessor for AwardImageLoadState();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810E3058);
  }

  return result;
}

uint64_t sub_24B412634(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for AwardImageLoadState();
  (*(*(State - 8) + 16))(a2, a1, State);
  return a2;
}

unint64_t sub_24B4126C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_24B4591AC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_24B412778(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8780, &unk_24B45F8E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B4127E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B412848(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for AwardImageLoadState();
  (*(*(State - 8) + 32))(a2, a1, State);
  return a2;
}

unint64_t sub_24B4128AC(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  result = a1 & ~v4;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 16 * result);
      v8 = v7[1];
      v9 = *v7 == a2;
      if (v8 == a3 && v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_24B412924(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5)
  {
    sub_24B3DF5A4(a1, a2, a3 & 1);
  }

  else
  {
  }
}

uint64_t sub_24B412974(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5)
  {
    sub_24B3DF478(a1, a2, a3 & 1);
  }

  else
  {
  }
}

__n128 AwardImageFeature.init(environment:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for AwardImageFeature() + 20);
  sub_24B45835C();
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t type metadata accessor for AwardImageFeature()
{
  result = qword_2810E3320;
  if (!qword_2810E3320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B412A50()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_24B45922C();
  MEMORY[0x24C2403C0](v5);
  sub_24B458E6C();
  sub_24B3DB298(v3, v4);
  return sub_24B45926C();
}

uint64_t sub_24B412AD0()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[2];
  v4 = v0[3];
  MEMORY[0x24C2403C0](*(v0 + 32));
  sub_24B458E6C();

  return sub_24B3DB298(v3, v4);
}

uint64_t sub_24B412B40()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_24B45922C();
  MEMORY[0x24C2403C0](v5);
  sub_24B458E6C();
  sub_24B3DB298(v3, v4);
  return sub_24B45926C();
}

BOOL sub_24B412BBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_24B4161E4(v5, v7);
}

uint64_t AwardImageFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t *a2, void **a3, uint64_t a4)
{
  v208 = a4;
  v206 = a3;
  v209 = a2;
  v192 = a1;
  State = type metadata accessor for AwardImageLoadState();
  v204 = *(State - 8);
  v205 = State;
  v5 = *(v204 + 64);
  v6 = MEMORY[0x28223BE20](State);
  v184 = &v183 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v195 = &v183 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v193 = &v183 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v185 = &v183 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v197 = &v183 - v15;
  MEMORY[0x28223BE20](v14);
  v202 = &v183 - v16;
  v188 = sub_24B45836C();
  v198 = *(v188 - 8);
  v17 = *(v198 + 64);
  MEMORY[0x28223BE20](v188);
  v201 = &v183 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8780, &unk_24B45F8E0);
  v19 = *(*(v196 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v196);
  v22 = &v183 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v187 = &v183 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v183 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v183 - v28;
  v30 = sub_24B45830C();
  v203 = *(v30 - 8);
  v31 = *(v203 + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v183 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v183 - v35;
  v186 = type metadata accessor for AwardImageFeature();
  v189 = *(v186 - 8);
  v37 = *(v189 + 64);
  MEMORY[0x28223BE20](v186);
  v190 = &v183 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7F40, &qword_24B45BCC0);
  v199 = *(v38 - 8);
  v200 = v38;
  v39 = *(v199 + 8);
  v40 = MEMORY[0x28223BE20](v38);
  v194 = &v183 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v191 = &v183 - v42;
  v43 = type metadata accessor for AwardImageAction();
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v43);
  v47 = (&v183 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v45);
  v49 = (&v183 - v48);
  sub_24B415B48(v208, &v183 - v48, type metadata accessor for AwardImageAction);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
      v82 = *v49;
      v83 = v49[1];
      v85 = *v209;
      v84 = v209[1];
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7EE0, &qword_24B45F8F0);
      v87 = v86[12];
      v88 = v86[16];
      v89 = v86[20];
      v90 = v191;
      v91 = &v191[v86[24]];
      v210 = *&v85;
      v211 = *&v84;
      v212 = v82;
      v213 = v83;
      v214 = 0;
      sub_24B415970();
      swift_bridgeObjectRetain_n();
      sub_24B458F9C();
      sub_24B458EFC();
      v92 = *MEMORY[0x277D04400];
      v93 = sub_24B458D4C();
      (*(*(v93 - 8) + 104))(&v90[v88], v92, v93);
      v94 = *MEMORY[0x277D043E0];
      v95 = sub_24B458D3C();
      (*(*(v95 - 8) + 104))(&v90[v89], v94, v95);
      v96 = v190;
      sub_24B415B48(v207, v190, type metadata accessor for AwardImageFeature);
      v97 = (*(v189 + 80) + 16) & ~*(v189 + 80);
      v98 = (v37 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
      v99 = swift_allocObject();
      sub_24B415BB0(v96, v99 + v97, type metadata accessor for AwardImageFeature);
      v100 = (v99 + v98);
      *v100 = v85;
      v100[1] = v84;
      v101 = (v99 + ((v98 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v101 = v82;
      v101[1] = v83;
      *v91 = &unk_24B45F918;
      *(v91 + 1) = v99;
      v103 = v199;
      v102 = v200;
      (*(v199 + 13))(v90, *MEMORY[0x277D043B0], v200);
      v104 = v206;
      v105 = *v206;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v105 = sub_24B3F1390(0, v105[2] + 1, 1, v105);
      }

      v107 = v105[2];
      v106 = v105[3];
      if (v107 >= v106 >> 1)
      {
        v105 = sub_24B3F1390(v106 > 1, v107 + 1, 1, v105);
      }

      v105[2] = v107 + 1;
      result = v103[4](v105 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + v103[9] * v107, v90, v102);
      *v104 = v105;
    }

    else
    {
      if (result == 3)
      {
        *v47 = *v49;
        swift_storeEnumTagMultiPayload();
        AwardImageFeature.reduce(localState:sharedState:sideEffects:action:)(v192, v209, v206, v47);
        v51 = type metadata accessor for AwardImageAction;
        v52 = v47;
        return sub_24B415A80(v52, v51);
      }

      v109 = *v49;
      v108 = v49[1];
      v110 = v209[4];
      if (*(v110 + 16) && (v111 = sub_24B4121B8(*v49, v49[1]), (v112 & 1) != 0))
      {
        v113 = v185;
        sub_24B415B48(*(v110 + 56) + *(v204 + 72) * v111, v185, type metadata accessor for AwardImageLoadState);
        v114 = v197;
        sub_24B415BB0(v113, v197, type metadata accessor for AwardImageLoadState);
        v115 = v205;
      }

      else
      {
        v114 = v197;
        v115 = v205;
        swift_storeEnumTagMultiPayload();
      }

      v122 = v198;
      v123 = v195;
      v124 = v194;
      v125 = v193;
      sub_24B415B48(v114, v193, type metadata accessor for AwardImageLoadState);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_24B415A80(v125, type metadata accessor for AwardImageLoadState);
      if (EnumCaseMultiPayload != 2)
      {
        if (qword_2810E3610 != -1)
        {
          swift_once();
        }

        v146 = sub_24B45847C();
        __swift_project_value_buffer(v146, qword_2810E3618);
        sub_24B415B48(v114, v123, type metadata accessor for AwardImageLoadState);
        v147 = sub_24B45845C();
        v148 = sub_24B458F4C();
        if (os_log_type_enabled(v147, v148))
        {
          v149 = swift_slowAlloc();
          v150 = swift_slowAlloc();
          v215 = v150;
          *v149 = 136315394;
          v210 = v109;
          v211 = v108;
          type metadata accessor for CGSize();
          v151 = sub_24B458E4C();
          v153 = sub_24B3F17BC(v151, v152, &v215);

          *(v149 + 4) = v153;
          *(v149 + 12) = 2080;
          sub_24B415B48(v123, v184, type metadata accessor for AwardImageLoadState);
          v154 = sub_24B458E4C();
          v156 = v155;
          sub_24B415A80(v123, type metadata accessor for AwardImageLoadState);
          v157 = sub_24B3F17BC(v154, v156, &v215);

          *(v149 + 14) = v157;
          _os_log_impl(&dword_24B3CE000, v147, v148, "[AwardImageFeature] View appeared but loadState for image size %s was %s, returning", v149, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C2408A0](v150, -1, -1);
          MEMORY[0x24C2408A0](v149, -1, -1);
        }

        else
        {

          sub_24B415A80(v123, type metadata accessor for AwardImageLoadState);
        }

        v52 = v114;
        v51 = type metadata accessor for AwardImageLoadState;
        return sub_24B415A80(v52, v51);
      }

      v127 = v187;
      (*(v122 + 16))(v187, v207 + *(v186 + 20), v188);
      swift_storeEnumTagMultiPayload();
      (*(v204 + 56))(v127, 0, 1, v115);
      sub_24B414D54(v127, v109, v108);
      v129 = *v209;
      v128 = *(v209 + 1);
      v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE7EE0, &qword_24B45F8F0);
      v131 = v130[12];
      v132 = v130[16];
      v133 = v130[20];
      v134 = &v124[v130[24]];
      v210 = *&v129;
      v211 = v128;
      v212 = v109;
      v213 = v108;
      v214 = 1;
      sub_24B415970();
      swift_bridgeObjectRetain_n();
      sub_24B458F9C();
      sub_24B458EFC();
      v135 = *MEMORY[0x277D04400];
      v136 = sub_24B458D4C();
      (*(*(v136 - 8) + 104))(&v124[v132], v135, v136);
      v137 = *MEMORY[0x277D043E0];
      v138 = sub_24B458D3C();
      (*(*(v138 - 8) + 104))(&v124[v133], v137, v138);
      v139 = swift_allocObject();
      v139[2] = *&v129;
      v139[3] = v128;
      v139[4] = v109;
      v139[5] = v108;
      *v134 = &unk_24B45F900;
      *(v134 + 1) = v139;
      v141 = v199;
      v140 = v200;
      (*(v199 + 13))(v124, *MEMORY[0x277D043B0], v200);
      v142 = v206;
      v143 = *v206;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v143 = sub_24B3F1390(0, v143[2] + 1, 1, v143);
      }

      v145 = v143[2];
      v144 = v143[3];
      if (v145 >= v144 >> 1)
      {
        v143 = sub_24B3F1390(v144 > 1, v145 + 1, 1, v143);
      }

      sub_24B415A80(v114, type metadata accessor for AwardImageLoadState);
      v143[2] = v145 + 1;
      result = v141[4](v143 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + v141[9] * v145, v124, v140);
      *v142 = v143;
    }

    return result;
  }

  v53 = v201;
  v54 = v202;
  v197 = v27;
  v199 = v22;
  v200 = v29;
  v206 = v36;
  v208 = v30;
  if (!result)
  {
    v55 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE87D0, &qword_24B4624C0) + 48));
    v56 = *v55;
    v57 = v55[1];
    v58 = v203;
    v59 = v206;
    v60 = v49;
    v61 = v208;
    (*(v203 + 32))(v206, v60, v208);
    v62 = v209;
    v64 = *v209;
    v63 = v209[1];
    if (qword_2810E3610 != -1)
    {
      swift_once();
    }

    v65 = sub_24B45847C();
    v66 = __swift_project_value_buffer(v65, qword_2810E3618);
    v67 = *(v58 + 16);
    v68 = v34;
    v201 = (v58 + 16);
    v195 = v67;
    (v67)(v34, v59, v61);

    v202 = v66;
    v69 = sub_24B45845C();
    v70 = sub_24B458F4C();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v215 = v72;
      *v71 = 136315650;
      *(v71 + 4) = sub_24B3F17BC(v64, v63, &v215);
      *(v71 + 12) = 2080;
      v210 = v56;
      v211 = v57;
      type metadata accessor for CGSize();
      v73 = sub_24B458E4C();
      v75 = sub_24B3F17BC(v73, v74, &v215);

      *(v71 + 14) = v75;
      *(v71 + 22) = 2080;
      sub_24B41668C(&qword_2810E36D8, MEMORY[0x277CC9260]);
      v76 = sub_24B45919C();
      v78 = v77;
      v207 = *(v58 + 8);
      v207(v68, v208);
      v79 = sub_24B3F17BC(v76, v78, &v215);

      *(v71 + 24) = v79;
      _os_log_impl(&dword_24B3CE000, v69, v70, "[AwardImageFeature] (%s) Image fetched for size %s: %s", v71, 0x20u);
      swift_arrayDestroy();
      v80 = v72;
      v61 = v208;
      MEMORY[0x24C2408A0](v80, -1, -1);
      v81 = v71;
      v62 = v209;
      MEMORY[0x24C2408A0](v81, -1, -1);
    }

    else
    {

      v207 = *(v58 + 8);
      v207(v68, v61);
    }

    v159 = v204;
    v158 = v205;
    v161 = v199;
    v160 = v200;
    v162 = v62[4];
    if (*(v162 + 16) && (v163 = sub_24B4121B8(v56, v57), (v164 & 1) != 0))
    {
      sub_24B415B48(*(v162 + 56) + *(v159 + 72) * v163, v160, type metadata accessor for AwardImageLoadState);
      v165 = 0;
    }

    else
    {
      v165 = 1;
    }

    v166 = *(v159 + 56);
    v166(v160, v165, 1, v158);
    v167 = v197;
    sub_24B412778(v160, v197);
    if ((*(v159 + 48))(v167, 1, v158) == 1)
    {
      sub_24B415AE0(v167);
    }

    else
    {
      if (!swift_getEnumCaseMultiPayload())
      {
        (*(v198 + 8))(v167, v188);
        v177 = v187;
        v178 = v206;
        (v195)(v187, v206, v61);
        swift_storeEnumTagMultiPayload();
        v166(v177, 0, 1, v158);
        sub_24B414D54(v177, v56, v57);
        sub_24B415AE0(v160);
        v176 = v178;
        return (v207)(v176, v61);
      }

      sub_24B415A80(v167, type metadata accessor for AwardImageLoadState);
    }

    sub_24B412778(v160, v161);
    v168 = sub_24B45845C();
    v169 = sub_24B458F4C();
    if (os_log_type_enabled(v168, v169))
    {
      v170 = swift_slowAlloc();
      *&v171 = COERCE_DOUBLE(swift_slowAlloc());
      v210 = *&v171;
      *v170 = 136315138;
      v172 = sub_24B458F5C();
      v174 = v173;
      sub_24B415AE0(v161);
      v175 = sub_24B3F17BC(v172, v174, &v210);

      *(v170 + 4) = v175;
      _os_log_impl(&dword_24B3CE000, v168, v169, "[AwardImageFeature] Current state is %s, skipping .fetched update", v170, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v171);
      MEMORY[0x24C2408A0](v171, -1, -1);
      MEMORY[0x24C2408A0](v170, -1, -1);
    }

    else
    {

      sub_24B415AE0(v161);
    }

    sub_24B415AE0(v160);
    v176 = v206;
    return (v207)(v176, v61);
  }

  v116 = v209[4];
  if (*(v116 + 16))
  {
    v117 = *v49;
    v118 = v49[1];
    result = sub_24B4121B8(*v49, v118);
    if (v119)
    {
      v120 = v204;
      sub_24B415B48(*(v116 + 56) + *(v204 + 72) * result, v54, type metadata accessor for AwardImageLoadState);
      v121 = v205;
      if (swift_getEnumCaseMultiPayload())
      {
        v51 = type metadata accessor for AwardImageLoadState;
        v52 = v54;
        return sub_24B415A80(v52, v51);
      }

      v179 = v198;
      v180 = v188;
      (*(v198 + 32))(v53, v54, v188);
      v181 = *(v186 + 20);
      if (sub_24B45834C())
      {
        v182 = v187;
        swift_storeEnumTagMultiPayload();
        (*(v120 + 56))(v182, 0, 1, v121);
        sub_24B414D54(v182, v117, v118);
      }

      return (*(v179 + 8))(v53, v180);
    }
  }

  return result;
}

uint64_t sub_24B4140A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  *(v6 + 80) = a5;
  *(v6 + 88) = a6;
  *(v6 + 64) = a3;
  *(v6 + 72) = a4;
  *(v6 + 48) = a1;
  *(v6 + 56) = a2;
  v7 = type metadata accessor for AwardImageAction();
  *(v6 + 96) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  v9 = sub_24B45830C();
  *(v6 + 112) = v9;
  v10 = *(v9 - 8);
  *(v6 + 120) = v10;
  v11 = *(v10 + 64) + 15;
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  sub_24B458EEC();
  *(v6 + 144) = sub_24B458EDC();
  v13 = sub_24B458EBC();
  *(v6 + 152) = v13;
  *(v6 + 160) = v12;

  return MEMORY[0x2822009F8](sub_24B4141DC, v13, v12);
}

uint64_t sub_24B4141DC()
{
  v1 = v0[7];
  v2 = v1[1];
  v11 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_24B4142D8;
  v5 = v0[17];
  v6.n128_u64[0] = v0[10];
  v7.n128_u64[0] = v0[11];
  v8 = v0[8];
  v9 = v0[9];

  return v11(v5, v8, v9, v6, v7);
}

uint64_t sub_24B4142D8()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 160);
  v6 = *(v2 + 152);
  if (v0)
  {
    v7 = sub_24B414914;
  }

  else
  {
    v7 = sub_24B414414;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24B414414()
{
  v38 = v0;
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = sub_24B45847C();
  __swift_project_value_buffer(v5, qword_2810E3618);
  v6 = *(v4 + 16);
  v6(v1, v2, v3);
  v7 = sub_24B45845C();
  v8 = sub_24B458F4C();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[14];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v36;
    *v13 = 136315138;
    sub_24B41668C(&qword_2810E36D8, MEMORY[0x277CC9260]);
    v14 = sub_24B45919C();
    v16 = v15;
    v35 = v8;
    v19 = *(v11 + 8);
    v18 = v11 + 8;
    v17 = v19;
    v19(v10, v12);
    v20 = sub_24B3F17BC(v14, v16, &v37);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_24B3CE000, v7, v35, "[AwardImageFeature] Image url fetched %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x24C2408A0](v36, -1, -1);
    MEMORY[0x24C2408A0](v13, -1, -1);
  }

  else
  {

    v21 = *(v11 + 8);
    v18 = v11 + 8;
    v17 = v21;
    v21(v10, v12);
  }

  v0[23] = v18;
  v0[24] = v17;
  v22 = v0[17];
  v24 = v0[13];
  v23 = v0[14];
  v25 = v0[12];
  v27 = v0[10];
  v26 = v0[11];
  v28 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE87D0, &qword_24B4624C0) + 48));
  v6(v24, v22, v23);
  *v28 = v27;
  v28[1] = v26;
  swift_storeEnumTagMultiPayload();
  v29 = *(MEMORY[0x277D043C8] + 4);
  v30 = swift_task_alloc();
  v0[25] = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE87D8, &unk_24B45FA90);
  *v30 = v0;
  v30[1] = sub_24B414718;
  v32 = v0[13];
  v33 = v0[6];

  return MEMORY[0x282159B08](v32, v31);
}

uint64_t sub_24B414718()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 104);
  v7 = *v0;

  sub_24B415A80(v3, type metadata accessor for AwardImageAction);
  v4 = *(v1 + 160);
  v5 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_24B414870, v5, v4);
}

uint64_t sub_24B414870()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[14];

  v1(v4, v5);
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[13];

  v9 = v0[1];

  return v9();
}

uint64_t sub_24B414914()
{
  v25 = v0;
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v2 = *(v0 + 72);
  v3 = sub_24B45847C();
  __swift_project_value_buffer(v3, qword_2810E3618);

  MEMORY[0x24C2406E0](v1);
  v4 = sub_24B45845C();
  v5 = sub_24B458F4C();

  MEMORY[0x24C2406D0](v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 176);
    v8 = *(v0 + 64);
    v7 = *(v0 + 72);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_24B3F17BC(v8, v7, &v24);
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v12 = *(v0 + 16);
    v11 = *(v0 + 24);
    v13 = *(v0 + 32);
    v14 = sub_24B4591DC();
    v16 = sub_24B3F17BC(v14, v15, &v24);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_24B3CE000, v4, v5, "[AwardImageFeature] Failed to fetch image url for %s, error %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C2408A0](v10, -1, -1);
    MEMORY[0x24C2408A0](v9, -1, -1);
  }

  v17 = *(v0 + 96);
  **(v0 + 104) = *(v0 + 80);
  swift_storeEnumTagMultiPayload();
  v18 = *(MEMORY[0x277D043C8] + 4);
  v19 = swift_task_alloc();
  *(v0 + 208) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE87D8, &unk_24B45FA90);
  *v19 = v0;
  v19[1] = sub_24B414B70;
  v21 = *(v0 + 104);
  v22 = *(v0 + 48);

  return MEMORY[0x282159B08](v21, v20);
}

uint64_t sub_24B414B70()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 104);
  v7 = *v0;

  sub_24B415A80(v3, type metadata accessor for AwardImageAction);
  v4 = *(v1 + 160);
  v5 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_24B414CC8, v5, v4);
}

uint64_t sub_24B414CC8()
{
  v1 = v0[22];
  v2 = v0[18];

  MEMORY[0x24C2406D0](v1);
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[13];

  v6 = v0[1];

  return v6();
}

uint64_t sub_24B414D54(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8780, &unk_24B45F8E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v27 - v10;
  State = type metadata accessor for AwardImageLoadState();
  v13 = *(State - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](State);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1, State) == 1)
  {
    sub_24B415AE0(a1);
    v17 = *v4;
    v18 = sub_24B4121B8(a2, a3);
    if (v19)
    {
      v20 = v18;
      v21 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *v4;
      v28 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_24B44C398();
        v23 = v28;
      }

      sub_24B415BB0(*(v23 + 56) + *(v13 + 72) * v20, v11, type metadata accessor for AwardImageLoadState);
      sub_24B415D58(v20, v23);
      *v4 = v23;
      (*(v13 + 56))(v11, 0, 1, State);
    }

    else
    {
      (*(v13 + 56))(v11, 1, 1, State);
    }

    return sub_24B415AE0(v11);
  }

  else
  {
    sub_24B415BB0(a1, v16, type metadata accessor for AwardImageLoadState);
    v24 = *v4;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v4;
    result = sub_24B415F54(v16, v25, a2, a3);
    *v4 = v28;
  }

  return result;
}

uint64_t sub_24B414F9C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  *(v5 + 40) = a2;
  *(v5 + 48) = a3;
  *(v5 + 32) = a1;
  v6 = type metadata accessor for AwardImageAction();
  *(v5 + 72) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  sub_24B458EEC();
  *(v5 + 88) = sub_24B458EDC();
  v9 = sub_24B458EBC();
  *(v5 + 96) = v9;
  *(v5 + 104) = v8;

  return MEMORY[0x2822009F8](sub_24B41506C, v9, v8);
}

uint64_t sub_24B41506C()
{
  v22 = v0;
  if (qword_2810E3610 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_24B45847C();
  __swift_project_value_buffer(v2, qword_2810E3618);

  v3 = sub_24B45845C();
  v4 = sub_24B458F4C();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[7];
    v5 = v0[8];
    v8 = v0[5];
    v7 = v0[6];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_24B3F17BC(v8, v7, &v21);
    *(v9 + 12) = 2080;
    v0[2] = v6;
    v0[3] = v5;
    type metadata accessor for CGSize();
    v11 = sub_24B458E4C();
    v13 = sub_24B3F17BC(v11, v12, &v21);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_24B3CE000, v3, v4, "[AwardImageFeature] Requesting image data for %s with size %s on view appeared", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C2408A0](v10, -1, -1);
    MEMORY[0x24C2408A0](v9, -1, -1);
  }

  v14 = v0[9];
  *v0[10] = *(v0 + 7);
  swift_storeEnumTagMultiPayload();
  v15 = *(MEMORY[0x277D043C8] + 4);
  v16 = swift_task_alloc();
  v0[14] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE87D8, &unk_24B45FA90);
  *v16 = v0;
  v16[1] = sub_24B4152B8;
  v18 = v0[10];
  v19 = v0[4];

  return MEMORY[0x282159B08](v18, v17);
}

uint64_t sub_24B4152B8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 80);
  v7 = *v0;

  sub_24B415A80(v3, type metadata accessor for AwardImageAction);
  v4 = *(v1 + 104);
  v5 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_24B415410, v5, v4);
}

uint64_t sub_24B415410()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t AwardImageFeature.dispose(localState:sharedState:)(uint64_t a1)
{
  v2 = sub_24B41647C(*(a1 + 32), sub_24B415D50);
  sub_24B4155F4(v2, a1);
}

uint64_t sub_24B4154E8(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for AwardImageLoadState();
  v5 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(type metadata accessor for AwardImageFeature() + 20);
  v9 = sub_24B45836C();
  (*(*(v9 - 8) + 16))(v7, a2 + v8, v9);
  swift_storeEnumTagMultiPayload();
  LOBYTE(a2) = _s13FitnessAwards19AwardImageLoadStateO2eeoiySbAC_ACtFZ_0(a1, v7);
  sub_24B415A80(v7, type metadata accessor for AwardImageLoadState);
  return a2 & 1;
}

uint64_t sub_24B4155F4(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for AwardImageLoadState();
  v39 = *(State - 8);
  v4 = *(v39 + 64);
  v5 = MEMORY[0x28223BE20](State);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - v8;
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v42 = a1;

  v14 = 0;
  while (v12)
  {
LABEL_11:
    v16 = (*(v42 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v12)))));
    v17 = *v16;
    v18 = v16[1];
    v19 = v40;
    swift_storeEnumTagMultiPayload();
    v20 = v7;
    sub_24B415BB0(v19, v7, type metadata accessor for AwardImageLoadState);
    v21 = *(a2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = *(a2 + 32);
    v23 = v43;
    v24 = sub_24B4121B8(v17, v18);
    v26 = v23[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      goto LABEL_23;
    }

    v30 = v25;
    if (v23[3] < v29)
    {
      sub_24B44BC90(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_24B4121B8(v17, v18);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      v32 = v43;
      if (v30)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v36 = v24;
    sub_24B44C398();
    v24 = v36;
    v32 = v43;
    if (v30)
    {
LABEL_4:
      v7 = v20;
      sub_24B416844(v20, v32[7] + *(v39 + 72) * v24);
      goto LABEL_5;
    }

LABEL_17:
    v32[(v24 >> 6) + 8] |= 1 << v24;
    v33 = (v32[6] + 16 * v24);
    *v33 = v17;
    v33[1] = v18;
    v7 = v20;
    sub_24B415BB0(v20, v32[7] + *(v39 + 72) * v24, type metadata accessor for AwardImageLoadState);
    v34 = v32[2];
    v28 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (v28)
    {
      goto LABEL_24;
    }

    v32[2] = v35;
LABEL_5:
    v12 &= v12 - 1;
    *(a2 + 32) = v32;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  type metadata accessor for CGSize();
  result = sub_24B4591CC();
  __break(1u);
  return result;
}

uint64_t sub_24B415904(uint64_t a1, uint64_t a2)
{
  v3 = sub_24B41647C(*(a2 + 32), sub_24B4168A8);
  sub_24B4155F4(v3, a2);
}

unint64_t sub_24B415970()
{
  result = qword_2810E35A8;
  if (!qword_2810E35A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E35A8);
  }

  return result;
}

uint64_t sub_24B4159C4(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B3F1E60;

  return sub_24B414F9C(a1, v4, v5, v6, v7);
}

uint64_t sub_24B415A80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B415AE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8780, &unk_24B45F8E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B415B48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B415BB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B415C18(uint64_t a1)
{
  v4 = *(type metadata accessor for AwardImageFeature() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v1 + v6);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v7);
  v12 = *(v1 + v7 + 8);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_24B3F2574;

  return sub_24B4140A4(a1, v1 + v5, v9, v10, v11, v12);
}

unint64_t sub_24B415D58(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24B458F8C() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_24B45922C();
      v13 = v11 == 0.0 ? 0.0 : v11;
      MEMORY[0x24C2403E0](*&v13);
      v14 = v12 == 0.0 ? 0.0 : v12;
      MEMORY[0x24C2403E0](*&v14);
      result = sub_24B45926C();
      v15 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v15 < v8)
      {
        goto LABEL_16;
      }

LABEL_17:
      v16 = *(a2 + 48);
      v17 = (v16 + 16 * v3);
      v18 = (v16 + 16 * v6);
      if (v3 != v6 || v17 >= v18 + 1)
      {
        *v17 = *v18;
      }

      v19 = *(a2 + 56);
      v20 = *(*(type metadata accessor for AwardImageLoadState() - 8) + 72);
      v21 = v20 * v3;
      result = v19 + v20 * v3;
      v22 = v20 * v6;
      v23 = v19 + v20 * v6 + v20;
      if (v21 < v22 || result >= v23)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v21 == v22)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    if (v15 < v8)
    {
      goto LABEL_5;
    }

LABEL_16:
    if (v3 < v15)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_26:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24B415F54(uint64_t a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_24B4121B8(a3, a4);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a2 & 1) == 0)
  {
    if (v17 >= v15 && (a2 & 1) == 0)
    {
      sub_24B44C398();
      goto LABEL_7;
    }

    sub_24B44BC90(v15, a2 & 1);
    v22 = *v5;
    v23 = sub_24B4121B8(a3, a4);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    type metadata accessor for CGSize();
    result = sub_24B4591CC();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for AwardImageLoadState() - 8) + 72) * v12;

    return sub_24B416844(a1, v20);
  }

LABEL_13:

  return sub_24B4160A8(v12, a1, v18, a3, a4);
}

uint64_t sub_24B4160A8(unint64_t a1, uint64_t a2, void *a3, double a4, double a5)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a3[6] + 16 * a1);
  *v8 = a4;
  v8[1] = a5;
  v9 = a3[7];
  State = type metadata accessor for AwardImageLoadState();
  result = sub_24B415BB0(a2, v9 + *(*(State - 8) + 72) * a1, type metadata accessor for AwardImageLoadState);
  v12 = a3[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v14;
  }

  return result;
}

void *sub_24B416154(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, double, double))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_24B41626C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

BOOL sub_24B4161E4(double *a1, uint64_t a2)
{
  v3 = *a1;
  v5 = a1[2];
  v4 = a1[3];
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  if ((a1[4] & 1) == 0)
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    return 0;
  }

LABEL_5:
  v9 = *&v3 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v9 && (sub_24B4591AC() & 1) == 0)
  {
    return 0;
  }

  return v4 == v6 && v5 == v7;
}

uint64_t sub_24B41626C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, double, double))
{
  v25 = a2;
  v29 = a4;
  v26 = a1;
  State = type metadata accessor for AwardImageLoadState();
  v28 = *(State - 8);
  v6 = *(v28 + 64);
  result = MEMORY[0x28223BE20](State - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v10 = 0;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v10 << 6);
    v19 = (*(a3 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    sub_24B415B48(*(a3 + 56) + *(v28 + 72) * v18, v9, type metadata accessor for AwardImageLoadState);
    v22 = v29(v9, v20, v21);
    result = sub_24B415A80(v9, type metadata accessor for AwardImageLoadState);
    if (v22)
    {
      *(v26 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
        return sub_24B44CA9C(v26, v25, v27, a3);
      }
    }
  }

  v16 = v10;
  while (1)
  {
    v10 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v10 >= v14)
    {
      return sub_24B44CA9C(v26, v25, v27, a3);
    }

    v17 = *(a3 + 64 + 8 * v10);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B41647C(uint64_t a1, uint64_t (*a2)(char *, double, double))
{
  v4 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_24B41626C(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_24B416154(v11, v6, v4, a2);
  result = MEMORY[0x24C2408A0](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24B41668C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24B4166D8()
{
  result = qword_2810E3598;
  if (!qword_2810E3598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E3598);
  }

  return result;
}

uint64_t sub_24B416754()
{
  result = sub_24B45836C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24B4167F0()
{
  result = qword_2810E35A0;
  if (!qword_2810E35A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E35A0);
  }

  return result;
}

uint64_t sub_24B416844(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for AwardImageLoadState();
  (*(*(State - 8) + 40))(a2, a1, State);
  return a2;
}

uint64_t AwardCanvasPlaceholder.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AwardCanvasPlaceholder.score.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t sub_24B416908()
{
  v1 = 0x636E657265666572;
  if (*v0 != 1)
  {
    v1 = 0x65726F6373;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_24B416970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4174A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B416998(uint64_t a1)
{
  v2 = sub_24B416BE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4169D4(uint64_t a1)
{
  v2 = sub_24B416BE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AwardCanvasPlaceholder.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE87E0, &qword_24B45FAA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v16 = *(v1 + 16);
  v14 = v1[3];
  v13[3] = *(v1 + 32);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B416BE8();
  sub_24B45928C();
  v20 = 0;
  v11 = v15;
  sub_24B45914C();
  if (!v11)
  {
    v19 = v16;
    v18 = 1;
    sub_24B416C3C();
    sub_24B45918C();
    v17 = 2;
    sub_24B45912C();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_24B416BE8()
{
  result = qword_2810E2D40[0];
  if (!qword_2810E2D40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810E2D40);
  }

  return result;
}

unint64_t sub_24B416C3C()
{
  result = qword_2810E2C70[0];
  if (!qword_2810E2C70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810E2C70);
  }

  return result;
}

uint64_t AwardCanvasPlaceholder.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE87E8, &qword_24B45FAA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B416BE8();
  sub_24B45927C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v11 = sub_24B4590AC();
  v13 = v12;
  v14 = v11;
  v23 = 1;
  sub_24B416EC4();
  sub_24B4590EC();
  v21 = v24;
  v22 = 2;
  v16 = sub_24B45908C();
  v17 = v9;
  v19 = v18;
  (*(v6 + 8))(v17, v5);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v21;
  *(a2 + 24) = v16;
  *(a2 + 32) = v19 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24B416EC4()
{
  result = qword_27EFE87F0;
  if (!qword_27EFE87F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE87F0);
  }

  return result;
}

uint64_t AwardCanvasPlaceholder.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  sub_24B458E6C();
  sub_24B417134();
  if (v4 == 1)
  {
    return sub_24B45924C();
  }

  sub_24B45924C();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  return MEMORY[0x24C2403E0](v7);
}

uint64_t AwardCanvasPlaceholder.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  sub_24B45922C();
  sub_24B458E6C();
  sub_24B417134();
  if (v4 == 1)
  {
    sub_24B45924C();
  }

  else
  {
    sub_24B45924C();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x24C2403E0](v6);
  }

  return sub_24B45926C();
}

uint64_t sub_24B417068()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  v5 = v0[3];
  v6 = *(v0 + 32);
  sub_24B45922C();
  AwardCanvasPlaceholder.hash(into:)();
  return sub_24B45926C();
}

uint64_t sub_24B4170D0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  v5 = v0[3];
  v6 = *(v0 + 32);
  sub_24B45922C();
  AwardCanvasPlaceholder.hash(into:)();
  return sub_24B45926C();
}

uint64_t sub_24B417134()
{
  sub_24B458E6C();
}

uint64_t _s13FitnessAwards22AwardCanvasPlaceholderV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v8 && (sub_24B4591AC() & 1) == 0 || (sub_24B40F680(v2, v5) & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v6)
    {
      v10 = v7;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_24B417328()
{
  result = qword_27EFE87F8;
  if (!qword_27EFE87F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE87F8);
  }

  return result;
}

unint64_t sub_24B4173A0()
{
  result = qword_27EFE8800;
  if (!qword_27EFE8800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFE8800);
  }

  return result;
}

unint64_t sub_24B4173F8()
{
  result = qword_2810E2D30;
  if (!qword_2810E2D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2D30);
  }

  return result;
}

unint64_t sub_24B417450()
{
  result = qword_2810E2D38;
  if (!qword_2810E2D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E2D38);
  }

  return result;
}

uint64_t sub_24B4174A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_24B4591AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xED00006570795465 || (sub_24B4591AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B4591AC();

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

uint64_t AwardLockupEnvironment.init(navigateToDetail:resolveAwardDescription:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_24B4175F4(uint64_t a1)
{
  v2 = sub_24B417BF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B417630(uint64_t a1)
{
  v2 = sub_24B417BF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B41766C()
{
  if (*v0)
  {
    result = 0x7069636974726170;
  }

  else
  {
    result = 0x756F6D796E6F6E61;
  }

  *v0;
  return result;
}

uint64_t sub_24B4176B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x756F6D796E6F6E61 && a2 == 0xE900000000000073;
  if (v6 || (sub_24B4591AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEB00000000746E61)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B4591AC();

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

uint64_t sub_24B41779C(uint64_t a1)
{
  v2 = sub_24B417B48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4177D8(uint64_t a1)
{
  v2 = sub_24B417B48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B417814(uint64_t a1)
{
  v2 = sub_24B417B9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B417850(uint64_t a1)
{
  v2 = sub_24B417B9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RemoteBrowsingIdentity.encode(to:)(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8808, &qword_24B45FD20);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8810, &qword_24B45FD28);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE8818, &qword_24B45FD30);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B417B48();
  sub_24B45928C();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_24B417B9C();
    sub_24B45910C();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_24B417BF0();
    sub_24B45910C();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}