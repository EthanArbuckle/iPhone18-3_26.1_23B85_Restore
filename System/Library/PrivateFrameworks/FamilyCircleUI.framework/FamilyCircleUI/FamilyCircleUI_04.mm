unint64_t sub_21BBE6360()
{
  result = qword_27CDB63B0;
  if (!qword_27CDB63B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB63B0);
  }

  return result;
}

unint64_t sub_21BBE63B4(uint64_t a1)
{
  *(a1 + 8) = sub_21BBE63E4();
  result = sub_21BBE6438();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21BBE63E4()
{
  result = qword_27CDB63B8;
  if (!qword_27CDB63B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB63B8);
  }

  return result;
}

unint64_t sub_21BBE6438()
{
  result = qword_27CDB63C0;
  if (!qword_27CDB63C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB63C0);
  }

  return result;
}

uint64_t sub_21BBE648C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_21BE26CBC();
}

uint64_t sub_21BBE64F8(uint64_t a1)
{
  *(a1 + 8) = sub_21BBE6598(&qword_27CDB63C8, type metadata accessor for FamilyMessageConfigProvider);
  result = sub_21BBE6598(&qword_27CDB6080, type metadata accessor for FamilyMessageConfigProvider);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BBE6598(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BBE65E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v5;
  return result;
}

uint64_t sub_21BBE6660(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_21BE26CBC();
}

unint64_t sub_21BBE66D8()
{
  result = qword_280BD8A40;
  if (!qword_280BD8A40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BD8A40);
  }

  return result;
}

uint64_t sub_21BBE6724()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBA6A64;

  return sub_21BBE5E9C();
}

unint64_t sub_21BBE67D8()
{
  result = qword_27CDB63E8;
  if (!qword_27CDB63E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB63E8);
  }

  return result;
}

uint64_t sub_21BBE68CC(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 56);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB8C3C;

  return v9(a1, a2);
}

uint64_t sub_21BBE69E4(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 64);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBE9D64;

  return v9(a1, a2);
}

uint64_t sub_21BBE6BBC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_21BE26A4C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  sub_21BE28D7C();
  v3[8] = sub_21BE28D6C();
  v8 = sub_21BE28D0C();
  v3[9] = v8;
  v3[10] = v7;

  return MEMORY[0x2822009F8](sub_21BBE6CB4, v8, v7);
}

uint64_t sub_21BBE6CB4()
{
  v24 = v0;
  v1 = v0[7];
  v2 = v0[4];
  sub_21BE261BC();
  swift_unknownObjectRetain();
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FCC();
  swift_unknownObjectRelease();
  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];
  if (v5)
  {
    v22 = v0[7];
    v10 = v0[3];
    v9 = v0[4];
    v11 = v0[2];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    v14 = (*(v10 + 24))(v11, v10);
    v16 = sub_21BB3D81C(v14, v15, &v23);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_21BB35000, v3, v4, "%s reloadItems() called", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x21CF05C50](v13, -1, -1);
    MEMORY[0x21CF05C50](v12, -1, -1);

    (*(v7 + 8))(v22, v8);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v17 = swift_task_alloc();
  v0[11] = v17;
  *v17 = v0;
  v17[1] = sub_21BBE6EA0;
  v18 = v0[3];
  v19 = v0[4];
  v20 = v0[2];

  return sub_21BBE828C(1, v20, v18);
}

uint64_t sub_21BBE6EA0()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_21BBE6FC0, v4, v3);
}

uint64_t sub_21BBE6FC0()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21BBE7028()
{
  if (*(v0 + qword_27CDB6400))
  {

    sub_21BE2627C();
  }

  return result;
}

uint64_t sub_21BBE7080()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = *(v1 + 0x50);
  sub_21BE28CBC();
  v3 = sub_21BE2629C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v6);
  v11 = &v17 - v10;
  if (*(v0 + qword_27CDB6400))
  {

    sub_21BE262BC();

    v12 = (*(v4 + 88))(v11, v3);
    if (v12 == *MEMORY[0x277D07FE8])
    {
      (*(v4 + 16))(v8, v11, v3);
      (*(v4 + 96))(v8, v3);
      v13 = *v8;
      sub_21BE28C6C();
      if (v13)
      {
        v14 = *(*(*(v1 + 88) + 8) + 8);

        v15 = sub_21BE28CCC();

        swift_bridgeObjectRelease_n();
        if ((v15 & 1) == 0)
        {
          goto LABEL_9;
        }

LABEL_7:
        v16 = 1;
LABEL_10:
        (*(v4 + 8))(v11, v3);
        return v16;
      }
    }

    else if (v12 == *MEMORY[0x277D07FE0])
    {
      goto LABEL_7;
    }

LABEL_9:
    v16 = 0;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_21BBE72E4()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  sub_21BE28CBC();
  v2 = sub_21BE2629C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v9 - v6;
  if (*(v0 + qword_27CDB6400))
  {

    sub_21BE262BC();

    v8 = (*(v3 + 88))(v7, v2) == *MEMORY[0x277D07FF0];
    (*(v3 + 8))(v7, v2);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BBE7428()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  sub_21BE28CBC();
  v2 = sub_21BE2629C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v9 - v6;
  if (*(v0 + qword_27CDB6400))
  {

    sub_21BE262BC();

    v8 = sub_21BE2628C();
    (*(v3 + 8))(v7, v2);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BBE755C()
{
  v1[3] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  sub_21BE28D7C();
  v1[5] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[6] = v4;
  v1[7] = v3;

  return MEMORY[0x2822009F8](sub_21BBE762C, v4, v3);
}

void sub_21BBE762C()
{
  v1 = *(v0[3] + qword_27CDB6400);
  v0[8] = v1;
  if (v1)
  {
    v2 = v0[4];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = *(MEMORY[0x277D07FD0] + 4);
    v7 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_21BBE7748;
    v6 = v0[4];

    v7(v0 + 2, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BBE7748()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 80) = v0;

  sub_21BB3A4CC(v5, &qword_27CDB5790, &qword_21BE32800);

  v7 = *(v2 + 56);
  v8 = *(v2 + 48);
  if (v0)
  {
    v9 = sub_21BBDDD54;
  }

  else
  {
    v9 = sub_21BBE78D4;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_21BBE78D4()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[2];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_21BBE7948()
{
  v1[3] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  sub_21BE28D7C();
  v1[5] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[6] = v4;
  v1[7] = v3;

  return MEMORY[0x2822009F8](sub_21BBE7A18, v4, v3);
}

void sub_21BBE7A18()
{
  v1 = *(v0[3] + qword_27CDB6400);
  v0[8] = v1;
  if (v1)
  {
    v2 = v0[4];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = *(MEMORY[0x277D07FF8] + 4);
    v7 = (*MEMORY[0x277D07FF8] + MEMORY[0x277D07FF8]);

    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_21BBE7B34;
    v6 = v0[4];

    v7(v0 + 2, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BBE7B34()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 80) = v0;

  sub_21BB3A4CC(v5, &qword_27CDB5790, &qword_21BE32800);

  v7 = *(v2 + 56);
  v8 = *(v2 + 48);
  if (v0)
  {
    v9 = sub_21BBDEABC;
  }

  else
  {
    v9 = sub_21BBE9D68;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_21BBE7CC0()
{
  v0 = sub_21BBE9D1C();

  return v0;
}

uint64_t sub_21BBE7CF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  sub_21BE295FC();
  return v4;
}

uint64_t sub_21BBE7D24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_280BD6F00 != -1)
  {
    swift_once();
  }

  v6 = qword_280BDCB50;

  return sub_21BBFD378(v3, v6, a1, a2);
}

BOOL sub_21BBE7DA8(uint64_t a1, uint64_t a2)
{
  if (qword_27CDB4E20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v3 = *(a2 + 16);
  sub_21BE295FC();
  v4 = sub_21BBBC694(v6, v7);

  return v4;
}

uint64_t sub_21BBE7E6C(uint64_t a1, uint64_t a2)
{
  if (sub_21BBE7DA8(a1, a2))
  {
    v4 = 0;
  }

  else
  {
    v4 = (*(a2 + 24))(a1, a2) ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_21BBE7ECC(uint64_t a1)
{
  v3 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  return sub_21BE2852C();
}

uint64_t sub_21BBE7F94(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))();
  v3 = *(a2 + 16);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59E8, &unk_21BE3A400);
  v4 = sub_21BE2976C();

  return v4;
}

uint64_t sub_21BBE8030(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v18 - v7;
  swift_getAssociatedConformanceWitness();
  v9 = sub_21BE26B9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  sub_21BE26BEC();
  v14 = swift_allocObject();
  v15 = v19;
  *(v14 + 16) = a1;
  *(v14 + 24) = v15;
  sub_21BE26CEC();

  (*(v5 + 8))(v8, AssociatedTypeWitness);
  swift_getWitnessTable();
  v16 = sub_21BE26CDC();
  (*(v10 + 8))(v13, v9);
  return v16;
}

uint64_t sub_21BBE828C(char a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v4[14] = a3;
  v4[15] = v3;
  v4[13] = a2;
  v9 = sub_21BE26A4C();
  v4[16] = v9;
  v10 = *(v9 - 8);
  v4[17] = v10;
  v11 = *(v10 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5F30, &unk_21BE33BD0) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = sub_21BE28D7C();
  v4[22] = sub_21BE28D6C();
  if (a1)
  {
    v4[8] = v5;
    v13 = *(a3 + 16);
    v4[26] = v13;
    v14 = *(v13 + 64);
    v25 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    v4[27] = v16;
    *v16 = v4;
    v16[1] = sub_21BBE87E0;
    v17 = a2;
    v18 = v13;
    v19 = v25;
  }

  else
  {
    v4[12] = v5;
    v20 = *(a3 + 16);
    v4[23] = v20;
    v21 = *(v20 + 56);
    v26 = (v21 + *v21);
    v22 = v21[1];
    v23 = swift_task_alloc();
    v4[24] = v23;
    *v23 = v4;
    v23[1] = sub_21BBE857C;
    v17 = a2;
    v18 = v20;
    v19 = v26;
  }

  return v19(v17, v18);
}

uint64_t sub_21BBE857C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[24];
  v16 = *v2;
  v4[25] = v1;

  if (v1)
  {
    v6 = v4[21];
    v7 = v4[22];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBE8A44;
  }

  else
  {
    v12 = v4[21];
    v13 = v4[22];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBE86C8;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBE86C8()
{
  v1 = v0[3];
  v2 = v0[22];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];

  (*(v4 + 40))(v1, v5, v4);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  v6 = v0[15];
  v7 = (*(v0[14] + 24))(v0[13]);
  sub_21BE08934(v7, v8);

  v10 = v0[19];
  v9 = v0[20];
  v11 = v0[18];

  v12 = v0[1];

  return v12();
}

uint64_t sub_21BBE87E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[27];
  v16 = *v2;
  v4[28] = v1;

  if (v1)
  {
    v6 = v4[21];
    v7 = v4[22];
    v8 = sub_21BE28D0C();
    v10 = v9;
    v11 = sub_21BBE8EF4;
  }

  else
  {
    v12 = v4[21];
    v13 = v4[22];
    v8 = sub_21BE28D0C();
    v10 = v14;
    v11 = sub_21BBE892C;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_21BBE892C()
{
  v1 = v0[6];
  v2 = v0[22];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];

  (*(v4 + 40))(v1, v5, v4);
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  v6 = v0[15];
  v7 = (*(v0[14] + 24))(v0[13]);
  sub_21BE08934(v7, v8);

  v10 = v0[19];
  v9 = v0[20];
  v11 = v0[18];

  v12 = v0[1];

  return v12();
}

uint64_t sub_21BBE8A44()
{
  v54 = v0;
  v1 = v0[22];

  v2 = v0[25];
  v0[9] = v2;
  v3 = v0[23];
  v4 = v0[20];
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  v6 = sub_21BE28D3C();
  v7 = swift_dynamicCast();
  v8 = *(*(v6 - 8) + 56);
  if (v7)
  {
    v9 = v0[20];
    v10 = v0[15];
    v8(v9, 0, 1, v6);
    sub_21BB3A4CC(v9, &qword_27CDB5F30, &unk_21BE33BD0);
    sub_21BE261BC();
    swift_unknownObjectRetain();
    v11 = sub_21BE26A2C();
    v12 = sub_21BE28FFC();
    swift_unknownObjectRelease();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[19];
    v15 = v0[16];
    v16 = v0[17];
    if (v13)
    {
      v50 = v0[19];
      v18 = v0[14];
      v17 = v0[15];
      v46 = v3;
      v19 = v0[13];
      v47 = v12;
      v20 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v52 = v48;
      *v20 = 136315394;
      v21 = (*(v18 + 24))(v19, v18);
      v49 = v15;
      v23 = sub_21BB3D81C(v21, v22, &v52);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      v0[11] = v17;
      v24 = (*(v46 + 48))(v19);
      v26 = sub_21BB3D81C(v24, v25, &v52);

      *(v20 + 14) = v26;
      _os_log_impl(&dword_21BB35000, v11, v47, "%s [%s] cancelled", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v48, -1, -1);
      MEMORY[0x21CF05C50](v20, -1, -1);

      (*(v16 + 8))(v50, v49);
    }

    else
    {

      (*(v16 + 8))(v14, v15);
    }
  }

  else
  {
    v27 = v0[20];
    v29 = v0[17];
    v28 = v0[18];
    v30 = v0[15];
    v51 = v0[16];
    v31 = v0[13];
    v32 = v0[14];
    v8(v27, 1, 1, v6);
    sub_21BB3A4CC(v27, &qword_27CDB5F30, &unk_21BE33BD0);
    sub_21BE261BC();
    v52 = 0;
    v53 = 0xE000000000000000;
    v33 = v2;
    sub_21BE295EC();
    v34 = (*(v32 + 24))(v31, v32);
    v36 = v35;

    v52 = v34;
    v53 = v36;
    MEMORY[0x21CF03CA0](23328, 0xE200000000000000);
    v0[10] = v30;
    v37 = (*(v3 + 48))(v31, v3);
    MEMORY[0x21CF03CA0](v37);

    MEMORY[0x21CF03CA0](0x3A726F727265205DLL, 0xEB00000000402520);
    sub_21BC51D50(v2);

    (*(v29 + 8))(v28, v51);
  }

  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  v38 = v0[15];
  v39 = (*(v0[14] + 24))(v0[13]);
  sub_21BE08A90(v39, v40, v2);

  v42 = v0[19];
  v41 = v0[20];
  v43 = v0[18];

  v44 = v0[1];

  return v44();
}

uint64_t sub_21BBE8EF4()
{
  v54 = v0;
  v1 = v0[22];

  v2 = v0[28];
  v0[9] = v2;
  v3 = v0[26];
  v4 = v0[20];
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  v6 = sub_21BE28D3C();
  v7 = swift_dynamicCast();
  v8 = *(*(v6 - 8) + 56);
  if (v7)
  {
    v9 = v0[20];
    v10 = v0[15];
    v8(v9, 0, 1, v6);
    sub_21BB3A4CC(v9, &qword_27CDB5F30, &unk_21BE33BD0);
    sub_21BE261BC();
    swift_unknownObjectRetain();
    v11 = sub_21BE26A2C();
    v12 = sub_21BE28FFC();
    swift_unknownObjectRelease();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[19];
    v15 = v0[16];
    v16 = v0[17];
    if (v13)
    {
      v50 = v0[19];
      v18 = v0[14];
      v17 = v0[15];
      v46 = v3;
      v19 = v0[13];
      v47 = v12;
      v20 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v52 = v48;
      *v20 = 136315394;
      v21 = (*(v18 + 24))(v19, v18);
      v49 = v15;
      v23 = sub_21BB3D81C(v21, v22, &v52);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      v0[11] = v17;
      v24 = (*(v46 + 48))(v19);
      v26 = sub_21BB3D81C(v24, v25, &v52);

      *(v20 + 14) = v26;
      _os_log_impl(&dword_21BB35000, v11, v47, "%s [%s] cancelled", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v48, -1, -1);
      MEMORY[0x21CF05C50](v20, -1, -1);

      (*(v16 + 8))(v50, v49);
    }

    else
    {

      (*(v16 + 8))(v14, v15);
    }
  }

  else
  {
    v27 = v0[20];
    v29 = v0[17];
    v28 = v0[18];
    v30 = v0[15];
    v51 = v0[16];
    v31 = v0[13];
    v32 = v0[14];
    v8(v27, 1, 1, v6);
    sub_21BB3A4CC(v27, &qword_27CDB5F30, &unk_21BE33BD0);
    sub_21BE261BC();
    v52 = 0;
    v53 = 0xE000000000000000;
    v33 = v2;
    sub_21BE295EC();
    v34 = (*(v32 + 24))(v31, v32);
    v36 = v35;

    v52 = v34;
    v53 = v36;
    MEMORY[0x21CF03CA0](23328, 0xE200000000000000);
    v0[10] = v30;
    v37 = (*(v3 + 48))(v31, v3);
    MEMORY[0x21CF03CA0](v37);

    MEMORY[0x21CF03CA0](0x3A726F727265205DLL, 0xEB00000000402520);
    sub_21BC51D50(v2);

    (*(v29 + 8))(v28, v51);
  }

  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  v38 = v0[15];
  v39 = (*(v0[14] + 24))(v0[13]);
  sub_21BE08A90(v39, v40, v2);

  v42 = v0[19];
  v41 = v0[20];
  v43 = v0[18];

  v44 = v0[1];

  return v44();
}

uint64_t sub_21BBE93A4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_21BE26A4C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  sub_21BE28D7C();
  v3[8] = sub_21BE28D6C();
  v8 = sub_21BE28D0C();
  v3[9] = v8;
  v3[10] = v7;

  return MEMORY[0x2822009F8](sub_21BBE949C, v8, v7);
}

uint64_t sub_21BBE949C()
{
  v24 = v0;
  v1 = v0[7];
  v2 = v0[4];
  sub_21BE261BC();
  swift_unknownObjectRetain();
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FCC();
  swift_unknownObjectRelease();
  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];
  if (v5)
  {
    v22 = v0[7];
    v10 = v0[3];
    v9 = v0[4];
    v11 = v0[2];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    v14 = (*(v10 + 24))(v11, v10);
    v16 = sub_21BB3D81C(v14, v15, &v23);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_21BB35000, v3, v4, "%s loadItems() called", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x21CF05C50](v13, -1, -1);
    MEMORY[0x21CF05C50](v12, -1, -1);

    (*(v7 + 8))(v22, v8);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v17 = swift_task_alloc();
  v0[11] = v17;
  *v17 = v0;
  v17[1] = sub_21BBE9688;
  v18 = v0[3];
  v19 = v0[4];
  v20 = v0[2];

  return sub_21BBE828C(0, v20, v18);
}

uint64_t sub_21BBE9688()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_21BBE9D60, v4, v3);
}

BOOL sub_21BBE97A8(uint64_t a1, uint64_t a2)
{
  if (qword_27CDB5030 != -1)
  {
    v13 = a2;
    swift_once();
    a2 = v13;
  }

  v2 = qword_27CDD43F0;
  v3 = (*(a2 + 24))();
  v5 = v4;
  swift_beginAccess();
  v6 = *(v2 + 16);
  if (*(v6 + 16) && (v7 = *(v2 + 16), , v8 = sub_21BBB3108(v3, v5), v10 = v9, , (v10 & 1) != 0))
  {
    v11 = *(*(v6 + 56) + 16 * v8 + 8);

    return v11 > 0;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_21BBE98B8(uint64_t a1, uint64_t a2)
{
  if (qword_27CDB5030 != -1)
  {
    v15 = a2;
    swift_once();
    a2 = v15;
  }

  v2 = qword_27CDD43F0;
  v3 = (*(a2 + 24))();
  v5 = v4;
  swift_beginAccess();
  v6 = *(v2 + 16);
  if (*(v6 + 16) && (v7 = *(v2 + 16), , v8 = sub_21BBB3108(v3, v5), v10 = v9, , (v10 & 1) != 0))
  {
    v11 = *(*(v6 + 56) + 16 * v8);

    v12 = v11;
    v13 = sub_21BE2609C();

    return v13;
  }

  else
  {

    return 0;
  }
}

void sub_21BBE99F0(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  sub_21BBE9D30();
}

id sub_21BBE9A30()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for AsyncItemProvider();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_21BBE9AA0(uint64_t a1)
{
  v2 = *(a1 + qword_27CDB63F0 + 8);

  v3 = *(a1 + qword_27CDB63F8);

  v4 = *(a1 + qword_27CDB6400);
}

uint64_t sub_21BBE9B8C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21BBDE3D4;

  return sub_21BBE755C();
}

uint64_t sub_21BBE9C1C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21BBDEAC0;

  return sub_21BBE7948();
}

uint64_t sub_21BBE9CD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  type metadata accessor for AsyncItemProvider();
  result = sub_21BE26C0C();
  *a2 = result;
  return result;
}

uint64_t sub_21BBE9D1C()
{
  result = *(v0 + qword_27CDB63F0);
  v2 = *(v0 + qword_27CDB63F0 + 8);
  return result;
}

uint64_t sub_21BBE9D70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  result = swift_beginAccess();
  *a2 = *(v3 + 26);
  return result;
}

uint64_t sub_21BBE9E24()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

BOOL sub_21BBE9E64(void *a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v5);
  v7 = sub_21BBE7CF8(v5, v6);
  if (*(v4 + 16))
  {
    v9 = sub_21BBB3108(v7, v8);
    v11 = v10;

    if (v11)
    {
      v12 = *(*(v4 + 56) + 8 * v9);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v12 = 0;
LABEL_6:
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v13);
  v15 = sub_21BBE7CF8(v13, v14);
  if (!*(v4 + 16))
  {

    goto LABEL_10;
  }

  v17 = sub_21BBB3108(v15, v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_10:
    v20 = 0;
    return v12 < v20;
  }

  v20 = *(*(v4 + 56) + 8 * v17);
  return v12 < v20;
}

