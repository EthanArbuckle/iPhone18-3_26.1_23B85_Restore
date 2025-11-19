void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_214B1BD44()
{
}

unint64_t sub_214B1BD94()
{
  v2 = qword_27CA35130;
  if (!qword_27CA35130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35128);
    sub_214B1BCBC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35130);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B1BE38()
{
  v2 = qword_27CA35140;
  if (!qword_27CA35140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35138);
    sub_214B1BD94();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35140);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B1BEDC(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  v3 = *(a1 + 32);

  *(a2 + 32) = v3;
  *(a2 + 40) = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);

  *(a2 + 48) = v4;
  *(a2 + 56) = v5;
  *(a2 + 64) = *(a1 + 64);
  v6 = *(a1 + 72);

  *(a2 + 72) = v6;
  *(a2 + 80) = *(a1 + 80);
  v7 = *(a1 + 88);

  *(a2 + 88) = v7;
  memcpy((a2 + 96), (a1 + 96), 0x29uLL);
  memcpy((a2 + 144), (a1 + 144), 0x29uLL);
  return a2;
}

void *sub_214B1BFE4(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  a2[1] = v4;
  a2[2] = a1[2];
  v6 = a1[3];

  result = a2;
  a2[3] = v6;
  return result;
}

void *sub_214B1C04C(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

unint64_t sub_214B1C084()
{
  v2 = qword_27CA35150;
  if (!qword_27CA35150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35148);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35150);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B1C10C()
{
  v2 = qword_27CA35158;
  if (!qword_27CA35158)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35158);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B1C184()
{
  v2 = qword_27CA35160;
  if (!qword_27CA35160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA350F0);
    sub_214B0B09C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35160);
    return WitnessTable;
  }

  return v2;
}

id sub_214B1C254()
{
  sub_214B1C288();
  result = sub_214A61730();
  qword_27CA35170 = result;
  return result;
}

unint64_t sub_214B1C288()
{
  v2 = qword_27CA36170;
  if (!qword_27CA36170)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA36170);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t *sub_214B1C2EC()
{
  if (qword_27CA33F80 != -1)
  {
    swift_once();
  }

  return &qword_27CA35170;
}

uint64_t sub_214B1C34C()
{
  v0 = sub_214B1C2EC();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_214B1C384()
{
  v0 = sub_214B1C2EC();
  v3 = *v0;
  v5 = [*v0 accountRepository];
  v4 = [v5 receivingAccounts];
  sub_214B1C4C4();
  sub_214CCF7E4();
  MEMORY[0x277D82BD8](v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA351A8);
  sub_214B1C568();
  v2 = sub_214CD0154();
  MEMORY[0x277D82BD8](v4);
  return v2;
}

unint64_t sub_214B1C4C4()
{
  v2 = qword_27CA351A0;
  if (!qword_27CA351A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA351A0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214B1C568()
{
  v2 = qword_27CA351B0;
  if (!qword_27CA351B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA351A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA351B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B1C5F0()
{
  v1 = sub_214CCDA74();
  __swift_allocate_value_buffer(v1, qword_27CA35178);
  __swift_project_value_buffer(v1, qword_27CA35178);
  return sub_214B1C63C();
}

uint64_t sub_214B1C664()
{
  if (qword_27CA33F88 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCDA74();
  return __swift_project_value_buffer(v0, qword_27CA35178);
}

uint64_t sub_214B1C6D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214B1C664();
  v1 = sub_214CCDA74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t static AccountEntity.typeDisplayRepresentation.getter()
{
  sub_214CCF614();
  v1 = [objc_opt_self() mui_MailUIBundle];
  sub_214CCF614();
  sub_214B1C228();
  sub_214CCCF54();

  MEMORY[0x277D82BD8](v1);

  return sub_214CCCDD4();
}

uint64_t sub_214B1C85C()
{
  if (qword_280C7E130 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t AccountEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v61 = 0;
  v60 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA351B8);
  v17 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v51 = &v16 - v17;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA351C0);
  v18 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v50 = &v16 - v18;
  v46 = 0;
  v19 = (*(*(sub_214CCD094() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v46);
  v45 = &v16 - v19;
  v20 = (*(*(sub_214CCD2D4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v46);
  v44 = &v16 - v20;
  v21 = (*(*(sub_214CCF534() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v46);
  v41 = &v16 - v21;
  v38 = sub_214CCF514();
  v36 = *(v38 - 8);
  v37 = v38 - 8;
  v22 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v46);
  v40 = &v16 - v22;
  v23 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v35 = &v16 - v23;
  v24 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v39 = &v16 - v24;
  v55 = sub_214CCD0A4();
  v52 = *(v55 - 8);
  v53 = v55 - 8;
  v26 = *(v52 + 64);
  v25 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v46);
  v49 = &v16 - v25;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v54 = &v16 - v27;
  v61 = &v16 - v27;
  v29 = *v8;
  v60 = v8;
  sub_214CCF504();
  v33 = "";
  v47 = 1;
  sub_214CCF614();
  v28 = v9;
  sub_214CCF4F4();

  *&v10 = MEMORY[0x277D82BE0](v29).n128_u64[0];
  v32 = [v29 name];
  v30 = sub_214CCF564();
  v31 = v11;
  MEMORY[0x277D82BD8](v29);
  sub_214CCF4E4();

  MEMORY[0x277D82BD8](v32);
  sub_214CCF614();
  v34 = v12;
  sub_214CCF4F4();

  (*(v36 + 16))(v35, v39, v38);
  (*(v36 + 32))(v40, v35, v38);
  (*(v36 + 8))(v39, v38);
  sub_214CCF524();
  v42 = sub_214CCF614();
  v43 = v13;
  sub_214B1CFBC();
  sub_214B1CFD4(v45);
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = v47 & 1;
  sub_214CCD0C4();
  (*(v52 + 16))(v49, v54, v55);
  (*(v52 + 56))(v50, v47, v47, v55);
  v14 = sub_214CCCD74();
  (*(*(v14 - 8) + 56))(v51, v47);
  sub_214CCCD84();
  return (*(v52 + 8))(v54, v55);
}

uint64_t sub_214B1CFD4@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277CC9110];
  v1 = sub_214CCD094();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_214B1D040()
{
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_214B1D07C()
{
  v2 = *v0;
  v3 = [*v0 name];
  v4 = sub_214CCF564();
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
  return v4;
}

id sub_214B1D108()
{
  sub_214B1C288();
  result = sub_214A61730();
  qword_27CA35190 = result;
  return result;
}

uint64_t *sub_214B1D13C()
{
  if (qword_27CA33F98 != -1)
  {
    swift_once();
  }

  return &qword_27CA35190;
}

uint64_t sub_214B1D19C()
{
  v0 = sub_214B1D13C();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

double sub_214B1D1D4()
{
  v0 = sub_214B1D13C();
  v2 = *v0;
  qword_27CA3EF48 = [*v0 accountRepository];
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

uint64_t *sub_214B1D23C()
{
  if (qword_27CA33FA0 != -1)
  {
    swift_once();
  }

  return &qword_27CA3EF48;
}

uint64_t sub_214B1D29C()
{
  v0 = sub_214B1D23C();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t AccountEntity.id.getter()
{
  v5 = *v0;
  v6 = [*v0 objectID];
  [v6 representedObjectID];
  MEMORY[0x277D82BD8](v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA351C8);
  if (swift_dynamicCast())
  {
    v3 = v7;
    v4 = v8;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  if (v4)
  {
    return v3;
  }

  else
  {
    return sub_214CCF614();
  }
}

void *AccountEntity.init(account:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v27 = a2;
  v34 = a1;
  v36 = sub_214B1DA88;
  v40 = sub_214B21624;
  v42 = sub_214A662DC;
  v44 = sub_214A662DC;
  v47 = sub_214B217B4;
  v59 = 0;
  v58 = 0;
  v28 = 0;
  v33 = sub_214CCDA74();
  v31 = *(v33 - 8);
  v32 = v33 - 8;
  v29 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34);
  v2 = v19 - v29;
  v30 = v19 - v29;
  v58 = v3;
  v4 = sub_214B1C664();
  (*(v31 + 16))(v2, v4, v33);
  MEMORY[0x277D82BE0](v34);
  v38 = 7;
  v39 = swift_allocObject();
  *(v39 + 16) = v34;
  v51 = sub_214CCDA54();
  v52 = sub_214CCFBB4();
  v35 = 17;
  v43 = swift_allocObject();
  *(v43 + 16) = 64;
  v45 = swift_allocObject();
  *(v45 + 16) = 8;
  v37 = 32;
  v5 = swift_allocObject();
  v6 = v39;
  v41 = v5;
  *(v5 + 16) = v36;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v41;
  v48 = v7;
  *(v7 + 16) = v40;
  *(v7 + 24) = v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v46 = sub_214CD03C4();
  v49 = v9;

  v10 = v43;
  v11 = v49;
  *v49 = v42;
  v11[1] = v10;

  v12 = v45;
  v13 = v49;
  v49[2] = v44;
  v13[3] = v12;

  v14 = v48;
  v15 = v49;
  v49[4] = v47;
  v15[5] = v14;
  sub_214A63280();

  if (os_log_type_enabled(v51, v52))
  {
    v16 = v28;
    v20 = sub_214CCFF24();
    v19[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v21 = sub_214A632C4(1);
    v22 = sub_214A632C4(0);
    v23 = &v57;
    v57 = v20;
    v24 = &v56;
    v56 = v21;
    v25 = &v55;
    v55 = v22;
    sub_214A6627C(2, &v57);
    sub_214A6627C(1, v23);
    v53 = v42;
    v54 = v43;
    sub_214A66290(&v53, v23, v24, v25);
    v26 = v16;
    if (v16)
    {

      __break(1u);
    }

    else
    {
      v53 = v44;
      v54 = v45;
      sub_214A66290(&v53, &v57, &v56, &v55);
      v19[1] = 0;
      v53 = v47;
      v54 = v48;
      sub_214A66290(&v53, &v57, &v56, &v55);
      _os_log_impl(&dword_214A5E000, v51, v52, "init with account %@", v20, 0xCu);
      sub_214A669DC(v21);
      sub_214A669DC(v22);
      sub_214CCFF04();
    }
  }

  else
  {
  }

  v17 = MEMORY[0x277D82BD8](v51);
  (*(v31 + 8))(v30, v33, v17);
  MEMORY[0x277D82BE0](v34);
  v19[0] = &v59;
  v59 = v34;
  sub_214A671A8(&v59, v27);
  MEMORY[0x277D82BD8](v34);
  return sub_214A671E8(v19[0]);
}

uint64_t sub_214B1DAA8@<X0>(uint64_t *a1@<X8>)
{
  result = AccountEntity.id.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_214B1DB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_214A82860;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t AccountEntityQuery.entities(for:)(uint64_t a1)
{
  v1[9] = a1;
  v1[2] = v1;
  v1[3] = 0;
  v1[4] = 0;
  v1[6] = 0;
  v1[8] = 0;
  v2 = sub_214CCDA74();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[3] = a1;

  return MEMORY[0x2822009F8](sub_214B1DD64, 0);
}

uint64_t sub_214B1DD64()
{
  v56 = v0;
  v48 = v0[9];
  v0[2] = v0;
  v47 = sub_214B1C384();
  v0[4] = v47;

  v0[5] = v47;

  *(swift_task_alloc() + 16) = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA351A8);
  sub_214B1C568();
  v50 = sub_214CD0154();

  v46[6] = v50;
  v46[7] = v50;
  v1 = sub_214B218E4();
  v45 = sub_214A6E4F4(sub_214B1F1A0, 0, v49, &type metadata for AccountEntity, MEMORY[0x277D84A98], v1, MEMORY[0x277D84AC0], v44);
  v2 = v46[12];
  v15 = v46[10];
  v16 = v46[9];
  v14 = v46[11];
  v46[8] = v45;
  v3 = sub_214B1C664();
  (*(v14 + 16))(v2, v3, v15);

  v17 = swift_allocObject();
  *(v17 + 16) = v16;

  v21 = swift_allocObject();
  *(v21 + 16) = sub_214A7E9D4;
  *(v21 + 24) = v17;

  v18 = swift_allocObject();
  *(v18 + 16) = v47;

  v23 = swift_allocObject();
  *(v23 + 16) = sub_214A7E9D4;
  *(v23 + 24) = v18;

  v19 = swift_allocObject();
  *(v19 + 16) = v50;

  v25 = swift_allocObject();
  *(v25 + 16) = sub_214A7E9D4;
  *(v25 + 24) = v19;

  v20 = swift_allocObject();
  *(v20 + 16) = v45;

  v27 = swift_allocObject();
  *(v27 + 16) = sub_214A7E9D4;
  *(v27 + 24) = v20;

  oslog = sub_214CCDA54();
  v43 = sub_214CCFBB4();
  v29 = swift_allocObject();
  *(v29 + 16) = 32;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_214A7E4B4;
  *(v22 + 24) = v21;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_214A7E854;
  *(v31 + 24) = v22;
  v32 = swift_allocObject();
  *(v32 + 16) = 32;
  v33 = swift_allocObject();
  *(v33 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_214B219F4;
  *(v24 + 24) = v23;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_214A7E854;
  *(v34 + 24) = v24;
  v35 = swift_allocObject();
  *(v35 + 16) = 32;
  v36 = swift_allocObject();
  *(v36 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_214B219F4;
  *(v26 + 24) = v25;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_214A7E854;
  *(v37 + 24) = v26;
  v38 = swift_allocObject();
  *(v38 + 16) = 32;
  v39 = swift_allocObject();
  *(v39 + 16) = 8;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_214B21AE4;
  *(v28 + 24) = v27;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_214A7E854;
  *(v40 + 24) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  sub_214CD03C4();
  v41 = v4;

  *v41 = sub_214A662DC;
  v41[1] = v29;

  v41[2] = sub_214A662DC;
  v41[3] = v30;

  v41[4] = sub_214A7E40C;
  v41[5] = v31;

  v41[6] = sub_214A662DC;
  v41[7] = v32;

  v41[8] = sub_214A662DC;
  v41[9] = v33;

  v41[10] = sub_214A7E40C;
  v41[11] = v34;

  v41[12] = sub_214A662DC;
  v41[13] = v35;

  v41[14] = sub_214A662DC;
  v41[15] = v36;

  v41[16] = sub_214A7E40C;
  v41[17] = v37;

  v41[18] = sub_214A662DC;
  v41[19] = v38;

  v41[20] = sub_214A662DC;
  v41[21] = v39;

  v41[22] = sub_214A7E40C;
  v41[23] = v40;
  sub_214A63280();

  if (os_log_type_enabled(oslog, v43))
  {
    buf = sub_214CCFF24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v12 = sub_214A632C4(0);
    v13 = sub_214A632C4(4);
    v51 = buf;
    v52 = v12;
    v53 = v13;
    sub_214A6627C(2, &v51);
    sub_214A6627C(4, &v51);
    v54 = sub_214A662DC;
    v55 = v29;
    sub_214A66290(&v54, &v51, &v52, &v53);
    v54 = sub_214A662DC;
    v55 = v30;
    sub_214A66290(&v54, &v51, &v52, &v53);
    v54 = sub_214A7E40C;
    v55 = v31;
    sub_214A66290(&v54, &v51, &v52, &v53);
    v54 = sub_214A662DC;
    v55 = v32;
    sub_214A66290(&v54, &v51, &v52, &v53);
    v54 = sub_214A662DC;
    v55 = v33;
    sub_214A66290(&v54, &v51, &v52, &v53);
    v54 = sub_214A7E40C;
    v55 = v34;
    sub_214A66290(&v54, &v51, &v52, &v53);
    v54 = sub_214A662DC;
    v55 = v35;
    sub_214A66290(&v54, &v51, &v52, &v53);
    v54 = sub_214A662DC;
    v55 = v36;
    sub_214A66290(&v54, &v51, &v52, &v53);
    v54 = sub_214A7E40C;
    v55 = v37;
    sub_214A66290(&v54, &v51, &v52, &v53);
    v54 = sub_214A662DC;
    v55 = v38;
    sub_214A66290(&v54, &v51, &v52, &v53);
    v54 = sub_214A662DC;
    v55 = v39;
    sub_214A66290(&v54, &v51, &v52, &v53);
    v54 = sub_214A7E40C;
    v55 = v40;
    sub_214A66290(&v54, &v51, &v52, &v53);
    _os_log_impl(&dword_214A5E000, oslog, v43, "entities for identifiers: %s all %s found %s result %s", buf, 0x2Au);
    sub_214A669DC(v12);
    sub_214A669DC(v13);
    sub_214CCFF04();
  }

  else
  {
  }

  v10 = v46[12];
  v9 = v46[10];
  v8 = v46[11];
  v5 = MEMORY[0x277D82BD8](oslog);
  (*(v8 + 8))(v10, v9, v5);

  v6 = *(v46[2] + 8);

  return v6(v45);
}

uint64_t sub_214B1EFB0(void **a1)
{
  v7 = *a1;
  v5 = [v7 objectID];
  [v5 representedObjectID];
  MEMORY[0x277D82BD8](v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA351C8);
  if (swift_dynamicCast())
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0);
    sub_214B22E9C();
    v2 = sub_214CCF784();

    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void *sub_214B1F1A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  return AccountEntity.init(account:)(v4, a2);
}

uint64_t AccountEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  v2[10] = a2;
  v2[9] = a1;
  v2[4] = v2;
  v2[2] = 0;
  v2[3] = 0;
  v2[5] = 0;
  v2[7] = 0;
  v3 = sub_214CCDA74();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[2] = a1;
  v2[3] = a2;

  return MEMORY[0x2822009F8](sub_214B1F308, 0);
}

uint64_t sub_214B1F308()
{
  v52 = v0;
  v43 = v0[10];
  v42 = v0[9];
  v0[4] = v0;
  v41 = sub_214B1C384();
  v0[5] = v41;

  v0[6] = v41;

  v44 = swift_task_alloc();
  *(v44 + 16) = v42;
  *(v44 + 24) = v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA351A8);
  sub_214B1C568();
  v46 = sub_214CD0154();
  v1 = v40[13];
  v17 = v40[11];
  v19 = v40[10];
  v18 = v40[9];
  v16 = v40[12];

  v40[7] = v46;
  v2 = sub_214B1C664();
  (*(v16 + 16))(v1, v2, v17);

  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  *(v22 + 24) = v19;

  v20 = swift_allocObject();
  *(v20 + 16) = v41;

  v24 = swift_allocObject();
  *(v24 + 16) = sub_214A7E9D4;
  *(v24 + 24) = v20;

  v21 = swift_allocObject();
  *(v21 + 16) = v46;

  v26 = swift_allocObject();
  *(v26 + 16) = sub_214A7E9D4;
  *(v26 + 24) = v21;

  oslog = sub_214CCDA54();
  v39 = sub_214CCFBB4();
  v28 = swift_allocObject();
  *(v28 + 16) = 32;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_214B21C04;
  *(v23 + 24) = v22;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_214A7E854;
  *(v30 + 24) = v23;
  v31 = swift_allocObject();
  *(v31 + 16) = 32;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_214B219F4;
  *(v25 + 24) = v24;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_214A7E854;
  *(v33 + 24) = v25;
  v34 = swift_allocObject();
  *(v34 + 16) = 32;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_214B219F4;
  *(v27 + 24) = v26;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_214A7E854;
  *(v36 + 24) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  sub_214CD03C4();
  v37 = v3;

  *v37 = sub_214A662DC;
  v37[1] = v28;

  v37[2] = sub_214A662DC;
  v37[3] = v29;

  v37[4] = sub_214A7E40C;
  v37[5] = v30;

  v37[6] = sub_214A662DC;
  v37[7] = v31;

  v37[8] = sub_214A662DC;
  v37[9] = v32;

  v37[10] = sub_214A7E40C;
  v37[11] = v33;

  v37[12] = sub_214A662DC;
  v37[13] = v34;

  v37[14] = sub_214A662DC;
  v37[15] = v35;

  v37[16] = sub_214A7E40C;
  v37[17] = v36;
  sub_214A63280();

  if (os_log_type_enabled(oslog, v39))
  {
    buf = sub_214CCFF24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v14 = sub_214A632C4(0);
    v15 = sub_214A632C4(3);
    v47 = buf;
    v48 = v14;
    v49 = v15;
    sub_214A6627C(2, &v47);
    sub_214A6627C(3, &v47);
    v50 = sub_214A662DC;
    v51 = v28;
    sub_214A66290(&v50, &v47, &v48, &v49);
    v50 = sub_214A662DC;
    v51 = v29;
    sub_214A66290(&v50, &v47, &v48, &v49);
    v50 = sub_214A7E40C;
    v51 = v30;
    sub_214A66290(&v50, &v47, &v48, &v49);
    v50 = sub_214A662DC;
    v51 = v31;
    sub_214A66290(&v50, &v47, &v48, &v49);
    v50 = sub_214A662DC;
    v51 = v32;
    sub_214A66290(&v50, &v47, &v48, &v49);
    v50 = sub_214A7E40C;
    v51 = v33;
    sub_214A66290(&v50, &v47, &v48, &v49);
    v50 = sub_214A662DC;
    v51 = v34;
    sub_214A66290(&v50, &v47, &v48, &v49);
    v50 = sub_214A662DC;
    v51 = v35;
    sub_214A66290(&v50, &v47, &v48, &v49);
    v50 = sub_214A7E40C;
    v51 = v36;
    sub_214A66290(&v50, &v47, &v48, &v49);
    _os_log_impl(&dword_214A5E000, oslog, v39, "entities matching: %s all %s found %s", buf, 0x20u);
    sub_214A669DC(v14);
    sub_214A669DC(v15);
    sub_214CCFF04();
  }

  else
  {
  }

  v9 = v40[13];
  v10 = v40[11];
  v8 = v40[12];
  v4 = MEMORY[0x277D82BD8](oslog);
  (*(v8 + 8))(v9, v10, v4);
  v40[8] = v46;
  v5 = sub_214B218E4();
  v11 = sub_214A6E4F4(sub_214B1F1A0, 0, v45, &type metadata for AccountEntity, MEMORY[0x277D84A98], v5, MEMORY[0x277D84AC0], v12);

  v6 = *(v40[4] + 8);

  return v6(v11);
}

uint64_t sub_214B20184(void **a1)
{
  v4 = *a1;
  v2 = [v4 name];
  sub_214CCF564();
  MEMORY[0x277D82BD8](v4);
  sub_214B075A0();
  v3 = sub_214CCFFE4();
  sub_214A61B48();
  MEMORY[0x277D82BD8](v2);
  return v3 & 1;
}

uint64_t sub_214B202C0()
{
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_214B1C384();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA351A8);
  v1 = sub_214B218E4();
  v7 = sub_214A6E4F4(sub_214B1F1A0, 0, v5, &type metadata for AccountEntity, MEMORY[0x277D84A98], v1, MEMORY[0x277D84AC0], v6);
  sub_214A62278();
  v2 = *(*(v4 + 16) + 8);

  return v2(v7);
}

uint64_t sub_214B20400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 24) = a1;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 32) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_214B204C0;

  return AccountEntityQuery.entities(matching:)(a2, a3);
}

uint64_t sub_214B204C0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 16) = *v2;
  v7 = v3 + 16;
  v8 = v3 + 16;

  if (v1)
  {
    v4 = *(*v8 + 8);
  }

  else
  {
    **(v7 + 8) = a1;
    v4 = *(*v8 + 8);
  }

  return v4();
}

uint64_t sub_214B20668(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_214B2071C;

  return AccountEntityQuery.entities(for:)(a1);
}

uint64_t sub_214B2071C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 16) = *v2;
  v8 = v3 + 16;

  if (v1)
  {
    v5 = *(*v8 + 8);
  }

  else
  {
    v4 = a1;
    v5 = *(*v8 + 8);
  }

  return v5(v4);
}

uint64_t sub_214B208B0(uint64_t a1)
{
  v4 = v1;
  *(v1 + 24) = a1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 32) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_214B204C0;

  return AccountEntityQuery.suggestedEntities()();
}

uint64_t sub_214B20960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_214B2071C;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t sub_214B20A2C(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  v4 = sub_214B21C10();
  *v3 = *(v6 + 16);
  v3[1] = sub_214B20AF4;

  return MEMORY[0x28210B618](a1, a2, v4);
}

uint64_t sub_214B20AF4()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t sub_214B20C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_214A82860;

  return MEMORY[0x28210C148](a1, a2, a3);
}

uint64_t sub_214B20D60()
{
  v0[2] = v0;
  v0[3] = 0;
  v1 = sub_214CCDA74();
  v0[5] = v1;
  v0[6] = *(v1 - 8);
  v0[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_214B20E3C, 0);
}

uint64_t sub_214B20E3C()
{
  v35 = v0;
  v1 = v0[7];
  v18 = v0[6];
  v19 = v0[5];
  v0[2] = v0;
  v20 = sub_214B1C384();
  v0[3] = v20;
  v2 = sub_214B1C664();
  (*(v18 + 16))(v1, v2, v19);

  v21 = swift_allocObject();
  *(v21 + 16) = v20;

  v22 = swift_allocObject();
  *(v22 + 16) = sub_214A7E9D4;
  *(v22 + 24) = v21;

  v28 = sub_214CCDA54();
  v29 = sub_214CCFBB4();
  v24 = swift_allocObject();
  *(v24 + 16) = 32;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_214B219F4;
  *(v23 + 24) = v22;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_214A7E854;
  *(v26 + 24) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  sub_214CD03C4();
  v27 = v3;

  *v27 = sub_214A662DC;
  v27[1] = v24;

  v27[2] = sub_214A662DC;
  v27[3] = v25;

  v27[4] = sub_214A7E40C;
  v27[5] = v26;
  sub_214A63280();

  if (os_log_type_enabled(v28, v29))
  {
    buf = sub_214CCFF24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v15 = sub_214A632C4(0);
    v16 = sub_214A632C4(1);
    v30 = buf;
    v31 = v15;
    v32 = v16;
    sub_214A6627C(2, &v30);
    sub_214A6627C(1, &v30);
    v33 = sub_214A662DC;
    v34 = v24;
    sub_214A66290(&v33, &v30, &v31, &v32);
    v33 = sub_214A662DC;
    v34 = v25;
    sub_214A66290(&v33, &v30, &v31, &v32);
    v33 = sub_214A7E40C;
    v34 = v26;
    sub_214A66290(&v33, &v30, &v31, &v32);
    _os_log_impl(&dword_214A5E000, v28, v29, "suggesting all %s", buf, 0xCu);
    sub_214A669DC(v15);
    sub_214A669DC(v16);
    sub_214CCFF04();
  }

  else
  {
  }

  v9 = v17[7];
  v10 = v17[5];
  v8 = v17[6];
  v4 = MEMORY[0x277D82BD8](v28);
  (*(v8 + 8))(v9, v10, v4);
  v17[4] = v20;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA351A8);
  v5 = sub_214B218E4();
  v12 = sub_214A6E4F4(sub_214B1F1A0, 0, v11, &type metadata for AccountEntity, MEMORY[0x277D84A98], v5, MEMORY[0x277D84AC0], v13);

  v6 = *(v17[2] + 8);

  return v6(v12);
}

uint64_t sub_214B2154C(uint64_t a1)
{
  v4 = v1;
  *(v1 + 24) = a1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 32) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_214B204C0;

  return sub_214B20D60();
}

