unint64_t sub_24B107A0C()
{
  result = qword_27EFCBC10;
  if (!qword_27EFCBC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCBC18);
    sub_24B107DEC(&qword_27EFC8DD8, MEMORY[0x277CDE500]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBC10);
  }

  return result;
}

uint64_t sub_24B107AC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCAA68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24B107B30()
{
  result = qword_27EFCBC48;
  if (!qword_27EFCBC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCBBF0);
    sub_24B107BE8();
    sub_24B039184(&qword_27EFC8F00, &qword_27EFC8E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBC48);
  }

  return result;
}

unint64_t sub_24B107BE8()
{
  result = qword_27EFCBC50;
  if (!qword_27EFCBC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCBC40);
    sub_24B107C74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBC50);
  }

  return result;
}

unint64_t sub_24B107C74()
{
  result = qword_27EFCBC58;
  if (!qword_27EFCBC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCBC38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCBBE8);
    sub_24B2D3844();
    sub_24B039184(&qword_27EFCBC30, &qword_27EFCBBE8);
    sub_24B107DEC(&qword_27EFCAFA8, MEMORY[0x277CDDA98]);
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFC8E90, &qword_27EFC8E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBC58);
  }

  return result;
}

uint64_t sub_24B107DEC(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 GenericControl.init(info:matchingSizeOfInfos:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24B2D4CC4();
  *(a3 + 80) = v9;
  *(a3 + 88) = v10;
  *(a3 + 96) = swift_getKeyPath();
  *(a3 + 104) = 0;
  *(a3 + 112) = swift_getKeyPath();
  *(a3 + 120) = 0;
  v6 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v6;
  v7 = *(a1 + 64);
  result = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = result;
  *(a3 + 64) = v7;
  *(a3 + 72) = a2;
  return result;
}

uint64_t sub_24B107ED4()
{
  v1 = sub_24B2D3C64();
  v10 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 41);
  v5 = *(v0 + 88);
  v6 = *(v0 + 112);
  v7 = *(v0 + 120);
  v12 = *(v0 + 80);
  v13 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8);
  sub_24B2D4CD4();
  if (v11 & 1) != 0 || (sub_24B10D208(), , sub_24B10D214(), , (v4))
  {
    LOBYTE(v6) = 1;
  }

  else if (!v7)
  {

    sub_24B2D5924();
    v9 = sub_24B2D42A4();
    sub_24B2D3154();

    sub_24B2D3C54();
    swift_getAtKeyPath();
    sub_24AFEFDB8(v6, 0);
    (*(v10 + 8))(v3, v1);
    LOBYTE(v6) = v12;
  }

  return v6 & 1;
}

uint64_t GenericControl.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBC68);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  v23 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBC70);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = *v1;
  v11 = v1[1];
  v33 = *(v1 + 17);
  LODWORD(v8) = *(v1 + 21) | (*(v1 + 23) << 16);
  v12 = v1[4];
  v31 = v1[3];
  v30 = *(v1 + 20);
  v13 = *(v1 + 42);
  v27 = *(v1 + 43);
  v29 = *(v1 + 47);
  v26 = v1[6];
  v25 = v1[7];
  v24 = v1[8];
  v14 = *(v1 + 16);
  v35 = v10;
  v36 = v11;
  v37 = v14;
  v38 = v33;
  v32 = WORD1(v8);
  v40 = BYTE2(v8);
  v28 = v8;
  v39 = v8;
  v41 = v31;
  v42 = v12;
  v43 = v30;
  v44 = v13;
  v46 = v29;
  v45 = v27;
  v47 = v26;
  v48 = v25;
  v49 = v24;
  v15 = *(v1 + 11);
  v50 = *(v1 + 9);
  v51 = v15;
  v52 = *(v1 + 13);
  v53 = *(v1 + 120);
  sub_24B1083F8(v5);
  sub_24B10D208();

  sub_24B10D214();

  KeyPath = swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = v13 & 1;
  sub_24B0391CC(v23, v9, &qword_27EFCBC68);
  v18 = &v9[*(v7 + 44)];
  *v18 = KeyPath;
  v18[1] = sub_24B10D28C;
  v18[2] = v17;
  v35 = v10;
  v36 = v11;
  v37 = v14;
  v40 = v32;
  v39 = v28;
  v38 = v33;
  v41 = v31;
  v42 = v12;
  v43 = v30;
  v44 = v13;
  v46 = v29;
  v45 = v27;
  v47 = v26;
  v48 = v25;
  v49 = v24;
  v19 = *(v2 + 11);
  v50 = *(v2 + 9);
  v51 = v19;
  v52 = *(v2 + 13);
  v53 = *(v2 + 120);
  LOBYTE(KeyPath) = sub_24B107ED4();
  v20 = v34;
  sub_24B0391CC(v9, v34, &qword_27EFCBC70);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBC78);
  *(v20 + *(result + 36)) = (KeyPath & 1) == 0;
  return result;
}

uint64_t sub_24B1083F8@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBD18);
  MEMORY[0x28223BE20](v37);
  v39 = &v28 - v2;
  v36 = sub_24B2D4174();
  v30 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBCD8);
  MEMORY[0x28223BE20](v38);
  v34 = &v28 - v4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBD20);
  v31 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v29 = &v28 - v5;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 17) | ((*(v1 + 21) | (*(v1 + 23) << 16)) << 32);
  v11 = *(v1 + 24);
  v10 = *(v1 + 32);
  v12 = *(v1 + 40);
  v13 = *(v1 + 41) | ((*(v1 + 45) | (*(v1 + 47) << 16)) << 32);
  v14 = *(v1 + 48);
  v32 = *(v1 + 56);
  v33 = *(v1 + 64);
  sub_24B10D208();

  sub_24B10D214();

  v41 = v6;
  v42 = v7;
  LOBYTE(v43) = v8;
  *(&v43 + 1) = v9;
  HIBYTE(v43) = BYTE6(v9);
  *(&v43 + 5) = WORD2(v9);
  v44 = v11;
  v45 = v10;
  v46 = v12;
  v47 = v13;
  v49 = BYTE6(v13);
  v48 = WORD2(v13);
  v50 = v14;
  v51 = v32;
  v52 = v33;
  v15 = *(v1 + 88);
  v53 = *(v1 + 72);
  v54 = v15;
  v55 = *(v1 + 104);
  v56 = *(v1 + 120);
  v16 = v34;
  sub_24B10895C(v34);
  if (v12)
  {
    v17 = v28;
    sub_24B2D4164();
    v18 = sub_24B10DE6C();
    v19 = sub_24B10DF50();
    v20 = v29;
    v21 = v38;
    v22 = v36;
    sub_24B2D46D4();
    (*(v30 + 8))(v17, v22);
    sub_24AFF8258(v16, &qword_27EFCBCD8);
    v23 = v31;
    v24 = v35;
    (*(v31 + 16))(v39, v20, v35);
    swift_storeEnumTagMultiPayload();
    v41 = v21;
    v42 = v22;
    v43 = v18;
    v44 = v19;
    swift_getOpaqueTypeConformance2();
    sub_24B2D3ED4();
    return (*(v23 + 8))(v20, v24);
  }

  else
  {
    sub_24B008890(v16, v39, &qword_27EFCBCD8);
    swift_storeEnumTagMultiPayload();
    v26 = sub_24B10DE6C();
    v27 = sub_24B10DF50();
    v41 = v38;
    v42 = v36;
    v43 = v26;
    v44 = v27;
    swift_getOpaqueTypeConformance2();
    sub_24B2D3ED4();
    return sub_24AFF8258(v16, &qword_27EFCBCD8);
  }
}

uint64_t sub_24B10895C@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBD00);
  v36 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v35 = v34 - v2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBD28);
  MEMORY[0x28223BE20](v37);
  v38 = v34 - v3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBCF0);
  v4 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v6 = v34 - v5;
  v7 = v1[1];
  v53 = *v1;
  v54 = v7;
  v8 = v1[3];
  v55 = v1[2];
  v56 = v8;
  v9 = v1[5];
  v57 = v1[4];
  v58 = v9;
  v59[0] = v1[6];
  *(v59 + 9) = *(v1 + 105);
  v10 = v56;
  v11 = v57;
  v43 = v53;
  v44 = v54;
  v45 = *(&v54 + 1);
  v47 = (*(&v54 + 1) | ((*(&v54 + 5) | (BYTE7(v54) << 16)) << 32)) >> 48;
  v46 = *(&v54 + 5);
  v48 = *(&v54 + 1);
  v49 = v55;
  if ((*(&v55 + 1) & 0x8000000000000000) != 0)
  {
    v50 = *(&v55 + 1) & 0x7FFFFFFFFFFFFFFFLL;
    v51 = v56;
    v52 = v57;
    v24 = *(&v56 + 1);
    sub_24B008890(&v43, v42, &qword_27EFCBD30);
    sub_24B10D214();

    v34[2] = v34;
    MEMORY[0x28223BE20](v25);
    v34[1] = &v34[-6];
    v34[-4] = v11;
    v34[-3] = &v53;
    v34[-2] = v10;
    v34[-1] = v24;
    v26 = swift_allocObject();
    v27 = v58;
    v26[5] = v57;
    v26[6] = v27;
    v26[7] = v59[0];
    *(v26 + 121) = *(v59 + 9);
    v28 = v54;
    v26[1] = v53;
    v26[2] = v28;
    v29 = v56;
    v26[3] = v55;
    v26[4] = v29;
    MEMORY[0x28223BE20](v26);
    v34[-2] = sub_24B10E160;
    v34[-1] = v30;
    sub_24B10E184(&v53, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBD38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBD40);
    sub_24B039184(&qword_27EFCBD48, &qword_27EFCBD38);
    sub_24B10E1BC();
    v31 = v35;
    sub_24B2D44C4();

    v32 = v36;
    v33 = v41;
    (*(v36 + 16))(v38, v31, v41);
    swift_storeEnumTagMultiPayload();
    sub_24B039184(&qword_27EFCBCE8, &qword_27EFCBCF0);
    sub_24B039184(&qword_27EFCBCF8, &qword_27EFCBD00);
    sub_24B2D3ED4();
    return (*(v32 + 8))(v31, v33);
  }

  else
  {
    v50 = *(&v55 + 1);
    v51 = v56;
    v52 = v57;
    v12 = *(&v56 + 1);
    sub_24B008890(&v43, v42, &qword_27EFCBD78);
    sub_24B10D214();

    v13 = swift_allocObject();
    v14 = v58;
    *(v13 + 80) = v57;
    *(v13 + 96) = v14;
    *(v13 + 112) = v59[0];
    *(v13 + 121) = *(v59 + 9);
    v15 = v54;
    *(v13 + 16) = v53;
    *(v13 + 32) = v15;
    v16 = v56;
    *(v13 + 48) = v55;
    *(v13 + 64) = v16;
    *(v13 + 144) = v10;
    *(v13 + 152) = v12;
    v34[3] = v12;
    v17 = swift_allocObject();
    v18 = v58;
    v17[5] = v57;
    v17[6] = v18;
    v17[7] = v59[0];
    *(v17 + 121) = *(v59 + 9);
    v19 = v54;
    v17[1] = v53;
    v17[2] = v19;
    v20 = v56;
    v17[3] = v55;
    v17[4] = v20;
    MEMORY[0x28223BE20](v17);
    v34[-2] = sub_24B10E8D0;
    v34[-1] = v21;
    sub_24B10E184(&v53, v42);
    sub_24B10E184(&v53, v42);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBD38);
    sub_24B039184(&qword_27EFCBD48, &qword_27EFCBD38);
    sub_24B2D4D34();

    v22 = v39;
    (*(v4 + 16))(v38, v6, v39);
    swift_storeEnumTagMultiPayload();
    sub_24B039184(&qword_27EFCBCE8, &qword_27EFCBCF0);
    sub_24B039184(&qword_27EFCBCF8, &qword_27EFCBD00);
    sub_24B2D3ED4();

    return (*(v4 + 8))(v6, v22);
  }
}

uint64_t sub_24B1090E4(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  sub_24B2D5694();
  sub_24B2D5684();
  v9 = MEMORY[0x277D85700];
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17[0] = a1[5];
  v18 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8);
  sub_24B2D4CE4();
  v10 = sub_24B2D56D4();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);

  sub_24B10E184(a1, v17);
  v11 = sub_24B2D5684();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v9;
  *(v12 + 32) = a2;
  *(v12 + 40) = a3;
  v13 = a1[5];
  *(v12 + 112) = a1[4];
  *(v12 + 128) = v13;
  *(v12 + 144) = a1[6];
  *(v12 + 153) = *(a1 + 105);
  v14 = a1[1];
  *(v12 + 48) = *a1;
  *(v12 + 64) = v14;
  v15 = a1[3];
  *(v12 + 80) = a1[2];
  *(v12 + 96) = v15;
  sub_24B00A9A4(0, 0, v8, &unk_24B2EA820, v12);
}

uint64_t sub_24B1092F4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a6;
  v6[5] = sub_24B2D5694();
  v6[6] = sub_24B2D5684();
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v6[7] = v8;
  *v8 = v6;
  v8[1] = sub_24B109408;

  return v10();
}

uint64_t sub_24B109408()
{

  v1 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B10E8C8, v1, v0);
}

uint64_t sub_24B109544(void (*a1)(uint64_t))
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
}

uint64_t sub_24B1095FC()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24AFFE0A4();

  sub_24B2D4604();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBD60);
  sub_24B10E254();
  sub_24B2D4F04();
}

uint64_t sub_24B1097D0(uint64_t a1, _OWORD *a2)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = a1;
  v4 = swift_allocObject();
  v5 = a2[5];
  v4[5] = a2[4];
  v4[6] = v5;
  v4[7] = a2[6];
  *(v4 + 121) = *(a2 + 105);
  v6 = a2[1];
  v4[1] = *a2;
  v4[2] = v6;
  v7 = a2[3];
  v4[3] = a2[2];
  v4[4] = v7;

  sub_24B10E184(a2, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBE40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBD70);
  sub_24B039184(&qword_27EFCBE48, &qword_27EFCBE40);
  sub_24B039184(&qword_27EFCBD68, &qword_27EFCBD70);
  sub_24B10E7A8();
  sub_24B2D4EE4();
}

uint64_t sub_24B1099B4(__int128 *a1, _OWORD *a2)
{
  v3 = a1[1];
  v14 = *a1;
  v15 = v3;
  v4 = a1[3];
  v16 = a1[2];
  v17 = v4;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = swift_allocObject();
  v6 = a2[5];
  v5[5] = a2[4];
  v5[6] = v6;
  v5[7] = a2[6];
  *(v5 + 121) = *(a2 + 105);
  v7 = a2[1];
  v5[1] = *a2;
  v5[2] = v7;
  v8 = a2[3];
  v5[3] = a2[2];
  v5[4] = v8;
  v9 = v14;
  v10 = v15;
  v11 = v17;
  v5[11] = v16;
  v5[12] = v11;
  v5[9] = v9;
  v5[10] = v10;
  MEMORY[0x28223BE20](v5);
  sub_24B10E184(a2, v13);
  sub_24B10E078(&v14, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBD88);
  sub_24B10E3A4();
  sub_24B2D4D34();
}

uint64_t sub_24B109B5C(_OWORD *a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v17 - v5;
  sub_24B2D5694();
  sub_24B2D5684();
  v7 = MEMORY[0x277D85700];
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17[0] = a1[5];
  v18 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8);
  sub_24B2D4CE4();
  v8 = sub_24B2D56D4();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_24B10E078(a2, v17);
  sub_24B10E184(a1, v17);
  v9 = sub_24B2D5684();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v7;
  v11 = a2[1];
  *(v10 + 32) = *a2;
  *(v10 + 48) = v11;
  v12 = a2[3];
  *(v10 + 64) = a2[2];
  *(v10 + 80) = v12;
  v13 = a1[5];
  *(v10 + 160) = a1[4];
  *(v10 + 176) = v13;
  *(v10 + 192) = a1[6];
  *(v10 + 201) = *(a1 + 105);
  v14 = a1[1];
  *(v10 + 96) = *a1;
  *(v10 + 112) = v14;
  v15 = a1[3];
  *(v10 + 128) = a1[2];
  *(v10 + 144) = v15;
  sub_24B00A9A4(0, 0, v6, &unk_24B2EA838, v10);
}

uint64_t sub_24B109D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a5;
  v5[5] = sub_24B2D5694();
  v5[6] = sub_24B2D5684();
  v9 = (*(a4 + 48) + **(a4 + 48));
  v7 = swift_task_alloc();
  v5[7] = v7;
  *v7 = v5;
  v7[1] = sub_24B109E7C;

  return v9();
}

uint64_t sub_24B109E7C()
{

  v1 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B109FB8, v1, v0);
}

uint64_t sub_24B109FB8()
{
  v1 = *(v0 + 32);

  *(v0 + 16) = *(v1 + 80);
  *(v0 + 64) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8);
  sub_24B2D4CE4();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B10A050@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1[5];
  v13[6] = a1[4];
  v13[7] = v6;
  v14[0] = a1[6];
  *(v14 + 9) = *(a1 + 105);
  v7 = a1[1];
  v13[2] = *a1;
  v13[3] = v7;
  v8 = a1[3];
  v13[4] = a1[2];
  v13[5] = v8;
  *(v18 + 11) = *(a2 + 27);
  v9 = a2[1];
  v17 = *a2;
  v18[0] = v9;
  v10 = a2[1];
  v12 = *a2;
  v13[0] = v10;
  *(v13 + 11) = *(a2 + 27);
  sub_24B10D2A4(&v17, &v15);
  sub_24B10A17C(&v12, a3);
  v15 = v12;
  v16[0] = v13[0];
  *(v16 + 11) = *(v13 + 11);
  sub_24B10D2DC(&v15);
}

uint64_t sub_24B10A17C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v38 = a2;
  v5 = sub_24B2D3C64();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v35 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBDC8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBDB8);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - v13;
  v15 = a1[1];
  v46 = *a1;
  v47[0] = v15;
  *(v47 + 11) = *(a1 + 27);
  v16 = *(v3 + 80);
  v44[4] = *(v3 + 64);
  v44[5] = v16;
  v45[0] = *(v3 + 96);
  *(v45 + 9) = *(v3 + 105);
  v17 = *(v3 + 16);
  v44[0] = *v3;
  v44[1] = v17;
  v18 = *(v3 + 48);
  v44[2] = *(v3 + 32);
  v44[3] = v18;
  v40 = &v46;
  v39 = &v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBDE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBDF0);
  sub_24B10E524();
  sub_24B10E5DC();
  sub_24B2D4C34();
  v19 = *(v3 + 80);
  v42[4] = *(v3 + 64);
  v42[5] = v19;
  v43[0] = *(v3 + 96);
  *(v43 + 9) = *(v3 + 105);
  v20 = *(v3 + 16);
  v42[0] = *v3;
  v42[1] = v20;
  v21 = *(v3 + 48);
  v42[2] = *(v3 + 32);
  v42[3] = v21;
  if (sub_24B107ED4())
  {
    v22 = 0.0;
  }

  else
  {
    v22 = 1.0;
  }

  (*(v8 + 32))(v14, v10, v7);
  *&v14[*(v12 + 44)] = v22;
  BYTE8(v42[0]) = *(v3 + 104);
  v23 = *(v3 + 96);
  *&v42[0] = v23;
  if (BYTE8(v42[0]) != 1)
  {

    sub_24B2D5924();
    v24 = sub_24B2D42A4();
    sub_24B2D3154();

    v25 = v35;
    sub_24B2D3C54();
    swift_getAtKeyPath();
    sub_24AFF8258(v42, &qword_27EFCBE18);
    (*(v36 + 8))(v25, v37);
    LOBYTE(v23) = v41;
  }

  if (v23)
  {
    if (v23 == 1)
    {
      v26 = sub_24B2D5064();
    }

    else
    {
      v26 = sub_24B2D5084();
    }
  }

  else
  {
    v26 = sub_24B2D5074();
  }

  v28 = v26;
  v29 = v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBD88);
  v31 = v38;
  v32 = v38 + *(v30 + 36);
  sub_24B10B468(v44, v32);
  v33 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBDD8) + 36));
  *v33 = v28;
  v33[1] = v29;
  return sub_24B0391CC(v14, v31, &qword_27EFCBDB8);
}

uint64_t sub_24B10A59C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_24B2D5064();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBD80);
  return sub_24B10A5EC(a1, a2 + *(v5 + 44));
}

uint64_t sub_24B10A5EC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBD88);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v42 = v40 - v6;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBD90);
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v40 - v10;
  sub_24B2D5694();
  v40[1] = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v56[0] = *(a1 + 72);
  *&v49 = v56[0];
  v12 = swift_allocObject();
  v13 = *(a1 + 80);
  v12[5] = *(a1 + 64);
  v12[6] = v13;
  v12[7] = *(a1 + 96);
  *(v12 + 121) = *(a1 + 105);
  v14 = *(a1 + 16);
  v12[1] = *a1;
  v12[2] = v14;
  v15 = *(a1 + 48);
  v12[3] = *(a1 + 32);
  v12[4] = v15;
  sub_24B008890(v56, v54, &qword_27EFCBA50);
  sub_24B10E184(a1, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBA50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBD98);
  sub_24B039184(&qword_27EFCBA58, &qword_27EFCBA50);
  sub_24B10E318();
  sub_24B1032E0();
  v40[0] = v11;
  sub_24B2D4EE4();
  v16 = *(a1 + 80);
  v54[4] = *(a1 + 64);
  v54[5] = v16;
  v55[0] = *(a1 + 96);
  *(v55 + 9) = *(a1 + 105);
  v17 = *(a1 + 16);
  v54[0] = *a1;
  v54[1] = v17;
  v18 = *(a1 + 48);
  v54[2] = *(a1 + 32);
  v54[3] = v18;
  v19 = *a1;
  v20 = *(a1 + 8);
  v22 = *(a1 + 16);
  v21 = *(a1 + 24);
  v23 = *(a1 + 32);
  v24 = *(a1 + 40);
  v26 = *(a1 + 48);
  v25 = *(a1 + 56);
  if (v24 < 0)
  {
    v27 = *(a1 + 64);
    *&v49 = *a1;
    *(&v49 + 1) = v20;
    *&v50[0] = v22;
    *(&v50[0] + 1) = v21;
    *&v50[1] = v23;
    *(&v50[1] + 1) = v24 & 0x7FFFFFFFFFFFFFFFLL;
    v51 = v26;
    v52 = v25;
    v53 = v27;
  }

  else
  {
    *&v49 = *a1;
    *(&v49 + 1) = v20;
    *&v50[0] = v22;
    *(&v50[0] + 1) = v21;
    *&v50[1] = v23;
    *(&v50[1] + 1) = v24;
    v51 = v26;
    v52 = v25;
  }

  v28 = BYTE10(v50[1]);
  v29 = BYTE9(v50[1]);
  sub_24B10D2A4(&v49, &v47);
  v46 = v22 & 1;
  *&v47 = v19;
  *(&v47 + 1) = v20;
  LOBYTE(v48[0]) = v22 & 1;
  *(&v48[0] + 1) = v21;
  *&v48[1] = v23;
  BYTE8(v48[1]) = v24 & 1;
  BYTE9(v48[1]) = v29;
  BYTE10(v48[1]) = v28;
  v30 = v42;
  sub_24B10A17C(&v47, v42);
  v49 = v47;
  v50[0] = v48[0];
  *(v50 + 11) = *(v48 + 11);
  sub_24B10D2DC(&v49);
  v31 = v41;
  v32 = *(v41 + 16);
  v33 = v40[0];
  v34 = v43;
  v32(v8, v40[0], v43);
  v35 = v44;
  sub_24B008890(v30, v44, &qword_27EFCBD88);
  v36 = v45;
  v32(v45, v8, v34);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBDE0);
  sub_24B008890(v35, &v36[*(v37 + 48)], &qword_27EFCBD88);
  sub_24AFF8258(v30, &qword_27EFCBD88);
  v38 = *(v31 + 8);
  v38(v33, v34);
  sub_24AFF8258(v35, &qword_27EFCBD88);
  v38(v8, v34);
}

uint64_t sub_24B10AAAC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBD88);
  MEMORY[0x28223BE20](v5 - 8);
  v25 = v23 - v6;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBD98);
  MEMORY[0x28223BE20](v24);
  v8 = v23 - v7;
  v9 = *(a1 + 48);
  v40 = *(a1 + 32);
  v41 = v9;
  v42 = *(a1 + 64);
  v10 = *(a1 + 16);
  v38 = *a1;
  v39 = v10;
  sub_24B2D5694();
  v23[1] = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = a2[5];
  v31[6] = a2[4];
  v31[7] = v11;
  v32[0] = a2[6];
  *(v32 + 9) = *(a2 + 105);
  v12 = a2[1];
  v31[2] = *a2;
  v31[3] = v12;
  v13 = a2[3];
  v31[4] = a2[2];
  v31[5] = v13;
  v37 = v42;
  v35 = v40;
  v36 = v41;
  v33 = v38;
  v34 = v39;
  v14 = BYTE8(v40);
  if ((*(&v40 + 1) & 0x8000000000000000) != 0)
  {
    *(&v35 + 1) = *(&v40 + 1) & 0x7FFFFFFFFFFFFFFFLL;
    LOBYTE(v16) = BYTE10(v40);
    LOBYTE(v15) = BYTE9(v40);
  }

  else
  {
    v15 = (*(&v40 + 1) >> 8) & 1;
    v16 = (*(&v40 + 1) >> 16) & 1;
  }

  v18 = *(&v34 + 1);
  v17 = v35;
  v19 = v33;
  v20 = v34;
  sub_24B10D2A4(&v33, &v30);
  v29 = v20;
  v27 = v19;
  LOBYTE(v28[0]) = v20;
  *(&v28[0] + 1) = v18;
  *&v28[1] = v17;
  BYTE8(v28[1]) = v14 & 1;
  BYTE9(v28[1]) = v15;
  BYTE10(v28[1]) = v16;
  v21 = v25;
  sub_24B10A17C(&v27, v25);
  v30 = v27;
  v31[0] = v28[0];
  *(v31 + 11) = *(v28 + 11);
  sub_24B10D2DC(&v30);
  sub_24B0391CC(v21, v8, &qword_27EFCBD88);
  *&v8[*(v24 + 36)] = 0;
  sub_24B0391CC(v8, v26, &qword_27EFCBD98);
}