uint64_t ChecklistStateVars.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 23) = 0;
  sub_21BE25F4C();
  return v3;
}

uint64_t ChecklistStateVars.init()()
{
  *(v0 + 23) = 0;
  *(v0 + 16) = 0;
  sub_21BE25F4C();
  return v0;
}

uint64_t sub_21BBE9FE8(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BBEAC94();
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BBEA0DC(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 17) == v2)
  {
    *(v1 + 17) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BBEAC94();
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BBEA1D0(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 18) == v2)
  {
    *(v1 + 18) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BBEAC94();
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BBEA2C4(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 19) == v2)
  {
    *(v1 + 19) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BBEAC94();
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BBEA3B8(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 20) == v2)
  {
    *(v1 + 20) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BBEAC94();
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BBEA4AC(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 21) == v2)
  {
    *(v1 + 21) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BBEAC94();
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BBEA5A0(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 22) == v2)
  {
    *(v1 + 22) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BBEAC94();
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BBEA694(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 23) == v2)
  {
    *(v1 + 23) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BBEAC94();
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BBEA788(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 24) == v2)
  {
    *(v1 + 24) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BBEAC94();
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BBEA87C(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 25) == v2)
  {
    *(v1 + 25) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BBEAC94();
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BBEA970(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 26) == v2)
  {
    *(v1 + 26) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BBEAC94();
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BBEAAB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_21BBEAB68()
{
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_21BBEABEC(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 16) = a2;
  return result;
}

uint64_t sub_21BBEAC40()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

unint64_t sub_21BBEAC94()
{
  result = qword_27CDBDB60;
  if (!qword_27CDBDB60)
  {
    type metadata accessor for ChecklistStateVars();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBDB60);
  }

  return result;
}

uint64_t type metadata accessor for ChecklistStateVars()
{
  result = qword_27CDB6490;
  if (!qword_27CDB6490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_21BBEAD38(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14FamilyCircleUI18ChecklistStateVars___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21BBEAC94();
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  v4[7] = sub_21BBEAA64();
  return sub_21BBEAE40;
}

uint64_t sub_21BBEAE9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  result = swift_beginAccess();
  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_21BBEAF50()
{
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  swift_beginAccess();
  return *(v0 + 17);
}

uint64_t sub_21BBEAFD4(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 17) = a2;
  return result;
}

uint64_t sub_21BBEB028()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 17) = v2;
  return result;
}

void (*sub_21BBEB07C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14FamilyCircleUI18ChecklistStateVars___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21BBEAC94();
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  v4[7] = sub_21BBEAE4C();
  return sub_21BBEB184;
}

uint64_t sub_21BBEB1E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  result = swift_beginAccess();
  *a2 = *(v3 + 18);
  return result;
}

uint64_t sub_21BBEB294()
{
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  swift_beginAccess();
  return *(v0 + 18);
}

uint64_t sub_21BBEB318(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 18) = a2;
  return result;
}

uint64_t sub_21BBEB36C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 18) = v2;
  return result;
}

void (*sub_21BBEB3C0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14FamilyCircleUI18ChecklistStateVars___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21BBEAC94();
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  v4[7] = sub_21BBEB190();
  return sub_21BBEB4C8;
}

uint64_t sub_21BBEB524@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  result = swift_beginAccess();
  *a2 = *(v3 + 19);
  return result;
}

uint64_t sub_21BBEB5D8()
{
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  swift_beginAccess();
  return *(v0 + 19);
}

uint64_t sub_21BBEB65C(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 19) = a2;
  return result;
}

uint64_t sub_21BBEB6B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 19) = v2;
  return result;
}

void (*sub_21BBEB704(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14FamilyCircleUI18ChecklistStateVars___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21BBEAC94();
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  v4[7] = sub_21BBEB4D4();
  return sub_21BBEB80C;
}

uint64_t sub_21BBEB868@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  result = swift_beginAccess();
  *a2 = *(v3 + 20);
  return result;
}

uint64_t sub_21BBEB91C()
{
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  swift_beginAccess();
  return *(v0 + 20);
}

uint64_t sub_21BBEB9A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 20) = v2;
  return result;
}

void (*sub_21BBEB9F4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14FamilyCircleUI18ChecklistStateVars___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21BBEAC94();
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  v4[7] = sub_21BBEB818();
  return sub_21BBEBAFC;
}

uint64_t sub_21BBEBB58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  result = swift_beginAccess();
  *a2 = *(v3 + 21);
  return result;
}

uint64_t sub_21BBEBC0C()
{
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  swift_beginAccess();
  return *(v0 + 21);
}

uint64_t sub_21BBEBC90(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 21) = a2;
  return result;
}

uint64_t sub_21BBEBCE4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 21) = v2;
  return result;
}

void (*sub_21BBEBD38(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14FamilyCircleUI18ChecklistStateVars___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21BBEAC94();
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  v4[7] = sub_21BBEBB08();
  return sub_21BBEBE40;
}

uint64_t sub_21BBEBE9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  result = swift_beginAccess();
  *a2 = *(v3 + 22);
  return result;
}

uint64_t sub_21BBEBF50()
{
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  swift_beginAccess();
  return *(v0 + 22);
}

uint64_t sub_21BBEBFD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 22) = v2;
  return result;
}

void (*sub_21BBEC028(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14FamilyCircleUI18ChecklistStateVars___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21BBEAC94();
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  v4[7] = sub_21BBEBE4C();
  return sub_21BBEC130;
}

uint64_t sub_21BBEC18C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  result = swift_beginAccess();
  *a2 = *(v3 + 23);
  return result;
}

uint64_t sub_21BBEC240()
{
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  swift_beginAccess();
  return *(v0 + 23);
}

uint64_t sub_21BBEC2C4(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 23) = a2;
  return result;
}

uint64_t sub_21BBEC318()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 23) = v2;
  return result;
}

void (*sub_21BBEC36C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14FamilyCircleUI18ChecklistStateVars___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21BBEAC94();
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  v4[7] = sub_21BBEC13C();
  return sub_21BBEC474;
}

uint64_t sub_21BBEC4D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_21BBEC584()
{
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  swift_beginAccess();
  return *(v0 + 24);
}

uint64_t sub_21BBEC608()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 24) = v2;
  return result;
}

void (*sub_21BBEC65C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14FamilyCircleUI18ChecklistStateVars___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21BBEAC94();
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  v4[7] = sub_21BBEC480();
  return sub_21BBEC764;
}

uint64_t sub_21BBEC7C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  result = swift_beginAccess();
  *a2 = *(v3 + 25);
  return result;
}

uint64_t sub_21BBEC874()
{
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  swift_beginAccess();
  return *(v0 + 25);
}

uint64_t sub_21BBEC8F8(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 25) = a2;
  return result;
}

uint64_t sub_21BBEC94C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 25) = v2;
  return result;
}

void (*sub_21BBEC9A0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14FamilyCircleUI18ChecklistStateVars___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21BBEAC94();
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  v4[7] = sub_21BBEC770();
  return sub_21BBECAA8;
}

uint64_t sub_21BBECB04()
{
  swift_getKeyPath();
  sub_21BBEAC94();
  sub_21BE25F1C();

  swift_beginAccess();
  return *(v0 + 26);
}

uint64_t sub_21BBECB88(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 26) = a2;
  return result;
}

uint64_t sub_21BBECBDC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 26) = v2;
  return result;
}

void (*sub_21BBECC30(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14FamilyCircleUI18ChecklistStateVars___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21BBEAC94();
  sub_21BE25F1C();

  *v4 = v1;
  swift_getKeyPath();
  sub_21BE25F3C();

  v4[7] = sub_21BBECAB4();
  return sub_21BBECD38;
}

void sub_21BBECD44(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_21BE25F2C();

  free(v1);
}

uint64_t ChecklistStateVars.deinit()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI18ChecklistStateVars___observationRegistrar;
  v2 = sub_21BE25F5C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ChecklistStateVars.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI18ChecklistStateVars___observationRegistrar;
  v2 = sub_21BE25F5C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21BBECF00()
{
  result = sub_21BE25F5C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21BBED570(void *a1)
{
  v2 = sub_21BE26A4C();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = *(v44 + 64);
  MEMORY[0x28223BE20](v2);
  v43 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BD6F00 != -1)
  {
LABEL_25:
    swift_once();
  }

  v5 = sub_21BBFA0C4(a1);
  v6 = 0;
  v7 = *(v5 + 16);
  a1 = MEMORY[0x277D84F98];
  while (1)
  {
    v9 = 0uLL;
    v10 = v7;
    v11 = 0uLL;
    v12 = 0uLL;
    if (v6 != v7)
    {
      if (v6 >= *(v5 + 16))
      {
        goto LABEL_23;
      }

      v10 = v6 + 1;
      *&v48 = v6;
      sub_21BB3A35C(v5 + 32 + 40 * v6, &v48 + 8);
      v9 = v48;
      v11 = v49;
      v12 = v50;
    }

    v51[0] = v9;
    v51[1] = v11;
    v51[2] = v12;
    if (!v12)
    {
      break;
    }

    v46 = v9;
    sub_21BB3D104((v51 + 8), &v48);
    v13 = *(&v49 + 1);
    v14 = v50;
    __swift_project_boxed_opaque_existential_1Tm(&v48, *(&v49 + 1));
    v15 = sub_21BBE7CF8(v13, v14);
    v17 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = a1;
    v19 = sub_21BBB3108(v15, v17);
    v21 = a1[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v25 = v20;
    if (a1[3] < v24)
    {
      sub_21BC7C4B4(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_21BBB3108(v15, v17);
      if ((v25 & 1) != (v26 & 1))
      {
        result = sub_21BE299FC();
        __break(1u);
        return result;
      }

LABEL_14:
      if (v25)
      {
        goto LABEL_3;
      }

      goto LABEL_15;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v30 = v19;
    sub_21BC81174();
    v19 = v30;
    if (v25)
    {
LABEL_3:
      v8 = v19;

      a1 = v47;
      *(v47[7] + 8 * v8) = v46;
      goto LABEL_4;
    }

LABEL_15:
    a1 = v47;
    v47[(v19 >> 6) + 8] |= 1 << v19;
    v27 = (a1[6] + 16 * v19);
    *v27 = v15;
    v27[1] = v17;
    *(a1[7] + 8 * v19) = v46;
    v28 = a1[2];
    v23 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v23)
    {
      goto LABEL_24;
    }

    a1[2] = v29;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0Tm(&v48);
    v6 = v10;
  }

  v31 = v43;
  sub_21BE261BC();
  v32 = sub_21BE26A2C();
  v33 = sub_21BE28FCC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v51[0] = v35;
    *v34 = 134218242;
    *(v34 + 4) = a1[2];
    *(v34 + 12) = 2080;

    v36 = sub_21BE2891C();
    v38 = v37;

    v39 = sub_21BB3D81C(v36, v38, v51);

    *(v34 + 14) = v39;
    _os_log_impl(&dword_21BB35000, v32, v33, "Sorted %ld items: %s", v34, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x21CF05C50](v35, -1, -1);
    MEMORY[0x21CF05C50](v34, -1, -1);
  }

  (*(v44 + 8))(v31, v45);
  type metadata accessor for ChecklistSortingRules();
  result = swift_allocObject();
  v40 = MEMORY[0x277D84F90];
  *(result + 16) = a1;
  *(result + 24) = v40;
  return result;
}

uint64_t sub_21BBED9AC(int *a1)
{
  sub_21BE29ACC();
  v3 = *(v1 + a1[6]);
  v8 = *(v1 + a1[8]);
  sub_21BE2992C();
  v4 = sub_21BE291AC();
  v6 = v5;

  MEMORY[0x21CF03CA0](v4, v6);

  sub_21BE28ABC();

  sub_21BC5C62C(*(v1 + a1[9]));
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BBEDAC4(uint64_t a1, int *a2)
{
  v4 = *(v2 + a2[6]);
  v9 = *(v2 + a2[8]);
  sub_21BE2992C();
  v5 = sub_21BE291AC();
  v7 = v6;

  MEMORY[0x21CF03CA0](v5, v7);

  sub_21BE28ABC();

  sub_21BC5C62C(*(v2 + a2[9]));
  sub_21BE28ABC();
}

uint64_t sub_21BBEDBD4(uint64_t a1, int *a2)
{
  sub_21BE29ACC();
  v4 = *(v2 + a2[6]);
  v9 = *(v2 + a2[8]);
  sub_21BE2992C();
  v5 = sub_21BE291AC();
  v7 = v6;

  MEMORY[0x21CF03CA0](v5, v7);

  sub_21BE28ABC();

  sub_21BC5C62C(*(v2 + a2[9]));
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BBEDCE8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a1 + a3[6]);
  v25[0] = *(a1 + a3[8]);
  sub_21BE2992C();
  v7 = sub_21BE291AC();
  v9 = v8;

  strcpy(v25, "appleCashItem");
  HIWORD(v25[1]) = -4864;
  MEMORY[0x21CF03CA0](v7, v9);

  v11 = v25[0];
  v10 = v25[1];
  v12 = *(a2 + a3[6]);
  v25[0] = *(a2 + a3[8]);
  sub_21BE2992C();
  v13 = sub_21BE291AC();
  v15 = v14;

  strcpy(v25, "appleCashItem");
  HIWORD(v25[1]) = -4864;
  MEMORY[0x21CF03CA0](v13, v15);

  if (v11 == v25[0] && v10 == v25[1])
  {
  }

  else
  {
    v16 = sub_21BE2995C();

    v17 = 0;
    if ((v16 & 1) == 0)
    {
      return v17 & 1;
    }
  }

  v18 = a3[9];
  v19 = *(a2 + v18);
  v20 = sub_21BC5C62C(*(a1 + v18));
  v22 = v21;
  if (v20 == sub_21BC5C62C(v19) && v22 == v23)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_21BE2995C();
  }

  return v17 & 1;
}

uint64_t sub_21BBEDEF8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + *(a1 + 24));
  v10[0] = *(v2 + *(a1 + 32));
  sub_21BE2992C();
  v5 = sub_21BE291AC();
  v7 = v6;

  strcpy(v10, "appleCashItem");
  HIWORD(v10[1]) = -4864;
  MEMORY[0x21CF03CA0](v5, v7);

  v9 = v10[1];
  *a2 = v10[0];
  a2[1] = v9;
  return result;
}

uint64_t sub_21BBEDFBC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BBEE030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BBF0B04(v6, v5);
  v7 = type metadata accessor for AppleCashItemView(0);
  v8 = *(v7 + 24);
  if (qword_280BD83C0 != -1)
  {
    swift_once();
  }

  v9 = (a2 + v8);
  type metadata accessor for FamilyPictureStore(0);
  sub_21BBF09B0(&qword_27CDB5CE0, type metadata accessor for FamilyPictureStore);

  *v9 = sub_21BE270CC();
  v9[1] = v10;
  sub_21BBF0B04(v5, a2);
  v11 = type metadata accessor for AppleCashFamilyFlow(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  *(v14 + OBJC_IVAR____TtC14FamilyCircleUI19AppleCashFamilyFlow_circleController) = 0;
  *(v14 + OBJC_IVAR____TtC14FamilyCircleUI19AppleCashFamilyFlow_appleCashHandler) = 0;
  result = sub_21BBF0B68(v5, v14 + OBJC_IVAR____TtC14FamilyCircleUI19AppleCashFamilyFlow_item);
  *(a2 + *(v7 + 20)) = v14;
  return result;
}

uint64_t sub_21BBEE1C4(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_21BE28D7C();
  v1[4] = sub_21BE28D6C();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_21BBCD93C;

  return sub_21BBEE410();
}

uint64_t sub_21BBEE274(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_21BE28D7C();
  v2[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_21BBEE30C, v4, v3);
}

