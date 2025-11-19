uint64_t sub_214B5E5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  if (a2)
  {
    sub_214B5E6F4(a1, a2);
  }

  if ((sub_214CCF664() & 1) == 0)
  {
    sub_214B5E6F4(a3, a4);
  }

  return v8;
}

uint64_t sub_214B5E6F4(uint64_t a1, uint64_t a2)
{
  sub_214B10198();
  sub_214A7C550();
  sub_214CD03C4();
  v14 = v2;
  v8 = *MEMORY[0x277CC24C8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC24C8]);
  v3 = sub_214CCF564();
  v9 = sub_214B5E8A4(v3, v4, a1, a2);

  MEMORY[0x277D82BD8](v8);
  *v14 = v9;
  v12 = *MEMORY[0x277CC24E0];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC24E0]);
  v5 = sub_214CCF564();
  v13 = sub_214B5E8A4(v5, v6, a1, a2);

  MEMORY[0x277D82BD8](v12);
  v14[1] = v13;
  sub_214A63280();
  v15 = sub_214C50438();
  v16 = sub_214B60830(v15);
  MEMORY[0x277D82BD8](v15);
  return v16;
}

id sub_214B5E8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[4] = 0;
  v24[7] = a1;
  v24[8] = a2;
  v24[5] = a3;
  v24[6] = a4;
  sub_214B10198();
  sub_214A7C550();
  sub_214CD03C4();
  v22 = v4;
  v23[6] = sub_214CD03B4();
  v23[7] = v5;
  v6 = sub_214CCF614();
  MEMORY[0x21605E650](v6);

  v23[4] = a3;
  v23[5] = a4;
  v18 = MEMORY[0x277D837D0];
  sub_214CD0394();
  v7 = sub_214CCF614();
  MEMORY[0x21605E650](v7);

  sub_214A61B48();
  v8 = sub_214CCF5F4();
  v24[3] = v18;
  v24[0] = v8;
  v24[1] = v9;
  v15 = sub_214B5E2A8(a1, a2, v24, 99);
  __swift_destroy_boxed_opaque_existential_0(v24);
  *v22 = v15;
  sub_214CD03B4();
  v10 = sub_214CCF614();
  MEMORY[0x21605E650](v10);

  sub_214CD0394();
  v11 = sub_214CCF614();
  MEMORY[0x21605E650](v11);

  sub_214A61B48();
  v12 = sub_214CCF5F4();
  v23[3] = v18;
  v23[0] = v12;
  v23[1] = v13;
  v21 = sub_214B5E2A8(a1, a2, v23, 99);
  __swift_destroy_boxed_opaque_existential_0(v23);
  v22[1] = v21;
  sub_214A63280();
  return sub_214C50438();
}

uint64_t sub_214B5EBB8(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277CC3140];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC3140]);
  v2 = sub_214CCF564();
  v8 = sub_214B5E8A4(v2, v3, a1, a2);

  MEMORY[0x277D82BD8](v7);
  v9 = sub_214B60830(v8);
  MEMORY[0x277D82BD8](v8);
  return v9;
}

uint64_t sub_214B5ECA8(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v27 = a2;
  v26 = v2;
  sub_214B10198();
  sub_214A7C550();
  sub_214CD03C4();
  v21 = v3;
  v14 = MEMORY[0x277CC2640];
  v12 = *MEMORY[0x277CC2640];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC2640]);
  v10 = sub_214CCF564();
  v11 = v4;
  sub_214A8539C();
  sub_214CCD204();
  v9 = sub_214B5EF34();
  [v9 0x1FA9B0EF8];
  v15 = MEMORY[0x277D839F8];
  v25[3] = MEMORY[0x277D839F8];
  v25[0] = v5;
  MEMORY[0x277D82BD8](v9);
  v13 = sub_214B5E2A8(v10, v11, v25, 3);
  __swift_destroy_boxed_opaque_existential_0(v25);

  MEMORY[0x277D82BD8](v12);
  *v21 = v13;
  v19 = *v14;
  MEMORY[0x277D82BE0](*v14);
  v17 = sub_214CCF564();
  v18 = v6;
  sub_214CCD204();
  v16 = sub_214B5EF34();
  [v16 0x1FA9B0EF8];
  v24[3] = v15;
  v24[0] = v7;
  MEMORY[0x277D82BD8](v16);
  v20 = sub_214B5E2A8(v17, v18, v24, 1);
  __swift_destroy_boxed_opaque_existential_0(v24);

  MEMORY[0x277D82BD8](v19);
  v21[1] = v20;
  sub_214A63280();
  v22 = sub_214B101FC();
  v23 = sub_214B60830(v22);
  MEMORY[0x277D82BD8](v22);
  return v23;
}

uint64_t sub_214B5EF74(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v15 = a2;
  v13 = v2;
  v9 = *MEMORY[0x277CC32E8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC32E8]);
  v5 = sub_214CCF564();
  v8 = v3;

  v12[3] = MEMORY[0x277D837D0];
  v12[0] = a1;
  v12[1] = a2;
  v10 = sub_214B5E2A8(v5, v8, v12, 4);
  __swift_destroy_boxed_opaque_existential_0(v12);

  MEMORY[0x277D82BD8](v9);
  v11 = sub_214B60830(v10);
  MEMORY[0x277D82BD8](v10);
  return v11;
}

uint64_t sub_214B5F0A8(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v14 = a2;
  v12 = v2;
  v5 = sub_214CCF614();
  v8 = v3;

  v11[3] = MEMORY[0x277D837D0];
  v11[0] = a1;
  v11[1] = a2;
  v9 = sub_214B5E2A8(v5, v8, v11, 4);
  __swift_destroy_boxed_opaque_existential_0(v11);

  v10 = sub_214B60830(v9);
  MEMORY[0x277D82BD8](v9);
  return v10;
}

uint64_t sub_214B5F1C4(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v14 = a2;
  v12 = v2;
  v5 = sub_214CCF614();
  v8 = v3;

  v11[3] = MEMORY[0x277D837D0];
  v11[0] = a1;
  v11[1] = a2;
  v9 = sub_214B5E2A8(v5, v8, v11, 4);
  __swift_destroy_boxed_opaque_existential_0(v11);

  v10 = sub_214B60830(v9);
  MEMORY[0x277D82BD8](v9);
  return v10;
}

uint64_t sub_214B5F2E0()
{
  sub_214B5E020();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35950);
  sub_214B609C8();
  v5 = sub_214CCFA94();

  if (v5)
  {
    return sub_214CCF614();
  }

  sub_214B10198();
  sub_214B5E020();
  v1 = sub_214B101FC();
  v2 = [v1 predicateFormat];
  sub_214CCF564();
  MEMORY[0x277D82BD8](v1);
  v3 = sub_214B5F430();

  MEMORY[0x277D82BD8](v2);
  return v3;
}

uint64_t sub_214B5F430()
{
  sub_214CCF614();
  sub_214CCF614();
  sub_214B075A0();
  sub_214B60B9C();
  sub_214CCFFD4();
  sub_214A61B48();
  sub_214A61B48();
  sub_214CCF614();
  sub_214CCF614();
  sub_214B60B9C();
  sub_214CCFFD4();
  sub_214A61B48();
  sub_214A61B48();
  sub_214A61B48();
  sub_214CCF614();
  sub_214CCF614();
  sub_214B60B9C();
  sub_214CCFFD4();
  sub_214A61B48();
  sub_214A61B48();
  sub_214A61B48();
  sub_214CCF614();
  sub_214CCF614();
  sub_214B60B9C();
  v1 = sub_214CCFFD4();
  sub_214A61B48();
  sub_214A61B48();
  sub_214A61B48();
  return v1;
}

uint64_t sub_214B5F854()
{
  sub_214B5E020();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35950);
  sub_214B609C8();
  v5 = sub_214CCFA94();

  if (v5)
  {
    return sub_214CCF614();
  }

  sub_214B10198();
  sub_214B5E020();
  v1 = sub_214C50438();
  v2 = [v1 predicateFormat];
  sub_214CCF564();
  MEMORY[0x277D82BD8](v1);
  v3 = sub_214B5F430();

  MEMORY[0x277D82BD8](v2);
  return v3;
}

id static CSQueryBuilder.queryContext.getter()
{
  sub_214B60BD8();
  v6 = sub_214A61730();
  MEMORY[0x277D82BE0](v6);
  sub_214B5FB5C();

  v3 = sub_214CCF7D4();

  [v6 setFetchAttributes_];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v6);
  [v6 setMaxCount_];
  [v6 setEnableInstantAnswers_];
  MEMORY[0x277D82BE0](v6);
  sub_214CD03C4();
  v4 = v0;
  *v0 = sub_214B5FBBC();
  v4[1] = v1;
  sub_214A63280();
  v5 = sub_214CCF7D4();

  [v6 setBundleIDs_];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  return v6;
}

uint64_t *sub_214B5FB5C()
{
  if (qword_27CA33FE8 != -1)
  {
    swift_once();
  }

  return &qword_27CA35928;
}

id static CSQueryBuilder.searchIndexerQueryContext.getter()
{
  sub_214B60BD8();
  v6 = sub_214A61730();
  MEMORY[0x277D82BE0](v6);
  sub_214B5FB5C();

  v3 = sub_214CCF7D4();

  [v6 setFetchAttributes_];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v6);
  [v6 setMaxCount_];
  [v6 setEnableInstantAnswers_];
  MEMORY[0x277D82BE0](v6);
  sub_214CD03C4();
  v4 = v0;
  v1 = sub_214B5FDA0();
  sub_214A61AD0(v1, v4);
  sub_214A63280();
  v5 = sub_214CCF7D4();

  [v6 setBundleIDs_];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  return v6;
}

uint64_t *sub_214B5FDA0()
{
  if (qword_27CA33FE0 != -1)
  {
    swift_once();
  }

  return &qword_27CA35918;
}

uint64_t sub_214B5FE00()
{
  result = sub_214CCF614();
  qword_27CA35918 = result;
  qword_27CA35920 = v1;
  return result;
}

uint64_t sub_214B5FE44()
{
  v1 = *sub_214B5FDA0();

  return v1;
}

uint64_t sub_214B5FE80()
{
  v31 = sub_214CD03C4();
  v30 = v0;
  v57 = *MEMORY[0x277CC32E8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC32E8]);
  *v30 = sub_214CCF564();
  v30[1] = v1;
  v30[2] = sub_214CCF614();
  v30[3] = v2;
  v30[4] = sub_214CCF614();
  v30[5] = v3;
  v56 = *MEMORY[0x277CC3028];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC3028]);
  v30[6] = sub_214CCF564();
  v30[7] = v4;
  v55 = *MEMORY[0x277CC3020];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC3020]);
  v30[8] = sub_214CCF564();
  v30[9] = v5;
  v54 = *MEMORY[0x277CC2FC0];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC2FC0]);
  v30[10] = sub_214CCF564();
  v30[11] = v6;
  v53 = *MEMORY[0x277CC2FB8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC2FB8]);
  v30[12] = sub_214CCF564();
  v30[13] = v7;
  v52 = *MEMORY[0x277CC2FA8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC2FA8]);
  v30[14] = sub_214CCF564();
  v30[15] = v8;
  v51 = *MEMORY[0x277CC23D0];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC23D0]);
  v30[16] = sub_214CCF564();
  v30[17] = v9;
  v50 = *MEMORY[0x277CC23E0];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC23E0]);
  v30[18] = sub_214CCF564();
  v30[19] = v10;
  v49 = *MEMORY[0x277CC23E8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC23E8]);
  v30[20] = sub_214CCF564();
  v30[21] = v11;
  v48 = *MEMORY[0x277CC2BC8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC2BC8]);
  v30[22] = sub_214CCF564();
  v30[23] = v12;
  v47 = *MEMORY[0x277CC2BC0];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC2BC0]);
  v30[24] = sub_214CCF564();
  v30[25] = v13;
  v46 = *MEMORY[0x277CC2BB0];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC2BB0]);
  v30[26] = sub_214CCF564();
  v30[27] = v14;
  v45 = *MEMORY[0x277CC3140];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC3140]);
  v30[28] = sub_214CCF564();
  v30[29] = v15;
  v44 = *MEMORY[0x277CC31A0];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC31A0]);
  v30[30] = sub_214CCF564();
  v30[31] = v16;
  v43 = *MEMORY[0x277CC3118];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC3118]);
  v30[32] = sub_214CCF564();
  v30[33] = v17;
  v42 = *MEMORY[0x277CC24D8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC24D8]);
  v30[34] = sub_214CCF564();
  v30[35] = v18;
  v41 = *MEMORY[0x277CC24E0];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC24E0]);
  v30[36] = sub_214CCF564();
  v30[37] = v19;
  v40 = *MEMORY[0x277CC24C8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC24C8]);
  v30[38] = sub_214CCF564();
  v30[39] = v20;
  v39 = *MEMORY[0x277CC2640];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC2640]);
  v30[40] = sub_214CCF564();
  v30[41] = v21;
  v38 = *MEMORY[0x277CC32D0];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC32D0]);
  v30[42] = sub_214CCF564();
  v30[43] = v22;
  v37 = *MEMORY[0x277CC32F8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC32F8]);
  v30[44] = sub_214CCF564();
  v30[45] = v23;
  v36 = *MEMORY[0x277CC2C80];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC2C80]);
  v30[46] = sub_214CCF564();
  v30[47] = v24;
  v35 = *MEMORY[0x277CC3300];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC3300]);
  v30[48] = sub_214CCF564();
  v30[49] = v25;
  v34 = *MEMORY[0x277CC2D68];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC2D68]);
  v30[50] = sub_214CCF564();
  v30[51] = v26;
  v33 = *MEMORY[0x277CC2498];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC2498]);
  v30[52] = sub_214CCF564();
  v30[53] = v27;
  v32 = *MEMORY[0x277CC2398];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC2398]);
  v30[54] = sub_214CCF564();
  v30[55] = v28;
  sub_214A63280();
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](v46);
  MEMORY[0x277D82BD8](v47);
  MEMORY[0x277D82BD8](v48);
  MEMORY[0x277D82BD8](v49);
  MEMORY[0x277D82BD8](v50);
  MEMORY[0x277D82BD8](v51);
  MEMORY[0x277D82BD8](v52);
  MEMORY[0x277D82BD8](v53);
  MEMORY[0x277D82BD8](v54);
  MEMORY[0x277D82BD8](v55);
  MEMORY[0x277D82BD8](v56);
  MEMORY[0x277D82BD8](v57);
  result = v31;
  qword_27CA35928 = v31;
  return result;
}

uint64_t sub_214B605C0()
{
  v1 = *sub_214B5FB5C();

  return v1;
}

id sub_214B605F0()
{
  v1 = sub_214CCF544();
  v2 = [swift_getObjCClassFromMetadata() expressionForKeyPath_];
  MEMORY[0x277D82BD8](v1);

  return v2;
}

id sub_214B60664(void *a1)
{
  v13 = a1;
  if (a1[3])
  {
    v8 = v13[3];
    __swift_project_boxed_opaque_existential_0(v13, v8);
    v6 = *(v8 - 8);
    v7 = v6;
    v10 = v4;
    v1 = MEMORY[0x28223BE20](v4);
    v9 = v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v1);
    v11 = sub_214CD03D4();
    (*(v7 + 8))(v9, v8);
    __swift_destroy_boxed_opaque_existential_0(v13);
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v4[1] = v12;
  v5 = [swift_getObjCClassFromMetadata() expressionForConstantValue_];
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_214B60830(uint64_t a1)
{

  MEMORY[0x277D82BE0](a1);
  v3 = sub_214B34CC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35950);
  sub_214CCF884();
  v3();

  return v4;
}

unint64_t sub_214B60900()
{
  v2 = qword_27CA35938;
  if (!qword_27CA35938)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA35938);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214B60964()
{
  v2 = qword_27CA35940;
  if (!qword_27CA35940)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA35940);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214B609C8()
{
  v2 = qword_27CA35958;
  if (!qword_27CA35958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35950);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35958);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B60A50()
{

  v1 = sub_214B34CC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35950);
  sub_214B60C3C();
  sub_214CCF874();
  v1();

  return v2;
}

uint64_t sub_214B60B9C()
{
  sub_214B61C9C(0);

  return 0;
}

unint64_t sub_214B60BD8()
{
  v2 = qword_27CA35968;
  if (!qword_27CA35968)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA35968);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214B60C3C()
{
  v2 = qword_27CA35970;
  if (!qword_27CA35970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35950);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35970);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B60CC4(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v14 = a2;
  v24 = 0;
  v25 = 0;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35978) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14);
  v9 = &v7 - v8;
  v24 = v2;
  v25 = v3;

  v23[4] = v13;
  v23[5] = v14;
  v15 = sub_214B60F8C();
  v16 = MEMORY[0x277D837D0];
  sub_214CCFA84();
  v10 = v23;
  v23[0] = v23[6];
  v23[1] = v23[7];
  v23[2] = v23[8];
  v23[3] = v23[9];
  sub_214CCD2C4();
  v4 = sub_214CCD2D4();
  (*(*(v4 - 8) + 56))(v9, 0, 1);
  sub_214B61004();
  v17 = MEMORY[0x277D83E40];
  v11 = sub_214CCFF94();
  v12 = v5;
  sub_214B6107C(v9);
  sub_214B61124();
  v20 = v22;
  v22[0] = v11;
  v22[1] = v12;

  v21[4] = v13;
  v21[5] = v14;
  sub_214B61150();
  sub_214CCFAA4();
  v19 = v21;
  v21[0] = v21[6];
  v21[1] = v21[7];
  v21[2] = v21[8];
  v21[3] = v21[9];
  v18 = sub_214B61168();
  sub_214B611E0();
  sub_214CCFAE4();
  sub_214B61124();
  sub_214A61B48();
  return v23[10];
}

unint64_t sub_214B60F8C()
{
  v2 = qword_27CA35980;
  if (!qword_27CA35980)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35980);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B61004()
{
  v2 = qword_280C7D008;
  if (!qword_280C7D008)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7D008);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B6107C(uint64_t a1)
{
  v3 = sub_214CCD2D4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_214B61168()
{
  v2 = qword_280C7D060;
  if (!qword_280C7D060)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7D060);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B611E0()
{
  v2 = qword_27CA35988;
  if (!qword_27CA35988)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35988);
    return WitnessTable;
  }

  return v2;
}

uint64_t Optional<A>.toString.getter()
{
  v21 = 0;
  v20 = 0;
  v11 = 0;
  v8 = sub_214CCCF04();
  v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v10 = &v4 - v9;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34250) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v19 = &v4 - v12;
  v18 = sub_214CCCF24();
  v16 = *(v18 - 8);
  v17 = v18 - 8;
  v14 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v15 = &v4 - v14;
  v21 = &v4 - v14;
  v20 = v0;
  sub_214AF7DFC(v0, v1);
  if ((*(v16 + 48))(v19, 1, v18) == 1)
  {
    sub_214AF7F24(v19);
    v6 = 0;
    v7 = 0;
  }

  else
  {
    (*(v16 + 32))(v15, v19, v18);
    sub_214CCCEF4();
    sub_214B614D0();
    v4 = sub_214CCF6D4();
    v5 = v2;
    (*(v16 + 8))(v15, v18);
    v6 = v4;
    v7 = v5;
  }

  return v6;
}

unint64_t sub_214B614D0()
{
  v2 = qword_27CA35998;
  if (!qword_27CA35998)
  {
    sub_214CCCF04();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35998);
    return WitnessTable;
  }

  return v2;
}

uint64_t CSSearchableItemAttributeSet.additionalRecipientEmailAddresses.getter()
{
  v1 = *MEMORY[0x277CC23D0];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC23D0]);
  sub_214CCF564();
  v2 = sub_214B615C8();

  MEMORY[0x277D82BD8](v1);
  return v2;
}

uint64_t sub_214B615C8()
{
  sub_214B6174C();

  v5 = sub_214B61828();
  if (!v5)
  {
    return 0;
  }

  if ([v4 valueForCustomKey_])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA359A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0);
    if (swift_dynamicCast())
    {
      v3 = v6;
    }

    else
    {
      v3 = 0;
    }

    v2 = v3;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x277D82BD8](v5);
  return v2;
}

unint64_t sub_214B6174C()
{
  v2 = qword_27CA359A0;
  if (!qword_27CA359A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA359A0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t CSSearchableItemAttributeSet.hiddenAdditionalRecipientEmailAddresses.getter()
{
  v1 = *MEMORY[0x277CC2BB0];
  MEMORY[0x277D82BE0](*MEMORY[0x277CC2BB0]);
  sub_214CCF564();
  v2 = sub_214B615C8();

  MEMORY[0x277D82BD8](v1);
  return v2;
}

id sub_214B61BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [v5 initWithLeftExpression:a1 rightExpression:a2 modifier:a3 type:a4 options:{a5, a3}];
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v9;
}

id sub_214B61C38()
{
  v2 = sub_214CCF544();
  v3 = [v1 initWithKeyName_];
  MEMORY[0x277D82BD8](v2);

  return v3;
}

uint64_t sub_214B61C9C(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x277D84F90];
    }

    type metadata accessor for CompareOptions();
    v1 = sub_214CCF834();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t SearchItem.Document.id.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v11 = sub_214CCD2B4();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v11);
  v7 = &v5 - v6;
  v14 = v3;
  v13 = v1;
  (*(v9 + 16))(v2);
  (*(v9 + 40))(v8, v7, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t SearchItem.Document.senders.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.Document() + 20));

  return v2;
}

uint64_t type metadata accessor for SearchItem.Document()
{
  v1 = qword_280C7E318;
  if (!qword_280C7E318)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t SearchItem.Document.senders.setter(uint64_t a1)
{

  *(v1 + *(type metadata accessor for SearchItem.Document() + 20)) = a1;
}

uint64_t SearchItem.Document.name.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.Document() + 24));

  return v2;
}

uint64_t SearchItem.Document.name.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.Document() + 24));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.Document.date.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.Document() + 28));

  return v2;
}

uint64_t SearchItem.Document.date.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.Document() + 28));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.Document.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for SearchItem.Document() + 32);
  v2 = sub_214CCD154();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t SearchItem.Document.fileURL.setter(uint64_t a1)
{
  v13 = a1;
  v15 = 0;
  v14 = 0;
  v8 = 0;
  v12 = sub_214CCD154();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v12);
  v9 = &v6 - v7;
  v15 = v3;
  v14 = v1;
  (*(v10 + 16))(v2);
  v4 = type metadata accessor for SearchItem.Document();
  (*(v10 + 40))(v1 + *(v4 + 32), v9, v12);
  return (*(v10 + 8))(v13, v12);
}

uint64_t SearchItem.Document.subject.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.Document() + 36));

  return v2;
}

uint64_t SearchItem.Document.subject.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.Document() + 36));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.Document.init(id:senders:name:date:subject:fileURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v43 = a9;
  v54 = a1;
  v51 = a2;
  v38 = a3;
  v50 = a4;
  v39 = a5;
  v49 = a6;
  v42 = a7;
  v48 = a8;
  v47 = a10;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v62 = 0;
  v63 = 0;
  v60 = 0;
  v61 = 0;
  v58 = 0;
  v59 = 0;
  v57 = 0;
  v36 = 0;
  v46 = sub_214CCD154();
  v44 = *(v46 - 8);
  v45 = v46 - 8;
  v34 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v40 = &v33 - v34;
  v55 = sub_214CCD2B4();
  v52 = *(v55 - 8);
  v53 = v55 - 8;
  v35 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36);
  v37 = &v33 - v35;
  v41 = type metadata accessor for SearchItem.Document();
  v10 = MEMORY[0x28223BE20](v37);
  v11 = v41;
  v12 = v52;
  v56 = &v33 - v13;
  v66 = &v33 - v13;
  v65 = v14;
  v64 = v15;
  v62 = v16;
  v63 = v17;
  v60 = v18;
  v61 = v19;
  v58 = v20;
  v59 = v21;
  v57 = v22;
  *(&v33 + v41[5] - v13) = v36;
  v23 = (&v33 + v11[6] - v13);
  *v23 = 0;
  v23[1] = 0;
  v24 = (&v33 + v11[7] - v13);
  *v24 = 0;
  v24[1] = 0;
  v25 = (&v33 + v11[9] - v13);
  *v25 = 0;
  v25[1] = 0;
  (*(v12 + 16))(v10);
  (*(v52 + 32))(v56, v37, v55);

  *(v56 + v41[5]) = v51;

  v26 = v50;
  v27 = (v56 + v41[6]);
  *v27 = v38;
  v27[1] = v26;

  v28 = v49;
  v29 = (v56 + v41[7]);
  *v29 = v39;
  v29[1] = v28;

  (*(v44 + 16))(v40, v47, v46);
  (*(v44 + 32))(v56 + v41[8], v40, v46);

  v30 = v48;
  v31 = (v56 + v41[9]);
  *v31 = v42;
  v31[1] = v30;

  sub_214B62A68(v56, v43);
  (*(v44 + 8))(v47, v46);

  (*(v52 + 8))(v54, v55);
  return sub_214B62C28(v56);
}