void sub_214B21630(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = a4();
  v7 = *a1;
  MEMORY[0x277D82BE0](v8);
  sub_214CCFF54();
  if (v8)
  {
    MEMORY[0x277D82BD8](v8);
  }

  *a1 = v7 + 8;
  v4 = *a2;
  if (*a2)
  {
    MEMORY[0x277D82BE0](v8);
    *v4 = v8;
    MEMORY[0x277D82BD8](v8);
    *a2 = v4 + 1;
  }

  else
  {
    MEMORY[0x277D82BD8](v8);
  }
}

unint64_t sub_214B217C0()
{
  v2 = qword_280C7E120;
  if (!qword_280C7E120)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7E120);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B2183C()
{
  v2 = qword_280C7E0D8;
  if (!qword_280C7E0D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7E0D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B218E4()
{
  v2 = qword_27CA351E0;
  if (!qword_27CA351E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA351A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA351E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B2196C()
{
  v2 = qword_27CA351F0;
  if (!qword_27CA351F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA34EC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA351F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B219F4()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA351A8);
  v1 = sub_214B21A5C();

  return sub_214A7E8F0(v5, v3, v4, v1);
}

unint64_t sub_214B21A5C()
{
  v2 = qword_27CA351F8;
  if (!qword_27CA351F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA351A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA351F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B21AE4()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35200);
  v1 = sub_214B21B4C();

  return sub_214A7E8F0(v5, v3, v4, v1);
}

unint64_t sub_214B21B4C()
{
  v2 = qword_27CA35208;
  if (!qword_27CA35208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35200);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35208);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B21C04()
{
  result = *(v0 + 16);
  sub_214B0C490();
  return result;
}

unint64_t sub_214B21C10()
{
  v2 = qword_280C7DFC0;
  if (!qword_280C7DFC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7DFC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B21CA4()
{
  v2 = qword_280C7E128;
  if (!qword_280C7E128)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7E128);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B21D38()
{
  v2 = qword_280C7E100;
  if (!qword_280C7E100)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7E100);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B21DCC()
{
  v2 = qword_280C7E0B8;
  if (!qword_280C7E0B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7E0B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B21E84()
{
  v2 = qword_280C7E0F0;
  if (!qword_280C7E0F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7E0F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B21F18()
{
  v2 = qword_280C7E0E8;
  if (!qword_280C7E0E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7E0E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B21FAC()
{
  v2 = qword_280C7E110;
  if (!qword_280C7E110)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7E110);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B22058()
{
  v2 = qword_27CA35218;
  if (!qword_27CA35218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35220);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35218);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B220F8()
{
  v2 = qword_280C7E0C8;
  if (!qword_280C7E0C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7E0C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B2218C()
{
  v2 = qword_280C7DFB0;
  if (!qword_280C7DFB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7DFB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B22220()
{
  v2 = qword_280C7DFA8;
  if (!qword_280C7DFA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7DFA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B222CC()
{
  v2 = qword_280C7DFD0;
  if (!qword_280C7DFD0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7DFD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B22360()
{
  v2 = qword_27CA35228;
  if (!qword_27CA35228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35200);
    sub_214B21FAC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35228);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B22410()
{
  v2 = qword_280C7EA70;
  if (!qword_280C7EA70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7EA70);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for MailFocusConfigurationAction(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 8))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
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

uint64_t storeEnumTagSinglePayload for MailFocusConfigurationAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

char *sub_214B227E8(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = sub_214CD02B4();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    sub_214CD02B4();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_214B22964(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = MEMORY[0x21605D940](15, v10, a2, a3);
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    sub_214CD01F4();
    __break(1u);
  }

  v5 = sub_214CCF6C4();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

uint64_t sub_214B22BD8()
{
  v1 = MEMORY[0x277D84F90];

  return v1;
}

char *sub_214B22C08(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = sub_214A7EBB4(v4, v6);
  if (v7)
  {
    sub_214B22D74((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    sub_214A7FAD4((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *sub_214B22D74(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_214CD02B4();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

unint64_t sub_214B22E9C()
{
  v2 = qword_280C7CED0;
  if (!qword_280C7CED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA34EC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CED0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B22F24()
{
  v1 = sub_214CCDA74();
  __swift_allocate_value_buffer(v1, qword_27CA35238);
  __swift_project_value_buffer(v1, qword_27CA35238);
  return static Logger.mailUILogger<A>(for:)();
}

uint64_t sub_214B22F80()
{
  if (qword_27CA33FA8 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCDA74();
  return __swift_project_value_buffer(v0, qword_27CA35238);
}

uint64_t sub_214B22FEC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214B22F80();
  v1 = sub_214CCDA74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

id sub_214B231CC()
{
  v0 = [objc_opt_self() blackColor];

  return v0;
}

id sub_214B2320C()
{
  v0 = [objc_opt_self() whiteColor];

  return v0;
}

id sub_214B2324C()
{
  v0 = [objc_opt_self() grayColor];

  return v0;
}

uint64_t ArtworkColorAnalyzer.Analysis.backgroundColor.getter()
{
  v2 = *(v0 + 8);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t ArtworkColorAnalyzer.Analysis.contrastingBackgroundColor.getter()
{
  v2 = *(v0 + 16);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t ArtworkColorAnalyzer.Analysis.primaryTextColor.getter()
{
  v2 = *(v0 + 32);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t ArtworkColorAnalyzer.Analysis.primaryDropShadowColor.getter()
{
  v2 = *(v0 + 40);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t ArtworkColorAnalyzer.Analysis.secondaryTextColor.getter()
{
  v2 = *(v0 + 56);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t ArtworkColorAnalyzer.Analysis.secondaryDropShadowColor.getter()
{
  v2 = *(v0 + 64);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t ArtworkColorAnalyzer.Analysis.tertiaryTextColor.getter()
{
  v2 = *(v0 + 80);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t ArtworkColorAnalyzer.Analysis.tertiaryDropShadowColor.getter()
{
  v2 = *(v0 + 88);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t ArtworkColorAnalyzer.Analysis.quaternaryTextColor.getter()
{
  v2 = *(v0 + 104);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t ArtworkColorAnalyzer.Analysis.quaternaryDropShadowColor.getter()
{
  v2 = *(v0 + 112);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

void *sub_214B2374C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v10[5] = *MEMORY[0x277D85DE8];
  memset(__b, 0, sizeof(__b));
  *&v8[1] = a1;
  v8[0] = 0.0;
  v7 = 0.0;
  v6 = 0.0;
  v5 = 0.0;
  [a1 getHue:v8 saturation:&v7 brightness:&v6 alpha:&v5];
  sub_214B24D50(v10, v8[0], v7, v6, v5);
  memcpy(__b, v10, sizeof(__b));
  MEMORY[0x277D82BD8](a1);
  return memcpy(a2, v10, 0x28uLL);
}

void *sub_214B23858()
{
  if (qword_280C7DDD8 != -1)
  {
    swift_once();
  }

  return &unk_280C7DDE0;
}

BOOL sub_214B238B8(uint64_t a1, char a2, double a3)
{
  if ((a2 & 1) != 0 && (*(v9 + 8) >= 0.05 ? (v7 = 0) : (v7 = *(a1 + 8) < 0.05), !v7 ? (*(v9 + 24) >= 0.015 ? (v5 = 0) : (v5 = *(a1 + 24) < 0.015), v6 = v5) : (v6 = 1), (v6 & 1) != 0 && sub_214B24E98(a1) <= 1.66))
  {
    return 1;
  }

  else
  {
    sub_214A75FAC();
    sub_214A86F4C();
    sub_214CD0424();
    if (a3 >= v13)
    {
      sub_214CD0424();
      if (a3 >= v12)
      {
        sub_214CD0424();
        v4 = 1;
        if (a3 < v11)
        {
          sub_214CD0424();
          if (a3 < v10)
          {
            return 0;
          }
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

void *sub_214B23CE0()
{
  if (qword_280C7DE10 != -1)
  {
    swift_once();
  }

  return &unk_280C7DE18;
}

uint64_t sub_214B23D40()
{
  v0 = sub_214A89248();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

unint64_t sub_214B23DA4()
{
  v2 = qword_27CA35278;
  if (!qword_27CA35278)
  {
    sub_214CCCE34();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35278);
    return WitnessTable;
  }

  return v2;
}

void *sub_214B23E24()
{
  v0 = sub_214B23E78();
  sub_214B23E80(v2, 0.0, 0.0, 0.0, v0);
  return memcpy(&unk_280C7DE18, v2, 0x28uLL);
}

double sub_214B23E80@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  memset(__b, 0, sizeof(__b));
  sub_214A75FAC();
  sub_214CD0444();
  sub_214CD0464();
  sub_214CD0444();
  sub_214CD0464();
  sub_214CD0444();
  sub_214CD0464();
  sub_214CD03C4();
  sub_214CD0454();

  sub_214CD03C4();
  sub_214CD0474();

  sub_214CD0464();
  __b[2] = v16;
  if (v17 == 0.0)
  {
    __b[1] = 0;
    v8 = 0.0;
  }

  else
  {
    sub_214CD0464();
    *&__b[1] = v15;
    v8 = v15;
  }

  if (v8 == 0.0)
  {
    __b[0] = 0;
    v7 = 0;
  }

  else
  {
    sub_214CD0464();
    __b[0] = v14;
    v7 = v14;
  }

  v5 = sub_214B24BA4(a2, a3, a4);
  result = a5;
  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = v16;
  *(a1 + 24) = v5;
  *(a1 + 32) = a5;
  return result;
}

double sub_214B243F8@<D0>(uint64_t a1@<X8>)
{
  v1 = sub_214B23CE0();
  v2 = *(v1 + 1);
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  result = v1[4];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = result;
  return result;
}

void *sub_214B24448()
{
  v0 = sub_214B23E78();
  sub_214B23E80(v2, 1.0, 1.0, 1.0, v0);
  return memcpy(&unk_280C7DDE0, v2, 0x28uLL);
}

double sub_214B2449C@<D0>(uint64_t a1@<X8>)
{
  v1 = sub_214B23858();
  v2 = *(v1 + 1);
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  result = v1[4];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = result;
  return result;
}

void *sub_214B244EC()
{
  v0 = sub_214B23E78();
  sub_214B23E80(v2, 0.333, 0.333, 0.333, v0);
  return memcpy(&unk_27CA35250, v2, 0x28uLL);
}

void *sub_214B2454C()
{
  if (qword_27CA33FB0 != -1)
  {
    swift_once();
  }

  return &unk_27CA35250;
}

double sub_214B245AC@<D0>(uint64_t a1@<X8>)
{
  v1 = sub_214B2454C();
  v2 = *(v1 + 1);
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  result = v1[4];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = result;
  return result;
}

void sub_214B24624(double *a1, double *a2, double *a3, double a4, double a5, double a6)
{
  v24 = 0.0;
  v23 = 0;
  v51 = a1;
  v50 = a2;
  v49 = a3;
  v48 = a4;
  v47 = a5;
  v46 = a6;
  v43 = 0;
  v42 = a4;
  sub_214A75FAC();
  sub_214CD0444();
  v41 = v44;
  v40 = 1.0;
  sub_214CD0464();
  v39 = v45;
  v36 = 0;
  v35 = a5;
  sub_214CD0444();
  v34 = v37;
  v33 = 1.0;
  sub_214CD0464();
  v20 = v38;
  v32 = v38;
  v29 = 0;
  v28 = a6;
  sub_214CD0444();
  v27 = v30;
  v26 = 1.0;
  sub_214CD0464();
  v21 = v31;
  v25 = v31;
  if (v38 == 0.0)
  {
    *a1 = v31;
    *a2 = v21;
    *a3 = v21;
    return;
  }

  v14 = v45 * 6.0;
  v24 = v45 * 6.0;
  if (((COERCE_UNSIGNED_INT64(v45 * 6.0) >> 52) & 0x7FF) == 0x7FF)
  {
    __break(1u);
    goto LABEL_40;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_41:
    __break(1u);
    return;
  }

  v11 = v14;
  v23 = v14;
  v22 = v14;
  v6 = sub_214A63208();
  v24 = v14 - sub_214A76BB8(&v22, MEMORY[0x277D83B88], v6);
  v12 = v21 * v20;
  v13 = v21 * v20 * v24;
  if ((v14 & 1) == 1)
  {
    if (v21 - v13 <= 1.0)
    {
      v10 = v21 - v13;
    }

    else
    {
      v10 = 1.0;
    }

    v9 = v10;
  }

  else
  {
    if (v21 - v12 + v13 <= 1.0)
    {
      v8 = v21 - v12 + v13;
    }

    else
    {
      v8 = 1.0;
    }

    v9 = v8;
  }

  if (v21 - v12 <= 1.0)
  {
    v7 = v21 - v12;
  }

  else
  {
    v7 = 1.0;
  }

  if (v11 && v11 != 5)
  {
    if (v11 == 1 || v11 == 4)
    {
      *a1 = v9;
    }

    else
    {
      *a1 = v7;
    }
  }

  else
  {
    *a1 = v21;
  }

  if (v11 == 1 || v11 == 2)
  {
    *a2 = v21;
  }

  else if (v11 && v11 != 3)
  {
    *a2 = v7;
  }

  else
  {
    *a2 = v9;
  }

  if (v11 == 3 || v11 == 4)
  {
    *a3 = v21;
  }

  else if (v11 == 2 || v11 == 5)
  {
    *a3 = v9;
  }

  else
  {
    *a3 = v7;
  }
}

double sub_214B24BA4(double a1, double a2, double a3)
{
  sub_214B24CC4(a1);
  sub_214B24CC4(a2);
  sub_214B24CC4(a3);
  sub_214A75FAC();
  sub_214CD0444();
  sub_214CD0464();
  return v6;
}

long double sub_214B24CC4(double a1)
{
  if (a1 > 0.03928)
  {
    return pow((a1 + 0.055) / 1.055, 2.4);
  }

  else
  {
    return a1 / 12.92;
  }
}

void sub_214B24D50(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  memset(&v13[5], 0, 0x28uLL);
  v13[4] = a2;
  v13[3] = a3;
  v13[2] = a4;
  v13[1] = a5;
  v13[5] = a2;
  v13[6] = a3;
  v13[7] = a4;
  v13[9] = a5;
  v13[0] = 0.0;
  v12 = 0.0;
  v11 = 0.0;
  sub_214B24624(v13, &v12, &v11, a2, a3, a4);
  v5 = sub_214B24BA4(v13[0], v12, v11);
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = v5;
  a1[4] = a5;
}

double sub_214B24ED4(double a1)
{
  v4 = *(v1 + 24);
  if (a1 >= v4)
  {
    return (a1 + 0.05) / (v4 + 0.05);
  }

  else
  {
    return (v4 + 0.05) / (a1 + 0.05);
  }
}

double sub_214B25114@<D0>(double *a1@<X8>, double a2@<D0>)
{
  if (sub_214B25028())
  {
    v9 = *v2;
    v8 = v2[1];
    v19 = v2[2];
    v20 = v19;
    v3 = sub_214B23E78();
    sub_214B24D50(v17, v9, v8, v19 * a2, v3);
    v10 = v17[0];
    v11 = v17[1];
    v12 = v17[2];
    v13 = v17[3];
    v14 = v17[4];
  }

  else
  {
    v21 = v2[2];
    v22 = v21;
    v7 = *v2;
    v6 = v2[1];
    v4 = sub_214B23E78();
    sub_214B24D50(v18, v7, v6, 1.0 - (1.0 - v21) * a2, v4);
    v10 = v18[0];
    v11 = v18[1];
    v12 = v18[2];
    v13 = v18[3];
    v14 = v18[4];
  }

  result = v14;
  *a1 = v10;
  a1[1] = v11;
  a1[2] = v12;
  a1[3] = v13;
  a1[4] = v14;
  return result;
}

double sub_214B25348@<D0>(const void *a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  memset(__b, 0, sizeof(__b));
  v31 = 0.0;
  memset(&v30[1], 0, 0x28uLL);
  v30[0] = 0.0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v34, a1, sizeof(v34));
  __b[0] = v34[0];
  __b[1] = v34[1];
  __b[2] = v34[2];
  __b[3] = v34[3];
  __b[4] = v34[4];
  v31 = a3;
  v30[1] = *__dst;
  v30[2] = *&__dst[1];
  v30[3] = *&__dst[2];
  v30[4] = *&__dst[3];
  v30[5] = *&__dst[4];
  if (a3 > 1.0)
  {
    v10 = v34[0];
    v11 = v34[1];
    v12 = v34[2];
    v13 = v34[3];
    v14 = *&v34[4];
  }

  else if (a3 < 0.0)
  {
    v10 = __dst[0];
    v11 = __dst[1];
    v12 = __dst[2];
    v13 = __dst[3];
    v14 = *&__dst[4];
  }

  else
  {
    v30[0] = 0.0;
    v29 = 0;
    v28 = 0;
    v27 = 0;
    v26 = 0;
    v25 = 0;
    sub_214B24E3C(v30, &v28, &v26);
    sub_214B24E3C(&v29, &v27, &v25);
    *&v23[1] = v30[0];
    v23[0] = v29;
    v6 = sub_214A8EF30();
    v5 = MEMORY[0x277D85048];
    sub_214A8EFA8(v23, MEMORY[0x277D85048], v6, &v24, a3);
    v9 = v24;
    v21[1] = v28;
    v21[0] = v27;
    sub_214A8EFA8(v21, v5, v6, &v22, a3);
    v7 = v22;
    v19[1] = v26;
    v19[0] = v25;
    sub_214A8EFA8(v19, v5, v6, &v20, a3);
    v8 = v20;
    v3 = sub_214B23E78();
    sub_214B23E80(v33, v9, v7, v8, v3);
    v10 = v33[0];
    v11 = v33[1];
    v12 = v33[2];
    v13 = v33[3];
    v14 = *&v33[4];
  }

  result = v14;
  *a2 = v10;
  *(a2 + 1) = v11;
  *(a2 + 2) = v12;
  *(a2 + 3) = v13;
  a2[4] = v14;
  return result;
}

uint64_t sub_214B256CC()
{
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_214B25700()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t sub_214B2572C(uint64_t a1)
{

  *(v1 + 8) = a1;
}

uint64_t sub_214B25784()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t sub_214B257B0(uint64_t a1)
{

  *(v1 + 32) = a1;
}

double sub_214B257F4@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  result = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = result;
  return result;
}

double sub_214B25820@<D0>(void *__src@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = __dst[0];
  v4 = __dst[1];
  v5 = __dst[2];
  v6 = __dst[3];
  result = *&__dst[4];
  *a2 = a3;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = result;
  return result;
}

uint64_t sub_214B2588C()
{
  v2 = *(v0 + 40);

  return v2;
}

uint64_t sub_214B258B8(uint64_t a1)
{

  *(v1 + 40) = a1;
}

uint64_t sub_214B258F4()
{
  v2 = *(v0 + 48);

  return v2;
}

uint64_t sub_214B25920(uint64_t a1)
{

  *(v1 + 48) = a1;
}

double sub_214B2595C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  result = *(a1 + 40);
  *a2 = *(a1 + 8);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = result;
  return result;
}

void sub_214B25998(uint64_t a1@<X8>)
{
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = *(v1 + 96);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7 & 1;
}

void sub_214B25A00(uint64_t a1@<X8>)
{
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);
  *a1 = *(v1 + 104);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7 & 1;
}

void sub_214B25A68(uint64_t a1@<X8>)
{
  v3 = *(v1 + 160);
  v4 = *(v1 + 168);
  v5 = *(v1 + 176);
  v6 = *(v1 + 184);
  v7 = *(v1 + 192);
  *a1 = *(v1 + 152);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7 & 1;
}

void sub_214B25AD0(uint64_t a1@<X8>)
{
  v3 = *(v1 + 208);
  v4 = *(v1 + 216);
  v5 = *(v1 + 224);
  v6 = *(v1 + 232);
  v7 = *(v1 + 240);
  *a1 = *(v1 + 200);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7 & 1;
}

void sub_214B25B38(uint64_t a1@<X8>)
{
  v3 = *(v1 + 256);
  v4 = *(v1 + 264);
  v5 = *(v1 + 272);
  v6 = *(v1 + 280);
  v7 = *(v1 + 288);
  *a1 = *(v1 + 248);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7 & 1;
}

void sub_214B25BA4(uint64_t a1@<X8>)
{
  v3 = *(v1 + 304);
  v4 = *(v1 + 312);
  v5 = *(v1 + 320);
  v6 = *(v1 + 328);
  v7 = *(v1 + 336);
  *a1 = *(v1 + 296);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7 & 1;
}

void sub_214B25C10(uint64_t a1@<X8>)
{
  v3 = *(v1 + 352);
  v4 = *(v1 + 360);
  v5 = *(v1 + 368);
  v6 = *(v1 + 376);
  v7 = *(v1 + 384);
  *a1 = *(v1 + 344);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7 & 1;
}

void sub_214B25C7C(uint64_t a1@<X8>)
{
  v3 = *(v1 + 400);
  v4 = *(v1 + 408);
  v5 = *(v1 + 416);
  v6 = *(v1 + 424);
  v7 = *(v1 + 432);
  *a1 = *(v1 + 392);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7 & 1;
}

void sub_214B25CE8(uint64_t a1@<X8>)
{
  v3 = *(v1 + 448);
  v4 = *(v1 + 456);
  v5 = *(v1 + 464);
  v6 = *(v1 + 472);
  v7 = *(v1 + 480);
  *a1 = *(v1 + 440);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7 & 1;
}

void sub_214B25D54(uint64_t a1@<X8>)
{
  v3 = *(v1 + 496);
  v4 = *(v1 + 504);
  v5 = *(v1 + 512);
  v6 = *(v1 + 520);
  v7 = *(v1 + 528);
  *a1 = *(v1 + 488);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7 & 1;
}

void *sub_214B25E30@<X0>(uint64_t a1@<X0>, double *a2@<X1>, void *a3@<X8>)
{
  memset(__b, 0, 0x28uLL);
  v14 = 0.0;
  __b[6] = a1;
  __b[5] = a2;
  v23 = *(a1 + 24);
  v24 = v23;
  v21 = a2[3];
  v22 = v21;
  if (v23 >= v21)
  {
    v3 = sub_214B23CE0();
  }

  else
  {
    v3 = sub_214B23858();
  }

  v4 = *(v3 + 1);
  v5 = *(v3 + 2);
  v6 = *(v3 + 3);
  v7 = *(v3 + 4);
  __b[0] = *v3;
  __b[1] = v4;
  __b[2] = v5;
  *&__b[3] = v6;
  __b[4] = v7;
  v25 = __b[0];
  v26 = v4;
  v27 = v5;
  v28 = v6;
  v29 = v7;
  v19 = a2[3];
  v20 = v19;
  v15 = v6 - v19;
  sub_214A75FAC();
  sub_214A86F4C();
  sub_214CD0424();
  v14 = 2.0 * v16;
  v12[1] = 1.0;
  v12[0] = 0x3FD999999999999ALL;
  sub_214A8EFA8(v12, MEMORY[0x277D839F8], MEMORY[0x277CE1508], &v13, 2.0 * v16);
  sub_214B25348(a2, v18, 1.0 - v13);
  return memcpy(a3, v18, 0x28uLL);
}

unint64_t sub_214B2609C()
{
  v2 = qword_27CA35280;
  if (!qword_27CA35280)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35280);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B26118(uint64_t result)
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352E0);
    v1 = sub_214CCF834();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

void sub_214B261D0(uint64_t a1)
{
  if (sub_214A80078(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352D8);
    v12 = sub_214CD02A4();
  }

  else
  {
    v11 = MEMORY[0x277D84F98];

    v12 = v11;
  }

  v10 = sub_214A80090(a1);
  if (v10)
  {
    if (v10 <= 0)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; ; ++i)
      {
        has_malloc_size = _swift_stdlib_has_malloc_size();
        sub_214B263CC(i, has_malloc_size & 1, a1, &v14);
        v8 = sub_214B26460(v14, v15);
        if (v2)
        {
          break;
        }

        v12[v8 / 0x40 + 8] |= 1 << ((v8 % 0x40) & 0x3F);
        v3 = (v12[6] + 16 * v8);
        v4 = v15;
        *v3 = v14;
        v3[1] = v4;
        sub_214B11A4C(&v16, v12[7] + 32 * v8);
        v5 = v12[2];
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_18;
        }

        v12[2] = v7;
        if (i + 1 == v10)
        {

          return;
        }
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
  }
}

void *sub_214B263CC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a2)
  {
    return sub_214B27E3C((a3 + 32 + 48 * a1), a4);
  }

  result = sub_214B264E4(a1, a3);
  __break(1u);
  return result;
}

unint64_t sub_214B26460(uint64_t a1, uint64_t a2)
{
  sub_214CD0544();
  memcpy(__dst, v7, sizeof(__dst));
  sub_214CCF634();
  v2 = sub_214CD0574();
  return sub_214B266E0(a1, a2, v2);
}

uint64_t sub_214B264E4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= *(a2 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x20 + 8 * result);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_214AFE794(82);
    v2 = sub_214CCF614();
    MEMORY[0x21605D900](v2);

    v3 = sub_214CCF614();
    MEMORY[0x21605D900](v3);

    v4 = sub_214CCF614();
    MEMORY[0x21605D900](v4);

    swift_getObjectType();
    v5 = sub_214CD0654();
    MEMORY[0x21605D900](v5);

    sub_214CCF5F4();
    sub_214CD0214();
    __break(1u);
  }

  sub_214B27EC4(v7);
  return v6;
}

unint64_t sub_214B266E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = (1 << (*(v3 + 32) & 0x3F)) - 1;
  for (i = a3 & v13; (*(v12 + 64 + 8 * (i / 0x40)) & (1 << ((i % 0x40) & 0x3F))) != 0; i = (i + 1) & v13)
  {
    v4 = (*(v12 + 48) + 16 * i);
    v7 = *v4;
    v8 = v4[1];

    v9 = MEMORY[0x21605D8D0](v7, v8, a1, a2);

    if (v9)
    {
      return i;
    }
  }

  return i;
}

uint64_t sub_214B2681C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_214B26864()
{
  v2 = qword_280C7CEF0;
  if (!qword_280C7CEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35298);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CEF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B268EC()
{
  v2 = qword_280C7CEF8;
  if (!qword_280C7CEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35298);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CEF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B2698C()
{
  v2 = qword_27CA352C0;
  if (!qword_27CA352C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA352C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B26A08(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_214B26B20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_214B26D30(uint64_t a1, int a2)
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
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
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

uint64_t sub_214B26E48(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArtworkColorAnalyzer.Analysis.ColorScheme(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
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

_BYTE *storeEnumTagSinglePayload for ArtworkColorAnalyzer.Analysis.ColorScheme(_BYTE *result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_214B273F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 40))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_214B274D8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3)
    {
      *(result + 40) = 1;
    }
  }

  else if (a3)
  {
    *(result + 40) = 0;
  }

  return result;
}

uint64_t sub_214B276D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 529))
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

uint64_t sub_214B277E8(uint64_t result, int a2, int a3)
{
  v3 = (result + 529);
  if (a2 < 0)
  {
    *(result + 504) = 0;
    *(result + 496) = 0;
    *(result + 488) = 0;
    *(result + 480) = 0;
    *(result + 472) = 0;
    *(result + 464) = 0;
    *(result + 456) = 0;
    *(result + 448) = 0;
    *(result + 440) = 0;
    *(result + 432) = 0;
    *(result + 424) = 0;
    *(result + 416) = 0;
    *(result + 408) = 0;
    *(result + 400) = 0;
    *(result + 392) = 0;
    *(result + 384) = 0;
    *(result + 376) = 0;
    *(result + 368) = 0;
    *(result + 360) = 0;
    *(result + 352) = 0;
    *(result + 344) = 0;
    *(result + 336) = 0;
    *(result + 328) = 0;
    *(result + 320) = 0;
    *(result + 312) = 0;
    *(result + 304) = 0;
    *(result + 296) = 0;
    *(result + 288) = 0;
    *(result + 280) = 0;
    *(result + 272) = 0;
    *(result + 264) = 0;
    *(result + 256) = 0;
    *(result + 248) = 0;
    *(result + 240) = 0;
    *(result + 232) = 0;
    *(result + 224) = 0;
    *(result + 216) = 0;
    *(result + 208) = 0;
    *(result + 200) = 0;
    *(result + 192) = 0;
    *(result + 184) = 0;
    *(result + 176) = 0;
    *(result + 168) = 0;
    *(result + 160) = 0;
    *(result + 152) = 0;
    *(result + 144) = 0;
    *(result + 136) = 0;
    *(result + 128) = 0;
    *(result + 120) = 0;
    *(result + 112) = 0;
    *(result + 104) = 0;
    *(result + 96) = 0;
    *(result + 88) = 0;
    *(result + 80) = 0;
    *(result + 72) = 0;
    *(result + 64) = 0;
    *(result + 56) = 0;
    *(result + 48) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 520) = 0;
    *(result + 512) = 0;
    *(result + 528) = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *result = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_214B27AB4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 48))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_214B27B94(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3)
    {
      *(result + 48) = 1;
    }
  }

  else if (a3)
  {
    *(result + 48) = 0;
  }

  return result;
}

unint64_t sub_214B27D4C()
{
  v2 = qword_27CA352C8;
  if (!qword_27CA352C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA352C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B27DC4()
{
  v2 = qword_27CA352D0;
  if (!qword_27CA352D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA352D0);
    return WitnessTable;
  }

  return v2;
}

void *sub_214B27E3C(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  a2[1] = v4;
  v2 = a1[5];
  a2[5] = v2;
  (**(v2 - 8))((a2 + 2), (a1 + 2));
  return a2;
}

uint64_t sub_214B27EC4(uint64_t a1)
{

  __swift_destroy_boxed_opaque_existential_0(a1 + 16);
  return a1;
}

uint64_t BucketContentConfiguration.image.getter()
{
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t BucketContentConfiguration.image.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v2 = *v1;
  *v1 = a1;
  MEMORY[0x277D82BD8](v2);
  return MEMORY[0x277D82BD8](a1);
}

uint64_t BucketContentConfiguration.title.getter()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t BucketContentConfiguration.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t BucketContentConfiguration.tintColor.getter()
{
  v2 = *(v0 + 32);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t BucketContentConfiguration.tintColor.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
  MEMORY[0x277D82BD8](v2);
  return MEMORY[0x277D82BD8](a1);
}

uint64_t BucketContentConfiguration.hashValue.getter()
{
  memset(__b, 0, 0x29uLL);
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  __b[0] = *v0;
  __b[1] = v1;
  __b[2] = v2;
  LOBYTE(__b[3]) = v3;
  __b[4] = v4;
  LOBYTE(__b[5]) = v5;
  sub_214A73978();
  return sub_214CD0114();
}

void *sub_214B28330@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  memset(__b, 0, 0x29uLL);
  v16 = a1;
  v10 = MUIBucket.image.getter(a1);
  v6 = MUIBucket.localizedTitle.getter(a1);
  v7 = v2;
  v8 = sub_214A7334C();
  v9 = sub_214A73344();
  v3 = sub_214A6BC90();
  sub_214A73354(v10, v6, v7, v8, v9, v3 & 1, v12);
  __b[0] = v12[0];
  __b[1] = v12[1];
  __b[2] = v12[2];
  LOBYTE(__b[3]) = v13;
  __b[4] = v14;
  LOBYTE(__b[5]) = v15;
  return memcpy(a2, __b, 0x29uLL);
}

uint64_t sub_214B28410(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 41))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (!HIDWORD(*a1))
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

uint64_t sub_214B28540(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 41);
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_214B2874C(id result)
{
  v1 = result;
  if (result)
  {
    result = [v2 isHidden];
    if ((result & 1) == 0)
    {
      return [v2 setHidden_];
    }
  }

  if ((v1 & 1) == 0)
  {
    return [v2 setHidden_];
  }

  return result;
}

uint64_t sub_214B2888C()
{
  type metadata accessor for BucketCellContentView();
  v0 = sub_214A72F24();
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 24);
  v6 = v0[4];
  v7 = *(v0 + 40);
  MEMORY[0x277D82BE0](*v0);

  MEMORY[0x277D82BE0](v6);
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  result = BucketCellContentView.__allocating_init(configuration:)(v8);
  qword_280C7DDD0 = result;
  return result;
}

uint64_t *sub_214B28958()
{
  if (qword_280C7DDC8 != -1)
  {
    swift_once();
  }

  return &qword_280C7DDD0;
}

uint64_t sub_214B289B8()
{
  v1 = sub_214B28958();
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x277D82BE0](*v1);
  swift_endAccess();
  return v2;
}

double sub_214B28A20(uint64_t a1)
{
  v3 = sub_214B28958();
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  v1 = *v3;
  *v3 = a1;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t *sub_214B28ABC()
{
  if (qword_280C7DDB0 != -1)
  {
    swift_once();
  }

  return &qword_280C7DDB8;
}

uint64_t static BucketCellContentView.resetCache()()
{
  v15 = 0;
  sub_214B28ABC();
  swift_beginAccess();
  type metadata accessor for CGSize();
  sub_214A73978();
  sub_214B28CB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35310);
  sub_214CCF394();
  swift_endAccess();
  v10 = sub_214B28958();
  v0 = sub_214A72F24();
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = *(v0 + 24);
  v7 = v0[4];
  v8 = *(v0 + 40);
  MEMORY[0x277D82BE0](*v0);

  MEMORY[0x277D82BE0](v7);
  v11[0] = v3;
  v11[1] = v4;
  v11[2] = v5;
  v12 = v6;
  v13 = v7;
  v14 = v8;
  v9 = BucketCellContentView.__allocating_init(configuration:)(v11);
  swift_beginAccess();
  v1 = *v10;
  *v10 = v9;
  MEMORY[0x277D82BD8](v1);
  return swift_endAccess();
}

uint64_t sub_214B28CCC()
{
  type metadata accessor for CGSize();
  sub_214A73978();
  result = sub_214CCF2C4();
  qword_280C7DDB8 = result;
  return result;
}

uint64_t sub_214B28D14()
{
  v1 = sub_214B28ABC();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

uint64_t sub_214B28D74(uint64_t a1)
{
  v2 = sub_214B28ABC();

  swift_beginAccess();
  *v2 = a1;

  swift_endAccess();
}

id sub_214B28DF8()
{
  sub_214B2A27C();
  result = sub_214A61730();
  qword_27CA35308 = result;
  return result;
}

uint64_t *sub_214B28E2C()
{
  if (qword_27CA33FB8 != -1)
  {
    swift_once();
  }

  return &qword_27CA35308;
}

uint64_t sub_214B28E8C()
{
  v0 = sub_214B28E2C();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t BucketCellContentView.configuration.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC6MailUI21BucketCellContentView_appliedConfiguration);
  swift_beginAccess();
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  v8 = *(v3 + 24);
  v9 = v3[4];
  v10 = *(v3 + 40);
  MEMORY[0x277D82BE0](*v3);

  MEMORY[0x277D82BE0](v9);
  swift_endAccess();
  a1[3] = &type metadata for BucketContentConfiguration;
  a1[4] = sub_214A74A40();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = v5;
  *(result + 24) = v6;
  *(result + 32) = v7;
  *(result + 40) = v8;
  *(result + 48) = v9;
  *(result + 56) = v10;
  return result;
}

double sub_214B28FF4@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v5[5] = v3;
  BucketCellContentView.configuration.getter(v5);
  sub_214B2C394(v5, a2);
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214B29068(uint64_t a1, void *a2)
{
  sub_214A74CE0(a1, v5);
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  BucketCellContentView.configuration.setter(v5);
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

double sub_214B290DC(uint64_t *a1)
{
  memset(__b, 0, 0x29uLL);
  v86 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v38 = *a1;
  v39 = a1[1];
  v40 = a1[2];
  v2 = *(a1 + 24);
  v41 = v2;
  v42 = a1[4];
  v43 = *(a1 + 40);
  __b[0] = v38;
  __b[1] = v39;
  __b[2] = v40;
  LOBYTE(__b[3]) = v2;
  __b[4] = v42;
  LOBYTE(__b[5]) = v43;
  v86 = v1;
  v82[0] = v38;
  v82[1] = v39;
  v82[2] = v40;
  v83 = v2;
  v84 = v42;
  v85 = v43;
  v44 = (v1 + OBJC_IVAR____TtC6MailUI21BucketCellContentView_appliedConfiguration);
  swift_beginAccess();
  v45 = *v44;
  v46 = v44[1];
  v47 = v44[2];
  v48 = *(v44 + 24);
  v49 = v44[4];
  v50 = *(v44 + 40);
  MEMORY[0x277D82BE0](*v44);

  MEMORY[0x277D82BE0](v49);
  swift_endAccess();
  v78[0] = v45;
  v78[1] = v46;
  v78[2] = v47;
  v79 = v48;
  v80 = v49;
  v81 = v50;
  v51 = static BucketContentConfiguration.== infix(_:_:)(v82, v78);
  sub_214A73A88(v78);
  if (!v51)
  {
    MEMORY[0x277D82BE0](v38);

    MEMORY[0x277D82BE0](v42);
    v33 = &v36[OBJC_IVAR____TtC6MailUI21BucketCellContentView_appliedConfiguration];
    swift_beginAccess();
    v4 = *v33;
    v34 = *(v33 + 4);
    *v33 = v38;
    *(v33 + 1) = v39;
    *(v33 + 2) = v40;
    v33[24] = v41;
    *(v33 + 4) = v42;
    v33[40] = v43;
    MEMORY[0x277D82BD8](v4);

    MEMORY[0x277D82BD8](v34);
    swift_endAccess();
    v35 = MUISolariumFeatureEnabled();
    MEMORY[0x277D82BE0](v38);

    MEMORY[0x277D82BE0](v42);
    if (v35)
    {
      v32 = v43;
    }

    else
    {
      v32 = 0;
    }

    MEMORY[0x277D82BD8](v38);

    MEMORY[0x277D82BD8](v42);
    if (v32)
    {
      (MEMORY[0x277D82BE0])();
      [v36 setDirectionalLayoutMargins_];
      (MEMORY[0x277D82BD8])();
    }

    else
    {

      v76 = v39;
      v77 = v40;
      sub_214A61B48();
      (MEMORY[0x277D82BE0])();
      if (v40)
      {
        [v36 setDirectionalLayoutMargins_];
      }

      else
      {
        v72 = 9.0;
        v73 = 0x4032800000000000;
        v74 = 9.0;
        v75 = 0x4032800000000000;
        [v36 setDirectionalLayoutMargins_];
      }

      (MEMORY[0x277D82BD8])();
    }

    v31 = *&v36[OBJC_IVAR____TtC6MailUI21BucketCellContentView_label];
    MEMORY[0x277D82BE0](v31);

    if (v40)
    {
      v29 = sub_214CCF544();

      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    [v31 setText_];
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    v28 = *&v36[OBJC_IVAR____TtC6MailUI21BucketCellContentView_label];
    MEMORY[0x277D82BE0](v28);
    [v28 setTextColor_];
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v28);

    v70 = v39;
    v71 = v40;
    sub_214A61B48();
    v69 = v40 == 0;
    v27 = *&v36[OBJC_IVAR____TtC6MailUI21BucketCellContentView_label];
    MEMORY[0x277D82BE0](v27);
    if (v40)
    {
      [v27 setAlpha_];
    }

    else
    {
      [v27 setAlpha_];
    }

    MEMORY[0x277D82BD8](v27);
    v26 = *&v36[OBJC_IVAR____TtC6MailUI21BucketCellContentView_label];
    MEMORY[0x277D82BE0](v26);
    sub_214B2874C((v40 == 0));
    MEMORY[0x277D82BD8](v26);
    if (v40)
    {
      v23 = objc_opt_self();
      (MEMORY[0x277D82BE0])();
      v5 = swift_allocObject();
      *(v5 + 16) = v36;
      v64 = sub_214B2B3E0;
      v65 = v5;
      aBlock = MEMORY[0x277D85DD0];
      v60 = 1107296256;
      v61 = 0;
      v62 = sub_214A746A8;
      v63 = &block_descriptor_0;
      v25 = _Block_copy(&aBlock);

      v57 = sub_214B2B3C4;
      v58 = 0;
      v52 = MEMORY[0x277D85DD0];
      v53 = 1107296256;
      v54 = 0;
      v55 = sub_214A7A88C;
      v56 = &block_descriptor_7;
      v24 = _Block_copy(&v52);
      [v23 animateWithDuration:4 delay:v25 options:0.15 animations:0.1 completion:?];
      _Block_release(v24);
      _Block_release(v25);
    }

    MEMORY[0x277D82BE0](v38);
    if (v38)
    {
      v68 = v38;
      v21 = *&v36[OBJC_IVAR____TtC6MailUI21BucketCellContentView_imageView];
      MEMORY[0x277D82BE0](v21);
      [v21 setImage_];
      MEMORY[0x277D82BD8](v38);
      MEMORY[0x277D82BD8](v21);
      v22 = *&v36[OBJC_IVAR____TtC6MailUI21BucketCellContentView_imageView];
      MEMORY[0x277D82BE0](v22);
      sub_214B2874C(0);
      MEMORY[0x277D82BD8](v22);
      MEMORY[0x277D82BE0](v42);
      if (v42)
      {
        v67 = v42;
        if (v41 == 2 || (v66 = v41 & 1, (v41 & 1) == 0))
        {
          v15 = *&v36[OBJC_IVAR____TtC6MailUI21BucketCellContentView_imageView];
          MEMORY[0x277D82BE0](v15);
          v13 = *&v36[OBJC_IVAR____TtC6MailUI21BucketCellContentView_imageViewFontConfiguration];
          MEMORY[0x277D82BE0](v13);
          sub_214A74030();
          sub_214A65CE0();
          sub_214CD03C4();
          v11 = v7;
          MEMORY[0x277D82BE0](v42);
          *v11 = v42;
          sub_214A63280();
          v12 = sub_214A79C6C();
          v14 = [v13 configurationByApplyingConfiguration_];
          MEMORY[0x277D82BD8](v12);
          [v15 setPreferredSymbolConfiguration_];
          MEMORY[0x277D82BD8](v14);
          MEMORY[0x277D82BD8](v15);
        }

        else
        {
          v20 = *&v36[OBJC_IVAR____TtC6MailUI21BucketCellContentView_imageView];
          MEMORY[0x277D82BE0](v20);
          v18 = *&v36[OBJC_IVAR____TtC6MailUI21BucketCellContentView_imageViewFontConfiguration];
          MEMORY[0x277D82BE0](v18);
          sub_214A74030();
          sub_214A65CE0();
          sub_214CD03C4();
          v16 = v6;
          *v6 = [objc_opt_self() labelColor];
          MEMORY[0x277D82BE0](v42);
          v16[1] = v42;
          sub_214A63280();
          v17 = sub_214A79C6C();
          v19 = [v18 configurationByApplyingConfiguration_];
          MEMORY[0x277D82BD8](v17);
          [v20 setPreferredSymbolConfiguration_];
          MEMORY[0x277D82BD8](v19);
          MEMORY[0x277D82BD8](v20);
        }

        MEMORY[0x277D82BD8](v42);
      }

      else
      {
        v10 = *&v36[OBJC_IVAR____TtC6MailUI21BucketCellContentView_imageView];
        MEMORY[0x277D82BE0](v10);
        v9 = *&v36[OBJC_IVAR____TtC6MailUI21BucketCellContentView_imageViewFontConfiguration];
        [v10 setPreferredSymbolConfiguration_];
        MEMORY[0x277D82BD8](v9);
        MEMORY[0x277D82BD8](v10);
      }

      *&result = MEMORY[0x277D82BD8](v38).n128_u64[0];
    }

    else
    {
      v8 = *&v36[OBJC_IVAR____TtC6MailUI21BucketCellContentView_imageView];
      MEMORY[0x277D82BE0](v8);
      sub_214B2874C(1);
      *&result = MEMORY[0x277D82BD8](v8).n128_u64[0];
    }
  }

  return result;
}

void (*BucketCellContentView.configuration.modify(uint64_t **a1))(void **a1, char a2)
{
  v4 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v4;
  v4[10] = v1;
  BucketCellContentView.configuration.getter(v4);
  return sub_214B29E48;
}

void sub_214B29E48(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_214A74CE0(v2, v2 + 40);
    BucketCellContentView.configuration.setter(v2 + 40);
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    BucketCellContentView.configuration.setter(v2);
  }

  free(v2);
}

uint64_t sub_214B29EC0@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC6MailUI21BucketCellContentView_appliedConfiguration);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8 = v3[4];
  v10 = *(v3 + 40);
  MEMORY[0x277D82BE0](*v3);

  MEMORY[0x277D82BE0](v8);
  result = swift_endAccess();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v10;
  return result;
}

double sub_214B29FA4(uint64_t *a1)
{
  memset(__b, 0, 0x29uLL);
  v10 = *a1;
  v5 = a1[1];
  v11 = a1[2];
  v6 = *(a1 + 24);
  v12 = a1[4];
  v8 = *(a1 + 40);
  __b[0] = v10;
  __b[1] = v5;
  __b[2] = v11;
  LOBYTE(__b[3]) = v6;
  __b[4] = v12;
  LOBYTE(__b[5]) = v8;
  MEMORY[0x277D82BE0](v10);

  MEMORY[0x277D82BE0](v12);
  v7 = (v1 + OBJC_IVAR____TtC6MailUI21BucketCellContentView_appliedConfiguration);
  swift_beginAccess();
  v2 = *v7;
  v9 = v7[4];
  *v7 = v10;
  v7[1] = v5;
  v7[2] = v11;
  *(v7 + 24) = v6;
  v7[4] = v12;
  *(v7 + 40) = v8;
  MEMORY[0x277D82BD8](v2);

  MEMORY[0x277D82BD8](v9);
  swift_endAccess();
  MEMORY[0x277D82BD8](v10);

  *&result = MEMORY[0x277D82BD8](v12).n128_u64[0];
  return result;
}

uint64_t sub_214B2A114()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI21BucketCellContentView_imageView);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214B2A15C()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI21BucketCellContentView_label);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214B2A1A4()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI21BucketCellContentView_stackView);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214B2A1EC()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI21BucketCellContentView_labelCountStackView);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214B2A234()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI21BucketCellContentView_imageViewFontConfiguration);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

unint64_t sub_214B2A27C()
{
  v2 = qword_27CA35318;
  if (!qword_27CA35318)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA35318);
    return ObjCClassMetadata;
  }

  return v2;
}

double sub_214B2A2E0()
{
  [v0 setClipsToBounds_];
  MEMORY[0x277D82BD8](v0);
  v7 = *&v0[OBJC_IVAR____TtC6MailUI21BucketCellContentView_imageView];
  MEMORY[0x277D82BE0](v7);
  v6 = *&v0[OBJC_IVAR____TtC6MailUI21BucketCellContentView_imageViewFontConfiguration];
  [v7 setPreferredSymbolConfiguration_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  v8 = *&v0[OBJC_IVAR____TtC6MailUI21BucketCellContentView_imageView];
  v1 = MEMORY[0x277D82BE0](v8);
  v1.n128_u32[0] = 1148846080;
  [v8 setContentHuggingPriority:v1.n128_f64[0] forAxis:?];
  MEMORY[0x277D82BD8](v8);
  v9 = *&v0[OBJC_IVAR____TtC6MailUI21BucketCellContentView_imageView];
  v2 = MEMORY[0x277D82BE0](v9);
  v2.n128_u32[0] = 1148846080;
  [v9 0x1FBB8328ELL];
  MEMORY[0x277D82BD8](v9);
  v10 = *&v0[OBJC_IVAR____TtC6MailUI21BucketCellContentView_imageView];
  [v10 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  MEMORY[0x277D82BD8](v10);
  v11 = *&v0[OBJC_IVAR____TtC6MailUI21BucketCellContentView_imageView];
  MEMORY[0x277D82BE0](v11);
  sub_214B2874C(1);
  MEMORY[0x277D82BD8](v11);
  v12 = *&v57[OBJC_IVAR____TtC6MailUI21BucketCellContentView_imageView];
  [v12 setContentMode_];
  MEMORY[0x277D82BD8](v12);
  v16 = *&v57[OBJC_IVAR____TtC6MailUI21BucketCellContentView_label];
  MEMORY[0x277D82BE0](v16);
  v13 = objc_opt_self();
  v14 = *MEMORY[0x277D76918];
  MEMORY[0x277D82BE0](*MEMORY[0x277D76918]);
  v15 = [v13 _preferredFontForTextStyle_weight_];
  [v16 setFont_];
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  v18 = *&v57[OBJC_IVAR____TtC6MailUI21BucketCellContentView_label];
  MEMORY[0x277D82BE0](v18);
  v17 = [objc_opt_self() systemWhiteColor];
  [v18 setTextColor_];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  v19 = *&v57[OBJC_IVAR____TtC6MailUI21BucketCellContentView_label];
  [v19 setAdjustsFontForContentSizeCategory_];
  MEMORY[0x277D82BD8](v19);
  v20 = *&v57[OBJC_IVAR____TtC6MailUI21BucketCellContentView_label];
  MEMORY[0x277D82BE0](v20);
  sub_214B2874C(1);
  MEMORY[0x277D82BD8](v20);
  v21 = *&v57[OBJC_IVAR____TtC6MailUI21BucketCellContentView_label];
  v3 = MEMORY[0x277D82BE0](v21);
  v3.n128_u32[0] = 1148846080;
  [v21 0x1FBB8328ELL];
  MEMORY[0x277D82BD8](v21);
  v23 = *&v57[OBJC_IVAR____TtC6MailUI21BucketCellContentView_stackView];
  MEMORY[0x277D82BE0](v23);
  v22 = *&v57[OBJC_IVAR____TtC6MailUI21BucketCellContentView_imageView];
  [v23 0x1FBB16380];
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  v25 = *&v57[OBJC_IVAR____TtC6MailUI21BucketCellContentView_stackView];
  MEMORY[0x277D82BE0](v25);
  v24 = *&v57[OBJC_IVAR____TtC6MailUI21BucketCellContentView_label];
  [v25 0x1FBB16380];
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  v26 = *&v57[OBJC_IVAR____TtC6MailUI21BucketCellContentView_stackView];
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x277D82BD8](v26);
  v27 = *&v57[OBJC_IVAR____TtC6MailUI21BucketCellContentView_stackView];
  [v27 setAxis_];
  MEMORY[0x277D82BD8](v27);
  v28 = *&v57[OBJC_IVAR____TtC6MailUI21BucketCellContentView_stackView];
  MEMORY[0x277D82BE0](v28);
  [v28 setSpacing_];
  MEMORY[0x277D82BD8](v28);
  v29 = *&v57[OBJC_IVAR____TtC6MailUI21BucketCellContentView_stackView];
  [v29 setAlignment_];
  MEMORY[0x277D82BD8](v29);
  v30 = *&v57[OBJC_IVAR____TtC6MailUI21BucketCellContentView_stackView];
  [v57 addSubview_];
  MEMORY[0x277D82BD8](v30);
  (MEMORY[0x277D82BE0])();
  [v57 setDirectionalLayoutMargins_];
  (MEMORY[0x277D82BD8])();
  v62 = objc_opt_self();
  sub_214A6F394();
  sub_214CD03C4();
  v61 = v4;
  v31 = *&v57[OBJC_IVAR____TtC6MailUI21BucketCellContentView_stackView];
  v34 = [v31 0x1FBBB4950];
  MEMORY[0x277D82BD8](v31);
  v32 = [v57 0x1FBB5C2A9];
  v33 = [v32 0x1FBBB4950];
  v35 = [v34 0x1FBB28F65];
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v34);
  *v61 = v35;
  v36 = *&v57[OBJC_IVAR____TtC6MailUI21BucketCellContentView_stackView];
  v39 = [v36 0x1FBB5C529];
  MEMORY[0x277D82BD8](v36);
  v37 = [v57 0x1FBB5C2A9];
  v38 = [v37 0x1FBB5C529];
  v40 = [v39 0x1FBB2910FLL];
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v39);
  v61[1] = v40;
  v41 = *&v57[OBJC_IVAR____TtC6MailUI21BucketCellContentView_stackView];
  v44 = [v41 0x1FBB20D25];
  MEMORY[0x277D82BD8](v41);
  v42 = [v57 0x1FBB5C2A9];
  v43 = [v42 0x1FBB20D25];
  v45 = [v44 0x1FBB28F65];
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](v44);
  v61[2] = v45;
  v46 = *&v57[OBJC_IVAR____TtC6MailUI21BucketCellContentView_stackView];
  v49 = [v46 0x1FBBB59CCLL];
  MEMORY[0x277D82BD8](v46);
  v47 = [v57 0x1FBB5C2A9];
  v48 = [v47 0x1FBBB59CCLL];
  v50 = [v49 constraintLessThanOrEqualToAnchor_];
  MEMORY[0x277D82BD8](v48);
  MEMORY[0x277D82BD8](v49);
  v61[3] = v50;
  v51 = *&v57[OBJC_IVAR____TtC6MailUI21BucketCellContentView_stackView];
  v54 = [v51 widthAnchor];
  MEMORY[0x277D82BD8](v51);
  v52 = *&v57[OBJC_IVAR____TtC6MailUI21BucketCellContentView_stackView];
  v53 = [v52 heightAnchor];
  v55 = [v54 0x1FBB2910FLL];
  MEMORY[0x277D82BD8](v53);
  MEMORY[0x277D82BD8](v54);
  v61[4] = v55;
  v56 = *&v57[OBJC_IVAR____TtC6MailUI21BucketCellContentView_stackView];
  v59 = [v56 0x1FBB23FD2];
  MEMORY[0x277D82BD8](v56);
  v58 = [v57 0x1FBB23FD2];
  v60 = [v59 0x1FBB28F65];
  MEMORY[0x277D82BD8](v58);
  MEMORY[0x277D82BD8](v59);
  v61[5] = v60;
  sub_214A63280();
  v63 = sub_214CCF7D4();

  [v62 activateConstraints_];
  *&result = MEMORY[0x277D82BD8](v63).n128_u64[0];
  return result;
}

id BucketCellContentView.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

void BucketCellContentView.init(coder:)()
{
  sub_214A73E9C(OBJC_IVAR____TtC6MailUI21BucketCellContentView_appliedConfiguration);
  v1 = OBJC_IVAR____TtC6MailUI21BucketCellContentView_imageView;
  sub_214A73F04();
  *v1 = sub_214A61730();
  v2 = OBJC_IVAR____TtC6MailUI21BucketCellContentView_label;
  sub_214A73F68();
  *v2 = sub_214A61730();
  v3 = OBJC_IVAR____TtC6MailUI21BucketCellContentView_stackView;
  sub_214A73FCC();
  *v3 = sub_214A61730();
  v4 = OBJC_IVAR____TtC6MailUI21BucketCellContentView_labelCountStackView;
  *v4 = sub_214A61730();
  v5 = OBJC_IVAR____TtC6MailUI21BucketCellContentView_imageViewFontConfiguration;
  sub_214A74030();
  v6 = objc_opt_self();
  v7 = *MEMORY[0x277D76918];
  MEMORY[0x277D82BE0](*MEMORY[0x277D76918]);
  v8 = [v6 _preferredFontForTextStyle_weight_];
  MEMORY[0x277D82BD8](v7);
  if (v8)
  {
    v0 = v8;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  *v5 = sub_214A74094(v0);
  sub_214CCF614();
  sub_214CD0204();
  __break(1u);
}

double sub_214B2B35C(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC6MailUI21BucketCellContentView_label);
  MEMORY[0x277D82BE0](v2);
  [v2 setAlpha_];
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

id BucketCellContentView.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_214B2B66C(uint64_t ***a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = BucketCellContentView.configuration.modify(v2);
  return sub_214B2B6DC;
}

void sub_214B2B6DC(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

uint64_t sub_214B2B7D0(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  sub_214CCF9F4();
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  sub_214CD02B4();
  __break(1u);
LABEL_12:
  result = sub_214CD01F4();
  __break(1u);
  return result;
}

uint64_t sub_214B2BAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        MEMORY[0x28223BE20](v17);
        v15 = sub_214B2C8E4;
        v16 = &v37;
        sub_214B2B7D0(sub_214B2C900, v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      v13[0] = 2;
      sub_214CD01F4();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    v13[0] = 2;
    sub_214CD01F4();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        v13[0] = 2;
        sub_214CD01F4();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            v13[0] = 2;
            sub_214CD01F4();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    v13[0] = 2;
                    sub_214CD01F4();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  v13[0] = 2;
                  sub_214CD01F4();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                v13[0] = 2;
                sub_214CD01F4();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              v13[0] = 2;
              sub_214CD01F4();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            v13[0] = 2;
            sub_214CD01F4();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          v13[0] = 2;
          sub_214CD01F4();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        v13[0] = 2;
        sub_214CD01F4();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      v13[0] = 2;
      sub_214CD01F4();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    v13[0] = 2;
    sub_214CD02B4();
    __break(1u);
  }

  result = sub_214CD01F4();
  __break(1u);
  return result;
}

uint64_t sub_214B2C3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    sub_214CD01F4();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        sub_214CD01F4();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            sub_214CD01F4();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                sub_214CD01F4();
                __break(1u);
              }

              sub_214CD01F4();
              __break(1u);
            }

            sub_214CD01F4();
            __break(1u);
          }

          sub_214CD01F4();
          __break(1u);
        }

        sub_214CD01F4();
        __break(1u);
      }

      sub_214CD01F4();
      __break(1u);
    }

    sub_214CD01F4();
    __break(1u);
  }

  result = sub_214CD01F4();
  __break(1u);
  return result;
}

uint64_t BucketCollectionViewCell.isStacked.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_isStacked);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

double sub_214B2C9A0@<D0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v4 = (v3 + OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_isStacked);
  swift_beginAccess();
  v6 = *v4;
  swift_endAccess();
  *a2 = v6;
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214B2CA3C(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  BucketCollectionViewCell.isStacked.setter(v4 & 1);
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

void (*BucketCollectionViewCell.isStacked.modify(void *a1))(uint64_t a1)
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[3] = v1;
  v3 = (v1 + OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_isStacked);
  swift_beginAccess();
  v5 = *v3;
  swift_endAccess();
  *(v4 + 32) = v5;
  return sub_214B2CB5C;
}

void sub_214B2CB5C(uint64_t a1)
{
  v1 = *a1;
  BucketCollectionViewCell.isStacked.setter(*(*a1 + 32) & 1);
  free(v1);
}

uint64_t BucketCollectionViewCell.isExpanded.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_isExpanded);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

double sub_214B2CC30@<D0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v4 = (v3 + OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_isExpanded);
  swift_beginAccess();
  v6 = *v4;
  swift_endAccess();
  *a2 = v6;
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214B2CCCC(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  BucketCollectionViewCell.isExpanded.setter(v4 & 1);
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

void (*BucketCollectionViewCell.isExpanded.modify(void *a1))(uint64_t a1)
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[3] = v1;
  v3 = (v1 + OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_isExpanded);
  swift_beginAccess();
  v5 = *v3;
  swift_endAccess();
  *(v4 + 32) = v5;
  return sub_214B2CDEC;
}

void sub_214B2CDEC(uint64_t a1)
{
  v1 = *a1;
  BucketCollectionViewCell.isExpanded.setter(*(*a1 + 32) & 1);
  free(v1);
}

uint64_t BucketCollectionViewCell.isPreselected.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_isPreselected);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

double sub_214B2CEC0@<D0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v4 = (v3 + OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_isPreselected);
  swift_beginAccess();
  v6 = *v4;
  swift_endAccess();
  *a2 = v6;
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214B2CF5C(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  BucketCollectionViewCell.isPreselected.setter(v4 & 1);
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

void (*BucketCollectionViewCell.isPreselected.modify(void *a1))(uint64_t a1)
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[3] = v1;
  v3 = (v1 + OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_isPreselected);
  swift_beginAccess();
  v5 = *v3;
  swift_endAccess();
  *(v4 + 32) = v5;
  return sub_214B2D07C;
}

void sub_214B2D07C(uint64_t a1)
{
  v1 = *a1;
  BucketCollectionViewCell.isPreselected.setter(*(*a1 + 32) & 1);
  free(v1);
}

unint64_t sub_214B2D0E8(unsigned int a1)
{
  v4 = (v1 + OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_shouldHighlightBadge);
  swift_beginAccess();
  v5 = *v4;
  swift_endAccess();
  result = a1;
  if ((v5 & 1) != (a1 & 1))
  {
    return [v3 setNeedsUpdateConfiguration];
  }

  return result;
}

uint64_t sub_214B2D194()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_shouldHighlightBadge);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

unint64_t sub_214B2D1FC(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_shouldHighlightBadge);
  swift_beginAccess();
  v6 = *v3;
  swift_endAccess();
  v4 = (v1 + OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_shouldHighlightBadge);
  swift_beginAccess();
  *v4 = a1;
  swift_endAccess();
  return sub_214B2D0E8(v6 & 1);
}

uint64_t sub_214B2D2C0()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_item);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214B2D328(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_item);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_214B2D3A8()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_customBackgroundView);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

double sub_214B2D3F0(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUIP33_219AF94A6A2F505842044393C503777738BucketCollectionViewCellBackgroundView_primaryBackgroundColor);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  sub_214B2D8F0();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

Swift::Void __swiftcall BucketCollectionViewCell.prepareForReuse()()
{
  ObjectType = swift_getObjectType();
  v5 = v0;
  *&v1 = (MEMORY[0x277D82BE0])().n128_u64[0];
  v4.receiver = v0;
  v4.super_class = ObjectType;
  objc_msgSendSuper2(&v4, sel_prepareForReuse, v1);
  (MEMORY[0x277D82BD8])();
  v3 = &v0[OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_item];
  swift_beginAccess();
  *v3 = 0;

  swift_endAccess();
  BucketCollectionViewCell.isExpanded.setter(0);
  BucketCollectionViewCell.isStacked.setter(0);
  BucketCollectionViewCell.isPreselected.setter(0);
}

id BucketCollectionViewCell.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

_BYTE *BucketCollectionViewCell.init(coder:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v9 = a1;
  v10 = v1;
  v1[OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_isStacked] = 0;
  v10[OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_isExpanded] = 0;
  v10[OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_isPreselected] = 0;
  v10[OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_shouldHighlightBadge] = 0;
  *&v10[OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_item] = 0;
  v4 = OBJC_IVAR____TtC6MailUI24BucketCollectionViewCell_customBackgroundView;
  type metadata accessor for BucketCollectionViewCellBackgroundView();
  *&v10[v4] = sub_214A61730();
  v8.receiver = v10;
  v8.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  if (v7)
  {
    MEMORY[0x277D82BE0](v7);
    v10 = v7;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v10);
    return v7;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id BucketCollectionViewCell.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_214B2D8F0()
{
  v3 = *(v0 + OBJC_IVAR____TtC6MailUIP33_219AF94A6A2F505842044393C503777738BucketCollectionViewCellBackgroundView_primaryBackgroundView);
  MEMORY[0x277D82BE0](v3);
  v2 = (v0 + OBJC_IVAR____TtC6MailUIP33_219AF94A6A2F505842044393C503777738BucketCollectionViewCellBackgroundView_primaryBackgroundColor);
  swift_beginAccess();
  v4 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  [v3 setBackgroundColor_];
  MEMORY[0x277D82BD8](v3);
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

uint64_t sub_214B2D9B0()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUIP33_219AF94A6A2F505842044393C503777738BucketCollectionViewCellBackgroundView_primaryBackgroundColor);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_214B2DA20()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUIP33_219AF94A6A2F505842044393C503777738BucketCollectionViewCellBackgroundView_primaryBackgroundView);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

char *sub_214B2DAD8(double a1, double a2, double a3, double a4)
{
  *&v9 = a1;
  *(&v9 + 1) = a2;
  *&v10 = a3;
  *(&v10 + 1) = a4;
  ObjectType = swift_getObjectType();
  v37 = v9;
  v38 = v10;
  v39 = v4;
  *&v4[OBJC_IVAR____TtC6MailUIP33_219AF94A6A2F505842044393C503777738BucketCollectionViewCellBackgroundView_primaryBackgroundColor] = 0;
  v7 = OBJC_IVAR____TtC6MailUIP33_219AF94A6A2F505842044393C503777738BucketCollectionViewCellBackgroundView_primaryBackgroundView;
  sub_214A7802C();
  *&v39[v7] = sub_214A61730();
  v36.receiver = v39;
  v36.super_class = ObjectType;
  v35 = objc_msgSendSuper2(&v36, sel_initWithFrame_, v9, v10);
  MEMORY[0x277D82BE0](v35);
  v39 = v35;
  MEMORY[0x277D82BE0](v35);
  v11 = [objc_opt_self() 0x1FBBAE411];
  [v35 0x1FB0BE078];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v35);
  v13 = *&v39[OBJC_IVAR____TtC6MailUIP33_219AF94A6A2F505842044393C503777738BucketCollectionViewCellBackgroundView_primaryBackgroundView];
  MEMORY[0x277D82BE0](v13);
  v12 = [objc_opt_self() 0x1FBBAE411];
  [v13 0x1FB0BE078];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  v14 = *&v39[OBJC_IVAR____TtC6MailUIP33_219AF94A6A2F505842044393C503777738BucketCollectionViewCellBackgroundView_primaryBackgroundView];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x277D82BD8](v14);
  v15 = *&v39[OBJC_IVAR____TtC6MailUIP33_219AF94A6A2F505842044393C503777738BucketCollectionViewCellBackgroundView_primaryBackgroundView];
  [v39 addSubview_];
  MEMORY[0x277D82BD8](v15);
  v33 = objc_opt_self();
  sub_214A6F394();
  sub_214CD03C4();
  v32 = v5;
  v16 = *&v39[OBJC_IVAR____TtC6MailUIP33_219AF94A6A2F505842044393C503777738BucketCollectionViewCellBackgroundView_primaryBackgroundView];
  v18 = [v16 0x1FBBB4950];
  MEMORY[0x277D82BD8](v16);
  v17 = [v35 0x1FBBB4950];
  v19 = [v18 0x1FBB28F65];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  *v32 = v19;
  v20 = *&v39[OBJC_IVAR____TtC6MailUIP33_219AF94A6A2F505842044393C503777738BucketCollectionViewCellBackgroundView_primaryBackgroundView];
  v22 = [v20 0x1FBB5C529];
  MEMORY[0x277D82BD8](v20);
  v21 = [v35 0x1FBB5C529];
  v23 = [v22 0x1FBB28F65];
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  v32[1] = v23;
  v24 = *&v39[OBJC_IVAR____TtC6MailUIP33_219AF94A6A2F505842044393C503777738BucketCollectionViewCellBackgroundView_primaryBackgroundView];
  v26 = [v24 0x1FBB20D25];
  MEMORY[0x277D82BD8](v24);
  v25 = [v35 0x1FBB20D25];
  v27 = [v26 0x1FBB28F65];
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  v32[2] = v27;
  v28 = *&v39[OBJC_IVAR____TtC6MailUIP33_219AF94A6A2F505842044393C503777738BucketCollectionViewCellBackgroundView_primaryBackgroundView];
  v30 = [v28 0x1FBBB59CCLL];
  MEMORY[0x277D82BD8](v28);
  v29 = [v35 0x1FBBB59CCLL];
  v31 = [v30 0x1FBB28F65];
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  v32[3] = v31;
  sub_214A63280();
  v34 = sub_214CCF7D4();

  [v33 activateConstraints_];
  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](v39);
  return v35;
}

id sub_214B2E1F4(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

void sub_214B2E248()
{
  *OBJC_IVAR____TtC6MailUIP33_219AF94A6A2F505842044393C503777738BucketCollectionViewCellBackgroundView_primaryBackgroundColor = 0;
  v0 = OBJC_IVAR____TtC6MailUIP33_219AF94A6A2F505842044393C503777738BucketCollectionViewCellBackgroundView_primaryBackgroundView;
  sub_214A7802C();
  *v0 = sub_214A61730();
  sub_214CCF614();
  sub_214CD0204();
  __break(1u);
}

unint64_t sub_214B2E51C()
{
  v2 = qword_27CA35390;
  if (!qword_27CA35390)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA35390);
    return WitnessTable;
  }

  return v2;
}