uint64_t sub_21BBEE30C()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_21BBCDD2C;

    return sub_21BBCA564();
  }

  else
  {
    v5 = v0[6];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_21BBEE410()
{
  v1[5] = v0;
  v2 = sub_21BE26A4C();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v5 = sub_21BE260AC();
  v1[11] = v5;
  v6 = *(v5 - 8);
  v1[12] = v6;
  v7 = *(v6 + 64) + 15;
  v1[13] = swift_task_alloc();
  v8 = type metadata accessor for AppleCashItem(0);
  v1[14] = v8;
  v9 = *(v8 - 8);
  v1[15] = v9;
  v10 = *(v9 + 64) + 15;
  v1[16] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  sub_21BE28D7C();
  v1[18] = sub_21BE28D6C();
  v13 = sub_21BE28D0C();
  v1[19] = v13;
  v1[20] = v12;

  return MEMORY[0x2822009F8](sub_21BBEE60C, v13, v12);
}

uint64_t sub_21BBEE60C()
{
  v1 = v0[5];
  v2 = v1 + qword_27CDB63F0;
  v3 = *(v1 + qword_27CDB63F0);
  v0[21] = v3;
  v4 = *(v2 + 8);
  v0[22] = v4;
  v5 = type metadata accessor for FamilySignpost();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  v0[23] = sub_21BC84D18(v3, v4, "computeItems", 12, 2);
  v8 = qword_27CDD4158;
  v9 = swift_task_alloc();
  v0[24] = v9;
  *v9 = v0;
  v9[1] = sub_21BBEE734;
  v10 = v0[5];

  return (sub_21BE19D18)(v1 + v8);
}

uint64_t sub_21BBEE734(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v5 = *v2;
  v3[25] = a1;
  v3[26] = v1;

  if (v1)
  {

    v6 = v3[19];
    v7 = v3[20];
    v8 = sub_21BBEF804;
  }

  else
  {
    v6 = v3[19];
    v7 = v3[20];
    v8 = sub_21BBEE85C;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_21BBEE85C()
{
  v1 = [*(v0 + 200) allowedSubscriptions];
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = *(v0 + 208);
  v3 = v1;
  v4 = sub_21BE28C3C();

  *(v0 + 16) = 0x41435F454C505041;
  *(v0 + 24) = 0xEA00000000004853;
  v5 = swift_task_alloc();
  *(v5 + 16) = v0 + 16;
  LOBYTE(v2) = sub_21BC9BF08(sub_21BBF0CC4, v5, v4);

  if (v2)
  {
    v6 = *(v0 + 40);
    v7 = qword_27CDD4160;
    v8 = swift_task_alloc();
    *(v0 + 216) = v8;
    *v8 = v0;
    v8[1] = sub_21BBEEB04;
    v9 = *(v0 + 40);

    return sub_21BDEFA34(v6 + v7);
  }

  else
  {
LABEL_6:
    v11 = *(v0 + 144);

    v12 = *(v0 + 72);
    sub_21BE261BC();
    v13 = sub_21BE26A2C();
    v14 = sub_21BE28FDC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21BB35000, v13, v14, "Apple Cash subscription not allowed", v15, 2u);
      MEMORY[0x21CF05C50](v15, -1, -1);
    }

    v16 = *(v0 + 184);
    v17 = *(v0 + 72);
    v18 = *(v0 + 48);
    v19 = *(v0 + 56);

    (*(v19 + 8))(v17, v18);
    sub_21BC852D8();

    v21 = *(v0 + 128);
    v20 = *(v0 + 136);
    v22 = *(v0 + 104);
    v24 = *(v0 + 72);
    v23 = *(v0 + 80);
    v25 = *(v0 + 64);

    v26 = *(v0 + 8);
    v27 = MEMORY[0x277D84F90];

    return v26(v27);
  }
}

uint64_t sub_21BBEEB04(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v7 = v4[19];
    v8 = v4[20];
    v9 = sub_21BBEF968;
  }

  else
  {
    v4[29] = a1;
    v7 = v4[19];
    v8 = v4[20];
    v9 = sub_21BBEEC2C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_21BBEEC2C()
{
  v1 = sub_21BCE6070(0x41435F454C505041, 0xEA00000000004853, v0[29]);
  v0[30] = v1;

  if (v1)
  {
    v2 = [v1 subscriberDSIDs];
    if (v2)
    {
      v3 = v2;
      v4 = v0[5];
      sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
      v0[31] = sub_21BE28C3C();

      v5 = qword_27CDD4170;
      v6 = swift_task_alloc();
      v0[32] = v6;
      *v6 = v0;
      v6[1] = sub_21BBEF064;
      v7 = v0[5];

      return sub_21BBEFB20(v4 + v5);
    }

    else
    {
      v24 = v0[18];
      v25 = v0[10];

      sub_21BE261BC();
      v26 = sub_21BE26A2C();
      v27 = sub_21BE28FDC();
      v28 = os_log_type_enabled(v26, v27);
      v29 = v0[25];
      if (v28)
      {
        v30 = v1;
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21BB35000, v26, v27, "Apple Cash service dsids missing", v31, 2u);
        MEMORY[0x21CF05C50](v31, -1, -1);
        v1 = v29;
        v29 = v26;
        v26 = v30;
      }

      v32 = v0[23];
      (*(v0[7] + 8))(v0[10], v0[6]);
      sub_21BC852D8();

      v34 = v0[16];
      v33 = v0[17];
      v35 = v0[13];
      v37 = v0[9];
      v36 = v0[10];
      v38 = v0[8];

      v39 = v0[1];
      v40 = MEMORY[0x277D84F90];

      return v39(v40);
    }
  }

  else
  {
    v9 = v0[25];
    v11 = v0[21];
    v10 = v0[22];
    v12 = v0[18];
    v14 = v0[12];
    v13 = v0[13];
    v15 = v0[11];

    sub_21BE295EC();

    MEMORY[0x21CF03CA0](v11, v10);
    (*(v14 + 104))(v13, *MEMORY[0x277D07F70], v15);
    MEMORY[0x21CF01220](0xD000000000000020, 0x800000021BE57340, v13, 0xD000000000000010, 0x800000021BE573A0, 0xD00000000000002ALL, 0x800000021BE57370);

    (*(v14 + 8))(v13, v15);
    swift_willThrow();

    v16 = v0[23];
    v18 = v0[16];
    v17 = v0[17];
    v19 = v0[13];
    v21 = v0[9];
    v20 = v0[10];
    v22 = v0[8];
    sub_21BC852D8();

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_21BBEF064(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 256);
  v10 = *v2;
  v3[33] = a1;
  v3[34] = v1;

  if (v1)
  {
    v5 = v3[31];

    v6 = v3[19];
    v7 = v3[20];
    v8 = sub_21BBEFA40;
  }

  else
  {
    v6 = v3[19];
    v7 = v3[20];
    v8 = sub_21BBEF180;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_21BBEF180()
{
  v1 = v0[18];
  v2 = v0[5];

  v3 = [*(v2 + qword_27CDD4168) aa_primaryAppleAccount];
  if (v3)
  {
    v4 = v0[5];
    v71 = v3;
    v5 = sub_21BC85A38();
    v6 = *(v4 + qword_27CDB64A8);
    *(v4 + qword_27CDB64A8) = v5;

    if (*(v5 + 16))
    {
      v7 = sub_21BBB3108(0x41435F454C505041, 0xEA00000000004853);
      v8 = v0[17];
      if (v9)
      {
        v10 = v7;
        v11 = *(v5 + 56);
        v12 = sub_21BE25B9C();
        v13 = *(v12 - 8);
        (*(v13 + 16))(v8, v11 + *(v13 + 72) * v10, v12);

        (*(v13 + 56))(v8, 0, 1, v12);
        goto LABEL_10;
      }
    }

    else
    {
      v8 = v0[17];
    }

    v31 = sub_21BE25B9C();
    (*(*(v31 - 8) + 56))(v8, 1, 1, v31);
LABEL_10:
    v32 = v0[25];
    v33 = sub_21BE290DC();
    v34 = v33;
    v35 = v33 & 0xFFFFFFFFFFFFFF8;
    if (v33 >> 62)
    {
LABEL_30:
      v36 = sub_21BE2951C();
      if (v36)
      {
LABEL_12:
        v37 = 0;
        v69 = v0[15];
        v68 = v0[14];
        v70 = v0[34];
        v38 = &selRef_bundleURL;
        v73 = MEMORY[0x277D84F90];
        do
        {
          v39 = v37;
          while (1)
          {
            if ((v34 & 0xC000000000000001) != 0)
            {
              v40 = MEMORY[0x21CF047C0](v39, v34);
            }

            else
            {
              if (v39 >= *(v35 + 16))
              {
                goto LABEL_29;
              }

              v40 = *(v34 + 8 * v39 + 32);
            }

            v41 = v40;
            v37 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
              __break(1u);
LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

            v42 = [v40 v38[490]];
            if (v42)
            {
              break;
            }

            ++v39;
            if (v37 == v36)
            {
              goto LABEL_32;
            }
          }

          v43 = v0[31];
          v44 = v0[16];
          v65 = v0[17];
          v66 = v0[30];
          v67 = v42;
          v0[4] = v42;
          v45 = swift_task_alloc();
          *(v45 + 16) = v0 + 4;
          v64 = sub_21BC9DAC4(sub_21BBF0CE4, v45, v43);

          sub_21BBF0D04(v65, &v44[v68[5]]);
          *v44 = v64 & 1;
          *&v44[v68[6]] = v41;
          *&v44[v68[7]] = v66;
          *&v44[v68[8]] = v39;
          v44[v68[9]] = 10;
          v46 = v66;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v73 = sub_21BBBCD00(0, v73[2] + 1, 1, v73);
          }

          v48 = v73[2];
          v47 = v73[3];
          v49 = v67;
          if (v48 >= v47 >> 1)
          {
            v73 = sub_21BBBCD00(v47 > 1, v48 + 1, 1, v73);
            v49 = v67;
          }

          v50 = v0[16];

          v73[2] = v48 + 1;
          sub_21BBF0B68(v50, v73 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v48);
          v38 = &selRef_bundleURL;
        }

        while (v37 != v36);
        goto LABEL_32;
      }
    }

    else
    {
      v36 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v36)
      {
        goto LABEL_12;
      }
    }

    v73 = MEMORY[0x277D84F90];
LABEL_32:
    v51 = v0[33];
    v53 = v0[30];
    v52 = v0[31];
    v54 = v0[25];
    v55 = v0[23];
    v56 = v0[17];

    sub_21BB3A4CC(v56, &unk_27CDB57F0, &qword_21BE328A0);
    sub_21BC852D8();

    v58 = v0[16];
    v57 = v0[17];
    v59 = v0[13];
    v61 = v0[9];
    v60 = v0[10];
    v62 = v0[8];

    v63 = v0[1];

    return v63(v73);
  }

  v14 = v0[33];
  v16 = v0[30];
  v15 = v0[31];
  v72 = v0[25];
  v18 = v0[21];
  v17 = v0[22];
  v20 = v0[12];
  v19 = v0[13];
  v21 = v0[11];

  sub_21BE295EC();

  MEMORY[0x21CF03CA0](v18, v17);
  (*(v20 + 104))(v19, *MEMORY[0x277D07F68], v21);
  MEMORY[0x21CF01220](0xD000000000000015, 0x800000021BE573C0, v19, 0xD000000000000010, 0x800000021BE573A0, 0xD00000000000002ALL, 0x800000021BE57370);

  (*(v20 + 8))(v19, v21);
  swift_willThrow();

  v22 = v0[23];
  v24 = v0[16];
  v23 = v0[17];
  v25 = v0[13];
  v27 = v0[9];
  v26 = v0[10];
  v28 = v0[8];
  sub_21BC852D8();

  v29 = v0[1];

  return v29();
}

uint64_t sub_21BBEF804()
{
  v1 = v0[18];
  v2 = v0[8];

  sub_21BE261BC();
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FDC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21BB35000, v3, v4, "Apple Cash no family found, bye", v5, 2u);
    MEMORY[0x21CF05C50](v5, -1, -1);
  }

  v6 = v0[23];
  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[6];

  (*(v8 + 8))(v7, v9);
  sub_21BC852D8();

  v11 = v0[16];
  v10 = v0[17];
  v12 = v0[13];
  v14 = v0[9];
  v13 = v0[10];
  v15 = v0[8];

  v16 = v0[1];
  v17 = MEMORY[0x277D84F90];

  return v16(v17);
}

uint64_t sub_21BBEF968()
{
  v1 = v0[25];
  v2 = v0[18];

  v3 = v0[28];
  v4 = v0[23];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[13];
  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[8];
  sub_21BC852D8();

  v11 = v0[1];

  return v11();
}

uint64_t sub_21BBEFA40()
{
  v1 = v0[30];
  v2 = v0[25];
  v3 = v0[18];

  v4 = v0[34];
  v5 = v0[23];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[13];
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];
  sub_21BC852D8();

  v12 = v0[1];

  return v12();
}

uint64_t sub_21BBEFB20(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_21BE260AC();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = sub_21BE28D7C();
  v2[10] = sub_21BE28D6C();
  v8 = sub_21BE28D0C();
  v2[11] = v8;
  v2[12] = v7;

  return MEMORY[0x2822009F8](sub_21BBEFC50, v8, v7);
}

uint64_t sub_21BBEFC50()
{
  v1 = *(v0 + 72);
  *(v0 + 104) = *__swift_project_boxed_opaque_existential_1Tm(*(v0 + 24), *(*(v0 + 24) + 24));
  *(v0 + 112) = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  *(v0 + 120) = v3;
  *(v0 + 128) = v2;

  return MEMORY[0x2822009F8](sub_21BBEFCF0, v3, v2);
}

void sub_21BBEFCF0()
{
  v1 = *(v0[13] + 40);
  v0[17] = v1;
  if (v1)
  {
    v2 = v0[8];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = *(MEMORY[0x277D07FD0] + 4);
    v7 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v5 = swift_task_alloc();
    v0[18] = v5;
    *v5 = v0;
    v5[1] = sub_21BBEFE04;
    v6 = v0[8];

    v7(v0 + 2, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BBEFE04()
{
  v2 = *v1;
  v3 = (*v1)[18];
  v4 = *v1;
  (*v1)[19] = v0;

  v5 = v2[17];
  sub_21BB3A4CC(v2[8], &qword_27CDB5790, &qword_21BE32800);

  v6 = v2[16];
  v7 = v2[15];
  if (v0)
  {
    v8 = sub_21BBF006C;
  }

  else
  {
    v8 = sub_21BBEFF84;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_21BBEFF84()
{
  v1 = v0[14];

  v0[20] = v0[2];
  v2 = v0[11];
  v3 = v0[12];

  return MEMORY[0x2822009F8](sub_21BBEFFF0, v2, v3);
}

uint64_t sub_21BBEFFF0()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];

  v4 = v0[1];
  v5 = v0[20];

  return v4(v5);
}

uint64_t sub_21BBF006C()
{
  v1 = v0[14];

  v2 = v0[11];
  v3 = v0[12];

  return MEMORY[0x2822009F8](sub_21BBF00D0, v2, v3);
}

uint64_t sub_21BBF00D0()
{
  v1 = v0[19];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];

  sub_21BE295EC();

  v10 = *(v7 + qword_27CDB63F0);
  v11 = *(v7 + qword_27CDB63F0 + 8);

  MEMORY[0x21CF03CA0](0xD000000000000018, 0x800000021BE573E0);
  (*(v6 + 104))(v3, *MEMORY[0x277D07F90], v5);
  MEMORY[0x21CF01220](v10, v11, v3, 0xD000000000000010, 0x800000021BE573A0, 0xD000000000000020, 0x800000021BE57400);

  (*(v6 + 8))(v3, v5);
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_21BBF0268()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BBCA564();
}

void sub_21BBF032C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = sub_21BE28DAC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_21BE28D7C();
  v7 = a1;
  v8 = sub_21BE28D6C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  sub_21BBA932C(0, 0, v5, &unk_21BE34D58, v9);
}

uint64_t sub_21BBF045C()
{
  v1 = qword_27CDB64A0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6590, &unk_21BE50860);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD4158));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD4160));
  v3 = *(v0 + qword_27CDD4168);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD4170));
  v4 = *(v0 + qword_27CDB64A8);
}

id sub_21BBF0520()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleCashItemProvider(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BBF0558(uint64_t a1)
{
  v2 = qword_27CDB64A0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6590, &unk_21BE50860);
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD4158));
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD4160));
  v4 = *(a1 + qword_27CDD4168);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD4170));
  v5 = *(a1 + qword_27CDB64A8);
}

void sub_21BBF0640()
{
  sub_21BBF06F4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_21BBF06F4()
{
  if (!qword_27CDB64C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB64D0, &qword_21BE34BA0);
    v0 = sub_21BE26CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB64C8);
    }
  }
}

void sub_21BBF07A8()
{
  sub_21BBF088C();
  if (v0 <= 0x3F)
  {
    sub_21BB3A2A4(319, &qword_280BD8A40, 0x277D08268);
    if (v1 <= 0x3F)
    {
      sub_21BB3A2A4(319, &unk_27CDB6550, 0x277D08338);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21BBF088C()
{
  if (!qword_280BD89E0)
  {
    sub_21BE25B9C();
    v0 = sub_21BE2946C();
    if (!v1)
    {
      atomic_store(v0, &qword_280BD89E0);
    }
  }
}

uint64_t sub_21BBF092C(uint64_t a1)
{
  *(a1 + 8) = sub_21BBF09B0(&qword_27CDB6568, type metadata accessor for AppleCashItem);
  result = sub_21BBF09B0(&qword_27CDB6570, type metadata accessor for AppleCashItem);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BBF09B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BBF09F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_21BE26CBC();
}

uint64_t sub_21BBF0A64(uint64_t a1)
{
  *(a1 + 8) = sub_21BBF09B0(&qword_27CDB6578, type metadata accessor for AppleCashItemProvider);
  result = sub_21BBF09B0(&unk_27CDB6580, type metadata accessor for AppleCashItemProvider);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BBF0B04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleCashItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BBF0B68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleCashItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BBF0BCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v5;
  return result;
}

uint64_t sub_21BBF0C4C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_21BE26CBC();
}

uint64_t sub_21BBF0D04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BBF0D74()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBA6A64;

  return sub_21BBF0268();
}

void *sub_21BBF0E28()
{
  if ([v0 isFirstResponder])
  {
    v1 = v0;
  }

  else
  {
    v2 = [v0 subviews];
    sub_21BB3A2A4(0, &qword_27CDB6670, 0x277D75D18);
    v3 = sub_21BE28C3C();

    if (v3 >> 62)
    {
LABEL_18:
      v4 = sub_21BE2951C();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v4 != i; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x21CF047C0](i, v3);
      }

      else
      {
        if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v0 = sub_21BBF0E28();

      if (v0)
      {

        return v0;
      }
    }

    return 0;
  }

  return v0;
}

id sub_21BBF1028()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CreateContactView.ContactViewDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_21BBF1094(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21BBF10DC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

id sub_21BBF114C(void *a1, void *a2)
{
  v108[1] = *MEMORY[0x277D85DE8];
  v4 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v107 = v4;
  if (a1)
  {
    v5 = v4;
    v6 = [a1 contact];
    if (v6)
    {
      v7 = v6;
      v8 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC880, &qword_21BE32F40);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_21BE32770;
      v10 = [v7 identifier];
      v11 = sub_21BE28A0C();
      v13 = v12;

      *(v9 + 32) = v11;
      *(v9 + 40) = v13;
      v14 = sub_21BE28C1C();

      v15 = [v8 predicateForContactsWithIdentifiers_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC1D0, &qword_21BE35080);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_21BE34D60;
      v17 = objc_opt_self();
      *(v16 + 32) = [v17 descriptorForRequiredKeys];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB66B0, &qword_21BE40060);
      v18 = sub_21BE28C1C();

      v108[0] = 0;
      v19 = [v5 unifiedContactsMatchingPredicate:v15 keysToFetch:v18 error:v108];

      v20 = v108[0];
      if (v19)
      {
        sub_21BB3A2A4(0, &qword_27CDB66B8, 0x277CBDA58);
        v21 = sub_21BE28C3C();
        v22 = v20;

        if (v21 >> 62)
        {
          if (sub_21BE2951C())
          {
LABEL_6:
            if ((v21 & 0xC000000000000001) != 0)
            {
              v23 = MEMORY[0x21CF047C0](0, v21);
            }

            else
            {
              if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_58;
              }

              v23 = v21[4];
            }

            v24 = v23;

            v21 = [objc_allocWithZone(MEMORY[0x277CBDB38]) initWithContact_];
            v25 = [v21 imageData];
            v106 = v24;
            if (v25)
            {
              v26 = v25;
              v27 = sub_21BE25BFC();
              v28 = a2;
              v30 = v29;

              v31 = v30;
              a2 = v28;
              sub_21BBBEF94(v27, v31);
              goto LABEL_20;
            }

            v5 = a2;
            v34 = qword_280BD83C0;
            v20 = a1;
            if (v34 == -1)
            {
LABEL_13:
              swift_getKeyPath();
              swift_getKeyPath();
              sub_21BE26CAC();

              v35 = v108[0];
              if (qword_27CDB4E58 != -1)
              {
                swift_once();
              }

              v36 = 38.0;
              if (byte_27CDD41B0)
              {
                v36 = 40.0;
              }

              v37 = [v35 profilePictureForFamilyMember:v20 pictureDiameter:v36];

              if (v37)
              {
                v38 = sub_21BE25BFC();
                v40 = v39;

                sub_21BBBEF94(v38, v40);
                v20 = v37;
              }

              a2 = v5;

              [v21 setImageData_];
              v5 = v107;
LABEL_20:
              v41 = [v21 familyName];
              v42 = sub_21BE28A0C();
              v44 = v43;

              sub_21BB41E7C(v42, v44);
              v46 = v45;

              if (v46)
              {
              }

              else
              {
                v47 = [a1 lastName];
                if (v47)
                {
                  v48 = v47;
                  [v21 setFamilyName_];
                }
              }

              v49 = [v21 givenName];
              v50 = sub_21BE28A0C();
              v52 = v51;

              sub_21BB41E7C(v50, v52);
              v54 = v53;

              if (v54)
              {

                v55 = v106;
              }

              else
              {
                v56 = [a1 firstName];
                v55 = v106;
                if (v56)
                {
                  v57 = v56;
                  [v21 setGivenName_];
                }
              }

              v58 = [v17 viewControllerForContact_];

              v59 = &off_2782F5000;
              v60 = v58;
              if (!v58)
              {
                goto LABEL_54;
              }

              goto LABEL_55;
            }

LABEL_58:
            swift_once();
            goto LABEL_13;
          }
        }

        else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v32 = v108[0];
        v33 = sub_21BE25A8C();

        swift_willThrow();
      }
    }
  }

  v21 = [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
  if (a1)
  {
    v61 = [a1 firstName];
    if (v61)
    {
      v62 = v61;
      sub_21BE28A0C();
    }

    v64 = sub_21BE289CC();

    [v21 setGivenName_];

    v65 = [a1 lastName];
    if (v65)
    {
      v66 = v65;
      sub_21BE28A0C();
    }
  }

  else
  {
    v63 = sub_21BE289CC();

    [v21 setGivenName_];
  }

  v67 = sub_21BE289CC();

  [v21 setFamilyName_];

  v68 = &off_2782F5000;
  if (a1)
  {
    v69 = qword_280BD83C0;
    v70 = a1;
    if (v69 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v71 = v108[0];
    if (qword_27CDB4E58 != -1)
    {
      swift_once();
    }

    v72 = 38.0;
    if (byte_27CDD41B0)
    {
      v72 = 40.0;
    }

    v73 = [v71 profilePictureForFamilyMember:v70 pictureDiameter:v72];

    v74 = v70;
    if (v73)
    {
      v75 = sub_21BE25BFC();
      v77 = v76;

      sub_21BBBEF94(v75, v77);
      v74 = v73;
    }

    v78 = [v70 appleID];
    if (v78)
    {
      v79 = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC1D0, &qword_21BE35080);
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_21BE34D60;
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v82 = [objc_opt_self() bundleForClass_];
      sub_21BE2599C();

      v83 = objc_allocWithZone(MEMORY[0x277CBDB20]);
      v84 = v79;
      v85 = sub_21BE289CC();
      v68 = &off_2782F5000;

      v86 = [v83 initWithLabel:v85 value:{v84, 0xED00006C69616D65}];

      *(v80 + 32) = v86;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB66A0, &qword_21BE35088);
      v87 = sub_21BE28C1C();

      [v21 setEmailAddresses_];
    }

    v88 = sub_21BE291DC();
    if (v88[2])
    {
      goto LABEL_50;
    }
  }

  else
  {
    v88 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_50:
      v89 = v88[4];
      v90 = v88[5];

      v91 = objc_allocWithZone(MEMORY[0x277CBDB70]);
      v92 = sub_21BE289CC();

      v93 = [v91 initWithStringValue_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC1D0, &qword_21BE35080);
      v94 = swift_allocObject();
      *(v94 + 16) = xmmword_21BE34D60;
      type metadata accessor for ConfirmChildAgeViewModel();
      v95 = swift_getObjCClassFromMetadata();
      v96 = [objc_opt_self() bundleForClass_];
      sub_21BE2599C();

      v97 = objc_allocWithZone(MEMORY[0x277CBDB20]);
      v98 = v93;
      v99 = sub_21BE289CC();

      v100 = [v97 v68[233]];

      *(v94 + 32) = v100;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB66A0, &qword_21BE35088);
      v101 = sub_21BE28C1C();

      [v21 setPhoneNumbers_];

      goto LABEL_53;
    }
  }

LABEL_53:
  v5 = v107;
  v59 = &off_2782F5000;
  v58 = [objc_opt_self() viewControllerForNewContact_];
  v60 = v58;
  if (!v58)
  {
LABEL_54:
    v60 = [objc_opt_self() v59[235]];
  }

LABEL_55:
  v102 = v58;
  [v60 setDelegate_];
  v103 = v5;
  [v60 setContactStore_];

  v104 = *MEMORY[0x277D85DE8];
  return v60;
}

id sub_21BBF1D94()
{
  v1 = sub_21BBF114C(*v0, v0[1]);
  v2 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  return v2;
}

uint64_t sub_21BBF1E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BBF3304();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21BBF1E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BBF3304();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21BBF1EEC()
{
  sub_21BBF3304();
  sub_21BE27ABC();
  __break(1u);
}

id sub_21BBF1F14(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  if (a2)
  {
    v4 = [a2 contact];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 identifier];

      sub_21BE28A0C();
    }
  }

  v7 = objc_opt_self();
  v8 = sub_21BE289CC();

  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  v14[4] = sub_21BBF33AC;
  v14[5] = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_21BBF23E4;
  v14[3] = &block_descriptor_3;
  v10 = _Block_copy(v14);
  v11 = v3;

  v12 = [v7 requestViewControllerWithContactID:v8 completion:v10];
  _Block_release(v10);

  return v11;
}