uint64_t sub_214B62A68(uint64_t a1, uint64_t a2)
{
  v2 = sub_214CCD2B4();
  (*(*(v2 - 8) + 16))(a2, a1);
  v15 = type metadata accessor for SearchItem.Document();
  v8 = v15[5];
  v9 = *(a1 + v8);

  *(a2 + v8) = v9;
  v3 = v15[6];
  v10 = a2 + v3;
  *(a2 + v3) = *(a1 + v3);
  v11 = *(a1 + v3 + 8);

  *(v10 + 8) = v11;
  v4 = v15[7];
  v12 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v13 = *(a1 + v4 + 8);

  *(v12 + 8) = v13;
  v14 = v15[8];
  v5 = sub_214CCD154();
  (*(*(v5 - 8) + 16))(a2 + v14, a1 + v14);
  v6 = v15[9];
  v18 = a2 + v6;
  *(a2 + v6) = *(a1 + v6);
  v19 = *(a1 + v6 + 8);

  result = a2;
  *(v18 + 8) = v19;
  return result;
}

uint64_t sub_214B62C28(uint64_t a1)
{
  v1 = sub_214CCD2B4();
  (*(*(v1 - 8) + 8))(a1);
  v5 = type metadata accessor for SearchItem.Document();

  v4 = *(v5 + 32);
  v2 = sub_214CCD154();
  (*(*(v2 - 8) + 8))(a1 + v4);

  return a1;
}

uint64_t SearchItem.Document.init(suggestion:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v55 = a1;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v57 = 0;
  v58 = 0;
  v42 = 0;
  v38 = (*(*(sub_214CCD154() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v39 = &v12 - v38;
  v40 = (*(*(sub_214CCD2B4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42);
  v41 = &v12 - v40;
  v43 = sub_214CCD254();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42);
  v47 = &v12 - v46;
  v48 = type metadata accessor for SearchItem.Document();
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55);
  v52 = &v12 - v51;
  v53 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v54 = &v12 - v53;
  v61 = &v12 - v53;
  v60 = v4;
  *&v5 = MEMORY[0x277D82BE0](v4).n128_u64[0];
  v56 = [v55 authors];
  if (v56)
  {
    v36 = v56;
    v33 = v56;
    v34 = sub_214CCF7E4();
    MEMORY[0x277D82BD8](v33);
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  v31 = v35;
  MEMORY[0x277D82BD8](v55);
  *&v6 = MEMORY[0x277D82BE0](v55).n128_u64[0];
  v32 = [v55 authorEmailAddresses];
  if (v32)
  {
    v30 = v32;
    v27 = v32;
    v28 = sub_214CCF7E4();
    MEMORY[0x277D82BD8](v27);
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  v12 = v29;
  MEMORY[0x277D82BD8](v55);
  v17 = sub_214B65BF4(v31, v12);

  v59 = v17;
  v14 = objc_opt_self();
  v13 = [v55 date];
  sub_214CCD224();
  v15 = sub_214CCD1C4();
  (*(v44 + 8))(v47, v43);
  *&v7 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  v16 = [v14 localizedStringFromDate:v15 dateStyle:1 timeStyle:{0, v7}];
  MEMORY[0x277D82BD8](v15);
  v20 = sub_214CCF564();
  v21 = v8;
  v57 = v20;
  v58 = v8;
  MEMORY[0x277D82BD8](v16);
  sub_214CCD2A4();
  v26 = [v55 name];
  v18 = sub_214CCF564();
  v19 = v9;
  v25 = [v55 subject];
  v22 = sub_214CCF564();
  v23 = v10;
  v24 = [v55 fileURL];
  sub_214CCD124();
  SearchItem.Document.init(id:senders:name:date:subject:fileURL:)(v41, v17, v18, v19, v20, v21, v22, v23, v52, v39);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  sub_214B633A4(v52, v54);
  sub_214B62A68(v54, v37);
  (*(v49 + 56))(v37, 0, 1, v48);
  MEMORY[0x277D82BD8](v55);
  return sub_214B62C28(v54);
}

__n128 sub_214B633A4(uint64_t a1, uint64_t a2)
{
  v2 = sub_214CCD2B4();
  (*(*(v2 - 8) + 32))(a2, a1);
  v6 = type metadata accessor for SearchItem.Document();
  *(a2 + v6[5]) = *(a1 + v6[5]);
  *(a2 + v6[6]) = *(a1 + v6[6]);
  *(a2 + v6[7]) = *(a1 + v6[7]);
  v5 = v6[8];
  v3 = sub_214CCD154();
  (*(*(v3 - 8) + 32))(a2 + v5, a1 + v5);
  result = *(a1 + v6[9]);
  *(a2 + v6[9]) = result;
  return result;
}

BOOL static SearchItem.Document.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v64 = v98;
  v73 = a1;
  v77 = a2;
  v109 = 0;
  v108 = 0;
  v65 = 0;
  v66 = sub_214CCD154();
  v67 = *(v66 - 8);
  v68 = v66 - 8;
  v69 = (v67[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v70 = &v19 - v69;
  v71 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v72 = &v19 - v71;
  v84 = sub_214CCD2B4();
  v80 = *(v84 - 8);
  v81 = v84 - 8;
  v75 = v80[8];
  v74 = (v75 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v84);
  v82 = &v19 - v74;
  v76 = (v75 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](&v19 - v74);
  v83 = &v19 - v76;
  v109 = v5;
  v108 = v77;
  v79 = v80[2];
  v78 = v80 + 2;
  v79(v4);
  (v79)(v82, v77, v84);
  v87 = sub_214CCD284();
  v86 = v80[1];
  v85 = v80 + 1;
  v86(v82, v84);
  v86(v83, v84);
  if ((v87 & 1) == 0)
  {
    return 0;
  }

  v61 = type metadata accessor for SearchItem.Document();
  v62 = *(v73 + v61[5]);

  v63 = *(v77 + v61[5]);

  v106 = v62;
  v107 = v63;
  if (v62)
  {
    sub_214B1C04C(&v106, &v90);
    if (v107)
    {
      v58 = &v89;
      v89 = v90;
      v57 = &v88;
      v88 = v107;
      v56 = v90;
      v54 = v107;
      v55 = sub_214B63E30();
      sub_214B63E94();
      v59 = sub_214CCF8E4();
      sub_214A62278();
      sub_214A62278();
      sub_214A62278();
      v60 = v59;
      goto LABEL_8;
    }

    sub_214A62278();
    goto LABEL_10;
  }

  if (v107)
  {
LABEL_10:
    sub_214B63DF8();
    v60 = 0;
    goto LABEL_8;
  }

  sub_214A62278();
  v60 = 1;
LABEL_8:
  v53 = v60;

  if (v53)
  {
    v6 = (v73 + v61[6]);
    v49 = *v6;
    v50 = v6[1];

    v7 = (v77 + v61[6]);
    v51 = *v7;
    v52 = v7[1];

    v104[0] = v49;
    v104[1] = v50;
    v104[2] = v51;
    v105 = v52;
    if (v50)
    {
      sub_214A61AD0(v104, &v93);
      if (v105)
      {
        v46 = &v92;
        v92 = v93;
        v8 = v64[7];
        v45 = &v91;
        v91 = v8;
        v47 = MEMORY[0x21605D8D0](v93, *(&v93 + 1), v8, *(&v8 + 1));
        sub_214A61B48();
        sub_214A61B48();
        sub_214A61B48();
        v48 = v47;
        goto LABEL_18;
      }

      sub_214A61B48();
    }

    else if (!v105)
    {
      sub_214A61B48();
      v48 = 1;
LABEL_18:
      v44 = v48;

      if ((v44 & 1) == 0)
      {
        return 0;
      }

      v9 = (v73 + v61[7]);
      v40 = *v9;
      v41 = v9[1];

      v10 = (v77 + v61[7]);
      v42 = *v10;
      v43 = v10[1];

      v102[0] = v40;
      v102[1] = v41;
      v102[2] = v42;
      v103 = v43;
      if (v41)
      {
        sub_214A61AD0(v102, &v96);
        if (v103)
        {
          v37 = &v95;
          v95 = v96;
          v11 = v64[5];
          v36 = &v94;
          v94 = v11;
          v38 = MEMORY[0x21605D8D0](v96, *(&v96 + 1), v11, *(&v11 + 1));
          sub_214A61B48();
          sub_214A61B48();
          sub_214A61B48();
          v39 = v38;
          goto LABEL_28;
        }

        sub_214A61B48();
      }

      else if (!v103)
      {
        sub_214A61B48();
        v39 = 1;
LABEL_28:
        v35 = v39;

        if ((v35 & 1) == 0)
        {
          return 0;
        }

        v12 = v73 + v61[8];
        v31 = v67[2];
        v30 = v67 + 2;
        v31(v72, v12, v66);
        v31(v70, v77 + v61[8], v66);
        v34 = sub_214CCD114();
        v33 = v67[1];
        v32 = v67 + 1;
        v33(v70, v66);
        v33(v72, v66);
        if ((v34 & 1) == 0)
        {
          return 0;
        }

        v13 = (v73 + v61[9]);
        v26 = *v13;
        v27 = v13[1];

        v14 = (v77 + v61[9]);
        v28 = *v14;
        v29 = v14[1];

        v100[0] = v26;
        v100[1] = v27;
        v100[2] = v28;
        v101 = v29;
        if (v27)
        {
          sub_214A61AD0(v100, &v99);
          if (v101)
          {
            v15 = v64;
            v16 = v64[1];
            v23 = v98;
            *v64 = v16;
            v17 = v15[3];
            v22 = &v97;
            v97 = v17;
            v24 = MEMORY[0x21605D8D0](v98[0], v98[1], v17, *(&v17 + 1));
            sub_214A61B48();
            sub_214A61B48();
            sub_214A61B48();
            v25 = v24;
LABEL_39:
            v21 = v25;

            return (v21 & 1) != 0;
          }

          sub_214A61B48();
        }

        else if (!v101)
        {
          sub_214A61B48();
          v25 = 1;
          goto LABEL_39;
        }

        sub_214A76610();
        v25 = 0;
        goto LABEL_39;
      }

      sub_214A76610();
      v39 = 0;
      goto LABEL_28;
    }

    sub_214A76610();
    v48 = 0;
    goto LABEL_18;
  }

  return 0;
}

unint64_t sub_214B63E30()
{
  v2 = qword_280C7CCE0;
  if (!qword_280C7CCE0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CCE0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214B63E94()
{
  v2 = qword_280C7CCD0;
  if (!qword_280C7CCD0)
  {
    sub_214B63E30();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CCD0);
    return WitnessTable;
  }

  return v2;
}

void *SearchItem.Document.hash(into:)(uint64_t a1)
{
  v27 = a1;
  v2 = v1;
  v33 = v2;
  v44 = 0;
  v43 = 0;
  v17 = 0;
  v31 = sub_214CCD154();
  v28 = *(v31 - 8);
  v29 = v31 - 8;
  v11 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v30 = &v10 - v11;
  v16 = sub_214CCD2B4();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v12 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v16);
  v15 = &v10 - v12;
  v44 = a1;
  v43 = v5;
  (*(v13 + 16))(v4);
  sub_214B5C87C();
  sub_214CD0554();
  (*(v13 + 8))(v15, v16);
  v32 = type metadata accessor for SearchItem.Document();
  v18 = *(v33 + v32[5]);

  v20 = &v42;
  v42 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA359B0);
  sub_214B642F0();
  sub_214CD0554();
  sub_214A62278();
  v6 = (v33 + v32[6]);
  v21 = *v6;
  v22 = v6[1];

  v23 = v41;
  v41[0] = v21;
  v41[1] = v22;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352F0);
  v37 = sub_214A75068();
  sub_214CD0554();
  sub_214A61B48();
  v7 = (v33 + v32[7]);
  v24 = *v7;
  v25 = v7[1];

  v26 = v40;
  v40[0] = v24;
  v40[1] = v25;
  sub_214CD0554();
  sub_214A61B48();
  (*(v28 + 16))(v30, v33 + v32[8], v31);
  sub_214B644A0();
  sub_214CD0554();
  (*(v28 + 8))(v30, v31);
  v8 = (v33 + v32[9]);
  v34 = *v8;
  v35 = v8[1];

  v38 = v39;
  v39[0] = v34;
  v39[1] = v35;
  sub_214CD0554();
  result = v38;
  sub_214A61B48();
  return result;
}

unint64_t sub_214B642F0()
{
  v2 = qword_280C7CE90;
  if (!qword_280C7CE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA359B0);
    sub_214B64388();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CE90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B64388()
{
  v2 = qword_280C7CEA0;
  if (!qword_280C7CEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA359B8);
    sub_214B64420();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CEA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B64420()
{
  v2 = qword_280C7CCD8;
  if (!qword_280C7CCD8)
  {
    sub_214B63E30();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CCD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B644A0()
{
  v2 = qword_280C7EB08;
  if (!qword_280C7EB08)
  {
    sub_214CCD154();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7EB08);
    return WitnessTable;
  }

  return v2;
}

uint64_t SearchItem.Document.hashValue.getter()
{
  type metadata accessor for SearchItem.Document();
  sub_214B64568();
  return sub_214CD0114();
}

unint64_t sub_214B64568()
{
  v2 = qword_27CA359C0;
  if (!qword_27CA359C0)
  {
    type metadata accessor for SearchItem.Document();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA359C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B64648()
{
  v2 = qword_27CA359C8;
  if (!qword_27CA359C8)
  {
    type metadata accessor for SearchItem.Document();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA359C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B64734()
{
  v5 = sub_214CCD2B4();
  if (v0 <= 0x3F)
  {
    v5 = sub_214B64884();
    if (v1 <= 0x3F)
    {
      v5 = sub_214B5CC3C();
      if (v2 <= 0x3F)
      {
        v5 = sub_214CCD154();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v5;
}

uint64_t sub_214B64884()
{
  v4 = qword_280C7CE98;
  if (!qword_280C7CE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA359B8);
    v3 = sub_214CCFF34();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_280C7CE98);
      return v1;
    }
  }

  return v4;
}

id sub_214B64954()
{
  result = sub_214B64974();
  qword_280C7DA98 = result;
  return result;
}

id sub_214B64974()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA359D8);
  v2 = sub_214B65B90();
  v0 = sub_214A731BC();
  v3 = sub_214BB5634(v2, v0);
  [v3 setCountLimit_];
  return v3;
}

uint64_t *sub_214B64A00()
{
  if (qword_280C7DA90 != -1)
  {
    swift_once();
  }

  return &qword_280C7DA98;
}

uint64_t sub_214B64A60()
{
  v0 = sub_214B64A00();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t static DocumentThumbnailGenerator.generateThumbnail(url:scale:)(uint64_t a1, double a2)
{
  *(v3 + 232) = v2;
  *(v3 + 224) = a2;
  *(v3 + 216) = a1;
  *(v3 + 144) = v3;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 192) = 0;
  *(v3 + 200) = 0;
  *(v3 + 208) = 0;
  v4 = sub_214CCD154();
  *(v3 + 240) = v4;
  *(v3 + 248) = *(v4 - 8);
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 152) = a1;
  *(v3 + 160) = a2;
  *(v3 + 168) = v2;

  return MEMORY[0x2822009F8](sub_214B64BE0, 0);
}

uint64_t sub_214B64BE0()
{
  v1 = v0[32];
  v22 = v0[31];
  v23 = v0[30];
  v19 = v0[27];
  v0[18] = v0;
  v2 = sub_214B64A00();
  v24 = *v2;
  v3 = MEMORY[0x277D82BE0](*v2);
  v4 = *(v22 + 16);
  v20 = v4;
  v0[33] = v4;
  v0[34] = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  (v4)(v1, v19, v23, v3);
  v21 = sub_214CCD104();
  v25 = [v24 objectForKey_];
  v5 = MEMORY[0x277D82BD8](v21);
  v6 = *(v22 + 8);
  v0[35] = v6;
  v0[36] = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v23, v5);
  MEMORY[0x277D82BD8](v24);
  if (v25)
  {
    *(v18 + 208) = v25;

    v7 = *(*(v18 + 144) + 8);

    return v7(v25);
  }

  else
  {
    v13 = *(v18 + 256);
    v11 = *(v18 + 240);
    v14 = *(v18 + 224);
    v12 = *(v18 + 216);
    sub_214B65744();
    v20(v13, v12, v11);
    v9 = sub_214B64928();
    v16 = sub_214B657A8(v13, v9, v10, v14);
    *(v18 + 296) = v16;
    *(v18 + 176) = v16;
    v17 = [objc_opt_self() sharedGenerator];
    *(v18 + 304) = v17;
    *(v18 + 16) = *(v18 + 144);
    *(v18 + 56) = v18 + 184;
    *(v18 + 24) = sub_214B64F84;
    v15 = swift_continuation_init();
    *(v18 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA359D0);
    *(v18 + 112) = v15;
    *(v18 + 80) = MEMORY[0x277D85DD0];
    *(v18 + 88) = 1107296256;
    *(v18 + 92) = 0;
    *(v18 + 96) = sub_214B65808;
    *(v18 + 104) = &block_descriptor_5;
    [v17 generateBestRepresentationForRequest:v16 completionHandler:?];

    return MEMORY[0x282200938](v18 + 16);
  }
}

uint64_t sub_214B64F84()
{
  v4 = *v0;
  v4[18] = *v0;
  v1 = v4[6];
  v4[39] = v1;
  if (v1)
  {
    v2 = sub_214B65400;
  }

  else
  {
    v2 = sub_214B650DC;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_214B650DC()
{
  v1 = v0[38];
  v0[18] = v0;
  v20 = v0[23];
  MEMORY[0x277D82BD8](v1);
  v0[24] = v20;
  MEMORY[0x277D82BE0](v20);
  if (v20)
  {
    v17 = QLThumbnailRepresentation.platformImage.getter();
    MEMORY[0x277D82BD8](v20);
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    v15 = v19[37];
    v13 = v19[35];
    v10 = v19[33];
    v2 = v19[32];
    v12 = v19[30];
    v9 = v19[27];
    v19[25] = v18;
    v3 = sub_214B64A00();
    v14 = *v3;
    v4 = MEMORY[0x277D82BE0](*v3);
    v10(v2, v9, v12, v4);
    v11 = sub_214CCD104();
    [v14 setObject:v18 forKey:?];
    v5 = MEMORY[0x277D82BD8](v11);
    v13(v2, v12, v5);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v15);
    v16 = v18;
  }

  else
  {
    v8 = v19[37];
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v8);
    v16 = 0;
  }

  v6 = *(v19[18] + 8);

  return v6(v16);
}

uint64_t sub_214B65400()
{
  v6 = v0[39];
  v5 = v0[38];
  v0[18] = v0;
  swift_willThrow();
  MEMORY[0x277D82BD8](v5);

  v0[24] = 0;
  MEMORY[0x277D82BE0](0);
  v3 = *(v4 + 296);
  MEMORY[0x277D82BD8](0);
  MEMORY[0x277D82BD8](v3);

  v1 = *(*(v4 + 144) + 8);

  return v1(0);
}

unint64_t sub_214B65744()
{
  v2 = qword_280C7C7A8;
  if (!qword_280C7C7A8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C7A8);
    return ObjCClassMetadata;
  }

  return v2;
}

double sub_214B65808(uint64_t a1, uint64_t a2, void *a3)
{
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  v11 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    v6 = sub_214B65A58();
    sub_214C01BE0(v11, a3, v6);
  }

  else
  {
    MEMORY[0x277D82BE0](a2);
    if (a2)
    {
      v7 = a2;
    }

    else
    {
      sub_214CD0404();
      __break(1u);
    }

    v12 = v7;
    v3 = sub_214B65A58();
    sub_214C01C44(v11, &v12, v3);
  }

  MEMORY[0x277D82BD8](a3);
  *&result = MEMORY[0x277D82BD8](a2).n128_u64[0];
  return result;
}

unint64_t sub_214B65A58()
{
  v2 = qword_280C7C870;
  if (!qword_280C7C870)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C870);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_214B65ABC(uint64_t a1, double a2, double a3, double a4)
{
  v10 = sub_214CCD104();
  v12 = [v4 initWithFileAtURL:a2 size:a3 scale:a4 representationTypes:?];
  MEMORY[0x277D82BD8](v10);
  v5 = sub_214CCD154();
  (*(*(v5 - 8) + 8))(a1);
  return v12;
}

unint64_t sub_214B65B90()
{
  v2 = qword_280C7C600;
  if (!qword_280C7C600)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C600);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_214B65BF4(uint64_t a1, uint64_t a2)
{

  if (!a2)
  {
    return 0;
  }

  if (a1)
  {
    v7 = sub_214CCF854();
    if (v7 == sub_214CCF854())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0);
      sub_214B22E9C();
      sub_214CD0494();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA359E0);
      sub_214CCF2D4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA359E8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA359F0);
      sub_214B662B4();
      sub_214CCF734();
      sub_214B63DF8();
      sub_214B63E30();
      sub_214B6638C();
      v6 = sub_214CCF6F4();
      sub_214A62278();

      return v6;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0);
      sub_214B63E30();
      sub_214B22E9C();
      v4 = sub_214CCF6F4();

      return v4;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0);
    sub_214B63E30();
    sub_214B22E9C();
    v3 = sub_214CCF6F4();

    return v3;
  }
}

id sub_214B65FC4@<X0>(void *a1@<X8>)
{
  sub_214B63E30();

  result = sub_214B6603C();
  *a1 = result;
  return result;
}

uint64_t sub_214B66084()
{

  sub_214B66428();

  v3 = sub_214B6603C();
  MEMORY[0x277D82BE0](v3);
  if (v3)
  {

    v2 = sub_214CCF544();

    [v3 setDisplayName_];
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](v3);
  }

  *&v0 = MEMORY[0x277D82BE0](v3).n128_u64[0];
  if (v3)
  {
    [v3 emailAddressValue];
    MEMORY[0x277D82BD8](v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA359F0);
  sub_214CCF884();
  MEMORY[0x277D82BD8](v3);
}

unint64_t sub_214B662B4()
{
  v2 = qword_280C7C428;
  if (!qword_280C7C428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA359E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C428);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B6633C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  result = MEMORY[0x277D82BE0](*a1);
  *a2 = v4;
  return result;
}

unint64_t sub_214B6638C()
{
  v2 = qword_280C7CE88;
  if (!qword_280C7CE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA359F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CE88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B66428()
{
  v2 = qword_280C7C930;
  if (!qword_280C7C930)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C930);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_214B6648C()
{
  v2 = sub_214CCF544();
  v3 = [v1 initWithString_];
  MEMORY[0x277D82BD8](v2);

  return v3;
}

uint64_t EMDaemonInterface.getMessageBody(mailMessageEntityID:)(uint64_t a1)
{
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v24 = a1;
  v23 = v1;
  v9 = [v1 messageRepository];
  v10 = EMMessageRepository.message(forMailMessageEntityID:)();
  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
    return v3;
  }

  else
  {
    MEMORY[0x277D82BD8](v9);
    v22 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA359F8);
    v21 = sub_214CCD4E4();
    sub_214B66AC0();
    v5 = sub_214B66BA4(sub_214B66B24, 0);
    v20 = v5;

    v18 = sub_214B66C9C;
    v19 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = 0;
    v16 = sub_214B673A0;
    v17 = &block_descriptor_6;
    v6 = _Block_copy(&aBlock);

    v7 = [v10 requestRepresentationWithOptions:v5 completionHandler:v6];
    _Block_release(v6);
    MEMORY[0x277D82BD8](v7);
    sub_214CCD4D4();
    sub_214CCD4B4();

    MEMORY[0x277D82BD8](v5);

    MEMORY[0x277D82BD8](v10);
    if (v12)
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }
}

id EMMessageRepository.message(forMailMessageEntityID:)()
{
  v18 = sub_214CCD3E4();
  v19 = v1;
  v2 = sub_214CCD3D4();
  v20 = MEMORY[0x21605D8D0](v18, v19, v2);

  if (v20)
  {
    sub_214CCD3A4();
    v14 = sub_214CCF544();

    v15 = [v0 messageForSearchableItemIdentifier_];
    v16 = [v15 result];
    MEMORY[0x277D82BD8](v15);
    return v16;
  }

  else
  {
    v11 = sub_214CCD3E4();
    v12 = v3;
    v4 = sub_214CCD3C4();
    v13 = MEMORY[0x21605D8D0](v11, v12, v4);

    if ((v13 & 1) == 0)
    {
      sub_214B6746C();
      swift_allocError();
      *v5 = 7;
      swift_willThrow();
      return v7;
    }

    sub_214CCD3A4();
    v8 = sub_214CCF544();

    v9 = [v0 messageForSearchIndexerIdentifier_];
    v10 = [v9 result];
    MEMORY[0x277D82BD8](v9);
    return v10;
  }
}