double sub_214B2E5E4@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v4 = v3 + OBJC_IVAR____TtC6MailUI26BucketCollectionViewLayout_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v4 + 8);
  swift_endAccess();
  *a2 = Strong;
  a2[1] = v7;
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214B2E698(uint64_t *a1, void *a2)
{
  sub_214B31A8C(a1, v7);
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  v6 = v4 + OBJC_IVAR____TtC6MailUI26BucketCollectionViewLayout_delegate;
  swift_beginAccess();
  *(v6 + 8) = v5;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

uint64_t BucketCollectionViewLayout.delegate.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t BucketCollectionViewLayout.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  v5 = v2 + OBJC_IVAR____TtC6MailUI26BucketCollectionViewLayout_delegate;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void (*BucketCollectionViewLayout.delegate.modify(void *a1))(void **a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v7;
  v7[5] = v1;
  v2 = OBJC_IVAR____TtC6MailUI26BucketCollectionViewLayout_delegate;
  v7[6] = OBJC_IVAR____TtC6MailUI26BucketCollectionViewLayout_delegate;
  v6 = v1 + v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(v6 + 8);
  v7[3] = Strong;
  v7[4] = v4;
  return sub_214B2E918;
}

void sub_214B2E918(void **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v3 = v4[5] + v4[6];
    v2 = v4[4];
    swift_unknownObjectRetain();
    *(v3 + 8) = v2;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_214A759F4();
  }

  else
  {
    *(v4[5] + v4[6] + 8) = v4[4];
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  swift_endAccess();
  free(v4);
}

CGPoint __swiftcall BucketCollectionViewLayout.targetContentOffset(forProposedContentOffset:)(CGPoint forProposedContentOffset)
{
  x = forProposedContentOffset.x;
  y = forProposedContentOffset.y;
  v113 = v1;
  ObjectType = swift_getObjectType();
  v161 = 0;
  v159 = 0.0;
  v160 = 0;
  v158 = 0;
  v152 = 0;
  v149 = 0;
  v144 = 0.0;
  v137 = 0u;
  v138 = 0u;
  v136 = 0.0;
  v130 = 0u;
  v131 = 0u;
  v129 = 0.0;
  v127 = 0u;
  v128 = 0u;
  v126 = 0.0;
  v122 = 0;
  v115 = 0.0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA353A0);
  v104 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v105 = &v43 - v104;
  v108 = sub_214CCD374();
  v109 = *(v108 - 8);
  v110 = v108 - 8;
  v111 = (*(v109 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v113);
  v112 = &v43 - v111;
  v161 = &v43 - v111;
  v159 = v3;
  v160 = v4;
  v158 = v5;
  *&v6 = MEMORY[0x277D82BE0](v5).n128_u64[0];
  v114 = [v113 collectionView];
  if (!v114)
  {
    MEMORY[0x277D82BD8](v113);
LABEL_36:
    MEMORY[0x277D82BE0](v113);
    v157.receiver = v113;
    v157.super_class = ObjectType;
    v155 = x;
    v156 = y;
    objc_msgSendSuper2(&v157, sel_targetContentOffsetForProposedContentOffset_, x, y);
    v153 = v38;
    v154 = v39;
    v44 = v38;
    v45 = v39;
    MEMORY[0x277D82BD8](v113);
    v63 = v44;
    v64 = v45;
    goto LABEL_37;
  }

  v102 = v114;
  v100 = v114;
  v152 = v114;
  MEMORY[0x277D82BD8](v113);
  *&v7 = MEMORY[0x277D82BE0](v100).n128_u64[0];
  v101 = [v100 isScrollEnabled];
  MEMORY[0x277D82BD8](v100);
  if ((v101 & 1) == 0)
  {
    MEMORY[0x277D82BD8](v100);
    goto LABEL_36;
  }

  v99 = &v113[OBJC_IVAR____TtC6MailUI26BucketCollectionViewLayout_delegate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v99 + 1);
  v150 = Strong;
  v151 = v9;
  if (Strong)
  {
    v96 = &v150;
    v98 = v150;
    v97 = v151;
    swift_unknownObjectRetain();
    sub_214A759F4();
    swift_endAccess();
    v10 = swift_getObjectType();
    (*(v97 + 32))(v113, v10);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_214A759F4();
    swift_endAccess();
    (*(v109 + 56))(v105, 1, 1, v108);
  }

  if ((*(v109 + 48))(v105, 1, v108) == 1)
  {
    sub_214A6A480(v105);
    MEMORY[0x277D82BD8](v100);
    goto LABEL_36;
  }

  (*(v109 + 32))(v112, v105, v108);
  v95 = BucketCollectionViewLayout.layoutAttributesForItem(at:)(v112);
  if (!v95)
  {
    (*(v109 + 8))(v112, v108);
    MEMORY[0x277D82BD8](v100);
    goto LABEL_36;
  }

  v94 = v95;
  v92 = v95;
  v149 = v95;
  v93 = &v113[OBJC_IVAR____TtC6MailUI26BucketCollectionViewLayout_delegate];
  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  v12 = *(v93 + 1);
  v147 = v11;
  v148 = v12;
  if (v11)
  {
    v86 = &v147;
    v88 = v147;
    v87 = v148;
    swift_unknownObjectRetain();
    sub_214A759F4();
    swift_endAccess();
    v13 = swift_getObjectType();
    v89 = (*(v87 + 16))(v113, v13);
    swift_unknownObjectRelease();
    v90 = v89;
    v91 = 0;
  }

  else
  {
    sub_214A759F4();
    swift_endAccess();
    v90 = 0.0;
    v91 = 1;
  }

  v145 = v90;
  v146 = v91 & 1;
  if (v91)
  {
    v85 = 0.0;
  }

  else
  {
    v85 = v145;
  }

  v83 = v85;
  v144 = v85;
  v84 = &v113[OBJC_IVAR____TtC6MailUI26BucketCollectionViewLayout_delegate];
  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  v15 = *(v84 + 1);
  v142 = v14;
  v143 = v15;
  if (v14)
  {
    v75 = &v142;
    v77 = v142;
    v76 = v143;
    swift_unknownObjectRetain();
    sub_214A759F4();
    swift_endAccess();
    v16 = swift_getObjectType();
    *&v78 = (*(v76 + 24))(v113, v16);
    *(&v78 + 1) = v17;
    *&v79 = v18;
    *(&v79 + 1) = v19;
    swift_unknownObjectRelease();
    v80 = v78;
    v81 = v79;
    v82 = 0;
  }

  else
  {
    sub_214A759F4();
    swift_endAccess();
    v80 = 0uLL;
    v81 = 0uLL;
    v82 = 1;
  }

  v139 = v80;
  v140 = v81;
  v141 = v82 & 1;
  if (v82)
  {
    v71 = *MEMORY[0x277D75060];
    v72 = *(MEMORY[0x277D75060] + 16);
    v73 = v71;
    v74 = v72;
  }

  else
  {
    v73 = v139;
    v74 = v140;
  }

  v137 = v73;
  v138 = v74;
  v68 = v83 - *(&v73 + 1) - *(&v74 + 1);
  v136 = v68;
  [v92 frame];
  v132 = v20;
  v133 = v21;
  v134 = v22;
  v135 = v23;
  v69 = v20;
  v65 = v21;
  v66 = v22;
  v67 = v23;
  *&v130 = v20;
  *(&v130 + 1) = v21;
  *&v131 = v22;
  *(&v131 + 1) = v23;
  v129 = x;
  v70 = sub_214B2F8EC(v20, v21, v22, v23);
  v127 = *&x;
  *&v128 = v68;
  *(&v128 + 1) = v70;
  if (sub_214B2F92C(v69, v65, v66, v67, x, 0.0, v68, v70))
  {
    v24 = MEMORY[0x277D82BD8](v92);
    (*(v109 + 8))(v112, v108, v24);
    MEMORY[0x277D82BD8](v100);
    v63 = x;
    v64 = y;
  }

  else
  {
    v126 = x;
    v62 = sub_214B2F9BC(v69, v65, v66, v67);
    v25 = sub_214B2F9BC(x, 0.0, v68, v70);
    if (v62 >= v25)
    {
      v60 = sub_214B2F9FC(v69, v65, v66, v67);
      v26 = sub_214B2F9FC(x, 0.0, v68, v70);
      if (v26 >= v60)
      {
        v59 = x;
      }

      else
      {
        v27 = sub_214B2F9FC(v69, v65, v66, v67);
        v126 = v27 - v68;
        v59 = v27 - v68;
      }

      v61 = v59;
    }

    else
    {
      v126 = sub_214B2F9BC(v69, v65, v66, v67);
      v61 = v126;
    }

    v54 = v61;
    v52 = &v124;
    v53 = 0;
    v124 = 0;
    *&v28 = MEMORY[0x277D82BE0](v100).n128_u64[0];
    [v100 contentSize];
    v123[5] = v29;
    v123[6] = v30;
    v50 = v29;
    MEMORY[0x277D82BD8](v100);
    *&v31 = MEMORY[0x277D82BE0](v100).n128_u64[0];
    [v100 bounds];
    v123[1] = v32;
    v123[2] = v33;
    v123[3] = v34;
    v123[4] = v35;
    v46 = v32;
    v47 = v33;
    v48 = v34;
    v49 = v35;
    MEMORY[0x277D82BD8](v100);
    v36 = sub_214B2FA3C(v46, v47, v48, v49);
    v51 = v123;
    v123[0] = v50 - v36;
    v57 = sub_214A75FAC();
    v56 = MEMORY[0x277D85048];
    sub_214CD0444();
    v55 = v125;
    v122 = v125;
    v119 = v53;
    v118 = v54;
    sub_214CD0444();
    v117 = v120;
    v116 = v55;
    sub_214CD0464();
    v58 = v121;
    v115 = v121;
    v37 = MEMORY[0x277D82BD8](v92);
    (*(v109 + 8))(v112, v108, v37);
    MEMORY[0x277D82BD8](v100);
    v63 = v58;
    v64 = y;
  }

LABEL_37:
  v40 = v63;
  v41 = v64;
  result.y = v41;
  result.x = v40;
  return result;
}

void *BucketCollectionViewLayout.layoutAttributesForItem(at:)(uint64_t a1)
{
  v21 = a1;
  v22 = v1;
  ObjectType = swift_getObjectType();
  v36 = 0;
  v35 = 0;
  v31 = 0;
  v25 = sub_214CCD374();
  v23 = *(v25 - 8);
  v24 = v25 - 8;
  v20 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v2 = &v10 - v20;
  v26 = &v10 - v20;
  v36 = v3;
  v35 = v4;
  v5 = MEMORY[0x277D82BE0](v4);
  (*(v23 + 16))(v2, v21, v25, v5);
  v6 = sub_214CCD304();
  v7 = v22;
  v28 = v6;
  (*(v23 + 8))(v26, v25);
  v32.receiver = v7;
  v32.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v32, sel_layoutAttributesForItemAtIndexPath_, v28);
  *&v8 = MEMORY[0x277D82BD8](v28).n128_u64[0];
  if (v29)
  {
    v19 = v29;
    v17 = v29;
    v18 = [v29 copy];
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v22);
    sub_214CD0054();
    swift_unknownObjectRelease();
  }

  else
  {
    MEMORY[0x277D82BD8](v22);
    memset(v33, 0, sizeof(v33));
    v34 = 0;
  }

  if (v34)
  {
    sub_214A77A7C();
    if (swift_dynamicCast())
    {
      v16 = v30;
    }

    else
    {
      v16 = 0;
    }

    v15 = v16;
  }

  else
  {
    sub_214A7D24C(v33);
    v15 = 0;
  }

  v14 = v15;
  if (!v15)
  {
    return 0;
  }

  v13 = v14;
  v11 = v14;
  v31 = v14;
  sub_214B2FB0C(v14);
  return v11;
}