void sub_21BBF20B8(void *a1, void *a2, void *a3)
{
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_21BE295EC();

  v31 = 0xD000000000000013;
  v32 = 0x800000021BE57500;
  v30[1] = a1;
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB6690, &qword_21BE35078);
  v12 = sub_21BE28A5C();
  MEMORY[0x21CF03CA0](v12);

  v13 = v32;
  if (a2)
  {
    sub_21BC51D50(a2);
  }

  else
  {
    v14 = v31;

    v15 = sub_21BE26A2C();
    v16 = sub_21BE28FFC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v30[0] = a3;
      v18 = v17;
      v19 = swift_slowAlloc();
      v20 = v14;
      v21 = v19;
      v31 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_21BB3D81C(v20, v13, &v31);
      _os_log_impl(&dword_21BB35000, v15, v16, "%s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x21CF05C50](v21, -1, -1);
      v22 = v18;
      a3 = v30[0];
      MEMORY[0x21CF05C50](v22, -1, -1);
    }
  }

  (*(v7 + 8))(v10, v6);
  if (a1)
  {
    v23 = v11;
    v24 = [v23 view];
    if (v24)
    {
      v25 = v24;
      [a3 addChildViewController_];
      v26 = [a3 view];
      if (v26)
      {
        v27 = v26;
        [v26 addSubview_];

        v28 = [a3 view];
        if (v28)
        {
          v29 = v28;
          sub_21BC47030(v28);

          [v23 didMoveToParentViewController_];
LABEL_12:

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

    v25 = v23;
    goto LABEL_12;
  }
}

void sub_21BBF23E4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_21BBF2478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BBF3358();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21BBF24DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BBF3358();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21BBF2540()
{
  sub_21BBF3358();
  sub_21BE27ABC();
  __break(1u);
}

uint64_t sub_21BBF2568@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v22[1] = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6608, &qword_21BE34E78);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v22 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  *(v15 + 32) = a4;
  *(v15 + 40) = a5;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB6610, &unk_21BE34E80);
  (*(*(v16 - 8) + 16))(v14, a1, v16);
  v17 = &v14[*(v11 + 36)];
  *v17 = sub_21BBF2D9C;
  v17[1] = v15;
  v22[5] = a3;
  v22[6] = a4;
  v23 = a5;

  v18 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  sub_21BE2856C();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a3;
  *(v19 + 32) = a4;
  *(v19 + 40) = a5;
  v20 = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6620, &qword_21BE34E90);
  sub_21BBF2DB4();
  sub_21BB3B038(&qword_27CDB6640, &qword_27CDB6620, &qword_21BE34E90);
  sub_21BE2812C();

  return sub_21BBF2E6C(v14);
}

uint64_t sub_21BBF27DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6648, &qword_21BE34E98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6650, &qword_21BE34EA0);
  sub_21BBF2EE4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB6660, &qword_21BE33470);
  sub_21BB3B038(&qword_27CDB5C38, &unk_27CDB6660, &qword_21BE33470);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_21BE271BC();
}

void sub_21BBF2924(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6650, &qword_21BE34EA0);
  sub_21BBF2EE4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB6660, &qword_21BE33470);
  sub_21BB3B038(&qword_27CDB5C38, &unk_27CDB6660, &qword_21BE33470);
  swift_getOpaqueTypeConformance2();
  sub_21BE2817C();
}

uint64_t sub_21BBF2A44(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_21BE278CC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB6660, &qword_21BE33470);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v17[-v13];
  sub_21BE278AC();
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460);
  sub_21BE26EDC();
  v15 = sub_21BB3B038(&qword_27CDB5C38, &unk_27CDB6660, &qword_21BE33470);
  MEMORY[0x21CF02AD0](v14, v10, v15);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_21BBF2C44(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  sub_21BB41FA4();
  v11 = a1;

  return sub_21BE2845C();
}

uint64_t sub_21BBF2DA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_21BBF27DC();
}

unint64_t sub_21BBF2DB4()
{
  result = qword_27CDB6628;
  if (!qword_27CDB6628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6608, &qword_21BE34E78);
    sub_21BB3B038(&unk_27CDB6630, &unk_27CDB6610, &unk_21BE34E80);
    sub_21BBDD1FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6628);
  }

  return result;
}

uint64_t sub_21BBF2E6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6608, &qword_21BE34E78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21BBF2ED4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_21BBF2924(*(v0 + 16));
}

unint64_t sub_21BBF2EE4()
{
  result = qword_27CDB6658;
  if (!qword_27CDB6658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6658);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21BBF2FA8()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  return sub_21BE2854C();
}

void sub_21BBF3004(void *a1, uint64_t a2)
{
  v4 = [a1 view];
  if (v4)
  {
    v5 = v4;
    v6 = sub_21BBF0E28();

    if (v6)
    {
      [v6 resignFirstResponder];
    }
  }

  [a1 dismissViewControllerAnimated:1 completion:0];
  if (a2)
  {
    sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
    v7 = [swift_getObjCClassFromMetadata() defaultCenter];
    v8 = v7;
    if (qword_27CDB4EF8 != -1)
    {
      swift_once();
      v7 = v8;
    }

    [v7 postNotificationName:qword_27CDB7EA0 object:0];
  }
}

uint64_t sub_21BBF314C(uint64_t *a1, unsigned int a2)
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

uint64_t sub_21BBF31A8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21BBF3208(uint64_t a1, int a2)
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

uint64_t sub_21BBF3250(uint64_t result, int a2, int a3)
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

unint64_t sub_21BBF32A0()
{
  result = qword_27CDB6678;
  if (!qword_27CDB6678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6678);
  }

  return result;
}

unint64_t sub_21BBF3304()
{
  result = qword_27CDB6680;
  if (!qword_27CDB6680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6680);
  }

  return result;
}

unint64_t sub_21BBF3358()
{
  result = qword_27CDB6688;
  if (!qword_27CDB6688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6688);
  }

  return result;
}

BOOL sub_21BBF3664(void *a1)
{
  v2 = sub_21BE2690C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  v10 = [a1 traitCollection];
  sub_21BE292AC();

  (*(v3 + 104))(v7, *MEMORY[0x277D40278], v2);
  sub_21BBF381C(&qword_27CDB66C8, MEMORY[0x277D40290]);
  sub_21BE28BDC();
  sub_21BE28BDC();
  v11 = *(v3 + 8);
  v11(v7, v2);
  v11(v9, v2);
  return v13[1] == v13[0];
}

uint64_t sub_21BBF381C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BBF3864()
{
  v1 = qword_27CDB66D0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6720, &unk_21BE50770);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD4178));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD4180));
  v3 = (v0 + qword_27CDD4188);

  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

id sub_21BBF3908()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for IcloudPlusItemProvider();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_21BBF3980(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 defaultCenter];
  [v4 removeObserver_];

  v6.receiver = v3;
  v6.super_class = type metadata accessor for IcloudPlusItemProvider();
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_21BBF3A0C(uint64_t a1)
{
  v2 = qword_27CDB66D0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6720, &unk_21BE50770);
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD4178));
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD4180));
  v4 = (a1 + qword_27CDD4188);

  return __swift_destroy_boxed_opaque_existential_0Tm(v4);
}

uint64_t sub_21BBF3AB4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BBF3B28(void *a1)
{
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + qword_27CDD4188 + 24);
  v9 = *(v1 + qword_27CDD4188 + 32);
  __swift_project_boxed_opaque_existential_1Tm((v1 + qword_27CDD4188), v8);
  v10 = (*(v9 + 8))(v8, v9);
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  v12 = [v10 me];
  if (!v12)
  {
    v13 = v11;
LABEL_9:

LABEL_10:
    sub_21BE261BC();
    v20 = sub_21BE26A2C();
    v21 = sub_21BE28FDC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_21BB35000, v20, v21, "Invalid parameters", v22, 2u);
      MEMORY[0x21CF05C50](v22, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    return MEMORY[0x277D84F90];
  }

  v13 = v12;
  v14 = sub_21BE2911C();
  if (!v14)
  {

    goto LABEL_9;
  }

  v15 = v14;
  if (*(v1 + qword_27CDD4190))
  {
    v16 = [a1 purchaserDSID];
    if (v16)
    {
      v17 = v16;
      v18 = sub_21BBF3D98(v16);

      return v18;
    }

    if ([v13 isOrganizer])
    {
      v23 = sub_21BBF56A4();
    }

    else
    {
      v23 = sub_21BBF6490(v15);
    }
  }

  else
  {
    v23 = sub_21BBF6310();
  }

  v24 = v23;

  return v24;
}

uint64_t sub_21BBF3D98(uint64_t a1)
{
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + qword_27CDD4188 + 24);
  v9 = *(v1 + qword_27CDD4188 + 32);
  __swift_project_boxed_opaque_existential_1Tm((v1 + qword_27CDD4188), v8);
  v10 = (*(v9 + 8))(v8, v9);
  if (v10)
  {
    v11 = v10;
    v12 = [v10 me];
    if (v12)
    {
      v13 = v12;
      v14 = [v11 memberForDSID_];
      if (v14)
      {
        v15 = v14;
        sub_21BB3A2A4(0, &qword_27CDB6730, 0x277D82BB8);
        if (sub_21BE2940C())
        {
          v16 = sub_21BBF56A4();
        }

        else
        {
          v16 = sub_21BBF6490(v15);
        }

        v21 = v16;

        return v21;
      }
    }

    else
    {
      v13 = v11;
    }
  }

  sub_21BE261BC();
  v17 = sub_21BE26A2C();
  v18 = sub_21BE28FDC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_21BB35000, v17, v18, "Dont have the valid parameters in getHeadlineFromPurchaserDSID", v19, 2u);
    MEMORY[0x21CF05C50](v19, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  return MEMORY[0x277D84F90];
}

uint64_t sub_21BBF3FD0(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_21BE28D7C();
  v1[4] = sub_21BE28D6C();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_21BBCD93C;

  return sub_21BBF421C();
}

uint64_t sub_21BBF4080(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_21BE28D7C();
  v2[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_21BBF4118, v4, v3);
}

uint64_t sub_21BBF4118()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_21BBCDD2C;

    return sub_21BBCA80C();
  }

  else
  {
    v5 = v0[6];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_21BBF421C()
{
  v1[7] = v0;
  v2 = sub_21BE260AC();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  sub_21BE28D7C();
  v1[11] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v1[12] = v6;
  v1[13] = v5;

  return MEMORY[0x2822009F8](sub_21BBF4310, v6, v5);
}

uint64_t sub_21BBF4310()
{
  v1 = v0[7];
  v2 = v1 + qword_27CDB63F0;
  v3 = *(v1 + qword_27CDB63F0);
  v0[14] = v3;
  v4 = *(v2 + 8);
  v0[15] = v4;
  v5 = type metadata accessor for FamilySignpost();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  v0[16] = sub_21BC84D18(v3, v4, "computeItems", 12, 2);
  v8 = qword_27CDD4180;
  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_21BBF4438;
  v10 = v0[7];

  return sub_21BDEFF68(v1 + v8);
}

uint64_t sub_21BBF4438(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v7 = v4[12];
    v8 = v4[13];
    v9 = sub_21BBF4C20;
  }

  else
  {
    v4[19] = a1;
    v7 = v4[12];
    v8 = v4[13];
    v9 = sub_21BBF4560;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_21BBF4560()
{
  v1 = sub_21BCE6070(0x535F44554F4C4349, 0xEE00454741524F54, v0[19]);
  v0[20] = v1;

  if (v1)
  {
    sub_21BB3A35C(v0[7] + qword_27CDD4178, (v0 + 2));
    v2 = v0[5];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v2);
    v4 = *MEMORY[0x277CED1A0];
    v5 = *(v3 + 8);
    v18 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[21] = v7;
    *v7 = v0;
    v7[1] = sub_21BBF4854;

    return v18(v4, v2, v3);
  }

  else
  {
    v10 = v0[15];
    v9 = v0[16];
    v11 = v0[14];
    v13 = v0[10];
    v12 = v0[11];
    v14 = v0[8];
    v15 = v0[9];

    sub_21BE295EC();

    MEMORY[0x21CF03CA0](v11, v10);
    (*(v15 + 104))(v13, *MEMORY[0x277D07F78], v14);
    MEMORY[0x21CF01220](0xD000000000000021, 0x800000021BE57630, v13, 0xD000000000000010, 0x800000021BE573A0, 0xD00000000000002BLL, 0x800000021BE57660);

    (*(v15 + 8))(v13, v14);
    swift_willThrow();
    sub_21BC852D8();

    v16 = v0[10];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_21BBF4854(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = a1;

  v4 = *(v2 + 104);
  v5 = *(v2 + 96);

  return MEMORY[0x2822009F8](sub_21BBF497C, v5, v4);
}

uint64_t sub_21BBF497C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 88);

  if (v1)
  {
    v3 = *(v0 + 176);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    if ([v3 aa_isCloudSubscriber])
    {
      v4 = [*(v0 + 160) subscriberDSIDs];
      if (v4)
      {
        v5 = v4;
        sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
        v6 = sub_21BE28C3C();

        if (!(v6 >> 62))
        {
LABEL_5:
          v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_6;
        }
      }

      else
      {
        v6 = MEMORY[0x277D84F90];
        if (!(MEMORY[0x277D84F90] >> 62))
        {
          goto LABEL_5;
        }
      }

      v7 = sub_21BE2951C();
LABEL_6:

      v9 = v7 - 1;
      if (__OFSUB__(v7, 1))
      {
        __break(1u);
      }

      else
      {
        v10 = *(v0 + 160);
        v11 = *(v0 + 128);
        v12 = *(v0 + 80);
        *(*(v0 + 56) + qword_27CDD4190) = v9 & ~(v9 >> 63);
        v13 = sub_21BBF3B28(v10);

        sub_21BC852D8();

        v14 = *(v0 + 8);

        return v14(v13);
      }

      return result;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  v15 = *(v0 + 160);
  v16 = *(v0 + 128);
  v18 = *(v0 + 72);
  v17 = *(v0 + 80);
  v19 = *(v0 + 64);
  (*(v18 + 104))(v17, *MEMORY[0x277D07F78], v19);
  MEMORY[0x21CF01220](0xD000000000000031, 0x800000021BE57690, v17, 0xD000000000000010, 0x800000021BE573A0, 0xD00000000000002BLL, 0x800000021BE57660);
  (*(v18 + 8))(v17, v19);
  swift_willThrow();

  sub_21BC852D8();

  v20 = *(v0 + 80);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_21BBF4C20()
{
  v1 = v0[16];
  v2 = v0[11];

  sub_21BC852D8();

  v3 = v0[18];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BBF4C9C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE261BC();
  v11 = sub_21BE26A2C();
  v12 = sub_21BE28FCC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_21BB35000, v11, v12, "IcloudPlusItemProvider icloud sub change", v13, 2u);
    MEMORY[0x21CF05C50](v13, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v14 = sub_21BE28DAC();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  sub_21BE28D7C();
  v15 = v1;
  v16 = sub_21BE28D6C();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v15;
  sub_21BBA932C(0, 0, v5, &unk_21BE35320, v17);
}

uint64_t sub_21BBF4ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_21BE26A4C();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = sub_21BE28D7C();
  v4[9] = sub_21BE28D6C();
  v10 = sub_21BE28D0C();
  v4[10] = v10;
  v4[11] = v9;

  return MEMORY[0x2822009F8](sub_21BBF5004, v10, v9);
}

uint64_t sub_21BBF5004()
{
  v1 = v0[8];
  v0[12] = *__swift_project_boxed_opaque_existential_1Tm((v0[3] + qword_27CDD4180), *(v0[3] + qword_27CDD4180 + 24));
  v0[13] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v0[14] = v3;
  v0[15] = v2;

  return MEMORY[0x2822009F8](sub_21BBF50B0, v3, v2);
}

void sub_21BBF50B0()
{
  v1 = *(v0[12] + 40);
  v0[16] = v1;
  if (v1)
  {
    v2 = v0[7];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = *(MEMORY[0x277D07FF8] + 4);
    v7 = (*MEMORY[0x277D07FF8] + MEMORY[0x277D07FF8]);

    v5 = swift_task_alloc();
    v0[17] = v5;
    *v5 = v0;
    v5[1] = sub_21BBF51C4;
    v6 = v0[7];

    v7(v0 + 2, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BBF51C4()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 144) = v0;

  sub_21BBDE578(v5);

  v7 = *(v2 + 120);
  v8 = *(v2 + 112);
  if (v0)
  {
    v9 = sub_21BBF541C;
  }

  else
  {
    v9 = sub_21BBF5340;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_21BBF5340()
{
  v1 = v0[13];

  v2 = v0[2];

  v3 = v0[10];
  v4 = v0[11];

  return MEMORY[0x2822009F8](sub_21BBF53AC, v3, v4);
}

uint64_t sub_21BBF53AC()
{
  v1 = v0[9];

  v3 = v0[6];
  v2 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_21BBF541C()
{
  v1 = v0[13];

  v2 = v0[10];
  v3 = v0[11];

  return MEMORY[0x2822009F8](sub_21BBF5480, v2, v3);
}

uint64_t sub_21BBF5480()
{
  v1 = v0[18];
  v2 = v0[9];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];

  sub_21BE261BC();
  v6 = v1;
  sub_21BC51D50(v1);

  (*(v4 + 8))(v3, v5);
  v8 = v0[6];
  v7 = v0[7];

  v9 = v0[1];

  return v9();
}

void sub_21BBF5564(void *a1)
{
  v1 = a1;
  sub_21BBF4C9C();
}

uint64_t type metadata accessor for IcloudPlusItemProvider()
{
  result = qword_27CDB66D8;
  if (!qword_27CDB66D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BBF55F8()
{
  sub_21BBF59A4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t sub_21BBF56A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6728, &qword_21BE35310);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_21BE32770;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  v5 = sub_21BE2599C();
  v24 = v6;
  v25 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21BE33260;
  v8 = *(v0 + qword_27CDD4190);
  v9 = MEMORY[0x277D83B88];
  v10 = MEMORY[0x277D83C10];
  *(v7 + 56) = MEMORY[0x277D83B88];
  *(v7 + 64) = v10;
  *(v7 + 32) = v8;
  v11 = *(v0 + qword_27CDD4188 + 24);
  v12 = *(v0 + qword_27CDD4188 + 32);
  __swift_project_boxed_opaque_existential_1Tm((v0 + qword_27CDD4188), v11);
  v13 = (*(v12 + 8))(v11, v12);
  if (v13)
  {
    v14 = sub_21BE2905C();

    if (v14 >> 62)
    {
      v13 = sub_21BE2951C();
    }

    else
    {
      v13 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  *(v7 + 96) = v9;
  *(v7 + 104) = v10;
  *(v7 + 72) = v13;

  v15 = [v3 bundleForClass_];
  sub_21BE2599C();

  v16 = sub_21BE289DC();
  v18 = v17;

  v19 = [v3 bundleForClass_];
  v20 = sub_21BE2599C();
  v22 = v21;

  *(v1 + 32) = 1;
  *(v1 + 40) = v25;
  *(v1 + 48) = v24;
  *(v1 + 56) = v16;
  *(v1 + 64) = v18;
  *(v1 + 72) = v20;
  *(v1 + 80) = v22;
  *(v1 + 88) = 7;
  return v1;
}

void sub_21BBF59A4()
{
  if (!qword_27CDB66E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB66F0, &qword_21BE35120);
    v0 = sub_21BE26CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB66E8);
    }
  }
}

uint64_t sub_21BBF5A20()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_21BE26CBC();
}

uint64_t sub_21BBF5A94()
{
  v1 = *(v0 + 56);
  sub_21BE29ACC();
  sub_21BE28ABC();
  sub_21BC5C62C(v1);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BBF5B20()
{
  v1 = *(v0 + 56);
  sub_21BE28ABC();
  sub_21BC5C62C(v1);
  sub_21BE28ABC();
}

uint64_t sub_21BBF5B9C()
{
  v1 = *(v0 + 56);
  sub_21BE29ACC();
  sub_21BE28ABC();
  sub_21BC5C62C(v1);
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BBF5C24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  v3 = sub_21BC5C62C(*(a1 + 56));
  v5 = v4;
  if (v3 == sub_21BC5C62C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21BE2995C();
  }

  return v8 & 1;
}

unint64_t sub_21BBF5CD8()
{
  result = qword_27CDB66F8;
  if (!qword_27CDB66F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB66F8);
  }

  return result;
}

unint64_t sub_21BBF5D2C(uint64_t a1)
{
  *(a1 + 8) = sub_21BBF5D5C();
  result = sub_21BBF5DB0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21BBF5D5C()
{
  result = qword_27CDB6700;
  if (!qword_27CDB6700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6700);
  }

  return result;
}

unint64_t sub_21BBF5DB0()
{
  result = qword_27CDB6708;
  if (!qword_27CDB6708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6708);
  }

  return result;
}

uint64_t sub_21BBF5E04@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = v1[2];
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 41);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_21BBF6224(v7, &v6);
}

uint64_t sub_21BBF5E50()
{
  v0 = sub_21BE26A4C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE261BC();
  v5 = sub_21BE26A2C();
  v6 = sub_21BE28FCC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21BB35000, v5, v6, "IcloudPlusDataItem providing a destination", v7, 2u);
    MEMORY[0x21CF05C50](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

unint64_t sub_21BBF5FA4(uint64_t a1)
{
  result = sub_21BBF5D5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21BBF5FE8(uint64_t a1)
{
  result = sub_21BBF6010();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21BBF6010()
{
  result = qword_27CDB6710;
  if (!qword_27CDB6710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6710);
  }

  return result;
}

uint64_t sub_21BBF6080(uint64_t a1)
{
  *(a1 + 8) = sub_21BBF60E8(&qword_27CDB6718);
  result = sub_21BBF60E8(&qword_27CDB6028);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BBF60E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IcloudPlusItemProvider();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BBF612C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v5;
  return result;
}

uint64_t sub_21BBF61AC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_21BE26CBC();
}

uint64_t sub_21BBF625C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BBF4ED4(a1, v4, v5, v6);
}

uint64_t sub_21BBF6310()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6728, &qword_21BE35310);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21BE32770;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  v4 = sub_21BE2599C();
  v6 = v5;

  v7 = [v2 bundleForClass_];
  v8 = sub_21BE2599C();
  v10 = v9;

  *(v0 + 32) = 0;
  *(v0 + 40) = v4;
  *(v0 + 48) = v6;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = v8;
  *(v0 + 80) = v10;
  *(v0 + 88) = 7;
  return v0;
}