unint64_t sub_214B66AC0()
{
  v2 = qword_27CA35A00;
  if (!qword_27CA35A00)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA35A00);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_214B66B24(void *a1)
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  v2 = *MEMORY[0x277D06BA0];
  [a1 setRequestedRepresentation_];
  MEMORY[0x277D82BD8](v2);
  return swift_unknownObjectRelease();
}

double sub_214B66BEC(uint64_t a1, id a2)
{
  v2 = a2;
  MEMORY[0x277D82BE0](a1);
  sub_214CCD4C4();

  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

void sub_214B66CA4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v50 = a3;
  v58 = a1;
  v57 = a2;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v72 = 0;
  v71 = 0;
  v69 = 0;
  v70 = 0;
  v66 = 0;
  v67 = 0;
  v54 = 0;
  v3 = sub_214CCF594();
  v52 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v53 = &v26 - v52;
  v55 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v54);
  v56 = &v26 - v55;
  v59 = sub_214CCD154();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v58);
  v63 = &v26 - v62;
  v64 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v65 = &v26 - v64;
  v76 = &v26 - v64;
  v75 = v6;
  v74 = v7;
  v73 = v6;
  v49 = v6 != 0;
  if (v6)
  {
    v8 = v51;
    v9 = v50;
    *v50 = 0;
    v9[1] = 0;
    v48 = v8;
    return;
  }

  *&v10 = MEMORY[0x277D82BE0](v57).n128_u64[0];
  if (!v57)
  {
    v11 = v51;
    v12 = v50;
    *v50 = 0;
    v12[1] = 0;
    v48 = v11;
    return;
  }

  v47 = v57;
  v45 = v57;
  v72 = v57;
  v13 = [v57 contentURL];
  v46 = v13;
  if (v13)
  {
    v44 = v46;
    v43 = v46;
    sub_214CCD124();
    (*(v60 + 32))(v56, v63, v59);
    (*(v60 + 56))(v56, 0, 1, v59);
    v14 = MEMORY[0x277D82BD8](v43);
  }

  else
  {
    (*(v60 + 56))(v56, 1, 1, v59);
  }

  if ((*(v60 + 48))(v56, 1, v59, v14) == 1)
  {
    sub_214B6807C(v56);
    v42 = v51;
  }

  else
  {
    (*(v60 + 32))(v65, v56, v59);
    sub_214CCF584();
    v15 = v51;
    v16 = sub_214CCF4B4();
    v38 = v15;
    v39 = v16;
    v40 = v17;
    v41 = v15;
    if (!v15)
    {
      v37 = v40;
      v30 = v39;
      v69 = v39;
      v70 = v40;
      v32 = objc_opt_self();

      v33 = sub_214CCF544();

      type metadata accessor for ECMessageBodyStringAccumulatorOptions();
      v18 = sub_214CD03C4();
      *v19 = 32;
      v19[1] = 16;
      v19[2] = 17;
      sub_214A63280();
      v31 = v18;
      sub_214B01770();
      sub_214CD0084();
      v34 = [v32 snippetFromHTMLBody:v33 options:v68 maxLength:0x7FFFFFFFFFFFFFFFLL preservingQuotedForwardedContent:1];
      MEMORY[0x277D82BD8](v33);
      v36 = sub_214CCF564();
      v35 = v20;
      v66 = v36;
      v67 = v20;
      MEMORY[0x277D82BD8](v34);

      v21 = v35;
      v22 = v50;
      *v50 = v36;
      v22[1] = v21;

      (*(v60 + 8))(v65, v59);
      MEMORY[0x277D82BD8](v45);
      v48 = v38;
      return;
    }

    v27 = v41;
    v28 = 0;
    v25 = v41;
    v71 = v27;

    (*(v60 + 8))(v65, v59);
    v42 = v28;
  }

  v23 = v45;
  v24 = v50;
  v29 = v42;
  *v50 = 0;
  v24[1] = 0;
  MEMORY[0x277D82BD8](v23);
  v48 = v29;
}

uint64_t sub_214B673A0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);

  MEMORY[0x277D82BE0](a2);
  v3 = MEMORY[0x277D82BE0](a3);
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v6(a2, v3);

  MEMORY[0x277D82BD8](a2);
}

unint64_t sub_214B6746C()
{
  v2 = qword_27CA35A08;
  if (!qword_27CA35A08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35A08);
    return WitnessTable;
  }

  return v2;
}

uint64_t EMMessageRepository.messageObjectIDs(forMailMessageEntityIDs:)(uint64_t a1)
{
  v61 = a1;
  v59 = sub_214B67EA0;
  v60 = sub_214B67F78;
  v77 = 0;
  v76 = 0;
  v73 = 0;
  v74 = 0;
  v71 = 0;
  v69 = 0;
  v68 = 0;
  v62 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v61);
  v64 = v15 - v62;
  v77 = v2;
  v76 = v1;
  v75 = v2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A18);
  sub_214B67D0C();
  sub_214CCFA74();
  v65 = sub_214CCD3F4();
  v66 = *(v65 - 8);
  v67 = v65 - 8;
  if ((*(v66 + 48))(v64, 1) == 1)
  {
    sub_214B67D94(v64);
    v55 = 0;
    v56 = 0;
  }

  else
  {
    v53 = sub_214CCD3E4();
    v54 = v3;
    (*(v66 + 8))(v64, v65);
    v55 = v53;
    v56 = v54;
  }

  v51 = v56;
  v52 = v55;
  if (!v56)
  {
    v15[1] = 0;
    sub_214B67E3C();
    v40 = sub_214CD03C4();
    v41 = v58;
    return v40;
  }

  v49 = v52;
  v50 = v51;
  v45 = v51;
  v46 = v52;
  v73 = v52;
  v74 = v51;
  v72 = v61;
  sub_214B67EF0();
  v4 = v58;
  result = sub_214CCF6F4();
  v47 = v4;
  v48 = result;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v42 = v48;
    v71 = v48;
    v6 = sub_214CCD3D4();
    v43 = v7;
    v44 = MEMORY[0x21605D8D0](v46, v45, v6);

    if (v44)
    {

      v29 = MEMORY[0x277D837D0];
      v25 = sub_214CCF7D4();

      v30 = 0x1FC72F000uLL;
      v26 = [v57 0x1FC72FAD9];
      *&v8 = MEMORY[0x277D82BD8](v25).n128_u64[0];
      v32 = 0x1FAC75000uLL;
      v27 = [v26 0x1FAC75678];
      *&v9 = MEMORY[0x277D82BD8](v26).n128_u64[0];
      v33 = 0x1FA962000uLL;
      v28 = [v27 0x1FA9623A7];
      v34 = sub_214B67E3C();
      v38 = sub_214CCF7E4();
      v69 = v38;
      MEMORY[0x277D82BD8](v27);
      MEMORY[0x277D82BD8](v28);

      v31 = sub_214CCF7D4();

      v37 = [v57 (v30 + 2777)];
      *&v10 = MEMORY[0x277D82BD8](v31).n128_u64[0];
      v68 = v37;
      v35 = [v37 (v32 + 1656)];
      v36 = [v35 (v33 + 935)];
      v39 = sub_214CCF7E4();
      MEMORY[0x277D82BD8](v35);
      MEMORY[0x277D82BD8](v36);
      MEMORY[0x277D82BD8](v37);

      v40 = v39;
      v41 = v47;
      return v40;
    }

    v11 = sub_214CCD3C4();
    v23 = v12;
    v24 = MEMORY[0x21605D8D0](v46, v45, v11);

    if ((v24 & 1) == 0)
    {
      sub_214B6746C();
      v15[3] = swift_allocError();
      *v14 = 7;
      swift_willThrow();

      return v15[2];
    }

    v17 = sub_214CCF7D4();

    v18 = [v57 messageObjectIDsForSearchIndexerIdentifiers_];
    MEMORY[0x277D82BD8](v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34E00);
    v70 = sub_214CCF7E4();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A38);
    v20 = sub_214B67E3C();
    sub_214B67FC8();
    v13 = v47;
    result = sub_214CCF6F4();
    v21 = v13;
    v22 = result;
    if (!v13)
    {
      v16 = v22;
      sub_214A62278();
      MEMORY[0x277D82BD8](v18);

      v40 = v16;
      v41 = v21;
      return v40;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_214B67D0C()
{
  v2 = qword_27CA35A20;
  if (!qword_27CA35A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35A18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35A20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B67D94(uint64_t a1)
{
  v3 = sub_214CCD3F4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_214B67E3C()
{
  v2 = qword_27CA35A28;
  if (!qword_27CA35A28)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA35A28);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_214B67EA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_214CCD3A4();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_214B67EF0()
{
  v2 = qword_27CA35A30;
  if (!qword_27CA35A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35A18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35A30);
    return WitnessTable;
  }

  return v2;
}

id sub_214B67F78@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 result];
  *a2 = result;
  return result;
}

unint64_t sub_214B67FC8()
{
  v2 = qword_27CA35A40;
  if (!qword_27CA35A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35A38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35A40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B6807C(uint64_t a1)
{
  v3 = sub_214CCD154();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_214B68124(uint64_t a1, uint64_t a2)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v15 = sub_214B6829C;
  v16 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = 0;
  v13 = sub_214B682A8;
  v14 = &block_descriptor_3_0;
  v6 = _Block_copy(&aBlock);
  v7 = [v5 initWithBuilder_];
  _Block_release(v6);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_214B682A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);
  return swift_unknownObjectRelease();
}

Swift::Bool __swiftcall EMSender.matches(searchString:)(Swift::String searchString)
{
  if (sub_214CCF664())
  {
    v2 = 1;
  }

  else
  {
    v4 = sub_214B68414();
    (MEMORY[0x277D82BE0])();

    if (v4)
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_214B684F8();
    }

    (MEMORY[0x277D82BD8])();

    v2 = v3;
  }

  return v2 & 1;
}

uint64_t sub_214B68414()
{
  v2 = [v0 displayName];
  sub_214CCF564();
  sub_214B075A0();
  v3 = sub_214CCFFE4();
  sub_214A61B48();
  MEMORY[0x277D82BD8](v2);
  return v3 & 1;
}

uint64_t sub_214B684F8()
{
  v3 = [v0 addresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35CB0);
  sub_214CCF7E4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EB0);
  sub_214B68780();
  v2 = sub_214CCF774();

  sub_214A62278();
  MEMORY[0x277D82BD8](v3);
  return v2 & 1;
}

uint64_t sub_214B68644(void **a1)
{
  v4 = *a1;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v2 = [v4 stringValue];
  sub_214CCF564();
  swift_unknownObjectRelease();
  sub_214B075A0();
  v3 = sub_214CCFFE4();
  sub_214A61B48();
  MEMORY[0x277D82BD8](v2);
  return v3 & 1;
}

unint64_t sub_214B68780()
{
  v2 = qword_27CA35AB8;
  if (!qword_27CA35AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA34EB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35AB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B68834@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v63 = a2;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v27 = 0;
  v25 = (*(*(sub_214CCE4D4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v26 = v16 - v25;
  v28 = sub_214CCE374();
  v29 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27);
  v30 = v16 - v29;
  v62 = sub_214CCE7F4();
  v59 = *(v62 - 8);
  v60 = v62 - 8;
  v31 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62);
  v61 = v16 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35AC0);
  v33 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32);
  v57 = v16 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35AC8);
  v35 = (*(*(v34 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34);
  v36 = v16 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35AD0);
  v38 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37);
  v39 = v16 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35AD8);
  v41 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v40);
  v42 = v16 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35AE0);
  v44 = (*(*(v43 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v43);
  v45 = v16 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35AE8);
  v47 = (*(*(v46 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v46);
  v48 = v16 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35AF0);
  v53 = *(*(v49 - 8) + 64);
  v50 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v49);
  v51 = v16 - v50;
  v52 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16 - v50);
  v54 = v16 - v52;
  v55 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16 - v52);
  v56 = v16 - v55;
  v70 = v16 - v55;
  v69 = a1;
  v68 = v4 & 1;
  sub_214CCE804();
  v58 = sub_214CCE904();
  sub_214B69124();
  sub_214CCECF4();

  (*(v59 + 8))(v61, v62);
  if (v63)
  {
    v23 = sub_214B697AC();
  }

  else
  {
    v23 = sub_214CCEE84();
  }

  v18 = &v67;
  v67 = v23;
  sub_214B691A4();
  sub_214CCEC04();
  sub_214A75F80();
  sub_214B6924C(v57);
  v19 = sub_214CCE8F4();
  sub_214B692E4();
  v22 = 0;
  sub_214CCED64();
  sub_214B6938C(v36);
  v20 = sub_214B6944C();
  v5 = sub_214B68808();
  v21 = &v8;
  v8 = 0;
  v9 = 1;
  v10 = 0;
  v11 = 1;
  v12 = v5;
  v13 = v6;
  v14 = v37;
  v15 = v20;
  sub_214CCED14();
  sub_214B6938C(v39);
  sub_214B694F0();
  sub_214CCEE24();
  sub_214B6938C(v42);
  if (v63)
  {
    v17 = sub_214B697C4();
  }

  else
  {
    v17 = static Color.mui_systemBackground.getter();
  }

  v16[4] = &v66;
  v66 = v17;
  v16[2] = sub_214B69594();
  v16[1] = MEMORY[0x277CE0F78];
  v16[3] = MEMORY[0x277CE0F60];
  sub_214B07A68();
  sub_214CCEAC4();
  sub_214A75F80();
  sub_214B696C4(v45);
  sub_214B697DC(v26);
  sub_214CCE354();
  v16[5] = sub_214B69848();
  v16[6] = sub_214B07660();
  v65 = sub_214B07A90();
  v64 = v65;
  sub_214CCEE04();
  sub_214B076E0(v30);
  sub_214B698F0(v48);
  v16[7] = sub_214B69A00();
  sub_214B061F0(v54, v49, v56);
  sub_214B69AA8(v54);
  sub_214B69C38(v56, v51);
  sub_214B061F0(v51, v49, v24);
  sub_214B69AA8(v51);
  return sub_214B69AA8(v56);
}

unint64_t sub_214B69124()
{
  v2 = qword_27CA35AF8;
  if (!qword_27CA35AF8)
  {
    sub_214CCE7F4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35AF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B691A4()
{
  v2 = qword_27CA35B00;
  if (!qword_27CA35B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35AC0);
    sub_214B69124();
    sub_214B0B47C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35B00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B6924C(uint64_t a1)
{
  v1 = sub_214CCE7F4();
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35AC0);

  return a1;
}

unint64_t sub_214B692E4()
{
  v2 = qword_27CA35B08;
  if (!qword_27CA35B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35AC8);
    sub_214B691A4();
    sub_214B0B5F0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35B08);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B6938C(uint64_t a1)
{
  v1 = sub_214CCE7F4();
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35AC0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35AC8);

  return a1;
}

unint64_t sub_214B6944C()
{
  v2 = qword_27CA35B10;
  if (!qword_27CA35B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35AD0);
    sub_214B692E4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35B10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B694F0()
{
  v2 = qword_27CA35B18;
  if (!qword_27CA35B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35AD8);
    sub_214B6944C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35B18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B69594()
{
  v2 = qword_27CA35B20;
  if (!qword_27CA35B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35AE0);
    sub_214B694F0();
    sub_214B6963C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35B20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B6963C()
{
  v2 = qword_27CA35B28;
  if (!qword_27CA35B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37FB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35B28);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B696C4(uint64_t a1)
{
  v1 = sub_214CCE7F4();
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35AC0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35AC8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35AE0);

  return a1;
}

uint64_t sub_214B697DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277CE0118];
  v1 = sub_214CCE4D4();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

unint64_t sub_214B69848()
{
  v2 = qword_27CA35B30;
  if (!qword_27CA35B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35AE8);
    sub_214B69594();
    sub_214B070E8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35B30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B698F0(uint64_t a1)
{
  v1 = sub_214CCE7F4();
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35AC0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35AC8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35AE0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35AE8);

  return a1;
}

unint64_t sub_214B69A00()
{
  v2 = qword_27CA35B38;
  if (!qword_27CA35B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35AF0);
    sub_214B69848();
    sub_214B07170();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35B38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B69AA8(uint64_t a1)
{
  v1 = sub_214CCE7F4();
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35AC0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35AC8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35AE0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35AE8);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35AF0) + 36);
  v5 = *(sub_214CCE374() + 20);
  v2 = sub_214CCE4D4();
  (*(*(v2 - 8) + 8))(a1 + v4 + v5);
  return a1;
}

uint64_t sub_214B69C38(uint64_t a1, uint64_t a2)
{
  v2 = sub_214CCE7F4();
  (*(*(v2 - 8) + 16))(a2, a1);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35AC0) + 36);
  v12 = *(a1 + v11);

  *(a2 + v11) = v12;
  v13 = *(a1 + v11 + 8);

  *(a2 + v11 + 8) = v13;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35AC8) + 36);
  v15 = *(a1 + v14);

  *(a2 + v14) = v15;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35AD0);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x29uLL);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35AD8);
  memcpy((a2 + *(v4 + 36)), (a1 + *(v4 + 36)), 0x70uLL);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35AE0) + 36);
  v17 = *(a1 + v16);

  v5 = a2 + v16;
  *v5 = v17;
  *(v5 + 8) = *(a1 + v16 + 8);
  *(v5 + 16) = *(a1 + v16 + 16);
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35AE8) + 36);
  v19 = *(a1 + v18);

  v6 = a2 + v18;
  *v6 = v19;
  *(v6 + 8) = *(a1 + v18 + 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35AF0);
  v22 = (a1 + *(v7 + 36));
  v23 = (a2 + *(v7 + 36));
  *v23 = *v22;
  v21 = *(sub_214CCE374() + 20);
  v8 = sub_214CCE4D4();
  (*(*(v8 - 8) + 16))(&v23[v21], &v22[v21]);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34C28);
  result = a2;
  *&v23[*(v9 + 36)] = *&v22[*(v9 + 36)];
  return result;
}

