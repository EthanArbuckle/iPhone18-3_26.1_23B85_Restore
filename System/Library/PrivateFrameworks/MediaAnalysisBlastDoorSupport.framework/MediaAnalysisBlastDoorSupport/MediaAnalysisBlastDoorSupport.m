id MediaAnalysisBlastDoorInterface.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MediaAnalysisBlastDoorInterface.init()()
{
  v14 = sub_258455168();
  v0 = *(v14 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20]();
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_258455158() - 8) + 64);
  MEMORY[0x28223BE20]();
  v5 = *(*(sub_258454F58() - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = sub_258454FA8();
  v13[1] = "wType";
  v13[2] = v6;
  v7 = *MEMORY[0x277CF30B0];
  sub_258452D78(0, &qword_27F92F448, 0x277D85C78);
  v8 = v7;
  sub_258454F48();
  v17 = MEMORY[0x277D84F90];
  sub_2584535F0(&qword_27F92F450, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92F458, &qword_258455620);
  sub_258451BC8();
  sub_2584551A8();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v14);
  sub_258455178();
  v9 = sub_258454F68();
  v10 = v15;
  *&v15[OBJC_IVAR___IMMediaAnalysisBlastDoorInterfaceInternal_bd] = v9;
  v11 = type metadata accessor for MediaAnalysisBlastDoorInterface();
  v16.receiver = v10;
  v16.super_class = v11;
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_258451BC8()
{
  result = qword_27F92F460;
  if (!qword_27F92F460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F92F458, &qword_258455620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92F460);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_258451CBC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6572506567616D69 && a2 == 0xED00007377656976)
  {
    return 1;
  }

  v5 = sub_2584551C8();
  v6 = a1 == 0x6572506F65646976 && a2 == 0xED00007377656976;
  v7 = v6;
  if ((v5 & 1) != 0 || v7)
  {
    return 1;
  }

  return sub_2584551C8();
}

uint64_t sub_258451E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v36 = a3;
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92F470, &qword_258455628) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v5 = &v30 - v4;
  v6 = sub_258455088();
  v33 = *(v6 - 8);
  v34 = v6;
  v7 = *(v33 + 64);
  (MEMORY[0x28223BE20])();
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2584550D8();
  v31 = *(v10 - 8);
  v32 = v10;
  v11 = *(v31 + 64);
  (MEMORY[0x28223BE20])();
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92F478, &qword_258455630) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v16 = &v30 - v15;
  v17 = sub_2584550F8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = (MEMORY[0x28223BE20])();
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v30 - v23;
  sub_258454EC8();
  sub_2584550E8();
  (*(v18 + 56))(v16, 0, 1, v17);
  (*(v18 + 32))(v24, v16, v17);
  (*(v18 + 16))(v22, v24, v17);
  sub_2584550C8();
  v25 = v9;
  sub_258455078();
  v30 = *(v30 + OBJC_IVAR___IMMediaAnalysisBlastDoorInterfaceInternal_bd);
  sub_258455098();
  v26 = sub_2584550A8();
  (*(*(v26 - 8) + 56))(v5, 1, 1, v26);
  v27 = swift_allocObject();
  v28 = v36;
  *(v27 + 16) = v35;
  *(v27 + 24) = v28;
  sub_2584535F0(&qword_27F92F490, MEMORY[0x277CF2078]);

  sub_258454F98();

  sub_258452628(v5, &qword_27F92F470, &qword_258455628);
  (*(v33 + 8))(v25, v34);
  (*(v31 + 8))(v13, v32);
  return (*(v18 + 8))(v24, v17);
}