uint64_t sub_21BBF6490(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6728, &qword_21BE35310);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21BE32770;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21BE32770;
  v4 = [a1 firstName];
  if (v4)
  {
    v5 = v4;
    v6 = sub_21BE28A0C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_21BBBEFE8();
  if (!v8)
  {
    v6 = sub_21BE2917C();
    v8 = v9;
  }

  *(v3 + 32) = v6;
  *(v3 + 40) = v8;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();

  v12 = [v11 bundleForClass_];
  sub_21BE2599C();

  v13 = sub_21BE289DC();
  v15 = v14;

  v16 = [v11 bundleForClass_];
  v17 = sub_21BE2599C();
  v19 = v18;

  *(v2 + 32) = 1;
  *(v2 + 40) = v13;
  *(v2 + 48) = v15;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = v17;
  *(v2 + 80) = v19;
  *(v2 + 88) = 7;
  return v2;
}

unint64_t sub_21BBF66F0()
{
  result = qword_27CDB6738;
  if (!qword_27CDB6738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6738);
  }

  return result;
}

unint64_t sub_21BBF6744()
{
  result = qword_27CDB6740;
  if (!qword_27CDB6740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6740);
  }

  return result;
}

uint64_t type metadata accessor for FamilyPrivacyDisclosureView()
{
  result = qword_27CDB6748;
  if (!qword_27CDB6748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BBF680C()
{
  sub_21BBDAF50();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_21BBF68A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BE2754C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for FamilyPrivacyDisclosureView();
  sub_21BBF7908(v1 + *(v12 + 20), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21BE27B0C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_21BE28FEC();
    v16 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_21BBF6A94@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FamilyPrivacyDisclosureView();
  v42 = *(v3 - 8);
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6758, &qword_21BE353B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v43 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6760, &unk_21BE353B8);
  v44 = *(v9 - 8);
  v10 = *(v44 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - v11;
  v13 = *v1;
  v14 = v1[1];
  v15 = sub_21BE289CC();
  v16 = [objc_opt_self() bundleWithIdentifier_];

  if (v16)
  {
    v41 = v6;
    v17 = [v16 privacyFlow];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 localizedButtonCaption];
      if (v19)
      {
        v40 = v5;
        v20 = v19;
        v39 = sub_21BE28A0C();

        v21 = [v18 localizedButtonTitle];
        if (v21)
        {
          v22 = v21;
          sub_21BE28A0C();
          v34 = v12;
          v38 = a1;

          sub_21BBF6F38(&v45);

          v36 = v46;
          v37 = v45;
          v35 = v47;
          v39 = v48;
          sub_21BBF7704(v1, &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
          v23 = (*(v42 + 80) + 16) & ~*(v42 + 80);
          v24 = swift_allocObject();
          sub_21BBF7768(&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
          v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6768, &qword_21BE353C8);
          v26 = sub_21BBF7828();
          v27 = v43;
          sub_21BE27F4C();

          sub_21BBC7C7C(v37, v36, v35);

          v45 = v25;
          v46 = v26;
          swift_getOpaqueTypeConformance2();
          v28 = v34;
          v29 = v40;
          sub_21BE2809C();

          (*(v41 + 8))(v27, v29);
          v30 = v38;
          sub_21BB47834(v28, v38);
          return (*(v44 + 56))(v30, 0, 1, v9);
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v32 = *(v44 + 56);

  return v32(a1, 1, 1, v9);
}

uint64_t sub_21BBF6F38@<X0>(uint64_t a1@<X8>)
{
  v1 = sub_21BE2766C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_21BB41FA4();

  v3 = sub_21BE27DBC();
  v5 = v4;
  v7 = v6;
  sub_21BE2833C();
  v8 = sub_21BE27D4C();
  v10 = v9;
  v12 = v11;

  sub_21BBC7C7C(v3, v5, v7 & 1);

  sub_21BE27CCC();
  v13 = sub_21BE27D9C();
  v37 = v14;
  v38 = v13;
  v35 = v15;

  sub_21BBC7C7C(v8, v10, v12 & 1);

  sub_21BE2765C();
  sub_21BE2764C();
  sub_21BE2763C();
  sub_21BE2764C();
  sub_21BE2768C();
  v16 = sub_21BE27DAC();
  v18 = v17;
  LOBYTE(v10) = v19;
  sub_21BE2827C();
  v20 = sub_21BE27D4C();
  v22 = v21;
  LOBYTE(v5) = v23;

  sub_21BBC7C7C(v16, v18, v10 & 1);

  sub_21BE27CCC();
  v24 = sub_21BE27D9C();
  v26 = v25;
  v28 = v27;

  sub_21BBC7C7C(v20, v22, v5 & 1);

  v29 = sub_21BE27D6C();
  v31 = v30;
  LOBYTE(v5) = v32;
  v36 = v33;
  sub_21BBC7C7C(v24, v26, v28 & 1);

  sub_21BBC7C7C(v38, v37, v35 & 1);

  *a1 = v29;
  *(a1 + 8) = v31;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v36;
  return result;
}

void sub_21BBF7234()
{
  v1 = type metadata accessor for FamilyPrivacyDisclosureView();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_21BE26A4C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21BE27B0C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v0;
  v16 = v0[1];
  v17 = sub_21BE289CC();
  v18 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (v18)
  {
    v19 = v18;
    v20 = sub_21BBF68A4(v14);
    MEMORY[0x28223BE20](v20);
    *(&v28 - 2) = v19;
    sub_21BE27AFC();
    (*(v11 + 8))(v14, v10);
    [v19 present];
  }

  else
  {
    sub_21BE2614C();
    sub_21BBF7704(v0, v4);
    v21 = sub_21BE26A2C();
    v22 = sub_21BE28FDC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136315138;
      v25 = *v4;
      v26 = v4[1];

      sub_21BBF78A4(v4);
      v27 = sub_21BB3D81C(v25, v26, &v29);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_21BB35000, v21, v22, "Failed to create privacyPresenter for %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x21CF05C50](v24, -1, -1);
      MEMORY[0x21CF05C50](v23, -1, -1);
    }

    else
    {

      sub_21BBF78A4(v4);
    }

    (*(v6 + 8))(v9, v5);
  }
}

id sub_21BBF7588(uint64_t a1, void *a2)
{
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    return [a2 setPresentingViewController_];
  }

  else
  {
    sub_21BE2614C();
    v10 = sub_21BE26A2C();
    v11 = sub_21BE28FDC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_21BB35000, v10, v11, "No view controller to show privacy disclosure", v12, 2u);
      MEMORY[0x21CF05C50](v12, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_21BBF7704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyPrivacyDisclosureView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BBF7768(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyPrivacyDisclosureView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21BBF77CC()
{
  v1 = *(type metadata accessor for FamilyPrivacyDisclosureView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_21BBF7234();
}

unint64_t sub_21BBF7828()
{
  result = qword_27CDB6770;
  if (!qword_27CDB6770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6768, &qword_21BE353C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6770);
  }

  return result;
}

uint64_t sub_21BBF78A4(uint64_t a1)
{
  v2 = type metadata accessor for FamilyPrivacyDisclosureView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BBF7908(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BBF7978()
{
  result = qword_27CDB6778;
  if (!qword_27CDB6778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6780, &qword_21BE353D0);
    sub_21BBF79FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6778);
  }

  return result;
}

unint64_t sub_21BBF79FC()
{
  result = qword_27CDB6788;
  if (!qword_27CDB6788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6760, &unk_21BE353B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6768, &qword_21BE353C8);
    sub_21BBF7828();
    swift_getOpaqueTypeConformance2();
    sub_21BBF7AC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6788);
  }

  return result;
}

unint64_t sub_21BBF7AC4()
{
  result = qword_27CDB6790;
  if (!qword_27CDB6790)
  {
    sub_21BE27AEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6790);
  }

  return result;
}

uint64_t sub_21BBF7B5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC700](a1, a2, WitnessTable, v5);
}

uint64_t sub_21BBF7BE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21BBF7B38(*v2, *(a1 + 16));
  *a2 = result;
  return result;
}

void (*sub_21BBF7C18(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v8 = *(a3 + 24);
  v7[4] = sub_21BBF7CEC(v7, *a2, *v3, *(a3 + 16));
  return sub_21BBF7CA4;
}

void sub_21BBF7CA4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_21BBF7CEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  v5 = *(a4 - 8);
  *a1 = a4;
  a1[1] = v5;
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v5 + 64));
  }

  a1[2] = v6;
  sub_21BE28CDC();
  return sub_21BBF7DC0;
}

void sub_21BBF7DC0(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_21BBF7E10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_21BBF7F08(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC6F8](a1, a2, WitnessTable, v5);
}

uint64_t sub_21BBF7F90(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x277D83BC8]);
}

uint64_t sub_21BBF8014(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_21BBF8070()
{
  swift_getWitnessTable();
  v1 = sub_21BBF8550();
  v2 = *v0;

  return v1;
}

unint64_t sub_21BBF8150()
{
  result = qword_27CDB67A8;
  if (!qword_27CDB67A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB67A8);
  }

  return result;
}

uint64_t sub_21BBF82C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB67A0, &qword_21BE4F050);
    sub_21BBF8150();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21BBF83A0()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_21BE2898C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(sub_21BE28FAC() + 36);
  result = sub_21BE2898C();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_21BBF846C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_21BE2898C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_21BBF8554()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21BBF85C4()
{
  swift_getKeyPath();
  sub_21BBFA054(&qword_27CDB6858, type metadata accessor for SharedCalendarItemModel);
  sub_21BE25F1C();

  return *(v0 + 16);
}

uint64_t sub_21BBF8664(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BBFA054(&qword_27CDB6858, type metadata accessor for SharedCalendarItemModel);
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BBF877C()
{
  swift_getKeyPath();
  sub_21BBFA054(&qword_27CDB6858, type metadata accessor for SharedCalendarItemModel);
  sub_21BE25F1C();

  return *(v0 + 17);
}

uint64_t sub_21BBF881C(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BBFA054(&qword_27CDB6858, type metadata accessor for SharedCalendarItemModel);
    sub_21BE25F0C();
  }

  return result;
}

uint64_t sub_21BBF8934(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = sub_21BE26A4C();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  sub_21BE28D7C();
  v2[7] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v2[8] = v7;
  v2[9] = v6;

  return MEMORY[0x2822009F8](sub_21BBF8A34, v7, v6);
}

uint64_t sub_21BBF8A34()
{
  v17 = v0;
  v1 = v0[6];
  sub_21BE261BC();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_21BB3D81C(0xD000000000000021, 0x800000021BE578A0, &v16);
    _os_log_impl(&dword_21BB35000, v2, v3, "%s Turning on iCloud Calendars sync", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x21CF05C50](v9, -1, -1);
    MEMORY[0x21CF05C50](v8, -1, -1);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v0[10] = v10;
  v11 = *(v0[2] + 32);
  v12 = *MEMORY[0x277CB8958];
  v13 = *(MEMORY[0x277D08088] + 4);
  v14 = swift_task_alloc();
  v0[11] = v14;
  *v14 = v0;
  v14[1] = sub_21BBF8BE8;

  return MEMORY[0x28215E638](v12);
}

uint64_t sub_21BBF8BE8()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_21BBF90BC;
  }

  else
  {
    v7 = sub_21BBF8D24;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21BBF8D24()
{
  v17 = v0;
  v1 = v0[5];
  sub_21BE261BC();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[10];
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[3];
  if (v4)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_21BB3D81C(0xD000000000000021, 0x800000021BE578A0, &v16);
    _os_log_impl(&dword_21BB35000, v2, v3, "%s iCloud Calendars sync is now enabled", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x21CF05C50](v10, -1, -1);
    MEMORY[0x21CF05C50](v9, -1, -1);
  }

  v5(v6, v8);
  v11 = v0[2];
  v12 = *(MEMORY[0x277D08048] + 4);

  v13 = swift_task_alloc();
  v0[13] = v13;
  *v13 = v0;
  v13[1] = sub_21BBF8F28;
  v14 = v0[2];
  v19 = MEMORY[0x277D839B0];

  return MEMORY[0x28215E468](v0 + 15, 5, 1000000000000000000, 0, 0x8AC7230489E80000, 0, &unk_21BE35710, v14);
}

uint64_t sub_21BBF8F28()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_21BBF9130;
  }

  else
  {
    v7 = v2[2];

    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_21BBF9044;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_21BBF9044()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_21BBF90BC()
{
  v1 = v0[7];

  v2 = v0[12];
  v4 = v0[5];
  v3 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BBF9130()
{
  v1 = v0[7];
  v2 = v0[2];

  v3 = v0[14];
  v5 = v0[5];
  v4 = v0[6];

  v6 = v0[1];

  return v6();
}

uint64_t sub_21BBF91B0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_21BE28D7C();
  v2[4] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BBF9248, v4, v3);
}

uint64_t sub_21BBF9248()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = [*(v2 + 24) primaryAppleAccountSource];
  if (v3)
  {
    v4 = v0[2];

    *v4 = 1;
  }

  else
  {
    sub_21BE2637C();
    sub_21BBFA054(&qword_27CDB6868, MEMORY[0x277D08018]);
    swift_allocError();
    sub_21BE2636C();
    swift_willThrow();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BBF9350()
{
  v1[4] = v0;
  v2 = sub_21BE26A4C();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v6 = sub_21BE25D6C();
  v1[9] = v6;
  v7 = *(v6 - 8);
  v1[10] = v7;
  v8 = *(v7 + 64) + 15;
  v1[11] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BBF94DC, 0, 0);
}

uint64_t sub_21BBF94DC()
{
  v1 = v0[4];
  if (*(v1 + 16) == 1)
  {
    *(v1 + 16) = 1;
  }

  else
  {
    swift_getKeyPath();
    v2 = swift_task_alloc();
    *(v2 + 16) = v1;
    *(v2 + 24) = 1;
    v0[2] = v1;
    sub_21BBFA054(&qword_27CDB6858, type metadata accessor for SharedCalendarItemModel);
    sub_21BE25F0C();
  }

  sub_21BE28D7C();
  v0[13] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BBF9650, v4, v3);
}

uint64_t sub_21BBF9650()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 72);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);

  (*(v7 + 56))(v2, 1, 1, v6);

  sub_21BE25D5C();
  sub_21BE25D2C();
  (*(v4 + 8))(v3, v5);
  *(v0 + 136) = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6860, &qword_21BE35700);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v0 + 112) = sub_21BE262AC();

  return MEMORY[0x2822009F8](sub_21BBF97AC, 0, 0);
}

uint64_t sub_21BBF97AC()
{
  v1 = v0[8];
  v2 = sub_21BE28DAC();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(MEMORY[0x277D07FD0] + 4);
  v8 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_21BBF9898;
  v5 = v0[14];
  v6 = v0[8];

  return v8();
}