uint64_t sub_214B69F8C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v8 = ((a2 + 1) >> 8) + 1;
    v9 = 1;
    if (v8 >= 0x100)
    {
      if (v8 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v9 = v2;
    }

    if (v9 == 1)
    {
      v7 = a1[1];
    }

    else
    {
      v7 = v9 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v7)
    {
      v6 = (*a1 | ((v7 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v4 = *a1;
      v5 = -1;
      if ((v4 & 0xFFFFFFFE) != 0)
      {
        v5 = v4 & 1 | ((v4 & 0xFE) - 2) & 0x7FFFFFFF;
      }

      v6 = v5;
    }
  }

  else
  {
    v6 = -1;
  }

  return (v6 + 1);
}

_BYTE *sub_214B6A124(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t FeedbackHighImpact.rawValue.getter()
{
  if (!*v0)
  {
    return 0;
  }

  if (*v0 == 1)
  {
    return 1;
  }

  return 2;
}

uint64_t FeedbackHighImpact.localizedTitle.getter()
{
  v36 = 0;
  v20 = 0;
  v21 = (*(*(sub_214CCD2D4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v22 = &v8[-v21];
  v1 = sub_214CCF534();
  v23 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v24 = &v8[-v23];
  v25 = *v0;
  v36 = v25;
  if (v25)
  {
    if (v25 == 1)
    {
      *&v12[1] = 1;
      sub_214CCF614();
      sub_214CCF4C4();
      v13 = sub_214CCF614();
      v14 = v4;
      sub_214B1CFBC();
      v29 = 0;
      v30 = 0;
      v31 = *v12 & 0x100;
    }

    else
    {
      v9 = 1;
      sub_214CCF614();
      sub_214CCF4C4();
      v10 = sub_214CCF614();
      v11 = v5;
      sub_214B1CFBC();
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = v9 & 1;
    }

    v18 = sub_214CCF5A4();
    v19 = v6;
  }

  else
  {
    *&v15[1] = 1;
    sub_214CCF614();
    sub_214CCF4C4();
    v16 = sub_214CCF614();
    v17 = v2;
    sub_214B1CFBC();
    v26 = 0;
    v27 = 0;
    v28 = *v15 & 0x100;
    v18 = sub_214CCF5A4();
    v19 = v3;
  }

  return v18;
}

uint64_t FeedbackHighImpact.logDescription.getter()
{
  v36 = 0;
  v20 = 0;
  v21 = (*(*(sub_214CCD2D4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v22 = &v8[-v21];
  v1 = sub_214CCF534();
  v23 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v24 = &v8[-v23];
  v25 = *v0;
  v36 = v25;
  if (v25)
  {
    if (v25 == 1)
    {
      *&v12[1] = 1;
      sub_214CCF614();
      sub_214CCF4C4();
      v13 = sub_214CCF614();
      v14 = v4;
      sub_214B1CFBC();
      v29 = 0;
      v30 = 0;
      v31 = *v12 & 0x100;
    }

    else
    {
      v9 = 1;
      sub_214CCF614();
      sub_214CCF4C4();
      v10 = sub_214CCF614();
      v11 = v5;
      sub_214B1CFBC();
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = v9 & 1;
    }

    v18 = sub_214CCF5A4();
    v19 = v6;
  }

  else
  {
    *&v15[1] = 1;
    sub_214CCF614();
    sub_214CCF4C4();
    v16 = sub_214CCF614();
    v17 = v2;
    sub_214B1CFBC();
    v26 = 0;
    v27 = 0;
    v28 = *v15 & 0x100;
    v18 = sub_214CCF5A4();
    v19 = v3;
  }

  return v18;
}

uint64_t static FeedbackHighImpact.groupedHighImpactSelections.getter()
{
  result = sub_214CD03C4();
  *v1 = 0;
  v1[1] = 1;
  sub_214A63280();
  return result;
}

MailUI::FeedbackHighImpact_optional __swiftcall FeedbackHighImpact.init(rawValue:)(Swift::Int rawValue)
{
  switch(rawValue)
  {
    case 0:
      v3 = 0;
LABEL_8:
      *v1 = v3;
      return rawValue;
    case 1:
      v3 = 1;
      goto LABEL_8;
    case 2:
      v3 = 2;
      goto LABEL_8;
  }

  *v1 = 3;
  return rawValue;
}

unint64_t sub_214B6AB08()
{
  v2 = qword_27CA35B40;
  if (!qword_27CA35B40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35B40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B6ABA0@<X0>(uint64_t *a1@<X8>)
{
  result = FeedbackHighImpact.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_214B6AC9C@<X0>(uint64_t *a1@<X8>)
{
  result = FeedbackHighImpact.id.getter();
  *a1 = result;
  return result;
}

uint64_t FeedbackCategory.rawValue.getter()
{
  v3 = *v0;
  if (!*v0)
  {
    return 0;
  }

  switch(v3)
  {
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
    case 7:
      return 7;
  }

  return 8;
}

uint64_t FeedbackCategory.localizedTitle.getter()
{
  v83 = 0;
  v50 = 0;
  v51 = (*(*(sub_214CCD2D4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v52 = &v20[-v51];
  v1 = sub_214CCF534();
  v53 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v54 = &v20[-v53];
  v55 = *v0;
  v83 = v55;
  if (v55)
  {
    if (v55 == 1)
    {
      *&v42[1] = 1;
      sub_214CCF614();
      sub_214CCF4C4();
      v43 = sub_214CCF614();
      v44 = v4;
      sub_214B1CFBC();
      v59 = 0;
      v60 = 0;
      v61 = *v42 & 0x100;
      v48 = sub_214CCF5A4();
      v49 = v5;
    }

    else if (v55 == 2)
    {
      *&v39[1] = 1;
      sub_214CCF614();
      sub_214CCF4C4();
      v40 = sub_214CCF614();
      v41 = v6;
      sub_214B1CFBC();
      v62 = 0;
      v63 = 0;
      v64 = *v39 & 0x100;
      v48 = sub_214CCF5A4();
      v49 = v7;
    }

    else if (v55 == 3)
    {
      *&v36[1] = 1;
      sub_214CCF614();
      sub_214CCF4C4();
      v37 = sub_214CCF614();
      v38 = v8;
      sub_214B1CFBC();
      v65 = 0;
      v66 = 0;
      v67 = *v36 & 0x100;
      v48 = sub_214CCF5A4();
      v49 = v9;
    }

    else if (v55 == 4)
    {
      *&v33[1] = 1;
      sub_214CCF614();
      sub_214CCF4C4();
      v34 = sub_214CCF614();
      v35 = v10;
      sub_214B1CFBC();
      v68 = 0;
      v69 = 0;
      v70 = *v33 & 0x100;
      v48 = sub_214CCF5A4();
      v49 = v11;
    }

    else if (v55 == 5)
    {
      *&v30[1] = 1;
      sub_214CCF614();
      sub_214CCF4C4();
      v31 = sub_214CCF614();
      v32 = v12;
      sub_214B1CFBC();
      v71 = 0;
      v72 = 0;
      v73 = *v30 & 0x100;
      v48 = sub_214CCF5A4();
      v49 = v13;
    }

    else if (v55 == 6)
    {
      *&v27[1] = 1;
      sub_214CCF614();
      sub_214CCF4C4();
      v28 = sub_214CCF614();
      v29 = v14;
      sub_214B1CFBC();
      v74 = 0;
      v75 = 0;
      v76 = *v27 & 0x100;
      v48 = sub_214CCF5A4();
      v49 = v15;
    }

    else
    {
      if (v55 == 7)
      {
        *&v24[1] = 1;
        sub_214CCF614();
        sub_214CCF4C4();
        v25 = sub_214CCF614();
        v26 = v16;
        sub_214B1CFBC();
        v77 = 0;
        v78 = 0;
        v79 = *v24 & 0x100;
      }

      else
      {
        *&v21[1] = 1;
        sub_214CCF614();
        sub_214CCF4C4();
        v22 = sub_214CCF614();
        v23 = v17;
        sub_214B1CFBC();
        v80 = 0;
        v81 = 0;
        v82 = *v21 & 0x100;
      }

      v48 = sub_214CCF5A4();
      v49 = v18;
    }
  }

  else
  {
    *&v45[1] = 1;
    sub_214CCF614();
    sub_214CCF4C4();
    v46 = sub_214CCF614();
    v47 = v2;
    sub_214B1CFBC();
    v56 = 0;
    v57 = 0;
    v58 = *v45 & 0x100;
    v48 = sub_214CCF5A4();
    v49 = v3;
  }

  return v48;
}

uint64_t static FeedbackCategory.groupedCategories.getter()
{
  result = sub_214CD03C4();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  v1[3] = 4;
  v1[4] = 5;
  v1[5] = 6;
  sub_214A63280();
  return result;
}

MailUI::FeedbackCategory_optional __swiftcall FeedbackCategory.init(rawValue:)(Swift::Int rawValue)
{
  switch(rawValue)
  {
    case 0:
      v3 = 0;
LABEL_20:
      *v1 = v3;
      return rawValue;
    case 1:
      v3 = 1;
      goto LABEL_20;
    case 2:
      v3 = 2;
      goto LABEL_20;
    case 3:
      v3 = 3;
      goto LABEL_20;
    case 4:
      v3 = 4;
      goto LABEL_20;
    case 5:
      v3 = 5;
      goto LABEL_20;
    case 6:
      v3 = 6;
      goto LABEL_20;
    case 7:
      v3 = 7;
      goto LABEL_20;
    case 8:
      v3 = 8;
      goto LABEL_20;
  }

  *v1 = 9;
  return rawValue;
}

unint64_t sub_214B6B8CC()
{
  v2 = qword_27CA35C10;
  if (!qword_27CA35C10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35C10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B6B964@<X0>(uint64_t *a1@<X8>)
{
  result = FeedbackCategory.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_214B6BA60@<X0>(uint64_t *a1@<X8>)
{
  result = FeedbackCategory.id.getter();
  *a1 = result;
  return result;
}

unint64_t sub_214B6BAA4()
{
  v2 = qword_27CA36220;
  if (!qword_27CA36220)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36220);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B6BB38()
{
  v2 = qword_27CA35B48;
  if (!qword_27CA35B48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35B48);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for FeedbackHighImpact(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FeedbackHighImpact(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeedbackCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF7)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 8) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 247;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 9;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FeedbackCategory(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF7)
  {
    v5 = ((a3 + 8) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xF7)
  {
    v4 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 8;
    }
  }

  return result;
}

unint64_t sub_214B6C2C8@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  result = sub_214B6C308(*v1);
  *a1 = v4;
  return result;
}

unint64_t sub_214B6C308(unint64_t result)
{
  if (result > 2)
  {
  }

  return result;
}

unint64_t sub_214B6C344(unint64_t *a1)
{
  v4 = *a1;
  sub_214B6C308(*a1);
  v2 = *v1;
  *v1 = v4;
  sub_214B6C398(v2);
  return sub_214B6C398(v4);
}

unint64_t sub_214B6C398(unint64_t result)
{
  if (result > 2)
  {
  }

  return result;
}

uint64_t sub_214B6C3D4()
{
  v2 = *(v0 + 8);
  sub_214B5188C(v2);
  return v2;
}

uint64_t sub_214B6C414(uint64_t a1, uint64_t a2)
{
  sub_214B5188C(a1);
  v3 = *(v2 + 8);
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  sub_214A6B584(v3);
  return sub_214A6B584(a1);
}

void *sub_214B6C480@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v14 = 0;
  v6 = *a1;
  v14 = v6;
  v16 = 0;
  v17 = 0;
  sub_214B6C308(v6);
  v13 = v6;
  v12 = 1;
  v7 = static FeedbackListViewModel.State.== infix(_:_:)(&v13, &v12);
  sub_214B6C308(v6);
  if (v7)
  {
    v4 = 1;
  }

  else
  {
    v11 = v6;
    v10 = 0;
    v4 = static FeedbackListViewModel.State.== infix(_:_:)(&v11, &v10);
  }

  sub_214B6C398(v6);
  sub_214B6C308(v6);
  if (v4)
  {
    v3 = 1;
  }

  else
  {
    v9 = v6;
    v8 = 2;
    v3 = static FeedbackListViewModel.State.== infix(_:_:)(&v9, &v8);
  }

  sub_214B6C398(v6);
  if ((v3 & 1) == 0)
  {
    sub_214B11080();
    sub_214CD0204();
    __break(1u);
  }

  sub_214B6C398(v6);
  sub_214B6C308(v6);
  v15 = v6;
  sub_214B6D5C8(&v15, a2);
  sub_214B6C398(v6);
  return sub_214B6D68C(&v15);
}

uint64_t FeedbackContentEmptyView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v13 = a1;
  v6 = sub_214B6D6F4;
  v25 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35B50);
  v4 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14);
  v16 = &v4 - v4;
  v5 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v4 - v4);
  v17 = &v4 - v5;
  v25 = &v4 - v5;
  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  v22 = v10;
  v23 = v11;
  v24 = v12;
  sub_214B6C308(v10);
  sub_214B5188C(v11);
  v7 = &v18;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35B58);
  v9 = sub_214B6D704();
  sub_214B6C2A4();
  sub_214CCF064();
  sub_214B6C398(v10);
  sub_214A6B584(v11);
  v15 = sub_214B6D78C();
  sub_214B061F0(v16, v14, v17);
  sub_214B6D814(v16);
  sub_214B6D98C(v17, v16);
  sub_214B061F0(v16, v14, v13);
  sub_214B6D814(v16);
  return sub_214B6D814(v17);
}

void *sub_214B6C820@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a4;
  v94 = a1;
  v80 = a2;
  v81 = a3;
  v82 = sub_214B6E290;
  v156 = 0;
  v155 = 0;
  v152 = 0;
  v153 = 0;
  v154 = 0;
  v93 = &v141;
  v141 = 0;
  v142 = 0;
  memset(v136, 0, sizeof(v136));
  v109 = 0;
  v110 = 0;
  v97 = 0;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35088);
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v64);
  v68 = v32 - v67;
  v69 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32 - v67);
  v70 = v32 - v69;
  v71 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32 - v69);
  v72 = v32 - v71;
  v156 = v32 - v71;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35B80);
  v74 = (*(*(v73 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v94);
  v75 = v32 - v74;
  v76 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v77 = v32 - v76;
  v78 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v79 = v32 - v78;
  v155 = v32 - v78;
  v152 = v10;
  v153 = v11;
  v154 = v12;
  sub_214B6C308(v10);
  sub_214B5188C(v80);
  v13 = swift_allocObject();
  v14 = v80;
  v15 = v81;
  v16 = v13;
  v17 = v82;
  v16[2] = v94;
  v16[3] = v14;
  v16[4] = v15;
  sub_214B6E8BC(v17, v16, v147);
  v84 = v144;
  v144[0] = v147[0];
  v144[1] = v147[1];
  v145 = v148;
  v146 = v149;
  v83 = sub_214CCE894();
  sub_214B6E2A0();
  v85 = &v150;
  v92 = 0;
  v91 = 1;
  sub_214CCED64();
  sub_214B6E318(v84);
  v86 = __dst;
  v87 = 73;
  memcpy(__dst, v85, 0x49uLL);
  v90 = v143;
  memcpy(v143, __dst, 0x49uLL);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35B90);
  v89 = sub_214B6E364();
  sub_214B061F0(v90, v88, v151);
  sub_214B6E318(v90);
  v139 = sub_214CCF054();
  v140 = v18 & 1;
  sub_214B061F0(&v139, MEMORY[0x277CE1180], v93);
  sub_214B6C308(v94);
  v95 = &v138;
  v138 = v94;
  v137 = 0;
  v96 = static FeedbackListViewModel.State.== infix(_:_:)(&v138, &v137);
  sub_214B6E408(v95);
  if (v96)
  {
    sub_214CCE174();
    v60 = sub_214B1B88C();
    sub_214B061F0(v70, v64, v72);
    v61 = *(v65 + 8);
    v62 = v65 + 8;
    v61(v70, v64);
    v97 = v70;
    v59 = *(v65 + 16);
    v58 = v65 + 16;
    v59(v68, v72, v64);
    sub_214B061F0(v68, v64, v70);
    v61(v68, v64);
    v59(v75, v70, v64);
    (*(v65 + 56))(v75, 0, 1, v64);
    sub_214C66600(v75, v64, v77);
    sub_214B6E450(v75);
    sub_214B6E504(v77, v79);
    v61(v70, v64);
    v61(v72, v64);
  }

  else
  {
    (*(v65 + 56))(v75, 1, 1, v64);
    sub_214B1B88C();
    sub_214C66600(v75, v64, v77);
    sub_214B6E450(v75);
    sub_214B6E504(v77, v79);
  }

  v135[2] = v94;
  v135[3] = v80;
  v135[4] = v81;
  v19 = sub_214B6D254();
  v32[0] = v135;
  v135[0] = v19;
  v135[1] = v20;
  sub_214B075A0();
  v131 = sub_214CCEA74();
  v132 = v21;
  v133 = v22;
  v134 = v23;
  v33 = v131;
  v34 = v21;
  v35 = v22;
  v36 = v23;
  v32[1] = sub_214CCE904();
  v127 = v33;
  v128 = v34;
  v46 = 1;
  v129 = v35 & 1;
  v130 = v36;
  v123 = sub_214CCEA34();
  v124 = v24;
  v125 = v25;
  v126 = v26;
  v38 = v123;
  v39 = v24;
  v37 = v25;
  v40 = v26;

  sub_214B072EC(v33, v34, v35 & 1);

  v122 = sub_214BE7678();
  v118 = v38;
  v119 = v39;
  v120 = v37 & 1 & v46;
  v121 = v40;
  v114 = sub_214CCEA04();
  v115 = v27;
  v116 = v28;
  v117 = v29;
  v41 = v114;
  v42 = v27;
  v43 = v28;
  v44 = v29;
  sub_214B072EC(v38, v39, v37 & 1);

  v45 = v111;
  v111[0] = v41;
  v111[1] = v42;
  v112 = v43 & 1 & v46;
  v113 = v44;
  v56 = v136;
  v47 = MEMORY[0x277CE0BD8];
  v49 = MEMORY[0x277CE0BC8];
  sub_214B061F0(v111, MEMORY[0x277CE0BD8], v136);
  sub_214B07618(v45);
  v107 = sub_214CCF054();
  v108 = v30 & 1 & v46;
  v48 = MEMORY[0x277CE1180];
  v50 = MEMORY[0x277CE1170];
  sub_214B061F0(&v107, MEMORY[0x277CE1180], &v109);
  v57 = v151;
  v55 = v105;
  sub_214B6E638(v151, v105);
  v53 = v106;
  v106[0] = v55;
  v103 = v141;
  v104 = v142;
  v106[1] = &v103;
  sub_214B6E6F0(v79, v77);
  v106[2] = v77;
  v54 = v102;
  sub_214B0C408(v56, v102);
  v106[3] = v54;
  v100 = v109;
  v101 = v110;
  v106[4] = &v100;
  v51 = v99;
  v99[0] = v88;
  v99[1] = v48;
  v99[2] = v73;
  v99[3] = v47;
  v99[4] = v48;
  v52 = v98;
  v98[0] = v89;
  v98[1] = v50;
  v98[2] = sub_214B6E824();
  v98[3] = v49;
  v98[4] = v50;
  sub_214C663A4(v53, 5uLL, v51, v63);
  sub_214B07618(v54);
  sub_214B6E450(v77);
  sub_214B6E318(v55);
  sub_214B07618(v56);
  sub_214B6E450(v79);
  return sub_214B6E318(v57);
}

uint64_t sub_214B6D1BC(uint64_t a1, void (*a2)(uint64_t))
{
  result = sub_214B5188C(a2);
  if (a2)
  {
    a2(result);
  }

  return result;
}

uint64_t sub_214B6D254()
{
  v40 = 0;
  v25 = 0;
  v26 = (*(*(sub_214CCD2D4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v27 = v10 - v26;
  v1 = sub_214CCF534();
  v28 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v29 = v10 - v28;
  v30 = *v0;
  v40 = v0;
  sub_214B6C308(v30);
  if (v30)
  {
    if (v30 == 1)
    {
      *&v16[1] = 1;
      sub_214CCF614();
      sub_214CCF4C4();
      v17 = sub_214CCF614();
      v18 = v4;
      sub_214B1CFBC();
      v34 = 0;
      v35 = 0;
      v36 = *v16 & 0x100;
      v22 = sub_214CCF5A4();
      v23 = v5;
    }

    else if (v30 == 2)
    {
      *&v13[1] = 1;
      sub_214CCF614();
      sub_214CCF4C4();
      v14 = sub_214CCF614();
      v15 = v6;
      sub_214B1CFBC();
      v37 = 0;
      v38 = 0;
      v39 = *v13 & 0x100;
      v22 = sub_214CCF5A4();
      v23 = v7;
    }

    else
    {
      v24 = v30;
      v10[1] = v30;
      v11 = sub_214CCF614();
      v12 = v8;

      v22 = v11;
      v23 = v12;
    }
  }

  else
  {
    *&v19[1] = 1;
    sub_214CCF614();
    sub_214CCF4C4();
    v20 = sub_214CCF614();
    v21 = v2;
    sub_214B1CFBC();
    v31 = 0;
    v32 = 0;
    v33 = *v19 & 0x100;
    v22 = sub_214CCF5A4();
    v23 = v3;
  }

  return v22;
}

void *sub_214B6D5C8(void *a1, void *a2)
{
  if (*a1 <= 2uLL)
  {
    *a2 = *a1;
  }

  else
  {
    v5 = *a1;

    *a2 = v5;
  }

  if (a1[1])
  {
    v3 = a1[1];
    v4 = a1[2];

    a2[1] = v3;
    a2[2] = v4;
  }

  else
  {
    *(a2 + 1) = *(a1 + 1);
  }

  return a2;
}

void *sub_214B6D68C(void *a1)
{
  if (*a1 > 2uLL)
  {
  }

  if (a1[1])
  {
  }

  return a1;
}

unint64_t sub_214B6D704()
{
  v2 = qword_27CA35B60;
  if (!qword_27CA35B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35B58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35B60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B6D78C()
{
  v2 = qword_27CA35B68;
  if (!qword_27CA35B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35B50);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35B68);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B6D814(uint64_t a1)
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35B70) + 44);
  if (*(a1 + v8))
  {
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35B78);
  v4 = a1 + v8 + *(v3 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35088);
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v4, 1))
  {
    (*(v6 + 8))(v4, v5);
  }

  v2 = a1 + v8 + *(v3 + 80);
  sub_214B072EC(*v2, *(v2 + 8), *(v2 + 16) & 1);

  return a1;
}

uint64_t sub_214B6D98C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35B70) + 44);
  if (*(a1 + v24))
  {
    v20 = *(a1 + v24);
    v21 = *(a1 + v24 + 8);

    v2 = (a2 + v24);
    *v2 = v20;
    v2[1] = v21;
  }

  else
  {
    *(a2 + v24) = *(a1 + v24);
  }

  v14 = a2 + v24;
  *(a2 + v24 + 16) = *(a1 + v24 + 16);
  v13 = *(a1 + v24 + 24);

  *(v14 + 24) = v13;
  memcpy((a2 + v24 + 32), (a1 + v24 + 32), 0x29uLL);
  *(v14 + 80) = *(a1 + v24 + 80);
  *(v14 + 88) = *(a1 + v24 + 88);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35B78);
  v16 = (a2 + v24 + v15[16]);
  v17 = (a1 + v24 + v15[16]);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35088);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35B80);
    memcpy(v16, v17, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v19 + 16))(v16, v17, v18);
    (*(v19 + 56))(v16, 0, 1, v18);
  }

  v11 = a2 + v24 + v15[20];
  v10 = a1 + v24 + v15[20];
  v7 = *v10;
  v8 = *(v10 + 8);
  v9 = *(v10 + 16);
  sub_214B0755C(*v10, v8, v9 & 1);
  *v11 = v7;
  *(v11 + 8) = v8;
  *(v11 + 16) = v9 & 1;
  v12 = *(v10 + 24);

  result = a2;
  *(v11 + 24) = v12;
  v5 = v15[24];
  v6 = a2 + v24 + v5;
  *v6 = *(a1 + v24 + v5);
  *(v6 + 8) = *(a1 + v24 + v5 + 8);
  return result;
}

uint64_t get_enum_tag_for_layout_string_6MailUI21FeedbackListViewModelC5StateO(void *a1)
{
  v2 = -1;
  if (*a1 < 0x100000000uLL)
  {
    v2 = *a1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(void *a1)
{
  v2 = -1;
  if (*a1 < 0x100000000uLL)
  {
    v2 = *a1;
  }

  return (v2 + 1);
}

uint64_t sub_214B6DF7C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v4 = *(a1 + 8);
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_214B6E0AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_214B6E2A0()
{
  v2 = qword_27CA35B88;
  if (!qword_27CA35B88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35B88);
    return WitnessTable;
  }

  return v2;
}

void *sub_214B6E318(void *a1)
{
  if (*a1)
  {
  }

  return a1;
}

unint64_t sub_214B6E364()
{
  v2 = qword_27CA35B98;
  if (!qword_27CA35B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35B90);
    sub_214B6E2A0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35B98);
    return WitnessTable;
  }

  return v2;
}

void *sub_214B6E408(void *a1)
{
  if (*a1 > 2uLL)
  {
  }

  return a1;
}

uint64_t sub_214B6E450(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35088);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_214B6E504(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35088);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35B80);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_214B6E638(uint64_t *a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = *a1;
    v5 = a1[1];

    *a2 = v4;
    *(a2 + 8) = v5;
  }

  else
  {
    *a2 = *a1;
  }

  *(a2 + 16) = *(a1 + 16);
  v3 = a1[3];

  *(a2 + 24) = v3;
  memcpy((a2 + 32), a1 + 4, 0x29uLL);
  return a2;
}

void *sub_214B6E6F0(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35088);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35B80);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_214B6E824()
{
  v2 = qword_27CA35BA0;
  if (!qword_27CA35BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35B80);
    sub_214B1B88C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35BA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B6E8BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  result = sub_214B6E9B8();
  *(a3 + 16) = result & 1;
  *(a3 + 24) = v4;
  return result;
}

uint64_t sub_214B6E90C()
{
  v2 = *v0;
  sub_214B5188C(*v0);
  return v2;
}

uint64_t sub_214B6E94C(uint64_t a1, uint64_t a2)
{
  sub_214B5188C(a1);
  v3 = *v2;
  *v2 = a1;
  v2[1] = a2;
  sub_214A6B584(v3);
  return sub_214A6B584(a1);
}

uint64_t sub_214B6EA0C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35BA8);
  sub_214CCEFC4();

  return v1 & 1;
}

uint64_t sub_214B6EA94()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35BA8);
  sub_214CCEFD4();
  sub_214AA8B50();
}

uint64_t sub_214B6EB48()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35BA8);
  sub_214CCEFE4();

  return v1;
}

uint64_t sub_214B6EBE8()
{
  v2 = *(v0 + 16);

  return v2 & 1;
}

uint64_t sub_214B6EC2C(char a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t FeedbackHeaderView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v13 = 0u;
  v14 = 0u;
  memset(__b, 0, 0xE9uLL);
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *&v13 = *v1;
  *(&v13 + 1) = v2;
  LOBYTE(v14) = v3;
  *(&v14 + 1) = v4;
  sub_214CCE534();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35BB0);
  sub_214B6F2F8();
  sub_214CCF064();
  memcpy(__dst, v11, sizeof(__dst));
  memcpy(v10, __dst, 0xE9uLL);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35BC0);
  sub_214B6F380();
  sub_214B061F0(v10, v7, __b);
  sub_214B6F408(v10);
  memcpy(v16, __b, 0xE9uLL);
  sub_214B6F498(v16, v9);
  memcpy(v8, v16, 0xE9uLL);
  sub_214B061F0(v8, v7, a1);
  sub_214B6F408(v8);
  return sub_214B6F408(__b);
}

uint64_t sub_214B6EE30@<X0>(uint64_t a1@<X8>)
{
  memset(__b, 0, 0xA1uLL);
  memset(v66, 0, sizeof(v66));
  v37 = 0;
  v38 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35BD0);
  sub_214B70254();
  sub_214B6C2A4();
  HIBYTE(v24) = 1;
  sub_214CCF064();
  memcpy(__dst, v68, sizeof(__dst));
  memcpy(v67, __dst, 0xA1uLL);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35BE0);
  sub_214B702DC();
  sub_214B061F0(v67, v25, __b);
  sub_214B70364(v67);
  sub_214CCF614();
  sub_214CCE4B4();
  sub_214CCF614();
  v63 = 0;
  v64 = 0;
  v65 = v24 & 0x100;
  v59 = sub_214CCEA54();
  v60 = v1;
  v61 = v2;
  v62 = v3;
  v13 = v59;
  v14 = v1;
  v12 = v2;
  v15 = v3;
  v58 = sub_214BE7678();
  v54 = v13;
  v55 = v14;
  v56 = v12 & 1;
  v57 = v15;
  v50 = sub_214CCEA04();
  v51 = v4;
  v52 = v5;
  v53 = v6;
  v16 = v50;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  sub_214B072EC(v13, v14, v12 & 1);

  sub_214CCE994();
  v46 = v16;
  v47 = v17;
  v48 = v18 & 1;
  v49 = v19;
  v42 = sub_214CCEA34();
  v43 = v7;
  v44 = v8;
  v45 = v9;
  v20 = v42;
  v21 = v7;
  v22 = v8;
  v23 = v9;

  sub_214B072EC(v16, v17, v18 & 1);

  v39[0] = v20;
  v39[1] = v21;
  v40 = v22 & 1;
  v41 = v23;
  v26 = MEMORY[0x277CE0BD8];
  sub_214B061F0(v39, MEMORY[0x277CE0BD8], v66);
  sub_214B07618(v39);
  v35 = sub_214CCF054();
  v36 = v10 & 1;
  v27 = MEMORY[0x277CE1180];
  sub_214B061F0(&v35, MEMORY[0x277CE1180], &v37);
  sub_214B703D0(__b, v33);
  v34[0] = v33;
  sub_214B0C408(v66, v32);
  v34[1] = v32;
  v30 = v37;
  v31 = v38;
  v34[2] = &v30;
  v29[0] = v25;
  v29[1] = v26;
  v29[2] = v27;
  sub_214C663A4(v34, 3uLL, v29, a1);
  sub_214B07618(v32);
  sub_214B70364(v33);
  sub_214B07618(v66);
  return sub_214B70364(__b);
}