uint64_t sub_24B10AD34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBE08);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v29 = &v25 - v8;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBE28);
  MEMORY[0x28223BE20](v30);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBDE8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - v12;
  sub_24B2D5694();
  v31 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = *a1;
  v15 = a1[1];
  if (a1[2])
  {
    v26 = v13;
    v27 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8C28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24B2DEAD0;

    v17 = sub_24B2D42B4();
    *(inited + 32) = v17;
    v18 = sub_24B2D42D4();
    *(inited + 33) = v18;
    v19 = sub_24B2D42C4();
    sub_24B2D42C4();
    if (sub_24B2D42C4() != v17)
    {
      v19 = sub_24B2D42C4();
    }

    sub_24B2D42C4();
    if (sub_24B2D42C4() != v18)
    {
      v19 = sub_24B2D42C4();
    }

    v28 = a2;
    *v6 = v19;
    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBE30);
    v32 = v14;
    swift_getKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7B90);
    sub_24B039184(&qword_27EFCBE38, &qword_27EFC7B90);
    sub_24B2D4ED4();

    sub_24B10D214();
    v20 = v29;
    sub_24B0391CC(v6, v29, &qword_27EFCBE08);
    sub_24B008890(v20, v10, &qword_27EFCBE08);
    swift_storeEnumTagMultiPayload();
    sub_24B039184(&qword_27EFCBE00, &qword_27EFCBE08);
    v13 = v26;
    sub_24B2D3ED4();
    sub_24AFF8258(v20, &qword_27EFCBE08);
    a2 = v28;
  }

  else
  {
    v32 = *a1;
    v33 = v15;
    sub_24AFFE0A4();

    *v10 = sub_24B2D4604();
    *(v10 + 1) = v21;
    v10[16] = v22 & 1;
    *(v10 + 3) = v23;
    swift_storeEnumTagMultiPayload();
    sub_24B039184(&qword_27EFCBE00, &qword_27EFCBE08);
    sub_24B2D3ED4();
  }

  sub_24B0391CC(v13, a2, &qword_27EFCBDE8);
}

uint64_t sub_24B10B258@<X0>(uint64_t a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24AFFE0A4();

  v2 = sub_24B2D4604();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_24B10B33C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + 32))
  {

    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v4 = sub_24B2D4BE4();
  }

  else
  {

    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_24B10B468@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC94F8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBE20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v15 - v9;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = a1[5];
  v15[4] = a1[4];
  v15[5] = v11;
  v16[0] = a1[6];
  *(v16 + 9) = *(a1 + 105);
  v12 = a1[1];
  v15[0] = *a1;
  v15[1] = v12;
  v13 = a1[3];
  v15[2] = a1[2];
  v15[3] = v13;
  if (sub_24B107ED4())
  {
    sub_24B2D33E4();
    (*(v5 + 32))(v10, v7, v4);
    (*(v5 + 56))(v10, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v10, 1, 1, v4);
  }

  sub_24B0391CC(v10, a2, &qword_27EFCBE20);
}

uint64_t GenericControl.Info.id.getter()
{
  v1 = v0[3];
  v21 = v0[2];
  v22 = v1;
  v23 = *(v0 + 8);
  v2 = v0[1];
  v19 = *v0;
  v20 = v2;
  v3 = DWORD2(v21);
  if ((*(&v21 + 1) & 0x8000000000000000) != 0)
  {
    *(&v21 + 1) &= ~0x8000000000000000;
    LOBYTE(v5) = BYTE2(v3);
    LOBYTE(v4) = BYTE1(v3);
  }

  else
  {
    v4 = (*(&v21 + 1) >> 8) & 1;
    v5 = (*(&v21 + 1) >> 16) & 1;
  }

  v6 = *(&v20 + 1);
  v7 = v21;
  v8 = v19;
  v9 = v20;
  sub_24B10D2A4(&v19, &v12);
  v12 = v8;
  v13 = v9;
  v14 = v6;
  v15 = v7;
  v16 = v3 & 1;
  v17 = v4;
  v18 = v5;
  v10 = GenericControl.Info.Label.id.getter();
  sub_24B10D2DC(&v12);
  return v10;
}

uint64_t GenericControl.Info.Label.id.getter()
{
  v1 = sub_24B2D2504();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = v0[1];
  v7 = *(v0 + 16);
  v18 = *v0;
  v19 = v6;
  v20 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBC80);
  sub_24B2D1A44();
  if (v17)
  {
    return v16;
  }

  v13 = v5;
  v14 = v6;
  v15 = v7;
  sub_24B2D1A54();
  if (v12)
  {
    v11 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7B90);
    sub_24B039184(&qword_27EFC7B98, &qword_27EFC7B90);
    v9 = sub_24B2D5274();

    return v9;
  }

  else
  {
    sub_24B2D24F4();
    v10 = sub_24B2D24B4();
    (*(v2 + 8))(v4, v1);
    return v10;
  }
}

uint64_t GenericControl.Info.hash(into:)(uint64_t a1)
{
  if ((*(v1 + 40) & 0x8000000000000000) == 0)
  {
    return GenericControl.Info.Label.hash(into:)();
  }

  v3 = *(v1 + 64);
  GenericControl.Info.Label.hash(into:)();
  sub_24B2D5404();

  return sub_24B10BB20(a1, v3);
}

uint64_t GenericControl.Info.Label.hash(into:)()
{
  v1 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBC80);
  sub_24B10E00C(&qword_27EFCBC88);
  sub_24B2D1A64();
  sub_24B2D6104();
  if (v1)
  {
    sub_24B2D5404();
  }

  sub_24B2D6104();
  sub_24B2D6104();
  return sub_24B2D6104();
}

uint64_t sub_24B10BB20(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x24C23C8D0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = v5[1];
      v12[0] = *v5;
      v12[1] = v6;
      v7 = v5[3];
      v13 = v5[2];
      v14 = v7;
      v8 = v13;
      v10 = v12[0];
      v11 = v6;
      sub_24B10E078(v12, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBC80);
      sub_24B10E00C(&qword_27EFCBC88);
      sub_24B2D1A64();
      sub_24B2D6104();
      if (v8)
      {
        sub_24B2D5404();
      }

      sub_24B2D6104();
      sub_24B2D6104();
      sub_24B2D6104();
      result = sub_24B10E0B0(v12);
      v5 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

__n128 GenericControl.Info.MenuOption.init(label:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v4;
  result = *(a1 + 27);
  *(a4 + 27) = result;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
  return result;
}

uint64_t GenericControl.Info.MenuOption.hash(into:)()
{
  v1 = v0[1];
  v4 = *v0;
  v5[0] = v1;
  *(v5 + 11) = *(v0 + 27);
  sub_24B10D2A4(&v4, &v6);
  GenericControl.Info.Label.hash(into:)();
  v2 = v0[1];
  v6 = *v0;
  v7[0] = v2;
  *(v7 + 11) = *(v0 + 27);
  return sub_24B10D2DC(&v6);
}

uint64_t GenericControl.Info.MenuOption.hashValue.getter()
{
  v1 = v0[1];
  v5 = *v0;
  v6[0] = v1;
  *(v6 + 11) = *(v0 + 27);
  sub_24B2D60E4();
  v3 = v5;
  *v4 = v6[0];
  *&v4[11] = *(v6 + 11);
  sub_24B10D2A4(&v5, &v7);
  GenericControl.Info.Label.hash(into:)();
  v7 = v3;
  v8[0] = *v4;
  *(v8 + 11) = *&v4[11];
  sub_24B10D2DC(&v7);
  return sub_24B2D6124();
}

uint64_t sub_24B10BD9C()
{
  v1 = v0[1];
  v5 = *v0;
  v6[0] = v1;
  *(v6 + 11) = *(v0 + 27);
  sub_24B2D60E4();
  v3 = v5;
  *v4 = v6[0];
  *&v4[11] = *(v6 + 11);
  sub_24B10D2A4(&v5, &v7);
  GenericControl.Info.Label.hash(into:)();
  v7 = v3;
  v8[0] = *v4;
  *(v8 + 11) = *&v4[11];
  sub_24B10D2DC(&v7);
  return sub_24B2D6124();
}

uint64_t sub_24B10BE30()
{
  v1 = v0[1];
  v4 = *v0;
  v5[0] = v1;
  *(v5 + 11) = *(v0 + 27);
  sub_24B10D2A4(&v4, &v6);
  GenericControl.Info.Label.hash(into:)();
  v2 = v0[1];
  v6 = *v0;
  v7[0] = v2;
  *(v7 + 11) = *(v0 + 27);
  return sub_24B10D2DC(&v6);
}

uint64_t sub_24B10BE94()
{
  v1 = v0[1];
  v5 = *v0;
  v6[0] = v1;
  *(v6 + 11) = *(v0 + 27);
  sub_24B2D60E4();
  v3 = v5;
  *v4 = v6[0];
  *&v4[11] = *(v6 + 11);
  sub_24B10D2A4(&v5, &v7);
  GenericControl.Info.Label.hash(into:)();
  v7 = v3;
  v8[0] = *v4;
  *(v8 + 11) = *&v4[11];
  sub_24B10D2DC(&v7);
  return sub_24B2D6124();
}

uint64_t sub_24B10BF28@<X0>(uint64_t *a1@<X8>)
{
  result = GenericControl.Info.Label.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double GenericControl.Info.Label.init(title:symbol:forceStyleProminent:forceInProgressState:forceDisabledState:)@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, char a3@<W4>, char a4@<W5>, char a5@<W6>, uint64_t a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7B90);
  sub_24B2D1AA4();
  result = *&v13;
  *a6 = v13;
  *(a6 + 16) = v14;
  *(a6 + 24) = a1;
  *(a6 + 32) = a2;
  *(a6 + 40) = a3;
  *(a6 + 41) = a4;
  *(a6 + 42) = a5;
  return result;
}

double GenericControl.Info.Label.init(titlesToFit:symbol:forceStyleProminent:forceInProgressState:forceDisabledState:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, char a4@<W4>, char a5@<W5>, uint64_t a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7B90);
  sub_24B2D1A94();
  result = *&v13;
  *a6 = v13;
  *(a6 + 16) = v14;
  *(a6 + 24) = a1;
  *(a6 + 32) = a2;
  *(a6 + 40) = a3;
  *(a6 + 41) = a4;
  *(a6 + 42) = a5;
  return result;
}

uint64_t GenericControl.Info.Label.hashValue.getter()
{
  sub_24B2D60E4();
  GenericControl.Info.Label.hash(into:)();
  return sub_24B2D6124();
}

uint64_t sub_24B10C0CC()
{
  sub_24B2D60E4();
  GenericControl.Info.Label.hash(into:)();
  return sub_24B2D6124();
}

uint64_t sub_24B10C110()
{
  sub_24B2D60E4();
  GenericControl.Info.Label.hash(into:)();
  return sub_24B2D6124();
}

uint64_t GenericControl.Info.hashValue.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 64);
  sub_24B2D60E4();
  GenericControl.Info.Label.hash(into:)();
  if (v1 < 0)
  {
    sub_24B2D5404();
    sub_24B10BB20(v4, v2);
  }

  return sub_24B2D6124();
}

uint64_t sub_24B10C22C(uint64_t a1)
{
  if ((*(v1 + 40) & 0x8000000000000000) == 0)
  {
    return GenericControl.Info.Label.hash(into:)();
  }

  v3 = *(v1 + 64);
  GenericControl.Info.Label.hash(into:)();
  sub_24B2D5404();

  return sub_24B10BB20(a1, v3);
}

uint64_t sub_24B10C2FC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 64);
  sub_24B2D60E4();
  GenericControl.Info.Label.hash(into:)();
  if (v1 < 0)
  {
    sub_24B2D5404();
    sub_24B10BB20(v4, v2);
  }

  return sub_24B2D6124();
}

uint64_t sub_24B10C3D8@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v25 = v1[2];
  v26 = v3;
  v27 = *(v1 + 8);
  v4 = v1[1];
  v23 = *v1;
  v24 = v4;
  v5 = DWORD2(v25);
  if ((*(&v25 + 1) & 0x8000000000000000) != 0)
  {
    *(&v25 + 1) &= ~0x8000000000000000;
    LOBYTE(v7) = BYTE2(v5);
    LOBYTE(v6) = BYTE1(v5);
  }

  else
  {
    v6 = (*(&v25 + 1) >> 8) & 1;
    v7 = (*(&v25 + 1) >> 16) & 1;
  }

  v8 = *(&v24 + 1);
  v9 = v25;
  v10 = v23;
  v11 = v24;
  sub_24B10D2A4(&v23, &v16);
  v16 = v10;
  v17 = v11;
  v18 = v8;
  v19 = v9;
  v20 = v5 & 1;
  v21 = v6;
  v22 = v7;
  v12 = GenericControl.Info.Label.id.getter();
  v14 = v13;
  result = sub_24B10D2DC(&v16);
  *a1 = v12;
  a1[1] = v14;
  return result;
}

double GenericControl.Info.Label.init(stringLiteral:)@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7B90);
  sub_24B2D1AA4();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 39) = 0;
  return result;
}

double sub_24B10C530@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7B90);
  sub_24B2D1AA4();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 39) = 0;
  return result;
}

uint64_t static GenericControl.Info.mockButton(isProminent:isInProgress:isDisabled:)@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7B90);
  result = sub_24B2D1AA4();
  *a4 = v11;
  *(a4 + 16) = v12 & 1;
  *(a4 + 24) = xmmword_24B2E9E40;
  v9 = 0x10000;
  if ((a3 & 1) == 0)
  {
    v9 = 0;
  }

  v10 = 256;
  if ((a2 & 1) == 0)
  {
    v10 = 0;
  }

  *(a4 + 40) = v10 & 0xFFFFFFFFFFFFFFFELL | a1 & 1 | v9;
  *(a4 + 48) = &unk_24B2E9F20;
  *(a4 + 56) = 0;
  return result;
}

uint64_t sub_24B10C6DC()
{
  v1 = sub_24B2D5D64();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_24B2D5694();
  v0[5] = sub_24B2D5684();
  v3 = sub_24B2D5604();
  v0[6] = v3;
  v0[7] = v2;

  return MEMORY[0x2822009F8](sub_24B10C7CC, v3, v2);
}

uint64_t sub_24B10C7CC()
{
  sub_24B2D6084();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_24B10C898;

  return sub_24B09A030(3000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_24B10C898()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[4];
  v5 = v2[3];
  v6 = v2[2];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[6];
    v8 = v3[7];
    v9 = sub_24B10E8C4;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[6];
    v8 = v3[7];
    v9 = sub_24B10CA2C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_24B10CA2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B10CA94()
{
  v1 = sub_24B2D5D64();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_24B2D5694();
  v0[5] = sub_24B2D5684();
  v3 = sub_24B2D5604();
  v0[6] = v3;
  v0[7] = v2;

  return MEMORY[0x2822009F8](sub_24B10CB84, v3, v2);
}

uint64_t sub_24B10CB84()
{
  sub_24B2D6084();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_24B10CC50;

  return sub_24B09A030(3000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_24B10CC50()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[4];
  v5 = v2[3];
  v6 = v2[2];
  if (v0)
  {
  }

  (*(v5 + 8))(v4, v6);
  v7 = v3[6];
  v8 = v3[7];

  return MEMORY[0x2822009F8](sub_24B10E8C4, v7, v8);
}

uint64_t sub_24B10CDE8@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7B90);
  sub_24B2D1AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC80B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24B2DEAD0;
  sub_24B2D1AA4();
  *(v6 + 32) = v12;
  *(v6 + 48) = v13;
  *(v6 + 56) = xmmword_24B2E9E50;
  *(v6 + 72) = 0;
  *(v6 + 74) = 0;
  *(v6 + 80) = &unk_24B2E9F30;
  *(v6 + 88) = 0;
  result = sub_24B2D1AA4();
  *(v6 + 96) = v12;
  *(v6 + 112) = v13;
  *(v6 + 120) = xmmword_24B2E9E60;
  *(v6 + 136) = 0;
  *(v6 + 138) = 0;
  *(v6 + 144) = &unk_24B2E9F38;
  *(v6 + 152) = 0;
  *a4 = v12;
  *(a4 + 16) = v13 & 1;
  *(a4 + 24) = xmmword_24B2E9E40;
  v8 = 0x8000000000000000;
  if (a3)
  {
    v8 = 0x8000000000010000;
  }

  v9 = 256;
  if ((a2 & 1) == 0)
  {
    v9 = 0;
  }

  *(a4 + 40) = v9 & 0xFFFFFFFFFFFFFFFELL | a1 & 1 | v8;
  *(a4 + 48) = 0xD00000000000001ALL;
  *(a4 + 56) = 0x800000024B2DB850;
  *(a4 + 64) = v6;
  return result;
}

uint64_t EnvironmentValues.externalIsLoading.getter()
{
  sub_24B10D71C();
  sub_24B2D3C74();
  return v1;
}

uint64_t sub_24B10D03C@<X0>(_BYTE *a1@<X8>)
{
  sub_24B10D71C();
  result = sub_24B2D3C74();
  *a1 = v3;
  return result;
}

uint64_t (*EnvironmentValues.externalIsLoading.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_24B10D71C();
  sub_24B2D3C74();
  *(a1 + 16) = *(a1 + 17);
  return sub_24B10D17C;
}

uint64_t sub_24B10D1B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B2D3B84();
  *a1 = result;
  return result;
}

uint64_t sub_24B10D220@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B2D3BF4();
  *a1 = result & 1;
  return result;
}

BOOL _s12FindMyUICore14GenericControlV4InfoO10MenuOptionV2eeoiySbAG_AGtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v8 = *a1;
  v9[0] = v2;
  *(v9 + 11) = *(a1 + 27);
  v3 = a2[1];
  v10 = *a2;
  v11[0] = v3;
  *(v11 + 11) = *(a2 + 27);
  sub_24B2D60E4();
  v14 = v8;
  v15[0] = v9[0];
  *(v15 + 11) = *(v9 + 11);
  sub_24B10D2A4(&v8, &v12);
  GenericControl.Info.Label.hash(into:)();
  v12 = v14;
  v13[0] = v15[0];
  *(v13 + 11) = *(v15 + 11);
  sub_24B10D2DC(&v12);
  v4 = sub_24B2D6124();
  sub_24B2D60E4();
  v6 = v10;
  *v7 = v11[0];
  *&v7[11] = *(v11 + 11);
  sub_24B10D2A4(&v10, &v14);
  GenericControl.Info.Label.hash(into:)();
  v14 = v6;
  v15[0] = *v7;
  *(v15 + 11) = *&v7[11];
  sub_24B10D2DC(&v14);
  return v4 == sub_24B2D6124();
}

uint64_t _s12FindMyUICore14GenericControlV4InfoO5LabelV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 41);
  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 41);
  v12 = *(a2 + 42);
  v13 = *(a1 + 42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7B90);
  sub_24B10E00C(&qword_27EFCBD10);
  if ((sub_24B2D1A74() & 1) == 0)
  {
    return 0;
  }

  if (!v3)
  {
    result = 0;
    if (v6)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (!v6)
  {
    return 0;
  }

  if (v2 == v7 && v3 == v6)
  {
    result = 0;
    if (v4 != v8)
    {
      return result;
    }

    goto LABEL_13;
  }

  v11 = sub_24B2D6004();
  result = 0;
  if ((v11 & 1) == 0)
  {
    return result;
  }

LABEL_12:
  if ((v4 ^ v8))
  {
    return result;
  }

LABEL_13:
  if (((v5 ^ v9) & 1) == 0)
  {
    return v13 ^ v12 ^ 1u;
  }

  return result;
}

BOOL _s12FindMyUICore14GenericControlV4InfoO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[8];
  v9 = *(a2 + 40);
  v12 = *(a2 + 64);
  sub_24B2D60E4();
  v13[0] = v3;
  v13[1] = v2;
  v13[2] = v4;
  v13[3] = v5;
  v13[4] = v7;
  v14 = v6;
  v15 = BYTE2(v6);
  GenericControl.Info.Label.hash(into:)();
  if (v6 < 0)
  {
    sub_24B2D5404();
    sub_24B10BB20(v16, v8);
  }

  v10 = sub_24B2D6124();
  sub_24B2D60E4();
  GenericControl.Info.Label.hash(into:)();
  if (v9 < 0)
  {
    sub_24B2D5404();
    sub_24B10BB20(v13, v12);
  }

  return v10 == sub_24B2D6124();
}

unint64_t sub_24B10D71C()
{
  result = qword_27EFCBC90;
  if (!qword_27EFCBC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBC90);
  }

  return result;
}

unint64_t sub_24B10D774()
{
  result = qword_27EFCBC98;
  if (!qword_27EFCBC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBC98);
  }

  return result;
}

unint64_t sub_24B10D7CC()
{
  result = qword_27EFCBCA0;
  if (!qword_27EFCBCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBCA0);
  }

  return result;
}

unint64_t sub_24B10D824()
{
  result = qword_27EFCBCA8;
  if (!qword_27EFCBCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBCA8);
  }

  return result;
}

unint64_t sub_24B10D898()
{
  result = qword_27EFCBCB0;
  if (!qword_27EFCBCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBCB0);
  }

  return result;
}

unint64_t sub_24B10D8FC()
{
  result = qword_27EFCBCB8;
  if (!qword_27EFCBCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBCB8);
  }

  return result;
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_24B10D9AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_24B10D9FC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 120) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 121) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 2 * -a2;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      return result;
    }

    *(a1 + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B10DA94(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40) & 0x10101 | (a2 << 63);
  *(result + 16) &= 1uLL;
  *(result + 40) = v2;
  return result;
}

uint64_t sub_24B10DABC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B10DB04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy43_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24B10DB78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 43))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24B10DBD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 43) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 43) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_24B10DC48()
{
  result = qword_27EFCBCC0;
  if (!qword_27EFCBCC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCBC78);
    sub_24B10DCD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBCC0);
  }

  return result;
}

unint64_t sub_24B10DCD4()
{
  result = qword_27EFCBCC8;
  if (!qword_27EFCBCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCBC70);
    sub_24B10DD8C();
    sub_24B039184(&qword_27EFC9A78, &qword_27EFC9A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBCC8);
  }

  return result;
}

unint64_t sub_24B10DD8C()
{
  result = qword_27EFCBCD0;
  if (!qword_27EFCBCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCBC68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCBCD8);
    sub_24B2D4174();
    sub_24B10DE6C();
    sub_24B10DF50();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBCD0);
  }

  return result;
}

unint64_t sub_24B10DE6C()
{
  result = qword_27EFCBCE0;
  if (!qword_27EFCBCE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCBCD8);
    sub_24B039184(&qword_27EFCBCE8, &qword_27EFCBCF0);
    sub_24B039184(&qword_27EFCBCF8, &qword_27EFCBD00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBCE0);
  }

  return result;
}

unint64_t sub_24B10DF50()
{
  result = qword_27EFC8ED0;
  if (!qword_27EFC8ED0)
  {
    sub_24B2D4174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFC8ED0);
  }

  return result;
}

unint64_t sub_24B10DFB8()
{
  result = qword_27EFCBD08;
  if (!qword_27EFCBD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBD08);
  }

  return result;
}

uint64_t sub_24B10E00C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFC7B90);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B10E0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 < 0)
  {
    sub_24B10D214();
  }

  else
  {
    sub_24B10D214();
  }
}

unint64_t sub_24B10E1BC()
{
  result = qword_27EFCBD50;
  if (!qword_27EFCBD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCBD40);
    sub_24B10E254();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBD50);
  }

  return result;
}

unint64_t sub_24B10E254()
{
  result = qword_27EFCBD58;
  if (!qword_27EFCBD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCBD60);
    sub_24B039184(&qword_27EFCBD68, &qword_27EFCBD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBD58);
  }

  return result;
}

unint64_t sub_24B10E318()
{
  result = qword_27EFCBDA0;
  if (!qword_27EFCBDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCBD98);
    sub_24B10E3A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBDA0);
  }

  return result;
}

unint64_t sub_24B10E3A4()
{
  result = qword_27EFCBDA8;
  if (!qword_27EFCBDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCBD88);
    sub_24B10E45C();
    sub_24B039184(&qword_27EFCBDD0, &qword_27EFCBDD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBDA8);
  }

  return result;
}

unint64_t sub_24B10E45C()
{
  result = qword_27EFCBDB0;
  if (!qword_27EFCBDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCBDB8);
    sub_24B039184(&qword_27EFCBDC0, &qword_27EFCBDC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBDB0);
  }

  return result;
}

unint64_t sub_24B10E524()
{
  result = qword_27EFCBDF8;
  if (!qword_27EFCBDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCBDE8);
    sub_24B039184(&qword_27EFCBE00, &qword_27EFCBE08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBDF8);
  }

  return result;
}

unint64_t sub_24B10E5DC()
{
  result = qword_27EFCBE10;
  if (!qword_27EFCBE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCBDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBE10);
  }

  return result;
}

uint64_t sub_24B10E658(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFFDE44;

  return sub_24B1092F4(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t objectdestroy_31Tm_0()
{
  sub_24B10E0EC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  sub_24AFEFDB8(*(v0 + 112), *(v0 + 120));
  sub_24AFEFDB8(*(v0 + 128), *(v0 + 136));

  return MEMORY[0x2821FE8E8](v0, 137, 7);
}

unint64_t sub_24B10E7A8()
{
  result = qword_27EFCBE50;
  if (!qword_27EFCBE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBE50);
  }

  return result;
}

uint64_t sub_24B10E810(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AFFD370;

  return sub_24B109D70(a1, v4, v5, v1 + 32, v1 + 96);
}

uint64_t Icon.AvatarInfo.hash(into:)()
{
  v1 = sub_24B2D1494();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB688);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24B0FA56C(v0, &v9 - v6);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    return sub_24B2D6104();
  }

  (*(v2 + 32))(v4, v7, v1);
  sub_24B2D6104();
  sub_24B110310(&qword_27EFCBE58, MEMORY[0x277D08B20]);
  sub_24B2D5254();
  return (*(v2 + 8))(v4, v1);
}

uint64_t Icon.AvatarInfo.hashValue.getter()
{
  v1 = v0;
  v2 = sub_24B2D1494();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB688);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v10 - v7;
  sub_24B2D60E4();
  sub_24B0FA56C(v1, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_24B2D6104();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_24B2D6104();
    sub_24B110310(&qword_27EFCBE58, MEMORY[0x277D08B20]);
    sub_24B2D5254();
    (*(v3 + 8))(v5, v2);
  }

  return sub_24B2D6124();
}

uint64_t sub_24B10ECA4()
{
  v1 = sub_24B2D1494();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB688);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24B0FA56C(v0, &v9 - v6);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    return sub_24B2D6104();
  }

  (*(v2 + 32))(v4, v7, v1);
  sub_24B2D6104();
  sub_24B110310(&qword_27EFCBE58, MEMORY[0x277D08B20]);
  sub_24B2D5254();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_24B10EE68()
{
  v1 = v0;
  v2 = sub_24B2D1494();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB688);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v10 - v7;
  sub_24B2D60E4();
  sub_24B0FA56C(v1, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_24B2D6104();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_24B2D6104();
    sub_24B110310(&qword_27EFCBE58, MEMORY[0x277D08B20]);
    sub_24B2D5254();
    (*(v3 + 8))(v5, v2);
  }

  return sub_24B2D6124();
}