uint64_t sub_21BBF9898()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 112);
  sub_21BBDE578(*(v2 + 64));

  if (v0)
  {
    v6 = sub_21BBF9B44;
  }

  else
  {
    v6 = sub_21BBF99E8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_21BBF99E8()
{
  v1 = v0[4];
  if (*(v1 + 16))
  {
    v2 = v0[16];
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v1;
    *(v3 + 24) = 0;
    v0[3] = v1;
    sub_21BBFA054(&qword_27CDB6858, type metadata accessor for SharedCalendarItemModel);
    sub_21BE25F0C();
  }

  else
  {
    *(v1 + 16) = 0;
  }

  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[7];
  v6 = v0[8];

  v8 = v0[1];

  return v8();
}

uint64_t sub_21BBF9B44()
{
  v1 = v0[16];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_21BE261BC();
  v5 = v1;
  sub_21BE295EC();
  MEMORY[0x21CF03CA0](0xD000000000000012, 0x800000021BE57830);
  MEMORY[0x21CF03CA0](0xD000000000000046, 0x800000021BE57850);
  sub_21BC51D50(v1);

  (*(v3 + 8))(v2, v4);
  v6 = v0[4];
  if (*(v6 + 16))
  {
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    v0[3] = v6;
    sub_21BBFA054(&qword_27CDB6858, type metadata accessor for SharedCalendarItemModel);
    sub_21BE25F0C();
  }

  else
  {
    *(v6 + 16) = 0;
  }

  v9 = v0[11];
  v8 = v0[12];
  v11 = v0[7];
  v10 = v0[8];

  v12 = v0[1];

  return v12();
}

uint64_t sub_21BBF9D60()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI23SharedCalendarItemModel___observationRegistrar;
  v2 = sub_21BE25F5C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SharedCalendarItemModel()
{
  result = qword_27CDB6848;
  if (!qword_27CDB6848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BBF9E60()
{
  result = sub_21BE25F5C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21BBF9F1C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BBF8934(a1, v1);
}

uint64_t sub_21BBF9FB8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBA6A64;

  return sub_21BBF91B0(a1, v1);
}

uint64_t sub_21BBFA054(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BBFA0C4(uint64_t a1)
{
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_21BBA3854(v1 + 192, &v19, &qword_27CDB6870, &qword_21BE357D8);
  if (v20)
  {
    sub_21BB3D104(&v19, v21);
    v8 = v22;
    v9 = v23;
    __swift_project_boxed_opaque_existential_1Tm(v21, v22);
    swift_beginAccess();
    v10 = *(v1 + 56);
    v11 = *(v9 + 8);

    v12 = v11(a1, v10, v8, v9);

    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    return v12;
  }

  else
  {
    sub_21BB3A4CC(&v19, &qword_27CDB6870, &qword_21BE357D8);
    sub_21BE2619C();
    v14 = sub_21BE26A2C();
    v15 = sub_21BE28FDC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_21BB3D81C(0x7449646574726F73, 0xEF293A5F28736D65, v21);
      _os_log_impl(&dword_21BB35000, v14, v15, "%s Impossible, no sorter!", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x21CF05C50](v17, -1, -1);
      MEMORY[0x21CF05C50](v16, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    return sub_21BE2975C();
  }
}

BOOL sub_21BBFA348(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E75;
    switch(*v4)
    {
      case 1:
        v9 = 0x696D694C6D6D6F63;
        v8 = 0xEE006D6574497374;
        break;
      case 2:
        v9 = 0xD000000000000013;
        v8 = 0x800000021BE543D0;
        break;
      case 3:
        v9 = 0xD000000000000014;
        v8 = 0x800000021BE543F0;
        break;
      case 4:
        v9 = 0x6E6F697461636F6CLL;
        v8 = 0xEC0000006D657449;
        break;
      case 5:
        v9 = 0xD000000000000013;
        v8 = 0x800000021BE54420;
        break;
      case 6:
        v9 = 0x69636966656E6562;
        v8 = 0xEF6D657449797261;
        break;
      case 7:
        v8 = 0xEE006D6574497375;
        v9 = 0x6C5064756F6C4369;
        break;
      case 8:
        v8 = 0xE800000000000000;
        v9 = 0x6D657449656D6F68;
        break;
      case 9:
        v9 = 0xD000000000000013;
        v8 = 0x800000021BE54460;
        break;
      case 0xA:
        v9 = 0x736143656C707061;
        v8 = 0xED00006D65744968;
        break;
      case 0xB:
        v9 = 0x49746361746E6F63;
        v8 = 0xEB000000006D6574;
        break;
      case 0xC:
        v9 = 0xD000000000000012;
        v8 = 0x800000021BE54490;
        break;
      case 0xD:
        v9 = 0xD000000000000015;
        v8 = 0x800000021BE544B0;
        break;
      case 0xE:
        v9 = 0xD000000000000018;
        v8 = 0x800000021BE544D0;
        break;
      case 0xF:
        v9 = 0xD000000000000012;
        v8 = 0x800000021BE544F0;
        break;
      default:
        break;
    }

    v10 = 0xE700000000000000;
    v11 = 0x6E776F6E6B6E75;
    switch(a1)
    {
      case 1:
        v10 = 0xEE006D6574497374;
        if (v9 == 0x696D694C6D6D6F63)
        {
          goto LABEL_50;
        }

        goto LABEL_2;
      case 2:
        v10 = 0x800000021BE543D0;
        if (v9 != 0xD000000000000013)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 3:
        v10 = 0x800000021BE543F0;
        if (v9 != 0xD000000000000014)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 4:
        v10 = 0xEC0000006D657449;
        if (v9 != 0x6E6F697461636F6CLL)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 5:
        v10 = 0x800000021BE54420;
        if (v9 != 0xD000000000000013)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 6:
        v10 = 0xEF6D657449797261;
        if (v9 != 0x69636966656E6562)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 7:
        v10 = 0xEE006D6574497375;
        if (v9 != 0x6C5064756F6C4369)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 8:
        v10 = 0xE800000000000000;
        if (v9 != 0x6D657449656D6F68)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 9:
        v10 = 0x800000021BE54460;
        if (v9 != 0xD000000000000013)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 10:
        v11 = 0x736143656C707061;
        v10 = 0xED00006D65744968;
        goto LABEL_49;
      case 11:
        v10 = 0xEB000000006D6574;
        if (v9 != 0x49746361746E6F63)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 12:
        v10 = 0x800000021BE54490;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 13:
        v10 = 0x800000021BE544B0;
        if (v9 != 0xD000000000000015)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 14:
        v10 = 0x800000021BE544D0;
        if (v9 != 0xD000000000000018)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 15:
        v10 = 0x800000021BE544F0;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      default:
LABEL_49:
        if (v9 != v11)
        {
          goto LABEL_2;
        }

LABEL_50:
        if (v8 != v10)
        {
LABEL_2:
          v5 = sub_21BE2995C();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

uint64_t sub_21BBFA818()
{
  type metadata accessor for ChecklistScoringEngine();
  swift_allocObject();
  result = sub_21BBFBA94();
  qword_280BDCB50 = result;
  return result;
}

uint64_t sub_21BBFA854()
{
  swift_beginAccess();
  v1 = v0[7];
  v2 = MEMORY[0x277D84F98];
  v0[7] = MEMORY[0x277D84F98];

  swift_beginAccess();
  v3 = v0[6];
  v0[6] = v2;

  swift_beginAccess();
  v4 = v0[5];
  v0[5] = MEMORY[0x277D84FA0];

  v5 = v0[22];
  v0[22] = v2;
}

uint64_t sub_21BBFA8F4(void *a1)
{
  v3 = sub_21BE25FCC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  sub_21BD24044(a1, v15[3], v15);

  (*(v4 + 104))(v7, *MEMORY[0x277D07F38], v3);
  LOBYTE(v8) = MEMORY[0x21CF01150](v7);
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    sub_21BD72C54();
    v9 = &off_282D943C0;
    v10 = &type metadata for ChecklistItemSorter;
  }

  else
  {
    v14[0] = sub_21BD72D88();
    v14[1] = v11;
    v9 = &off_282D943D8;
    v10 = &type metadata for LegacyChecklistSorter;
  }

  v14[3] = v10;
  v14[4] = v9;
  sub_21BBFAAC4(a1, v15, v14);
  sub_21BBFD7AC(v15);
  return __swift_destroy_boxed_opaque_existential_0Tm(v14);
}

uint64_t sub_21BBFAAC4(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v136 = sub_21BE26A4C();
  v135 = *(v136 - 8);
  v8 = *(v135 + 64);
  v9 = MEMORY[0x28223BE20](v136);
  v11 = &v130[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v133 = &v130[-v13];
  v14 = MEMORY[0x28223BE20](v12);
  v132 = &v130[-v15];
  MEMORY[0x28223BE20](v14);
  v17 = &v130[-v16];
  v18 = [a1 me];
  if (!v18)
  {
    sub_21BE2619C();
    v64 = sub_21BE26A2C();
    v65 = sub_21BE28FFC();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_21BB35000, v64, v65, "no me, can't compute scores", v66, 2u);
      MEMORY[0x21CF05C50](v66, -1, -1);
    }

    return (*(v135 + 8))(v11, v136);
  }

  v134 = v18;
  v131 = [v18 isOrganizer];
  sub_21BBFA854();
  v19 = v4[22];
  v4[22] = a2[2];

  sub_21BBFD750(a2, v148);
  swift_beginAccess();
  sub_21BBFD920(v148, (v4 + 8), &qword_27CDB6878, &unk_21BE357E0);
  swift_endAccess();
  sub_21BB3A35C(a3, v148);
  swift_beginAccess();
  sub_21BBFD920(v148, (v4 + 24), &qword_27CDB6870, &qword_21BE357D8);
  swift_endAccess();
  v141 = a2[4];
  v140 = *(v141 + 16);
  if (!v140)
  {
LABEL_32:
    v59 = a2[1];
    if ([v134 isParent])
    {
      goto LABEL_45;
    }

    if (*(v59 + 16) && (v60 = sub_21BBB32FC(3u), (v61 & 1) != 0))
    {
      v62 = *(*(v59 + 56) + 8 * v60);

      v63 = *(v62 + 16);
      if (!v63)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v62 = MEMORY[0x277D84F90];
      v63 = *(MEMORY[0x277D84F90] + 16);
      if (!v63)
      {
LABEL_44:

LABEL_45:
        if (v131)
        {
          goto LABEL_55;
        }

        if (*(v59 + 16) && (v72 = sub_21BBB32FC(0), (v73 & 1) != 0))
        {
          v74 = *(*(v59 + 56) + 8 * v72);

          v75 = *(v74 + 16);
          if (!v75)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v74 = MEMORY[0x277D84F90];
          v75 = *(MEMORY[0x277D84F90] + 16);
          if (!v75)
          {
LABEL_54:

LABEL_55:
            v80 = [v134 isChildAccount];
            v81 = *(v59 + 16);
            if (v80)
            {
              if (v81)
              {
                v82 = sub_21BBB32FC(1u);
                if (v83)
                {
                  v84 = *(*(v59 + 56) + 8 * v82);

                  v85 = *(v84 + 16);
                  if (!v85)
                  {
                    goto LABEL_72;
                  }

                  goto LABEL_65;
                }
              }

              v84 = MEMORY[0x277D84F90];
              v85 = *(MEMORY[0x277D84F90] + 16);
              if (v85)
              {
LABEL_65:
                swift_beginAccess();
                v90 = v4[5];
                v91 = 32;
                do
                {
                  v92 = *(v84 + v91);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v147 = v4[5];
                  v4[5] = 0x8000000000000000;
                  sub_21BBFC7B4(v92, isUniquelyReferenced_nonNull_native);
                  v4[5] = v147;
                  ++v91;
                  --v85;
                }

                while (v85);
LABEL_71:
                swift_endAccess();
              }

LABEL_72:

              sub_21BE2619C();

              v98 = sub_21BE26A2C();
              v99 = sub_21BE28FCC();

              if (os_log_type_enabled(v98, v99))
              {
                v100 = swift_slowAlloc();
                v101 = swift_slowAlloc();
                v148[0] = v101;
                *v100 = 136315394;
                *(v100 + 4) = sub_21BB3D81C(0xD00000000000001FLL, 0x800000021BE57A20, v148);
                *(v100 + 12) = 2080;
                swift_beginAccess();
                v102 = v4[5];
                sub_21BBFD988();

                v103 = sub_21BE28E5C();
                v104 = v17;
                v106 = v105;

                v107 = sub_21BB3D81C(v103, v106, v148);

                *(v100 + 14) = v107;
                _os_log_impl(&dword_21BB35000, v98, v99, "%s hiddenItems %s", v100, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x21CF05C50](v101, -1, -1);
                MEMORY[0x21CF05C50](v100, -1, -1);

                v108 = v4;
                v109 = *(v135 + 8);
                v109(v104, v136);
              }

              else
              {

                v108 = v4;
                v109 = *(v135 + 8);
                v109(v17, v136);
              }

              v110 = v132;
              sub_21BE2619C();

              v111 = sub_21BE26A2C();
              v112 = sub_21BE28FCC();

              if (os_log_type_enabled(v111, v112))
              {
                v113 = swift_slowAlloc();
                v114 = swift_slowAlloc();
                v148[0] = v114;
                *v113 = 136315394;
                *(v113 + 4) = sub_21BB3D81C(0xD00000000000001FLL, 0x800000021BE57A20, v148);
                *(v113 + 12) = 2080;
                swift_beginAccess();
                v115 = v108[6];
                sub_21BBFD9DC();

                v116 = sub_21BE2891C();
                v118 = v117;

                v119 = sub_21BB3D81C(v116, v118, v148);

                *(v113 + 14) = v119;
                _os_log_impl(&dword_21BB35000, v111, v112, "%s categoryOrder %s", v113, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x21CF05C50](v114, -1, -1);
                MEMORY[0x21CF05C50](v113, -1, -1);
              }

              v109(v110, v136);
              v120 = v133;
              sub_21BE2619C();

              v121 = sub_21BE26A2C();
              v122 = sub_21BE28FCC();

              if (os_log_type_enabled(v121, v122))
              {
                v123 = swift_slowAlloc();
                v124 = swift_slowAlloc();
                v146 = v124;
                *v123 = 136315394;
                *(v123 + 4) = sub_21BB3D81C(0xD00000000000001FLL, 0x800000021BE57A20, &v146);
                *(v123 + 12) = 2080;
                swift_beginAccess();
                v125 = v108[7];
                sub_21BBFD988();

                v126 = sub_21BE2891C();
                v128 = v127;

                v129 = sub_21BB3D81C(v126, v128, &v146);

                *(v123 + 14) = v129;
                _os_log_impl(&dword_21BB35000, v121, v122, "%s itemOrder %s", v123, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x21CF05C50](v124, -1, -1);
                MEMORY[0x21CF05C50](v123, -1, -1);
              }

              return (v109)(v120, v136);
            }

            if (v81 && (v86 = sub_21BBB32FC(2u), (v87 & 1) != 0))
            {
              v88 = *(*(v59 + 56) + 8 * v86);

              v89 = *(v88 + 16);
              if (!v89)
              {
                goto LABEL_72;
              }
            }

            else
            {
              v88 = MEMORY[0x277D84F90];
              v89 = *(MEMORY[0x277D84F90] + 16);
              if (!v89)
              {
                goto LABEL_72;
              }
            }

            swift_beginAccess();
            v94 = v4[5];
            v95 = 32;
            do
            {
              v96 = *(v88 + v95);
              v97 = swift_isUniquelyReferenced_nonNull_native();
              v147 = v4[5];
              v4[5] = 0x8000000000000000;
              sub_21BBFC7B4(v96, v97);
              v4[5] = v147;
              ++v95;
              --v89;
            }

            while (v89);
            goto LABEL_71;
          }
        }

        v76 = (v74 + 32);
        swift_beginAccess();
        v77 = v4[5];
        do
        {
          v78 = *v76++;
          v79 = swift_isUniquelyReferenced_nonNull_native();
          v147 = v4[5];
          v4[5] = 0x8000000000000000;
          sub_21BBFC7B4(v78, v79);
          v4[5] = v147;
          --v75;
        }

        while (v75);
        swift_endAccess();
        goto LABEL_54;
      }
    }

    v68 = (v62 + 32);
    swift_beginAccess();
    v69 = v4[5];
    do
    {
      v70 = *v68++;
      v71 = swift_isUniquelyReferenced_nonNull_native();
      v147 = v4[5];
      v4[5] = 0x8000000000000000;
      sub_21BBFC7B4(v70, v71);
      v4[5] = v147;
      --v63;
    }

    while (v63);
    swift_endAccess();
    goto LABEL_44;
  }

  v20 = 0;
  v139 = v141 + 32;
  v138 = v17;
  v137 = a2;
  while (v20 < *(v141 + 16))
  {
    v21 = (v139 + 48 * v20);
    v22 = v21[1];
    if (v22)
    {
      v143 = v20;
      v23 = v21[2];
      v24 = v21[3];
      v25 = v21[4];
      v26 = *(v21 + 40);
      v27 = *v21;

      v142 = v22;
      v28 = sub_21BE2980C();
      if (v28 >= 7)
      {
      }

      else
      {
        v29 = v28;
        swift_beginAccess();
        v30 = v4[6];
        v31 = swift_isUniquelyReferenced_nonNull_native();
        v147 = v4[6];
        v4[6] = 0x8000000000000000;
        sub_21BC7FCB8(v23, v29, v31);
        v4[6] = v147;
        swift_endAccess();
        if (v26)
        {
          v32 = -1;
        }

        else
        {
          v32 = v25;
        }

        swift_beginAccess();
        v33 = v4[23];
        v34 = swift_isUniquelyReferenced_nonNull_native();
        v147 = v4[23];
        v4[23] = 0x8000000000000000;
        sub_21BC7FCB8(v32, v29, v34);
        v4[23] = v147;
        swift_endAccess();
        v35 = *(v24 + 16);

        if (v35)
        {
          v36 = 0;
          v37 = (v24 + 48);
          v144 = v35;
          while (v36 < *(v24 + 16))
          {
            if (*(v37 - 1))
            {
              v38 = *v37;
              v39 = *(v37 - 2);
              v40 = *(v37 - 1);
              swift_bridgeObjectRetain_n();
              v41 = sub_21BE2980C();

              if (v41 < 0x10)
              {
                v145 = v38;
                v42 = v24;
                swift_beginAccess();
                v43 = v4[7];
                v44 = swift_isUniquelyReferenced_nonNull_native();
                v147 = v4[7];
                v45 = v147;
                v46 = v4;
                v4[7] = 0x8000000000000000;
                v48 = sub_21BBB3274(v41);
                v49 = v45[2];
                v50 = (v47 & 1) == 0;
                v51 = v49 + v50;
                if (__OFADD__(v49, v50))
                {
                  goto LABEL_81;
                }

                v52 = v47;
                if (v45[3] >= v51)
                {
                  if ((v44 & 1) == 0)
                  {
                    sub_21BC812DC();
                  }
                }

                else
                {
                  sub_21BC7CADC(v51, v44);
                  v53 = sub_21BBB3274(v41);
                  if ((v52 & 1) != (v54 & 1))
                  {
                    goto LABEL_84;
                  }

                  v48 = v53;
                }

                v24 = v42;
                v55 = v147;
                if (v52)
                {
                  *(v147[7] + 8 * v48) = v145;
                }

                else
                {
                  v147[(v48 >> 6) + 8] |= 1 << v48;
                  *(v55[6] + v48) = v41;
                  *(v55[7] + 8 * v48) = v145;
                  v56 = v55[2];
                  v57 = __OFADD__(v56, 1);
                  v58 = v56 + 1;
                  if (v57)
                  {
                    goto LABEL_83;
                  }

                  v55[2] = v58;
                }

                v4 = v46;
                v46[7] = v55;
                swift_endAccess();
                v35 = v144;
              }
            }

            ++v36;
            v37 += 3;
            if (v35 == v36)
            {
              goto LABEL_31;
            }
          }

          __break(1u);
LABEL_81:
          __break(1u);
          break;
        }

LABEL_31:
        swift_bridgeObjectRelease_n();
        v17 = v138;
        a2 = v137;
      }

      v20 = v143;
    }

    if (++v20 == v140)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  result = sub_21BE299FC();
  __break(1u);
  return result;
}

uint64_t sub_21BBFB8D0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a3 + 48) + (__clz(__rbit64(v9)) | (v13 << 6)));
      result = a1(&v14);
      if (v3)
      {
      }

      v9 &= v9 - 1;
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21BBFB9C4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 72); ; i += 48)
    {
      v7 = *i;
      v9 = *(i - 2);
      v8 = *(i - 1);
      v10 = *(i - 5);
      v11 = *(i - 2);
      v12 = v9;
      v13 = v8;
      v14 = v7;

      v5(&v10);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_21BBFBA94()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  if (qword_280BD6CD0 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = qword_280BDCB48;
  *(v0 + 24) = xmmword_21BE35740;
  v5 = MEMORY[0x277D84FA0];
  *(v0 + 40) = MEMORY[0x277D84FA0];

  v6 = MEMORY[0x277D84F90];
  *(v0 + 48) = sub_21BBB6190(MEMORY[0x277D84F90]);
  *(v0 + 56) = sub_21BBB61B8(v6);
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = sub_21BBB62CC(v6);
  *(v0 + 184) = sub_21BBB6190(v6);
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0;
  if (v6 >> 62 && sub_21BE2951C())
  {
    v5 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  *(v0 + 232) = v5;
  v7 = sub_21BE28DAC();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v0;

  sub_21BBA932C(0, 0, v4, &unk_21BE357F8, v8);

  return v0;
}

uint64_t sub_21BBFBCA0()
{
  sub_21BE28D7C();
  *(v0 + 24) = sub_21BE28D6C();
  v2 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BBFBD34, v2, v1);
}

uint64_t sub_21BBFBD34()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_21BBFBD98();
  v3 = v0[1];

  return v3();
}

uint64_t sub_21BBFBD98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6880, &qword_21BE35800);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - v4;
  v6 = *(v0 + 16);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6888, &qword_21BE35808);
  sub_21BE26C7C();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_21BBFD8BC();
  sub_21BE26D1C();

  (*(v2 + 8))(v5, v1);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();
}

uint64_t sub_21BBFBF38(uint64_t *a1, uint64_t a2)
{
  v29 = a2;
  v27 = sub_21BE26A4C();
  v26 = *(v27 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v27);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21BE25FCC();
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v14 = v31[0];
  if (v31[0])
  {
    sub_21BD24044(v31[0], v13, v31);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v15 = v28;
      (*(v28 + 104))(v9, *MEMORY[0x277D07F38], v6);
      v16 = MEMORY[0x21CF01150](v9);
      (*(v15 + 8))(v9, v6);
      if (v16)
      {
        sub_21BD72C54();
        v17 = &off_282D943C0;
        v18 = &type metadata for ChecklistItemSorter;
      }

      else
      {
        v30[0] = sub_21BD72D88();
        v30[1] = v24;
        v17 = &off_282D943D8;
        v18 = &type metadata for LegacyChecklistSorter;
      }

      v30[3] = v18;
      v30[4] = v17;
      sub_21BBFAAC4(v14, v31, v30);

      sub_21BBFD7AC(v31);
      return __swift_destroy_boxed_opaque_existential_0Tm(v30);
    }

    else
    {

      return sub_21BBFD7AC(v31);
    }
  }

  else
  {
    sub_21BE261BC();
    v19 = sub_21BE26A2C();
    v20 = sub_21BE28FFC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_21BB3D81C(0xD000000000000019, 0x800000021BE57A00, v31);
      _os_log_impl(&dword_21BB35000, v19, v20, "%s unable to get family circle from store", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x21CF05C50](v22, -1, -1);
      MEMORY[0x21CF05C50](v21, -1, -1);
    }

    return (*(v26 + 8))(v5, v27);
  }
}