unint64_t sub_214B6F2F8()
{
  v2 = qword_27CA35BB8;
  if (!qword_27CA35BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35BB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35BB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B6F380()
{
  v2 = qword_27CA35BC8;
  if (!qword_27CA35BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35BC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35BC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B6F408(uint64_t a1)
{
  sub_214B072EC(*(a1 + 72), *(a1 + 80), *(a1 + 88) & 1);

  sub_214B072EC(*(a1 + 144), *(a1 + 152), *(a1 + 160) & 1);

  sub_214B072EC(*(a1 + 192), *(a1 + 200), *(a1 + 208) & 1);

  return a1;
}

uint64_t sub_214B6F498(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  sub_214B0755C(v3, v4, v5 & 1);
  *(a2 + 72) = v3;
  *(a2 + 80) = v4;
  *(a2 + 88) = v5 & 1;
  v6 = *(a1 + 96);

  *(a2 + 96) = v6;
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 112) = *(a1 + 112);
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 136) = *(a1 + 136);
  v7 = *(a1 + 144);
  v8 = *(a1 + 152);
  v9 = *(a1 + 160);
  sub_214B0755C(v7, v8, v9 & 1);
  *(a2 + 144) = v7;
  *(a2 + 152) = v8;
  *(a2 + 160) = v9 & 1;
  v10 = *(a1 + 168);

  *(a2 + 168) = v10;
  *(a2 + 176) = *(a1 + 176);
  *(a2 + 184) = *(a1 + 184);
  v11 = *(a1 + 192);
  v12 = *(a1 + 200);
  v13 = *(a1 + 208);
  sub_214B0755C(v11, v12, v13 & 1);
  *(a2 + 192) = v11;
  *(a2 + 200) = v12;
  *(a2 + 208) = v13 & 1;
  v15 = *(a1 + 216);

  result = a2;
  *(a2 + 216) = v15;
  *(a2 + 224) = *(a1 + 224);
  *(a2 + 232) = *(a1 + 232);
  return result;
}

uint64_t sub_214B6F66C@<X0>(uint64_t a1@<X8>)
{
  memset(__b, 0, 0x41uLL);
  memset(v10, 0, 0x41uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35BF0);
  sub_214B7051C();
  sub_214C11934();
  sub_214CCF024();
  memcpy(__dst, v12, sizeof(__dst));
  memcpy(v11, __dst, 0x41uLL);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35C00);
  sub_214B705A4();
  sub_214B061F0(v11, v2, __b);
  sub_214B7062C(v11);
  sub_214C11934();
  sub_214CCF024();
  memcpy(v15, v9, sizeof(v15));
  memcpy(v8, v15, 0x41uLL);
  sub_214B061F0(v8, v2, v10);
  sub_214B7062C(v8);
  sub_214B70674(__b, v6);
  v7[0] = v6;
  sub_214B70674(v10, v5);
  v7[1] = v5;
  v4[0] = v2;
  v4[1] = v2;
  sub_214C663A4(v7, 2uLL, v4, a1);
  sub_214B7062C(v5);
  sub_214B7062C(v6);
  sub_214B7062C(v10);
  return sub_214B7062C(__b);
}

uint64_t sub_214B6F8BC@<X0>(uint64_t a1@<X8>)
{
  memset(v45, 0, sizeof(v45));
  v27 = 0;
  v28 = 0;
  sub_214CCF614();
  v41 = sub_214CCEA44();
  v42 = v1;
  v43 = v2;
  v44 = v3;
  v10 = v41;
  v11 = v1;
  v9 = v2;
  v12 = v3;
  v40 = sub_214BE7678();
  v36 = v10;
  v37 = v11;
  v38 = v9 & 1;
  v39 = v12;
  v32 = sub_214CCEA04();
  v33 = v4;
  v34 = v5;
  v35 = v6;
  v13 = v32;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  sub_214B072EC(v10, v11, v9 & 1);

  v29[0] = v13;
  v29[1] = v14;
  v30 = v15 & 1;
  v31 = v16;
  v17 = MEMORY[0x277CE0BD8];
  sub_214B061F0(v29, MEMORY[0x277CE0BD8], v45);
  sub_214B07618(v29);
  v25 = sub_214CCF054();
  v26 = v7 & 1;
  v18 = MEMORY[0x277CE1180];
  sub_214B061F0(&v25, MEMORY[0x277CE1180], &v27);
  sub_214B0C408(v45, v23);
  v24[0] = v23;
  v21 = v27;
  v22 = v28;
  v24[1] = &v21;
  v20[0] = v17;
  v20[1] = v18;
  sub_214C663A4(v24, 2uLL, v20, a1);
  sub_214B07618(v23);
  return sub_214B07618(v45);
}

uint64_t sub_214B6FB3C@<X0>(uint64_t a1@<X8>)
{
  memset(v63, 0, sizeof(v63));
  v35 = 0;
  v36 = 0;
  HIBYTE(v24) = 1;
  sub_214CCF614();
  sub_214CCE4B4();
  sub_214CCF614();
  v60 = 0;
  v61 = 0;
  v62 = v24 & 0x100;
  v56 = sub_214CCEA54();
  v57 = v1;
  v58 = v2;
  v59 = v3;
  v12 = v56;
  v13 = v1;
  v14 = v2;
  v15 = v3;
  sub_214CCE924();
  v52 = v12;
  v53 = v13;
  v54 = v14 & 1;
  v55 = v15;
  v48 = sub_214CCEA34();
  v49 = v4;
  v50 = v5;
  v51 = v6;
  v17 = v48;
  v18 = v4;
  v16 = v5;
  v19 = v6;

  sub_214B072EC(v12, v13, v14 & 1);

  sub_214CCE934();
  v44 = v17;
  v45 = v18;
  v46 = v16 & 1;
  v47 = v19;
  v40 = sub_214CCE9E4();
  v41 = v7;
  v42 = v8;
  v43 = v9;
  v20 = v40;
  v21 = v7;
  v22 = v8;
  v23 = v9;
  sub_214B072EC(v17, v18, v16 & 1);

  v37[0] = v20;
  v37[1] = v21;
  v38 = v22 & 1;
  v39 = v23;
  v25 = MEMORY[0x277CE0BD8];
  sub_214B061F0(v37, MEMORY[0x277CE0BD8], v63);
  sub_214B07618(v37);
  v33 = sub_214CCF054();
  v34 = v10 & 1;
  v26 = MEMORY[0x277CE1180];
  sub_214B061F0(&v33, MEMORY[0x277CE1180], &v35);
  sub_214B0C408(v63, v31);
  v32[0] = v31;
  v29 = v35;
  v30 = v36;
  v32[1] = &v29;
  v28[0] = v25;
  v28[1] = v26;
  sub_214C663A4(v32, 2uLL, v28, a1);
  sub_214B07618(v31);
  return sub_214B07618(v63);
}

uint64_t sub_214B6FF20(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFE && *(a1 + 32))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v4 = *a1;
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_214B7006C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_214B70254()
{
  v2 = qword_27CA35BD8;
  if (!qword_27CA35BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35BD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35BD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B702DC()
{
  v2 = qword_27CA35BE8;
  if (!qword_27CA35BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35BE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35BE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B70364(uint64_t a1)
{
  sub_214B072EC(*(a1 + 48), *(a1 + 56), *(a1 + 64) & 1);

  sub_214B072EC(*(a1 + 120), *(a1 + 128), *(a1 + 136) & 1);

  return a1;
}

uint64_t sub_214B703D0(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  sub_214B0755C(v3, v4, v5 & 1);
  *(a2 + 48) = v3;
  *(a2 + 56) = v4;
  *(a2 + 64) = v5 & 1;
  v6 = *(a1 + 72);

  *(a2 + 72) = v6;
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = *(a1 + 112);
  v7 = *(a1 + 120);
  v8 = *(a1 + 128);
  v9 = *(a1 + 136);
  sub_214B0755C(v7, v8, v9 & 1);
  *(a2 + 120) = v7;
  *(a2 + 128) = v8;
  *(a2 + 136) = v9 & 1;
  v11 = *(a1 + 144);

  result = a2;
  *(a2 + 144) = v11;
  *(a2 + 152) = *(a1 + 152);
  *(a2 + 160) = *(a1 + 160);
  return result;
}

unint64_t sub_214B7051C()
{
  v2 = qword_27CA35BF8;
  if (!qword_27CA35BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35BF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35BF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B705A4()
{
  v2 = qword_27CA35C08;
  if (!qword_27CA35C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35C00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35C08);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B7062C(uint64_t a1)
{
  sub_214B072EC(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  return a1;
}

uint64_t sub_214B70674(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_214B0755C(v3, v4, v5 & 1);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5 & 1;
  v7 = *(a1 + 48);

  result = a2;
  *(a2 + 48) = v7;
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 64) = *(a1 + 64);
  return result;
}

uint64_t FeedbackItem.id.getter@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  result = swift_unknownObjectRetain();
  *a1 = v4;
  return result;
}

uint64_t FeedbackItem.id.setter(uint64_t *a1)
{
  v3 = *a1;
  swift_unknownObjectRetain();
  *v1 = v3;
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t FeedbackItem.sender.getter()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t FeedbackItem.sender.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t FeedbackItem.subject.getter()
{
  v2 = *(v0 + 24);

  return v2;
}

uint64_t FeedbackItem.subject.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t FeedbackItem.summary.getter()
{
  v2 = *(v0 + 40);

  return v2;
}

uint64_t FeedbackItem.summary.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t FeedbackItem.message.getter()
{
  v2 = *(v0 + 64);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t FeedbackItem.message.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v2 = *(v1 + 64);
  *(v1 + 64) = a1;
  MEMORY[0x277D82BD8](v2);
  return MEMORY[0x277D82BD8](a1);
}

uint64_t FeedbackItem.init(id:sender:subject:summary:selectedCategory:isHighImpact:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, char *a10)
{
  memset(__b, 0, sizeof(__b));
  v23 = *a1;
  v17 = *a8;
  v18 = *a10;
  __b[8] = 0;
  swift_unknownObjectRetain();
  __b[0] = v23;

  __b[1] = a2;
  __b[2] = a3;

  __b[3] = a4;
  __b[4] = a5;

  __b[5] = a6;
  __b[6] = a7;
  LOBYTE(__b[7]) = v17;
  BYTE1(__b[7]) = v18;
  v10 = __b[8];
  __b[8] = 0;
  MEMORY[0x277D82BD8](v10);
  sub_214B70DF0(__b, a9);

  swift_unknownObjectRelease();
  return sub_214B70ECC(__b);
}

uint64_t sub_214B70DF0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  swift_unknownObjectRetain();
  *a2 = v3;
  *(a2 + 8) = a1[1];
  v4 = a1[2];

  *(a2 + 16) = v4;
  *(a2 + 24) = a1[3];
  v5 = a1[4];

  *(a2 + 32) = v5;
  *(a2 + 40) = a1[5];
  v7 = a1[6];

  *(a2 + 48) = v7;
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 57) = *(a1 + 57);
  v8 = a1[8];
  MEMORY[0x277D82BE0](v8);
  result = a2;
  *(a2 + 64) = v8;
  return result;
}

uint64_t sub_214B70ECC(uint64_t a1)
{
  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(a1 + 64));
  return a1;
}

BOOL static FeedbackItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v42 = 0;
  v41 = 0;
  v27 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = *(a1 + 57);
  v17 = *(a1 + 64);
  v42 = a1;
  v28 = *a2;
  v18 = *(a2 + 8);
  v19 = *(a2 + 16);
  v20 = *(a2 + 24);
  v21 = *(a2 + 32);
  v22 = *(a2 + 40);
  v23 = *(a2 + 48);
  v24 = *(a2 + 56);
  v25 = *(a2 + 57);
  v26 = *(a2 + 64);
  v41 = a2;
  swift_unknownObjectRetain();
  v40 = v27;
  swift_unknownObjectRetain();
  v39 = v28;
  v29 = static CollectionItemID.== infix(_:_:)(&v40, &v39);
  sub_214A759F4();
  sub_214A759F4();
  if ((v29 & 1) == 0)
  {
    return 0;
  }

  v8 = MEMORY[0x21605D8D0](v9, v10, v18, v19);

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v7 = MEMORY[0x21605D8D0](v11, v12, v20, v21);

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v6 = MEMORY[0x21605D8D0](v13, v14, v22, v23);

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v38 = v15;
  v37 = v24;
  sub_214B6B8CC();
  if ((sub_214CD03F4() & 1) == 0)
  {
    return 0;
  }

  v36 = v16;
  v35 = v25;
  sub_214B6AB08();
  if ((sub_214CD03F4() & 1) == 0)
  {
    return 0;
  }

  MEMORY[0x277D82BE0](v17);
  MEMORY[0x277D82BE0](v17);
  MEMORY[0x277D82BE0](v26);
  MEMORY[0x277D82BE0](v26);
  v33 = v17;
  v34 = v26;
  if (!v17)
  {
    if (!v34)
    {
      sub_214A671E8(&v33);
      v5 = 1;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  sub_214A671A8(&v33, &v32);
  if (!v34)
  {
    MEMORY[0x277D82BD8](v32);
LABEL_14:
    sub_214A68120(&v33);
    v5 = 0;
    goto LABEL_13;
  }

  v31 = v32;
  v30 = v34;
  sub_214B71394();
  v4 = sub_214CCFD64();
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v31);
  sub_214A671E8(&v33);
  v5 = v4;
LABEL_13:
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v17);
  return (v5 & 1) != 0;
}

unint64_t sub_214B71394()
{
  v2 = qword_280C7C4D0;
  if (!qword_280C7C4D0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C4D0);
    return ObjCClassMetadata;
  }

  return v2;
}

void *FeedbackItem.hash(into:)(uint64_t a1)
{
  v23 = 0;
  v24 = a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = *(v1 + 56);
  v11 = *(v1 + 57);
  v12 = v1[8];
  v23 = v1;
  swift_unknownObjectRetain();
  v22 = v3;
  sub_214B5B098();
  sub_214CD0554();
  sub_214A759F4();

  v20 = v4;
  v21 = v5;
  sub_214CD0554();
  sub_214A61B48();

  v18 = v6;
  v19 = v7;
  sub_214CD0554();
  sub_214A61B48();

  v16 = v8;
  v17 = v9;
  sub_214CD0554();
  sub_214A61B48();
  v15 = v10;
  sub_214B71628();
  sub_214CD0554();
  v14 = v11;
  sub_214B716A0();
  sub_214CD0554();
  MEMORY[0x277D82BE0](v12);
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35C30);
  sub_214B71718();
  sub_214CD0554();
  return sub_214A671E8(&v13);
}

unint64_t sub_214B71628()
{
  v2 = qword_27CA35C20;
  if (!qword_27CA35C20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35C20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B716A0()
{
  v2 = qword_27CA35C28;
  if (!qword_27CA35C28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35C28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B71718()
{
  v2 = qword_27CA35C38;
  if (!qword_27CA35C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35C30);
    sub_214B717B0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35C38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B717B0()
{
  v2 = qword_27CA35C40;
  if (!qword_27CA35C40)
  {
    sub_214B71394();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35C40);
    return WitnessTable;
  }

  return v2;
}

uint64_t FeedbackItem.hashValue.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v3 = v0;
  memcpy(v2, __dst, sizeof(v2));
  sub_214B718A0();
  return sub_214CD0114();
}

unint64_t sub_214B718A0()
{
  v2 = qword_27CA35C48;
  if (!qword_27CA35C48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35C48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B71980@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v71 = a1;
  memset(__b, 0, sizeof(__b));
  v101 = 0;
  v64 = 0;
  v65 = (*(*(sub_214CCD2D4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v66 = &v20 - v65;
  v67 = (*(*(sub_214CCF534() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v71);
  v68 = &v20 - v67;
  v101 = v2;
  __b[8] = 0;
  *&v3 = MEMORY[0x277D82BE0](v2).n128_u64[0];
  v69 = [v71 itemID];
  MEMORY[0x277D82BD8](v71);
  CollectionItemID.init(itemID:)(v69, &v100);
  __b[0] = v100;
  *&v4 = MEMORY[0x277D82BE0](v71).n128_u64[0];
  v70 = [v71 senderList];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35CB0);
  v73 = sub_214CCF7E4();
  MEMORY[0x277D82BD8](v71);
  v97 = v73;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EB0);
  sub_214B110B8();
  sub_214CCFA74();
  v74 = v96;

  if (v74 && (v62 = v74, v60 = v74, swift_getObjectType(), v61 = [v60 emailAddressValue], swift_unknownObjectRelease(), v61))
  {
    v59 = v61;
    v57 = v61;
    v5 = [v61 displayName];
    v58 = v5;
    if (v5)
    {
      v56 = v58;
      v51 = v58;
      v52 = sub_214CCF564();
      v53 = v6;
      MEMORY[0x277D82BD8](v51);
      v54 = v52;
      v55 = v53;
    }

    else
    {
      v54 = 0;
      v55 = 0;
    }

    v48 = v55;
    v47 = v54;
    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](v70);
    v49 = v47;
    v50 = v48;
  }

  else
  {
    MEMORY[0x277D82BD8](v70);
    v49 = 0;
    v50 = 0;
  }

  v94 = v49;
  v95 = v50;
  if (v50)
  {
    v98 = v94;
    v99 = v95;
  }

  else
  {
    *&v44[1] = 1;
    sub_214CCF614();
    sub_214CCF4C4();
    v45 = sub_214CCF614();
    v46 = v7;
    sub_214B1CFBC();
    v91 = 0;
    v92 = 0;
    v93 = *v44 & 0x100;
    v98 = sub_214CCF5A4();
    v99 = v8;
    if (v95)
    {
      sub_214A61B48();
    }
  }

  __b[1] = v98;
  __b[2] = v99;
  *&v9 = MEMORY[0x277D82BE0](v71).n128_u64[0];
  v88 = [v71 subject];
  if (v88)
  {
    v37 = &v88;
    v38 = v88;
    MEMORY[0x277D82BE0](v88);
    sub_214A671E8(v37);
    *&v10 = MEMORY[0x277D82BD8](v71).n128_u64[0];
    v39 = [v38 subjectString];
    v40 = sub_214CCF564();
    v41 = v11;
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v39);
    v42 = v40;
    v43 = v41;
  }

  else
  {
    sub_214A671E8(&v88);
    MEMORY[0x277D82BD8](v71);
    v42 = 0;
    v43 = 0;
  }

  v86 = v42;
  v87 = v43;
  if (v43)
  {
    v89 = v86;
    v90 = v87;
  }

  else
  {
    *&v34[1] = 1;
    sub_214CCF614();
    sub_214CCF4C4();
    v35 = sub_214CCF614();
    v36 = v12;
    sub_214B1CFBC();
    v83 = 0;
    v84 = 0;
    v85 = *v34 & 0x100;
    v89 = sub_214CCF5A4();
    v90 = v13;
    if (v87)
    {
      sub_214A61B48();
    }
  }

  __b[3] = v89;
  __b[4] = v90;
  *&v14 = MEMORY[0x277D82BE0](v71).n128_u64[0];
  v33 = [v71 summary];
  if (v33)
  {
    v32 = v33;
    v27 = v33;
    v28 = sub_214CCF564();
    v29 = v15;
    MEMORY[0x277D82BD8](v27);
    v30 = v28;
    v31 = v29;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v26 = v31;
  v25 = v30;
  MEMORY[0x277D82BD8](v71);
  v79 = v25;
  v80 = v26;
  if (v26)
  {
    v81 = v79;
    v82 = v80;
  }

  else
  {
    v22 = 1;
    sub_214CCF614();
    sub_214CCF4C4();
    v23 = sub_214CCF614();
    v24 = v16;
    sub_214B1CFBC();
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = v22 & 1;
    v81 = sub_214CCF5A4();
    v82 = v17;
    if (v80)
    {
      sub_214A61B48();
    }
  }

  v21 = __b;
  __b[5] = v81;
  __b[6] = v82;
  LOWORD(__b[7]) = 520;
  MEMORY[0x277D82BE0](v71);
  v18 = __b[8];
  __b[8] = v71;
  MEMORY[0x277D82BD8](v18);
  sub_214B70DF0(v21, v63);
  MEMORY[0x277D82BD8](v71);
  return sub_214B70ECC(v21);
}

unint64_t sub_214B72200()
{
  v2 = qword_27CA35CB8;
  if (!qword_27CA35CB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35CB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B72294(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_214B723AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

void *FeedbackListItemView.item.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  v5 = v1;
  sub_214B70DF0(__dst, v4);
  return memcpy(a1, __dst, 0x48uLL);
}

uint64_t FeedbackListItemView.item.setter(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v7 = __src;
  v6 = v1;
  sub_214B70DF0(__dst, v5);
  memcpy(v9, __srca, sizeof(v9));
  memcpy(__srca, __dst, 0x48uLL);
  sub_214B70ECC(v9);
  return sub_214B70ECC(__dst);
}

uint64_t sub_214B726DC@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1, uint64_t a2)@<X8>)
{
  sub_214B737F0(a1, v9);
  memcpy(__dst, v9, sizeof(__dst));
  v8 = __dst[9];
  v7 = __dst[10];
  sub_214B5188C(__dst[9]);
  if (v8)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v8;
    *(v2 + 24) = v7;
    v4 = sub_214B78B10;
    v5 = v2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  return sub_214B739FC(__dst);
}

uint64_t sub_214B72818(uint64_t *a1, uint64_t a2)
{
  sub_214B78A8C(a1, v10);
  v8 = v10[0];
  v9 = v10[1];
  if (v10[0])
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v8;
    *(v2 + 24) = v9;
    v5 = sub_214B78B04;
    v6 = v2;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v3 = *(a2 + 72);
  *(a2 + 72) = v5;
  *(a2 + 80) = v6;
  return sub_214A6B584(v3);
}

uint64_t FeedbackListItemView.onSelectionChange.getter()
{
  v2 = *(v0 + 72);
  sub_214B5188C(v2);
  return v2;
}

uint64_t FeedbackListItemView.onSelectionChange.setter(uint64_t a1, uint64_t a2)
{
  sub_214B5188C(a1);
  v3 = *(v2 + 72);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  sub_214A6B584(v3);
  return sub_214A6B584(a1);
}

uint64_t sub_214B72A48()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35CC0);
  sub_214CCEFC4();
}

uint64_t sub_214B72AC4()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35CC0);
  sub_214CCEFD4();
  sub_214AA8B50();
}

uint64_t sub_214B72B74()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35CC0);
  sub_214CCEFE4();
}

uint64_t sub_214B72BF0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 88);
  v5 = *(v1 + 96);

  *a1 = v3;
  *(a1 + 8) = v5;
  return result;
}

uint64_t sub_214B72C40(char *a1)
{
  v3 = *a1;
  v4 = *(a1 + 1);

  *(v1 + 88) = v3;
  *(v1 + 96) = v4;
}

uint64_t sub_214B72CE8()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35CC8);
  sub_214CCEFC4();
}

uint64_t sub_214B72D64()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35CC8);
  sub_214CCEFD4();
  sub_214AA8B50();
}

uint64_t sub_214B72E14()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35CC8);
  sub_214CCEFE4();
}

uint64_t sub_214B72E90@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 104);
  v5 = *(v1 + 112);

  *a1 = v3;
  *(a1 + 8) = v5;
  return result;
}

uint64_t sub_214B72EE0(char *a1)
{
  v3 = *a1;
  v4 = *(a1 + 1);

  *(v1 + 104) = v3;
  *(v1 + 112) = v4;
}

uint64_t FeedbackListItemView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v13 = a1;
  v8 = sub_214B7396C;
  v20 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35CD0);
  v4 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14);
  v16 = &v4 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v4 - v4);
  v17 = &v4 - v5;
  v20 = &v4 - v5;
  v12 = v21;
  v7 = 120;
  memcpy(v21, v2, sizeof(v21));
  memcpy(__dst, v6, sizeof(__dst));
  sub_214B737F0(v21, &v19);
  v9 = v18;
  v18[2] = v12;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35CD8);
  v11 = sub_214B73974();
  sub_214B6C2A4();
  sub_214CCF064();
  sub_214B739FC(v12);
  v15 = sub_214B73A98();
  sub_214B061F0(v16, v14, v17);
  sub_214A94904(v16);
  sub_214A94BB8(v17, v16);
  sub_214B061F0(v16, v14, v13);
  sub_214A94904(v16);
  return sub_214A94904(v17);
}