BOOL sub_214B2F92C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v13.origin.x = a5;
  v13.origin.y = a6;
  v13.size.width = a7;
  v13.size.height = a8;
  v14.origin.x = a1;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  return CGRectContainsRect(v13, v14);
}

id sub_214B2FB0C(void *a1)
{
  v15 = a1;
  v8 = v1;
  swift_getObjectType();
  v18 = 0;
  v17 = 0;
  v12 = sub_214CCD374();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v9 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v15);
  v13 = &v7 - v9;
  v18 = v3;
  v17 = v4;
  v14 = [v3 indexPath];
  sub_214CCD324();
  v16 = sub_214A77C8C();
  (*(v10 + 8))(v13, v12);
  *&v5 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  return [v15 setZIndex_];
}

void *BucketCollectionViewLayout.initialLayoutAttributesForAppearingItem(at:)(uint64_t a1)
{
  v34 = a1;
  v31.super_class = swift_getObjectType();
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v44 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA353A0);
  v32 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v33 = &v14 - v32;
  v35 = sub_214CCD374();
  v36 = *(v35 - 8);
  v37 = v35 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34);
  v39 = &v14 - v38;
  v40 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v41 = &v14 - v40;
  v52 = &v14 - v40;
  v51 = v5;
  v50 = v1;
  v42 = v1 + OBJC_IVAR____TtC6MailUI26BucketCollectionViewLayout_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v42 + 8);
  v48 = Strong;
  v49 = v7;
  if (Strong)
  {
    v28 = &v48;
    v30 = v48;
    v29 = v49;
    swift_unknownObjectRetain();
    sub_214A759F4();
    swift_endAccess();
    ObjectType = swift_getObjectType();
    (*(v29 + 8))(v31.receiver, ObjectType);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_214A759F4();
    swift_endAccess();
    (*(v36 + 56))(v33, 1, 1, v35);
  }

  if ((*(v36 + 48))(v33, 1, v35) == 1)
  {
    sub_214A6A480(v33);
    return 0;
  }

  (*(v36 + 32))(v41, v33, v35);
  if ((sub_214CCD314() & 1) == 0)
  {
    (*(v36 + 8))(v41, v35);
    return 0;
  }

  v9 = v39;
  v10 = MEMORY[0x277D82BE0](v31.receiver);
  (*(v36 + 16))(v9, v34, v35, v10);
  v26 = sub_214CCD304();
  v24 = *(v36 + 8);
  v25 = v36 + 8;
  v24(v39, v35);
  v45 = v31;
  v27 = objc_msgSendSuper2(&v45, sel_initialLayoutAttributesForAppearingItemAtIndexPath_, v26);
  *&v11 = MEMORY[0x277D82BD8](v26).n128_u64[0];
  if (v27)
  {
    v23 = v27;
    v21 = v27;
    v22 = [v27 copy];
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v31.receiver);
    sub_214CD0054();
    swift_unknownObjectRelease();
  }

  else
  {
    MEMORY[0x277D82BD8](v31.receiver);
    memset(v46, 0, sizeof(v46));
    v47 = 0;
  }

  if (v47)
  {
    sub_214A77A7C();
    if (swift_dynamicCast())
    {
      v20 = v43;
    }

    else
    {
      v20 = 0;
    }

    v19 = v20;
  }

  else
  {
    sub_214A7D24C(v46);
    v19 = 0;
  }

  v18 = v19;
  if (!v19)
  {
    v24(v41, v35);
    return 0;
  }

  v17 = v18;
  v14 = v18;
  v44 = v18;
  v15 = sub_214B303A8(v18);
  v12 = MEMORY[0x277D82BD8](v14);
  (v24)(v41, v35, v12);
  return v15;
}