void sub_258452414(uint64_t a1, void (*a2)(void *, void *))
{
  v4 = sub_258455098();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92F4C8, &qword_258455698) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = (&v14 - v10);
  sub_258454864(a1, &v14 - v10, &qword_27F92F4C8, &qword_258455698);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    MEMORY[0x259C802D0](*v11);
    a2(0, v12);
  }

  else
  {
    (*(v5 + 32))(v8, v11, v4);
    v13 = sub_258455068();
    a2(v13, 0);

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_2584525E8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_258452628(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2584527A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_258454EA8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_258452810(uint64_t a1, float a2, float a3)
{
  v39 = a1;
  v51 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92F470, &qword_258455628);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v49 = &v37 - v7;
  v50 = sub_258454FE8();
  v38 = *(v50 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v50);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2584550F8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_2584550D8();
  v46 = *(v12 - 8);
  v47 = v12;
  v13 = *(v46 + 64);
  MEMORY[0x28223BE20](v12);
  v42 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_258454FC8();
  v44 = *(v15 - 8);
  v45 = v15;
  v16 = *(v44 + 64);
  MEMORY[0x28223BE20](v15);
  v41 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258455148();
  sub_258452D78(0, &qword_27F92F498, 0x277D86200);
  v18 = sub_258455188();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92F4A0, &qword_258455638);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_258455610;
  v54 = a2;
  v55 = 0;
  v20 = sub_2584550B8();
  v22 = v21;
  v23 = MEMORY[0x277D837D0];
  *(v19 + 56) = MEMORY[0x277D837D0];
  v24 = sub_258452DC0();
  *(v19 + 64) = v24;
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  v52 = a3;
  v53 = 0;
  v25 = sub_2584550B8();
  *(v19 + 96) = v23;
  *(v19 + 104) = v24;
  *(v19 + 72) = v25;
  *(v19 + 80) = v26;
  sub_258454F38();

  if ((LODWORD(v51) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a2 <= -9.2234e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2 >= 9.2234e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v27 = v41;
  sub_258454FB8();
  sub_258454EC8();
  v28 = v40;
  sub_2584550E8();
  if (!v28)
  {
    v29 = v42;
    sub_2584550C8();
    v30 = *(v43 + OBJC_IVAR___IMMediaAnalysisBlastDoorInterfaceInternal_bd);
    v31 = sub_2584550A8();
    v32 = v49;
    (*(*(v31 - 8) + 56))(v49, 1, 1, v31);
    sub_2584535F0(&qword_27F92F4B0, MEMORY[0x277CF2038]);
    v33 = v48;
    v34 = v50;
    sub_258454F78();
    sub_258452628(v32, &qword_27F92F470, &qword_258455628);
    v35 = sub_258454FD8();
    (*(v38 + 8))(v33, v34);
    (*(v46 + 8))(v29, v47);
    (*(v44 + 8))(v27, v45);
    return v35;
  }

LABEL_9:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_258452D78(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_258452DC0()
{
  result = qword_27F92F4A8;
  if (!qword_27F92F4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92F4A8);
  }

  return result;
}

uint64_t sub_258452F94(float a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v7 = sub_258454EF8();
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92F470, &qword_258455628);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v31 - v13;
  v15 = sub_2584550F8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = sub_2584550D8();
  v34 = *(v17 - 8);
  v35 = v17;
  v18 = *(v34 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_258455018();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v31 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((LODWORD(a1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a1 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a1 < 9.2234e18)
  {
    v31 = v24;
    v32 = v7;
    sub_258455008();
    sub_258454EC8();
    sub_2584550E8();
    sub_2584550C8();
    v27 = *(v33 + OBJC_IVAR___IMMediaAnalysisBlastDoorInterfaceInternal_bd);
    sub_258455058();
    v28 = sub_2584550A8();
    (*(*(v28 - 8) + 56))(v14, 1, 1, v28);
    sub_258454EE8();
    v29 = swift_allocObject();
    *(v29 + 16) = a3;
    *(v29 + 24) = v36;
    sub_2584535F0(&qword_27F92F4B8, MEMORY[0x277CF2048]);

    sub_258454F88();

    (*(v37 + 8))(v10, v32);
    sub_258452628(v14, &qword_27F92F470, &qword_258455628);
    (*(v34 + 8))(v20, v35);
    return (*(v22 + 8))(v26, v31);
  }

LABEL_7:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_258453414(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, void *))
{
  v6 = sub_258455058();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92F4C0, &qword_258455690);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v17 - v13);
  sub_258454864(a1, &v17 - v13, &qword_27F92F4C0, &qword_258455690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    MEMORY[0x259C802D0](*v14);
    a4(0, v15);
  }

  else
  {
    (*(v7 + 32))(v10, v14, v6);
    v16 = sub_258455028();
    a4(v16, 0);

    (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_2584535F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25845379C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char *a6, int a7, uint64_t a8, uint64_t a9)
{
  v45 = a6;
  v46 = a8;
  LODWORD(v47) = a7;
  v42 = a5;
  v41[1] = a3;
  v41[2] = a4;
  v43 = a1;
  v9 = sub_258454EF8();
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92F470, &qword_258455628);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v41 - v15;
  v17 = sub_2584550F8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = sub_2584550D8();
  v50 = *(v19 - 8);
  v51 = v19;
  v20 = *(v50 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_258455018();
  v48 = *(v23 - 8);
  v49 = v23;
  v24 = *(v48 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_258455048();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = v41 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = v41 - v33;
  sub_258455038();
  v35 = *(v28 + 16);
  v47 = v27;
  v35(v32, v34, v27);
  v45 = v26;
  sub_258454FF8();
  sub_258454EC8();
  sub_2584550E8();
  sub_2584550C8();
  v36 = *(v44 + OBJC_IVAR___IMMediaAnalysisBlastDoorInterfaceInternal_bd);
  sub_258455058();
  v37 = sub_2584550A8();
  (*(*(v37 - 8) + 56))(v16, 1, 1, v37);
  sub_258454EE8();
  v38 = swift_allocObject();
  *(v38 + 16) = v46;
  *(v38 + 24) = a9;
  sub_2584535F0(&qword_27F92F4B8, MEMORY[0x277CF2048]);

  v39 = v45;
  sub_258454F88();

  (*(v52 + 8))(v12, v53);
  sub_258452628(v16, &qword_27F92F470, &qword_258455628);
  (*(v50 + 8))(v22, v51);
  (*(v48 + 8))(v39, v49);
  return (*(v28 + 8))(v34, v47);
}

void sub_258453CAC(uint64_t a1, uint64_t a2, char a3, void (*a4)(void *, void *, void))
{
  v18 = a4;
  v6 = sub_258455058();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92F4C0, &qword_258455690);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v17 - v13);
  sub_258454864(a1, &v17 - v13, &qword_27F92F4C0, &qword_258455690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    MEMORY[0x259C802D0](*v14);
    v18(0, v15, a3 & 1);
  }

  else
  {
    (*(v7 + 32))(v10, v14, v6);
    v16 = sub_258455028();
    v18(v16, 0, a3 & 1);

    (*(v7 + 8))(v10, v6);
  }
}

void sub_25845401C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_258454EA8();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a4 + 16))(a4, a1);
}

id MediaAnalysisBlastDoorInterface.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaAnalysisBlastDoorInterface();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2584541F8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_258454240(uint64_t a1, uint64_t a2, const void *a3)
{
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92F470, &qword_258455628);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v40 = &v34 - v6;
  v41 = sub_258455088();
  v39 = *(v41 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2584550D8();
  v37 = *(v10 - 8);
  v38 = v10;
  v11 = *(v37 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92F478, &qword_258455630);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v34 - v16;
  v18 = sub_2584550F8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v34 - v24;
  v42 = swift_allocObject();
  *(v42 + 16) = a3;
  _Block_copy(a3);
  sub_258454EC8();
  sub_2584550E8();
  (*(v19 + 56))(v17, 0, 1, v18);
  (*(v19 + 32))(v25, v17, v18);
  (*(v19 + 16))(v23, v25, v18);
  v35 = v13;
  sub_2584550C8();
  v26 = v9;
  sub_258455078();
  v36 = *(v36 + OBJC_IVAR___IMMediaAnalysisBlastDoorInterfaceInternal_bd);
  sub_258455098();
  v27 = sub_2584550A8();
  v28 = v40;
  (*(*(v27 - 8) + 56))(v40, 1, 1, v27);
  v29 = swift_allocObject();
  v30 = v37;
  v31 = v42;
  *(v29 + 16) = sub_2584548E0;
  *(v29 + 24) = v31;
  sub_2584535F0(&qword_27F92F490, MEMORY[0x277CF2078]);

  v32 = v35;
  sub_258454F98();

  sub_258452628(v28, &qword_27F92F470, &qword_258455628);
  (*(v39 + 8))(v26, v41);
  (*(v30 + 8))(v32, v38);
  (*(v19 + 8))(v25, v18);
}

uint64_t sub_258454864(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_258454958@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_258454A68(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t PreviewType.init(rawValue:)(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  return v1 | ((a1 > 1u) << 8);
}

uint64_t sub_2584549C0()
{
  v1 = *v0;
  sub_2584551D8();
  sub_2584551E8();
  return sub_2584551F8();
}

uint64_t sub_258454A08()
{
  v1 = *v0;
  sub_2584551D8();
  sub_2584551E8();
  return sub_2584551F8();
}

unsigned __int8 *sub_258454A4C@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 1;
  if (v2 > 1)
  {
    LOBYTE(v2) = 0;
  }

  *a2 = v2;
  a2[1] = v3;
  return result;
}

uint64_t sub_258454A68(unsigned __int8 a1)
{
  v1 = 0;
  switch(a1)
  {
    case 0x64u:
    case 0x65u:
    case 0x66u:
    case 0x68u:
    case 0x69u:
    case 0x6Au:
    case 0x6Bu:
    case 0x6Cu:
    case 0x6Fu:
    case 0x70u:
    case 0x71u:
    case 0x74u:
    case 0x76u:
    case 0x77u:
    case 0x78u:
    case 0x7Au:
    case 0x7Cu:
    case 0x7Du:
    case 0x7Eu:
    case 0x7Fu:
    case 0x83u:
    case 0x86u:
    case 0x87u:
    case 0x8Au:
    case 0x8Bu:
    case 0xAAu:
    case 0xB4u:
    case 0xB5u:
    case 0xBEu:
    case 0xC3u:
    case 0xC4u:
      return a1 | (v1 << 8);
    default:
      a1 = 0;
      v1 = 1;
      break;
  }

  return a1 | (v1 << 8);
}

unint64_t sub_258454C44()
{
  result = qword_27F92F4D0;
  if (!qword_27F92F4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92F4D0);
  }

  return result;
}

unint64_t sub_258454C9C()
{
  result = qword_27F92F4D8;
  if (!qword_27F92F4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F92F4D8);
  }

  return result;
}

uint64_t NSUserDefaults.isMessagesLockdownModeEnabled.getter()
{
  v1 = v0;
  sub_258454F28();
  v2 = sub_258454F08();
  v3 = MEMORY[0x259C7FDB0]();

  if (v3)
  {
    return 1;
  }

  v5 = sub_258455128();
  v6 = [v1 objectForKey:v5 inDomain:*MEMORY[0x277CCA208]];

  if (v6)
  {
    sub_258455198();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      return v7;
    }
  }

  else
  {
    sub_258454E40(v10);
  }

  return 0;
}

uint64_t sub_258454E40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F92F4E0, &qword_258455828);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}