uint64_t sub_214B73120@<X0>(uint64_t *__src@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v51 = __src;
  v14 = sub_214B78B1C;
  v47 = sub_214B790D8;
  v86 = 0;
  v85 = 0;
  v44 = &v73;
  v73 = 0;
  v74 = 0;
  __srca[0] = v87;
  __srca[1] = 120;
  memcpy(v87, __src, sizeof(v87));
  memcpy(v88, v87, sizeof(v88));
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35D30);
  v8 = (*(*(v54 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v54);
  v60 = __srca - v8;
  v9 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](__srca - v8);
  v62 = __srca - v9;
  v86 = __srca - v9;
  v45 = 0;
  v10 = (*(*(sub_214CCE4D4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v36 = __srca - v10;
  v38 = sub_214CCE374();
  v11 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38);
  v41 = __srca - v11;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35CF8);
  v12 = (*(*(v52 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v52);
  v61 = __srca - v12;
  v13 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](__srca - v12);
  v63 = __srca - v13;
  v85 = __srca - v13;
  v17 = sub_214CCE534();
  sub_214B737F0(v51, &v81);
  v15 = v65;
  v65[2] = v51;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35D38);
  sub_214B78B24();
  v18 = &v82;
  v43 = 0;
  sub_214CCF064();
  sub_214B739FC(v51);
  v19 = v89;
  v20 = 225;
  memcpy(v89, v18, 0xE1uLL);
  v23 = v80;
  memcpy(v80, v89, 0xE1uLL);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35D48);
  v22 = sub_214B78BAC();
  sub_214B09708();
  v24 = &v83;
  v46 = 1;
  sub_214CCED64();
  sub_214B78C34(v23);
  v25 = v90;
  v26 = 273;
  memcpy(v90, v24, 0x111uLL);
  v32 = v79;
  memcpy(v79, v90, 0x111uLL);
  v4 = static Color.mui_systemBackground.getter();
  v31 = &v78;
  v78 = v4;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35D58);
  v29 = sub_214B78CE8();
  v28 = MEMORY[0x277CE0F78];
  v30 = MEMORY[0x277CE0F60];
  sub_214B07A68();
  v33 = &v84;
  sub_214CCEAC4();
  sub_214A75F80();
  sub_214B78C34(v32);
  v34 = v91;
  v35 = 289;
  memcpy(v91, v33, 0x121uLL);
  v42 = v77;
  memcpy(v77, v91, 0x121uLL);
  sub_214B697DC(v36);
  sub_214CCE354();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35D68);
  v39 = sub_214B78D8C();
  v40 = sub_214B07660();
  v76 = sub_214B07A90();
  v75 = v76;
  sub_214CCEE04();
  sub_214B076E0(v41);
  sub_214B78E34(v42);
  v55 = sub_214B78EF4();
  sub_214B061F0(v61, v52, v63);
  sub_214B78F9C(v61);
  v71 = sub_214CCF054();
  v72 = v5 & 1;
  v53 = MEMORY[0x277CE1180];
  v56 = MEMORY[0x277CE1170];
  sub_214B061F0(&v71, MEMORY[0x277CE1180], v44);
  sub_214B737F0(v51, &v70);
  v48 = v64;
  v64[2] = v51;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35D80);
  v50 = sub_214B790E0();
  sub_214C11934();
  sub_214CCF024();
  sub_214B739FC(v51);
  v57 = sub_214B79168();
  sub_214B061F0(v60, v54, v62);
  sub_214A9522C(v60);
  sub_214B791F0(v63, v61);
  v59 = v69;
  v69[0] = v61;
  v67 = v73;
  v68 = v74;
  v69[1] = &v67;
  sub_214A95380(v62, v60);
  v69[2] = v60;
  v66[0] = v52;
  v66[1] = v53;
  v66[2] = v54;
  v65[3] = v55;
  v65[4] = v56;
  v65[5] = v57;
  sub_214C663A4(v59, 3uLL, v66, v58);
  sub_214A9522C(v60);
  sub_214B78F9C(v61);
  sub_214A9522C(v62);
  return sub_214B78F9C(v63);
}

uint64_t sub_214B737F0(uint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  swift_unknownObjectRetain();
  *a2 = v7;
  *(a2 + 8) = a1[1];
  v8 = a1[2];

  *(a2 + 16) = v8;
  *(a2 + 24) = a1[3];
  v9 = a1[4];

  *(a2 + 32) = v9;
  *(a2 + 40) = a1[5];
  v10 = a1[6];

  *(a2 + 48) = v10;
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 57) = *(a1 + 57);
  v12 = a1[8];
  MEMORY[0x277D82BE0](v12);
  *(a2 + 64) = v12;
  if (a1[9])
  {
    v5 = a1[9];
    v6 = a1[10];

    *(a2 + 72) = v5;
    *(a2 + 80) = v6;
  }

  else
  {
    *(a2 + 72) = *(a1 + 9);
  }

  *(a2 + 88) = *(a1 + 88);
  v3 = a1[12];

  *(a2 + 96) = v3;
  *(a2 + 104) = *(a1 + 104);
  v4 = a1[14];

  result = a2;
  *(a2 + 112) = v4;
  return result;
}

unint64_t sub_214B73974()
{
  v2 = qword_27CA35CE0;
  if (!qword_27CA35CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35CD8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35CE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B739FC(uint64_t a1)
{
  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(a1 + 64));
  if (*(a1 + 72))
  {
  }

  return a1;
}

unint64_t sub_214B73A98()
{
  v2 = qword_27CA35CE8;
  if (!qword_27CA35CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35CD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35CE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B73B20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, 0x59uLL);
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v129, __dst, sizeof(v129));
  sub_214B737F0(a1, v121);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35ED8);
  sub_214B7A8B4();
  sub_214C11934();
  sub_214CCF024();
  sub_214B739FC(a1);
  memcpy(v130, v122, sizeof(v130));
  memcpy(v120, v130, 0x59uLL);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35EE8);
  sub_214B7A93C();
  sub_214B061F0(v120, v39, __b);
  sub_214B7A9C4(v120);
  memcpy(v127, a1, sizeof(v127));
  sub_214B70DF0(v127, v111);
  v128 = *&v127[3];
  sub_214A61AD0(&v128, &v110);
  sub_214B70ECC(v127);
  v109 = v128;
  sub_214B075A0();
  v105 = sub_214CCEA74();
  v106 = v2;
  v107 = v3;
  v108 = v4;
  v18 = v105;
  v19 = v2;
  v20 = v3;
  v21 = v4;
  sub_214CCE904();
  v101 = v18;
  v102 = v19;
  v103 = v20 & 1;
  v104 = v21;
  v97 = sub_214CCEA34();
  v98 = v5;
  v99 = v6;
  v100 = v7;
  v22 = v97;
  v23 = v5;
  v24 = v6;
  v25 = v7;

  sub_214B072EC(v18, v19, v20 & 1);

  v94[0] = v22;
  v94[1] = v23;
  v95 = v24 & 1;
  v96 = v25;
  sub_214CCEE24();
  sub_214B07618(v94);
  v88[0] = v112;
  v88[1] = v113;
  v89 = v114 & 1;
  v90 = v115;
  v91 = v116;
  v92 = v117;
  v93 = v118 & 1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35E70);
  sub_214B7A274();
  sub_214B061F0(v88, v40, v119);
  sub_214B1B288(v88);
  memcpy(v125, a1, sizeof(v125));
  sub_214B70DF0(v125, v79);
  v126 = *&v125[5];
  sub_214A61AD0(&v126, &v78);
  sub_214B70ECC(v125);
  v77 = v126;
  v73 = sub_214CCEA74();
  v74 = v8;
  v75 = v9;
  v76 = v10;
  v27 = v73;
  v28 = v8;
  v29 = v9;
  v30 = v10;
  sub_214CCE994();
  v69 = v27;
  v70 = v28;
  v71 = v29 & 1;
  v72 = v30;
  v65 = sub_214CCEA34();
  v66 = v11;
  v67 = v12;
  v68 = v13;
  v32 = v65;
  v33 = v11;
  v31 = v12;
  v34 = v13;

  sub_214B072EC(v27, v28, v29 & 1);

  v64 = sub_214BE7678();
  v60 = v32;
  v61 = v33;
  v62 = v31 & 1;
  v63 = v34;
  v56 = sub_214CCEA04();
  v57 = v14;
  v58 = v15;
  v59 = v16;
  v35 = v56;
  v36 = v14;
  v37 = v15;
  v38 = v16;
  sub_214B072EC(v32, v33, v31 & 1);

  v53[0] = v35;
  v53[1] = v36;
  v54 = v37 & 1;
  v55 = v38;
  sub_214CCEE24();
  sub_214B07618(v53);
  v47[0] = v80;
  v47[1] = v81;
  v48 = v82 & 1;
  v49 = v83;
  v50 = v84;
  v51 = v85;
  v52 = v86 & 1;
  sub_214B061F0(v47, v40, v87);
  sub_214B1B288(v47);
  sub_214B7AA18(__b, v45);
  v46[0] = v45;
  sub_214B7A318(v119, v44);
  v46[1] = v44;
  sub_214B7A318(v87, v43);
  v46[2] = v43;
  v42[0] = v39;
  v42[1] = v40;
  v42[2] = v40;
  sub_214C663A4(v46, 3uLL, v42, a2);
  sub_214B1B288(v43);
  sub_214B1B288(v44);
  sub_214B7A9C4(v45);
  sub_214B1B288(v87);
  sub_214B1B288(v119);
  return sub_214B7A9C4(__b);
}

uint64_t sub_214B74238@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  v28 = 0;
  v29 = 0;
  v62 = __src;
  memcpy(__dst, __src, sizeof(__dst));
  sub_214B70DF0(__dst, v53);
  v64 = *&__dst[1];
  sub_214A61AD0(&v64, &v52);
  sub_214B70ECC(__dst);
  v51 = v64;
  sub_214B075A0();
  v47 = sub_214CCEA74();
  v48 = v2;
  v49 = v3;
  v50 = v4;
  v11 = v47;
  v12 = v2;
  v10 = v3;
  v13 = v4;
  sub_214CCE934();
  v43 = v11;
  v44 = v12;
  v45 = v10 & 1;
  v46 = v13;
  v39 = sub_214CCE9E4();
  v40 = v5;
  v41 = v6;
  v42 = v7;
  v14 = v39;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  sub_214B072EC(v11, v12, v10 & 1);

  v36[0] = v14;
  v36[1] = v15;
  v37 = v16 & 1;
  v38 = v17;
  sub_214CCEE24();
  sub_214B07618(v36);
  v30[0] = v54;
  v30[1] = v55;
  v31 = v56 & 1;
  v32 = v57;
  v33 = v58;
  v34 = v59;
  v35 = v60 & 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35E70);
  sub_214B7A274();
  sub_214B061F0(v30, v18, v61);
  sub_214B1B288(v30);
  v26 = sub_214CCF054();
  v27 = v8 & 1;
  v19 = MEMORY[0x277CE1180];
  sub_214B061F0(&v26, MEMORY[0x277CE1180], &v28);
  sub_214B7A318(v61, v24);
  v25[0] = v24;
  v22 = v28;
  v23 = v29;
  v25[1] = &v22;
  v21[0] = v18;
  v21[1] = v19;
  sub_214C663A4(v25, 2uLL, v21, a2);
  sub_214B1B288(v24);
  return sub_214B1B288(v61);
}

uint64_t sub_214B74578@<X0>(uint64_t *__src@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v66 = __src;
  v26 = 0;
  v23 = sub_214B7952C;
  v25 = sub_214B7534C;
  v37 = MEMORY[0x277CDE680];
  v43 = sub_214B79634;
  v40 = sub_214B7963C;
  v44 = sub_214B79A94;
  v78 = MEMORY[0x277CE0E30];
  v63 = sub_214B79B24;
  v58 = sub_214B79B2C;
  v68 = sub_214B79BBC;
  v151 = 0;
  v150 = 0;
  v149 = 0;
  v38 = &v138;
  v138 = 0;
  v139 = 0;
  v56 = &v125;
  v125 = 0;
  v126 = 0;
  __srca = v152;
  __n = 120;
  memcpy(v152, __src, sizeof(v152));
  memcpy(__dst, v152, sizeof(__dst));
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35D98);
  v71 = *(v74 - 8);
  v72 = v74 - 8;
  v14 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v74);
  v73 = &v12 - v14;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35D28);
  v84 = *(v97 - 8);
  v85 = v97 - 8;
  v15 = (*(v84 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v97);
  v93 = &v12 - v15;
  v16 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v12 - v15);
  v96 = &v12 - v16;
  v151 = &v12 - v16;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35DA0);
  v47 = *(v50 - 8);
  v48 = v50 - 8;
  v17 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50);
  v49 = &v12 - v17;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35D20);
  v82 = *(v101 - 8);
  v83 = v101 - 8;
  v18 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v101);
  v94 = &v12 - v18;
  v19 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v12 - v18);
  v100 = &v12 - v19;
  v150 = &v12 - v19;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35DA8);
  v30 = *(v33 - 8);
  v31 = v33 - 8;
  v20 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v33);
  v32 = &v12 - v20;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35D10);
  v80 = *(v105 - 8);
  v81 = v105 - 8;
  v21 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v66);
  v95 = &v12 - v21;
  v22 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v104 = &v12 - v22;
  v149 = &v12 - v22;
  sub_214B737F0(v6, &v148);
  v64 = 136;
  v65 = 7;
  v24 = swift_allocObject();
  memcpy((v24 + 16), v66, __n);
  sub_214CCF004();
  memcpy(&v147, v66, __n);
  sub_214B72A48();
  v28 = v146;
  v146[0] = v146[1];
  v27 = &v145;
  v145 = 7;
  sub_214B6B8CC();
  v51 = &type metadata for FeedbackCategory;
  v7 = sub_214CD03F4();
  v55 = 1;
  v8 = sub_214A667B4(v7 & 1);
  v29 = &v144;
  v144 = v8 & v55;
  v35 = sub_214B79534();
  v36 = sub_214B795BC();
  v34 = &unk_2826E5470;
  sub_214CCEB34();
  (*(v30 + 8))(v32, v33);
  v140 = v33;
  v141 = v34;
  v142 = v35;
  v143 = v36;
  v79 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_214B061F0(v95, v105, v104);
  v107 = *(v80 + 8);
  v106 = v80 + 8;
  v107(v95, v105);
  v54 = 0;
  v136 = sub_214CCF054();
  v137 = v9 & 1;
  v86 = MEMORY[0x277CE1180];
  v89 = MEMORY[0x277CE1170];
  sub_214B061F0(&v136, MEMORY[0x277CE1180], v38);
  sub_214B737F0(v66, &v135);
  v39 = v111;
  v111[2] = v66;
  sub_214B737F0(v66, &v134);
  v41 = v110;
  v110[2] = v66;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35DC0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35DC8);
  v62 = sub_214B79644();
  sub_214B79A0C();
  sub_214CCE9D4();
  sub_214B739FC(v66);
  sub_214B739FC(v66);
  memcpy(&v133, v66, __n);
  sub_214B72A48();
  v45 = v132;
  v132[0] = v132[1];
  sub_214B737F0(v66, &v131);
  v46 = swift_allocObject();
  memcpy((v46 + 16), v66, __n);
  v52 = sub_214B79A9C();
  v53 = sub_214B6BB38();
  sub_214B28CB0();
  sub_214CCEDB4();

  (*(v47 + 8))(v49, v50);
  v127 = v50;
  v128 = v51;
  v129 = v52;
  v130 = v53;
  v88 = swift_getOpaqueTypeConformance2();
  sub_214B061F0(v94, v101, v100);
  v103 = *(v82 + 8);
  v102 = v82 + 8;
  v103(v94, v101);
  v123 = sub_214CCF054();
  v124 = v10 & 1 & v55;
  sub_214B061F0(&v123, v86, v56);
  sub_214B737F0(v66, &v122);
  v57 = v109;
  v109[2] = v66;
  sub_214B737F0(v66, &v121);
  v59 = v108;
  v108[2] = v66;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35E38);
  sub_214B79B34();
  sub_214CCE9D4();
  sub_214B739FC(v66);
  sub_214B739FC(v66);
  memcpy(&v120, v66, __n);
  sub_214B72CE8();
  v69 = v119;
  v119[0] = v119[1];
  sub_214B737F0(v66, &v118);
  v70 = swift_allocObject();
  memcpy((v70 + 16), v66, __n);
  v76 = sub_214B79BC4();
  v77 = sub_214B6BAA4();
  v75 = &type metadata for FeedbackHighImpact;
  sub_214B28CB0();
  sub_214CCEDB4();

  (*(v71 + 8))(v73, v74);
  v117[5] = v74;
  v117[6] = v75;
  v117[7] = v76;
  v117[8] = v77;
  v90 = swift_getOpaqueTypeConformance2();
  sub_214B061F0(v93, v97, v96);
  v99 = *(v84 + 8);
  v98 = v84 + 8;
  v99(v93, v97);
  (*(v80 + 16))(v95, v104, v105);
  v92 = v117;
  v117[0] = v95;
  v115 = v138;
  v116 = v139;
  v117[1] = &v115;
  (*(v82 + 16))(v94, v100, v101);
  v117[2] = v94;
  v113 = v125;
  v114 = v126;
  v117[3] = &v113;
  (*(v84 + 16))(v93, v96, v97);
  v117[4] = v93;
  v112[0] = v105;
  v112[1] = v86;
  v112[2] = v101;
  v112[3] = v86;
  v112[4] = v97;
  v111[3] = OpaqueTypeConformance2;
  v111[4] = v89;
  v111[5] = v88;
  v111[6] = v89;
  v111[7] = v90;
  sub_214C663A4(v92, 5uLL, v112, v91);
  v99(v93, v97);
  v103(v94, v101);
  v107(v95, v105);
  v99(v96, v97);
  v103(v100, v101);
  return (v107)(v104, v105);
}

uint64_t sub_214B75298(uint64_t *a1)
{
  v7 = a1;
  sub_214B737F0(a1, v6);
  memcpy(__dst, a1, sizeof(__dst));
  v4[127] = 2;
  sub_214B72D64();
  sub_214B739FC(__dst);
  sub_214B737F0(a1, v4);
  memcpy(v3, a1, sizeof(v3));
  sub_214B72AC4();
  return sub_214B739FC(v3);
}

uint64_t sub_214B7534C@<X0>(uint64_t a1@<X8>)
{
  v24 = 0u;
  v25 = 0u;
  HIBYTE(v7) = 1;
  sub_214CCF614();
  sub_214CCE4B4();
  sub_214CCF614();
  v21 = 0;
  v22 = 0;
  v23 = v7 & 0x100;
  v17 = sub_214CCEA54();
  v18 = v1;
  v19 = v2;
  v20 = v3;
  v14[0] = v17;
  v14[1] = v1;
  v15 = v2 & 1;
  v16 = v3;
  v10 = MEMORY[0x277CE0BD8];
  sub_214B061F0(v14, MEMORY[0x277CE0BD8], &v24);
  sub_214B07618(v14);
  v5 = v24;
  v6 = v25;
  v8 = *(&v25 + 1);
  sub_214B0755C(v24, *(&v24 + 1), v25 & 1);

  v11 = v5;
  v12 = v6 & 1;
  v13 = v8;
  sub_214B061F0(&v11, v10, a1);
  sub_214B07618(&v11);
  return sub_214B07618(&v24);
}

uint64_t sub_214B75520@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v11 = a1;
  v19 = 0;
  v18 = sub_214B75858;
  v37 = 0;
  v36 = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35DC8);
  v21 = *(v27 - 8);
  v22 = v27 - 8;
  v9 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v25 = &v9 - v9;
  v10 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v26 = &v9 - v10;
  v37 = &v9 - v10;
  v36 = v4;
  sub_214CCF614();
  v20 = sub_214CCE4B4();
  v14 = v5;
  v15 = v6;
  v16 = v7;
  memcpy(__dst, v11, sizeof(__dst));
  sub_214B72B74();
  v17 = v30;
  v30[0] = v32;
  v30[1] = v33;
  v31 = v34;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35EB0);
  v13 = sub_214B71628();
  sub_214B7A6C0();
  sub_214CCF044();
  v24 = sub_214B79A0C();
  sub_214B061F0(v25, v27, v26);
  v29 = *(v21 + 8);
  v28 = v21 + 8;
  v29(v25, v27);
  (*(v21 + 16))(v25, v26, v27);
  sub_214B061F0(v25, v27, v23);
  v29(v25, v27);
  return (v29)(v26, v27);
}

uint64_t sub_214B75858@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v10 = 0;
  v8 = &unk_214D09158;
  v9 = sub_214B75AF8;
  v30 = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35EB0);
  v16 = *(v22 - 8);
  v17 = v22 - 8;
  v6 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v20 = &v5 - v6;
  v7 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v5 - v6);
  v21 = &v5 - v7;
  v30 = &v5 - v7;
  v2 = static FeedbackCategory.groupedCategories.getter();
  v15 = &v29;
  v29 = v2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35EA0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35EC0);
  v13 = sub_214B7A7AC();
  v3 = sub_214B71628();
  v25 = MEMORY[0x277CE0BD8];
  v26 = &type metadata for FeedbackCategory;
  v27 = MEMORY[0x277CE0BC8];
  v28 = v3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_214B7A834();
  sub_214CCF0E4();
  v19 = sub_214B7A6C0();
  sub_214B061F0(v20, v22, v21);
  v24 = *(v16 + 8);
  v23 = v16 + 8;
  v24(v20, v22);
  (*(v16 + 16))(v20, v21, v22);
  sub_214B061F0(v20, v22, v18);
  v24(v20, v22);
  return (v24)(v21, v22);
}

uint64_t sub_214B75AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v13 = a1;
  v24 = &unk_214D09158;
  v49 = 0;
  v48 = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35EC0);
  v25 = *(v31 - 8);
  v26 = v31 - 8;
  v14 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v29 = &v12 - v14;
  v15 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v30 = &v12 - v15;
  v49 = &v12 - v15;
  v17 = *v4;
  v48 = v17;
  v47 = v17;
  v5 = FeedbackCategory.localizedTitle.getter();
  v16 = v46;
  v46[0] = v5;
  v46[1] = v6;
  sub_214B075A0();
  v42 = sub_214CCEA74();
  v43 = v7;
  v44 = v8;
  v45 = v9;
  v19 = v39;
  v39[0] = v42;
  v39[1] = v7;
  v40 = v8 & 1;
  v41 = v9;
  v18 = &v38;
  v38 = v17;
  v23 = sub_214B71628();
  v20 = MEMORY[0x277CE0BD8];
  v21 = &type metadata for FeedbackCategory;
  v22 = MEMORY[0x277CE0BC8];
  v10 = sub_214AF8628();
  sub_214AF8644(v18, v10 & 1, v20, v21, v22, v23, v29);
  sub_214B07618(v19);
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v37 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_214B061F0(v29, v31, v30);
  v33 = *(v25 + 8);
  v32 = v25 + 8;
  v33(v29, v31);
  (*(v25 + 16))(v29, v30, v31);
  sub_214B061F0(v29, v31, v27);
  v33(v29, v31);
  return (v33)(v30, v31);
}