void *sub_214B303A8(void *a1)
{
  v19 = v1 + OBJC_IVAR____TtC6MailUI26BucketCollectionViewLayout_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v22 = *(v19 + 8);
  if (Strong)
  {
    swift_unknownObjectRetain();
    sub_214A759F4();
    swift_endAccess();
    ObjectType = swift_getObjectType();
    v14 = (*(v22 + 16))(v18, ObjectType);
    swift_unknownObjectRelease();
    v15 = v14;
    v16 = 0;
  }

  else
  {
    sub_214A759F4();
    swift_endAccess();
    v15 = 0.0;
    v16 = 1;
  }

  if (v16 & 1) != 0 || (v13 = v18 + OBJC_IVAR____TtC6MailUI26BucketCollectionViewLayout_delegate, swift_beginAccess(), v3 = swift_unknownObjectWeakLoadStrong(), (v20 = *(v13 + 8), !v3) ? (sub_214A759F4(), swift_endAccess(), v11 = 0.0, v12 = 1) : (swift_unknownObjectRetain(), sub_214A759F4(), swift_endAccess(), v4 = swift_getObjectType(), (*(v20 + 24))(v18, v4), v10 = v5, swift_unknownObjectRelease(), v11 = v10, v12 = 0), (v12))
  {
    MEMORY[0x277D82BE0](a1);
    return a1;
  }

  else
  {
    [a1 frame];
    [a1 setFrame_];
    MEMORY[0x277D82BE0](a1);
    return a1;
  }
}

void *BucketCollectionViewLayout.finalLayoutAttributesForDisappearingItem(at:)(uint64_t a1)
{
  v21 = a1;
  v22 = v1;
  ObjectType = swift_getObjectType();
  v36 = 0;
  v35 = 0;
  v31 = 0;
  v25 = sub_214CCD374();
  v23 = *(v25 - 8);
  v24 = v25 - 8;
  v20 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v2 = &v10 - v20;
  v26 = &v10 - v20;
  v36 = v3;
  v35 = v4;
  v5 = MEMORY[0x277D82BE0](v4);
  (*(v23 + 16))(v2, v21, v25, v5);
  v6 = sub_214CCD304();
  v7 = v22;
  v28 = v6;
  (*(v23 + 8))(v26, v25);
  v32.receiver = v7;
  v32.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v32, sel_finalLayoutAttributesForDisappearingItemAtIndexPath_, v28);
  *&v8 = MEMORY[0x277D82BD8](v28).n128_u64[0];
  if (v29)
  {
    v19 = v29;
    v17 = v29;
    v18 = [v29 copy];
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v22);
    sub_214CD0054();
    swift_unknownObjectRelease();
  }

  else
  {
    MEMORY[0x277D82BD8](v22);
    memset(v33, 0, sizeof(v33));
    v34 = 0;
  }

  if (v34)
  {
    sub_214A77A7C();
    if (swift_dynamicCast())
    {
      v16 = v30;
    }

    else
    {
      v16 = 0;
    }

    v15 = v16;
  }

  else
  {
    sub_214A7D24C(v33);
    v15 = 0;
  }

  v14 = v15;
  if (!v15)
  {
    return 0;
  }

  v13 = v14;
  v10 = v14;
  v31 = v14;
  v11 = sub_214B303A8(v14);
  MEMORY[0x277D82BD8](v10);
  return v11;
}