uint64_t static Icon.ImageInfo.== infix(_:_:)(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      sub_24B10FCA0();
      v4 = v3;
      v5 = v2;
      v6 = sub_24B2D5A34();

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

void Icon.ImageInfo.hash(into:)()
{
  v1 = *v0;
  if (*v0)
  {
    sub_24B2D6104();
    v2 = v1;
    sub_24B2D5A44();
  }

  else
  {
    sub_24B2D6104();
  }
}

uint64_t Icon.ImageInfo.hashValue.getter()
{
  v1 = *v0;
  sub_24B2D60E4();
  sub_24B2D6104();
  if (v1)
  {
    v2 = v1;
    sub_24B2D5A44();
  }

  return sub_24B2D6124();
}

uint64_t sub_24B10F1CC()
{
  v1 = *v0;
  sub_24B2D60E4();
  sub_24B2D6104();
  if (v1)
  {
    v2 = v1;
    sub_24B2D5A44();
  }

  return sub_24B2D6124();
}

void sub_24B10F238()
{
  v1 = *v0;
  if (*v0)
  {
    sub_24B2D6104();
    v2 = v1;
    sub_24B2D5A44();
  }

  else
  {
    sub_24B2D6104();
  }
}

uint64_t sub_24B10F2C8()
{
  v1 = *v0;
  sub_24B2D60E4();
  sub_24B2D6104();
  if (v1)
  {
    v2 = v1;
    sub_24B2D5A44();
  }

  return sub_24B2D6124();
}

uint64_t sub_24B10F330(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      sub_24B10FCA0();
      v4 = v3;
      v5 = v2;
      v6 = sub_24B2D5A34();

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

void Icon.hash(into:)(uint64_t a1)
{
  v29 = a1;
  v1 = sub_24B2D1D34();
  v27 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24B2D1D74();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24B2D1494();
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB688);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - v11;
  v13 = type metadata accessor for Icon.AvatarInfo(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Icon(0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24B1102AC(v28, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v21 = v25;
      (*(v25 + 32))(v6, v18, v4);
      MEMORY[0x24C23C8D0](2);
      sub_24B110310(&qword_27EFCB050, MEMORY[0x277D08E08]);
      sub_24B2D5254();
      (*(v21 + 8))(v6, v4);
    }

    else
    {
      v23 = v27;
      (*(v27 + 32))(v3, v18, v1);
      MEMORY[0x24C23C8D0](3);
      sub_24B110310(&qword_27EFCB240, MEMORY[0x277D08DF0]);
      sub_24B2D5254();
      (*(v23 + 8))(v3, v1);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v22 = *v18;
    MEMORY[0x24C23C8D0](1);
    sub_24B2D6104();
    if (v22)
    {
      v22 = v22;
      sub_24B2D5A44();
    }

    sub_24B2D6104();
  }

  else
  {
    sub_24B110358(v18, v15);
    MEMORY[0x24C23C8D0](0);
    sub_24B0FA56C(v15, v12);
    v20 = v26;
    if ((*(v26 + 48))(v12, 1, v7) == 1)
    {
      sub_24B2D6104();
    }

    else
    {
      (*(v20 + 32))(v9, v12, v7);
      sub_24B2D6104();
      sub_24B110310(&qword_27EFCBE58, MEMORY[0x277D08B20]);
      sub_24B2D5254();
      (*(v20 + 8))(v9, v7);
    }

    sub_24B11074C(v15, type metadata accessor for Icon.AvatarInfo);
  }
}

uint64_t Icon.hashValue.getter()
{
  sub_24B2D60E4();
  Icon.hash(into:)(v1);
  return sub_24B2D6124();
}

uint64_t sub_24B10F930()
{
  sub_24B2D60E4();
  Icon.hash(into:)(v1);
  return sub_24B2D6124();
}

uint64_t sub_24B10F974()
{
  sub_24B2D60E4();
  Icon.hash(into:)(v1);
  return sub_24B2D6124();
}

BOOL _s12FindMyUICore4IconO10AvatarInfoV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D1494();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB688);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBEB8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_24B0FA56C(a1, &v20 - v12);
  sub_24B0FA56C(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_24B0FA56C(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_24B110310(&qword_27EFCBEC0, MEMORY[0x277D08B20]);
      v18 = sub_24B2D52A4();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_24AFF8258(v13, &qword_27EFCB688);
      return (v18 & 1) != 0;
    }

    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_24AFF8258(v13, &qword_27EFCBEB8);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_24AFF8258(v13, &qword_27EFCB688);
  return 1;
}

unint64_t sub_24B10FCA0()
{
  result = qword_27EFCBE60;
  if (!qword_27EFCBE60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EFCBE60);
  }

  return result;
}

uint64_t _s12FindMyUICore4IconO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v3 = sub_24B2D1D34();
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x28223BE20](v3);
  v45 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B2D1D74();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Icon.AvatarInfo(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Icon(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v45 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBEB0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v45 - v24;
  v27 = &v45 + *(v26 + 56) - v24;
  sub_24B1102AC(a1, &v45 - v24);
  sub_24B1102AC(v50, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_24B1102AC(v25, v16);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v46 + 8))(v16, v47);
        goto LABEL_18;
      }

      v30 = v46;
      v29 = v47;
      (*(v46 + 32))(v7, v27, v47);
      MyUICore4IconO10AvatarInfoV2eeoiySbAE_AEtFZ_0 = sub_24B2D1D44();
      v32 = *(v30 + 8);
      v32(v7, v29);
      v32(v16, v29);
    }

    else
    {
      sub_24B1102AC(v25, v13);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        (*(v48 + 8))(v13, v49);
        goto LABEL_18;
      }

      v41 = v48;
      v40 = v49;
      v42 = v45;
      (*(v48 + 32))(v45, v27, v49);
      MyUICore4IconO10AvatarInfoV2eeoiySbAE_AEtFZ_0 = MEMORY[0x24C2384A0](v13, v42);
      v43 = *(v41 + 8);
      v43(v42, v40);
      v43(v13, v40);
    }

LABEL_21:
    sub_24B11074C(v25, type metadata accessor for Icon);
    return MyUICore4IconO10AvatarInfoV2eeoiySbAE_AEtFZ_0 & 1;
  }

  if (EnumCaseMultiPayload)
  {
    sub_24B1102AC(v25, v19);
    v33 = *v19;
    v34 = v19[8];
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      goto LABEL_18;
    }

    v35 = *v27;
    v36 = v27[8];
    if (v33)
    {
      if (v35)
      {
        sub_24B10FCA0();
        v37 = v35;
        v38 = v33;
        v39 = sub_24B2D5A34();

        if ((v39 & 1) == 0)
        {
          goto LABEL_27;
        }

LABEL_24:
        sub_24B11074C(v25, type metadata accessor for Icon);
        MyUICore4IconO10AvatarInfoV2eeoiySbAE_AEtFZ_0 = v34 ^ v36 ^ 1;
        return MyUICore4IconO10AvatarInfoV2eeoiySbAE_AEtFZ_0 & 1;
      }

      v35 = v33;
    }

    else if (!v35)
    {
      goto LABEL_24;
    }

LABEL_27:
    sub_24B11074C(v25, type metadata accessor for Icon);
    goto LABEL_19;
  }

  sub_24B1102AC(v25, v22);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_24B110358(v27, v10);
    MyUICore4IconO10AvatarInfoV2eeoiySbAE_AEtFZ_0 = _s12FindMyUICore4IconO10AvatarInfoV2eeoiySbAE_AEtFZ_0(v22, v10);
    sub_24B11074C(v10, type metadata accessor for Icon.AvatarInfo);
    sub_24B11074C(v22, type metadata accessor for Icon.AvatarInfo);
    goto LABEL_21;
  }

  sub_24B11074C(v22, type metadata accessor for Icon.AvatarInfo);
LABEL_18:
  sub_24AFF8258(v25, &qword_27EFCBEB0);
LABEL_19:
  MyUICore4IconO10AvatarInfoV2eeoiySbAE_AEtFZ_0 = 0;
  return MyUICore4IconO10AvatarInfoV2eeoiySbAE_AEtFZ_0 & 1;
}

uint64_t sub_24B1102AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Icon(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B110310(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B110358(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Icon.AvatarInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B110408()
{
  result = qword_27EFCBE70;
  if (!qword_27EFCBE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBE70);
  }

  return result;
}

void sub_24B1104A4()
{
  type metadata accessor for Icon.AvatarInfo(319);
  if (v0 <= 0x3F)
  {
    sub_24B110540();
    if (v1 <= 0x3F)
    {
      sub_24B2D1D74();
      if (v2 <= 0x3F)
      {
        sub_24B2D1D34();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_24B110540()
{
  if (!qword_27EFCBE90)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EFCBE90);
    }
  }
}

void sub_24B1105CC()
{
  sub_24B110638();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24B110638()
{
  if (!qword_27EFCBEA8)
  {
    sub_24B2D1494();
    v0 = sub_24B2D5A84();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFCBEA8);
    }
  }
}

uint64_t sub_24B110690(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24B1106EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24B11074C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t IconAndPlatter.init(icon:shape:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_24B110C20(a1, a3, type metadata accessor for Icon);
  result = type metadata accessor for IconAndPlatter(0);
  *(a3 + *(result + 20)) = v4;
  return result;
}

__n128 IconAndPlatter.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for IconAndPlatter(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_24B1122BC(v2, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IconAndPlatter);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_24B110C20(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for IconAndPlatter);
  if (qword_27EFC7698 != -1)
  {
    swift_once();
  }

  v9 = qword_27EFCB8E8;
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 1;
  v20 = 0;
  v11 = qword_27EFC7678;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_27EFCB8C8;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 1;
  v14 = v20;
  if (qword_27EFC7680 != -1)
  {
    swift_once();
  }

  v18 = qword_27EFCB8D0;

  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 1;
  *&v21 = sub_24B110C88;
  *(&v21 + 1) = v8;
  v22.n128_u64[0] = 0x3FF0000000000000;
  v22.n128_u16[4] = v14;
  *&v23 = v9;
  *(&v23 + 1) = sub_24B110D08;
  *&v24 = v10;
  *(&v24 + 1) = v12;
  *&v25 = sub_24B0FFB00;
  *(&v25 + 1) = v13;
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v35 = v21;
  v36 = v22;
  v26[0] = sub_24B110C88;
  v26[1] = v8;
  v26[2] = 0x3FF0000000000000;
  v27 = v14;
  v28 = 0;
  v29 = v9;
  v30 = sub_24B110D08;
  v31 = v10;
  v32 = v12;
  v33 = sub_24B0FFB00;
  v34 = v13;
  sub_24B008890(&v21, &v19, &qword_27EFCBEC8);
  sub_24AFF8258(v26, &qword_27EFCBEC8);
  v16 = v38;
  *(a1 + 32) = v37;
  *(a1 + 48) = v16;
  *(a1 + 64) = v39;
  result = v36;
  *a1 = v35;
  *(a1 + 16) = result;
  *(a1 + 80) = v18;
  *(a1 + 88) = sub_24B0FFBCC;
  *(a1 + 96) = v15;
  return result;
}

uint64_t sub_24B110B64()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D3514();
  sub_24B110D30(v0);
}

uint64_t sub_24B110C20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B110C88()
{
  type metadata accessor for IconAndPlatter(0);

  return sub_24B110B64();
}

uint64_t sub_24B110D30(double a1)
{
  v3 = type metadata accessor for IconView();
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBFA0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBFA8);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for Icon(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B1122BC(v1, v14, type metadata accessor for Icon);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v16 = *v14;
    v17 = v14[8];

    if ((v17 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_24B112324(v14, type metadata accessor for Icon);
LABEL_5:
      sub_24B1122BC(v1, v5, type metadata accessor for Icon);
      *&v5[*(v3 + 20)] = 0;
      sub_24B1122BC(v5, v8, type metadata accessor for IconView);
      swift_storeEnumTagMultiPayload();
      sub_24B112384();
      sub_24B112410();
      sub_24B2D3ED4();
      return sub_24B112324(v5, type metadata accessor for IconView);
    }

    sub_24B112324(v14, type metadata accessor for Icon);
  }

  sub_24B1122BC(v1, v11, type metadata accessor for Icon);
  *&v11[*(v3 + 20)] = 0;
  v19 = *(v1 + *(type metadata accessor for IconAndPlatter(0) + 20));
  v20 = &v11[*(v9 + 36)];
  *v20 = a1;
  v20[8] = v19;
  sub_24B008890(v11, v8, &qword_27EFCBFA8);
  swift_storeEnumTagMultiPayload();
  sub_24B112384();
  sub_24B112410();
  sub_24B2D3ED4();
  return sub_24AFF8258(v11, &qword_27EFCBFA8);
}

uint64_t sub_24B11109C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBF28);
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBF30);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBF38);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBF40);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v23 - v13);
  v15 = *(v1 + 8);
  *v14 = sub_24B2D5044();
  v14[1] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBF48);
  sub_24B1113C8(a1, v14 + *(v17 + 44));
  if (v15)
  {
    sub_24B008890(v14, v5, &qword_27EFCBF40);
    v18 = &v5[*(v3 + 36)];
    *v18 = xmmword_24B2EA9F0;
    *(v18 + 2) = 0x3FF0CCCCCCCCCCCDLL;
    *(v18 + 12) = 256;
    sub_24B008890(v5, v8, &qword_27EFCBF28);
    swift_storeEnumTagMultiPayload();
    sub_24B1120D4();
    sub_24B1121B8();
    sub_24B2D3ED4();
    v19 = v5;
    v20 = &qword_27EFCBF28;
  }

  else
  {
    sub_24B008890(v14, v11, &qword_27EFCBF40);
    v21 = &v11[*(v9 + 36)];
    *v21 = 0;
    *(v21 + 4) = 256;
    sub_24B008890(v11, v8, &qword_27EFCBF38);
    swift_storeEnumTagMultiPayload();
    sub_24B1120D4();
    sub_24B1121B8();
    sub_24B2D3ED4();
    v19 = v11;
    v20 = &qword_27EFCBF38;
  }

  sub_24AFF8258(v19, v20);
  return sub_24AFF8258(v14, &qword_27EFCBF40);
}

uint64_t sub_24B1113C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBF88);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = type metadata accessor for IconAndPlatter.PlatterBackground(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v29 - v14);
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v15 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB490);
  swift_storeEnumTagMultiPayload();
  v16 = sub_24B2D42F4();
  sub_24B2D32F4();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBF90);
  (*(*(v25 - 8) + 16))(v9, a1, v25);
  v26 = &v9[*(v4 + 36)];
  *v26 = v16;
  *(v26 + 1) = v18;
  *(v26 + 2) = v20;
  *(v26 + 3) = v22;
  *(v26 + 4) = v24;
  v26[40] = 0;
  sub_24B1122BC(v15, v12, type metadata accessor for IconAndPlatter.PlatterBackground);
  sub_24B008890(v9, v6, &qword_27EFCBF88);
  sub_24B1122BC(v12, a2, type metadata accessor for IconAndPlatter.PlatterBackground);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBF98);
  sub_24B008890(v6, a2 + *(v27 + 48), &qword_27EFCBF88);
  sub_24AFF8258(v9, &qword_27EFCBF88);
  sub_24B112324(v15, type metadata accessor for IconAndPlatter.PlatterBackground);
  sub_24AFF8258(v6, &qword_27EFCBF88);
  sub_24B112324(v12, type metadata accessor for IconAndPlatter.PlatterBackground);
}

uint64_t sub_24B1116F4@<X0>(uint64_t *a1@<X8>)
{
  v52 = a1;
  v1 = sub_24B2D3354();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v42 - v6;
  v8 = sub_24B2D50F4();
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  v45 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBFF0);
  MEMORY[0x28223BE20](v44);
  v51 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v43 = (v42 - v12);
  MEMORY[0x28223BE20](v13);
  v50 = v42 - v14;
  v15 = sub_24B2D3084();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D5694();
  v49 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27EFC7858 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v15, qword_27EFE47C8);
  v20 = v16 + 16;
  v21 = *(v16 + 16);
  v21(v18, v19, v15);
  v48 = sub_24B2D4B84();
  if (qword_27EFC7850 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v15, qword_27EFE47B0);
  v21(v18, v22, v15);
  v23 = sub_24B2D4B84();
  v42[1] = v20;
  sub_24B163CC8(v7);
  (*(v2 + 104))(v4, *MEMORY[0x277CDF3C0], v1);
  v24 = sub_24B2D3334();
  v25 = *(v2 + 8);
  v25(v4, v1);
  v25(v7, v1);
  v27 = v46;
  v26 = v47;
  v28 = MEMORY[0x277CE13D8];
  if ((v24 & 1) == 0)
  {
    v28 = MEMORY[0x277CE13D0];
  }

  v29 = v45;
  (*(v46 + 104))(v45, *v28, v47);
  v30 = v43;
  (*(v27 + 32))(v43 + *(v44 + 36), v29, v26);
  *v30 = v23;
  v31 = v50;
  sub_24B112650(v30, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBFF8);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_24B2DEAD0;
  if (qword_27EFC7868 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v15, qword_27EFE47F8);
  v21(v18, v33, v15);
  *(v32 + 32) = sub_24B2D4B84();
  if (qword_27EFC7860 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v15, qword_27EFE47E0);
  v21(v18, v34, v15);
  *(v32 + 40) = sub_24B2D4B84();
  sub_24B2D5164();
  sub_24B2D5174();
  MEMORY[0x24C23B790](v32);
  sub_24B2D3634();
  v35 = v51;
  sub_24B008890(v31, v51, &qword_27EFCBFF0);
  v37 = v52;
  v36 = v53;
  *v52 = v48;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC000);
  sub_24B008890(v35, v37 + *(v38 + 48), &qword_27EFCBFF0);
  v39 = v37 + *(v38 + 64);
  *v39 = v36;
  v40 = v54;
  *(v39 + 24) = v55;
  *(v39 + 8) = v40;

  sub_24AFF8258(v31, &qword_27EFCBFF0);

  sub_24AFF8258(v35, &qword_27EFCBFF0);
}

uint64_t sub_24B111D98@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_24B2D5064();
  a1[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBFE8);
  return sub_24B1116F4((a1 + *(v3 + 44)));
}

uint64_t sub_24B111E10()
{
  result = type metadata accessor for Icon(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24B111EB4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B111F68()
{
  result = qword_27EFCBF08;
  if (!qword_27EFCBF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCBF10);
    sub_24B039184(&qword_27EFCBF18, &qword_27EFCBF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBF08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IconAndPlatter.Platter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for IconAndPlatter.Platter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_24B1120D4()
{
  result = qword_27EFCBF50;
  if (!qword_27EFCBF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCBF38);
    sub_24B039184(&qword_27EFCBF58, &qword_27EFCBF40);
    sub_24B039184(&qword_27EFCBF60, &qword_27EFCBF68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBF50);
  }

  return result;
}

unint64_t sub_24B1121B8()
{
  result = qword_27EFCBF70;
  if (!qword_27EFCBF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCBF28);
    sub_24B039184(&qword_27EFCBF58, &qword_27EFCBF40);
    sub_24B039184(&qword_27EFCBF78, &qword_27EFCBF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBF70);
  }

  return result;
}

uint64_t sub_24B1122BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B112324(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24B112384()
{
  result = qword_27EFCBFB0;
  if (!qword_27EFCBFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCBFA8);
    sub_24B112410();
    sub_24B112468();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBFB0);
  }

  return result;
}

unint64_t sub_24B112410()
{
  result = qword_27EFCBFB8;
  if (!qword_27EFCBFB8)
  {
    type metadata accessor for IconView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBFB8);
  }

  return result;
}

unint64_t sub_24B112468()
{
  result = qword_27EFCBFC0;
  if (!qword_27EFCBFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBFC0);
  }

  return result;
}

void sub_24B1124E4()
{
  sub_24B112550();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24B112550()
{
  if (!qword_27EFCB4D0)
  {
    sub_24B2D3354();
    v0 = sub_24B2D3374();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFCB4D0);
    }
  }
}

unint64_t sub_24B1125A8()
{
  result = qword_27EFCBFD8;
  if (!qword_27EFCBFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCBFE0);
    sub_24B1120D4();
    sub_24B1121B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCBFD8);
  }

  return result;
}

uint64_t sub_24B112650(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBFF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void IconAndPlatter.RoundedRectangleShape.init(proportionalCornerRadius:insetAmount:insetSkew:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
}

uint64_t IconAndPlatter.Shape.hashValue.getter()
{
  v1 = *v0;
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](v1);
  return sub_24B2D6124();
}

void IconAndPlatter.RoundedRectangleShape.inset(by:)(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2[2];
  *a1 = *v2;
  *(a1 + 8) = a2;
  *(a1 + 16) = v3;
}

double IconAndPlatter.RoundedRectangleShape.path(in:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v10 = sub_24B2D3DC4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetWidth(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetHeight(v21);
  (*(v11 + 104))(v13, *MEMORY[0x277CE0118], v10);
  sub_24B2D44E4();
  result = *&v17;
  v15 = v18;
  *a1 = v17;
  *(a1 + 16) = v15;
  *(a1 + 32) = v19;
  return result;
}

void sub_24B112918(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2[2];
  *a1 = *v2;
  *(a1 + 8) = a2;
  *(a1 + 16) = v3;
}

double sub_24B11292C@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  IconAndPlatter.RoundedRectangleShape.path(in:)(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t (*sub_24B11298C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24B2D3284();
  return sub_24B0E2CE8;
}

uint64_t sub_24B112A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B112C34();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24B112A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B112C34();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24B112ADC(uint64_t a1)
{
  v2 = sub_24B112C34();

  return MEMORY[0x282133738](a1, v2);
}

double IconAndPlatter.CircleShape.path(in:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  CGRectGetWidth(*&a2);
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetHeight(v14);
  sub_24B2D4544();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

unint64_t sub_24B112BDC()
{
  result = qword_27EFCC018;
  if (!qword_27EFCC018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC018);
  }

  return result;
}

unint64_t sub_24B112C34()
{
  result = qword_27EFCC020;
  if (!qword_27EFCC020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC020);
  }

  return result;
}

unint64_t sub_24B112CA8()
{
  result = qword_27EFCC028;
  if (!qword_27EFCC028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC028);
  }

  return result;
}

unint64_t sub_24B112D00()
{
  result = qword_27EFCC030;
  if (!qword_27EFCC030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC030);
  }

  return result;
}

unint64_t sub_24B112D54()
{
  result = qword_27EFCC038;
  if (!qword_27EFCC038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC038);
  }

  return result;
}

unint64_t sub_24B112DDC()
{
  result = qword_27EFCC050;
  if (!qword_27EFCC050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC050);
  }

  return result;
}

unint64_t sub_24B112E58()
{
  result = qword_27EFCC058;
  if (!qword_27EFCC058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC058);
  }

  return result;
}

unint64_t sub_24B112EB0()
{
  result = qword_27EFCC060;
  if (!qword_27EFCC060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC060);
  }

  return result;
}

double sub_24B112F04@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  CGRectGetWidth(*&a2);
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetHeight(v14);
  sub_24B2D4544();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

uint64_t (*sub_24B112FAC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24B2D3284();
  return sub_24B0E1228;
}

uint64_t sub_24B113064(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B1130B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B112DDC();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24B11311C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24B112DDC();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24B113180(uint64_t a1)
{
  v2 = sub_24B112DDC();

  return MEMORY[0x282133738](a1, v2);
}

uint64_t _s21RoundedRectangleShapeVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s21RoundedRectangleShapeVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

unint64_t sub_24B113248()
{
  result = qword_27EFCC078;
  if (!qword_27EFCC078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC078);
  }

  return result;
}

unint64_t sub_24B11329C()
{
  result = qword_27EFCC080;
  if (!qword_27EFCC080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC080);
  }

  return result;
}

uint64_t type metadata accessor for IconView()
{
  result = qword_27EFCC090;
  if (!qword_27EFCC090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IconView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_24B113444(a1);
  type metadata accessor for IconView();
  v2 = sub_24B2D5134();
  v3 = sub_24B2D4114();
  sub_24B2D5184();
  v5 = v4;
  v7 = v6;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC088);
  v9 = a1 + *(result + 36);
  *v9 = 0x776569566E6F6349;
  *(v9 + 8) = 0xE800000000000000;
  *(v9 + 16) = v2;
  *(v9 + 24) = v3;
  *(v9 + 32) = v5;
  *(v9 + 40) = v7;
  *(v9 + 48) = 1;
  return result;
}