uint64_t sub_214B75E30@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v76 = __src;
  v69 = sub_214B7A630;
  v109 = 0;
  __srca = v110;
  __n = 120;
  memcpy(v110, __src, sizeof(v110));
  memcpy(__dst, v110, sizeof(__dst));
  v56 = 0;
  v57 = (*(*(sub_214CCE4D4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v58 = v20 - v57;
  v59 = sub_214CCE374();
  v60 = (*(*(v59 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59);
  v61 = v20 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35DC0);
  v63 = (*(*(v62 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v76);
  v64 = v20 - v63;
  v65 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v66 = v20 - v65;
  v67 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v68 = v20 - v67;
  v109 = v20 - v67;
  sub_214B737F0(v6, &v103);
  v70 = v84;
  v84[2] = v76;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35E50);
  v72 = sub_214B79C54();
  sub_214C11934();
  v73 = &v104;
  sub_214CCF024();
  sub_214B739FC(v76);
  v74 = v112;
  v75 = 104;
  memcpy(v112, v73, sizeof(v112));
  memcpy(v102, v112, sizeof(v102));
  v7 = static FeedbackCategory.groupedCategories.getter();
  v82 = &v101;
  v101 = v7;
  memcpy(&v100, v76, __n);
  sub_214B72A48();
  v80 = v99;
  v99[0] = v99[1];
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35EA0);
  v79 = sub_214B7A638();
  v81 = sub_214B6BB38();
  v83 = sub_214CCF784();
  sub_214A62278();
  if (v83)
  {
    v53 = sub_214B697AC();
  }

  else
  {
    v53 = sub_214CCEE84();
  }

  v32 = &v95;
  v95 = v53;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35E20);
  sub_214B79984();
  v34 = &v105;
  v33 = v102;
  sub_214CCEC04();
  sub_214A75F80();
  sub_214B79D64(v33);
  v35 = v96;
  v36 = 112;
  memcpy(v96, v34, sizeof(v96));
  v39 = v94;
  memcpy(v94, v96, sizeof(v94));
  v38 = sub_214CCE8F4();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35E10);
  sub_214B798DC();
  v40 = &v106;
  v44 = 0;
  sub_214CCED64();
  sub_214B79DDC(v39);
  v41 = v97;
  v42 = 153;
  memcpy(v97, v40, 0x99uLL);
  v47 = v93;
  memcpy(v93, v97, 0x99uLL);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35E00);
  v45 = sub_214B79838();
  v8 = sub_214B68808();
  v46 = &v12;
  v12 = 0;
  v13 = 1;
  v14 = 0;
  v15 = 1;
  v16 = v8;
  v17 = v9;
  v18 = v43;
  v19 = v45;
  v48 = &v107;
  sub_214CCED14();
  sub_214B79DDC(v47);
  v49 = v98;
  v50 = 272;
  memcpy(v98, v48, 0x110uLL);
  memcpy(v92, v98, sizeof(v92));
  v10 = static FeedbackCategory.groupedCategories.getter();
  v51 = &v91;
  v91 = v10;
  memcpy(v90, v76, sizeof(v90));
  sub_214B72A48();
  v89[286] = v89[287];
  v52 = sub_214CCF784();
  sub_214A62278();
  if (v52)
  {
    v30 = sub_214B697C4();
  }

  else
  {
    v30 = static Color.mui_systemBackground.getter();
  }

  v20[4] = &v88;
  v88 = v30;
  v20[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35DF0);
  v20[2] = sub_214B79794();
  v20[1] = MEMORY[0x277CE0F78];
  v20[3] = MEMORY[0x277CE0F60];
  sub_214B07A68();
  v22 = &v108;
  v21 = v92;
  sub_214CCEAC4();
  sub_214A75F80();
  sub_214B79DDC(v21);
  v23 = v89;
  v24 = 281;
  memcpy(v89, v22, 0x119uLL);
  v28 = v87;
  memcpy(v87, v89, 0x119uLL);
  sub_214B697DC(v58);
  sub_214CCE354();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35DE0);
  v26 = sub_214B796EC();
  v27 = sub_214B07660();
  v86 = sub_214B07A90();
  v85 = v86;
  sub_214CCEE04();
  sub_214B076E0(v61);
  sub_214B79E60(v28);
  v29 = sub_214B79644();
  sub_214B061F0(v66, v62, v68);
  sub_214B79EF0(v66);
  sub_214B79FFC(v68, v64);
  sub_214B061F0(v64, v62, v54);
  sub_214B79EF0(v64);
  return sub_214B79EF0(v68);
}

uint64_t sub_214B765B0@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = &v99;
  v83 = a2;
  v90 = a1;
  v117 = 0;
  v84 = 0;
  v85 = (*(*(sub_214CCD2D4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v86 = v54 - v85;
  v87 = (*(*(sub_214CCF534() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v90);
  v88 = v54 - v87;
  *(v3 + 680) = v2;
  v4 = static FeedbackCategory.groupedCategories.getter();
  v5 = v90;
  v94 = v115;
  v89[70] = v4;
  memcpy(v114, v5, sizeof(v114));
  sub_214B72A48();
  v93 = v113;
  v113[0] = v113[1];
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35EA0);
  v92 = sub_214B7A638();
  sub_214B6BB38();
  v95 = sub_214CCF784();
  sub_214A62278();
  if (v95)
  {
    memcpy(v98, v90, sizeof(v98));
    sub_214B72A48();
    v96 = v97;
    v81 = FeedbackCategory.localizedTitle.getter();
  }

  else
  {
    v78 = 1;
    sub_214CCF614();
    sub_214CCF4C4();
    v79 = sub_214CCF614();
    v80 = v7;
    sub_214B1CFBC();
    v8 = v78;
    v9 = v89;
    v89[51] = 0;
    v9[52] = 0;
    v112[32] = 0;
    v112[33] = v8 & 1;
    v81 = sub_214CCF5A4();
  }

  v82 = v6;
  v10 = v89;
  v54[0] = v112;
  v89[49] = v81;
  v10[50] = v6;
  sub_214B075A0();
  v11 = sub_214CCEA74();
  v12 = v89;
  v89[45] = v11;
  v12[46] = v13;
  v111 = v14;
  v12[48] = v15;
  v55 = v12[45];
  v56 = v12[46];
  v57 = v111;
  v58 = v12[48];
  v16 = sub_214CCE904();
  v17 = v56;
  v18 = v57;
  v19 = v58;
  v20 = v89;
  v54[1] = v16;
  v89[41] = v55;
  v20[42] = v17;
  v65 = 1;
  v110 = v18 & 1;
  v20[44] = v19;
  v21 = sub_214CCEA34();
  v22 = v89;
  v89[37] = v21;
  v22[38] = v23;
  v109 = v24;
  v22[40] = v25;
  v59 = v22[37];
  v60 = v22[38];
  v61 = v109;
  v62 = v22[40];

  sub_214B072EC(v55, v56, v57 & 1);

  v26 = v60;
  v27 = v61;
  v28 = v62;
  v29 = v65;
  v30 = v89;
  v63 = v108;
  v89[33] = v59;
  v30[34] = v26;
  v108[16] = v27 & 1 & v29;
  v30[36] = v28;
  sub_214CCEE24();
  sub_214B07618(v63);
  v31 = v65;
  v32 = v89;
  v33 = v89[71];
  v34 = v89[72];
  v35 = v115[24];
  v36 = v89[74];
  v37 = v89[75];
  v38 = v89[76];
  v39 = v115[56];
  v64 = v107;
  v89[26] = v33;
  v32[27] = v34;
  v107[16] = v35 & 1 & v31;
  v32[29] = v36;
  v32[30] = v37;
  v32[31] = v38;
  v107[48] = v39 & 1 & v31;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35E70);
  v71 = sub_214B7A274();
  v77 = v116;
  sub_214B061F0(v64, v69, v116);
  sub_214B1B288(v64);
  sub_214CCF614();
  v40 = sub_214CCEF34();
  v67 = &v105;
  v89[19] = v40;
  v66 = sub_214CCE994();
  sub_214CCECF4();

  sub_214A75F80();
  v41 = v89;
  v42 = v89[20];
  v43 = v89[21];
  v44 = v89[22];
  v68 = &v104;
  v89[16] = v42;
  v41[17] = v43;
  v41[18] = v44;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA38020);
  v72 = sub_214B0B3D8();
  v76 = v106;
  sub_214B061F0(v68, v70, v106);
  sub_214B0B504();
  v75 = v102;
  sub_214B7A318(v77, v102);
  v45 = v76;
  v73 = &v103;
  v89[14] = v75;
  v74 = v101;
  sub_214B7A3D0(v45, v101);
  v46 = v69;
  v47 = v70;
  v48 = v71;
  v49 = v72;
  v50 = v89;
  v51 = v83;
  v52 = v73;
  v89[15] = v74;
  v50[2] = v46;
  v50[3] = v47;
  v99 = v48;
  v50[1] = v49;
  sub_214C663A4(v52, 2uLL, &v100, v51);
  sub_214B0B504();
  sub_214B1B288(v75);
  sub_214B0B504();
  return sub_214B1B288(v77);
}

uint64_t sub_214B76BA8(char *a1, char *a2, void *a3)
{
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v12 = *a1;
  v5 = *a2;
  v11 = *a2;
  v10 = a3;
  v6 = a3[9];
  result = sub_214B5188C(v6);
  if (v6)
  {
    v9 = v5;
    memcpy(__dst, a3, sizeof(__dst));
    sub_214B72CE8();
    v7[0] = v7[1];
    v6(&v9, v7);
  }

  return result;
}

uint64_t sub_214B76CA0@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v11 = a1;
  v19 = 0;
  v18 = sub_214B76FD8;
  v37 = 0;
  v36 = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35E38);
  v21 = *(v27 - 8);
  v22 = v27 - 8;
  v9 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v25 = &v9 - v9;
  v10 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v26 = &v9 - v10;
  v37 = &v9 - v10;
  v36 = v4;
  sub_214CCF614();
  v20 = sub_214CCE4B4();
  v14 = v5;
  v15 = v6;
  v16 = v7;
  memcpy(__dst, v11, sizeof(__dst));
  sub_214B72E14();
  v17 = v30;
  v30[0] = v32;
  v30[1] = v33;
  v31 = v34;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35E78);
  v13 = sub_214B716A0();
  sub_214B7A444();
  sub_214CCF044();
  v24 = sub_214B79B34();
  sub_214B061F0(v25, v27, v26);
  v29 = *(v21 + 8);
  v28 = v21 + 8;
  v29(v25, v27);
  (*(v21 + 16))(v25, v26, v27);
  sub_214B061F0(v25, v27, v23);
  v29(v25, v27);
  return (v29)(v26, v27);
}

uint64_t sub_214B76FD8@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v10 = 0;
  v8 = &unk_214D09158;
  v9 = sub_214B77278;
  v30 = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35E78);
  v16 = *(v22 - 8);
  v17 = v22 - 8;
  v6 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v20 = &v5 - v6;
  v7 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v5 - v6);
  v21 = &v5 - v7;
  v30 = &v5 - v7;
  v2 = static FeedbackHighImpact.groupedHighImpactSelections.getter();
  v15 = &v29;
  v29 = v2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35E60);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35E88);
  v13 = sub_214B7A530();
  v3 = sub_214B716A0();
  v25 = MEMORY[0x277CE0BD8];
  v26 = &type metadata for FeedbackHighImpact;
  v27 = MEMORY[0x277CE0BC8];
  v28 = v3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_214B7A5B8();
  sub_214CCF0E4();
  v19 = sub_214B7A444();
  sub_214B061F0(v20, v22, v21);
  v24 = *(v16 + 8);
  v23 = v16 + 8;
  v24(v20, v22);
  (*(v16 + 16))(v20, v21, v22);
  sub_214B061F0(v20, v22, v18);
  v24(v20, v22);
  return (v24)(v21, v22);
}

uint64_t sub_214B77278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v13 = a1;
  v24 = &unk_214D09158;
  v49 = 0;
  v48 = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35E88);
  v25 = *(v31 - 8);
  v26 = v31 - 8;
  v14 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v29 = &v12 - v14;
  v15 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v30 = &v12 - v15;
  v49 = &v12 - v15;
  v17 = *v4;
  v48 = v17;
  v47 = v17;
  v5 = FeedbackHighImpact.localizedTitle.getter();
  v16 = v46;
  v46[0] = v5;
  v46[1] = v6;
  sub_214B075A0();
  v42 = sub_214CCEA74();
  v43 = v7;
  v44 = v8;
  v45 = v9;
  v19 = v39;
  v39[0] = v42;
  v39[1] = v7;
  v40 = v8 & 1;
  v41 = v9;
  v18 = &v38;
  v38 = v17;
  v23 = sub_214B716A0();
  v20 = MEMORY[0x277CE0BD8];
  v21 = &type metadata for FeedbackHighImpact;
  v22 = MEMORY[0x277CE0BC8];
  v10 = sub_214AF8628();
  sub_214AF8644(v18, v10 & 1, v20, v21, v22, v23, v29);
  sub_214B07618(v19);
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v37 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_214B061F0(v29, v31, v30);
  v33 = *(v25 + 8);
  v32 = v25 + 8;
  v33(v29, v31);
  (*(v25 + 16))(v29, v30, v31);
  sub_214B061F0(v29, v31, v27);
  v33(v29, v31);
  return (v33)(v30, v31);
}

uint64_t sub_214B775B0@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v76 = __src;
  v69 = sub_214B79C4C;
  v109 = 0;
  __srca = v110;
  __n = 120;
  memcpy(v110, __src, sizeof(v110));
  memcpy(__dst, v110, sizeof(__dst));
  v56 = 0;
  v57 = (*(*(sub_214CCE4D4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v58 = v20 - v57;
  v59 = sub_214CCE374();
  v60 = (*(*(v59 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59);
  v61 = v20 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35DC0);
  v63 = (*(*(v62 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v76);
  v64 = v20 - v63;
  v65 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v66 = v20 - v65;
  v67 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v68 = v20 - v67;
  v109 = v20 - v67;
  sub_214B737F0(v6, &v103);
  v70 = v84;
  v84[2] = v76;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35E50);
  v72 = sub_214B79C54();
  sub_214C11934();
  v73 = &v104;
  sub_214CCF024();
  sub_214B739FC(v76);
  v74 = v112;
  v75 = 104;
  memcpy(v112, v73, sizeof(v112));
  memcpy(v102, v112, sizeof(v102));
  v7 = static FeedbackHighImpact.groupedHighImpactSelections.getter();
  v82 = &v101;
  v101 = v7;
  memcpy(&v100, v76, __n);
  sub_214B72CE8();
  v80 = v99;
  v99[0] = v99[1];
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35E60);
  v79 = sub_214B79CDC();
  v81 = sub_214B6BAA4();
  v83 = sub_214CCF784();
  sub_214A62278();
  if (v83)
  {
    v53 = sub_214B697AC();
  }

  else
  {
    v53 = sub_214CCEE84();
  }

  v32 = &v95;
  v95 = v53;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35E20);
  sub_214B79984();
  v34 = &v105;
  v33 = v102;
  sub_214CCEC04();
  sub_214A75F80();
  sub_214B79D64(v33);
  v35 = v96;
  v36 = 112;
  memcpy(v96, v34, sizeof(v96));
  v39 = v94;
  memcpy(v94, v96, sizeof(v94));
  v38 = sub_214CCE8F4();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35E10);
  sub_214B798DC();
  v40 = &v106;
  v44 = 0;
  sub_214CCED64();
  sub_214B79DDC(v39);
  v41 = v97;
  v42 = 153;
  memcpy(v97, v40, 0x99uLL);
  v47 = v93;
  memcpy(v93, v97, 0x99uLL);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35E00);
  v45 = sub_214B79838();
  v8 = sub_214B68808();
  v46 = &v12;
  v12 = 0;
  v13 = 1;
  v14 = 0;
  v15 = 1;
  v16 = v8;
  v17 = v9;
  v18 = v43;
  v19 = v45;
  v48 = &v107;
  sub_214CCED14();
  sub_214B79DDC(v47);
  v49 = v98;
  v50 = 272;
  memcpy(v98, v48, 0x110uLL);
  memcpy(v92, v98, sizeof(v92));
  v10 = static FeedbackHighImpact.groupedHighImpactSelections.getter();
  v51 = &v91;
  v91 = v10;
  memcpy(v90, v76, sizeof(v90));
  sub_214B72CE8();
  v89[286] = v89[287];
  v52 = sub_214CCF784();
  sub_214A62278();
  if (v52)
  {
    v30 = sub_214B697C4();
  }

  else
  {
    v30 = static Color.mui_systemBackground.getter();
  }

  v20[4] = &v88;
  v88 = v30;
  v20[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35DF0);
  v20[2] = sub_214B79794();
  v20[1] = MEMORY[0x277CE0F78];
  v20[3] = MEMORY[0x277CE0F60];
  sub_214B07A68();
  v22 = &v108;
  v21 = v92;
  sub_214CCEAC4();
  sub_214A75F80();
  sub_214B79DDC(v21);
  v23 = v89;
  v24 = 281;
  memcpy(v89, v22, 0x119uLL);
  v28 = v87;
  memcpy(v87, v89, 0x119uLL);
  sub_214B697DC(v58);
  sub_214CCE354();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35DE0);
  v26 = sub_214B796EC();
  v27 = sub_214B07660();
  v86 = sub_214B07A90();
  v85 = v86;
  sub_214CCEE04();
  sub_214B076E0(v61);
  sub_214B79E60(v28);
  v29 = sub_214B79644();
  sub_214B061F0(v66, v62, v68);
  sub_214B79EF0(v66);
  sub_214B79FFC(v68, v64);
  sub_214B061F0(v64, v62, v54);
  sub_214B79EF0(v64);
  return sub_214B79EF0(v68);
}

uint64_t sub_214B77D30@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = &v99;
  v83 = a2;
  v90 = a1;
  v117 = 0;
  v84 = 0;
  v85 = (*(*(sub_214CCD2D4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v86 = v54 - v85;
  v87 = (*(*(sub_214CCF534() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v90);
  v88 = v54 - v87;
  *(v3 + 680) = v2;
  v4 = static FeedbackHighImpact.groupedHighImpactSelections.getter();
  v5 = v90;
  v94 = v115;
  v89[70] = v4;
  memcpy(v114, v5, sizeof(v114));
  sub_214B72CE8();
  v93 = v113;
  v113[0] = v113[1];
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35E60);
  v92 = sub_214B79CDC();
  sub_214B6BAA4();
  v95 = sub_214CCF784();
  sub_214A62278();
  if (v95)
  {
    memcpy(v98, v90, sizeof(v98));
    sub_214B72CE8();
    v96 = v97;
    v81 = FeedbackHighImpact.localizedTitle.getter();
  }

  else
  {
    v78 = 1;
    sub_214CCF614();
    sub_214CCF4C4();
    v79 = sub_214CCF614();
    v80 = v7;
    sub_214B1CFBC();
    v8 = v78;
    v9 = v89;
    v89[51] = 0;
    v9[52] = 0;
    v112[32] = 0;
    v112[33] = v8 & 1;
    v81 = sub_214CCF5A4();
  }

  v82 = v6;
  v10 = v89;
  v54[0] = v112;
  v89[49] = v81;
  v10[50] = v6;
  sub_214B075A0();
  v11 = sub_214CCEA74();
  v12 = v89;
  v89[45] = v11;
  v12[46] = v13;
  v111 = v14;
  v12[48] = v15;
  v55 = v12[45];
  v56 = v12[46];
  v57 = v111;
  v58 = v12[48];
  v16 = sub_214CCE904();
  v17 = v56;
  v18 = v57;
  v19 = v58;
  v20 = v89;
  v54[1] = v16;
  v89[41] = v55;
  v20[42] = v17;
  v65 = 1;
  v110 = v18 & 1;
  v20[44] = v19;
  v21 = sub_214CCEA34();
  v22 = v89;
  v89[37] = v21;
  v22[38] = v23;
  v109 = v24;
  v22[40] = v25;
  v59 = v22[37];
  v60 = v22[38];
  v61 = v109;
  v62 = v22[40];

  sub_214B072EC(v55, v56, v57 & 1);

  v26 = v60;
  v27 = v61;
  v28 = v62;
  v29 = v65;
  v30 = v89;
  v63 = v108;
  v89[33] = v59;
  v30[34] = v26;
  v108[16] = v27 & 1 & v29;
  v30[36] = v28;
  sub_214CCEE24();
  sub_214B07618(v63);
  v31 = v65;
  v32 = v89;
  v33 = v89[71];
  v34 = v89[72];
  v35 = v115[24];
  v36 = v89[74];
  v37 = v89[75];
  v38 = v89[76];
  v39 = v115[56];
  v64 = v107;
  v89[26] = v33;
  v32[27] = v34;
  v107[16] = v35 & 1 & v31;
  v32[29] = v36;
  v32[30] = v37;
  v32[31] = v38;
  v107[48] = v39 & 1 & v31;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35E70);
  v71 = sub_214B7A274();
  v77 = v116;
  sub_214B061F0(v64, v69, v116);
  sub_214B1B288(v64);
  sub_214CCF614();
  v40 = sub_214CCEF34();
  v67 = &v105;
  v89[19] = v40;
  v66 = sub_214CCE994();
  sub_214CCECF4();

  sub_214A75F80();
  v41 = v89;
  v42 = v89[20];
  v43 = v89[21];
  v44 = v89[22];
  v68 = &v104;
  v89[16] = v42;
  v41[17] = v43;
  v41[18] = v44;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA38020);
  v72 = sub_214B0B3D8();
  v76 = v106;
  sub_214B061F0(v68, v70, v106);
  sub_214B0B504();
  v75 = v102;
  sub_214B7A318(v77, v102);
  v45 = v76;
  v73 = &v103;
  v89[14] = v75;
  v74 = v101;
  sub_214B7A3D0(v45, v101);
  v46 = v69;
  v47 = v70;
  v48 = v71;
  v49 = v72;
  v50 = v89;
  v51 = v83;
  v52 = v73;
  v89[15] = v74;
  v50[2] = v46;
  v50[3] = v47;
  v99 = v48;
  v50[1] = v49;
  sub_214C663A4(v52, 2uLL, &v100, v51);
  sub_214B0B504();
  sub_214B1B288(v75);
  sub_214B0B504();
  return sub_214B1B288(v77);
}

uint64_t sub_214B78328(char *a1, char *a2, void *a3)
{
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v15 = *a1;
  v5 = *a2;
  v14 = *a2;
  v13 = a3;
  v6 = a3[9];
  sub_214B5188C(v6);
  if (v6)
  {
    memcpy(__dst, a3, 0x78uLL);
    sub_214B72A48();
    v8[0] = v8[1];
    v7 = v5;
    v6(v8, &v7);
  }

  memcpy(v12, a3, sizeof(v12));
  sub_214B72A48();
  v11[126] = v11[127];
  v11[125] = 7;
  sub_214B6B8CC();
  result = sub_214CD03F4();
  if (result)
  {
    v11[124] = v5;
    v11[123] = 2;
    sub_214B6BAA4();
    result = sub_214CCF4A4();
    if ((result & 1) == 0)
    {
      sub_214B737F0(a3, v11);
      memcpy(v10, a3, sizeof(v10));
      __dst[127] = 8;
      sub_214B72AC4();
      return sub_214B739FC(v10);
    }
  }

  return result;
}

uint64_t sub_214B7851C@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(a4, __dst, 0x48uLL);
  *(a4 + 72) = a2;
  *(a4 + 80) = a3;
  sub_214B72A0C();
  *(a4 + 88) = v10;
  *(a4 + 96) = v11;
  result = sub_214B72CAC();
  *(a4 + 104) = v8;
  *(a4 + 112) = v9;
  return result;
}

uint64_t get_enum_tag_for_layout_string_6MailUI16FeedbackCategoryOAA0C10HighImpactOIegnn_Sg(void *a1)
{
  v2 = -1;
  if (*a1 < 0x100000000uLL)
  {
    v2 = *a1;
  }

  return (v2 + 1);
}