id BucketCollectionViewLayout.__allocating_init(section:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithSection_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id BucketCollectionViewLayout.init(section:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v7 = a1;
  v8 = v1;
  *&v1[OBJC_IVAR____TtC6MailUI26BucketCollectionViewLayout_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = v8;
  v6.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v6, sel_initWithSection_, a1);
  MEMORY[0x277D82BE0](v5);
  v8 = v5;
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v8);
  return v5;
}

id BucketCollectionViewLayout.__allocating_init(section:configuration:)(uint64_t a1, uint64_t a2)
{
  v6 = [objc_allocWithZone(v2) initWithSection:a1 configuration:a2];
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v6;
}

id BucketCollectionViewLayout.init(section:configuration:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v10 = a1;
  v9 = a2;
  v11 = v2;
  *&v2[OBJC_IVAR____TtC6MailUI26BucketCollectionViewLayout_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = v11;
  v8.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v8, sel_initWithSection_configuration_, a1, a2);
  MEMORY[0x277D82BE0](v7);
  v11 = v7;
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v11);
  return v7;
}

id BucketCollectionViewLayout.__allocating_init(sectionProvider:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v16 = a1;
  v17 = a2;
  aBlock = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = 0;
  v14 = sub_214A7590C;
  v15 = &block_descriptor_6;
  v9 = _Block_copy(&aBlock);
  v10 = [v7 initWithSectionProvider_configuration_];
  MEMORY[0x277D82BD8](a3);
  _Block_release(v9);

  return v10;
}

id BucketCollectionViewLayout.init(sectionProvider:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6.super_class = swift_getObjectType();
  v20 = a1;
  v21 = a2;
  v19 = a3;
  v22 = v3;
  *&v3[OBJC_IVAR____TtC6MailUI26BucketCollectionViewLayout_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = v22;

  v17 = a1;
  v18 = a2;
  aBlock = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = 0;
  v15 = sub_214A7590C;
  v16 = &block_descriptor_9_0;
  v7 = _Block_copy(&aBlock);

  v11 = v6;
  v10 = objc_msgSendSuper2(&v11, sel_initWithSectionProvider_configuration_, v7, a3);
  _Block_release(v7);
  MEMORY[0x277D82BE0](v10);
  v22 = v10;
  MEMORY[0x277D82BD8](a3);

  MEMORY[0x277D82BD8](v22);
  return v10;
}

uint64_t block_copy_helper_7_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

id BucketCollectionViewLayout.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id BucketCollectionViewLayout.init(coder:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v8 = a1;
  v9 = v1;
  *&v1[OBJC_IVAR____TtC6MailUI26BucketCollectionViewLayout_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7.receiver = v9;
  v7.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);
  if (v6)
  {
    MEMORY[0x277D82BE0](v6);
    v9 = v6;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v9);
    return v6;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id BucketCollectionViewLayout.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_214B315E8()
{
  v2 = qword_27CA353C8;
  if (!qword_27CA353C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA353C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for BucketCollectionViewLayout.Configuration(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 3) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 252;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 4;
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

_BYTE *storeEnumTagSinglePayload for BucketCollectionViewLayout.Configuration(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFC)
  {
    v5 = ((a3 + 3) >> 8) + 1;
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

  if (a2 > 0xFC)
  {
    v4 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_214B31A8C(uint64_t *a1, void *a2)
{
  v6 = *a1;
  swift_unknownObjectRetain();
  result = a2;
  v3 = a1[1];
  *a2 = v6;
  a2[1] = v3;
  return result;
}

uint64_t sub_214B31D00()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t sub_214B31D34(uint64_t a1)
{

  *(v1 + 32) = a1;
}

id static BucketCollectionViewLayoutFactory.layoutSection(environment:layoutMargins:items:isStacked:isAllMailSelected:prefersEqualItemWidth:sizeProvider:)(double *a1, void *a2, uint64_t a3, char a4, char a5, char a6, void (*a7)(void *__return_ptr, void), uint64_t a8, double a9, double a10, double a11, double a12)
{
  *&v39 = a9;
  *(&v39 + 1) = a10;
  *&v40 = a11;
  *(&v40 + 1) = a12;
  v88 = 0u;
  v89 = 0u;
  v85 = 0.0;
  v84 = 0.0;
  v77 = 0.0;
  v67 = 0;
  memset(__b, 0, sizeof(__b));
  v53 = 0;
  v52 = 0;
  memset(v47, 0, 0x21uLL);
  v98 = a2;
  v96 = v39;
  v97 = v40;
  v95 = a3;
  v94 = a4 & 1;
  v93 = a5 & 1;
  v92 = a6 & 1;
  v90 = a7;
  v91 = a8;
  type metadata accessor for BucketItem();
  if (sub_214CCF854() <= 1)
  {
    *a1 = 0.0;
    a1[1] = 0.0;
    a1[2] = 0.0;
    a1[3] = 0.0;
    a1[4] = 0.0;
    return 0;
  }

  *&v88 = 0;
  *(&v88 + 1) = *(&v39 + 1);
  *&v89 = 0;
  *(&v89 + 1) = *(&v40 + 1);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v33 = [a2 container];
  swift_unknownObjectRelease();
  swift_getObjectType();
  [v33 effectiveContentSize];
  v86 = v12;
  v87 = v13;
  v34 = v12;
  swift_unknownObjectRelease();
  v85 = v34;
  v35 = v34 - *(&v39 + 1) - *(&v40 + 1);
  v84 = v35;
  v82 = 0;
  v80 = 0;
  v79 = *(&v40 + 1) - 8.0;
  sub_214A75FAC();
  sub_214CD0444();
  v78 = 14.0 - v81;
  sub_214CD0444();
  v36 = v83;
  v77 = v83;

  if (a4)
  {
    v32 = a3;
  }

  else
  {
    v72 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35520);
    sub_214A76024();
    sub_214CCF454();
    v68 = v73;
    v69 = v74;
    v70 = v75;
    v71 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35440);
    sub_214A760AC();
    v32 = sub_214CCF8F4();
  }

  v67 = v32;
  sub_214B324A4(v32, a4 & 1, a6 & 1, a7, a8, __b, v35 - v36);
  v65 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35520);
  sub_214A76024();
  sub_214CCF434();
  v31 = v64;
  if (!v64)
  {
    goto LABEL_20;
  }

  v52 = v64;
  v51 = LOBYTE(__b[0]);
  v50 = 0;
  if (static BucketCollectionViewLayout.Configuration.== infix(_:_:)(&v51, &v50))
  {
    v30 = LOBYTE(__b[3]) ^ 1;
  }

  else
  {
    v30 = 0;
  }

  if (v30)
  {
    v29 = a4 ^ 1;
  }

  else
  {
    v29 = 0;
  }

  if (v29)
  {
    v28 = a5 ^ 1;
  }

  else
  {
    v28 = 0;
  }

  if ((v28 & 1) == 0)
  {

LABEL_20:
    sub_214B324A4(a3, a4 & 1, a6 & 1, a7, a8, v59, v35);
    LOBYTE(__b[0]) = v59[0];
    __b[1] = v60;
    __b[2] = v61;
    LOBYTE(__b[3]) = v62;
    __b[4] = v63;

    goto LABEL_21;
  }

  a7(v48, v31);
  v27 = *v48;
  v47[0] = v48[0];
  v47[1] = v48[1];
  v47[2] = v48[2];
  v47[3] = v48[3];
  LOBYTE(v47[4]) = v49;
  LOBYTE(__b[0]) = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35448);
  sub_214CCF3E4();
  __b[1] = __b[1] + v27 + 8.0;

LABEL_21:
  v15 = LOBYTE(__b[0]);
  v16 = __b[1];
  v17 = __b[2];
  v18 = LOBYTE(__b[3]);
  v19 = __b[4];

  v54[0] = v15;
  v55 = v16;
  v56 = v17;
  v57 = v18;
  v58 = v19;
  v25 = sub_214B33080(v54, a3, 0.0, *(&v39 + 1), 0.0, *(&v40 + 1));
  sub_214A7751C();
  v53 = v25;
  v21 = LOBYTE(__b[0]);
  v22 = __b[1];
  v23 = __b[2];
  v20 = LOBYTE(__b[3]);
  v24 = __b[4];

  *a1 = v21;
  a1[1] = v22;
  a1[2] = v23;
  *(a1 + 3) = v20 & 1;
  a1[4] = v24;
  sub_214A7751C();

  return v25;
}

uint64_t sub_214B324A4@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>, double a7@<D0>)
{
  v104 = a5;
  v103 = a4;
  v94 = a7;
  v95 = a1;
  v96 = a6;
  v97 = a3;
  v98 = a2;
  v99 = 0;
  v157 = 0.0;
  v153 = 0.0;
  v152 = 0;
  v151 = 0.0;
  v150 = 0.0;
  v149 = 0;
  v148 = 0.0;
  v147 = 0.0;
  v143 = 0;
  v136 = 0;
  v135 = 0u;
  v134 = 0u;
  v120 = 0;
  v116 = 0;
  v184 = a1;
  v183 = a7;
  v182 = a2;
  v181 = a3;
  v179 = a4;
  v180 = a5;
  v177[4] = a1;
  v101 = type metadata accessor for BucketItem();
  v100 = v101;
  v102 = sub_214A6A018();
  v177[3] = sub_214CCF2C4();
  v110 = v103;
  v111 = v104;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35520);
  v105 = v106;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35450);
  v108 = sub_214A6A758();
  sub_214CCF734();
  v109 = 0;
  v87 = v178;
  v86 = v178;
  v177[1] = v178;
  v177[0] = sub_214CCF854();
  v7 = sub_214A63208();
  v88 = sub_214A76BB8(v177, MEMORY[0x277D83B88], v7);
  v176 = v88;
  v174 = sub_214CCF364();
  v90 = 0;
  v173 = 0;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35458);
  v89 = v91;
  v92 = sub_214A76E40();
  sub_214CCF734();
  v93 = 0;
  sub_214A62278();
  v84 = v175;
  v172 = v175;
  v170 = sub_214CCF364();
  v169 = 0;
  sub_214CCF734();
  v85 = 0;
  sub_214A62278();
  v81 = v171;
  v168 = v171;
  v82 = v171 * v88 + (v88 + -1.0) * 8.0;
  v167 = v82;
  v83 = v94 - v82;
  v166 = v94 - v82;
  if (v94 - v82 < 0.0)
  {
    v77 = (v97 & 1) != 0 && v82 / v94 <= 1.3;
    v78 = v82;
    v79 = v77;
    v80 = v82;
  }

  else
  {
    v79 = 1;
    v80 = v82;
  }

  v76 = v80;
  if (v79)
  {
    v8 = v85;
    v70 = 0;
    v122 = 0;
    v121 = v83 / v88;
    v69 = sub_214A75FAC();
    sub_214CD0444();
    v72 = v123;
    v120 = v123;
    v118 = v95;
    v71 = type metadata accessor for CGSize();
    v117 = sub_214CCF2C4();
    v73 = v26;
    v9 = MEMORY[0x28223BE20](v26);
    v74 = v21;
    v22 = v10;
    v23 = v11;
    v24 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35448);
    sub_214CCF734();
    v75 = v8;
    v67 = v119;
    v116 = v119;
    v115 = 2;
    v113 = v94;
    v112 = v76;
    sub_214CD0444();
    sub_214A770E8(&v115, v83 < 0.0, v67, v96, v114, v84);

    return 0;
  }

  else
  {
    v160 = sub_214CCF364();
    sub_214CCF724();
    *&v66[8] = HIDWORD(v85);
    sub_214A62278();
    v62 = v161;
    v63 = v162;
    v64 = v163;
    v65 = v164;
    *v66 = v165;
    if (v165 == 2)
    {
      v59 = 0.0;
      v60 = 1;
    }

    else
    {
      v61 = v64;
      v59 = v64;
      v60 = 0;
    }

    v158 = v59;
    v159 = v60 & 1;
    if (v60)
    {
      v58 = 0.0;
    }

    else
    {
      v58 = v158;
    }

    v56 = v58;
    v157 = v58;
    v155 = sub_214CCF364();
    v154 = 0;
    sub_214CCF734();
    v57 = *&v66[4];
    sub_214A62278();
    v51 = v156;
    v153 = v156;
    v52 = v58 + (v88 + -1.0) * v156 + (v88 + -1.0) * 8.0;
    v167 = v52;
    v166 = v94 - v52;
    v53 = v94 - v52 < 0.0;
    v152 = v94 - v52 < 0.0;
    v54 = v58 + v94 - v52;
    v151 = v54;
    v55 = v58 * 1.4;
    v150 = v58 * 1.4;
    v50 = v94 - v52 >= 0.0 && v55 < v54;
    v49 = v50;
    v149 = v50;
    if (v53)
    {
      v48 = v56;
    }

    else
    {
      if (v49)
      {
        v47 = v55;
      }

      else
      {
        v47 = v54;
      }

      v48 = v47;
    }

    v46 = v48;
    v148 = v48;
    if (v53)
    {
      v45 = v51;
    }

    else
    {
      if (v49)
      {
        v44 = v51 + (v54 - v55) / (v88 + -1.0);
      }

      else
      {
        v44 = v51;
      }

      v45 = v44;
    }

    v147 = v45;
    if (v46 < v45)
    {
      v148 = v94 / v88;
      v147 = v94 / v88;
    }

    v12 = v57;
    v145 = v95;
    v40 = type metadata accessor for CGSize();
    v144 = sub_214CCF2C4();

    v41 = v26;
    v13 = MEMORY[0x28223BE20](v26);
    v42 = v21;
    v22 = v14;
    v23 = &v148;
    v24 = v13;
    v25 = &v147;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35448);
    sub_214CCF734();
    v43 = v12;

    v39 = v146;
    v143 = v146;
    v137 = 0;
    if (v53)
    {
      v38 = v52;
    }

    else
    {
      v38 = v94;
    }

    v32 = v38;

    sub_214A770E8(&v137, v53, v39, v138, v32, v84);
    v33 = v138[0];
    v34 = v139;
    v35 = v140;
    v36 = v141;
    v37 = v142;
    LOBYTE(v134) = v138[0];
    *(&v134 + 1) = v139;
    *&v135 = v140;
    BYTE8(v135) = v141;
    v136 = v142;
    if (v98)
    {
      v124[0] = v33;
      v125 = v34;
      v126 = v35;
      v127 = v36 & 1;
      v128 = v37;
      sub_214B343A4(v124, v95, v129, v94);
      v27 = v129[0];
      v28 = v130;
      v29 = v131;
      v30 = v132;
      v31 = v133;
    }

    else
    {

      v27 = v33;
      v28 = v34;
      v29 = v35;
      v30 = v36;
      v31 = v37;
    }

    v15 = v96;
    v16 = v28;
    v17 = v29;
    v18 = v30;
    v19 = v31;
    *v96 = v27;
    *(v15 + 1) = v16;
    *(v15 + 2) = v17;
    v15[24] = v18 & 1;
    *(v15 + 4) = v19;

    return v43;
  }
}

id sub_214B33080(const void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  *&v16 = a3;
  *(&v16 + 1) = a4;
  *&v17 = a5;
  *(&v17 + 1) = a6;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  memcpy(__dst, a1, sizeof(__dst));
  v35 = a2;
  v33 = v16;
  v34 = v17;
  v32 = a2;
  sub_214A77224(__dst, v31);

  v23 = __dst;
  v24 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35520);
  v20 = sub_214A7727C();
  v6 = sub_214A6B3B4();
  v14 = sub_214A6E4F4(sub_214B347E8, v22, v19, v20, MEMORY[0x277D84A98], v6, MEMORY[0x277D84AC0], v21);
  sub_214A7751C();

  v30 = v14;
  sub_214A772E0();
  v9 = [objc_opt_self() 0x1FAD27E49];
  v7 = [objc_opt_self() 0x1FAD27E49];
  v13 = sub_214A77344(v9, v7);
  v29 = v13;
  v10 = objc_opt_self();

  v11 = sub_214CCF7D4();

  v12 = [v10 horizontalGroupWithLayoutSize:v13 subitems:v11];
  MEMORY[0x277D82BD8](v11);
  v28 = v12;
  sub_214A77548();
  MEMORY[0x277D82BE0](v12);
  v15 = sub_214A775AC(v12);
  v27 = v15;
  [v15 setContentInsetsReference_];
  v25 = v16;
  v26 = v17;
  [v15 setContentInsets_];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);

  return v15;
}

double sub_214B333AC@<D0>(uint64_t *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v61 = 0.0;
  v62 = 0.0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v68 = *a1;
  v24 = v68;
  v67 = a2;
  v66 = a3;

  v63 = v68;
  type metadata accessor for BucketItem();
  type metadata accessor for CGSize();
  sub_214A6A018();
  sub_214CCF3B4();

  v25 = v64;
  v26 = v65;
  v61 = v64;
  v62 = v65;

  v28 = [objc_opt_self() 0x1FAD27E49];
  v60 = v28;
  v27 = [objc_opt_self() 0x1FAD27E49];
  v59 = v27;
  sub_214A772E0();
  MEMORY[0x277D82BE0](v28);
  MEMORY[0x277D82BE0](v27);
  v29 = sub_214A77344(v28, v27);
  v58 = v29;
  sub_214A7727C();
  MEMORY[0x277D82BE0](v29);
  v31 = sub_214A773B8(v29);
  v57 = v31;
  v69 = *a2;
  v56 = v69;
  v55 = 3;
  if (static BucketCollectionViewLayout.Configuration.== infix(_:_:)(&v56, &v55))
  {

    v48 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35520);
    sub_214A6B3B4();
    sub_214CCFA74();

    v45 = v24;
    v46 = v47;
    if (v24)
    {
      sub_214A75F48(&v45, v32);
      if (v46)
      {
        v20 = static BucketItem.== infix(_:_:)(v32[0], v46);

        sub_214A75F80();
        v21 = v20;
        goto LABEL_8;
      }
    }

    else if (!v46)
    {
      sub_214A75F80();
      v21 = 1;
LABEL_8:

      if (v21)
      {
        v16 = 0;
        goto LABEL_21;
      }

      v37 = a3;
      sub_214A76024();
      sub_214CCF434();
      v19 = v36;

      v34 = v24;
      v35 = v19;
      if (v24)
      {
        sub_214A75F48(&v34, &v33);
        if (v35)
        {
          v32[1] = v35;
          v17 = static BucketItem.== infix(_:_:)(v33, v35);

          sub_214A75F80();
          v18 = v17;
LABEL_18:

          v16 = v18 ^ 1;
LABEL_21:

          if (v16)
          {
            sub_214A77414();
            v4 = [objc_opt_self() fixedSpacing_];
            v15 = sub_214A77478(v4, 0, 0, 0);
            [v31 setEdgeSpacing_];
            MEMORY[0x277D82BD8](v15);
            goto LABEL_45;
          }

          v44 = a3;
          sub_214A76024();
          sub_214CCF434();
          v14 = v43;

          v41 = v24;
          v42 = v14;
          if (v24)
          {
            sub_214A75F48(&v41, &v40);
            if (v42)
            {
              v39 = v40;
              v38 = v42;
              v12 = static BucketItem.== infix(_:_:)(v40, v42);

              sub_214A75F80();
              v13 = v12;
              goto LABEL_29;
            }
          }

          else if (!v42)
          {
            sub_214A75F80();
            v13 = 1;
LABEL_29:

            if (v13)
            {
              sub_214A77414();
              v5 = [objc_opt_self() fixedSpacing_];
              v11 = sub_214A77478(v5, 0, 0, 0);
              [v31 setEdgeSpacing_];
              MEMORY[0x277D82BD8](v11);
            }

            goto LABEL_45;
          }

          sub_214A75F10();
          v13 = 0;
          goto LABEL_29;
        }
      }

      else if (!v35)
      {
        sub_214A75F80();
        v18 = 1;
        goto LABEL_18;
      }

      sub_214A75F10();
      v18 = 0;
      goto LABEL_18;
    }

    sub_214A75F10();
    v21 = 0;
    goto LABEL_8;
  }

  v54 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35520);
  sub_214A76024();
  sub_214CCF434();

  v51 = v24;
  v52 = v53;
  if (v24)
  {
    sub_214A75F48(&v51, &v50);
    if (v52)
    {
      v49 = v52;
      v9 = static BucketItem.== infix(_:_:)(v50, v52);

      sub_214A75F80();
      v10 = v9;
      goto LABEL_40;
    }

    goto LABEL_42;
  }

  if (v52)
  {
LABEL_42:
    sub_214A75F10();
    v10 = 0;
    goto LABEL_40;
  }

  sub_214A75F80();
  v10 = 1;
LABEL_40:

  if ((v10 & 1) == 0)
  {
    sub_214A77414();
    v6 = [objc_opt_self() fixedSpacing_];
    v8 = sub_214A77478(0, 0, v6, 0);
    [v31 setEdgeSpacing_];
    MEMORY[0x277D82BD8](v8);
  }

LABEL_45:
  MEMORY[0x277D82BE0](v31);
  *a4 = v31;
  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v27);
  *&result = MEMORY[0x277D82BD8](v28).n128_u64[0];
  return result;
}

uint64_t sub_214B33CE0(uint64_t a1, uint64_t *a2, void (*a3)(void *__return_ptr, void), uint64_t a4)
{
  v9 = 0;
  v7 = 0;
  v8 = 0;
  v10 = a1;
  v9 = *a2;
  v7 = a3;
  v8 = a4;

  a3(&v6, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35450);
  return sub_214CCF3E4();
}

double sub_214B33DF0(double *a1)
{
  sub_214A75FAC();
  sub_214CD0444();
  result = v3;
  *a1 = v3;
  return result;
}

double sub_214B33E78(double *a1)
{
  sub_214A75FAC();
  sub_214CD0444();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_214B33F00()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35448);
  return sub_214CCF3E4();
}

double sub_214B33FF4(double *a1, uint64_t a2)
{
  result = *a2;
  if ((*(a2 + 32) & 1) == 0)
  {
    sub_214CD0444();
    result = v4;
    *a1 = v4;
  }

  return result;
}

uint64_t sub_214B34088(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0.0;
  v16 = 0;
  memset(__b, 0, 0x21uLL);
  v21 = a1;
  v20 = *a2;
  v12 = v20;
  v19 = a3;
  v18 = a4;
  v17 = a6;
  v16 = a5;

  __b[5] = v12;
  type metadata accessor for BucketItem();
  sub_214A6A018();
  sub_214CCF3D4();

  if (v15 == 2)
  {
    sub_214CCF614();
    result = sub_214CD0204();
    __break(1u);
  }

  else
  {
    __b[0] = __b[6];
    __b[1] = __b[7];
    __b[2] = __b[8];
    __b[3] = __b[9];
    LOBYTE(__b[4]) = v15 & 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35448);
    return sub_214CCF3E4();
  }

  return result;
}