uint64_t sub_21BBFC31C(unsigned __int8 *a1, uint64_t a2, void *a3, unsigned __int8 *a4)
{
  v6 = *a1;
  if (*(a2 + 16) && (v8 = sub_21BBB3230(*a1), (v9 & 1) != 0))
  {
    v10 = *(*(a2 + 56) + 8 * v8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v11 = a3[3];
  v12 = a3[4];
  __swift_project_boxed_opaque_existential_1Tm(a3, v11);
  v13 = (*(v12 + 32))(v11, v12);
  v14 = sub_21BBFA348(v13, v10);

  if (v14)
  {
    *a4 = v6;
  }

  return result;
}

void *sub_21BBFC3E4()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  sub_21BB3A4CC((v0 + 8), &qword_27CDB6878, &unk_21BE357E0);
  v5 = v0[22];

  v6 = v0[23];

  sub_21BB3A4CC((v0 + 24), &qword_27CDB6870, &qword_21BE357D8);
  v7 = v0[29];

  return v0;
}

uint64_t sub_21BBFC464()
{
  sub_21BBFC3E4();

  return swift_deallocClassInstance();
}

uint64_t sub_21BBFC4BC(uint64_t a1)
{
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_21BBA3854(v1 + 192, &v25, &qword_27CDB6870, &qword_21BE357D8);
  if (v26)
  {
    sub_21BB3D104(&v25, v27);
    v8 = v28;
    v9 = v29;
    __swift_project_boxed_opaque_existential_1Tm(v27, v28);
    swift_beginAccess();
    v10 = *(v1 + 48);
    v11 = *(v9 + 16);

    v12 = v11(a1, v10, v8, v9);

    __swift_destroy_boxed_opaque_existential_0Tm(v27);
  }

  else
  {
    sub_21BB3A4CC(&v25, &qword_27CDB6870, &qword_21BE357D8);
    sub_21BE2619C();
    v14 = sub_21BE26A2C();
    v15 = sub_21BE28FDC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_21BB3D81C(0xD000000000000010, 0x800000021BE579C0, v27);
      _os_log_impl(&dword_21BB35000, v14, v15, "%s Impossible, no sorter!", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x21CF05C50](v17, -1, -1);
      MEMORY[0x21CF05C50](v16, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    v18 = *(a1 + 16);
    v12 = MEMORY[0x277D84F90];
    if (v18)
    {
      v27[0] = MEMORY[0x277D84F90];
      sub_21BC599FC(0, v18, 0);
      v12 = v27[0];
      v19 = (a1 + 56);
      v20 = *(v27[0] + 16);
      do
      {
        v22 = *v19;
        v19 += 32;
        v21 = v22;
        v27[0] = v12;
        v23 = *(v12 + 24);
        if (v20 >= v23 >> 1)
        {
          sub_21BC599FC((v23 > 1), v20 + 1, 1);
          v12 = v27[0];
        }

        *(v12 + 16) = v20 + 1;
        *(v12 + v20++ + 32) = v21;
        --v18;
      }

      while (v18);
    }
  }

  return v12;
}

uint64_t sub_21BBFC7B4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_21BE29ACC();
  sub_21BC5C62C(a1);
  sub_21BE28ABC();

  v8 = sub_21BE29B0C();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  v37 = v2;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    v17 = 0;
    v12 = 1;
    goto LABEL_58;
  }

  v36 = a2;
  v11 = ~v9;
  v12 = 1;
  while (2)
  {
    v13 = 0xE700000000000000;
    v14 = 0x6E776F6E6B6E75;
    switch(*(*(v6 + 48) + v10))
    {
      case 1:
        v14 = 0x696D694C6D6D6F63;
        v13 = 0xEE006D6574497374;
        break;
      case 2:
        v14 = 0xD000000000000013;
        v13 = 0x800000021BE543D0;
        break;
      case 3:
        v14 = 0xD000000000000014;
        v13 = 0x800000021BE543F0;
        break;
      case 4:
        v14 = 0x6E6F697461636F6CLL;
        v13 = 0xEC0000006D657449;
        break;
      case 5:
        v14 = 0xD000000000000013;
        v13 = 0x800000021BE54420;
        break;
      case 6:
        v14 = 0x69636966656E6562;
        v13 = 0xEF6D657449797261;
        break;
      case 7:
        v13 = 0xEE006D6574497375;
        v14 = 0x6C5064756F6C4369;
        break;
      case 8:
        v13 = 0xE800000000000000;
        v14 = 0x6D657449656D6F68;
        break;
      case 9:
        v14 = 0xD000000000000013;
        v13 = 0x800000021BE54460;
        break;
      case 0xA:
        v14 = 0x736143656C707061;
        v13 = 0xED00006D65744968;
        break;
      case 0xB:
        v14 = 0x49746361746E6F63;
        v13 = 0xEB000000006D6574;
        break;
      case 0xC:
        v14 = 0xD000000000000012;
        v13 = 0x800000021BE54490;
        break;
      case 0xD:
        v14 = 0xD000000000000015;
        v13 = 0x800000021BE544B0;
        break;
      case 0xE:
        v14 = 0xD000000000000018;
        v13 = 0x800000021BE544D0;
        break;
      case 0xF:
        v14 = 0xD000000000000012;
        v13 = 0x800000021BE544F0;
        break;
      default:
        break;
    }

    v15 = 0xE700000000000000;
    v16 = 0x6E776F6E6B6E75;
    switch(a1)
    {
      case 1:
        v15 = 0xEE006D6574497374;
        if (v14 == 0x696D694C6D6D6F63)
        {
          goto LABEL_48;
        }

        goto LABEL_49;
      case 2:
        v15 = 0x800000021BE543D0;
        if (v14 != 0xD000000000000013)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 3:
        v15 = 0x800000021BE543F0;
        if (v14 != 0xD000000000000014)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 4:
        v15 = 0xEC0000006D657449;
        if (v14 != 0x6E6F697461636F6CLL)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 5:
        v15 = 0x800000021BE54420;
        if (v14 != 0xD000000000000013)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 6:
        v15 = 0xEF6D657449797261;
        if (v14 != 0x69636966656E6562)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 7:
        v15 = 0xEE006D6574497375;
        if (v14 != 0x6C5064756F6C4369)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 8:
        v15 = 0xE800000000000000;
        if (v14 != 0x6D657449656D6F68)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 9:
        v15 = 0x800000021BE54460;
        if (v14 != 0xD000000000000013)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 10:
        v16 = 0x736143656C707061;
        v15 = 0xED00006D65744968;
        goto LABEL_47;
      case 11:
        v15 = 0xEB000000006D6574;
        if (v14 != 0x49746361746E6F63)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 12:
        v15 = 0x800000021BE54490;
        if (v14 != 0xD000000000000012)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 13:
        v15 = 0x800000021BE544B0;
        if (v14 != 0xD000000000000015)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 14:
        v15 = 0x800000021BE544D0;
        if (v14 != 0xD000000000000018)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      case 15:
        v15 = 0x800000021BE544F0;
        if (v14 != 0xD000000000000012)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      default:
LABEL_47:
        if (v14 != v16)
        {
          goto LABEL_49;
        }

LABEL_48:
        if (v13 == v15)
        {

          v12 = 0;
          v17 = 1;
          goto LABEL_57;
        }

LABEL_49:
        v17 = sub_21BE2995C();

        if ((v17 & 1) == 0)
        {
          v10 = (v10 + 1) & v11;
          if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
          {
            goto LABEL_57;
          }

          continue;
        }

        v12 = 0;
LABEL_57:
        v3 = v37;
        a2 = v36;
LABEL_58:
        v18 = *(v6 + 16);
        v19 = v18 + v12;
        if (__OFADD__(v18, v12))
        {
          __break(1u);
          goto LABEL_130;
        }

        v20 = *(v6 + 24);
        if (v20 >= v19 && (a2 & 1) != 0)
        {
          if (v17)
          {
            goto LABEL_127;
          }

          goto LABEL_123;
        }

        if (a2)
        {
          sub_21BC66360(v19);
        }

        else
        {
          if (v20 >= v19)
          {
            sub_21BC66D18();
            if (v17)
            {
              goto LABEL_127;
            }

            goto LABEL_123;
          }

          sub_21BC670F4(v19);
        }

        v21 = *v3;
        v22 = *(*v3 + 40);
        sub_21BE29ACC();
        sub_21BC5C62C(a1);
        sub_21BE28ABC();

        v23 = sub_21BE29B0C();
        v24 = -1 << *(v21 + 32);
        v10 = v23 & ~v24;
        if (((*(v21 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
LABEL_122:
          v3 = v37;
          if (v17)
          {
LABEL_131:
            result = sub_21BE299EC();
            __break(1u);
            return result;
          }

LABEL_123:
          v30 = *v3;
          *(*v3 + 8 * (v10 >> 6) + 56) |= 1 << v10;
          *(*(v30 + 48) + v10) = a1;
          v31 = *(v30 + 16);
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (!v32)
          {
            *(v30 + 16) = v33;
            return 16;
          }

LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        v38 = ~v24;
        while (2)
        {
          v25 = 0xE700000000000000;
          v26 = 0x6E776F6E6B6E75;
          switch(*(*(v21 + 48) + v10))
          {
            case 1:
              v26 = 0x696D694C6D6D6F63;
              v25 = 0xEE006D6574497374;
              break;
            case 2:
              v26 = 0xD000000000000013;
              v25 = 0x800000021BE543D0;
              break;
            case 3:
              v26 = 0xD000000000000014;
              v25 = 0x800000021BE543F0;
              break;
            case 4:
              v26 = 0x6E6F697461636F6CLL;
              v25 = 0xEC0000006D657449;
              break;
            case 5:
              v26 = 0xD000000000000013;
              v25 = 0x800000021BE54420;
              break;
            case 6:
              v26 = 0x69636966656E6562;
              v25 = 0xEF6D657449797261;
              break;
            case 7:
              v25 = 0xEE006D6574497375;
              v26 = 0x6C5064756F6C4369;
              break;
            case 8:
              v25 = 0xE800000000000000;
              v26 = 0x6D657449656D6F68;
              break;
            case 9:
              v26 = 0xD000000000000013;
              v25 = 0x800000021BE54460;
              break;
            case 0xA:
              v26 = 0x736143656C707061;
              v25 = 0xED00006D65744968;
              break;
            case 0xB:
              v26 = 0x49746361746E6F63;
              v25 = 0xEB000000006D6574;
              break;
            case 0xC:
              v26 = 0xD000000000000012;
              v25 = 0x800000021BE54490;
              break;
            case 0xD:
              v26 = 0xD000000000000015;
              v25 = 0x800000021BE544B0;
              break;
            case 0xE:
              v26 = 0xD000000000000018;
              v25 = 0x800000021BE544D0;
              break;
            case 0xF:
              v26 = 0xD000000000000012;
              v25 = 0x800000021BE544F0;
              break;
            default:
              break;
          }

          v27 = 0xE700000000000000;
          v28 = 0x6E776F6E6B6E75;
          switch(a1)
          {
            case 1:
              v27 = 0xEE006D6574497374;
              if (v26 == 0x696D694C6D6D6F63)
              {
                goto LABEL_116;
              }

              goto LABEL_117;
            case 2:
              v27 = 0x800000021BE543D0;
              if (v26 != 0xD000000000000013)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 3:
              v27 = 0x800000021BE543F0;
              if (v26 != 0xD000000000000014)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 4:
              v27 = 0xEC0000006D657449;
              if (v26 != 0x6E6F697461636F6CLL)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 5:
              v27 = 0x800000021BE54420;
              if (v26 != 0xD000000000000013)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 6:
              v27 = 0xEF6D657449797261;
              if (v26 != 0x69636966656E6562)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 7:
              v27 = 0xEE006D6574497375;
              if (v26 != 0x6C5064756F6C4369)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 8:
              v27 = 0xE800000000000000;
              if (v26 != 0x6D657449656D6F68)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 9:
              v27 = 0x800000021BE54460;
              if (v26 != 0xD000000000000013)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 10:
              v28 = 0x736143656C707061;
              v27 = 0xED00006D65744968;
              goto LABEL_115;
            case 11:
              v27 = 0xEB000000006D6574;
              if (v26 != 0x49746361746E6F63)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 12:
              v27 = 0x800000021BE54490;
              if (v26 != 0xD000000000000012)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 13:
              v27 = 0x800000021BE544B0;
              if (v26 != 0xD000000000000015)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 14:
              v27 = 0x800000021BE544D0;
              if (v26 != 0xD000000000000018)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            case 15:
              v27 = 0x800000021BE544F0;
              if (v26 != 0xD000000000000012)
              {
                goto LABEL_117;
              }

              goto LABEL_116;
            default:
LABEL_115:
              if (v26 != v28)
              {
                goto LABEL_117;
              }

LABEL_116:
              if (v25 != v27)
              {
LABEL_117:
                v29 = sub_21BE2995C();

                if (v29)
                {
                  goto LABEL_126;
                }

                v10 = (v10 + 1) & v38;
                if (((*(v21 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
                {
                  goto LABEL_122;
                }

                continue;
              }

LABEL_126:
              v3 = v37;
              if ((v17 & 1) == 0)
              {
                goto LABEL_131;
              }

LABEL_127:
              v35 = *(*v3 + 48);
              result = *(v35 + v10);
              *(v35 + v10) = a1;
              return result;
          }
        }
    }
  }
}

uint64_t sub_21BBFD378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21BE26A4C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43[3] = a3;
  v43[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v42 = 7;
  v33 = *(a2 + 176);
  v14 = v33;
  v34 = v43;
  v35 = &v42;

  sub_21BBFB8D0(sub_21BBFD730, &v32, v14);

  v15 = v42;
  if (v42 == 7)
  {
    sub_21BE2619C();
    sub_21BB3A35C(v43, v39);

    v16 = sub_21BE26A2C();
    v17 = sub_21BE28FFC();

    if (os_log_type_enabled(v16, v17))
    {
      v31 = v17;
      v18 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38 = v30;
      *v18 = 136315394;
      v19 = v40;
      v20 = v41;
      __swift_project_boxed_opaque_existential_1Tm(v39, v40);
      v21 = sub_21BBE7CF8(v19, v20);
      v23 = v22;
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      v24 = sub_21BB3D81C(v21, v23, &v38);

      *(v18 + 4) = v24;
      *(v18 + 12) = 2080;
      swift_beginAccess();
      sub_21BBA3854(a2 + 64, v37, &qword_27CDB6878, &unk_21BE357E0);
      if (v37[0])
      {
        sub_21BBFD750(v37, v36);
        sub_21BB3A4CC(v37, &qword_27CDB6878, &unk_21BE357E0);
        v26 = v36[7];
        v25 = v36[8];

        sub_21BBFD7AC(v36);
      }

      else
      {
        sub_21BB3A4CC(v37, &qword_27CDB6878, &unk_21BE357E0);
        v25 = 0x800000021BE579E0;
        v26 = 0xD000000000000012;
      }

      v27 = sub_21BB3D81C(v26, v25, &v38);

      *(v18 + 14) = v27;
      _os_log_impl(&dword_21BB35000, v16, v31, "%s was not found in any category defined by checklist '%s'", v18, 0x16u);
      v28 = v30;
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v28, -1, -1);
      MEMORY[0x21CF05C50](v18, -1, -1);

      (*(v9 + 8))(v12, v8);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v43);
  return v15;
}

uint64_t sub_21BBFD800(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BBFBC80(a1, v4, v5, v6);
}

unint64_t sub_21BBFD8BC()
{
  result = qword_280BD6AB8;
  if (!qword_280BD6AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6880, &qword_21BE35800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD6AB8);
  }

  return result;
}

uint64_t sub_21BBFD920(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_21BBFD988()
{
  result = qword_280BD72E8;
  if (!qword_280BD72E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD72E8);
  }

  return result;
}

unint64_t sub_21BBFD9DC()
{
  result = qword_27CDB6890;
  if (!qword_27CDB6890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6890);
  }

  return result;
}

uint64_t sub_21BBFDA64@<X0>(uint64_t *a1@<X8>)
{
  sub_21BB3A2A4(0, &qword_280BD6980, 0x277D08248);
  result = sub_21BE26C0C();
  *a1 = result;
  return result;
}

id sub_21BBFDAB4()
{
  v1 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  result = v3;
  if (!v3)
  {
    return [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  return result;
}

char *FAFamilyLandingPageViewModel.init(appleAccount:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7B0, &unk_21BE39C70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5980, &unk_21BE32BA0);
  v34 = *(v9 - 8);
  v35 = v9;
  v10 = *(v34 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v33 = *(v13 - 8);
  v14 = *(v33 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - v15;
  v17 = OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore;
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  *&v2[v17] = qword_280BD79E0;
  if (MEMORY[0x277D84F90] >> 62 && sub_21BE2951C())
  {

    v18 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {

    v18 = MEMORY[0x277D84FA0];
  }

  *&v2[OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_cancellables] = v18;
  v32 = a1;
  *&v2[OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_familyPageSubscriptionsURLs] = sub_21BC85A38();
  v19 = type metadata accessor for FAFamilyLandingPageViewModel();
  v36.receiver = v2;
  v36.super_class = v19;
  v20 = objc_msgSendSuper2(&v36, sel_init);
  v21 = *&v20[OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore];
  swift_beginAccess();
  v22 = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC710, &qword_21BE35920);
  sub_21BE26C7C();
  swift_endAccess();

  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = sub_21BE2635C();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = sub_21BE2634C();
  sub_21BB3B038(&qword_280BD6AB0, &qword_27CDB5988, &qword_21BE4B180);
  sub_21BB3CCDC();
  sub_21BE26D0C();
  sub_21BB3B038(&qword_280BD6AF0, &unk_27CDBC7B0, &unk_21BE39C70);
  sub_21BE26CFC();
  (*(v5 + 8))(v8, v4);
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = &unk_21BE35930;
  v28[4] = v23;
  sub_21BB3B038(&qword_280BD6AD0, &qword_27CDB5980, &unk_21BE32BA0);

  v29 = v35;
  sub_21BE26D1C();

  (*(v34 + 8))(v12, v29);
  (*(v33 + 8))(v16, v13);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  return v22;
}

uint64_t sub_21BBFE078(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a2;
  sub_21BE28D7C();
  *(v2 + 72) = sub_21BE28D6C();
  v4 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BBFE110, v4, v3);
}

uint64_t sub_21BBFE110()
{
  v2 = v0[8];
  v1 = v0[9];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore);
    v5 = Strong;

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v6 = v0[5];
    if (v6)
    {
      v7 = v0[8];

      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        type metadata accessor for FAFamilyLandingPageViewModel();
        sub_21BC089F4(&qword_27CDB68F0, v10, type metadata accessor for FAFamilyLandingPageViewModel);
        sub_21BE26C0C();

        sub_21BE26C4C();
      }
    }
  }

  v11 = v0[1];

  return v11();
}

id FAFamilyLandingPageViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FAFamilyLandingPageViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FAFamilyLandingPageViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BBFE3E4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FAFamilyLandingPageViewModel();
  result = sub_21BE26C0C();
  *a1 = result;
  return result;
}

uint64_t sub_21BBFE420@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BE2754C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDC10, &unk_21BE35940);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for FamilyLandingPageMainView();
  sub_21BBA3854(v1 + *(v12 + 32), v11, &unk_27CDBDC10, &unk_21BE35940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21BE2690C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_21BE28FEC();
    v16 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_21BBFE628()
{
  v1 = (v0 + *(type metadata accessor for FamilyLandingPageMainView() + 80));
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  type metadata accessor for AppleCardFamilyCache();
  sub_21BC089F4(&qword_280BD8840, 255, type metadata accessor for AppleCardFamilyCache);
  sub_21BE26EAC();
  v9[0] = 0xD000000000000010;
  v9[1] = 0x800000021BE57B40;
  v5 = sub_21BE20000(v9);

  if (!v5)
  {
    goto LABEL_5;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

LABEL_5:
    v7 = 0;
    return v7 & 1;
  }

  LOBYTE(v9[0]) = 2;
  MEMORY[0x21CF03EA0](v6, v9);

  v7 = v9[0];
  return v7 & 1;
}

uint64_t sub_21BBFE794(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t sub_21BBFE7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v6 = v3;
  sub_21BE283EC();
  type metadata accessor for NavigationManager();
  sub_21BC089F4(&qword_27CDB69B0, 255, type metadata accessor for NavigationManager);
  v7 = sub_21BE26E9C();
  v9 = v8;

  result = swift_getKeyPath();
  *a2 = &unk_21BE35C70;
  *(a2 + 8) = v4;
  *(a2 + 16) = sub_21BC09614;
  *(a2 + 24) = v5;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  *(a2 + 48) = v7;
  *(a2 + 56) = v9 & 1;
  *(a2 + 64) = 1;
  *(a2 + 72) = result;
  *(a2 + 80) = 0;
  return result;
}

uint64_t sub_21BBFE958(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_21BE28D7C();
  v2[4] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BBFE9F0, v4, v3);
}

uint64_t sub_21BBFE9F0()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = [v2 altDSID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21BE28A0C();
    v7 = v6;
  }

  else
  {
    v7 = 0xE100000000000000;
    v5 = 45;
  }

  v8 = v0[2];
  *v8 = v5;
  v8[1] = v7;
  v9 = v0[1];

  return v9();
}

id sub_21BBFEAA0@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for FamilyMemberViewModel();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = xmmword_21BE358A0;
  *(v4 + 40) = 0;
  *(a2 + 24) = v3;
  *(a2 + 32) = &off_282D96DE8;
  *a2 = v4;
  *(a2 + 40) = 0;

  return a1;
}

uint64_t sub_21BBFEB20()
{
  sub_21BBFE7F4(v0, v2);
  if (qword_27CDB4F88 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6968, &qword_21BE35C48);
  type metadata accessor for FAFamilyImageLoader();
  sub_21BC0B100(&qword_27CDB6970, &qword_27CDB6968, &qword_21BE35C48, sub_21BC09438);
  sub_21BC089F4(&qword_27CDB69A8, 255, type metadata accessor for FAFamilyImageLoader);
  sub_21BE27EEC();
  v4[3] = v2[3];
  v4[4] = v2[4];
  v5 = v3;
  v4[0] = v2[0];
  v4[1] = v2[1];
  v4[2] = v2[2];
  return sub_21BB3A4CC(v4, &qword_27CDB6968, &qword_21BE35C48);
}

uint64_t sub_21BBFEC98()
{
  type metadata accessor for FamilyLandingPageMainView();
  v0 = sub_21BC06A8C();
  v1 = [v0 members];

  sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
  v2 = sub_21BE28C3C();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_11:

    v7 = MEMORY[0x277D84F90];
LABEL_12:
    v9 = v7;

    sub_21BC07724(&v9);

    return v9;
  }

  v3 = sub_21BE2951C();
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_3:
  v9 = MEMORY[0x277D84F90];
  sub_21BE296DC();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CF047C0](v4, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v4 + 32);
      }

      ++v4;
      sub_21BE296BC();
      v5 = *(v9 + 16);
      sub_21BE296EC();
      sub_21BE296FC();
      sub_21BE296CC();
    }

    while (v3 != v4);

    v7 = v9;
    goto LABEL_12;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_21BBFEE4C@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a1;
  v29 = a4;
  v6 = type metadata accessor for FamilyLandingPageMainView();
  v7 = (v6 - 8);
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = *a2;
  v11 = *(a3 + v7[13] + 8);
  sub_21BBB515C(a3, &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  sub_21BC0B23C(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for FamilyLandingPageMainView);
  v14 = v7[15];
  swift_unknownObjectWeakLoadStrong();
  v15 = a3 + v7[12];
  v16 = *v15;
  v17 = *(v15 + 8);
  LOBYTE(v31) = v16;
  v32 = v17;
  v18 = v11;
  v27 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2841C();
  v19 = v33;
  v20 = v34;
  LOBYTE(v11) = v35;
  v21 = *(a3 + 32);
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BB3CC48(&qword_280BD8A20, &qword_280BD8A10, off_2782F0CC0);
  v22 = v21;
  v33 = sub_21BE270CC();
  v34 = v23;
  v35 = sub_21BC0C420;
  v36 = v13;
  v37 = 0;
  v38 = v27;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v39 = v19;
  v40 = v20;
  v41 = v11;
  type metadata accessor for LocationViewModel();
  sub_21BC089F4(&qword_27CDBDC20, 255, type metadata accessor for LocationViewModel);
  v42 = sub_21BE270CC();
  v43 = v24;
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_21BE295EC();

  v31 = 0xD000000000000012;
  v32 = 0x800000021BE57BD0;
  v30 = v28;
  v25 = sub_21BE2992C();
  MEMORY[0x21CF03CA0](v25);

  sub_21BC0C0F4();
  sub_21BE2809C();

  return sub_21BC0C4AC(&v33);
}

uint64_t sub_21BBFF17C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  type metadata accessor for FAFamilyLandingPageViewModel();
  sub_21BC089F4(&qword_27CDB68F0, v4, type metadata accessor for FAFamilyLandingPageViewModel);

  return sub_21BE26EAC();
}