uint64_t sub_24B113444@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v76 = type metadata accessor for ServerImageView();
  MEMORY[0x28223BE20](v76);
  v68 = &v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_24B2D1D34();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC130);
  MEMORY[0x28223BE20](v72);
  v74 = &v58 - v3;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC108);
  MEMORY[0x28223BE20](v81);
  v75 = &v58 - v4;
  v73 = type metadata accessor for EmojiImageView();
  MEMORY[0x28223BE20](v73);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_24B2D1D74();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC138);
  MEMORY[0x28223BE20](v8 - 8);
  v59 = &v58 - v9;
  v10 = sub_24B2D4BD4();
  v58 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC0F8);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v14 = &v58 - v13;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC0E8);
  MEMORY[0x28223BE20](v71);
  v62 = &v58 - v15;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC140);
  MEMORY[0x28223BE20](v78);
  v80 = &v58 - v16;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC148);
  MEMORY[0x28223BE20](v70);
  v18 = &v58 - v17;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC0C0);
  MEMORY[0x28223BE20](v79);
  v20 = &v58 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB688);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v58 - v22;
  v24 = type metadata accessor for Icon.AvatarInfo(0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Icon(0);
  MEMORY[0x28223BE20](v27);
  v29 = (&v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24B1149D0(v77, v29, type metadata accessor for Icon);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v32 = v64;
      v33 = v63;
      v34 = v65;
      (*(v64 + 32))(v63, v29, v65);
      (*(v32 + 16))(v6, v33, v34);
      (*(v32 + 56))(v6, 0, 1, v34);
      v35 = v73;
      v6[*(v73 + 20)] = 0;
      v36 = &v6[v35[6]];
      *v36 = swift_getKeyPath();
      v36[8] = 0;
      v37 = &v6[v35[7]];
      *v37 = swift_getKeyPath();
      v37[8] = 0;
      v38 = v35[8];
      *&v6[v38] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBAA8);
      swift_storeEnumTagMultiPayload();
      v39 = v35[9];
      v83 = 0xF000000000000007;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBB08);
      sub_24B2D4CC4();
      *&v6[v39] = v84;
      sub_24B1149D0(v6, v74, type metadata accessor for EmojiImageView);
      swift_storeEnumTagMultiPayload();
      sub_24B114924(&qword_27EFCC110, type metadata accessor for EmojiImageView);
      sub_24B114924(&qword_27EFCC118, type metadata accessor for ServerImageView);
      v40 = v75;
      sub_24B2D3ED4();
      sub_24B008890(v40, v80, &qword_27EFCC108);
      swift_storeEnumTagMultiPayload();
      sub_24B1145A4();
      sub_24B114838();
      sub_24B2D3ED4();
      sub_24AFF8258(v40, &qword_27EFCC108);
      sub_24B114AA0(v6, type metadata accessor for EmojiImageView);
      return (*(v32 + 8))(v33, v34);
    }

    else
    {
      v50 = v66;
      v49 = v67;
      v51 = v69;
      (*(v67 + 32))(v66, v29, v69);
      v52 = v68;
      (*(v49 + 16))(v68, v50, v51);
      (*(v49 + 56))(v52, 0, 1, v51);
      v53 = v76;
      *(v52 + *(v76 + 20)) = 0;
      v54 = v52 + v53[6];
      *v54 = swift_getKeyPath();
      *(v54 + 8) = 0;
      v55 = v52 + v53[7];
      *v55 = swift_getKeyPath();
      *(v55 + 8) = 0;
      v56 = v53[8];
      v83 = 0xF000000000000007;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC150);
      sub_24B2D4CC4();
      *(v52 + v56) = v84;
      sub_24B1149D0(v52, v74, type metadata accessor for ServerImageView);
      swift_storeEnumTagMultiPayload();
      sub_24B114924(&qword_27EFCC110, type metadata accessor for EmojiImageView);
      sub_24B114924(&qword_27EFCC118, type metadata accessor for ServerImageView);
      v57 = v75;
      sub_24B2D3ED4();
      sub_24B008890(v57, v80, &qword_27EFCC108);
      swift_storeEnumTagMultiPayload();
      sub_24B1145A4();
      sub_24B114838();
      sub_24B2D3ED4();
      sub_24AFF8258(v57, &qword_27EFCC108);
      sub_24B114AA0(v52, type metadata accessor for ServerImageView);
      return (*(v49 + 8))(v50, v51);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v41 = 1;
    if (*v29)
    {
      v42 = *v29;
      sub_24B2D4BB4();
      v43 = v58;
      (*(v58 + 104))(v12, *MEMORY[0x277CE0FE0], v10);
      sub_24B2D4C14();

      (*(v43 + 8))(v12, v10);
      v44 = v59;
      sub_24B2D51A4();
      v45 = sub_24B2D51B4();
      (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
      sub_24B2D4C04();

      sub_24AFF8258(v44, &qword_27EFCC138);
      v46 = v61;
      v47 = &v14[*(v61 + 36)];
      *v47 = 0;
      *(v47 + 4) = 1;
      v48 = v62;
      sub_24AFE1030(v14, v62);
      v41 = 0;
    }

    else
    {
      v42 = 0;
      v48 = v62;
      v46 = v61;
    }

    (*(v60 + 56))(v48, v41, 1, v46);
    sub_24B008890(v48, v18, &qword_27EFCC0E8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC0D0);
    sub_24B114630();
    sub_24B114710();
    sub_24B2D3ED4();
    sub_24B008890(v20, v80, &qword_27EFCC0C0);
    swift_storeEnumTagMultiPayload();
    sub_24B1145A4();
    sub_24B114838();
    sub_24B2D3ED4();

    sub_24AFF8258(v20, &qword_27EFCC0C0);
    return sub_24AFF8258(v48, &qword_27EFCC0E8);
  }

  else
  {
    sub_24B114A38(v29, v26, type metadata accessor for Icon.AvatarInfo);
    sub_24B008890(v26, v23, &qword_27EFCB688);
    AvatarView.init(contact:)(v23, &v84);
    *v18 = v84;
    *(v18 + 1) = 0;
    *(v18 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC0D0);
    sub_24B114630();
    sub_24B114710();
    sub_24B2D3ED4();
    sub_24B008890(v20, v80, &qword_27EFCC0C0);
    swift_storeEnumTagMultiPayload();
    sub_24B1145A4();
    sub_24B114838();
    sub_24B2D3ED4();
    sub_24AFF8258(v20, &qword_27EFCC0C0);
    return sub_24B114AA0(v26, type metadata accessor for Icon.AvatarInfo);
  }
}

uint64_t sub_24B11434C@<X0>(uint64_t a1@<X8>)
{
  sub_24B113444(a1);
  v2 = sub_24B2D5134();
  v3 = sub_24B2D4114();
  sub_24B2D5184();
  v5 = v4;
  v7 = v6;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC088);
  v9 = a1 + *(result + 36);
  *v9 = 0x776569566E6F6349;
  *(v9 + 8) = 0xE800000000000000;
  *(v9 + 16) = v2;
  *(v9 + 24) = v3;
  *(v9 + 32) = v5;
  *(v9 + 40) = v7;
  *(v9 + 48) = 1;
  return result;
}

uint64_t sub_24B114418()
{
  result = type metadata accessor for Icon(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24B11448C()
{
  result = qword_27EFCC0A0;
  if (!qword_27EFCC0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC088);
    sub_24B114518();
    sub_24B11496C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC0A0);
  }

  return result;
}

unint64_t sub_24B114518()
{
  result = qword_27EFCC0A8;
  if (!qword_27EFCC0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC0B0);
    sub_24B1145A4();
    sub_24B114838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC0A8);
  }

  return result;
}

unint64_t sub_24B1145A4()
{
  result = qword_27EFCC0B8;
  if (!qword_27EFCC0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC0C0);
    sub_24B114630();
    sub_24B114710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC0B8);
  }

  return result;
}

unint64_t sub_24B114630()
{
  result = qword_27EFCC0C8;
  if (!qword_27EFCC0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC0D0);
    sub_24B1146BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC0C8);
  }

  return result;
}

unint64_t sub_24B1146BC()
{
  result = qword_27EFCC0D8;
  if (!qword_27EFCC0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC0D8);
  }

  return result;
}

unint64_t sub_24B114710()
{
  result = qword_27EFCC0E0;
  if (!qword_27EFCC0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC0E8);
    sub_24B114794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC0E0);
  }

  return result;
}

unint64_t sub_24B114794()
{
  result = qword_27EFCC0F0;
  if (!qword_27EFCC0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC0F8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC0F0);
  }

  return result;
}

unint64_t sub_24B114838()
{
  result = qword_27EFCC100;
  if (!qword_27EFCC100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC108);
    sub_24B114924(&qword_27EFCC110, type metadata accessor for EmojiImageView);
    sub_24B114924(&qword_27EFCC118, type metadata accessor for ServerImageView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC100);
  }

  return result;
}

uint64_t sub_24B114924(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24B11496C()
{
  result = qword_27EFCC120;
  if (!qword_27EFCC120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC120);
  }

  return result;
}

uint64_t sub_24B1149D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B114A38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B114AA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PinCollection.init(pinWidth:style:)@<X0>(uint64_t a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  v5 = type metadata accessor for PinCollection(0);
  return sub_24B118974(a1, a2 + *(v5 + 20), type metadata accessor for PinCollection.Style);
}

double sub_24B114B94()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC190);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - v6;
  v8 = type metadata accessor for PinCollection.Style(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - v15;
  sub_24B118DD4(v1, &v41 - v15, type metadata accessor for PinCollection.Style);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E0);
    v18 = *(v17 + 48);
    v42 = v1;
    v19 = *(v17 + 64);

    v20 = &v16[v18];
    v21 = v4;
    sub_24B0391CC(v20, v7, &qword_27EFCC190);
    sub_24B0391CC(&v16[v19], v4, &qword_27EFCC190);
    v22 = type metadata accessor for PinCollection.PinInfo(0);
    v23 = *(*(v22 - 8) + 48);
    v24 = 1.0;
    if (v23(v7, 1, v22) == 1)
    {
      v25 = 0.0;
    }

    else
    {
      v25 = 1.0;
    }

    if (v23(v21, 1, v22) == 1)
    {
      v26 = 0.0;
    }

    else
    {
      v26 = 1.0;
    }

    v27 = v25 + v26;
    sub_24B118DD4(v42, v10, type metadata accessor for PinCollection.Style);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = *(v17 + 48);
      v29 = *(v17 + 64);

      sub_24AFF8258(&v10[v29], &qword_27EFCC190);
      sub_24AFF8258(&v10[v28], &qword_27EFCC190);
    }

    else
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E8);
      v35 = *(v34 + 48);
      sub_24B118D74(&v10[*(v34 + 64)], type metadata accessor for PinCollection.PinInfo);
      sub_24B118D74(&v10[v35], type metadata accessor for PinCollection.PinInfo);
      v24 = 1.28888889;
    }

    sub_24B118D74(v10, type metadata accessor for PinCollection.PinInfo);
    v33 = v27 * 0.611111111 + v24;
    sub_24AFF8258(v21, &qword_27EFCC190);
    sub_24AFF8258(v7, &qword_27EFCC190);
  }

  else
  {
    sub_24B118DD4(v1, v13, type metadata accessor for PinCollection.Style);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E0);
      v31 = *(v30 + 48);
      v32 = *(v30 + 64);

      sub_24AFF8258(&v13[v32], &qword_27EFCC190);
      sub_24AFF8258(&v13[v31], &qword_27EFCC190);
      v33 = 2.33333333;
    }

    else
    {
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E8);
      v37 = *(v36 + 48);
      sub_24B118D74(&v13[*(v36 + 64)], type metadata accessor for PinCollection.PinInfo);
      sub_24B118D74(&v13[v37], type metadata accessor for PinCollection.PinInfo);
      v33 = 2.62222222;
    }

    sub_24B118D74(v13, type metadata accessor for PinCollection.PinInfo);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E8);
    v39 = *(v38 + 48);
    sub_24B118D74(&v16[*(v38 + 64)], type metadata accessor for PinCollection.PinInfo);
    sub_24B118D74(&v16[v39], type metadata accessor for PinCollection.PinInfo);
  }

  sub_24B118D74(v16, type metadata accessor for PinCollection.PinInfo);
  return v33;
}

uint64_t PinCollection.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24B2D3CD4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC158);
  return sub_24B1150EC(v1, a1 + *(v3 + 44));
}

uint64_t sub_24B1150EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = type metadata accessor for PinCollection.Style(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1C0);
  MEMORY[0x28223BE20](v6);
  v60 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v61 = (&v55 - v9);
  sub_24B2D5694();
  v59 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = sub_24B2D5044();
  v11 = v61;
  *v61 = v10;
  v11[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1C8);
  sub_24B1156FC(a1, v11 + *(v13 + 44));
  v14 = *(type metadata accessor for PinCollection(0) + 20);
  sub_24B114B94();
  sub_24B2D5064();
  sub_24B2D3494();
  v15 = (v11 + *(v6 + 36));
  v16 = v86;
  *v15 = v85;
  v15[1] = v16;
  v15[2] = v87;
  sub_24B118DD4(a1 + v14, v5, type metadata accessor for PinCollection.Style);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v18 = type metadata accessor for PinCollection.Style;
  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_7;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E0);
  v20 = v19[12];
  v21 = v19[16];
  v22 = &v5[v19[20]];
  v23 = *(v22 + 1);
  if (!v23)
  {
    sub_24AFF8258(&v5[v21], &qword_27EFCC190);
    sub_24AFF8258(&v5[v20], &qword_27EFCC190);
    v18 = type metadata accessor for PinCollection.PinInfo;
LABEL_7:
    sub_24B118D74(v5, v18);
    sub_24B118D5C(&v77);
    goto LABEL_8;
  }

  v24 = *v22;
  sub_24AFF8258(&v5[v21], &qword_27EFCC190);
  sub_24AFF8258(&v5[v20], &qword_27EFCC190);
  sub_24B118D74(v5, type metadata accessor for PinCollection.PinInfo);
  *&v77 = v24;
  *(&v77 + 1) = v23;
  sub_24AFFE0A4();
  v25 = sub_24B2D4604();
  v27 = v26;
  v29 = v28;
  sub_24B2D4374();
  v30 = sub_24B2D45C4();
  v55 = v32;
  v56 = v31;
  v34 = v33;

  sub_24B083C34(v25, v27, v29 & 1);

  LODWORD(v77) = sub_24B2D3FB4();
  v35 = v56;
  v57 = sub_24B2D4594();
  v37 = v36;
  LOBYTE(v27) = v38;
  v40 = v39;
  sub_24B083C34(v30, v35, v34 & 1);

  KeyPath = swift_getKeyPath();
  v42 = swift_getKeyPath();
  LOBYTE(v77) = v27 & 1;
  LOBYTE(v72) = 0;
  sub_24B2D5064();
  sub_24B2D3494();
  *&v62[39] = v90;
  *&v62[23] = v89;
  *&v62[7] = v88;
  *&v72 = v57;
  *(&v72 + 1) = v37;
  LOBYTE(v73) = v27 & 1;
  *(&v73 + 1) = v40;
  *&v74 = KeyPath;
  *(&v74 + 1) = 0x3FC999999999999ALL;
  *&v75 = v42;
  *(&v75 + 1) = 1;
  LOBYTE(v76[0]) = 0;
  *&v76[3] = *(&v90 + 1);
  *(&v76[3] + 1) = 0xBFF0000000000000;
  *(&v76[2] + 1) = *&v62[32];
  *(&v76[1] + 1) = *&v62[16];
  *(v76 + 1) = *v62;
  nullsub_1(&v72);
  v81 = v76[0];
  v82 = v76[1];
  v83 = v76[2];
  v84 = v76[3];
  v77 = v72;
  v78 = v73;
  v79 = v74;
  v80 = v75;
LABEL_8:
  v43 = v60;
  v44 = v61;
  sub_24B008890(v61, v60, &qword_27EFCC1C0);
  v67 = v81;
  v68 = v82;
  v69 = v83;
  v70 = v84;
  v63 = v77;
  v64 = v78;
  v65 = v79;
  v66 = v80;
  v45 = v58;
  sub_24B008890(v43, v58, &qword_27EFCC1C0);
  v46 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1D0) + 48));
  v47 = v67;
  v48 = v68;
  v71[4] = v67;
  v71[5] = v68;
  v49 = v69;
  v50 = v70;
  v71[6] = v69;
  v71[7] = v70;
  v51 = v63;
  v52 = v64;
  v71[0] = v63;
  v71[1] = v64;
  v53 = v66;
  v71[2] = v65;
  v71[3] = v66;
  v46[2] = v65;
  v46[3] = v53;
  *v46 = v51;
  v46[1] = v52;
  v46[6] = v49;
  v46[7] = v50;
  v46[4] = v47;
  v46[5] = v48;
  sub_24B008890(v71, &v72, &qword_27EFCC1D8);
  sub_24AFF8258(v44, &qword_27EFCC1C0);
  v76[0] = v67;
  v76[1] = v68;
  v76[2] = v69;
  v76[3] = v70;
  v72 = v63;
  v73 = v64;
  v74 = v65;
  v75 = v66;
  sub_24AFF8258(&v72, &qword_27EFCC1D8);
  sub_24AFF8258(v43, &qword_27EFCC1C0);
}

uint64_t sub_24B1156FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v289 = a1;
  v281 = a2;
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1F0);
  MEMORY[0x28223BE20](v275);
  v277 = &v245[-v2];
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1F8);
  MEMORY[0x28223BE20](v276);
  v280 = &v245[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v278 = &v245[-v5];
  MEMORY[0x28223BE20](v6);
  v279 = &v245[-v7];
  v8 = type metadata accessor for Icon(0);
  MEMORY[0x28223BE20](v8 - 8);
  v286 = &v245[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v259 = &v245[-v11];
  MEMORY[0x28223BE20](v12);
  v256 = &v245[-v13];
  v285 = type metadata accessor for AnnotationPin();
  MEMORY[0x28223BE20](v285);
  v269 = &v245[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v251 = &v245[-v16];
  MEMORY[0x28223BE20](v17);
  v19 = &v245[-v18];
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC200);
  MEMORY[0x28223BE20](v287);
  v271 = &v245[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v262 = &v245[-v22];
  MEMORY[0x28223BE20](v23);
  v249 = &v245[-v24];
  v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC208);
  v290 = *(v284 - 8);
  MEMORY[0x28223BE20](v284);
  v253 = &v245[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v252 = &v245[-v27];
  MEMORY[0x28223BE20](v28);
  v248 = &v245[-v29];
  MEMORY[0x28223BE20](v30);
  v247 = &v245[-v31];
  v295 = type metadata accessor for PinCollection.Style(0);
  MEMORY[0x28223BE20](v295);
  v274 = &v245[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v33);
  v35 = &v245[-v34];
  MEMORY[0x28223BE20](v36);
  v268 = &v245[-v37];
  MEMORY[0x28223BE20](v38);
  v267 = &v245[-v39];
  MEMORY[0x28223BE20](v40);
  v266 = &v245[-v41];
  MEMORY[0x28223BE20](v42);
  v263 = &v245[-v43];
  MEMORY[0x28223BE20](v44);
  v250 = &v245[-v45];
  MEMORY[0x28223BE20](v46);
  v283 = &v245[-v47];
  MEMORY[0x28223BE20](v48);
  v50 = &v245[-v49];
  MEMORY[0x28223BE20](v51);
  v53 = &v245[-v52];
  MEMORY[0x28223BE20](v54);
  v56 = &v245[-v55];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC190);
  MEMORY[0x28223BE20](v57 - 8);
  v257 = &v245[-((v58 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v59);
  v61 = &v245[-v60];
  v291 = type metadata accessor for PinCollection.PinInfo(0);
  v282 = *(v291 - 8);
  MEMORY[0x28223BE20](v291);
  v63 = &v245[-((v62 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v64);
  v265 = &v245[-v65];
  MEMORY[0x28223BE20](v66);
  v260 = &v245[-v67];
  MEMORY[0x28223BE20](v68);
  v261 = &v245[-v69];
  MEMORY[0x28223BE20](v70);
  v258 = &v245[-v71];
  MEMORY[0x28223BE20](v72);
  v255 = &v245[-v73];
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC210);
  MEMORY[0x28223BE20](v74 - 8);
  v273 = &v245[-((v75 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v76);
  v272 = &v245[-v77];
  MEMORY[0x28223BE20](v78);
  v293 = &v245[-v79];
  MEMORY[0x28223BE20](v80);
  v288 = &v245[-v81];
  sub_24B2D5694();
  v270 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v294 = *(type metadata accessor for PinCollection(0) + 20);
  sub_24B118DD4(v289 + v294, v56, type metadata accessor for PinCollection.Style);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v292 = v35;
  v264 = v63;
  if (EnumCaseMultiPayload == 1)
  {
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E0);
    v84 = *(v83 + 48);
    v85 = *(v83 + 64);

    sub_24B0391CC(&v56[v85], v61, &qword_27EFCC190);
    sub_24AFF8258(&v56[v84], &qword_27EFCC190);
    v86 = v291;
    v87 = v282;
  }

  else
  {
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E8);
    v89 = *(v88 + 48);
    sub_24B118974(&v56[*(v88 + 64)], v61, type metadata accessor for PinCollection.PinInfo);
    v87 = v282;
    v86 = v291;
    (*(v282 + 56))(v61, 0, 1, v291);
    sub_24B118D74(&v56[v89], type metadata accessor for PinCollection.PinInfo);
  }

  sub_24B118D74(v56, type metadata accessor for PinCollection.PinInfo);
  v254 = *(v87 + 48);
  if (v254(v61, 1, v86) == 1)
  {
    sub_24AFF8258(v61, &qword_27EFCC190);
    v90 = 1;
    v91 = v288;
    v92 = v289;
    v93 = v284;
  }

  else
  {
    v94 = v255;
    sub_24B118974(v61, v255, type metadata accessor for PinCollection.PinInfo);
    sub_24B118DD4(v94, v256, type metadata accessor for Icon);
    v246 = v94[*(v86 + 20)];
    v92 = v289;
    sub_24B118DD4(v289 + v294, v53, type metadata accessor for PinCollection.Style);
    v95 = swift_getEnumCaseMultiPayload();
    if (v95 == 1)
    {
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E0);
      v99 = *(v98 + 48);
      v100 = *(v98 + 64);

      v101 = &v53[v100];
      v92 = v289;
      sub_24AFF8258(v101, &qword_27EFCC190);
      sub_24AFF8258(&v53[v99], &qword_27EFCC190);
    }

    else
    {
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E8);
      v97 = *(v96 + 48);
      sub_24B118D74(&v53[*(v96 + 64)], type metadata accessor for PinCollection.PinInfo);
      sub_24B118D74(&v53[v97], type metadata accessor for PinCollection.PinInfo);
    }

    sub_24B118D74(v53, type metadata accessor for PinCollection.PinInfo);
    v102 = v285;
    v103 = *(v285 + 28);
    v104 = sub_24B2D1BB4();
    (*(*(v104 - 8) + 56))(&v19[v103], 1, 1, v104);
    v105 = v102[9];
    *&v19[v105] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB490);
    swift_storeEnumTagMultiPayload();
    v106 = &v19[v102[10]];
    *v106 = swift_getKeyPath();
    v106[8] = 0;
    sub_24B118974(v256, v19, type metadata accessor for Icon);
    v19[v102[5]] = v246;
    v19[v102[6]] = v95 != 1;
    v107 = &v19[v102[8]];
    *v107 = 0;
    *(v107 + 4) = 1;
    v107[10] = 1;
    *(v107 + 2) = 0;
    v107[24] = 0x80;
    *(v107 + 2) = 0u;
    *(v107 + 3) = 0u;
    *(v107 + 4) = 0u;
    *(v107 + 10) = 0;
    *(v107 + 88) = xmmword_24B2E8DF0;
    *(v107 + 104) = xmmword_24B2E8240;
    sub_24B2D5064();
    sub_24B2D3494();
    v108 = v249;
    sub_24B118974(v19, v249, type metadata accessor for AnnotationPin);
    v109 = &v108[*(v287 + 36)];
    v110 = v297;
    *v109 = v296;
    v109[1] = v110;
    v109[2] = v298;
    sub_24B2D5084();
    sub_24B2D3904();
    sub_24B118D74(v255, type metadata accessor for PinCollection.PinInfo);
    v111 = v248;
    sub_24B0391CC(v108, v248, &qword_27EFCC200);
    v93 = v284;
    v112 = &v111[*(v284 + 36)];
    v113 = v304;
    v112[4] = v303;
    v112[5] = v113;
    v112[6] = v305;
    v114 = v300;
    *v112 = v299;
    v112[1] = v114;
    v115 = v302;
    v112[2] = v301;
    v112[3] = v115;
    v116 = v111;
    v117 = v247;
    sub_24B0391CC(v116, v247, &qword_27EFCC208);
    v118 = v117;
    v91 = v288;
    sub_24B0391CC(v118, v288, &qword_27EFCC208);
    v90 = 0;
    v86 = v291;
  }

  v119 = *(v290 + 56);
  v290 += 56;
  v119(v91, v90, 1, v93);
  v120 = v294;
  sub_24B118DD4(v92 + v294, v50, type metadata accessor for PinCollection.Style);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E0);
    v122 = *(v121 + 48);
    v123 = *(v121 + 64);

    v124 = &v50[v122];
    v125 = v257;
    sub_24B0391CC(v124, v257, &qword_27EFCC190);
    v126 = &v50[v123];
    v93 = v284;
    v86 = v291;
    sub_24AFF8258(v126, &qword_27EFCC190);
  }

  else
  {
    v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E8);
    v128 = *(v127 + 64);
    v125 = v257;
    sub_24B118974(&v50[*(v127 + 48)], v257, type metadata accessor for PinCollection.PinInfo);
    (*(v282 + 56))(v125, 0, 1, v86);
    sub_24B118D74(&v50[v128], type metadata accessor for PinCollection.PinInfo);
  }

  sub_24B118D74(v50, type metadata accessor for PinCollection.PinInfo);
  if (v254(v125, 1, v86) == 1)
  {
    sub_24AFF8258(v125, &qword_27EFCC190);
    v129 = 1;
    v130 = v271;
    v131 = v293;
  }

  else
  {
    v132 = v258;
    sub_24B118974(v125, v258, type metadata accessor for PinCollection.PinInfo);
    sub_24B118DD4(v132, v259, type metadata accessor for Icon);
    v133 = v132[*(v86 + 20)];
    v134 = v283;
    sub_24B118DD4(v92 + v120, v283, type metadata accessor for PinCollection.Style);
    v135 = swift_getEnumCaseMultiPayload();
    if (v135 == 1)
    {
      v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E0);
      v139 = *(v138 + 48);
      v140 = *(v138 + 64);

      sub_24AFF8258(&v283[v140], &qword_27EFCC190);
      v141 = &v283[v139];
      v134 = v283;
      sub_24AFF8258(v141, &qword_27EFCC190);
    }

    else
    {
      v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E8);
      v137 = *(v136 + 48);
      sub_24B118D74(&v134[*(v136 + 64)], type metadata accessor for PinCollection.PinInfo);
      sub_24B118D74(&v134[v137], type metadata accessor for PinCollection.PinInfo);
    }

    sub_24B118D74(v134, type metadata accessor for PinCollection.PinInfo);
    v142 = v285;
    v143 = *(v285 + 28);
    v144 = sub_24B2D1BB4();
    v145 = v251;
    (*(*(v144 - 8) + 56))(&v251[v143], 1, 1, v144);
    v146 = v142[9];
    *(v145 + v146) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB490);
    swift_storeEnumTagMultiPayload();
    v147 = v145 + v142[10];
    *v147 = swift_getKeyPath();
    *(v147 + 8) = 0;
    sub_24B118974(v259, v145, type metadata accessor for Icon);
    *(v145 + v142[5]) = v133;
    *(v145 + v142[6]) = v135 != 1;
    v148 = v145 + v142[8];
    *v148 = 0;
    *(v148 + 8) = 1;
    *(v148 + 10) = 1;
    *(v148 + 16) = 0;
    *(v148 + 24) = 0x80;
    *(v148 + 32) = 0u;
    *(v148 + 48) = 0u;
    *(v148 + 64) = 0u;
    *(v148 + 80) = 0;
    *(v148 + 88) = xmmword_24B2E8DF0;
    *(v148 + 104) = xmmword_24B2E8240;
    sub_24B2D5064();
    sub_24B2D3494();
    v149 = v262;
    sub_24B118974(v145, v262, type metadata accessor for AnnotationPin);
    v150 = &v149[*(v287 + 36)];
    v151 = v307;
    *v150 = v306;
    v150[1] = v151;
    v150[2] = v308;
    v152 = v250;
    sub_24B118DD4(v92 + v120, v250, type metadata accessor for PinCollection.Style);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E0);
      v154 = *(v153 + 48);
      v155 = *(v153 + 64);

      sub_24AFF8258(&v152[v155], &qword_27EFCC190);
      sub_24AFF8258(&v152[v154], &qword_27EFCC190);
      sub_24B118D74(v152, type metadata accessor for PinCollection.PinInfo);
      sub_24B2D5064();
    }

    else
    {
      v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E8);
      v157 = *(v156 + 48);
      sub_24B118D74(&v152[*(v156 + 64)], type metadata accessor for PinCollection.PinInfo);
      sub_24B118D74(&v152[v157], type metadata accessor for PinCollection.PinInfo);
      sub_24B118D74(v152, type metadata accessor for PinCollection.PinInfo);
      sub_24B2D5074();
    }

    v131 = v293;
    v93 = v284;
    sub_24B2D3904();
    sub_24B118D74(v258, type metadata accessor for PinCollection.PinInfo);
    v158 = v253;
    sub_24B0391CC(v262, v253, &qword_27EFCC200);
    v159 = &v158[*(v93 + 36)];
    v160 = v314;
    v159[4] = v313;
    v159[5] = v160;
    v159[6] = v315;
    v161 = v310;
    *v159 = v309;
    v159[1] = v161;
    v162 = v312;
    v159[2] = v311;
    v159[3] = v162;
    v163 = v158;
    v164 = v252;
    sub_24B0391CC(v163, v252, &qword_27EFCC208);
    sub_24B0391CC(v164, v131, &qword_27EFCC208);
    v129 = 0;
    v130 = v271;
  }

  v119(v131, v129, 1, v93);
  v165 = v263;
  sub_24B118DD4(v92 + v120, v263, type metadata accessor for PinCollection.Style);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E0);
    v167 = *(v166 + 48);
    v168 = *(v166 + 64);

    v169 = v260;
    sub_24B118974(v165, v260, type metadata accessor for PinCollection.PinInfo);
    sub_24AFF8258(&v165[v168], &qword_27EFCC190);
    sub_24AFF8258(&v165[v167], &qword_27EFCC190);
  }

  else
  {
    v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E8);
    v171 = *(v170 + 48);
    v172 = *(v170 + 64);
    v169 = v260;
    sub_24B118974(v165, v260, type metadata accessor for PinCollection.PinInfo);
    sub_24B118D74(&v165[v172], type metadata accessor for PinCollection.PinInfo);
    sub_24B118D74(&v165[v171], type metadata accessor for PinCollection.PinInfo);
  }

  v173 = v266;
  v174 = v261;
  sub_24B118974(v169, v261, type metadata accessor for PinCollection.PinInfo);
  sub_24B118974(v174, v286, type metadata accessor for Icon);
  sub_24B118DD4(v92 + v120, v173, type metadata accessor for PinCollection.Style);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E0);
    v176 = *(v175 + 48);
    v177 = *(v175 + 64);

    v178 = v264;
    sub_24B118974(v173, v264, type metadata accessor for PinCollection.PinInfo);
    sub_24AFF8258(v173 + v177, &qword_27EFCC190);
    sub_24AFF8258(v173 + v176, &qword_27EFCC190);
  }

  else
  {
    v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E8);
    v180 = *(v179 + 48);
    v181 = *(v179 + 64);
    v178 = v264;
    sub_24B118974(v173, v264, type metadata accessor for PinCollection.PinInfo);
    sub_24B118D74(v173 + v181, type metadata accessor for PinCollection.PinInfo);
    sub_24B118D74(v173 + v180, type metadata accessor for PinCollection.PinInfo);
  }

  v182 = v265;
  sub_24B118974(v178, v265, type metadata accessor for PinCollection.PinInfo);
  v183 = v182[*(v291 + 20)];
  sub_24B118D74(v182, type metadata accessor for PinCollection.PinInfo);
  v184 = v92 + v120;
  v185 = v267;
  sub_24B118DD4(v184, v267, type metadata accessor for PinCollection.Style);
  v186 = swift_getEnumCaseMultiPayload();
  if (v186 == 1)
  {
    v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E0);
    v190 = *(v189 + 48);
    v191 = *(v189 + 64);

    sub_24AFF8258(&v185[v191], &qword_27EFCC190);
    sub_24AFF8258(&v185[v190], &qword_27EFCC190);
  }

  else
  {
    v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E8);
    v188 = *(v187 + 48);
    sub_24B118D74(&v185[*(v187 + 64)], type metadata accessor for PinCollection.PinInfo);
    sub_24B118D74(&v185[v188], type metadata accessor for PinCollection.PinInfo);
  }

  v192 = v274;
  v193 = v269;
  sub_24B118D74(v185, type metadata accessor for PinCollection.PinInfo);
  v194 = v285;
  v195 = *(v285 + 28);
  v196 = sub_24B2D1BB4();
  (*(*(v196 - 8) + 56))(v193 + v195, 1, 1, v196);
  v197 = v194[9];
  *(v193 + v197) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB490);
  swift_storeEnumTagMultiPayload();
  v198 = v193 + v194[10];
  *v198 = swift_getKeyPath();
  *(v198 + 8) = 0;
  sub_24B118974(v286, v193, type metadata accessor for Icon);
  *(v193 + v194[5]) = v183;
  *(v193 + v194[6]) = v186 != 1;
  v199 = v193 + v194[8];
  *v199 = 0;
  *(v199 + 8) = 1;
  *(v199 + 10) = 1;
  *(v199 + 16) = 0;
  *(v199 + 24) = 0x80;
  *(v199 + 32) = 0u;
  *(v199 + 48) = 0u;
  *(v199 + 64) = 0u;
  *(v199 + 80) = 0;
  *(v199 + 88) = xmmword_24B2E8DF0;
  *(v199 + 104) = 0;
  *(v199 + 112) = 0x3FAEB851EB851EB8;
  v200 = v268;
  sub_24B118DD4(v92 + v294, v268, type metadata accessor for PinCollection.Style);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E0);
    v202 = *(v201 + 48);
    v203 = *(v201 + 64);

    sub_24AFF8258(&v200[v203], &qword_27EFCC190);
    sub_24AFF8258(&v200[v202], &qword_27EFCC190);
  }

  else
  {
    v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E8);
    v205 = *(v204 + 48);
    sub_24B118D74(&v200[*(v204 + 64)], type metadata accessor for PinCollection.PinInfo);
    sub_24B118D74(&v200[v205], type metadata accessor for PinCollection.PinInfo);
  }

  v206 = v292;
  sub_24B118D74(v200, type metadata accessor for PinCollection.PinInfo);
  sub_24B2D5064();
  sub_24B2D3494();
  sub_24B118974(v193, v130, type metadata accessor for AnnotationPin);
  v207 = (v130 + *(v287 + 36));
  v208 = v317;
  *v207 = v316;
  v207[1] = v208;
  v207[2] = v318;
  v209 = sub_24B2D4304();
  v210 = v294;
  sub_24B118DD4(v92 + v294, v206, type metadata accessor for PinCollection.Style);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E0);
    v212 = *(v211 + 48);
    v213 = *(v211 + 64);

    sub_24AFF8258(&v292[v213], &qword_27EFCC190);
    v214 = &v292[v212];
    v206 = v292;
    sub_24AFF8258(v214, &qword_27EFCC190);
  }

  else
  {
    v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E8);
    v216 = *(v215 + 48);
    sub_24B118D74(v206 + *(v215 + 64), type metadata accessor for PinCollection.PinInfo);
    sub_24B118D74(v206 + v216, type metadata accessor for PinCollection.PinInfo);
  }

  v217 = v277;
  sub_24B118D74(v206, type metadata accessor for PinCollection.PinInfo);
  sub_24B2D32F4();
  v219 = v218;
  v221 = v220;
  v223 = v222;
  v225 = v224;
  sub_24B0391CC(v130, v217, &qword_27EFCC200);
  v226 = v217 + *(v275 + 36);
  *v226 = v209;
  *(v226 + 8) = v219;
  *(v226 + 16) = v221;
  *(v226 + 24) = v223;
  *(v226 + 32) = v225;
  *(v226 + 40) = 0;
  sub_24B118DD4(v92 + v210, v192, type metadata accessor for PinCollection.Style);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E0);
    v228 = *(v227 + 48);
    v229 = *(v227 + 64);

    sub_24AFF8258(v192 + v229, &qword_27EFCC190);
    sub_24AFF8258(v192 + v228, &qword_27EFCC190);
    sub_24B118D74(v192, type metadata accessor for PinCollection.PinInfo);
    sub_24B2D5074();
  }

  else
  {
    v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E8);
    v231 = *(v230 + 48);
    sub_24B118D74(v192 + *(v230 + 64), type metadata accessor for PinCollection.PinInfo);
    sub_24B118D74(v192 + v231, type metadata accessor for PinCollection.PinInfo);
    sub_24B118D74(v192, type metadata accessor for PinCollection.PinInfo);
    sub_24B2D5064();
  }

  sub_24B2D3904();
  v232 = v278;
  sub_24B0391CC(v217, v278, &qword_27EFCC1F0);
  v233 = &v232[*(v276 + 36)];
  v234 = v324;
  v233[4] = v323;
  v233[5] = v234;
  v233[6] = v325;
  v235 = v320;
  *v233 = v319;
  v233[1] = v235;
  v236 = v322;
  v233[2] = v321;
  v233[3] = v236;
  v237 = v279;
  sub_24B0391CC(v232, v279, &qword_27EFCC1F8);
  v238 = v288;
  v239 = v272;
  sub_24B008890(v288, v272, &qword_27EFCC210);
  v240 = v273;
  sub_24B008890(v293, v273, &qword_27EFCC210);
  v241 = v280;
  sub_24B008890(v237, v280, &qword_27EFCC1F8);
  v242 = v281;
  sub_24B008890(v239, v281, &qword_27EFCC210);
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC218);
  sub_24B008890(v240, v242 + *(v243 + 48), &qword_27EFCC210);
  sub_24B008890(v241, v242 + *(v243 + 64), &qword_27EFCC1F8);
  sub_24AFF8258(v237, &qword_27EFCC1F8);
  sub_24AFF8258(v293, &qword_27EFCC210);
  sub_24AFF8258(v238, &qword_27EFCC210);
  sub_24AFF8258(v241, &qword_27EFCC1F8);
  sub_24AFF8258(v240, &qword_27EFCC210);
  sub_24AFF8258(v239, &qword_27EFCC210);
}