uint64_t sub_214B78764(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_214B7887C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    *(result + 104) = 0;
    *(result + 112) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

void *sub_214B78A8C(uint64_t *a1, void *a2)
{
  if (*a1)
  {
    v3 = *a1;
    v4 = a1[1];

    *a2 = v3;
    a2[1] = v4;
  }

  else
  {
    *a2 = *a1;
  }

  return a2;
}

unint64_t sub_214B78B24()
{
  v2 = qword_27CA35D40;
  if (!qword_27CA35D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35D38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35D40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B78BAC()
{
  v2 = qword_27CA35D50;
  if (!qword_27CA35D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35D48);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35D50);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B78C34(uint64_t a1)
{
  sub_214B072EC(*(a1 + 48), *(a1 + 56), *(a1 + 64) & 1);

  sub_214B072EC(*(a1 + 120), *(a1 + 128), *(a1 + 136) & 1);

  sub_214B072EC(*(a1 + 176), *(a1 + 184), *(a1 + 192) & 1);

  return a1;
}

unint64_t sub_214B78CE8()
{
  v2 = qword_27CA35D60;
  if (!qword_27CA35D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35D58);
    sub_214B78BAC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35D60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B78D8C()
{
  v2 = qword_27CA35D70;
  if (!qword_27CA35D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35D68);
    sub_214B78CE8();
    sub_214B070E8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35D70);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B78E34(uint64_t a1)
{
  sub_214B072EC(*(a1 + 48), *(a1 + 56), *(a1 + 64) & 1);

  sub_214B072EC(*(a1 + 120), *(a1 + 128), *(a1 + 136) & 1);

  sub_214B072EC(*(a1 + 176), *(a1 + 184), *(a1 + 192) & 1);

  return a1;
}

unint64_t sub_214B78EF4()
{
  v2 = qword_27CA35D78;
  if (!qword_27CA35D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35CF8);
    sub_214B78D8C();
    sub_214B07170();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35D78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B78F9C(uint64_t a1)
{
  sub_214B072EC(*(a1 + 48), *(a1 + 56), *(a1 + 64) & 1);

  sub_214B072EC(*(a1 + 120), *(a1 + 128), *(a1 + 136) & 1);

  sub_214B072EC(*(a1 + 176), *(a1 + 184), *(a1 + 192) & 1);

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35CF8) + 36);
  v4 = *(sub_214CCE374() + 20);
  v1 = sub_214CCE4D4();
  (*(*(v1 - 8) + 8))(a1 + v3 + v4);
  return a1;
}

unint64_t sub_214B790E0()
{
  v2 = qword_27CA35D88;
  if (!qword_27CA35D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35D80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35D88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B79168()
{
  v2 = qword_27CA35D90;
  if (!qword_27CA35D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35D30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35D90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B791F0(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  sub_214B0755C(v6, v7, v8 & 1);
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  *(a2 + 64) = v8 & 1;
  v9 = *(a1 + 72);

  *(a2 + 72) = v9;
  v10 = *(a1 + 80);

  *(a2 + 80) = v10;
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 112) = *(a1 + 112);
  v11 = *(a1 + 120);
  v12 = *(a1 + 128);
  v13 = *(a1 + 136);
  sub_214B0755C(v11, v12, v13 & 1);
  *(a2 + 120) = v11;
  *(a2 + 128) = v12;
  *(a2 + 136) = v13 & 1;
  v14 = *(a1 + 144);

  *(a2 + 144) = v14;
  v15 = *(a1 + 152);

  *(a2 + 152) = v15;
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 168) = *(a1 + 168);
  v16 = *(a1 + 176);
  v17 = *(a1 + 184);
  v18 = *(a1 + 192);
  sub_214B0755C(v16, v17, v18 & 1);
  *(a2 + 176) = v16;
  *(a2 + 184) = v17;
  *(a2 + 192) = v18 & 1;
  v19 = *(a1 + 200);

  *(a2 + 200) = v19;
  v20 = *(a1 + 208);

  *(a2 + 208) = v20;
  *(a2 + 216) = *(a1 + 216);
  *(a2 + 224) = *(a1 + 224);
  memcpy((a2 + 232), (a1 + 232), 0x29uLL);
  v21 = *(a1 + 280);

  *(a2 + 280) = v21;
  *(a2 + 288) = *(a1 + 288);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35CF8);
  v24 = (a1 + *(v2 + 36));
  v25 = (a2 + *(v2 + 36));
  *v25 = *v24;
  v23 = *(sub_214CCE374() + 20);
  v3 = sub_214CCE4D4();
  (*(*(v3 - 8) + 16))(&v25[v23], &v24[v23]);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34C28);
  result = a2;
  *&v25[*(v4 + 36)] = *&v24[*(v4 + 36)];
  return result;
}

unint64_t sub_214B79534()
{
  v2 = qword_27CA35DB0;
  if (!qword_27CA35DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35DA8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35DB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B795BC()
{
  v2 = qword_27CA35DB8;
  if (!qword_27CA35DB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35DB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B79644()
{
  v2 = qword_27CA35DD0;
  if (!qword_27CA35DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35DC0);
    sub_214B796EC();
    sub_214B07170();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35DD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B796EC()
{
  v2 = qword_27CA35DD8;
  if (!qword_27CA35DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35DE0);
    sub_214B79794();
    sub_214B070E8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35DD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B79794()
{
  v2 = qword_27CA35DE8;
  if (!qword_27CA35DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35DF0);
    sub_214B79838();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35DE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B79838()
{
  v2 = qword_27CA35DF8;
  if (!qword_27CA35DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35E00);
    sub_214B798DC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35DF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B798DC()
{
  v2 = qword_27CA35E08;
  if (!qword_27CA35E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35E10);
    sub_214B79984();
    sub_214B0B5F0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35E08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B79984()
{
  v2 = qword_27CA35E18;
  if (!qword_27CA35E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35E20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35E18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B79A0C()
{
  v2 = qword_27CA35E28;
  if (!qword_27CA35E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35DC8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35E28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B79A9C()
{
  v2 = qword_27CA35E30;
  if (!qword_27CA35E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35DA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35E30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B79B34()
{
  v2 = qword_27CA35E40;
  if (!qword_27CA35E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35E38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35E40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B79BC4()
{
  v2 = qword_27CA35E48;
  if (!qword_27CA35E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35D98);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35E48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B79C54()
{
  v2 = qword_27CA35E58;
  if (!qword_27CA35E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35E50);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35E58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B79CDC()
{
  v2 = qword_27CA35E68;
  if (!qword_27CA35E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35E60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35E68);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B79D64(uint64_t a1)
{
  sub_214B072EC(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  return a1;
}

uint64_t sub_214B79DDC(uint64_t a1)
{
  sub_214B072EC(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  return a1;
}

uint64_t sub_214B79E60(uint64_t a1)
{
  sub_214B072EC(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  return a1;
}

uint64_t sub_214B79EF0(uint64_t a1)
{
  sub_214B072EC(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35DC0) + 36);
  v4 = *(sub_214CCE374() + 20);
  v1 = sub_214CCE4D4();
  (*(*(v1 - 8) + 8))(a1 + v3 + v4);
  return a1;
}

uint64_t sub_214B79FFC(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  sub_214B0755C(v6, v7, v8 & 1);
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8 & 1;
  v9 = *(a1 + 48);

  *(a2 + 48) = v9;
  v10 = *(a1 + 56);

  *(a2 + 56) = v10;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = *(a1 + 72);
  v11 = *(a1 + 80);

  *(a2 + 80) = v11;
  v12 = *(a1 + 88);

  *(a2 + 88) = v12;
  v13 = *(a1 + 96);

  *(a2 + 96) = v13;
  v14 = *(a1 + 104);

  *(a2 + 104) = v14;
  memcpy((a2 + 112), (a1 + 112), 0x29uLL);
  memcpy((a2 + 160), (a1 + 160), 0x70uLL);
  v15 = *(a1 + 272);

  *(a2 + 272) = v15;
  *(a2 + 280) = *(a1 + 280);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35DC0);
  v18 = (a1 + *(v2 + 36));
  v19 = (a2 + *(v2 + 36));
  *v19 = *v18;
  v17 = *(sub_214CCE374() + 20);
  v3 = sub_214CCE4D4();
  (*(*(v3 - 8) + 16))(&v19[v17], &v18[v17]);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34C28);
  result = a2;
  *&v19[*(v4 + 36)] = *&v18[*(v4 + 36)];
  return result;
}

unint64_t sub_214B7A274()
{
  v2 = qword_27CA37FA0;
  if (!qword_27CA37FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35E70);
    sub_214B6963C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37FA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B7A318(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_214B0755C(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v6 = *(a1 + 24);

  *(a2 + 24) = v6;
  v8 = *(a1 + 32);

  result = a2;
  *(a2 + 32) = v8;
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = *(a1 + 48);
  return result;
}

void *sub_214B7A3D0(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  v5 = a1[1];

  a2[1] = v5;
  v7 = a1[2];

  result = a2;
  a2[2] = v7;
  return result;
}

unint64_t sub_214B7A444()
{
  v2 = qword_27CA35E80;
  if (!qword_27CA35E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35E78);
    sub_214B716A0();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35E80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B7A530()
{
  v2 = qword_27CA35E90;
  if (!qword_27CA35E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35E60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35E90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B7A5B8()
{
  v2 = qword_27CA35E98;
  if (!qword_27CA35E98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35E98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B7A638()
{
  v2 = qword_27CA35EA8;
  if (!qword_27CA35EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35EA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35EA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B7A6C0()
{
  v2 = qword_27CA35EB8;
  if (!qword_27CA35EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35EB0);
    sub_214B71628();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35EB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B7A7AC()
{
  v2 = qword_27CA35EC8;
  if (!qword_27CA35EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35EA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35EC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B7A834()
{
  v2 = qword_27CA35ED0;
  if (!qword_27CA35ED0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35ED0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B7A8B4()
{
  v2 = qword_27CA35EE0;
  if (!qword_27CA35EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35ED8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35EE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B7A93C()
{
  v2 = qword_27CA35EF0;
  if (!qword_27CA35EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35EE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35EF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B7A9C4(uint64_t a1)
{
  sub_214B072EC(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  return a1;
}

uint64_t sub_214B7AA18(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_214B0755C(v3, v4, v5 & 1);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5 & 1;
  v6 = *(a1 + 48);

  *(a2 + 48) = v6;
  v8 = *(a1 + 56);

  result = a2;
  *(a2 + 56) = v8;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 88) = *(a1 + 88);
  return result;
}

uint64_t static FeedbackListViewController.create(viewModel:)(uint64_t a1)
{
  v5[1] = 0;
  v5[2] = a1;
  MEMORY[0x277D82BE0](a1);
  FeedbackListView.init(viewModel:)(a1, v5);
  v3 = v5[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35EF8);
  MEMORY[0x277D82BE0](v3);
  v4 = sub_214CCE5A4();
  MEMORY[0x277D82BD8](v3);
  return v4;
}

void *FeedbackListView.init(viewModel:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = 0;
  MEMORY[0x277D82BE0](a1);
  v5 = a1;
  sub_214A671A8(&v5, a2);
  MEMORY[0x277D82BD8](a1);
  return sub_214A671E8(&v5);
}

id FeedbackListViewController.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for FeedbackListViewController();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id FeedbackListViewController.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedbackListViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FeedbackListView.viewModel.getter()
{
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t FeedbackListView.viewModel.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v2 = *v1;
  *v1 = a1;
  MEMORY[0x277D82BD8](v2);
  return MEMORY[0x277D82BD8](a1);
}

uint64_t FeedbackListView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v9 = MEMORY[0x277CDE130];
  v13 = MEMORY[0x277CDEEF8];
  v17 = sub_214B7B860;
  v37 = 0;
  v36 = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35F00);
  v19 = *(v25 - 8);
  v20 = v25 - 8;
  v6 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v23 = &v6 - v6;
  v7 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v6 - v6);
  v24 = &v6 - v7;
  v37 = &v6 - v7;
  v18 = *v1;
  v36 = v18;
  MEMORY[0x277D82BE0](v18);
  v15 = &v28;
  v29 = v18;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35F08);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35F10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35F18);
  v12 = sub_214B7B868();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35F80);
  v3 = sub_214B7BC98();
  v34 = v8;
  v35 = v3;
  v14 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v10;
  v31 = v11;
  v32 = v12;
  v33 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_214CCE304();
  MEMORY[0x277D82BD8](v18);
  v22 = sub_214B7BD20();
  sub_214B061F0(v23, v25, v24);
  v27 = *(v19 + 8);
  v26 = v19 + 8;
  v27(v23, v25);
  (*(v19 + 16))(v23, v24, v25);
  sub_214B061F0(v23, v25, v21);
  v27(v23, v25);
  return (v27)(v24, v25);
}

uint64_t sub_214B7B1E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v32 = a1;
  v17 = sub_214B7DE50;
  v19 = sub_214B7DE58;
  v29 = MEMORY[0x277CDE130];
  v31 = sub_214B7E088;
  v38 = MEMORY[0x277CDEEF8];
  v61 = 0;
  v60 = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35F40);
  v10 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v21 = (&v9 - v10);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35F30);
  v11 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v27 = (&v9 - v11);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35F10);
  v12 = (*(*(v34 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34);
  v33 = (&v9 - v12);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35F08);
  v40 = *(v46 - 8);
  v41 = v46 - 8;
  v13 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32);
  v44 = &v9 - v13;
  v14 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v45 = &v9 - v14;
  v61 = &v9 - v14;
  v60 = v4;
  MEMORY[0x277D82BE0](v4);
  v15 = &v51;
  v52 = v32;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35F50);
  sub_214B7BA4C();
  sub_214CCEF14();
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BE0](v32);
  v5 = swift_allocObject();
  *(v5 + 16) = v32;
  v20 = v5;
  sub_214B7B9B4();
  sub_214CCEDA4();
  sub_214A6B584(v19);
  sub_214B7DE60(v21);
  v6 = static Color.mui_secondarySystemBackground.getter();
  v26 = &v59;
  v59 = v6;
  v24 = sub_214B7B910();
  v23 = MEMORY[0x277CE0F78];
  v25 = MEMORY[0x277CE0F60];
  sub_214B07A68();
  sub_214CCEAC4();
  sub_214A75F80();
  sub_214B7DF44(v27);
  MEMORY[0x277D82BE0](v32);
  v30 = &v49;
  v50 = v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35F18);
  v36 = sub_214B7B868();
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35F80);
  v7 = sub_214B7BC98();
  v57 = v28;
  v58 = v7;
  v39 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_214CCED74();
  MEMORY[0x277D82BD8](v32);
  sub_214B7E090(v33);
  v53 = v34;
  v54 = v35;
  v55 = v36;
  v56 = OpaqueTypeConformance2;
  v43 = swift_getOpaqueTypeConformance2();
  sub_214B061F0(v44, v46, v45);
  v48 = *(v40 + 8);
  v47 = v40 + 8;
  v48(v44, v46);
  (*(v40 + 16))(v44, v45, v46);
  sub_214B061F0(v44, v46, v42);
  v48(v44, v46);
  return (v48)(v45, v46);
}

unint64_t sub_214B7B868()
{
  v2 = qword_27CA35F20;
  if (!qword_27CA35F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35F10);
    sub_214B7B910();
    sub_214B070E8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35F20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B7B910()
{
  v2 = qword_27CA35F28;
  if (!qword_27CA35F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35F30);
    sub_214B7B9B4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35F28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B7B9B4()
{
  v2 = qword_27CA35F38;
  if (!qword_27CA35F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35F40);
    sub_214B7BA4C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35F38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B7BA4C()
{
  v2 = qword_27CA35F48;
  if (!qword_27CA35F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35F50);
    sub_214B7BAF4();
    sub_214B7BC10();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35F48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B7BAF4()
{
  v2 = qword_27CA35F58;
  if (!qword_27CA35F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35F60);
    sub_214B7BB98();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35F58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B7BB98()
{
  v2 = qword_27CA35F68;
  if (!qword_27CA35F68)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35F68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B7BC10()
{
  v2 = qword_27CA35F70;
  if (!qword_27CA35F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35F78);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35F70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B7BC98()
{
  v2 = qword_27CA35F88;
  if (!qword_27CA35F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35F80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35F88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B7BD20()
{
  v2 = qword_27CA35F90;
  if (!qword_27CA35F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35F00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35F90);
    return WitnessTable;
  }

  return v2;
}

void *sub_214B7BDA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = v64;
  v55 = a1;
  v41 = a2;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v93 = 0;
  v92 = 0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35F78);
  v43 = *(v42 - 8);
  v44 = v43;
  v46 = *(v43 + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v48 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
  v45 = v17 - v48;
  MEMORY[0x28223BE20](v17 - v48);
  v47 = v17 - v48;
  MEMORY[0x28223BE20](v3);
  v49 = v17 - v48;
  v97 = v17 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35F50);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50 - 8);
  v53 = (v51 + 15) & 0xFFFFFFFFFFFFFFF0;
  v52 = (v17 - v53);
  MEMORY[0x28223BE20](v17 - v53);
  v54 = (v17 - v53);
  v96 = v17 - v53;
  v95 = a1;
  v4 = a1;
  FeedbackListViewModel.state.getter(&v94);
  v57 = v94;
  v56 = v94;

  if (!v57 || v56 == 1 || v56 == 2)
  {
    v5 = v55;
    FeedbackListViewModel.state.getter(&v69);
    v28 = v69;

    v68 = v28;
    sub_214B6C480(&v68, v70);
    v67[0] = v70[0];
    v67[1] = v70[1];
    v67[2] = v70[2];
    v30 = sub_214B7BB98();
    v29 = &type metadata for FeedbackContentEmptyView;
    sub_214B09708();
    v31 = v67;
    sub_214CCED64();
    sub_214B6D68C(v31);
    v77 = v71;
    v81 = v75;
    v80 = v74;
    v79 = v73;
    v78 = v72;
    v65[0] = v71;
    v66 = v75;
    v65[3] = v74;
    v65[2] = v73;
    v65[1] = v72;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35F60);
    v35 = sub_214B7BAF4();
    v38 = v76;
    v32 = v65;
    sub_214B061F0(v65, v34, v76);
    sub_214B6D68C(v32);
    v82 = v40[18];
    v6 = v40[19];
    v7 = v40[20];
    v8 = v40[21];
    v86 = v76[64];
    v85 = v8;
    v84 = v7;
    v83 = v6;
    sub_214B7E908(&v82, v63);
    v61[0] = v82;
    v62 = v86;
    v61[3] = v85;
    v61[2] = v84;
    v61[1] = v83;
    v37 = v64;
    v33 = v61;
    sub_214B061F0(v61, v34, v64);
    sub_214B6D68C(v33);
    v87 = *v40;
    v9 = v40[1];
    v10 = v40[2];
    v11 = v40[3];
    v91 = v64[64];
    v90 = v11;
    v89 = v10;
    v88 = v9;
    sub_214B7E908(&v87, v60);
    v58[0] = v87;
    v59 = v91;
    v58[3] = v90;
    v58[2] = v89;
    v58[1] = v88;
    v12 = sub_214B7BC10();
    v36 = v58;
    sub_214C22DA0(v58, v34, v42, v35, v12, v52);
    sub_214B6D68C(v36);
    sub_214B7E6A4(v52, v54);
    sub_214B6D68C(v37);
    sub_214B6D68C(v38);
  }

  else
  {
    v39 = v56;
    v24 = v56;
    v93 = v56;
    v13 = v55;

    v23 = v17;
    MEMORY[0x28223BE20](v17);
    v20 = &v17[-4];
    v17[-2] = v55;
    v17[-1] = v14;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35FC0);
    v22 = sub_214B7E4E0();
    sub_214B1916C();
    sub_214C6664C();

    v25 = sub_214B7BC10();
    sub_214B061F0(v47, v42, v49);
    v26 = *(v44 + 8);
    v27 = (v44 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v26(v47, v42);
    v92 = v47;
    v18 = *(v44 + 16);
    v17[1] = v44 + 16;
    v18(v45, v49, v42);
    sub_214B061F0(v45, v42, v47);
    v26(v45, v42);
    v18(v45, v47, v42);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35F60);
    v15 = sub_214B7BAF4();
    sub_214C22E98(v45, v19, v42, v15, v25, v52);
    v26(v45, v42);
    sub_214B7E6A4(v52, v54);
    v26(v47, v42);
    v26(v49, v42);
  }

  sub_214B7E784(v54, v52);
  sub_214B7BA4C();
  sub_214B061F0(v52, v50, v41);
  sub_214B7DE60(v52);
  return sub_214B7DE60(v54);
}

void *sub_214B7C490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v14 = a1;
  v15 = a2;
  v13 = sub_214B7E9E8;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35FD8);
  v8 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v18 = (&v8 - v8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35FC0);
  v9 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14);
  v22 = (&v8 - v9);
  v10 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v23 = (&v8 - v10);
  v29 = &v8 - v10;
  v28 = v5;
  v27 = v6;
  MEMORY[0x277D82BE0](v5);

  v11 = &v24;
  v25 = v14;
  v26 = v15;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35FE8);
  sub_214B7E61C();
  sub_214CCEF14();
  MEMORY[0x277D82BD8](v14);

  v17 = sub_214B7E584();
  sub_214B09708();
  sub_214CCED64();
  sub_214B7E9F4(v18);
  v21 = sub_214B7E4E0();
  sub_214B061F0(v22, v20, v23);
  sub_214B7E9F4(v22);
  sub_214B7EAA8(v23, v22);
  sub_214B061F0(v22, v20, v19);
  sub_214B7E9F4(v22);
  return sub_214B7E9F4(v23);
}

void *sub_214B7C6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v24 = a1;
  v23 = a2;
  v15 = sub_214B7E288;
  v19 = sub_214B7EC00;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v38 = v53;
  memset(v53, 0, sizeof(v53));
  v3 = sub_214CCE734();
  v12 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v18 = &v11 - v12;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35FF8);
  v25 = *(v34 - 8);
  v26 = v34 - 8;
  v13 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24);
  v32 = &v11 - v13;
  v14 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v37 = &v11 - v14;
  v56 = &v11 - v14;
  v55 = v6;
  v54 = v7;
  MEMORY[0x277D82BE0](v6);
  v8 = swift_allocObject();
  v9 = v15;
  *(v8 + 16) = v24;
  sub_214B6E8BC(v9, v8, v50);
  v16 = v47;
  v47[0] = v50[0];
  v47[1] = v50[1];
  v48 = v51;
  v49 = v52;
  v28 = sub_214B6E2A0();
  v27 = &type metadata for FeedbackHeaderView;
  sub_214B061F0(v16, &type metadata for FeedbackHeaderView, v38);
  sub_214B6E318(v16);

  MEMORY[0x277D82BE0](v24);
  v20 = &v39;
  v40 = v23;
  v41 = v24;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36000);
  v22 = sub_214B7EC0C();
  v17 = sub_214B6C2A4();
  sub_214B7D1C8();
  sub_214CCE094();

  MEMORY[0x277D82BD8](v24);
  v29 = sub_214B7ED1C();
  sub_214B061F0(v32, v34, v37);
  v36 = *(v25 + 8);
  v35 = v25 + 8;
  v36(v32, v34);
  v33 = v45;
  sub_214B7EDA4(v38, v45);
  v31 = v46;
  v46[0] = v33;
  (*(v25 + 16))(v32, v37, v34);
  v46[1] = v32;
  v44[0] = v27;
  v44[1] = v34;
  v42 = v28;
  v43 = v29;
  sub_214C663A4(v31, 2uLL, v44, v30);
  v36(v32, v34);
  sub_214B6E318(v33);
  v36(v37, v34);
  return sub_214B6E318(v38);
}

double sub_214B7CC54(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  FeedbackListViewModel.cancel()();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214B7CCB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v11 = a1;
  v12 = a2;
  v13 = sub_214B7EEC0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36000);
  v19 = *(v25 - 8);
  v20 = v25 - 8;
  v9 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v23 = &v8 - v9;
  v10 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v24 = &v8 - v10;
  v31 = &v8 - v10;
  v30 = v5;
  v29 = v6;

  v18 = &v28;
  v28 = v11;
  MEMORY[0x277D82BE0](v12);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36028);
  v16 = sub_214B7EEC8();
  v17 = sub_214B7ECA4();
  sub_214B7EF50();
  sub_214CCF0E4();
  v22 = sub_214B7EC0C();
  sub_214B061F0(v23, v25, v24);
  v27 = *(v19 + 8);
  v26 = v19 + 8;
  v27(v23, v25);
  (*(v19 + 16))(v23, v24, v25);
  sub_214B061F0(v23, v25, v21);
  v27(v23, v25);
  return (v27)(v24, v25);
}

uint64_t sub_214B7CF48@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = 0;
  memset(__b, 0, sizeof(__b));
  memcpy(__dst, a1, sizeof(__dst));
  v16 = a2;
  sub_214B70DF0(__dst, v13);
  memcpy(v12, __dst, sizeof(v12));
  MEMORY[0x277D82BE0](a2);
  sub_214B70DF0(__dst, v11);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  memcpy((v6 + 24), __dst, 0x48uLL);
  sub_214B7851C(v12, sub_214B7EFC8, v6, v14);
  memcpy(v18, v14, sizeof(v18));
  memcpy(v10, v18, sizeof(v10));
  sub_214B7ECA4();
  sub_214B061F0(v10, &type metadata for FeedbackListItemView, __b);
  sub_214B739FC(v10);
  memcpy(v19, __b, sizeof(v19));
  sub_214B737F0(v19, v9);
  memcpy(v8, v19, sizeof(v8));
  sub_214B061F0(v8, &type metadata for FeedbackListItemView, a3);
  sub_214B739FC(v8);
  return sub_214B739FC(__b);
}

double sub_214B7D10C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, const void *a4)
{
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v13 = *a1;
  v12 = *a2;
  v11 = a3;
  v10 = a4;
  MEMORY[0x277D82BE0](a3);
  memcpy(__dst, a4, sizeof(__dst));
  v8 = v13;
  v7 = v12;
  FeedbackListViewModel.markItem(_:as:as:)(__dst, &v8, &v7);
  *&result = MEMORY[0x277D82BD8](a3).n128_u64[0];
  return result;
}

uint64_t sub_214B7D1C8()
{
  sub_214CCE734();
  sub_214B7EE40();
  return sub_214CD0594();
}

double sub_214B7D228(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  FeedbackListViewModel.fetchContent()();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214B7D284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v14 = a1;
  v10 = sub_214B7E1F8;
  v28 = 0;
  v27 = 0;
  v2 = sub_214CCE724();
  v6 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v13 = &v6 - v6;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35F80);
  v15 = *(v21 - 8);
  v16 = v21 - 8;
  v8 = *(v15 + 64);
  v7 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14);
  v19 = &v6 - v7;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v20 = &v6 - v9;
  v28 = &v6 - v9;
  v27 = v4;
  v26 = v4;
  sub_214B7D528();
  MEMORY[0x277D82BE0](v14);
  v11 = &v24;
  v25 = v14;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35FA0);
  sub_214B7E200();
  sub_214CCE3C4();
  MEMORY[0x277D82BD8](v14);
  v18 = sub_214B7BC98();
  sub_214B061F0(v19, v21, v20);
  v23 = *(v15 + 8);
  v22 = v15 + 8;
  v23(v19, v21);
  (*(v15 + 16))(v19, v20, v21);
  MEMORY[0x21605C9F0](v19, v21, v18);
  v23(v19, v21);
  return (v23)(v20, v21);
}