uint64_t sub_21BBFF208@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FamilyLandingPageMainView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = *a1;
  sub_21BBB515C(a2, &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_21BC0B23C(&v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10, type metadata accessor for FamilyLandingPageMainView);
  *(v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  v17[15] = 0;
  v13 = v9;
  sub_21BE283EC();
  LOBYTE(v8) = v17[16];
  v14 = v18;
  type metadata accessor for NavigationManager();
  sub_21BC089F4(&qword_27CDB69B0, 255, type metadata accessor for NavigationManager);
  result = sub_21BE26E9C();
  *a3 = &unk_21BE361A0;
  *(a3 + 8) = v11;
  *(a3 + 16) = sub_21BC0BF50;
  *(a3 + 24) = v12;
  *(a3 + 32) = v8;
  *(a3 + 40) = v14;
  *(a3 + 48) = result;
  *(a3 + 56) = v16 & 1;
  return result;
}

uint64_t sub_21BBFF3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  sub_21BE28D7C();
  v3[21] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v3[22] = v5;
  v3[23] = v4;

  return MEMORY[0x2822009F8](sub_21BBFF494, v5, v4);
}

uint64_t sub_21BBFF494()
{
  v1 = v0[19];
  v2 = *(type metadata accessor for FamilyLandingPageMainView() + 52);
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[24] = Strong;
  if (Strong)
  {
    v4 = Strong;
    v5 = v0[20];
    v6 = v0[18];
    v0[2] = v0;
    v0[3] = sub_21BBFF620;
    v7 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5948, &qword_21BE4DE90);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21BD44BD8;
    v0[13] = &block_descriptor_4;
    v0[14] = v7;
    [v4 loadMemberDetailsWithMember:v5 navigationController:v6 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v8 = v0[21];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_21BBFF620()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BBFF728, v2, v1);
}

uint64_t sub_21BBFF728()
{
  v1 = v0[24];
  v2 = v0[21];

  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

uint64_t sub_21BBFF798@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for PendingMemberViewModel();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = 1;
  *(v4 + 26) = 1;
  v5 = a1;
  result = sub_21BE2858C();
  if (qword_27CDB4E58 != -1)
  {
    result = swift_once();
  }

  v7 = byte_27CDD41B0 == 0;
  v8 = 38.0;
  *a2 = v4;
  *(a2 + 8) = v9;
  if (!v7)
  {
    v8 = 40.0;
  }

  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = v8;
  *(a2 + 40) = 0;
  return result;
}

uint64_t FamilyLandingPageMainView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FamilyLandingPageMainView();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_21BE2690C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  sub_21BBFE420(&v24 - v12);
  (*(v7 + 104))(v11, *MEMORY[0x277D40278], v6);
  sub_21BC089F4(&qword_27CDB66C8, 255, MEMORY[0x277D40290]);
  sub_21BE28BDC();
  sub_21BE28BDC();
  v14 = *(v7 + 8);
  v14(v11, v6);
  v14(v13, v6);
  LOBYTE(v14) = v27 == v26;
  sub_21BBB515C(v2, &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v16 = swift_allocObject();
  sub_21BC0B23C(&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for FamilyLandingPageMainView);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB68B8, &qword_21BE35950);
  v18 = *(v17 + 40);
  *(a1 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB68C0, &qword_21BE4E940);
  swift_storeEnumTagMultiPayload();
  v19 = *(v17 + 44);
  *(a1 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDC10, &unk_21BE35940);
  swift_storeEnumTagMultiPayload();
  v20 = type metadata accessor for NavigationManager();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  result = NavigationManager.init(usesNavigationStack:path:)(v14, MEMORY[0x277D84F90]);
  *a1 = result;
  a1[1] = 0;
  a1[2] = sub_21BC08A3C;
  a1[3] = v16;
  return result;
}

uint64_t sub_21BBFFBC8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v111 = a2;
  v3 = type metadata accessor for FamilyLandingPageMainView();
  v4 = *(v3 - 8);
  v114 = v3;
  v115 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v6;
  v8 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB69D0, &qword_21BE35CB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v104 - v11;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB69D8, &qword_21BE35CB8);
  v13 = *(*(v110 - 8) + 64);
  MEMORY[0x28223BE20](v110);
  v113 = &v104 - v14;
  v116 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB69E0, &qword_21BE35CC0);
  sub_21BB3B038(&qword_27CDB69E8, &qword_27CDB69E0, &qword_21BE35CC0);
  sub_21BE27D1C();
  v15 = *(a1 + *(v3 + 36) + 8);
  swift_beginAccess();
  v16 = *(v9 + 52);
  v109 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB69F0, &qword_21BE35CC8);
  sub_21BE26C7C();
  swift_endAccess();
  v17 = a1;
  sub_21BBB515C(a1, v8);
  v18 = (*(v115 + 80) + 16) & ~*(v115 + 80);
  v115 = *(v115 + 80);
  v19 = swift_allocObject();
  sub_21BC0B23C(v8, v19 + v18, type metadata accessor for FamilyLandingPageMainView);
  v20 = &v12[*(v9 + 56)];
  *v20 = sub_21BC0994C;
  v20[1] = v19;
  v21 = (v17 + v114[22]);
  v22 = *v21;
  v23 = v21[1];
  v118 = v22;
  v119 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB69F8, &qword_21BE35CD0);
  sub_21BE283FC();
  v105 = v8;
  v106 = v17;
  sub_21BBB515C(v17, v8);
  v112 = v7;
  v24 = swift_allocObject();
  v107 = type metadata accessor for FamilyLandingPageMainView;
  sub_21BC0B23C(v8, v24 + v18, type metadata accessor for FamilyLandingPageMainView);
  sub_21BB3B038(&qword_27CDB6A00, &qword_27CDB69D0, &qword_21BE35CB0);
  v25 = v113;
  sub_21BE281BC();

  sub_21BB3A4CC(v12, &qword_27CDB69D0, &qword_21BE35CB0);
  v26 = v105;
  sub_21BBB515C(v17, v105);
  v27 = swift_allocObject();
  sub_21BC0B23C(v26, v27 + v18, type metadata accessor for FamilyLandingPageMainView);
  v28 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A08, &qword_21BE35CD8) + 36)];
  v29 = v25;
  *v28 = sub_21BC09A34;
  v28[1] = v27;
  v30 = type metadata accessor for NavigationManager();
  v31 = sub_21BC089F4(&qword_27CDB69B0, 255, type metadata accessor for NavigationManager);
  v28[2] = 0;
  v28[3] = 0;
  v32 = sub_21BE26E9C();
  LOBYTE(v17) = v33;
  v117 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A10, &qword_21BE35CE0);
  sub_21BE283EC();
  v34 = v118;
  v35 = v119;
  v36 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A18, &qword_21BE35CE8) + 36)];
  *v36 = sub_21BC05DF4;
  *(v36 + 1) = 0;
  *(v36 + 2) = v32;
  v36[24] = v17 & 1;
  v36[32] = v34;
  *(v36 + 5) = v35;
  v37 = v106;
  sub_21BBB515C(v106, v26);
  v38 = swift_allocObject();
  v39 = v107;
  sub_21BC0B23C(v26, v38 + v18, v107);
  v108 = v31;
  v109 = v30;
  v40 = v37;
  v41 = sub_21BE26E9C();
  v43 = v42;
  v117 = 0;
  sub_21BE283EC();
  LOBYTE(v27) = v118;
  v44 = v119;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A20, &qword_21BE35CF0);
  v46 = v113;
  v47 = &v113[*(v45 + 36)];
  *v47 = sub_21BC09A4C;
  *(v47 + 1) = v38;
  *(v47 + 2) = v41;
  v47[24] = v43 & 1;
  v47[32] = v27;
  *(v47 + 5) = v44;
  sub_21BBB515C(v40, v26);
  v48 = swift_allocObject();
  v49 = v48 + v18;
  v50 = v46;
  sub_21BC0B23C(v26, v49, v39);
  v51 = &v46[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A28, &unk_21BE35CF8) + 36)];
  sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
  v52 = [swift_getObjCClassFromMetadata() defaultCenter];
  if (qword_280BD7030 != -1)
  {
    swift_once();
  }

  sub_21BE2935C();

  v53 = type metadata accessor for ActiveStateChange(0);
  v54 = &v51[*(v53 + 20)];
  *v54 = sub_21BC09ACC;
  v54[1] = v48;
  v55 = &v51[*(v53 + 24)];
  *v55 = 0xD00000000000002ALL;
  *(v55 + 1) = 0x800000021BE57AD0;
  v56 = v114;
  v57 = v40 + v114[10];
  v58 = *v57;
  v59 = *(v57 + 8);
  LOBYTE(v118) = v58;
  v119 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  v60 = v117;
  *(v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A30, &qword_21BE35D08) + 36)) = (v60 & 1) == 0;
  v61 = v40 + v56[16];
  v62 = *v61;
  v63 = *(v61 + 8);
  v64 = *(v61 + 16);
  type metadata accessor for FamilyChecklistStore();
  sub_21BC089F4(&qword_27CDB63D0, 255, type metadata accessor for FamilyChecklistStore);
  v65 = sub_21BE26EAC();
  v66 = sub_21BE26BFC();
  v67 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A38, &qword_21BE35D10) + 36));
  *v67 = v66;
  v67[1] = v65;
  v68 = *(v40 + 32);
  type metadata accessor for LocationViewModel();
  sub_21BC089F4(&qword_27CDBDC20, 255, type metadata accessor for LocationViewModel);
  v69 = sub_21BE26BFC();
  v70 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A40, &qword_21BE35D18) + 36));
  *v70 = v69;
  v70[1] = v68;
  v71 = *(v40 + v56[11] + 8);
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BB3CC48(&qword_280BD8A20, &qword_280BD8A10, off_2782F0CC0);
  v72 = v68;
  v73 = sub_21BE26BFC();
  v74 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A48, &qword_21BE35D20) + 36));
  *v74 = v73;
  v74[1] = v71;
  KeyPath = swift_getKeyPath();
  v76 = *(v40 + v56[12]);
  v77 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A50, &qword_21BE35D50) + 36));
  *v77 = KeyPath;
  v77[1] = v76;
  v78 = *v40;
  v79 = *(v40 + 8);
  v80 = *(v40 + 16);
  type metadata accessor for FAFamilyLandingPageViewModel();
  sub_21BC089F4(&qword_27CDB68F0, v81, type metadata accessor for FAFamilyLandingPageViewModel);
  v82 = v71;
  v83 = v76;
  v84 = sub_21BE26EAC();
  v85 = sub_21BE26BFC();
  v86 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A58, &qword_21BE35D58) + 36));
  *v86 = v85;
  v86[1] = v84;
  v87 = sub_21BE26EAC();
  v88 = *&v87[OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v89 = v118;
  if (!v118)
  {
    v89 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  sub_21BB3A2A4(0, &qword_280BD6980, 0x277D08248);
  sub_21BB3CC48(&qword_27CDB6A60, &qword_280BD6980, 0x277D08248);
  v90 = sub_21BE26BFC();
  v91 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A68, &qword_21BE35D60) + 36));
  *v91 = v90;
  v91[1] = v89;
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  v92 = qword_280BD79E0;
  type metadata accessor for FamilyCircleStore(0);
  sub_21BC089F4(&qword_27CDB5C40, 255, type metadata accessor for FamilyCircleStore);
  v93 = sub_21BE26BFC();
  v94 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A70, &qword_21BE35D68) + 36));
  *v94 = v93;
  v94[1] = v92;
  v95 = swift_getKeyPath();
  v96 = qword_27CDB4FD8;

  if (v96 != -1)
  {
    swift_once();
  }

  v97 = qword_27CDD4360;
  v98 = (v50 + *(v110 + 36));
  *v98 = v95;
  v98[1] = v97;
  sub_21BC09AE4();

  v99 = v111;
  sub_21BE27E3C();
  sub_21BB3A4CC(v50, &qword_27CDB69D8, &qword_21BE35CB8);
  v100 = sub_21BE26E9C();
  LOBYTE(v97) = v101;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6B80, &unk_21BE35DE8);
  v103 = v99 + *(result + 36);
  *v103 = v100;
  *(v103 + 8) = v97 & 1;
  return result;
}

void sub_21BC0086C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v142 = a2;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6BA0, &qword_21BE35EC0);
  v3 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134);
  v133 = &v119 - v4;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6BA8, &qword_21BE35EC8);
  v137 = *(v138 - 8);
  v5 = *(v137 + 64);
  MEMORY[0x28223BE20](v138);
  v155 = &v119 - v6;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6BB0, &qword_21BE35ED0);
  v7 = *(*(v136 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v136);
  v141 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v135 = &v119 - v11;
  MEMORY[0x28223BE20](v10);
  v139 = &v119 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6BB8, &qword_21BE35ED8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v140 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v156 = &v119 - v17;
  v125 = sub_21BE2721C();
  v124 = *(v125 - 8);
  v18 = *(v124 + 64);
  MEMORY[0x28223BE20](v125);
  v123 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6BC0, &qword_21BE35EE0);
  v121 = *(v122 - 8);
  v20 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v120 = &v119 - v21;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6BC8, &qword_21BE35EE8);
  v128 = *(v129 - 8);
  v22 = *(v128 + 64);
  MEMORY[0x28223BE20](v129);
  v153 = &v119 - v23;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6BD0, &qword_21BE35EF0);
  v130 = *(v154 - 8);
  v24 = *(v130 + 64);
  v25 = MEMORY[0x28223BE20](v154);
  v127 = &v119 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v126 = &v119 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6BD8, &qword_21BE35EF8);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v132 = &v119 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v157 = &v119 - v32;
  v148 = sub_21BE26E1C();
  v146 = *(v148 - 8);
  v33 = *(v146 + 64);
  MEMORY[0x28223BE20](v148);
  v144 = &v119 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6BE0, &qword_21BE35F00);
  v147 = *(v145 - 8);
  v35 = *(v147 + 64);
  MEMORY[0x28223BE20](v145);
  v37 = &v119 - v36;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6BE8, &qword_21BE35F08);
  v151 = *(v152 - 8);
  v38 = *(v151 + 64);
  MEMORY[0x28223BE20](v152);
  v143 = &v119 - v39;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6BF0, &qword_21BE35F10);
  v40 = *(*(v150 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v150);
  v131 = &v119 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v149 = &v119 - v44;
  MEMORY[0x28223BE20](v43);
  v158 = &v119 - v45;
  v159 = a1;
  v46 = type metadata accessor for FamilyLandingPageMainView();
  v47 = *(a1 + v46[11] + 8);
  v49 = *a1;
  v48 = *(a1 + 8);
  v50 = *(a1 + 16);
  type metadata accessor for FAFamilyLandingPageViewModel();
  sub_21BC089F4(&qword_27CDB68F0, v51, type metadata accessor for FAFamilyLandingPageViewModel);
  v52 = v47;
  sub_21BE26EAC();
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BB3CC48(&qword_280BD8A20, &qword_280BD8A10, off_2782F0CC0);
  v53 = sub_21BE270CC();
  v55 = v54;
  v56 = sub_21BE270CC();
  v58 = v57;
  v59 = (a1 + v46[22]);
  v60 = *v59;
  v61 = v59[1];
  v160[0] = v60;
  v160[1] = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB69F8, &qword_21BE35CD0);
  sub_21BE2841C();
  v62 = v161;
  v63 = v162;
  v64 = v163;
  v161 = v53;
  v162 = v55;
  v163 = v56;
  v164 = v58;
  v165 = xmmword_21BE358B0;
  v166 = v62;
  v167 = v63;
  v168 = v64;
  sub_21BC01CC4(v160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6BF8, &qword_21BE35F18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6C00, &unk_21BE35F20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6C08, &unk_21BE3F270);
  sub_21BC0AC1C();
  v65 = v143;
  sub_21BB3B038(&qword_27CDB6C28, &qword_27CDB6C00, &unk_21BE35F20);
  sub_21BC0AD50();
  sub_21BE285FC();
  v66 = v146;
  v67 = v144;
  v68 = v148;
  (*(v146 + 104))(v144, *MEMORY[0x277CDF350], v148);
  sub_21BC0ADCC();
  v69 = v145;
  sub_21BE27FAC();
  (*(v66 + 8))(v67, v68);
  (*(v147 + 8))(v37, v69);
  v70 = *(a1 + v46[12]);
  v71 = [v70 accountStore];
  v72 = [v71 aa_primaryAppleAccount];

  if (v72)
  {
    v73 = sub_21BE2943C();
  }

  else
  {
    v73 = 0;
  }

  KeyPath = swift_getKeyPath();
  v75 = swift_allocObject();
  *(v75 + 16) = v73 & 1;
  v76 = v149;
  (*(v151 + 32))(v149, v65, v152);
  v77 = (v76 + *(v150 + 36));
  *v77 = KeyPath;
  v77[1] = sub_21BC0AE98;
  v77[2] = v75;
  sub_21BBB7D84(v76, v158, &qword_27CDB6BF0, &qword_21BE35F10);
  v78 = sub_21BC06A8C();
  v79 = [v78 pendingMembers];

  v80 = v155;
  v81 = v157;
  v82 = v154;
  if (v79)
  {
    sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
    v83 = sub_21BE28C3C();

    if (v83 >> 62)
    {
      v84 = sub_21BE2951C();
    }

    else
    {
      v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v84)
    {
      MEMORY[0x28223BE20](v85);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6C40, &qword_21BE35F60);
      sub_21BC0AEA8();
      v86 = v70;
      v87 = v120;
      sub_21BE2860C();
      v88 = v123;
      sub_21BE2720C();
      sub_21BC0B6C4(&qword_27CDB6C70, &qword_27CDB6BC0, &qword_21BE35EE0, sub_21BC0AEA8);
      sub_21BC089F4(&qword_27CDBC430, 255, MEMORY[0x277CDDB18]);
      v89 = v122;
      v90 = v125;
      sub_21BE27ECC();
      (*(v124 + 8))(v88, v90);
      v91 = v87;
      v70 = v86;
      (*(v121 + 8))(v91, v89);
      v92 = [v86 &selRef_appleCardAccountStateWithCompletion_];
      v93 = [v92 &selRef_appleCardUtilities + 4];

      if (v93)
      {
        v94 = sub_21BE2943C();
      }

      else
      {
        v94 = 0;
      }

      v82 = v154;
      v96 = swift_getKeyPath();
      v97 = swift_allocObject();
      *(v97 + 16) = v94 & 1;
      v98 = v127;
      (*(v128 + 32))(v127, v153, v129);
      v99 = (v98 + *(v82 + 36));
      *v99 = v96;
      v99[1] = sub_21BC0C5A0;
      v99[2] = v97;
      v100 = v126;
      sub_21BBB7D84(v98, v126, &qword_27CDB6BD0, &qword_21BE35EF0);
      v101 = v100;
      v81 = v157;
      sub_21BBB7D84(v101, v157, &qword_27CDB6BD0, &qword_21BE35EF0);
      v95 = 0;
      v80 = v155;
    }

    else
    {
      v95 = 1;
    }

    (*(v130 + 56))(v81, v95, 1, v82);
    v102 = sub_21BC022B4(a1, v156);
    MEMORY[0x28223BE20](v102);
    sub_21BC04D68(v133);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6C78, &qword_21BE35F78);
    sub_21BB3B038(&qword_27CDB6C80, &qword_27CDB6C78, &qword_21BE35F78);
    sub_21BC0AFEC();
    sub_21BE2861C();
    v103 = [v70 accountStore];
    v104 = [v103 aa_primaryAppleAccount];

    if (v104)
    {
      v105 = sub_21BE2943C();
    }

    else
    {
      v105 = 0;
    }

    v106 = swift_getKeyPath();
    v107 = swift_allocObject();
    *(v107 + 16) = v105 & 1;
    v108 = v135;
    (*(v137 + 32))(v135, v80, v138);
    v109 = (v108 + *(v136 + 36));
    *v109 = v106;
    v109[1] = sub_21BC0C5A0;
    v109[2] = v107;
    v110 = v139;
    sub_21BBB7D84(v108, v139, &qword_27CDB6BB0, &qword_21BE35ED0);
    v111 = v131;
    sub_21BBA3854(v158, v131, &qword_27CDB6BF0, &qword_21BE35F10);
    v112 = v157;
    v113 = v132;
    sub_21BBA3854(v157, v132, &qword_27CDB6BD8, &qword_21BE35EF8);
    v114 = v156;
    v115 = v140;
    sub_21BBA3854(v156, v140, &qword_27CDB6BB8, &qword_21BE35ED8);
    v116 = v141;
    sub_21BBA3854(v110, v141, &qword_27CDB6BB0, &qword_21BE35ED0);
    v117 = v142;
    sub_21BBA3854(v111, v142, &qword_27CDB6BF0, &qword_21BE35F10);
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6C98, &qword_21BE35F80);
    sub_21BBA3854(v113, v117 + v118[12], &qword_27CDB6BD8, &qword_21BE35EF8);
    sub_21BBA3854(v115, v117 + v118[16], &qword_27CDB6BB8, &qword_21BE35ED8);
    sub_21BBA3854(v116, v117 + v118[20], &qword_27CDB6BB0, &qword_21BE35ED0);
    sub_21BB3A4CC(v110, &qword_27CDB6BB0, &qword_21BE35ED0);
    sub_21BB3A4CC(v114, &qword_27CDB6BB8, &qword_21BE35ED8);
    sub_21BB3A4CC(v112, &qword_27CDB6BD8, &qword_21BE35EF8);
    sub_21BB3A4CC(v158, &qword_27CDB6BF0, &qword_21BE35F10);
    sub_21BB3A4CC(v116, &qword_27CDB6BB0, &qword_21BE35ED0);
    sub_21BB3A4CC(v115, &qword_27CDB6BB8, &qword_21BE35ED8);
    sub_21BB3A4CC(v113, &qword_27CDB6BD8, &qword_21BE35EF8);
    sub_21BB3A4CC(v111, &qword_27CDB6BF0, &qword_21BE35F10);
  }

  else
  {
    __break(1u);
  }
}