uint64_t PinCollection.PinInfo.init(icon:shape:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_24B118974(a1, a3, type metadata accessor for Icon);
  result = type metadata accessor for PinCollection.PinInfo(0);
  *(a3 + *(result + 20)) = v4;
  return result;
}

uint64_t static PinCollection.PinInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (_s12FindMyUICore4IconO2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    v4 = type metadata accessor for PinCollection.PinInfo(0);
    v5 = *(a1 + *(v4 + 20)) ^ *(a2 + *(v4 + 20)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_24B1177E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_s12FindMyUICore4IconO2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_24B117838@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24B2D3CD4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC158);
  return sub_24B1150EC(v1, a1 + *(v3 + 44));
}

uint64_t _s12FindMyUICore13PinCollectionV5StyleO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v119 = a1;
  v120 = a2;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC220);
  MEMORY[0x28223BE20](v110);
  v107 = &v102[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v109 = &v102[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC190);
  MEMORY[0x28223BE20](v5 - 8);
  v106 = &v102[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v108 = &v102[-v8];
  MEMORY[0x28223BE20](v9);
  v113 = &v102[-v10];
  MEMORY[0x28223BE20](v11);
  v114 = &v102[-v12];
  MEMORY[0x28223BE20](v13);
  v116 = &v102[-v14];
  MEMORY[0x28223BE20](v15);
  v118 = &v102[-v16];
  v117 = type metadata accessor for PinCollection.PinInfo(0);
  v111 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v104 = &v102[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v105 = &v102[-v19];
  MEMORY[0x28223BE20](v20);
  v115 = &v102[-v21];
  MEMORY[0x28223BE20](v22);
  v24 = &v102[-v23];
  MEMORY[0x28223BE20](v25);
  v27 = &v102[-v26];
  MEMORY[0x28223BE20](v28);
  v112 = &v102[-v29];
  MEMORY[0x28223BE20](v30);
  v32 = &v102[-v31];
  MEMORY[0x28223BE20](v33);
  v35 = &v102[-v34];
  v36 = type metadata accessor for PinCollection.Style(0);
  MEMORY[0x28223BE20](v36);
  v38 = &v102[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v39);
  v41 = &v102[-v40];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC228);
  MEMORY[0x28223BE20](v42 - 8);
  v44 = &v102[-v43];
  v46 = &v102[*(v45 + 56) - v43];
  sub_24B118DD4(v119, &v102[-v43], type metadata accessor for PinCollection.Style);
  sub_24B118DD4(v120, v46, type metadata accessor for PinCollection.Style);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v121 = v44;
  if (EnumCaseMultiPayload != 1)
  {
    sub_24B118DD4(v44, v41, type metadata accessor for PinCollection.Style);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E8);
    v62 = *(v61 + 48);
    v63 = *(v61 + 64);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_24B118D74(&v41[v63], type metadata accessor for PinCollection.PinInfo);
      sub_24B118D74(&v41[v62], type metadata accessor for PinCollection.PinInfo);
      goto LABEL_9;
    }

    sub_24B118974(v46, v35, type metadata accessor for PinCollection.PinInfo);
    sub_24B118974(&v41[v62], v32, type metadata accessor for PinCollection.PinInfo);
    v64 = v112;
    sub_24B118974(&v41[v63], v112, type metadata accessor for PinCollection.PinInfo);
    sub_24B118974(&v46[v62], v27, type metadata accessor for PinCollection.PinInfo);
    sub_24B118974(&v46[v63], v24, type metadata accessor for PinCollection.PinInfo);
    v65 = static Icon.== infix(_:_:)(v41, v35);
    v66 = v117;
    if ((v65 & 1) == 0 || v41[*(v117 + 20)] != v35[*(v117 + 20)])
    {
      sub_24B118D74(v24, type metadata accessor for PinCollection.PinInfo);
      sub_24B118D74(v27, type metadata accessor for PinCollection.PinInfo);
      sub_24B118D74(v64, type metadata accessor for PinCollection.PinInfo);
      sub_24B118D74(v32, type metadata accessor for PinCollection.PinInfo);
      sub_24B118D74(v35, type metadata accessor for PinCollection.PinInfo);
      v60 = v41;
      goto LABEL_13;
    }

    sub_24B118D74(v41, type metadata accessor for PinCollection.PinInfo);
    v81 = static Icon.== infix(_:_:)(v32, v27);
    v82 = v121;
    if ((v81 & 1) != 0 && v32[*(v66 + 20)] == v27[*(v66 + 20)])
    {
      v85 = static Icon.== infix(_:_:)(v64, v24);
      sub_24B118D74(v27, type metadata accessor for PinCollection.PinInfo);
      sub_24B118D74(v32, type metadata accessor for PinCollection.PinInfo);
      sub_24B118D74(v35, type metadata accessor for PinCollection.PinInfo);
      if (v85)
      {
        v86 = v117;
        v87 = v64[*(v117 + 20)];
        sub_24B118D74(v64, type metadata accessor for PinCollection.PinInfo);
        LODWORD(v86) = v24[*(v86 + 20)];
        sub_24B118D74(v24, type metadata accessor for PinCollection.PinInfo);
        if (v87 == v86)
        {
          v88 = v82;
LABEL_63:
          sub_24B118D74(v88, type metadata accessor for PinCollection.Style);
          return 1;
        }

LABEL_32:
        v67 = v82;
        goto LABEL_14;
      }

      sub_24B118D74(v24, type metadata accessor for PinCollection.PinInfo);
      v83 = v64;
    }

    else
    {
      sub_24B118D74(v24, type metadata accessor for PinCollection.PinInfo);
      sub_24B118D74(v27, type metadata accessor for PinCollection.PinInfo);
      sub_24B118D74(v64, type metadata accessor for PinCollection.PinInfo);
      sub_24B118D74(v32, type metadata accessor for PinCollection.PinInfo);
      v83 = v35;
    }

    sub_24B118D74(v83, type metadata accessor for PinCollection.PinInfo);
    goto LABEL_32;
  }

  sub_24B118DD4(v44, v38, type metadata accessor for PinCollection.Style);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC1E0);
  v49 = v48[12];
  v50 = v48[16];
  v51 = v48[20];
  v53 = *&v38[v51];
  v52 = *&v38[v51 + 8];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v119 = v53;
    v120 = v52;
    v54 = *&v46[v51 + 8];
    v112 = *&v46[v51];
    v55 = v115;
    sub_24B118974(v46, v115, type metadata accessor for PinCollection.PinInfo);
    sub_24B0391CC(&v38[v49], v118, &qword_27EFCC190);
    v56 = v116;
    sub_24B0391CC(&v38[v50], v116, &qword_27EFCC190);
    v57 = v114;
    sub_24B0391CC(&v46[v49], v114, &qword_27EFCC190);
    v58 = &v46[v50];
    v59 = v113;
    sub_24B0391CC(v58, v113, &qword_27EFCC190);
    if ((static Icon.== infix(_:_:)(v38, v55) & 1) == 0 || v38[*(v117 + 20)] != v55[*(v117 + 20)])
    {

      sub_24AFF8258(v59, &qword_27EFCC190);
      sub_24AFF8258(v57, &qword_27EFCC190);
      sub_24AFF8258(v56, &qword_27EFCC190);
      sub_24AFF8258(v118, &qword_27EFCC190);
      sub_24B118D74(v55, type metadata accessor for PinCollection.PinInfo);
      v60 = v38;
LABEL_13:
      sub_24B118D74(v60, type metadata accessor for PinCollection.PinInfo);
      v67 = v121;
LABEL_14:
      sub_24B118D74(v67, type metadata accessor for PinCollection.Style);
      return 0;
    }

    sub_24B118D74(v38, type metadata accessor for PinCollection.PinInfo);
    v69 = v109;
    v70 = *(v110 + 48);
    sub_24B008890(v118, v109, &qword_27EFCC190);
    v71 = v69;
    sub_24B008890(v57, &v69[v70], &qword_27EFCC190);
    v73 = v111 + 48;
    v72 = *(v111 + 48);
    v74 = v117;
    v75 = v72(v71, 1, v117);
    v111 = v73;
    if (v75 == 1)
    {
      if (v72(v71 + v70, 1, v74) == 1)
      {
        sub_24AFF8258(v71, &qword_27EFCC190);
        goto LABEL_20;
      }
    }

    else
    {
      v84 = v108;
      sub_24B008890(v71, v108, &qword_27EFCC190);
      if (v72(v71 + v70, 1, v74) != 1)
      {
        v89 = v105;
        sub_24B118974(v71 + v70, v105, type metadata accessor for PinCollection.PinInfo);
        if (static Icon.== infix(_:_:)(v84, v89))
        {
          v90 = *(v74 + 20);
          v103 = v84[v90];
          v91 = v89[v90];
          sub_24B118D74(v89, type metadata accessor for PinCollection.PinInfo);
          sub_24B118D74(v84, type metadata accessor for PinCollection.PinInfo);
          sub_24AFF8258(v71, &qword_27EFCC190);
          v56 = v116;
          if (v103 == v91)
          {
LABEL_20:
            v76 = *(v110 + 48);
            v77 = v107;
            sub_24B008890(v56, v107, &qword_27EFCC190);
            sub_24B008890(v59, &v77[v76], &qword_27EFCC190);
            v78 = v117;
            if (v72(v77, 1, v117) == 1)
            {
              if (v72(&v77[v76], 1, v78) == 1)
              {
                sub_24AFF8258(v77, &qword_27EFCC190);
                v79 = v120;
                v80 = v121;
LABEL_23:
                if (!v79)
                {
                  sub_24AFF8258(v59, &qword_27EFCC190);
                  sub_24AFF8258(v57, &qword_27EFCC190);
                  sub_24AFF8258(v56, &qword_27EFCC190);
                  sub_24AFF8258(v118, &qword_27EFCC190);
                  sub_24B118D74(v55, type metadata accessor for PinCollection.PinInfo);
                  if (!v54)
                  {
                    goto LABEL_62;
                  }

                  goto LABEL_58;
                }

                if (v54)
                {
                  if (v119 == v112 && v79 == v54)
                  {

                    sub_24AFF8258(v59, &qword_27EFCC190);
                    sub_24AFF8258(v57, &qword_27EFCC190);
                    sub_24AFF8258(v56, &qword_27EFCC190);
                    sub_24AFF8258(v118, &qword_27EFCC190);
                    sub_24B118D74(v55, type metadata accessor for PinCollection.PinInfo);
LABEL_62:
                    v88 = v80;
                    goto LABEL_63;
                  }

                  v101 = sub_24B2D6004();

                  sub_24AFF8258(v59, &qword_27EFCC190);
                  sub_24AFF8258(v57, &qword_27EFCC190);
                  sub_24AFF8258(v56, &qword_27EFCC190);
                  sub_24AFF8258(v118, &qword_27EFCC190);
                  sub_24B118D74(v55, type metadata accessor for PinCollection.PinInfo);
                  if (v101)
                  {
                    goto LABEL_62;
                  }

LABEL_58:
                  v67 = v80;
                  goto LABEL_14;
                }

                goto LABEL_56;
              }
            }

            else
            {
              sub_24B008890(v77, v106, &qword_27EFCC190);
              if (v72(&v77[v76], 1, v78) != 1)
              {
                v92 = &v77[v76];
                v93 = v104;
                sub_24B118974(v92, v104, type metadata accessor for PinCollection.PinInfo);
                v94 = v106;
                v95 = static Icon.== infix(_:_:)(v106, v93);
                v80 = v121;
                if (v95)
                {
                  v96 = *(v78 + 20);
                  v97 = v93;
                  v98 = v77;
                  LODWORD(v117) = v94[v96];
                  v99 = *(v97 + v96);
                  sub_24B118D74(v97, type metadata accessor for PinCollection.PinInfo);
                  sub_24B118D74(v94, type metadata accessor for PinCollection.PinInfo);
                  sub_24AFF8258(v98, &qword_27EFCC190);
                  v100 = v117 == v99;
                  v79 = v120;
                  if (v100)
                  {
                    goto LABEL_23;
                  }
                }

                else
                {
                  sub_24B118D74(v93, type metadata accessor for PinCollection.PinInfo);
                  sub_24B118D74(v94, type metadata accessor for PinCollection.PinInfo);
                  sub_24AFF8258(v77, &qword_27EFCC190);
                }

LABEL_56:

                goto LABEL_57;
              }

              sub_24B118D74(v106, type metadata accessor for PinCollection.PinInfo);
            }

            v80 = v121;
            sub_24AFF8258(v77, &qword_27EFCC220);
LABEL_57:
            sub_24AFF8258(v59, &qword_27EFCC190);
            sub_24AFF8258(v57, &qword_27EFCC190);
            sub_24AFF8258(v56, &qword_27EFCC190);
            sub_24AFF8258(v118, &qword_27EFCC190);
            sub_24B118D74(v55, type metadata accessor for PinCollection.PinInfo);
            goto LABEL_58;
          }
        }

        else
        {
          sub_24B118D74(v89, type metadata accessor for PinCollection.PinInfo);
          sub_24B118D74(v84, type metadata accessor for PinCollection.PinInfo);
          sub_24AFF8258(v71, &qword_27EFCC190);
          v56 = v116;
        }

LABEL_48:
        sub_24AFF8258(v59, &qword_27EFCC190);
        sub_24AFF8258(v57, &qword_27EFCC190);
        sub_24AFF8258(v56, &qword_27EFCC190);
        sub_24AFF8258(v118, &qword_27EFCC190);
        v60 = v55;
        goto LABEL_13;
      }

      sub_24B118D74(v84, type metadata accessor for PinCollection.PinInfo);
      v56 = v116;
    }

    sub_24AFF8258(v71, &qword_27EFCC220);
    goto LABEL_48;
  }

  sub_24AFF8258(&v38[v50], &qword_27EFCC190);
  sub_24AFF8258(&v38[v49], &qword_27EFCC190);
  v41 = v38;
LABEL_9:
  sub_24B118D74(v41, type metadata accessor for PinCollection.PinInfo);
  sub_24AFF8258(v121, &qword_27EFCC228);
  return 0;
}

uint64_t sub_24B118974(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B118A40()
{
  result = type metadata accessor for PinCollection.Style(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_24B118ABC()
{
  sub_24B118B30();
  if (v0 <= 0x3F)
  {
    sub_24B118B9C(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24B118B30()
{
  if (!qword_27EFCC180)
  {
    type metadata accessor for PinCollection.PinInfo(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27EFCC180);
    }
  }
}

void sub_24B118B9C(uint64_t a1)
{
  if (!qword_27EFCC188)
  {
    MEMORY[0x28223BE20](a1);
    type metadata accessor for PinCollection.PinInfo(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC190);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC198);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27EFCC188);
    }
  }
}

unint64_t sub_24B118CF8()
{
  result = qword_27EFCC1B0;
  if (!qword_27EFCC1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC1B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC1B0);
  }

  return result;
}

double sub_24B118D5C(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_24B118D74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B118DD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t static PlatterWithIcon.Icon.avatar(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    sub_24B2D14A4();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_24B2D1494();
  (*(*(v5 - 8) + 56))(a2, v4, 1, v5);
  type metadata accessor for PlatterWithIcon.Icon(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static PlatterWithIcon.Style.legacyMapAnnotationView(isWatchOS:includeShadow:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_24B2D4A54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() systemGray2Color];
  v13 = sub_24B2D4B94();
  v9 = sub_24B2D34A4();
  if (a1)
  {
    (*(v5 + 104))(v7, *MEMORY[0x277CE0EE0], v4);
    v10 = sub_24B2D4B74();
  }

  else
  {
    v10 = sub_24B2D4B04();
  }

  v13 = v10;
  result = sub_24B2D34A4();
  *a2 = v9;
  *(a2 + 8) = 0;
  *(a2 + 16) = result;
  *(a2 + 24) = 0x4010000000000000;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  return result;
}

__n128 PlatterWithIcon.init(icon:style:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2->n128_u64[0];
  v6 = a2->n128_i8[8];
  v7 = a2[3].n128_i64[0];
  sub_24B11AEAC(a1, a3);
  v8 = a3 + *(type metadata accessor for PlatterWithIcon(0) + 20);
  *v8 = v5;
  *(v8 + 8) = v6;
  result = a2[1];
  v10 = a2[2];
  *(v8 + 16) = result;
  *(v8 + 32) = v10;
  *(v8 + 48) = v7;
  return result;
}

uint64_t PlatterWithIcon.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC230);
  MEMORY[0x28223BE20](v1);
  v3 = &v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC238);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC240);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  if (*(v0 + *(type metadata accessor for PlatterWithIcon(0) + 20) + 8) == 1)
  {
    sub_24B1193A4(v9);
    sub_24B008890(v9, v6, &qword_27EFCC240);
    swift_storeEnumTagMultiPayload();
    sub_24B11AF30();
    sub_24B11B34C();
    sub_24B2D3ED4();
    v10 = v9;
    v11 = &qword_27EFCC240;
  }

  else
  {
    sub_24B1193A4(v3);
    KeyPath = swift_getKeyPath();
    v13 = &v3[*(v1 + 36)];
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC248) + 28);
    v15 = sub_24B2D5004();
    (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
    *v13 = KeyPath;
    sub_24B008890(v3, v6, &qword_27EFCC230);
    swift_storeEnumTagMultiPayload();
    sub_24B11AF30();
    sub_24B11B34C();
    sub_24B2D3ED4();
    v10 = v3;
    v11 = &qword_27EFCC230;
  }

  return sub_24AFF8258(v10, v11);
}