char *sub_214B343A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>)
{
  memset(__b, 0, sizeof(__b));
  v29 = 0;
  v28 = 0.0;
  v26 = 0.0;
  v25 = 0.0;
  v24 = 0;
  memset(__src, 0, sizeof(__src));
  v18 = *(a1 + 8);
  v19 = *(a1 + 16);
  v4 = *(a1 + 24);
  v20 = *(a1 + 32);
  LOBYTE(__b[0]) = *a1;
  __b[1] = v18;
  __b[2] = v19;
  LOBYTE(__b[3]) = v4;
  __b[4] = v20;
  v29 = a2;
  v28 = a4;

  type metadata accessor for BucketItem();
  type metadata accessor for CGSize();
  sub_214A6A018();
  v21 = sub_214CCF364();

  v27[2] = v21;
  v27[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35460);
  sub_214B34848();
  sub_214CCF734();
  sub_214A62278();
  v13 = *&v27[3];
  result = sub_214CCF854();
  if (__OFSUB__(result, 2))
  {
    __break(1u);
  }

  else
  {
    v27[0] = result - 2;
    v7 = sub_214A63208();
    v11 = v13 - sub_214A76BB8(v27, MEMORY[0x277D83B88], v7) * 12.0 + 8.0;
    v26 = v11;
    v12 = a4 - v11;
    v25 = a4 - v11;
    v24 = a4 - v11 < 0.0;

    __src[1] = v18;
    __src[2] = v19;
    __src[4] = v20;
    LOBYTE(__src[0]) = 3;
    LOBYTE(__src[3]) = a4 - v11 < 0.0;
    if (a4 - v11 >= 0.0)
    {
      v10 = a4;
    }

    else
    {
      v10 = v11;
    }

    *&__src[1] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35520);
    sub_214A76024();
    sub_214CCF434();
    if (v22)
    {
      if (v12 <= 0.0)
      {
      }

      else
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35448);
        v9 = sub_214CCF3C4();
        if ((*(v8 + 16) & 1) == 0)
        {
          *v8 = *v8 + v12;
        }

        v9();
      }
    }

    return memcpy(a3, __src, 0x28uLL);
  }

  return result;
}

double sub_214B34818(double *a1, double *a2)
{
  result = *a1 + *a2;
  *a1 = result;
  return result;
}

unint64_t sub_214B34848()
{
  v2 = qword_280C7CFE8;
  if (!qword_280C7CFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA35460);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CFE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B34900(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 32)))
      {
        v3 = *(a1 + 32);
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

uint64_t sub_214B34A18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_214B34C0C(uint64_t *a1)
{
  v2 = *a1;

  sub_214B34C64(v2);
}

uint64_t sub_214B34C64(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  return swift_endAccess();
}

uint64_t sub_214B34D68@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_214A7658C();
  a1[1] = v1;
}

uint64_t sub_214B34DC8(void *a1)
{
  sub_214A61AD0(a1, v4);
  v2 = v4[0];
  v3 = v4[1];

  sub_214B34E3C(v2, v3);
}

uint64_t sub_214B34E3C(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  swift_endAccess();
}

uint64_t sub_214B34F34@<X0>(_BYTE *a1@<X8>)
{

  *a1 = sub_214A76A2C() & 1;
}

uint64_t sub_214B34F94(char *a1)
{
  v2 = *a1;

  sub_214B34FF0(v2 & 1);
}

uint64_t sub_214B34FF0(char a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
  return swift_endAccess();
}

uint64_t sub_214B350BC@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_214A76A88();
}

uint64_t sub_214B35118(uint64_t *a1)
{
  v2 = *a1;
  MEMORY[0x277D82BE0](*a1);

  sub_214B35194(v2);
}

double sub_214B35194(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  v2 = *(v1 + 48);
  *(v1 + 48) = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214B35288@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_214A76AEC();
}

uint64_t sub_214B352E4(uint64_t *a1)
{
  sub_214A671A8(a1, &v3);
  v2 = v3;

  sub_214B3534C(v2);
}

double sub_214B3534C(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214B3543C@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_214A76B50();
  a1[1] = v1;
}

uint64_t sub_214B3549C(void *a1)
{
  sub_214A61AD0(a1, v4);
  v2 = v4[0];
  v3 = v4[1];

  sub_214B35510(v2, v3);
}

uint64_t sub_214B35510(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;

  swift_endAccess();
}

uint64_t sub_214B35604@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_214A76148();
}

uint64_t sub_214B35660(uint64_t *a1)
{
  v2 = *a1;
  MEMORY[0x277D82BE0](*a1);

  sub_214B356DC(v2);
}

double sub_214B356DC(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  v2 = *(v1 + 80);
  *(v1 + 80) = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double (*sub_214B35768(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_214A76148();
  return sub_214B357C4;
}

double sub_214B357C4(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_214B356DC(*a1);
  }

  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  sub_214B356DC(v3);
  *&result = MEMORY[0x277D82BD8](*a1).n128_u64[0];
  return result;
}

uint64_t sub_214B35844@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_214A79998();
}

uint64_t sub_214B358A0(uint64_t *a1)
{
  v2 = *a1;
  MEMORY[0x277D82BE0](*a1);

  sub_214B3591C(v2);
}

double sub_214B3591C(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  v2 = *(v1 + 88);
  *(v1 + 88) = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double (*sub_214B359A8(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_214A79998();
  return sub_214B35A04;
}

double sub_214B35A04(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_214B3591C(*a1);
  }

  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  sub_214B3591C(v3);
  *&result = MEMORY[0x277D82BD8](*a1).n128_u64[0];
  return result;
}

uint64_t sub_214B35A84@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_214B35B5C();
}

uint64_t sub_214B35AE0(uint64_t *a1)
{
  v2 = *a1;
  MEMORY[0x277D82BE0](*a1);

  sub_214B35CAC(v2);
}

uint64_t sub_214B35B5C()
{
  swift_beginAccess();
  v6 = *(v0 + 96);
  MEMORY[0x277D82BE0](v6);
  swift_endAccess();
  if (v6)
  {
    return v6;
  }

  v3 = sub_214B35C50();
  MEMORY[0x277D82BE0](v3);
  swift_beginAccess();
  v1 = *(v5 + 96);
  *(v5 + 96) = v3;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v3;
}

uint64_t sub_214B35C50()
{
  v0 = sub_214B360D4();
  v2 = v0();

  return v2;
}

double sub_214B35CAC(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  v2 = *(v1 + 96);
  *(v1 + 96) = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double (*sub_214B35D38(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_214B35B5C();
  return sub_214B35D94;
}

double sub_214B35D94(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_214B35CAC(*a1);
  }

  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  sub_214B35CAC(v3);
  *&result = MEMORY[0x277D82BD8](*a1).n128_u64[0];
  return result;
}

uint64_t sub_214B35E14()
{
  swift_beginAccess();
  v2 = *(v0 + 104);

  swift_endAccess();
  return v2;
}

uint64_t sub_214B35E7C(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;

  swift_endAccess();
}

uint64_t sub_214B35F74()
{
  swift_beginAccess();
  v2 = *(v0 + 120);

  swift_endAccess();
  return v2;
}

uint64_t sub_214B35FDC(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;

  swift_endAccess();
}

uint64_t sub_214B360D4()
{
  swift_beginAccess();
  v2 = *(v0 + 136);

  swift_endAccess();
  return v2;
}

uint64_t sub_214B3613C(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;

  swift_endAccess();
}

uint64_t sub_214B36234(uint64_t a1)
{
  v2 = MUIBucket.unseenImage.getter(a1);
  if (v2)
  {
    return v2;
  }

  sub_214B11080();
  result = sub_214CD0204();
  __break(1u);
  return result;
}

uint64_t sub_214B362E8()
{
  sub_214CD03B4();
  v0 = sub_214CCF614();
  MEMORY[0x21605E650](v0);

  sub_214A6A428();
  sub_214CD0384();
  v1 = sub_214CCF614();
  MEMORY[0x21605E650](v1);

  sub_214A7658C();
  sub_214CD0394();
  sub_214A61B48();
  v2 = sub_214CCF614();
  MEMORY[0x21605E650](v2);

  sub_214A76A2C();
  sub_214CD0384();
  v3 = sub_214CCF614();
  MEMORY[0x21605E650](v3);

  sub_214A61B48();
  return sub_214CCF5F4();
}

uint64_t BucketItem.deinit()
{
  sub_214A61B48();
  MEMORY[0x277D82BD8](v0[6]);
  sub_214A671E8(v0 + 7);
  sub_214A61B48();
  sub_214A671E8(v0 + 10);
  sub_214A671E8(v0 + 11);
  sub_214A671E8(v0 + 12);

  return v2;
}

uint64_t sub_214B36588()
{
  type metadata accessor for BucketItem();
  sub_214A6A018();
  return sub_214CD0114();
}

uint64_t sub_214B365DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_214A6A428();
  *a1 = result;
  return result;
}

uint64_t BucketsDataSource.collectionView.getter()
{
  v2 = *(v0 + 16);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214B36EAC()
{
  v2 = *(v0 + 24);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214B36EEC()
{
  swift_beginAccess();
  v2 = *(v0 + 32);

  swift_endAccess();
  return v2;
}

uint64_t sub_214B36F48(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 32) = a1;

  swift_endAccess();
}

uint64_t sub_214B36FC0(unsigned int a1, int a2, uint64_t (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a1;
  v35 = a2;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v39 = a6;
  v33 = "Assertion failed";
  v34 = "MailUI/BucketsDataSource.swift";
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v53 = 0;
  v54 = 0;
  v51 = 0;
  v52 = 0;
  v50 = 0;
  v48 = 0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35480);
  v42 = *(v41 - 8);
  v43 = v41 - 8;
  v44 = (v42[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v40);
  v45 = &v17 - v44;
  v46 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v7);
  v47 = &v17 - v46;
  v57 = &v17 - v46;
  v56 = v9 & 1;
  v55 = v10 & 1;
  v53 = v11;
  v54 = v12;
  v51 = v13;
  v52 = v14;
  v50 = v6;
  if (([objc_opt_self() isMainThread] & 1) == 0)
  {
    sub_214CCF614();
    sub_214CD0204();
    __break(1u);
  }

  if (v40)
  {
    sub_214A6B11C();
    sub_214CCDE34();
  }

  else
  {
    v31 = *(v32 + 24);
    MEMORY[0x277D82BE0](v31);
    sub_214CCDEE4();
    MEMORY[0x277D82BD8](v31);
  }

  v22 = v42[2];
  v23 = v42 + 2;
  v22(v45, v47, v41);
  v26 = sub_214CCDE24();
  v24 = v42[1];
  v25 = v42 + 1;
  v24(v45, v41);
  v29 = &v49;
  v49 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35488);
  v28 = sub_214A6AD28();
  sub_214A6A0C4();
  v30 = sub_214CCF784();
  sub_214A62278();
  if ((v30 & 1) == 0)
  {
    v20 = &type metadata for BucketsSection;
    v15 = sub_214CD03C4();
    sub_214A63280();
    v21 = v15;
    sub_214CCDDE4();
  }

  v19 = v36(v47);
  v48 = v19;

  if (v19 > 0)
  {
    v18 = *(v32 + 24);
    MEMORY[0x277D82BE0](v18);
    v22(v45, v47, v41);
    sub_214CCDEC4();
    v24(v45, v41);
    MEMORY[0x277D82BD8](v18);
  }

  return (v24)(v47, v41);
}

uint64_t sub_214B374F8@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v4 & 1;
  }

  return result;
}

uint64_t BucketsDataSource.update(unseenCount:forBucket:)()
{
  swift_beginAccess();

  swift_endAccess();
  sub_214CCD484();
}

void *sub_214B376F8(void *a1, uint64_t a2, BOOL *a3, char a4)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a4 & 1;
  v8 = *a1;
  v9 = a1[1];

  v10[0] = v8;
  v10[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35478);
  sub_214A75E48();
  sub_214CCFA54();
  result = v10;
  sub_214A75F10();
  if ((v11 & 1) == 0)
  {

    type metadata accessor for BucketItem();
    sub_214A6A018();
    sub_214CCD594();

    v5 = sub_214A76A2C();

    *a3 = (a4 & 1) != (v5 & 1);

    sub_214CCD594();

    sub_214B34FF0(a4 & 1);
  }

  return result;
}

BOOL sub_214B37954()
{
  v2 = sub_214A6A428();
  sub_214A6E0D8();
  return v2 == v0;
}

uint64_t sub_214B379BC()
{
  sub_214CD03C4();
  v3 = v0;
  sub_214A6E0D8();
  *v3 = v1;
  sub_214A63280();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35480);
  sub_214CCDE14();

  return 1;
}

uint64_t BucketsDataSource.delete(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  swift_endAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35490);
  sub_214CCD484();

  sub_214B36FC0(0, 1, sub_214B37E3C, a1, a2, a3);
}

uint64_t sub_214B37C2C(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v16 = a2;
  v29 = 0;
  v28 = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35480);
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v15 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v19);
  v20 = v9 - v15;
  v29 = v3;
  v28 = v16;
  (*(v17 + 16))(v9 - v15, v2);
  v21 = sub_214CCDE04();
  (*(v17 + 8))(v20, v19);
  v24 = &v27;
  v27 = v21;
  v4 = sub_214A6A428();
  v23 = &v26;
  v26 = v4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35498);
  sub_214B37F30();
  v25 = sub_214CCF784();
  sub_214A62278();
  if ((v25 & 1) == 0)
  {
    return 0;
  }

  v12 = 1;
  v9[1] = MEMORY[0x277D83B88];
  v10 = sub_214CD03C4();
  v9[0] = v5;
  v6 = sub_214A6A428();
  v7 = v10;
  *v9[0] = v6;
  sub_214A63280();
  v11 = v7;
  sub_214CCDDB4();

  return v12;
}

uint64_t BucketsDataSource.deinit()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  MEMORY[0x277D82BD8](*(v0 + 24));

  return v2;
}

unint64_t sub_214B37F30()
{
  v2 = qword_280C7CEC0;
  if (!qword_280C7CEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA35498);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CEC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214B38018()
{
  v1 = sub_214CCDA74();
  __swift_allocate_value_buffer(v1, qword_280C7DCF0);
  __swift_project_value_buffer(v1, qword_280C7DCF0);
  type metadata accessor for BucketsViewController();
  return static Logger.mailUILogger<A>(for:)();
}

uint64_t sub_214B38080()
{
  if (qword_280C7DCE8 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCDA74();
  return __swift_project_value_buffer(v0, qword_280C7DCF0);
}

uint64_t sub_214B380EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214B38080();
  v1 = sub_214CCDA74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

double sub_214B38158@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v4 = v3 + OBJC_IVAR____TtC6MailUI21BucketsViewController_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v4 + 8);
  swift_endAccess();
  *a2 = Strong;
  a2[1] = v7;
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214B3820C(uint64_t *a1, void *a2)
{
  sub_214B31A8C(a1, v7);
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  v6 = v4 + OBJC_IVAR____TtC6MailUI21BucketsViewController_delegate;
  swift_beginAccess();
  *(v6 + 8) = v5;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

uint64_t BucketsViewController.delegate.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t BucketsViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  v5 = v2 + OBJC_IVAR____TtC6MailUI21BucketsViewController_delegate;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void (*BucketsViewController.delegate.modify(void *a1))(void **a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v7;
  v7[5] = v1;
  v2 = OBJC_IVAR____TtC6MailUI21BucketsViewController_delegate;
  v7[6] = OBJC_IVAR____TtC6MailUI21BucketsViewController_delegate;
  v6 = v1 + v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(v6 + 8);
  v7[3] = Strong;
  v7[4] = v4;
  return sub_214B2E918;
}

uint64_t sub_214B384B4()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_preferences);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214B3851C(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI21BucketsViewController_preferences);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_214B385A0()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_lastSeenBucketHelper);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214B38610(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI21BucketsViewController_lastSeenBucketHelper);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214B386A8()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214B38718(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214B387B0()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionViewLayout);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214B38820(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionViewLayout);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

void *sub_214B388B8(uint64_t a1)
{
  v28 = a1;
  v27 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v37[1] = 0;
  v37[0] = 0;
  v23 = sub_214CCD374();
  v24 = *(v23 - 8);
  v25 = v24;
  MEMORY[0x28223BE20](v23 - 8);
  v26 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v26;
  v29 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA353A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28);
  v30 = v12 - v29;
  v34 = *v3;
  v42 = v34;
  v41 = v1;
  v31 = (v1 + OBJC_IVAR____TtC6MailUI21BucketsViewController_layoutConfiguration);
  v32 = &v40;
  swift_beginAccess();
  v33 = *v31;
  swift_endAccess();
  v39 = v33;
  v38 = v34;
  result = static BucketCollectionViewLayout.Configuration.== infix(_:_:)(&v39, &v38);
  if ((result & 1) == 0)
  {
    v18 = &v22[OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView];
    v20 = &v36;
    swift_beginAccess();
    v21 = *v18;
    v19 = v21;
    v5 = v21;
    swift_endAccess();
    if (v21)
    {
      v17 = v19;
    }

    else
    {
      LODWORD(v11) = 0;
      v10 = 40;
      v9[0] = 2;
      sub_214CD01F4();
      __break(1u);
    }

    v13 = v17;
    v16 = [v17 indexPathsForVisibleItems];
    v14 = sub_214CCF7E4();

    v35 = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA354E0);
    sub_214A6D6C8();
    sub_214CCFAC4();

    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA354F0);
      sub_214CD01B4();
      if ((*(v25 + 48))(v30, 1, v23) == 1)
      {
        break;
      }

      v6 = v22;
      (*(v25 + 32))(v26, v30, v23);
      v7 = v6;
      v12[1] = v12;
      MEMORY[0x28223BE20](v26);
      v11 = v6;
      sub_214B38D64(v8, sub_214B38D5C, v9);

      (*(v25 + 8))(v26, v23);
    }

    result = v37;
    sub_214A62278();
  }

  return result;
}

unint64_t sub_214B38CC0(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  v8 = a2;
  v4 = (a2 + OBJC_IVAR____TtC6MailUI21BucketsViewController_layoutConfiguration);
  swift_beginAccess();
  v5 = *v4;
  swift_endAccess();
  v7 = v5;
  v6 = 3;
  v2 = static BucketCollectionViewLayout.Configuration.== infix(_:_:)(&v7, &v6);
  return BucketCollectionViewCell.isStacked.setter(v2);
}

uint64_t sub_214B38D64(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v18 = "Fatal error";
  v19 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v20 = "MailUI/BucketsViewController.swift";
  v37 = 0;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v32 = 0;
  v24 = sub_214CCD374();
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = v7 - v27;
  v37 = MEMORY[0x28223BE20](v23);
  v35 = v4;
  v36 = v5;
  v34 = v3;
  v29 = (v3 + OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView);
  v30 = &v33;
  swift_beginAccess();
  v31 = *v29;
  MEMORY[0x277D82BE0](v31);
  swift_endAccess();
  if (v31)
  {
    v17 = v31;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v15 = v17;
  (*(v25 + 16))(v28, v23, v24);
  v14 = sub_214CCD304();
  (*(v25 + 8))(v28, v24);
  v16 = [v15 cellForItemAtIndexPath_];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  result = v16;
  if (v16)
  {
    v13 = v16;
    v11 = v16;
    type metadata accessor for BucketCollectionViewCell();
    result = swift_dynamicCastClass();
    v12 = result;
    if (result)
    {
      v10 = v12;
    }

    else
    {
      result = MEMORY[0x277D82BD8](v11);
      v10 = 0;
    }

    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  v8 = v9;
  if (v9)
  {
    v7[1] = v8;
    v7[0] = v8;
    v32 = v8;
    v22();
    return MEMORY[0x277D82BD8](v7[0]);
  }

  return result;
}

uint64_t sub_214B390B8@<X0>(_BYTE *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC6MailUI21BucketsViewController_layoutConfiguration);
  swift_beginAccess();
  v5 = *v3;
  result = swift_endAccess();
  *a1 = v5;
  return result;
}

void *sub_214B39128(char *a1)
{
  v9 = 0;
  v8 = 0;
  v9 = *a1;
  v5 = v9;
  v3 = (v1 + OBJC_IVAR____TtC6MailUI21BucketsViewController_layoutConfiguration);
  swift_beginAccess();
  v6 = *v3;
  swift_endAccess();
  v4 = (v1 + OBJC_IVAR____TtC6MailUI21BucketsViewController_layoutConfiguration);
  swift_beginAccess();
  *v4 = v5;
  swift_endAccess();
  v7 = v6;
  return sub_214B388B8(&v7);
}

uint64_t sub_214B391EC()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_dataSource);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214B39254(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI21BucketsViewController_dataSource);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_214B392D4@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC6MailUI21BucketsViewController_cellRegistration);
  swift_beginAccess();
  sub_214A77D2C(v3, a1);
  return swift_endAccess();
}

uint64_t sub_214B39338(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35510) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v5 = &v4 - v4;
  v11 = v2;
  v10 = v1;
  sub_214A77D2C(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC6MailUI21BucketsViewController_cellRegistration);
  v7 = &v9;
  swift_beginAccess();
  sub_214A6F3F8(v5, v6);
  swift_endAccess();
  return sub_214B3941C(v8);
}

uint64_t sub_214B3941C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35508);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

double sub_214B394D0()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_previousSize);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_214B39540(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC6MailUI21BucketsViewController_previousSize);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_endAccess();
}

double sub_214B395C0()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_previousLayoutMargins);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_214B39648(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC6MailUI21BucketsViewController_previousLayoutMargins);
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return swift_endAccess();
}

uint64_t sub_214B396EC()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_contentSizeToken);
  swift_beginAccess();
  v3 = *v2;
  swift_unknownObjectRetain();
  swift_endAccess();
  return v3;
}

uint64_t sub_214B39754(uint64_t a1)
{
  swift_unknownObjectRetain();
  v3 = (v1 + OBJC_IVAR____TtC6MailUI21BucketsViewController_contentSizeToken);
  swift_beginAccess();
  *v3 = a1;
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_214B397D4()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_preferredFontToken);
  swift_beginAccess();
  v3 = *v2;
  swift_unknownObjectRetain();
  swift_endAccess();
  return v3;
}

uint64_t sub_214B3983C(uint64_t a1)
{
  swift_unknownObjectRetain();
  v3 = (v1 + OBJC_IVAR____TtC6MailUI21BucketsViewController_preferredFontToken);
  swift_beginAccess();
  *v3 = a1;
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_214B398BC()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_sceneForegroundToken);
  swift_beginAccess();
  v3 = *v2;
  swift_unknownObjectRetain();
  swift_endAccess();
  return v3;
}