uint64_t sub_24B1193A4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC290);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v41[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC260);
  MEMORY[0x28223BE20](v7);
  v9 = &v41[-v8];
  sub_24B11A220(v43);
  v60 = *&v43[64];
  v61 = *&v43[80];
  v62 = v43[96];
  v56 = *v43;
  v57 = *&v43[16];
  v58 = *&v43[32];
  v59 = *&v43[48];
  v10 = sub_24B2D5064();
  v12 = v11;
  v13 = &v6[*(v4 + 44)];
  sub_24B11A5E8(v1, v13);
  v14 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC2E0) + 36));
  *v14 = v10;
  v14[1] = v12;
  v15 = v57;
  *v6 = v56;
  *(v6 + 1) = v15;
  v6[96] = v62;
  v16 = v61;
  *(v6 + 4) = v60;
  *(v6 + 5) = v16;
  v17 = v59;
  *(v6 + 2) = v58;
  *(v6 + 3) = v17;
  if (qword_27EFC7698 != -1)
  {
    swift_once();
  }

  v18 = qword_27EFCB8E8;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 1;
  sub_24B008890(v6, v9, &qword_27EFCC290);
  v20 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC280) + 36)];
  *v20 = v18;
  v20[1] = sub_24B110D08;
  v20[2] = v19;
  if (qword_27EFC7678 != -1)
  {
    swift_once();
  }

  v21 = qword_27EFCB8C8;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 1;
  v23 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC270) + 36)];
  *v23 = v21;
  v23[1] = sub_24B0FFB00;
  v23[2] = v22;
  if (qword_27EFC7680 != -1)
  {
    swift_once();
  }

  v24 = qword_27EFCB8D0;
  sub_24AFF8258(v6, &qword_27EFCC290);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 1;
  v26 = &v9[*(v7 + 36)];
  *v26 = v24;
  v26[1] = sub_24B0FFBCC;
  v26[2] = v25;
  sub_24B119964(v52);
  *&v54[96] = v52[6];
  *&v54[112] = v52[7];
  *&v54[128] = v52[8];
  *&v54[144] = v53;
  *&v54[32] = v52[2];
  *&v54[48] = v52[3];
  *&v54[64] = v52[4];
  *&v54[80] = v52[5];
  *v54 = v52[0];
  *&v54[16] = v52[1];
  sub_24B2D5064();
  sub_24B2D3904();
  type metadata accessor for PlatterWithIcon(0);
  v27 = sub_24B2D42F4();
  sub_24B2D32F4();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v55 = 0;
  v36 = sub_24B2D5064();
  v38 = v37;
  memcpy(v42, v54, 0x108uLL);
  LOBYTE(v42[33]) = v27;
  v42[34] = v29;
  v42[35] = v31;
  v42[36] = v33;
  v42[37] = v35;
  LOBYTE(v42[38]) = 0;
  v42[39] = v36;
  v42[40] = v38;
  sub_24B0391CC(v9, a1, &qword_27EFCC260);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC240);
  memcpy((a1 + *(v39 + 36)), v42, 0x148uLL);
  memcpy(v43, v54, sizeof(v43));
  v44 = v27;
  v45 = v29;
  v46 = v31;
  v47 = v33;
  v48 = v35;
  v49 = 0;
  v50 = v36;
  v51 = v38;
  sub_24B008890(v42, v41, &qword_27EFCC2F0);
  return sub_24AFF8258(v43, &qword_27EFCC2F0);
}

uint64_t sub_24B1198BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC380);
  MEMORY[0x28223BE20](v2 - 8);
  sub_24B008890(a1, &v5 - v3, &qword_27EFCC380);
  return sub_24B2D3B14();
}

__n128 sub_24B119964@<Q0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = sub_24B2D4BD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB688);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  v12 = type metadata accessor for PlatterWithIcon.Icon(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B11BE1C(v1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_24B0391CC(v14, v11, &qword_27EFCB688);
    sub_24B008890(v11, v8, &qword_27EFCB688);
    AvatarView.init(contact:)(v8, &v70);
    v70.n128_u64[1] = 0;
    LOWORD(v71) = 0;
    BYTE2(v71) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC3A8);
    sub_24B1146BC();
    sub_24B11C434(&qword_27EFCC3A0, &qword_27EFCC3A8, &unk_24B2EB5D8, sub_24B11C3B0);
    sub_24B2D3ED4();
    v50 = v60;
    LOWORD(v51) = v61;
    BYTE2(v51) = BYTE2(v61);
    sub_24B11C504(&v50);
    *&v72[64] = v56;
    *&v72[80] = v57;
    *&v72[96] = v58;
    v73 = v59;
    *v72 = v52;
    *&v72[16] = v53;
    *&v72[32] = v54;
    *&v72[48] = v55;
    v70 = v50;
    v71 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC390);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC388);
    sub_24B11C2F8();
    sub_24B11C434(&qword_27EFCC3C0, &qword_27EFCC388, &unk_24B2EB5C8, sub_24B11C4B0);
    sub_24B2D3ED4();
    sub_24AFF8258(v11, &qword_27EFCB688);
LABEL_10:
    *&v72[64] = v46;
    *&v72[80] = v47;
    *&v72[96] = v48;
    v73 = v49;
    *v72 = v42;
    *&v72[16] = v43;
    *&v72[32] = v44;
    *&v72[48] = v45;
    v70 = v40;
    v71 = v41;
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v38 = *v14;
    v16 = v38;
    if (v38)
    {
      v17 = v38;
      sub_24B2D4BB4();
      (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
      v18 = sub_24B2D4C14();

      (*(v3 + 8))(v5, v2);

      v16 = 1;
    }

    else
    {
      v18 = 0;
    }

    v70 = v18;
    LOWORD(v71) = v16;
    BYTE2(v71) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC3A8);
    sub_24B1146BC();
    sub_24B11C434(&qword_27EFCC3A0, &qword_27EFCC3A8, &unk_24B2EB5D8, sub_24B11C3B0);
    sub_24B2D3ED4();
    v26 = v60;
    v27 = BYTE2(v61);
    v28 = v61;
    v50 = v60;
    v36 = v60.n128_u64[0];
    LOWORD(v51) = v61;
    BYTE2(v51) = BYTE2(v61);
    LODWORD(v37) = BYTE2(v61);
    sub_24B11C504(&v50);
    *&v72[64] = v56;
    *&v72[80] = v57;
    *&v72[96] = v58;
    v73 = v59;
    *v72 = v52;
    *&v72[16] = v53;
    *&v72[32] = v54;
    *&v72[48] = v55;
    v70 = v50;
    v71 = v51;
    sub_24B11C50C(v26.n128_i64[0], v26.n128_i64[1], v28, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC390);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC388);
    sub_24B11C2F8();
    sub_24B11C434(&qword_27EFCC3C0, &qword_27EFCC388, &unk_24B2EB5C8, sub_24B11C4B0);
    sub_24B2D3ED4();

    sub_24B11C518(v36, v26.n128_i64[1], v28, v37);

    goto LABEL_10;
  }

  v20 = *v14;
  v19 = *(v14 + 1);
  v22 = *(v14 + 2);
  v21 = *(v14 + 3);
  v23 = *(v14 + 4);
  v37 = v23;
  v38 = v21;
  if (v19)
  {
    memset(v72, 0, 40);
    v70 = 0u;
    v71 = 0u;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB048);
    sub_24B2D4CC4();
    v52 = v42;
    v53 = v43;
    v54 = v44;
    v50 = v40;
    v51 = v41;
    v60.n128_u64[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB650);
    sub_24B2D4CC4();
    v24 = v70;
    KeyPath = swift_getKeyPath();
    *&v72[24] = v51;
    *&v72[40] = v52;
    *&v72[56] = v53;
    *&v72[72] = v54;
    v70.n128_u64[0] = v20;
    v70.n128_u64[1] = v19;
    *&v71 = v22;
    *(&v71 + 1) = v21;
    *&v72[8] = v50;
    *v72 = v23;
    *&v72[88] = v24;
    *&v72[104] = KeyPath;
    LOBYTE(v73) = 0;
    nullsub_1(&v70);
    v66 = *&v72[64];
    v67 = *&v72[80];
    v68 = *&v72[96];
    v69 = v73;
    v62 = *v72;
    v63 = *&v72[16];
    v64 = *&v72[32];
    v65 = *&v72[48];
    v60 = v70;
    v61 = v71;
  }

  else
  {
    sub_24B11C2CC(&v60);
  }

  v56 = v66;
  v57 = v67;
  v58 = v68;
  LOBYTE(v59) = v69;
  v52 = v62;
  v53 = v63;
  v54 = v64;
  v55 = v65;
  v50 = v60;
  v51 = v61;
  sub_24B11C2EC(&v50);
  *&v72[64] = v56;
  *&v72[80] = v57;
  *&v72[96] = v58;
  v73 = v59;
  *v72 = v52;
  *&v72[16] = v53;
  *&v72[32] = v54;
  *&v72[48] = v55;
  v70 = v50;
  v71 = v51;
  sub_24B008890(&v60, &v40, &qword_27EFCC388);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC388);
  sub_24B11C2F8();
  sub_24B11C434(&qword_27EFCC3C0, &qword_27EFCC388, &unk_24B2EB5C8, sub_24B11C4B0);
  sub_24B2D3ED4();
  sub_24B11C1E8(v20, v19);
  sub_24AFF8258(&v60, &qword_27EFCC388);
  *&v72[64] = v46;
  *&v72[80] = v47;
  *&v72[96] = v48;
  v73 = v49;
  *v72 = v42;
  *&v72[16] = v43;
  *&v72[32] = v44;
  *&v72[48] = v45;
  v70 = v40;
  v71 = v41;
LABEL_13:
  v29 = *&v72[80];
  v30 = v39;
  *(v39 + 96) = *&v72[64];
  *(v30 + 112) = v29;
  *(v30 + 128) = *&v72[96];
  *(v30 + 144) = v73;
  v31 = *&v72[16];
  *(v30 + 32) = *v72;
  *(v30 + 48) = v31;
  v32 = *&v72[48];
  *(v30 + 64) = *&v72[32];
  *(v30 + 80) = v32;
  result = v70;
  v34 = v71;
  *v30 = v70;
  *(v30 + 16) = v34;
  return result;
}

__n128 sub_24B11A220@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PlatterWithIcon(0) + 20));
  v4 = v3[2];
  if (v4)
  {
    swift_retain_n();
    v5 = sub_24B2D5064();
    v7 = v6;
    sub_24B2D5694();
    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v8 = *v3;
    v9 = sub_24B2D42F4();
    sub_24B2D32F4();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    *&v22 = v8;
    WORD4(v22) = 256;
    LOBYTE(v23) = v9;
    *(&v23 + 1) = v11;
    *&v24 = v13;
    *(&v24 + 1) = v15;
    *&v25 = v17;
    BYTE8(v25) = 0;
    *&v39[22] = v23;
    *&v39[38] = v24;
    *&v26 = v5;
    *(&v26 + 1) = v7;
    *&v39[54] = v25;
    *&v39[70] = v26;
    *&v39[6] = v22;
    v27 = v8;
    v28 = 256;
    v29 = v9;
    v30 = v11;
    v31 = v13;
    v32 = v15;
    v33 = v17;
    v34 = 0;
    v35 = v5;
    v36 = v7;
    sub_24B008890(&v22, &v42, &qword_27EFCC2D0);
    sub_24AFF8258(&v27, &qword_27EFCC2D0);
    *v37 = v4;
    *&v37[8] = 256;
    *&v37[88] = *&v39[78];
    *&v37[74] = *&v39[64];
    *&v37[58] = *&v39[48];
    *&v37[42] = *&v39[32];
    *&v37[26] = *&v39[16];
    *&v37[10] = *v39;
    v44 = *&v37[32];
    v45 = *&v37[48];
    v46 = *&v37[64];
    v47 = *&v37[80];
    v42 = *v37;
    v43 = *&v37[16];
    v38 = 0;
    v48 = 0;
    sub_24B008890(v37, v40, &qword_27EFCC2B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC2B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC2C0);
    sub_24B11B268();
    sub_24B039184(&qword_27EFCC2B8, &qword_27EFCC2C0);
    sub_24B2D3ED4();

    sub_24AFF8258(v37, &qword_27EFCC2B0);
    v46 = v40[4];
    v47 = v40[5];
    v48 = v41;
    v42 = v40[0];
    v43 = v40[1];
    v44 = v40[2];
    v45 = v40[3];
  }

  else
  {
    v18 = *v3;
    v37[0] = 1;
    *&v40[0] = v18;
    WORD4(v40[0]) = 256;
    v41 = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC2B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC2C0);
    sub_24B11B268();
    sub_24B039184(&qword_27EFCC2B8, &qword_27EFCC2C0);
    sub_24B2D3ED4();
  }

  v19 = v47;
  *(a1 + 64) = v46;
  *(a1 + 80) = v19;
  *(a1 + 96) = v48;
  v20 = v43;
  *a1 = v42;
  *(a1 + 16) = v20;
  result = v45;
  *(a1 + 32) = v44;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_24B11A5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v43 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC3D0);
  MEMORY[0x28223BE20](v2);
  v4 = &v38 - v3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC3D8);
  MEMORY[0x28223BE20](v39);
  v6 = &v38 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC3E0);
  v7 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC3E8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v38 - v14;
  sub_24B2D5694();
  v41 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = (v40 + *(type metadata accessor for PlatterWithIcon(0) + 20));
  v17 = v16[4];
  if (v17)
  {
    v19 = v16[5];
    v18 = v16[6];
    v20 = *(v2 + 36);
    v21 = *MEMORY[0x277CE13B0];
    v22 = sub_24B2D50F4();
    (*(*(v22 - 8) + 104))(&v4[v20], v21, v22);
    *v4 = v17;
    *(v4 + 1) = v19;
    *(v4 + 2) = 0;
    *(v4 + 3) = v18;
    swift_retain_n();
    LOBYTE(v21) = sub_24B2D42F4();
    sub_24B2D32F4();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    sub_24B0391CC(v4, v6, &qword_27EFCC3D0);
    v31 = &v6[*(v39 + 36)];
    *v31 = v21;
    *(v31 + 1) = v24;
    *(v31 + 2) = v26;
    *(v31 + 3) = v28;
    *(v31 + 4) = v30;
    v31[40] = 0;
    KeyPath = swift_getKeyPath();
    v33 = v42;
    v34 = &v9[*(v42 + 36)];
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC248) + 28);
    v36 = sub_24B2D5004();
    (*(*(v36 - 8) + 56))(v34 + v35, 1, 1, v36);
    *v34 = KeyPath;
    sub_24B0391CC(v6, v9, &qword_27EFCC3D8);
    sub_24B0391CC(v9, v12, &qword_27EFCC3E0);
    sub_24B0391CC(v12, v15, &qword_27EFCC3E0);
    (*(v7 + 56))(v15, 0, 1, v33);
  }

  else
  {
    (*(v7 + 56))(v15, 1, 1, v42);
  }

  sub_24B0391CC(v15, v43, &qword_27EFCC3E8);
}

void PlatterWithIcon.Icon.hash(into:)()
{
  v1 = sub_24B2D1494();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB688);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v20 - v9;
  v11 = type metadata accessor for PlatterWithIcon.Icon(0);
  MEMORY[0x28223BE20](v11);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B11BE1C(v0, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_24B0391CC(v13, v10, &qword_27EFCB688);
    MEMORY[0x24C23C8D0](0);
    sub_24B008890(v10, v7, &qword_27EFCB688);
    if ((*(v2 + 48))(v7, 1, v1) == 1)
    {
      sub_24B2D6104();
    }

    else
    {
      (*(v2 + 32))(v4, v7, v1);
      sub_24B2D6104();
      sub_24B11BEC8(&qword_27EFCBE58, MEMORY[0x277D08B20]);
      sub_24B2D5254();
      (*(v2 + 8))(v4, v1);
    }

    v18 = &qword_27EFCB688;
    v19 = v10;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v17 = *(v13 + 1);
    v20[0] = *v13;
    v20[1] = v17;
    v21 = *(v13 + 4);
    MEMORY[0x24C23C8D0](2);
    sub_24B11B66C();
    v18 = &unk_27EFCC308;
    v19 = v20;
LABEL_10:
    sub_24AFF8258(v19, v18);
    return;
  }

  v15 = *v13;
  MEMORY[0x24C23C8D0](1);
  sub_24B2D6104();
  if (v15)
  {
    v16 = v15;
    sub_24B2D5A44();
  }
}

uint64_t PlatterWithIcon.Icon.hashValue.getter()
{
  sub_24B2D60E4();
  PlatterWithIcon.Icon.hash(into:)();
  return sub_24B2D6124();
}

uint64_t sub_24B11ADF0()
{
  sub_24B2D60E4();
  PlatterWithIcon.Icon.hash(into:)();
  return sub_24B2D6124();
}

uint64_t sub_24B11AE34()
{
  sub_24B2D60E4();
  PlatterWithIcon.Icon.hash(into:)();
  return sub_24B2D6124();
}

__n128 PlatterWithIcon.Style.init(background:allowsVibrancy:border:shadow:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, __n128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a4 + 2);
  *a5 = a1;
  *(a5 + 8) = a2;
  result = *a3;
  v7 = *a4;
  *(a5 + 16) = *a3;
  *(a5 + 32) = v7;
  *(a5 + 48) = v5;
  return result;
}

uint64_t PlatterWithIcon.Style.Border.init(fill:size:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

uint64_t sub_24B11AEAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatterWithIcon.Icon(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B11AF30()
{
  result = qword_27EFCC250;
  if (!qword_27EFCC250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC240);
    sub_24B11B074(&qword_27EFCC258, &qword_27EFCC260, &unk_24B2EB3E0, sub_24B11B014);
    sub_24B039184(&qword_27EFCC2E8, &qword_27EFCC2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC250);
  }

  return result;
}

uint64_t sub_24B11B074(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B11B0F8()
{
  result = qword_27EFCC288;
  if (!qword_27EFCC288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC290);
    sub_24B11B1B0();
    sub_24B039184(&qword_27EFCC2D8, &qword_27EFCC2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC288);
  }

  return result;
}

unint64_t sub_24B11B1B0()
{
  result = qword_27EFCC298;
  if (!qword_27EFCC298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC2A0);
    sub_24B11B268();
    sub_24B039184(&qword_27EFCC2B8, &qword_27EFCC2C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC298);
  }

  return result;
}

unint64_t sub_24B11B268()
{
  result = qword_27EFCC2A8;
  if (!qword_27EFCC2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC2B0);
    sub_24B039184(&qword_27EFCC2B8, &qword_27EFCC2C0);
    sub_24B039184(&qword_27EFCC2C8, &qword_27EFCC2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC2A8);
  }

  return result;
}

unint64_t sub_24B11B34C()
{
  result = qword_27EFCC2F8;
  if (!qword_27EFCC2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC230);
    sub_24B11AF30();
    sub_24B039184(&qword_27EFCC300, &qword_27EFCC248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC2F8);
  }

  return result;
}

uint64_t PlatterWithIcon.Style.Shadow.init(color:radius:yOffset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  return result;
}

uint64_t static PlatterWithIcon.Style.listLeadingIcon()@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC310);
  sub_24B039184(&qword_27EFCC318, &qword_27EFCC310);
  v2 = sub_24B2D34A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC320);
  sub_24B039184(&qword_27EFCC328, &qword_27EFCC320);
  result = sub_24B2D34A4();
  *a1 = v2;
  *(a1 + 8) = 1;
  *(a1 + 16) = result;
  *(a1 + 24) = 0x4000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t static PlatterWithIcon.Style.mapAnnotationView(includeShadow:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC310);
  sub_24B039184(&qword_27EFCC318, &qword_27EFCC310);
  v4 = sub_24B2D34A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC320);
  sub_24B039184(&qword_27EFCC328, &qword_27EFCC320);
  result = sub_24B2D34A4();
  v6 = result;
  if (a1)
  {
    sub_24B2D4AC4();
    v7 = sub_24B2D4B44();

    v8 = xmmword_24B2EB380;
  }

  else
  {
    v7 = 0;
    v8 = 0uLL;
  }

  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v6;
  *(a2 + 24) = 0x4010000000000000;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_24B11B66C()
{
  if (!v0[1])
  {
    return sub_24B2D6104();
  }

  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_24B2D6104();
  sub_24B2D5404();
  sub_24B2D6104();
  if (v1)
  {
    sub_24B2D4AA4();
  }

  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x24C23C8F0](v5);
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return MEMORY[0x24C23C8F0](v6);
}

uint64_t _s12FindMyUICore15PlatterWithIconV0F0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v54 = a1;
  v55 = a2;
  v2 = sub_24B2D1494();
  v52 = *(v2 - 8);
  v53 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB688);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v52 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBEB8);
  MEMORY[0x28223BE20](v8);
  v10 = &v52 - v9;
  v11 = type metadata accessor for PlatterWithIcon.Icon(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v52 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC378);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v52 - v21;
  v24 = &v52 + *(v23 + 56) - v21;
  sub_24B11BE1C(v54, &v52 - v21);
  sub_24B11BE1C(v55, v24);
  v55 = v22;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v26 = v55;
      sub_24B11BE1C(v55, v16);
      v27 = *v16;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = *v24;
        if (v27)
        {
          if (v28)
          {
            sub_24B10FCA0();
            v29 = v27;
            v30 = sub_24B2D5A34();

            if ((v30 & 1) == 0)
            {
              goto LABEL_36;
            }

LABEL_35:
            sub_24B11C22C(v26);
            return 1;
          }
        }

        else
        {
          if (!v28)
          {
            goto LABEL_35;
          }
        }

        goto LABEL_36;
      }
    }

    else
    {
      v26 = v55;
      sub_24B11BE1C(v55, v13);
      v33 = *v13;
      v34 = *(v13 + 1);
      v35 = *(v13 + 2);
      v36 = *(v13 + 3);
      v37 = *(v13 + 4);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v39 = *v24;
        v38 = *(v24 + 1);
        v40 = *(v24 + 2);
        v54 = *(v24 + 3);
        v41 = *(v24 + 4);
        if (v34)
        {
          if (v38)
          {
            v57[0] = v33;
            v57[1] = v34;
            v57[2] = v35;
            v56[0] = v39;
            v56[1] = v38;
            v56[2] = v40;
            sub_24B11C288(v33, v34);

            MyUICore9EmojiViewV4InfoV2eeoiySbAE_AEtFZ_0 = _s12FindMyUICore9EmojiViewV4InfoV2eeoiySbAE_AEtFZ_0(v57, v56);

            if (MyUICore9EmojiViewV4InfoV2eeoiySbAE_AEtFZ_0)
            {
              v43 = *&v54;
              sub_24B11C1E8(v33, v34);
              if (v36 != v43 || v37 != v41)
              {
                goto LABEL_36;
              }

              goto LABEL_35;
            }

            sub_24B11C1E8(v33, v34);
LABEL_36:
            sub_24B11C22C(v26);
            return 0;
          }

          sub_24B11C288(v33, v34);
        }

        else if (!v38)
        {
          sub_24B11C1E8(v33, 0);
          goto LABEL_35;
        }

        sub_24B11C1E8(v33, v34);
        sub_24B11C1E8(v39, v38);
        goto LABEL_36;
      }

      sub_24B11C1E8(v33, v34);
    }
  }

  else
  {
    v54 = v4;
    v32 = v52;
    v31 = v53;
    sub_24B11BE1C(v55, v19);
    if (!swift_getEnumCaseMultiPayload())
    {
      v44 = *(v8 + 48);
      sub_24B0391CC(v19, v10, &qword_27EFCB688);
      sub_24B0391CC(v24, &v10[v44], &qword_27EFCB688);
      v45 = *(v32 + 48);
      if (v45(v10, 1, v31) == 1)
      {
        v46 = v45(&v10[v44], 1, v31);
        v26 = v55;
        if (v46 == 1)
        {
          sub_24AFF8258(v10, &qword_27EFCB688);
          goto LABEL_35;
        }
      }

      else
      {
        sub_24B008890(v10, v7, &qword_27EFCB688);
        if (v45(&v10[v44], 1, v31) != 1)
        {
          v47 = &v10[v44];
          v48 = v54;
          (*(v32 + 32))(v54, v47, v31);
          sub_24B11BEC8(&qword_27EFCBEC0, MEMORY[0x277D08B20]);
          v49 = sub_24B2D52A4();
          v50 = *(v32 + 8);
          v50(v48, v31);
          v50(v7, v31);
          sub_24AFF8258(v10, &qword_27EFCB688);
          v26 = v55;
          if (v49)
          {
            goto LABEL_35;
          }

          goto LABEL_36;
        }

        (*(v32 + 8))(v7, v31);
        v26 = v55;
      }

      sub_24AFF8258(v10, &qword_27EFCBEB8);
      goto LABEL_36;
    }

    sub_24AFF8258(v19, &qword_27EFCB688);
    v26 = v55;
  }

  sub_24AFF8258(v26, &qword_27EFCC378);
  return 0;
}

uint64_t sub_24B11BE1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatterWithIcon.Icon(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B11BEC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B11BF54()
{
  result = type metadata accessor for PlatterWithIcon.Icon(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_24B11BFC8()
{
  sub_24B11C088(319, &qword_27EFCBEA8, MEMORY[0x277D08B20]);
  if (v0 <= 0x3F)
  {
    sub_24B11C088(319, &qword_27EFCC358, sub_24B10FCA0);
    if (v1 <= 0x3F)
    {
      sub_24B11C0DC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_24B11C088(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24B2D5A84();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24B11C0DC()
{
  if (!qword_27EFCC360)
  {
    v0 = sub_24B2D5A84();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFCC360);
    }
  }
}

unint64_t sub_24B11C15C()
{
  result = qword_27EFCC368;
  if (!qword_27EFCC368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC370);
    sub_24B11AF30();
    sub_24B11B34C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC368);
  }

  return result;
}

uint64_t sub_24B11C1E8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24B11C22C(uint64_t a1)
{
  v2 = type metadata accessor for PlatterWithIcon.Icon(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B11C288(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

double sub_24B11C2CC(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_24B11C2F8()
{
  result = qword_27EFCC398;
  if (!qword_27EFCC398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC390);
    sub_24B1146BC();
    sub_24B11C434(&qword_27EFCC3A0, &qword_27EFCC3A8, &unk_24B2EB5D8, sub_24B11C3B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC398);
  }

  return result;
}

unint64_t sub_24B11C3B0()
{
  result = qword_27EFCC3B0;
  if (!qword_27EFCC3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC3B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC3B0);
  }

  return result;
}

uint64_t sub_24B11C434(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B11C4B0()
{
  result = qword_27EFCC3C8;
  if (!qword_27EFCC3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC3C8);
  }

  return result;
}

uint64_t sub_24B11C50C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_24B11C518(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t PulseAnimation.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PulseAnimation();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_24B2D5044();
  v11 = v10;
  sub_24B11C7EC(v2, &v29);
  v12 = v29;
  v13 = v30;
  v14 = v31;
  v25 = v29;
  v26 = v30;
  v27 = v31;
  *&v28 = v9;
  *(&v28 + 1) = v11;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC420);
  (*(*(v15 - 8) + 16))(a2, a1, v15);
  v16 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC428) + 36));
  v17 = v26;
  *v16 = v25;
  v16[1] = v17;
  v18 = v28;
  v16[2] = v27;
  v16[3] = v18;
  v29 = v12;
  v30 = v13;
  v31 = v14;
  v32 = v9;
  v33 = v11;
  sub_24B008890(&v25, v24, &qword_27EFCC430);
  sub_24AFF8258(&v29, &qword_27EFCC430);
  sub_24B11CD38(v2, v8);
  v19 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v20 = swift_allocObject();
  sub_24B11CD9C(v8, v20 + v19);
  v21 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC438) + 36));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC440);
  sub_24B2D56A4();
  result = sub_24B008890(v2, v21 + *(v22 + 40), &qword_27EFC8450);
  *v21 = &unk_24B2EB650;
  v21[1] = v20;
  return result;
}