uint64_t sub_214B39924(uint64_t a1)
{
  swift_unknownObjectRetain();
  v3 = (v1 + OBJC_IVAR____TtC6MailUI21BucketsViewController_sceneForegroundToken);
  swift_beginAccess();
  *v3 = a1;
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_214B399A4()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_sceneBackgroundToken);
  swift_beginAccess();
  v3 = *v2;
  swift_unknownObjectRetain();
  swift_endAccess();
  return v3;
}

uint64_t sub_214B39A0C(uint64_t a1)
{
  swift_unknownObjectRetain();
  v3 = (v1 + OBJC_IVAR____TtC6MailUI21BucketsViewController_sceneBackgroundToken);
  swift_beginAccess();
  *v3 = a1;
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_214B39A8C()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_allMailBucketItem);

  return v2;
}

uint64_t sub_214B39ACC()
{
  v9 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_selectedItem);
  swift_beginAccess();
  v10 = *v9;

  result = swift_endAccess();
  if (v10)
  {
    sub_214A6A428();
    sub_214A706A8();
    v7 = v2;
    if (v3)
    {
    }

    else
    {
      v5 = (v8 + OBJC_IVAR____TtC6MailUI21BucketsViewController_lastSeenBucketHelper);
      swift_beginAccess();
      v6 = *v5;
      MEMORY[0x277D82BE0](*v5);
      swift_endAccess();
      if (v6)
      {
        v4 = v6;
      }

      else
      {
        sub_214CD01F4();
        __break(1u);
      }

      MUILastSeenBucketHelper.updateLastSelectedDateIfNecessary(for:)(v7);
      MEMORY[0x277D82BD8](v4);
    }
  }

  return result;
}

unint64_t sub_214B39CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  BucketCollectionViewCell.isPreselected.setter(0);
  v3 = sub_214B39D1C(a3);
  return BucketCollectionViewCell.isExpanded.setter(v3);
}

BOOL sub_214B39D1C(uint64_t a1)
{
  v12 = 0;
  v11 = 0;
  v13 = a1;

  if (a1)
  {
    v11 = a1;
    v6 = sub_214B3A3F0();
    (MEMORY[0x277D82BE0])();
    if (v6)
    {
      v5 = 1;
    }

    else
    {
      v3 = (v7 + OBJC_IVAR____TtC6MailUI21BucketsViewController_layoutConfiguration);
      swift_beginAccess();
      v4 = *v3;
      swift_endAccess();
      v10 = v4;
      v9 = 2;
      v5 = static BucketCollectionViewLayout.Configuration.== infix(_:_:)(&v10, &v9);
    }

    (MEMORY[0x277D82BD8])();

    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_214B39E60(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v29 = a1;
  v23 = a2;
  v22 = a3;
  v17 = "Fatal error";
  v18 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v19 = "MailUI/BucketsViewController.swift";
  v36 = 0;
  v35 = 0;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v31 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA353A0);
  v20 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v21 = &v9 - v20;
  v24 = sub_214CCD374();
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v29);
  v28 = &v9 - v27;
  v36 = &v9 - v27;
  v35 = v5;
  v33 = v6;
  v34 = v7;
  v32 = v3;

  result = v29;
  if (v29)
  {
    v15 = v29;
    v11 = v29;
    v31 = v29;
    v12 = (v16 + OBJC_IVAR____TtC6MailUI21BucketsViewController_dataSource);
    v13 = &v30;
    swift_beginAccess();
    v14 = *v12;

    swift_endAccess();
    if (v14)
    {
      v10 = v14;
    }

    else
    {
      sub_214CD01F4();
      __break(1u);
    }

    v9 = v10;
    BucketsDataSource.indexPath(for:)();

    if ((*(v25 + 48))(v21, 1, v24) == 1)
    {
      sub_214A6A480(v21);
    }

    else
    {
      (*(v25 + 32))(v28, v21, v24);
      sub_214B38D64(v28, v23, v22);
      (*(v25 + 8))(v28, v24);
    }
  }

  return result;
}

unint64_t sub_214B3A188(uint64_t a1, uint64_t a2)
{
  BucketCollectionViewCell.isPreselected.setter(1);
  v4 = (a2 + OBJC_IVAR____TtC6MailUI21BucketsViewController_selectedItem);
  swift_beginAccess();
  v5 = *v4;

  swift_endAccess();
  v6 = sub_214B39D1C(v5);

  return BucketCollectionViewCell.isExpanded.setter(v6);
}

uint64_t sub_214B3A244()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_selectedItem);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214B3A2AC()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_previousSelectedItem);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214B3A314(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI21BucketsViewController_previousSelectedItem);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

BOOL sub_214B3A394()
{

  v1 = sub_214B3A3F0();

  return v1;
}

BOOL sub_214B3A3F0()
{
  v6 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_selectedItem);
  swift_beginAccess();
  if (*v6)
  {

    swift_endAccess();
    v3 = sub_214A6A428();

    v4 = v3;
    v5 = 0;
  }

  else
  {
    swift_endAccess();
    v4 = 0;
    v5 = 1;
  }

  v7 = sub_214A6A428();
  return (v5 & 1) == 0 && v4 == v7;
}

uint64_t sub_214B3A590()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_addAllMailSwipeGestureRecognizer);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214B3A600(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI21BucketsViewController_addAllMailSwipeGestureRecognizer);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214B3A698()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_removeAllMailSwipeGestureRecognizer);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214B3A708(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI21BucketsViewController_removeAllMailSwipeGestureRecognizer);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214B3A7A0()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_dropSessionHelper);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214B3A810(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI21BucketsViewController_dropSessionHelper);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214B3A8A8()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI21BucketsViewController_dropToChangeCategoriesInternalSettingsObservationToken);
  swift_beginAccess();
  v3 = *v2;
  swift_unknownObjectRetain();
  swift_endAccess();
  return v3;
}

uint64_t sub_214B3A910(uint64_t a1)
{
  swift_unknownObjectRetain();
  v3 = (v1 + OBJC_IVAR____TtC6MailUI21BucketsViewController_dropToChangeCategoriesInternalSettingsObservationToken);
  swift_beginAccess();
  *v3 = a1;
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_214B3A990(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (!Strong)
  {
    return 0;
  }

  v7 = Strong + OBJC_IVAR____TtC6MailUI21BucketsViewController_delegate;
  swift_beginAccess();
  v1 = swift_unknownObjectWeakLoadStrong();
  v11 = *(v7 + 8);
  if (v1)
  {
    swift_unknownObjectRetain();
    sub_214A759F4();
    swift_endAccess();
    ObjectType = swift_getObjectType();
    v2 = MEMORY[0x277D82BE0](Strong);
    v5 = (*(v11 + 24))(Strong, &protocol witness table for BucketsViewController, a1, ObjectType, v2);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v6 = v5;
  }

  else
  {
    sub_214A759F4();
    swift_endAccess();
    v6 = 0;
  }

  MEMORY[0x277D82BD8](Strong);
  return v6;
}

uint64_t sub_214B3AB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[6] = a1;
  v7[5] = a2;
  v7[4] = a3 + 16;
  swift_beginAccess();
  v7[0] = swift_unknownObjectWeakLoadStrong();
  if (v7[0])
  {
    v5 = v7[0];
    MEMORY[0x277D82BE0](v7[0]);
    sub_214A671E8(v7);
    swift_endAccess();
    v4 = (v5 + OBJC_IVAR____TtC6MailUI21BucketsViewController_dataSource);
    swift_beginAccess();
    v6 = *v4;

    swift_endAccess();
    MEMORY[0x277D82BD8](v5);
    if (!v6)
    {
      sub_214CD01F4();
      __break(1u);
    }

    BucketsDataSource.update(unseenCount:forBucket:)();
  }

  else
  {
    sub_214A671E8(v7);
    return swift_endAccess();
  }
}

double sub_214B3AD4C(uint64_t a1, void *a2, uint64_t a3)
{
  v229 = a1;
  v227 = a2;
  v228 = a3;
  v237 = 0;
  v221 = sub_214B43750;
  v222 = sub_214B43BAC;
  v223 = sub_214B43C24;
  v224 = "Fatal error";
  v225 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v226 = "MailUI/BucketsViewController.swift";
  v271 = 0;
  v270 = 0;
  v269 = 0;
  v268 = 0;
  v230 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35510) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v229);
  v231 = &v46 - v230;
  v271 = v4;
  v270 = v5;
  v269 = v6;
  v268 = v3;
  sub_214B3D668();
  v7 = sub_214B4329C();
  v8 = v232;
  v234 = v7;
  v236 = &unk_27CA35000;
  v233 = &v232[OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionViewLayout];
  v235 = &v267;
  swift_beginAccess();
  v9 = *v233;
  *v233 = v234;
  MEMORY[0x277D82BD8](v9);
  swift_endAccess();
  v238 = &v8[v236[153]];
  v239 = &v266;
  swift_beginAccess();
  v240 = *v238;
  MEMORY[0x277D82BE0](v240);
  swift_endAccess();
  if (v240)
  {
    v220 = v240;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v214 = v220;
  MEMORY[0x277D82BE0](v232);
  v212 = v214 + OBJC_IVAR____TtC6MailUI26BucketCollectionViewLayout_delegate;
  v213 = &v265;
  v215 = 0;
  swift_beginAccess();
  *(v212 + 8) = &protocol witness table for BucketsViewController;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  MEMORY[0x277D82BD8](v214);
  v216 = sub_214A69E94();
  v217 = &v232[OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionViewLayout];
  v218 = &v264;
  swift_beginAccess();
  v219 = *v217;
  MEMORY[0x277D82BE0](v219);
  swift_endAccess();
  if (v219)
  {
    v211 = v219;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v204 = sub_214A69EF8(v211, 0.0, 0.0, 0.0, 0.0);
  v206 = &unk_27CA35000;
  v203 = &v232[OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView];
  v205 = &v263;
  v207 = 0;
  swift_beginAccess();
  v10 = *v203;
  *v203 = v204;
  MEMORY[0x277D82BD8](v10);
  swift_endAccess();
  v208 = &v232[v206[152]];
  v209 = &v262;
  swift_beginAccess();
  v210 = *v208;
  MEMORY[0x277D82BE0](v210);
  swift_endAccess();
  if (v210)
  {
    v202 = v210;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v198 = v202;
  [v202 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x277D82BD8](v198);
  v199 = &v232[OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView];
  v200 = &v261;
  swift_beginAccess();
  v201 = *v199;
  MEMORY[0x277D82BE0](v201);
  swift_endAccess();
  if (v201)
  {
    v197 = v201;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v193 = v197;
  [v197 setShowsHorizontalScrollIndicator_];
  MEMORY[0x277D82BD8](v193);
  v194 = &v232[OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView];
  v195 = &v260;
  swift_beginAccess();
  v196 = *v194;
  MEMORY[0x277D82BE0](v196);
  swift_endAccess();
  if (v196)
  {
    v192 = v196;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v187 = v192;
  v188 = 0;
  [v192 setBackgroundColor_];
  MEMORY[0x277D82BD8](v187);
  v189 = &v232[OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView];
  v190 = &v259;
  swift_beginAccess();
  v191 = *v189;
  MEMORY[0x277D82BE0](v191);
  swift_endAccess();
  if (v191)
  {
    v186 = v191;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v182 = v186;
  [v186 setAllowsMultipleSelection_];
  MEMORY[0x277D82BD8](v182);
  v183 = &v232[OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView];
  v184 = &v258;
  swift_beginAccess();
  v185 = *v183;
  MEMORY[0x277D82BE0](v185);
  swift_endAccess();
  if (v185)
  {
    v181 = v185;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v177 = v181;
  *&v11 = MEMORY[0x277D82BE0](v232).n128_u64[0];
  [v177 setDelegate_];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v177);
  v178 = &v232[OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView];
  v179 = &v257;
  swift_beginAccess();
  v180 = *v178;
  MEMORY[0x277D82BE0](v180);
  swift_endAccess();
  if (v180)
  {
    v176 = v180;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v172 = v176;
  LODWORD(v12) = 1148846080;
  [v176 setContentCompressionResistancePriority:1 forAxis:v12];
  MEMORY[0x277D82BD8](v172);
  v173 = &v232[OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView];
  v174 = &v256;
  swift_beginAccess();
  v175 = *v173;
  MEMORY[0x277D82BE0](v175);
  swift_endAccess();
  if (v175)
  {
    v171 = v175;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v167 = v171;
  LODWORD(v13) = 1148846080;
  [v171 setContentHuggingPriority:1 forAxis:v13];
  MEMORY[0x277D82BD8](v167);
  v168 = &v232[OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView];
  v169 = &v255;
  swift_beginAccess();
  v170 = *v168;
  MEMORY[0x277D82BE0](v170);
  swift_endAccess();
  if (v170)
  {
    v166 = v170;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v162 = v166;
  [v166 setAllowsFocus_];
  MEMORY[0x277D82BD8](v162);
  v163 = &v232[OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView];
  v164 = &v254;
  swift_beginAccess();
  v165 = *v163;
  MEMORY[0x277D82BE0](v165);
  swift_endAccess();
  if (v165)
  {
    v161 = v165;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v159 = v161;
  [v161 setClipsToBounds_];
  MEMORY[0x277D82BD8](v159);
  *&v14 = MEMORY[0x277D82BE0](v232).n128_u64[0];
  v160 = [v232 view];
  *&v15 = MEMORY[0x277D82BD8](v232).n128_u64[0];
  if (v160)
  {
    v158 = v160;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v156 = v158;
  [v158 setClipsToBounds_];
  MEMORY[0x277D82BD8](v156);
  *&v16 = MEMORY[0x277D82BE0](v232).n128_u64[0];
  v157 = [v232 view];
  MEMORY[0x277D82BD8](v232);
  if (v157)
  {
    v155 = v157;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v151 = v155;
  v152 = &v232[OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView];
  v153 = &v253;
  swift_beginAccess();
  v154 = *v152;
  MEMORY[0x277D82BE0](v154);
  swift_endAccess();
  if (v154)
  {
    v150 = v154;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v142 = v150;
  [v151 addSubview_];
  MEMORY[0x277D82BD8](v142);
  MEMORY[0x277D82BD8](v151);
  v143 = objc_opt_self();
  v144 = sub_214A6F394();
  v145 = sub_214CD03C4();
  v146 = v17;
  v147 = &v232[OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView];
  v148 = &v252;
  swift_beginAccess();
  v149 = *v147;
  MEMORY[0x277D82BE0](v149);
  swift_endAccess();
  if (v149)
  {
    v141 = v149;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v138 = v141;
  v139 = [v141 topAnchor];
  MEMORY[0x277D82BD8](v138);
  *&v18 = MEMORY[0x277D82BE0](v232).n128_u64[0];
  v140 = [v232 view];
  *&v19 = MEMORY[0x277D82BD8](v232).n128_u64[0];
  if (v140)
  {
    v137 = v140;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v131 = v137;
  v132 = [v137 topAnchor];
  *&v20 = MEMORY[0x277D82BD8](v131).n128_u64[0];
  v133 = [v139 constraintEqualToAnchor_];
  MEMORY[0x277D82BD8](v132);
  MEMORY[0x277D82BD8](v139);
  v21 = v232;
  *v146 = v133;
  v134 = &v21[OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView];
  v135 = &v251;
  swift_beginAccess();
  v136 = *v134;
  MEMORY[0x277D82BE0](v136);
  swift_endAccess();
  if (v136)
  {
    v130 = v136;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v127 = v130;
  v128 = [v130 leadingAnchor];
  MEMORY[0x277D82BD8](v127);
  *&v22 = MEMORY[0x277D82BE0](v232).n128_u64[0];
  v129 = [v232 view];
  *&v23 = MEMORY[0x277D82BD8](v232).n128_u64[0];
  if (v129)
  {
    v126 = v129;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v120 = v126;
  v121 = [v126 leadingAnchor];
  *&v24 = MEMORY[0x277D82BD8](v120).n128_u64[0];
  v122 = [v128 constraintEqualToAnchor_];
  MEMORY[0x277D82BD8](v121);
  MEMORY[0x277D82BD8](v128);
  v25 = v232;
  v146[1] = v122;
  v123 = &v25[OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView];
  v124 = &v250;
  swift_beginAccess();
  v125 = *v123;
  MEMORY[0x277D82BE0](v125);
  swift_endAccess();
  if (v125)
  {
    v119 = v125;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v116 = v119;
  v117 = [v119 trailingAnchor];
  MEMORY[0x277D82BD8](v116);
  *&v26 = MEMORY[0x277D82BE0](v232).n128_u64[0];
  v118 = [v232 view];
  *&v27 = MEMORY[0x277D82BD8](v232).n128_u64[0];
  if (v118)
  {
    v115 = v118;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v109 = v115;
  v110 = [v115 trailingAnchor];
  *&v28 = MEMORY[0x277D82BD8](v109).n128_u64[0];
  v111 = [v117 constraintEqualToAnchor_];
  MEMORY[0x277D82BD8](v110);
  MEMORY[0x277D82BD8](v117);
  v29 = v232;
  v146[2] = v111;
  v112 = &v29[OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView];
  v113 = &v249;
  swift_beginAccess();
  v114 = *v112;
  MEMORY[0x277D82BE0](v114);
  swift_endAccess();
  if (v114)
  {
    v108 = v114;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v105 = v108;
  v106 = [v108 bottomAnchor];
  MEMORY[0x277D82BD8](v105);
  *&v30 = MEMORY[0x277D82BE0](v232).n128_u64[0];
  v107 = [v232 view];
  *&v31 = MEMORY[0x277D82BD8](v232).n128_u64[0];
  if (v107)
  {
    v104 = v107;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v87 = v104;
  v88 = [v104 bottomAnchor];
  *&v32 = MEMORY[0x277D82BD8](v87).n128_u64[0];
  v89 = [v106 constraintEqualToAnchor_];
  MEMORY[0x277D82BD8](v88);
  MEMORY[0x277D82BD8](v106);
  v33 = v145;
  v146[3] = v89;
  sub_214A63280();
  v90 = v33;
  v91 = sub_214CCF7D4();

  [v143 activateConstraints_];
  MEMORY[0x277D82BD8](v91);
  v94 = swift_allocObject();
  v92 = v94 + 16;
  MEMORY[0x277D82BE0](v232);
  swift_unknownObjectWeakInit();
  MEMORY[0x277D82BD8](v232);

  v98 = 0;
  v93 = type metadata accessor for BucketCollectionViewCell();
  v95 = type metadata accessor for BucketItem();
  sub_214CCFBC4();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35508);
  (*(*(v34 - 8) + 56))(v231, 0, 1);
  v96 = &v232[OBJC_IVAR____TtC6MailUI21BucketsViewController_cellRegistration];
  v97 = &v248;
  v99 = 0;
  swift_beginAccess();
  sub_214A6F3F8(v231, v96);
  swift_endAccess();
  v100 = type metadata accessor for BucketsDataSource();
  v101 = &v232[OBJC_IVAR____TtC6MailUI21BucketsViewController_collectionView];
  v102 = &v247;
  swift_beginAccess();
  v103 = *v101;
  MEMORY[0x277D82BE0](v103);
  swift_endAccess();
  if (v103)
  {
    v86 = v103;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v76 = v86;
  v77 = swift_allocObject();
  v75 = v77 + 16;
  MEMORY[0x277D82BE0](v232);
  swift_unknownObjectWeakInit();
  MEMORY[0x277D82BD8](v232);

  v79 = BucketsDataSource.__allocating_init(collectionView:cellProvider:)(v76, v222, v77);

  v81 = &unk_27CA35000;
  v78 = &v232[OBJC_IVAR____TtC6MailUI21BucketsViewController_dataSource];
  v80 = &v246;
  v82 = 0;
  swift_beginAccess();
  *v78 = v79;

  swift_endAccess();
  v35 = BucketItem.__allocating_init(_:)(v227);
  sub_214A6A140(v35);
  v83 = &v232[v81[159]];
  v84 = &v245;
  swift_beginAccess();
  v85 = *v83;

  swift_endAccess();
  if (v85)
  {
    v74 = v85;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v69 = v74;
  v66 = 7;
  v68 = swift_allocObject();
  v65 = v68 + 16;
  MEMORY[0x277D82BE0](v232);
  swift_unknownObjectUnownedInit();
  MEMORY[0x277D82BD8](v232);

  v36 = swift_allocObject();
  v37 = v227;
  v38 = v223;
  v39 = v36;
  v40 = v229;
  *(v39 + 16) = v68;
  *(v39 + 24) = v37;
  v67 = v39;
  BucketsDataSource.append(_:completion:)(v40, v38, v39);
  sub_214A6B584(v223);

  v71 = sub_214B43C30(2);
  v70 = &v232[OBJC_IVAR____TtC6MailUI21BucketsViewController_addAllMailSwipeGestureRecognizer];
  v72 = &v244;
  swift_beginAccess();
  v41 = *v70;
  *v70 = v71;
  MEMORY[0x277D82BD8](v41);
  swift_endAccess();
  *&v42 = MEMORY[0x277D82BE0](v232).n128_u64[0];
  v73 = [v232 view];
  MEMORY[0x277D82BD8](v232);
  if (v73)
  {
    v64 = v73;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v60 = v64;
  v61 = &v232[OBJC_IVAR____TtC6MailUI21BucketsViewController_addAllMailSwipeGestureRecognizer];
  v62 = &v243;
  swift_beginAccess();
  v63 = *v61;
  MEMORY[0x277D82BE0](v63);
  swift_endAccess();
  if (v63)
  {
    v59 = v63;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v54 = v59;
  [v60 addGestureRecognizer_];
  MEMORY[0x277D82BD8](v54);
  MEMORY[0x277D82BD8](v60);
  v56 = sub_214B43C30(1);
  v55 = &v232[OBJC_IVAR____TtC6MailUI21BucketsViewController_removeAllMailSwipeGestureRecognizer];
  v57 = &v242;
  swift_beginAccess();
  v43 = *v55;
  *v55 = v56;
  MEMORY[0x277D82BD8](v43);
  swift_endAccess();
  *&v44 = MEMORY[0x277D82BE0](v232).n128_u64[0];
  v58 = [v232 view];
  MEMORY[0x277D82BD8](v232);
  if (v58)
  {
    v53 = v58;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v49 = v53;
  v50 = &v232[OBJC_IVAR____TtC6MailUI21BucketsViewController_removeAllMailSwipeGestureRecognizer];
  v51 = &v241;
  swift_beginAccess();
  v52 = *v50;
  MEMORY[0x277D82BE0](v52);
  swift_endAccess();
  if (v52)
  {
    v48 = v52;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v47 = v48;
  [v49 addGestureRecognizer_];
  MEMORY[0x277D82BD8](v47);
  MEMORY[0x277D82BD8](v49);
  return sub_214B43E2C();
}