uint64_t type metadata accessor for PulseAnimation()
{
  result = qword_27EFCC448;
  if (!qword_27EFCC448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_24B11C7EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [objc_opt_self() systemGreenColor];
  v5 = sub_24B2D4B94();
  v6 = type metadata accessor for PulseAnimation();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8);
  sub_24B2D4CD4();
  v7 = 16;
  if (v15)
  {
    v7 = 24;
  }

  v8 = *(a1 + *(v6 + 20) + v7);
  sub_24B2D5184();
  v10 = v9;
  v12 = v11;
  sub_24B2D4CD4();

  v13 = 8;
  if (!v15)
  {
    v13 = 0;
  }

  result = *(a1 + *(v6 + 20) + v13);
  *a2 = v5;
  *(a2 + 8) = v8;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 40) = result;
  return result;
}

uint64_t sub_24B11C98C(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  v1[3] = swift_task_alloc();
  v2 = sub_24B2D24A4();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  sub_24B2D5694();
  v1[7] = sub_24B2D5684();
  v4 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B11CAB8, v4, v3);
}

uint64_t sub_24B11CAB8()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  sub_24B008890(v4, v3, &qword_27EFC8450);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24AFF8258(v0[3], &qword_27EFC8450);
LABEL_8:
    v15 = v0[2];
    *(swift_task_alloc() + 16) = v15;
    sub_24B2D50E4();
    sub_24B2D35C4();
    goto LABEL_9;
  }

  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  v8 = v0[2];
  (*(v6 + 32))(v5, v0[3], v7);
  sub_24B2D23E4();
  v10 = v9;
  v11 = type metadata accessor for PulseAnimation();
  v12 = ceil(v10 / (*(v8 + *(v11 + 20) + 32) + *(v8 + *(v11 + 20) + 40)));
  result = (*(v6 + 8))(v5, v7);
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (v12 < 1)
  {
    goto LABEL_8;
  }

  v14 = v0[2];
  sub_24B2D50B4();
  sub_24B2D5094();

  *(swift_task_alloc() + 16) = v14;

  sub_24B2D35C4();

LABEL_9:

  v16 = v0[1];

  return v16();
}

uint64_t sub_24B11CD38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PulseAnimation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B11CD9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PulseAnimation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B11CE00()
{
  v2 = *(type metadata accessor for PulseAnimation() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AFFD370;

  return sub_24B11C98C(v0 + v3);
}

uint64_t sub_24B11CECC()
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for PulseAnimation();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC92E8);
  sub_24B2D4CE4();
}

double sub_24B11CFC8()
{
  unk_27EFCC400 = 0;
  xmmword_27EFCC3F0 = 0x3FE3333333333333uLL;
  result = 2.5;
  unk_27EFCC408 = xmmword_24B2E4210;
  qword_27EFCC418 = 0x3FF8000000000000;
  return result;
}

double static PulseAnimation.Style.default.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_27EFC76B0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = unk_27EFCC400;
  *a1 = xmmword_27EFCC3F0;
  a1[1] = v1;
  result = *&qword_27EFCC410;
  a1[2] = *&qword_27EFCC410;
  return result;
}

void sub_24B11D0B0()
{
  sub_24AFF7E20();
  if (v0 <= 0x3F)
  {
    sub_24B0BA5A4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24B11D14C()
{
  result = qword_27EFCC458;
  if (!qword_27EFCC458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC438);
    sub_24B11D204();
    sub_24B039184(&qword_27EFCC478, &qword_27EFCC440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC458);
  }

  return result;
}

unint64_t sub_24B11D204()
{
  result = qword_27EFCC460;
  if (!qword_27EFCC460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC428);
    sub_24B039184(&qword_27EFCC468, &qword_27EFCC420);
    sub_24B039184(&qword_27EFCC470, &qword_27EFCC430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC460);
  }

  return result;
}

uint64_t RelativeDateText.init(forcingPastDate:displayStyle:capitalizationContext:wantsColoredText:localizerContainer:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v26 = a6;
  v13 = sub_24B2D24A4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a2;
  sub_24B2D2494();
  sub_24B2D1364();
  v18 = sub_24B2D13C4();
  (*(*(v18 - 8) + 8))(a1, v18);
  (*(v14 + 8))(v16, v13);
  v19 = type metadata accessor for RelativeDateText();
  *(a7 + v19[5]) = v17;
  v20 = v19[6];
  v21 = sub_24B2D2274();
  result = (*(*(v21 - 8) + 32))(a7 + v20, a3, v21);
  *(a7 + v19[7]) = a4;
  v23 = (a7 + v19[8]);
  v24 = v26;
  *v23 = a5;
  v23[1] = v24;
  return result;
}

uint64_t type metadata accessor for RelativeDateText()
{
  result = qword_27EFCC480;
  if (!qword_27EFCC480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RelativeDateText.init(relativeDate:displayStyle:capitalizationContext:wantsColoredText:localizerContainer:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a2;
  v14 = sub_24B2D13C4();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  v15 = type metadata accessor for RelativeDateText();
  *(a7 + v15[5]) = v13;
  v16 = v15[6];
  v17 = sub_24B2D2274();
  result = (*(*(v17 - 8) + 32))(a7 + v16, a3, v17);
  *(a7 + v15[7]) = a4;
  v19 = (a7 + v15[8]);
  *v19 = a5;
  v19[1] = a6;
  return result;
}

double RelativeDateText.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for RelativeDateText() + 32));
  if (v3)
  {

    v4 = sub_24B11D7A0();
    v6 = v5;
    v8 = v7;
    v9 = v3();
    v11 = v10;
    v13 = v12;
    sub_24B083C34(v4, v6, v8 & 1);

    sub_24B083C44(v9, v11, v13 & 1);

    sub_24B2D3ED4();
    sub_24AFD5890(v3);
    sub_24B083C34(v9, v11, v13 & 1);
  }

  else
  {
    sub_24B11D7A0();
    sub_24B2D3ED4();
  }

  result = *&v15;
  *a1 = v15;
  *(a1 + 16) = v16;
  *(a1 + 32) = v17;
  return result;
}

uint64_t sub_24B11D7A0()
{
  v1 = sub_24B2D2384();
  v67 = *(v1 - 8);
  v68 = v1;
  MEMORY[0x28223BE20](v1);
  v65 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v69 = &v52 - v4;
  v5 = sub_24B2D23A4();
  MEMORY[0x28223BE20](v5 - 8);
  v77 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_24B2D2554();
  v62 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v75 = &v52 - v9;
  v76 = sub_24B2D2534();
  v59 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v61 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v78 = &v52 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB088);
  MEMORY[0x28223BE20](v13 - 8);
  v80 = &v52 - v14;
  v70 = sub_24B2D2274();
  v15 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v57 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v79 = &v52 - v18;
  v74 = sub_24B2D24A4();
  v19 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v52 - v22;
  MyRelativeDateFormatStyle = type metadata accessor for FindMyRelativeDateFormatStyle();
  MEMORY[0x28223BE20](MyRelativeDateFormatStyle);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC490);
  MEMORY[0x28223BE20](v27 - 8);
  v55 = &v52 - v28;
  sub_24B2D36A4();
  v29 = v23;
  sub_24B2D1374();
  v30 = type metadata accessor for RelativeDateText();
  v31 = *(v30 + 24);
  LOBYTE(v23) = *(v0 + *(v30 + 20));
  v60 = v15;
  v32 = *(v15 + 16);
  v33 = v70;
  v32(v79, v0 + v31, v70);
  v34 = v80;
  v63 = v0;
  sub_24B2D1354();
  v35 = sub_24B2D1344();
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  sub_24B2D2514();
  sub_24B2D2544();
  v58 = v19;
  v36 = *(v19 + 16);
  v37 = v74;
  v36(v26, v29, v74);
  v26[MyRelativeDateFormatStyle[5]] = v23;
  v38 = &v26[MyRelativeDateFormatStyle[6]];
  v54 = v15 + 16;
  v53 = v32;
  v32(v38, v79, v33);
  v72 = v26;
  v73 = MyRelativeDateFormatStyle;
  sub_24B0E7860(v80, &v26[MyRelativeDateFormatStyle[7]]);
  v56 = v29;
  v36(v71, v29, v37);
  sub_24B2D2394();
  v39 = v65;
  if (v23)
  {
    sub_24B2D2374();
  }

  else
  {
    sub_24B2D2364();
  }

  (*(v67 + 32))(v69, v39, v68);
  v40 = v59;
  (*(v59 + 16))(v61, v78, v76);
  v41 = v62;
  v42 = v75;
  v43 = v66;
  (*(v62 + 16))(v64, v75, v66);
  v44 = v79;
  v45 = v70;
  v53(v57, v79, v70);
  sub_24B2D2444();
  (*(v41 + 8))(v42, v43);
  (*(v40 + 8))(v78, v76);
  sub_24B11E268(v80);
  (*(v60 + 8))(v44, v45);
  (*(v58 + 8))(v56, v74);
  sub_24B11E2D0();
  v46 = sub_24B2D45D4();
  v48 = v47;
  LOBYTE(v43) = v49;
  sub_24B11DFDC(&v82);
  v81 = v82;
  v50 = sub_24B2D4594();
  sub_24B083C34(v46, v48, v43 & 1);

  return v50;
}

uint64_t sub_24B11DFDC@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_24B2D24A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + *(type metadata accessor for RelativeDateText() + 28)) == 1)
  {
    sub_24B2D2494();
    v7 = sub_24B2D1394();
    v8 = sub_24B2D13A4();
    if (v7)
    {
      v12 = sub_24B2D4AF4();
      v9 = sub_24B2D34A4();
      result = (*(v4 + 8))(v6, v3);
    }

    else
    {
      if (v8)
      {
        v12 = sub_24B2D4A74();
      }

      else
      {
        LODWORD(v12) = sub_24B2D3FD4();
      }

      v9 = sub_24B2D34A4();
      result = (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    LODWORD(v12) = sub_24B2D3FD4();
    result = sub_24B2D34A4();
    v9 = result;
  }

  *a1 = v9;
  return result;
}

void sub_24B11E1BC()
{
  sub_24B2D13C4();
  if (v0 <= 0x3F)
  {
    sub_24B2D2274();
    if (v1 <= 0x3F)
    {
      sub_24B10158C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24B11E268(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB088);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24B11E2D0()
{
  result = qword_27EFCC498;
  if (!qword_27EFCC498)
  {
    type metadata accessor for FindMyRelativeDateFormatStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC498);
  }

  return result;
}

uint64_t sub_24B11E328()
{
  v1 = sub_24B2D3C64();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for ServerImageView() + 24));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_24B2D5924();
    v8 = sub_24B2D42A4();
    sub_24B2D3154();

    sub_24B2D3C54();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

double sub_24B11E47C()
{
  v1 = sub_24B2D3C64();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for ServerImageView() + 28));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_24B2D5924();
  v8 = sub_24B2D42A4();
  sub_24B2D3154();

  sub_24B2D3C54();
  swift_getAtKeyPath();
  sub_24AFEFDB8(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

uint64_t sub_24B11E5D8()
{
  v0 = sub_24B2D3184();
  __swift_allocate_value_buffer(v0, qword_27EFCC4A0);
  __swift_project_value_buffer(v0, qword_27EFCC4A0);
  return sub_24B2D3174();
}

uint64_t ServerImageView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ServerImageView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = sub_24B2D5064();
  a1[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBA98);
  sub_24B11E830(v1, a1 + *(v8 + 44));
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBAA0) + 36);
  *v9 = 0;
  *(v9 + 4) = 1;
  sub_24B11FA7C(v1, v6);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_24B11FAE0(v6, v11 + v10);
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC4B8) + 36));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC4C0);
  sub_24B2D56A4();
  result = sub_24B11FC10(v1, v12 + *(v13 + 40));
  *v12 = &unk_24B2EB780;
  v12[1] = v11;
  return result;
}

uint64_t type metadata accessor for ServerImageView()
{
  result = qword_27EFCC4D0;
  if (!qword_27EFCC4D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B11E830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v47 = a1;
  v2 = sub_24B2D40E4();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC94F8);
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBB40);
  MEMORY[0x28223BE20](v41);
  v39 = &v35 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBB48);
  MEMORY[0x28223BE20](v43);
  v10 = &v35 - v9;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBB50);
  MEMORY[0x28223BE20](v40);
  v12 = (&v35 - v11);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBB58);
  MEMORY[0x28223BE20](v45);
  v42 = &v35 - v13;
  v14 = sub_24B2D4BD4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBB60);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v35 - v19;
  sub_24B2D5694();
  v44 = sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v49 = *(v47 + *(type metadata accessor for ServerImageView() + 32));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC510);
  sub_24B2D4CD4();
  v21 = v48;
  if ((~v48 & 0xF000000000000007) != 0)
  {
    if (v48 >> 62)
    {
      if (v48 >> 62 == 1)
      {
        sub_24B105B44(v48);
        LOBYTE(v48) = 0;
        goto LABEL_8;
      }

      sub_24B2D33E4();
      sub_24B2D40D4();
      sub_24B039184(qword_27EFC9500, &qword_27EFC94F8);
      sub_24B105D2C();
      v26 = v38;
      v27 = v39;
      v28 = v36;
      sub_24B2D46A4();
      (*(v37 + 8))(v4, v26);
      (*(v35 + 8))(v7, v28);
      v29 = (v27 + *(v41 + 36));
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8E20) + 28);
      v31 = *MEMORY[0x277CDF438];
      v32 = sub_24B2D3364();
      (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
      *v29 = swift_getKeyPath();
      sub_24B008890(v27, v12, &qword_27EFCBB40);
      swift_storeEnumTagMultiPayload();
      sub_24B105BE4();
      v33 = v42;
      sub_24B2D3ED4();
      sub_24B008890(v33, v10, &qword_27EFCBB58);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBB68);
      sub_24B105B58();
      sub_24B105D84();
      sub_24B2D3ED4();
      sub_24AFF8258(v33, &qword_27EFCBB58);
      v24 = v27;
      v25 = &qword_27EFCBB40;
    }

    else
    {
      (*(v15 + 104))(v17, *MEMORY[0x277CE0FE0], v14);
      v22 = sub_24B2D4C14();
      (*(v15 + 8))(v17, v14);
      *v12 = v22;
      swift_storeEnumTagMultiPayload();
      sub_24B105BE4();
      swift_retain_n();
      v23 = v42;
      sub_24B2D3ED4();
      sub_24B008890(v23, v10, &qword_27EFCBB58);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBB68);
      sub_24B105B58();
      sub_24B105D84();
      sub_24B2D3ED4();
      sub_24B105B44(v21);

      v24 = v23;
      v25 = &qword_27EFCBB58;
    }

    sub_24AFF8258(v24, v25);
    goto LABEL_12;
  }

  LOBYTE(v48) = 1;
LABEL_8:
  sub_24B2D3ED4();
  *v10 = v49;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBB68);
  sub_24B105B58();
  sub_24B105D84();
  sub_24B2D3ED4();
LABEL_12:
  sub_24AFE0304(v20, v46);
}

uint64_t sub_24B11F044(uint64_t a1)
{
  v1[12] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  v1[13] = swift_task_alloc();
  v1[14] = type metadata accessor for ServerImageCacheRequest();
  v1[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC4C8);
  v1[16] = swift_task_alloc();
  v2 = sub_24B2D1D34();
  v1[17] = v2;
  v1[18] = *(v2 - 8);
  v1[19] = swift_task_alloc();
  sub_24B2D5694();
  v1[20] = sub_24B2D5684();
  v4 = sub_24B2D5604();
  v1[21] = v4;
  v1[22] = v3;

  return MEMORY[0x2822009F8](sub_24B11F1D8, v4, v3);
}

uint64_t sub_24B11F1D8()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  sub_24B11FC10(*(v0 + 96), v3);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = *(v0 + 128);
  if (v4 == 1)
  {
    v6 = *(v0 + 96);

    sub_24AFF8258(v5, &qword_27EFCC4C8);
    *(v0 + 16) = *(v6 + *(type metadata accessor for ServerImageView() + 32));
    *(v0 + 64) = 0xF000000000000007;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC510);
    sub_24B2D4CE4();
LABEL_12:

    v31 = *(v0 + 8);

    return v31();
  }

  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  v9 = *(v0 + 136);
  v11 = *(v0 + 112);
  v10 = *(v0 + 120);
  v12 = *(v0 + 96);
  (*(v8 + 32))(v7, *(v0 + 128), v9);
  (*(v8 + 16))(v10, v7, v9);
  v13 = type metadata accessor for ServerImageView();
  *(v0 + 184) = v13;
  LOBYTE(v7) = *(v12 + *(v13 + 20));
  v14 = sub_24B11E47C();
  *(v10 + *(v11 + 20)) = v7;
  *(v10 + *(v11 + 24)) = v14;
  v15 = sub_24B11E328();
  *(v0 + 192) = v15;
  if (!v15)
  {

    if (qword_27EFC76B8 != -1)
    {
      swift_once();
    }

    v22 = sub_24B2D3184();
    __swift_project_value_buffer(v22, qword_27EFCC4A0);
    v23 = sub_24B2D3164();
    v24 = sub_24B2D5914();
    v25 = os_log_type_enabled(v23, v24);
    v27 = *(v0 + 144);
    v26 = *(v0 + 152);
    v28 = *(v0 + 136);
    v29 = *(v0 + 120);
    if (v25)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_24AFD2000, v23, v24, "ServerImageCache is nil", v30, 2u);
      MEMORY[0x24C23D530](v30, -1, -1);
    }

    sub_24B1202DC(v29);
    (*(v27 + 8))(v26, v28);
    goto LABEL_12;
  }

  v16 = *(v0 + 104);
  sub_24B2D56B4();
  v17 = sub_24B2D56D4();
  (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  v32 = (*MEMORY[0x277D08DC8] + MEMORY[0x277D08DC8]);
  v18 = swift_task_alloc();
  *(v0 + 200) = v18;
  *v18 = v0;
  v18[1] = sub_24B11F568;
  v19 = *(v0 + 120);
  v20 = *(v0 + 104);

  return v32(v0 + 72, v19, v20);
}

uint64_t sub_24B11F568()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  *(*v1 + 208) = v0;

  sub_24AFF8258(v3, &qword_27EFC8580);
  v4 = *(v2 + 176);
  v5 = *(v2 + 168);
  if (v0)
  {
    v6 = sub_24B11F838;
  }

  else
  {
    v6 = sub_24B11F6D0;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_24B11F6D0()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);
  v12 = *(v0 + 136);
  v13 = *(v0 + 152);
  v3 = *(v0 + 120);
  v4 = *(v0 + 96);

  v5 = *(v0 + 72);
  v6 = sub_24B2D4BB4();
  v7 = (v4 + *(v1 + 32));
  v8 = *v7;
  v9 = v7[1];
  *(v0 + 48) = *v7;
  *(v0 + 56) = v9;
  *(v0 + 88) = v6;
  sub_24B105B10(v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC510);
  sub_24B2D4CE4();

  sub_24B105B44(v8);

  sub_24B1202DC(v3);
  (*(v2 + 8))(v13, v12);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24B11F838()
{

  if (qword_27EFC76B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 208);
  v2 = sub_24B2D3184();
  __swift_project_value_buffer(v2, qword_27EFCC4A0);
  v3 = v1;
  v4 = sub_24B2D3164();
  v5 = sub_24B2D5914();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 208);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24AFD2000, v4, v5, "Failed to load image: %@", v7, 0xCu);
    sub_24AFF8258(v8, &qword_27EFC7BB8);
    MEMORY[0x24C23D530](v8, -1, -1);
    MEMORY[0x24C23D530](v7, -1, -1);
  }

  v11 = *(v0 + 208);
  v12 = *(v0 + 184);
  v14 = *(v0 + 144);
  v13 = *(v0 + 152);
  v15 = *(v0 + 136);
  v16 = *(v0 + 120);
  v17 = *(v0 + 96);

  *(v0 + 32) = *(v17 + *(v12 + 32));
  *(v0 + 80) = v11 | 0x4000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC510);
  sub_24B2D4CE4();
  sub_24B1202DC(v16);
  (*(v14 + 8))(v13, v15);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_24B11FA7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerImageView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B11FAE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerImageView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B11FB44()
{
  v2 = *(type metadata accessor for ServerImageView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AFFDE44;

  return sub_24B11F044(v0 + v3);
}

uint64_t sub_24B11FC10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC4C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B11FC9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_24B2D5064();
  a2[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBA98);
  sub_24B11E830(v2, a2 + *(v8 + 44));
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCBAA0) + 36);
  *v9 = 0;
  *(v9 + 4) = 1;
  sub_24B11FA7C(v2, v6);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_24B11FAE0(v6, v11 + v10);
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC4B8) + 36));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC4C0);
  sub_24B2D56A4();
  result = sub_24B11FC10(v2, v12 + *(v13 + 40));
  *v12 = &unk_24B2EB890;
  v12[1] = v11;
  return result;
}

void sub_24B11FE54()
{
  sub_24B11FF68();
  if (v0 <= 0x3F)
  {
    sub_24B1054BC(319, &qword_27EFCC4E8, &qword_27EFCC4F0, &unk_24B2EB810, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24B0F6218();
      if (v2 <= 0x3F)
      {
        sub_24B1054BC(319, &qword_27EFCC4F8, &qword_27EFCC150, &unk_24B2EB0C0, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24B11FF68()
{
  if (!qword_27EFCC4E0)
  {
    sub_24B2D1D34();
    v0 = sub_24B2D5A84();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFCC4E0);
    }
  }
}

unint64_t sub_24B11FFC0()
{
  result = qword_27EFCC500;
  if (!qword_27EFCC500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC4B8);
    sub_24B1055D8();
    sub_24B039184(&qword_27EFCC508, &qword_27EFCC4C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC500);
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_12FindMyUICore15ServerImageViewV5StateO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t objectdestroyTm_16()
{
  v1 = type metadata accessor for ServerImageView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = sub_24B2D1D34();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  j__swift_release();
  sub_24AFEFDB8(*(v5 + *(v1 + 28)), *(v5 + *(v1 + 28) + 8));
  v8 = *(v5 + *(v1 + 32));
  if ((~v8 & 0xF000000000000007) != 0)
  {
    sub_24B104FE8(v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B120210()
{
  v2 = *(type metadata accessor for ServerImageView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AFFD370;

  return sub_24B11F044(v0 + v3);
}

uint64_t sub_24B1202DC(uint64_t a1)
{
  v2 = type metadata accessor for ServerImageCacheRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SymbolView.init(info:style:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8A80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20[-v7];
  v9 = sub_24B2D1BB4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *a2;
  v14 = *(a2 + 8);
  v22 = *(a2 + 9);
  v23 = v14;
  v21 = *(a2 + 10);
  v15 = a2[2];
  sub_24B008890(a1, v8, &qword_27EFC8A80);
  v16 = *(v10 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_24B2D1B94();
    sub_24AFF8258(a1, &qword_27EFC8A80);
    if (v16(v8, 1, v9) != 1)
    {
      sub_24AFF8258(v8, &qword_27EFC8A80);
    }
  }

  else
  {
    sub_24AFF8258(a1, &qword_27EFC8A80);
    (*(v10 + 32))(v12, v8, v9);
  }

  (*(v10 + 32))(a3, v12, v9);
  result = type metadata accessor for SymbolView();
  v18 = a3 + *(result + 20);
  *v18 = v13;
  v19 = v22;
  *(v18 + 8) = v23;
  *(v18 + 9) = v19;
  *(v18 + 10) = v21;
  *(v18 + 16) = v15;
  return result;
}

uint64_t type metadata accessor for SymbolView()
{
  result = qword_27EFCC570;
  if (!qword_27EFCC570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SymbolView.Style.init(badgeIconFont:prefersCircleVariant:supportsDynamicSize:isMonochrome:forcedColor:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 9) = a3;
  *(a6 + 10) = a4 ^ 1;
  *(a6 + 16) = a5;
  return result;
}

uint64_t Symbol.Color.uiColor.getter()
{
  v1 = v0;
  v2 = sub_24B2D3084();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B2D1B74();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  (*(v7 + 16))(&v19 - v11, v1, v6);
  v13 = (*(v7 + 88))(v12, v6);
  if (v13 == *MEMORY[0x277D08DA0])
  {
    return sub_24B2D4B54();
  }

  if (v13 == *MEMORY[0x277D08D80])
  {
    return sub_24B2D4B04();
  }

  if (v13 == *MEMORY[0x277D08D98])
  {
    return sub_24B2D4B34();
  }

  if (v13 == *MEMORY[0x277D08D90])
  {
    return sub_24B2D4B24();
  }

  if (v13 == *MEMORY[0x277D08D60])
  {
    return sub_24B2D4A84();
  }

  if (v13 == *MEMORY[0x277D08D78])
  {
    return sub_24B2D4AD4();
  }

  if (v13 == *MEMORY[0x277D08D58])
  {
    return sub_24B2D4A74();
  }

  if (v13 == *MEMORY[0x277D08D88])
  {
    return sub_24B2D4B14();
  }

  if (v13 == *MEMORY[0x277D08D68])
  {
    return sub_24B2D4A94();
  }

  if (v13 == *MEMORY[0x277D08D70])
  {
    return sub_24B2D4AB4();
  }

  if (v13 == *MEMORY[0x277D08D50])
  {
    if (qword_27EFC7870 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v2, qword_27EFE4810);
    (*(v3 + 16))(v5, v15, v2);
    return sub_24B2D4B84();
  }

  else
  {
    v16 = (*(v7 + 104))(v10);
    v17 = Symbol.Color.uiColor.getter(v16);
    v18 = *(v7 + 8);
    v18(v10, v6);
    v18(v12, v6);
    return v17;
  }
}

uint64_t SymbolText(_:)()
{
  v0 = sub_24B2D1B74();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24B2D3D64();
  MEMORY[0x28223BE20](v4 - 8);
  sub_24B2D3D54();
  sub_24B2D3D44();
  sub_24B2D1AB4();
  sub_24B2D4BE4();
  sub_24B2D3D34();

  sub_24B2D3D44();
  sub_24B2D3D84();
  v5 = sub_24B2D45E4();
  v7 = v6;
  v9 = v8;
  sub_24B2D1B84();
  v10 = Symbol.Color.uiColor.getter();
  (*(v1 + 8))(v3, v0);
  v13[2] = v10;
  v11 = sub_24B2D4594();
  sub_24B083C34(v5, v7, v9 & 1);

  return v11;
}

uint64_t SymbolTextNoColor(_:)()
{
  v0 = sub_24B2D3D64();
  MEMORY[0x28223BE20](v0 - 8);
  sub_24B2D3D54();
  sub_24B2D3D44();
  sub_24B2D1AB4();
  sub_24B2D4BE4();
  sub_24B2D3D34();

  sub_24B2D3D44();
  sub_24B2D3D84();
  return sub_24B2D45E4();
}

uint64_t sub_24B120C9C()
{
  v1 = sub_24B2D3084();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B2D1B74();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v0 + *(type metadata accessor for SymbolView() + 20);
  if (*(v9 + 8) == 1 && (sub_24B2D1B54() & 1) != 0 && (*(v9 + 10) & 1) != 0)
  {
    if (qword_27EFC7878 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v1, qword_27EFE4828);
    (*(v2 + 16))(v4, v10, v1);
    return sub_24B2D4B84();
  }

  else
  {
    v11 = *(v9 + 16);
    if (v11)
    {
    }

    else
    {
      sub_24B2D1B84();
      v11 = Symbol.Color.uiColor.getter();
      (*(v6 + 8))(v8, v5);
    }
  }

  return v11;
}

uint64_t SymbolView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA1D0);
  MEMORY[0x28223BE20](v69);
  v68 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v67 = &v61 - v4;
  v5 = sub_24B2D3764();
  v6 = *(v5 - 8);
  v79 = v5;
  v80 = v6;
  MEMORY[0x28223BE20](v5);
  v77 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v78 = &v61 - v9;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA190);
  MEMORY[0x28223BE20](v66);
  v65 = &v61 - v10;
  v64 = sub_24B2D1B74();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_24B2D3E54();
  v12 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC518);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v61 - v15;
  v81 = sub_24B2D3694();
  v17 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v61 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v61 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8B70);
  v72 = *(v22 - 8);
  v73 = v22;
  MEMORY[0x28223BE20](v22);
  v84 = &v61 - v23;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC520);
  MEMORY[0x28223BE20](v71);
  v25 = &v61 - v24;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC528);
  MEMORY[0x28223BE20](v74);
  v27 = &v61 - v26;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC530);
  MEMORY[0x28223BE20](v82);
  v83 = &v61 - v28;
  sub_24B2D1AB4();
  v85 = sub_24B2D4BE4();
  v29 = v1 + *(type metadata accessor for SymbolView() + 20);
  if (*(v29 + 8) == 1 && (sub_24B2D1B54() & 1) != 0)
  {
    v30 = v61;
    sub_24B2D3684();
    sub_24B2D3664();
    (*(v17 + 8))(v30, v81);
  }

  else
  {
    sub_24B2D3674();
  }

  sub_24B2D4714();
  (*(v17 + 8))(v21, v81);

  v31 = v75;
  if (*(v29 + 10))
  {
    sub_24B2D3E44();
  }

  else
  {
    sub_24B2D3E34();
  }

  v32 = v79;
  v33 = v31;
  v34 = v76;
  v35 = v77;
  (*(v12 + 32))(v16, v33, v76);
  (*(v12 + 56))(v16, 0, 1, v34);
  KeyPath = swift_getKeyPath();
  v37 = &v25[*(v71 + 36)];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC538);
  sub_24B0391CC(v16, v37 + *(v38 + 28), &qword_27EFCC518);
  *v37 = KeyPath;
  (*(v72 + 32))(v25, v84, v73);
  v39 = sub_24B120C9C();
  if (*(v29 + 16))
  {
    v40 = *(v29 + 16);
  }

  else
  {
    v41 = v62;
    sub_24B2D1B84();
    v40 = Symbol.Color.uiColor.getter();
    (*(v63 + 8))(v41, v64);
  }

  sub_24B0391CC(v25, v27, &qword_27EFCC520);
  v42 = &v27[*(v74 + 36)];
  *v42 = v39;
  v42[1] = v40;
  if (*v29)
  {

    v43 = sub_24B2D4384();
  }

  else
  {

    v43 = 0;
  }

  v44 = v78;
  v45 = swift_getKeyPath();
  v46 = v83;
  sub_24B0391CC(v27, v83, &qword_27EFCC528);
  v47 = (v46 + *(v82 + 36));
  *v47 = v45;
  v47[1] = v43;
  v48 = v80;
  v49 = *(v80 + 104);
  if (*(v29 + 9) == 1)
  {
    v49(v44, *MEMORY[0x277CDF9F8], v32);
    v49(v35, *MEMORY[0x277CDF9A8], v32);
    sub_24B1219C8();
    if (sub_24B2D5294())
    {
LABEL_18:
      v52 = v48;
      v53 = *(v48 + 32);
      v54 = v67;
      v53(v67, v44, v32);
      v55 = v69;
      v53((v54 + *(v69 + 48)), v35, v32);
      v56 = v68;
      sub_24B008890(v54, v68, &qword_27EFCA1D0);
      v57 = *(v55 + 48);
      v58 = v65;
      v53(v65, v56, v32);
      v59 = *(v52 + 8);
      v59(v56 + v57, v32);
      sub_24B0391CC(v54, v56, &qword_27EFCA1D0);
      v53((v58 + *(v66 + 36)), (v56 + *(v55 + 48)), v32);
      v59(v56, v32);
      sub_24B121A20();
      sub_24B039184(&qword_27EFCA1A8, &qword_27EFCA190);
      v60 = v83;
      sub_24B2D4774();
      sub_24AFF8258(v58, &qword_27EFCA190);
      return sub_24AFE1C58(v60);
    }

    __break(1u);
  }

  v50 = *MEMORY[0x277CDF9D8];
  v49(v44, v50, v32);
  v49(v35, v50, v32);
  sub_24B1219C8();
  result = sub_24B2D5294();
  if (result)
  {
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_24B1218A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B2D3BA4();
  *a1 = result;
  return result;
}

uint64_t sub_24B121920(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC518);
  MEMORY[0x28223BE20](v2 - 8);
  sub_24B008890(a1, &v5 - v3, &qword_27EFCC518);
  return sub_24B2D3B74();
}

unint64_t sub_24B1219C8()
{
  result = qword_27EFCA200;
  if (!qword_27EFCA200)
  {
    sub_24B2D3764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCA200);
  }

  return result;
}

unint64_t sub_24B121A20()
{
  result = qword_27EFCC540;
  if (!qword_27EFCC540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC530);
    sub_24B121AD8();
    sub_24B039184(&qword_27EFC8E90, &qword_27EFC8E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC540);
  }

  return result;
}

unint64_t sub_24B121AD8()
{
  result = qword_27EFCC548;
  if (!qword_27EFCC548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC528);
    sub_24B121B90();
    sub_24B039184(&qword_27EFCC560, &qword_27EFCC568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC548);
  }

  return result;
}

unint64_t sub_24B121B90()
{
  result = qword_27EFCC550;
  if (!qword_27EFCC550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC520);
    swift_getOpaqueTypeConformance2();
    sub_24B039184(&qword_27EFCC558, &qword_27EFCC538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC550);
  }

  return result;
}

uint64_t sub_24B121CBC()
{
  result = sub_24B2D1BB4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24B121D54()
{
  result = qword_27EFCC580;
  if (!qword_27EFCC580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC580);
  }

  return result;
}

uint64_t View.previewGroupForDynamicSizes(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v16 = v9;
  swift_getKeyPath();
  (*(v7 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  (*(v7 + 32))(v11 + v10, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC588);
  v14 = a2;
  v15 = a3;
  swift_getOpaqueTypeMetadata2();
  sub_24B039184(&qword_27EFCC590, &qword_27EFCC588);
  sub_24B1227B0(&qword_27EFCC598, MEMORY[0x277CDFA28]);
  v14 = a2;
  v15 = a3;
  swift_getOpaqueTypeConformance2();
  return sub_24B2D4ED4();
}

uint64_t sub_24B121FF4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v16[0] = a1;
  v16[1] = a4;
  v17 = a2;
  v18 = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v7 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v16 - v11;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B2D4764();
  v17 = a2;
  v18 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24B091A64(v9, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v14 = *(v7 + 8);
  v14(v9, OpaqueTypeMetadata2);
  sub_24B091A64(v12, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v14(v12, OpaqueTypeMetadata2);
}

uint64_t View.previewGroupForColorSchemes()(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v12[3] = sub_24B2D3344();
  swift_getKeyPath();
  (*(v6 + 16))(v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  (*(v6 + 32))(v9 + v8, v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC5A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC5A8);
  sub_24B2D37B4();
  sub_24B039184(&qword_27EFCC5B0, &qword_27EFCC5A0);
  sub_24B1227B0(&qword_27EFCC5B8, MEMORY[0x277CDF3E0]);
  v10 = sub_24B039184(&qword_27EFCC5C0, &qword_27EFCC5A8);
  v12[1] = a2;
  v12[2] = v10;
  swift_getWitnessTable();
  return sub_24B2D4ED4();
}

uint64_t sub_24B12248C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v15[0] = a1;
  v15[1] = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCC5A8);
  v4 = sub_24B2D37B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v15 - v9;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_24B2D46E4();

  v11 = sub_24B039184(&qword_27EFCC5C0, &qword_27EFCC5A8);
  v15[2] = a2;
  v15[3] = v11;
  WitnessTable = swift_getWitnessTable();
  sub_24B091A64(v7, v4, WitnessTable);
  v13 = *(v5 + 8);
  v13(v7, v4);
  sub_24B091A64(v10, v4, WitnessTable);
  v13(v10, v4);
}

uint64_t objectdestroyTm_17()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B1227B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t View.reverseMask<A>(alignment:_:)()
{
  sub_24B2D5064();
  sub_24B2D38F4();
  sub_24B2D37B4();
  swift_getWitnessTable();
  sub_24B2D3914();
  sub_24B2D37B4();
  sub_24B0A48B8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_24B2D48C4();
}

uint64_t sub_24B122954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v29 = a7;
  v30 = a4;
  v27 = a5;
  v28 = a3;
  v32 = a1;
  v33 = a2;
  v34 = a9;
  sub_24B2D38F4();
  sub_24B2D37B4();
  v31 = a8;
  v37 = a8;
  v38 = MEMORY[0x277CDFC30];
  swift_getWitnessTable();
  v26[1] = sub_24B2D3914();
  v11 = sub_24B2D37B4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v26 - v16;
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  v26[-6] = v27;
  v26[-5] = a6;
  v19 = v31;
  v26[-4] = v29;
  v26[-3] = v19;
  v20 = v30;
  v26[-2] = v28;
  v26[-1] = v20;
  v21 = sub_24B0A48B8();
  sub_24B2D4964();
  WitnessTable = swift_getWitnessTable();
  v35 = v21;
  v36 = WitnessTable;
  v23 = swift_getWitnessTable();
  sub_24B091A64(v14, v11, v23);
  v24 = *(v12 + 8);
  v24(v14, v11);
  sub_24B091A64(v17, v11, v23);
  v24(v17, v11);
}

uint64_t sub_24B122C4C@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v29 = a4;
  v30 = a5;
  v26 = a2;
  v27 = a1;
  v6 = sub_24B2D50F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a3 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D38F4();
  v13 = sub_24B2D37B4();
  v28 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v24 - v17;
  sub_24B2D5694();
  v24[1] = sub_24B2D5684();
  sub_24B2D5604();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v27(isCurrentExecutor);
  (*(v7 + 104))(v9, *MEMORY[0x277CE13C0], v6);
  v20 = v29;
  sub_24B2D49D4();
  (*(v7 + 8))(v9, v6);
  (*(v25 + 8))(v12, a3);
  v31 = v20;
  v32 = MEMORY[0x277CDFC30];
  WitnessTable = swift_getWitnessTable();
  sub_24B091A64(v15, v13, WitnessTable);
  v22 = *(v28 + 8);
  v22(v15, v13);
  sub_24B091A64(v18, v13, WitnessTable);
  v22(v18, v13);
}

uint64_t type metadata accessor for DataControllerSessionMetrics()
{
  result = qword_27EFCC5C8;
  if (!qword_27EFCC5C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B123024()
{
  sub_24B2D2504();
  if (v0 <= 0x3F)
  {
    sub_24B2D24A4();
    if (v1 <= 0x3F)
    {
      sub_24AFF7E20();
      if (v2 <= 0x3F)
      {
        sub_24AFF7E78(319, &qword_27EFC7C00);
        if (v3 <= 0x3F)
        {
          sub_24AFF7E78(319, &qword_27EFCC5D8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_24B123124()
{
  v1 = v0;
  v2 = sub_24B2D24A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v89 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v88 = &v87 - v6;
  MEMORY[0x28223BE20](v7);
  v87 = &v87 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  MEMORY[0x28223BE20](v9 - 8);
  v96 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v95 = &v87 - v12;
  MEMORY[0x28223BE20](v13);
  v93 = &v87 - v14;
  MEMORY[0x28223BE20](v15);
  v92 = &v87 - v16;
  MEMORY[0x28223BE20](v17);
  v90 = &v87 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v87 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC5E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B2EBB10;
  *(inited + 32) = 1684632949;
  v97 = inited + 32;
  *(inited + 40) = 0xE400000000000000;
  v23 = sub_24B2D24B4();
  v24 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 48) = v23;
  *(inited + 56) = v25;
  *(inited + 88) = 1701667182;
  *(inited + 96) = 0xE400000000000000;
  v26 = type metadata accessor for DataControllerSessionMetrics();
  v27 = (v1 + v26[5]);
  v29 = *v27;
  v28 = v27[1];
  *(inited + 128) = v24;
  *(inited + 136) = &protocol witness table for String;
  *(inited + 104) = v29;
  *(inited + 112) = v28;
  *(inited + 144) = 0xD00000000000001CLL;
  *(inited + 152) = 0x800000024B2DBB70;

  sub_24B2D2314();
  v30 = MEMORY[0x277D839F8];
  *(inited + 184) = MEMORY[0x277D839F8];
  *(inited + 192) = &protocol witness table for Double;
  *(inited + 160) = v31;
  *(inited + 200) = 0x6D69547472617473;
  *(inited + 208) = 0xE900000000000065;
  v98 = v26[7];
  sub_24B2D2314();
  *(inited + 240) = v30;
  *(inited + 248) = &protocol witness table for Double;
  *(inited + 216) = v32;
  *(inited + 256) = 0x656D6954646E65;
  *(inited + 264) = 0xE700000000000000;
  v94 = v26;
  v33 = v26[8];
  v91 = v1;
  v34 = v1 + v33;
  v35 = v2;
  sub_24AFF249C(v34, v21);
  v36 = v3;
  v100 = *(v3 + 48);
  v37 = (v3 + 48);
  if (v100(v21, 1, v35) == 1)
  {
    v38 = v36;
    sub_24B124388(v21);
    *(inited + 272) = 0u;
    *(inited + 288) = 0u;
    *(inited + 304) = 0;
  }

  else
  {
    sub_24B2D2314();
    *(inited + 296) = v30;
    *(inited + 304) = &protocol witness table for Double;
    *(inited + 272) = v39;
    v38 = v36;
    (*(v36 + 8))(v21, v35);
  }

  v40 = v35;
  *(inited + 312) = 0x446E6F6973736573;
  *(inited + 320) = 0xEF6E6F6974617275;
  v42 = v90;
  v41 = v91;
  sub_24AFF249C(v91 + v33, v90);
  v43 = v37;
  v44 = v100(v42, 1, v40);
  v45 = v94;
  v99 = v38;
  if (v44 == 1)
  {
    sub_24B124388(v42);
    v46 = 0;
    v47 = 0;
    *(inited + 336) = 0;
    *(inited + 344) = 0;
    v48 = 0;
  }

  else
  {
    v50 = v87;
    (*(v38 + 32))(v87, v42, v40);
    sub_24B2D2314();
    sub_24B2D2314();
    sub_24B2D62A4();
    (*(v38 + 8))(v50, v40);
    sub_24B2D6174();
    v47 = &protocol witness table for Double;
    v46 = MEMORY[0x277D839F8];
  }

  v49 = v40;
  *(inited + 328) = v48;
  *(inited + 352) = v46;
  *(inited + 360) = v47;
  *(inited + 368) = 0xD000000000000010;
  *(inited + 376) = 0x800000024B2DBB90;
  v51 = *(v41 + v45[9]);
  v52 = v100;
  v53 = v92;
  if (v51 == 2)
  {
    v54 = 0;
    v55 = 0;
    *(inited + 384) = 0;
    *(inited + 392) = 0;
    *(inited + 400) = 0;
  }

  else
  {
    *(inited + 384) = v51 & 1;
    v55 = &protocol witness table for Bool;
    v54 = MEMORY[0x277D839B0];
  }

  *(inited + 408) = v54;
  *(inited + 416) = v55;
  *(inited + 424) = 0xD000000000000013;
  *(inited + 432) = 0x800000024B2DBBB0;
  v56 = v45[10];
  sub_24AFF249C(v41 + v56, v53);
  if (v52(v53, 1, v49) == 1)
  {
    sub_24B124388(v53);
    *(inited + 440) = 0u;
    *(inited + 456) = 0u;
    *(inited + 472) = 0;
  }

  else
  {
    sub_24B2D2314();
    *(inited + 464) = MEMORY[0x277D839F8];
    *(inited + 472) = &protocol witness table for Double;
    *(inited + 440) = v57;
    (*(v99 + 8))(v53, v49);
  }

  *(inited + 480) = 0xD000000000000016;
  *(inited + 488) = 0x800000024B2DBBD0;
  v58 = v93;
  sub_24AFF249C(v41 + v56, v93);
  if (v52(v58, 1, v49) == 1)
  {
    sub_24B124388(v58);
    v59 = 0;
    v60 = 0;
    *(inited + 504) = 0;
    *(inited + 512) = 0;
    v61 = 0;
  }

  else
  {
    v92 = v43;
    v62 = v45;
    v63 = v99;
    v64 = v88;
    (*(v99 + 32))(v88, v58, v49);
    sub_24B2D2314();
    sub_24B2D2314();
    sub_24B2D62A4();
    v65 = v63;
    v45 = v62;
    v66 = v64;
    v52 = v100;
    (*(v65 + 8))(v66, v49);
    sub_24B2D6174();
    v60 = &protocol witness table for Double;
    v59 = MEMORY[0x277D839F8];
  }

  v67 = v95;
  *(inited + 496) = v61;
  *(inited + 520) = v59;
  *(inited + 528) = v60;
  *(inited + 536) = 0xD000000000000014;
  *(inited + 544) = 0x800000024B2DBBF0;
  v68 = (v41 + v45[11]);
  if (v68[1])
  {
    v69 = 0;
    v70 = 0;
    v71 = 0;
    *(inited + 560) = 0u;
  }

  else
  {
    v69 = *v68;
    v71 = &protocol witness table for Int;
    v70 = MEMORY[0x277D83B88];
  }

  *(inited + 552) = v69;
  *(inited + 576) = v70;
  *(inited + 584) = v71;
  *(inited + 592) = 0xD000000000000015;
  *(inited + 600) = 0x800000024B2DBC10;
  v72 = v45[12];
  sub_24AFF249C(v41 + v72, v67);
  if (v52(v67, 1, v49) == 1)
  {
    sub_24B124388(v67);
    *(inited + 608) = 0u;
    *(inited + 624) = 0u;
    *(inited + 640) = 0;
  }

  else
  {
    sub_24B2D2314();
    *(inited + 632) = MEMORY[0x277D839F8];
    *(inited + 640) = &protocol witness table for Double;
    *(inited + 608) = v73;
    (*(v99 + 8))(v67, v49);
  }

  *(inited + 648) = 0xD000000000000018;
  *(inited + 656) = 0x800000024B2DBC30;
  v74 = v96;
  sub_24AFF249C(v41 + v72, v96);
  if (v52(v74, 1, v49) == 1)
  {
    sub_24B124388(v74);
    v75 = 0;
    v76 = 0;
    *(inited + 672) = 0u;
    v77 = 0;
  }

  else
  {
    v78 = v45;
    v79 = v99;
    v80 = v89;
    (*(v99 + 32))(v89, v74, v49);
    sub_24B2D2314();
    sub_24B2D2314();
    sub_24B2D62A4();
    (*(v79 + 8))(v80, v49);
    v45 = v78;
    sub_24B2D6174();
    v76 = &protocol witness table for Double;
    v75 = MEMORY[0x277D839F8];
  }

  *(inited + 664) = v77;
  *(inited + 688) = v75;
  *(inited + 696) = v76;
  *(inited + 704) = 0xD000000000000016;
  *(inited + 712) = 0x800000024B2DBC50;
  v81 = (v41 + v45[13]);
  if (v81[1])
  {
    v82 = 0;
    v83 = 0;
    v84 = 0;
    *(inited + 728) = 0u;
  }

  else
  {
    v82 = *v81;
    v84 = &protocol witness table for Int;
    v83 = MEMORY[0x277D83B88];
  }

  *(inited + 720) = v82;
  *(inited + 744) = v83;
  *(inited + 752) = v84;
  v85 = sub_24B1941F4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC5F0);
  swift_arrayDestroy();
  return v85;
}

uint64_t sub_24B123AE4()
{
  v1 = v0;
  v2 = sub_24B2D24A4();
  v72 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v64 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v63 = &v62 - v5;
  MEMORY[0x28223BE20](v6);
  v69 = &v62 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8450);
  MEMORY[0x28223BE20](v8);
  v68 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v66 = &v62 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v62 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v62 - v16;
  v73 = 0;
  v74 = 0xE000000000000000;
  sub_24B2D5C34();
  v76 = v73;
  v77 = v74;
  MEMORY[0x24C23BC10](0x203A64697575, 0xE600000000000000);
  v18 = sub_24B2D24B4();
  MEMORY[0x24C23BC10](v18);

  MEMORY[0x24C23BC10](0x203A656D616E0ALL, 0xE700000000000000);
  v19 = type metadata accessor for DataControllerSessionMetrics();
  MEMORY[0x24C23BC10](*(v1 + v19[5]), *(v1 + v19[5] + 8));
  MEMORY[0x24C23BC10](0xD00000000000001FLL, 0x800000024B2DBA50);
  sub_24B124330();
  v20 = sub_24B2D5FA4();
  MEMORY[0x24C23BC10](v20);

  MEMORY[0x24C23BC10](0x695474726174730ALL, 0xEC000000203A656DLL);
  v21 = v19[7];
  v22 = sub_24B2D5FA4();
  MEMORY[0x24C23BC10](v22);

  MEMORY[0x24C23BC10](0x656D6954646E650ALL, 0xEA0000000000203ALL);
  v23 = v19[8];
  sub_24AFF249C(v0 + v23, v17);
  v65 = v17;
  v71 = v8;
  v24 = sub_24B2D53C4();
  MEMORY[0x24C23BC10](v24);

  MEMORY[0x24C23BC10](0xD000000000000012, 0x800000024B2DBA70);
  v25 = v72;
  sub_24AFF249C(v0 + v23, v14);
  v70 = *(v25 + 48);
  v26 = v70(v14, 1, v2);
  v67 = v21;
  if (v26 == 1)
  {
    sub_24B124388(v14);
    v27 = 0;
    v28 = 0;
  }

  else
  {
    v29 = v69;
    (*(v25 + 32))(v69, v14, v2);
    sub_24B2D2314();
    sub_24B2D2314();
    v27 = sub_24B2D62A4();
    v28 = v30;
    (*(v25 + 8))(v29, v2);
  }

  v31 = v2;
  v73 = v27;
  v74 = v28;
  v75 = v26 == 1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC5E0);
  v32 = sub_24B2D53C4();
  MEMORY[0x24C23BC10](v32);

  MEMORY[0x24C23BC10](0xD000000000000013, 0x800000024B2DBA90);
  LOBYTE(v73) = *(v1 + v19[9]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCA8A8);
  v33 = sub_24B2D53C4();
  MEMORY[0x24C23BC10](v33);

  MEMORY[0x24C23BC10](0xD000000000000016, 0x800000024B2DBAB0);
  v34 = v19[10];
  v35 = v65;
  sub_24AFF249C(v1 + v34, v65);
  v36 = sub_24B2D53C4();
  MEMORY[0x24C23BC10](v36);

  MEMORY[0x24C23BC10](0xD000000000000019, 0x800000024B2DBAD0);
  v37 = v66;
  sub_24AFF249C(v1 + v34, v66);
  v38 = v70(v37, 1, v31);
  if (v38 == 1)
  {
    sub_24B124388(v37);
    v39 = 0;
    v40 = 0;
  }

  else
  {
    v41 = v72;
    v42 = v63;
    (*(v72 + 32))(v63, v37, v31);
    sub_24B2D2314();
    sub_24B2D2314();
    v39 = sub_24B2D62A4();
    v40 = v43;
    (*(v41 + 8))(v42, v31);
  }

  v73 = v39;
  v74 = v40;
  v75 = v38 == 1;
  v44 = sub_24B2D53C4();
  MEMORY[0x24C23BC10](v44);

  MEMORY[0x24C23BC10](0xD000000000000017, 0x800000024B2DBAF0);
  v45 = v1 + v19[11];
  v46 = *v45;
  LOBYTE(v45) = *(v45 + 8);
  v73 = v46;
  LOBYTE(v74) = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFC8498);
  v47 = sub_24B2D53C4();
  MEMORY[0x24C23BC10](v47);

  MEMORY[0x24C23BC10](0xD000000000000018, 0x800000024B2DBB10);
  v48 = v19[12];
  sub_24AFF249C(v1 + v48, v35);
  v49 = sub_24B2D53C4();
  MEMORY[0x24C23BC10](v49);

  MEMORY[0x24C23BC10](0xD00000000000001BLL, 0x800000024B2DBB30);
  v50 = v68;
  sub_24AFF249C(v1 + v48, v68);
  v51 = v70(v50, 1, v31);
  if (v51 == 1)
  {
    sub_24B124388(v50);
    v52 = 0;
    v53 = 0;
  }

  else
  {
    v54 = v72;
    v55 = v64;
    (*(v72 + 32))(v64, v50, v31);
    sub_24B2D2314();
    sub_24B2D2314();
    v52 = sub_24B2D62A4();
    v53 = v56;
    (*(v54 + 8))(v55, v31);
  }

  v73 = v52;
  v74 = v53;
  v75 = v51 == 1;
  v57 = sub_24B2D53C4();
  MEMORY[0x24C23BC10](v57);

  MEMORY[0x24C23BC10](0xD000000000000019, 0x800000024B2DBB50);
  v58 = v1 + v19[13];
  v59 = *v58;
  LOBYTE(v58) = *(v58 + 8);
  v73 = v59;
  LOBYTE(v74) = v58;
  v60 = sub_24B2D53C4();
  MEMORY[0x24C23BC10](v60);

  return v76;
}