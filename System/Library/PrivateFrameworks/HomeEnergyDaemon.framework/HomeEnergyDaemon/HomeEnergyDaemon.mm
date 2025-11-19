uint64_t sub_22B118200(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22B118260(a1);
  }

  return result;
}

uint64_t sub_22B118260(uint64_t a1)
{
  v2 = sub_22B3605EC();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22B36062C();
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22B3605DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  sub_22B11870C();
  v19 = sub_22B360D9C();
  v13 = swift_allocObject();
  swift_weakInit();
  (*(v11 + 16))(&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v11 + 32))(v15 + v14, &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  aBlock[4] = sub_22B118AB0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B118A6C;
  aBlock[3] = &block_descriptor_10;
  v16 = _Block_copy(aBlock);

  sub_22B36060C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22B118988(&qword_281409370, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA330, &unk_22B363330);
  sub_22B118A18(&qword_281409350, &unk_27D8BA330, &unk_22B363330);
  sub_22B36104C();
  v17 = v19;
  MEMORY[0x23188E6D0](0, v9, v5, v16);
  _Block_release(v16);

  (*(v22 + 8))(v5, v2);
  return (*(v20 + 8))(v9, v21);
}

uint64_t sub_22B118610()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B118648()
{
  v1 = sub_22B3605DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

unint64_t sub_22B11870C()
{
  result = qword_2814092E0;
  if (!qword_2814092E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814092E0);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_22B170C58(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22B118988(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B1189D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B118A18(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22B118A6C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_22B118AB0()
{
  v1 = *(sub_22B3605DC() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_22B118B14(v2, v3);
}

uint64_t sub_22B118B14(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B3605DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v17 - v9;
  v11 = sub_22B360B6C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a2, v4);
  sub_22B360B1C();

  v12 = sub_22B360B0C();
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 2) = v12;
  *(v14 + 3) = v15;
  *(v14 + 4) = a1;
  (*(v5 + 32))(&v14[v13], v7, v4);
  sub_22B1240B0(0, 0, v10, &unk_22B365538, v14);
}

uint64_t sub_22B118D10()
{
  v1 = sub_22B3605DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B118DDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_destroy_helper_9(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

uint64_t sub_22B118F78(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B124D88;

  return sub_22B119030(a1, v5);
}

uint64_t sub_22B119030(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_22B119B54;

  return v6(v2 + 32);
}

uint64_t sub_22B119124(uint64_t a1)
{
  v4 = *(sub_22B3605DC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B119A60;

  return sub_22B11921C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_22B11921C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v6 = sub_22B3605BC();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  sub_22B360B1C();
  v5[12] = sub_22B360B0C();
  v10 = sub_22B360ACC();
  v5[13] = v10;
  v5[14] = v9;

  return MEMORY[0x2822009F8](sub_22B119320, v10, v9);
}

uint64_t sub_22B119320()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  if (swift_weakLoadStrong() && (Strong = swift_unknownObjectWeakLoadStrong(), *(v0 + 120) = Strong, , Strong))
  {
    v4 = *(v0 + 80);
    v3 = *(v0 + 88);
    v5 = *(v0 + 64);
    v6 = *(v0 + 72);
    v7 = *(v0 + 56);
    sub_22B3605CC();
    (*(v6 + 104))(v4, *MEMORY[0x277CD8F78], v5);
    v8 = sub_22B3605AC();
    v9 = *(v6 + 8);
    v9(v4, v5);
    v9(v3, v5);
    v10 = swift_task_alloc();
    *(v0 + 128) = v10;
    *v10 = v0;
    v10[1] = sub_22B11991C;

    return sub_22B1194F0((v8 & 1) == 0);
  }

  else
  {
    v12 = *(v0 + 96);

    v14 = *(v0 + 80);
    v13 = *(v0 + 88);
    **(v0 + 40) = 1;

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_22B1194F0(char a1)
{
  *(v2 + 40) = v1;
  *(v2 + 72) = a1;
  v3 = sub_22B36052C();
  *(v2 + 48) = v3;
  v4 = *(v3 - 8);
  *(v2 + 56) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1195B4, v1, 0);
}

uint64_t sub_22B1195B4()
{
  v30 = v0;
  v1 = *(v0 + 40);
  v2 = *(v1 + 120);
  if (*(v0 + 72))
  {
    v3 = 0x656E696C66666FLL;
  }

  else
  {
    v3 = 0x6C62616863616572;
  }

  if (*(v0 + 72))
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (*(v1 + 120))
  {
    v5 = 0x656E696C66666FLL;
  }

  else
  {
    v5 = 0x6C62616863616572;
  }

  if (*(v1 + 120))
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (v3 == v5 && v4 == v6)
  {

    goto LABEL_29;
  }

  v8 = sub_22B36134C();

  if (v8)
  {
    goto LABEL_29;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 56);
  v9 = *(v0 + 64);
  v11 = *(v0 + 48);
  v12 = __swift_project_value_buffer(v11, qword_28140BD10);
  swift_beginAccess();
  (*(v10 + 16))(v9, v12, v11);
  v13 = sub_22B36050C();
  v14 = sub_22B360D2C();
  v15 = os_log_type_enabled(v13, v14);
  v17 = *(v0 + 56);
  v16 = *(v0 + 64);
  v28 = *(v0 + 48);
  if (v15)
  {
    v18 = swift_slowAlloc();
    v27 = v16;
    v19 = swift_slowAlloc();
    v29 = v19;
    *v18 = 136446210;
    v20 = sub_22B1A7B20(v3, v4, &v29);

    *(v18 + 4) = v20;
    _os_log_impl(&dword_22B116000, v13, v14, "Network status changed to %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x23188F650](v19, -1, -1);
    MEMORY[0x23188F650](v18, -1, -1);

    (*(v17 + 8))(v27, v28);
  }

  else
  {

    (*(v17 + 8))(v16, v28);
  }

  v21 = *(v0 + 72);
  *(v1 + 120) = v21 & 1;
  if ((v21 & 1) == 0)
  {

    goto LABEL_28;
  }

  v22 = sub_22B36134C();

  if (v22)
  {
LABEL_28:
    v23 = *(v0 + 40);
    sub_22B256534();
  }

LABEL_29:
  v24 = *(v0 + 64);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_22B1198A4()
{
  v1 = *(v0 + 96);

  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  **(v0 + 40) = 0;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22B11991C()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 112);
  v5 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_22B1198A4, v5, v4);
}

uint64_t sub_22B119A60()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22B119B54()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

BOOL sub_22B119C98(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_22B119D10@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22B119DE8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B119E20()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B119E78()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B119EC0()
{
  v1 = sub_22B35DF1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B119F9C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B119FDC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  v3 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_22B11A02C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_22B11A044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_22B35DE9C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_22B11A174(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_22B35DE9C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22B11A2A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B11A2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22B35DE9C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22B11A394(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22B35DE9C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B11A438()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B11A470()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA288, &unk_22B363A10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B11A504()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_22B11A564()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22B11A5C0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22B11A610()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B11A648()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B11A694()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B11A76C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B11A7DC()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22B11A844()
{
  _Block_release(*(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22B11A88C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B11A8CC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_22B11A904()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_0(v0 + 6);
  v3 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_22B11A954()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B11A98C()
{
  v1 = sub_22B35DF1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_22B11AA70()
{
  _Block_release(*(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22B11AAD0()
{
  _Block_release(*(v0 + 96));

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_22B11AB38()
{
  _Block_release(*(v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_22B11ABBC()
{
  _Block_release(*(v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_22B11AC34()
{
  _Block_release(*(v0 + 112));

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_22B11ACD4()
{
  _Block_release(*(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22B11AD40()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B11B064()
{
  v1 = sub_22B35DF1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_22B35DE9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v13 = *(v0 + v11);

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v10 | 7);
}

uint64_t sub_22B11B230()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3E8, &unk_22B364790) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 32);

  v7 = sub_22B35D8BC();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v9 + 8);

  v11 = *(v0 + v9 + 24);

  v12 = *(v0 + v9 + 40);

  v13 = *(v0 + v9 + 56);

  return MEMORY[0x2821FE8E8](v0, v9 + 65, v2 | 7);
}

uint64_t sub_22B11B388()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_22B11B3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22B11B4A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B11B56C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B11B5AC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B11B5E4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B11B638()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA408, &unk_22B3648E8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for SessionKey(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = v3 | v7;
  v10 = *(*v6 + 64) + v8;
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();
  v12 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v13 = sub_22B35DF1C();
  v14 = *(*(v13 - 8) + 8);
  v14(v0 + v8, v13);
  v14(v0 + v8 + v6[7], v13);
  v15 = *(v0 + v8 + v6[8] + 8);

  v16 = *(v0 + v8 + v6[9] + 8);

  v17 = *(v0 + v8 + v6[10] + 8);

  v14(v0 + v8 + v6[11], v13);

  return MEMORY[0x2821FE8E8](v0, v10 + 1, v9 | 7);
}

uint64_t sub_22B11B81C()
{
  v1 = (type metadata accessor for SessionKey(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = v3 + *(*v1 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = *(v0 + 16);

  v10 = v0 + v3;
  v11 = sub_22B35DF1C();
  v12 = *(*(v11 - 8) + 8);
  v12(v10, v11);
  v12(v10 + v1[7], v11);
  v13 = *(v10 + v1[8] + 8);

  v14 = *(v10 + v1[9] + 8);

  v15 = *(v10 + v1[10] + 8);

  v12(v10 + v1[11], v11);
  v16 = sub_22B35DE9C();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v0 + v7, 1, v16))
  {
    (*(v17 + 8))(v0 + v7, v16);
  }

  v18 = (v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 31) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v0 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));

  return MEMORY[0x2821FE8E8](v0, v19 + 8, v2 | v6 | 7);
}

uint64_t sub_22B11BA80()
{
  v1 = sub_22B35DF1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_22B35DE9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_22B11BC1C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B11BC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22B35DE9C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22B35DF1C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_22B11BD6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22B35DE9C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22B35DF1C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22B11BE78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22B35DF1C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22B11BF38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22B35DF1C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22B11BFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22B35DF1C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_22B35DE9C();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 36);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_22B11C11C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22B35DF1C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_22B35DE9C();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22B11C260()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_22B11C298()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22B11C2E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_22B11C3C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 2;
  }

  return result;
}

uint64_t sub_22B11C488()
{
  v1 = sub_22B35DF1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22B11C534()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B11C56C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B11C644()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B11C69C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B11C6DC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B11C724()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B11C764()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B11C7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22B35DE9C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_22B11C870(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22B35DE9C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22B11C930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22B35DE9C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_22B11CA60(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_22B35DE9C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22B11CBCC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B11CC1C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B11CC74()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B11CCB4()
{
  v1 = sub_22B35DE9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 42) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;

  v9 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = *(v0 + v5 + 8);

  v11 = *(v0 + v6 + 8);

  v12 = *(v0 + v7 + 8);

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v3 | 7);
}

uint64_t sub_22B11CDE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22B35DE9C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22B11CE8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22B35DE9C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B11CF40()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B11CF90()
{
  v1 = sub_22B35DE9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22B11D034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22B35DE9C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22B11D0E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22B35DE9C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B11D184()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_22B11D1C0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  v3 = v0[11];

  v4 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_22B11D21C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_22B11D27C()
{
  v1 = sub_22B35DE9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 152) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 2);
  swift_unknownObjectRelease();
  v13 = *(v0 + 4);

  v14 = *(v0 + 6);

  v15 = *(v0 + 8);

  v16 = *(v0 + 10);

  v17 = *(v0 + 12);

  v18 = *(v0 + 14);

  v19 = *(v0 + 16);

  v20 = *(v0 + 18);

  (*(v2 + 8))(&v0[v4], v1);
  (*(v7 + 8))(&v0[v9], v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_22B11D420()
{
  v1 = sub_22B35DE9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 136) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D8, &qword_22B366238);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 2);
  swift_unknownObjectRelease();
  v13 = *(v0 + 4);

  v14 = *(v0 + 6);

  v15 = *(v0 + 8);

  v16 = *(v0 + 10);

  v17 = *(v0 + 12);

  v18 = *(v0 + 14);

  v19 = *(v0 + 16);

  (*(v2 + 8))(&v0[v4], v1);
  (*(v7 + 8))(&v0[v9], v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_22B11D5BC()
{
  MEMORY[0x23188F730](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B11D5F8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22B11D648()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B11D688()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B11D720()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B11D768()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_22B11D7D0()
{
  v1 = sub_22B35DE9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 90) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);

  v7 = *(v0 + 4);

  v8 = *(v0 + 6);

  v9 = *(v0 + 8);

  v10 = *(v0 + 10);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B11D8B8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B11D900()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B11D940()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B11D97C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_22B11D9B4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B11DA04()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B11DA40()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B11DA8C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B11DAE4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD60, &unk_22B366F18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  v7 = *(v0 + 40);

  v8 = *(v0 + 64);

  v9 = *(v0 + 80);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B11DBE4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_22B35DE9C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_22B35FEFC();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v13 = sub_22B35FF1C();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v15 = sub_22B35FEDC();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[10];

  return v16(v17, a2, v15);
}

uint64_t sub_22B11DD98(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_22B35DE9C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_22B35FEFC();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v13 = sub_22B35FF1C();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v15 = sub_22B35FEDC();
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_22B11DF64()
{
  v1 = sub_22B35DF1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_22B35DE9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v13 = *(v0 + v11);

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v10 | 7);
}

uint64_t sub_22B11E21C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B11E254()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B11E290()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B11E2D8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22B11E330()
{
  v1 = sub_22B35DE9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 168) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  v7 = *(v0 + 40);

  v8 = *(v0 + 64);

  v9 = *(v0 + 80);

  sub_22B12F174(*(v0 + 88), *(v0 + 96));
  sub_22B12F174(*(v0 + 104), *(v0 + 112));
  v10 = *(v0 + 128);

  v11 = *(v0 + 144);

  v12 = *(v0 + 160);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22B11E458()
{
  v1 = sub_22B35DE9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  sub_22B12F174(*(v0 + v5), *(v0 + v5 + 8));
  sub_22B12F174(*(v0 + v6), *(v0 + v6 + 8));

  return MEMORY[0x2821FE8E8](v0, ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_22B11E570()
{
  v1 = sub_22B35DE9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 160) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 32);

  v7 = *(v0 + 56);

  v8 = *(v0 + 72);

  sub_22B12F174(*(v0 + 80), *(v0 + 88));
  sub_22B12F174(*(v0 + 96), *(v0 + 104));
  v9 = *(v0 + 120);

  v10 = *(v0 + 136);

  v11 = *(v0 + 152);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B11E67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22B35DE9C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22B11E728(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22B35DE9C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B11E7F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B11E8E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B11E9EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BB078, &qword_22B3677B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22B11EAA8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B11EAE8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B11EB28()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B11EB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22B35DF1C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_22B35DE9C();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 48);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_22B11EC98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22B35DF1C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_22B35DE9C();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 48);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22B11EDC0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22B12F174(a1, a2);
  }

  return a1;
}

void sub_22B11EE8C()
{
  type metadata accessor for HistoricalUsageEnergyManager();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_22B36081C();
  v3 = [v1 initWithSuiteName_];

  *(v0 + 112) = v3;
  qword_27D8BB198 = v0;
}

uint64_t sub_22B11EF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 240) = v23;
  *(v9 + 248) = v8;
  *(v9 + 232) = v22;
  *(v9 + 216) = v21;
  *(v9 + 200) = a7;
  *(v9 + 208) = a8;
  *(v9 + 184) = a5;
  *(v9 + 192) = a6;
  *(v9 + 168) = a3;
  *(v9 + 176) = a4;
  *(v9 + 152) = a1;
  *(v9 + 160) = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA078, &unk_22B362BB0);
  *(v9 + 256) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v9 + 264) = swift_task_alloc();
  *(v9 + 272) = swift_task_alloc();
  *(v9 + 280) = swift_task_alloc();
  *(v9 + 288) = swift_task_alloc();
  *(v9 + 296) = swift_task_alloc();
  *(v9 + 304) = swift_task_alloc();
  *(v9 + 312) = swift_task_alloc();
  *(v9 + 320) = swift_task_alloc();
  *(v9 + 328) = swift_task_alloc();
  *(v9 + 336) = swift_task_alloc();
  *(v9 + 344) = swift_task_alloc();
  *(v9 + 352) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280) - 8) + 64) + 15;
  *(v9 + 360) = swift_task_alloc();
  v13 = sub_22B36052C();
  *(v9 + 368) = v13;
  v14 = *(v13 - 8);
  *(v9 + 376) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 384) = swift_task_alloc();
  *(v9 + 392) = swift_task_alloc();
  *(v9 + 400) = swift_task_alloc();
  *(v9 + 408) = swift_task_alloc();
  *(v9 + 416) = swift_task_alloc();
  *(v9 + 424) = swift_task_alloc();
  *(v9 + 432) = swift_task_alloc();
  *(v9 + 440) = swift_task_alloc();
  *(v9 + 448) = swift_task_alloc();
  *(v9 + 456) = swift_task_alloc();
  *(v9 + 464) = swift_task_alloc();
  *(v9 + 472) = swift_task_alloc();
  *(v9 + 480) = swift_task_alloc();
  v16 = sub_22B35FC0C();
  *(v9 + 488) = v16;
  v17 = *(v16 - 8);
  *(v9 + 496) = v17;
  v18 = *(v17 + 64) + 15;
  *(v9 + 504) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B11F1E8, v8, 0);
}

uint64_t sub_22B11F1E8()
{
  v54 = v0;
  v1 = v0[30];
  if (!v1)
  {
    goto LABEL_15;
  }

  v2 = v0[29] & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (!v2)
  {
    goto LABEL_15;
  }

  v4 = v0[62];
  v3 = v0[63];
  v5 = v0[61];
  v6 = v0[28];
  (*(v4 + 104))(v3, *MEMORY[0x277D074A8], v5);
  sub_22B1233D4(&unk_27D8BA090, MEMORY[0x277D074B8]);
  sub_22B360A1C();
  sub_22B360A1C();
  (*(v4 + 8))(v3, v5);
  if (v0[16] == v0[17])
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v7 = v0[60];
    v8 = v0[46];
    v9 = v0[47];
    v10 = __swift_project_value_buffer(v8, qword_28140BD10);
    v0[64] = v10;
    swift_beginAccess();
    v11 = *(v9 + 16);
    v0[65] = v11;
    v0[66] = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v7, v10, v8);

    v12 = sub_22B36050C();
    v13 = sub_22B360D2C();

    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[60];
    v16 = v0[46];
    v17 = v0[47];
    if (v14)
    {
      v18 = v0[29];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v53 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_22B1A7B20(v18, v1, &v53);
      _os_log_impl(&dword_22B116000, v12, v13, "Asked to filter generation meters for %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x23188F650](v20, -1, -1);
      MEMORY[0x23188F650](v19, -1, -1);
    }

    v21 = *(v17 + 8);
    v21(v15, v16);
    v0[67] = v21;
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v22 = swift_task_alloc();
    v0[68] = v22;
    *v22 = v0;
    v22[1] = sub_22B11FA14;
    v23 = v0[29];

    return sub_22B22250C(v23, v1, 0, 1);
  }

  else
  {
LABEL_15:
    v0[70] = 0;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v25 = v0[56];
    v26 = v0[46];
    v27 = v0[47];
    v28 = v0[20];
    v29 = __swift_project_value_buffer(v26, qword_28140BD10);
    v0[71] = v29;
    swift_beginAccess();
    v30 = *(v27 + 16);
    v0[72] = v30;
    v0[73] = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v30(v25, v29, v26);

    v31 = sub_22B36050C();
    v32 = sub_22B360CFC();

    v33 = os_log_type_enabled(v31, v32);
    v34 = v0[56];
    v35 = v0[46];
    v36 = v0[47];
    if (v33)
    {
      v38 = v0[19];
      v37 = v0[20];
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v53 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_22B1A7B20(v38, v37, &v53);
      _os_log_impl(&dword_22B116000, v31, v32, "Fetching interval readings for %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x23188F650](v40, -1, -1);
      MEMORY[0x23188F650](v39, -1, -1);
    }

    v41 = *(v36 + 8);
    v41(v34, v35);
    v0[74] = v41;
    if (v0[19] == 7954788 && v0[20] == 0xE300000000000000 || (sub_22B36134C() & 1) != 0)
    {
      if (qword_2814099B0 != -1)
      {
        swift_once();
      }

      v42 = v0[28];
      v43 = qword_28140BCF8;
      v0[75] = qword_28140BCF8;
      v0[76] = sub_22B35FBFC();
      v44 = sub_22B120494;
    }

    else
    {
      v45 = v0[20];
      if (v0[19] == 1801807223 && v45 == 0xE400000000000000 || (v46 = v0[20], (sub_22B36134C() & 1) != 0))
      {
        if (qword_2814099B0 != -1)
        {
          swift_once();
        }

        v47 = v0[28];
        v43 = qword_28140BCF8;
        v0[77] = qword_28140BCF8;
        v0[78] = sub_22B35FBFC();
        v44 = sub_22B120C0C;
      }

      else if (v0[19] == 0x68746E6F6DLL && v0[20] == 0xE500000000000000 || (sub_22B36134C() & 1) != 0)
      {
        if (qword_2814099B0 != -1)
        {
          swift_once();
        }

        v48 = v0[28];
        v43 = qword_28140BCF8;
        v0[79] = qword_28140BCF8;
        v0[80] = sub_22B35FBFC();
        v44 = sub_22B120DEC;
      }

      else if (v0[19] == 0x68746E6F4D786973 && v0[20] == 0xE900000000000073 || (sub_22B36134C() & 1) != 0)
      {
        if (qword_2814099B0 != -1)
        {
          swift_once();
        }

        v49 = v0[28];
        v43 = qword_28140BCF8;
        v0[81] = qword_28140BCF8;
        v0[82] = sub_22B35FBFC();
        v44 = sub_22B120FCC;
      }

      else if (v0[19] == 1918985593 && v45 == 0xE400000000000000 || (v50 = v0[20], (sub_22B36134C() & 1) != 0))
      {
        if (qword_2814099B0 != -1)
        {
          swift_once();
        }

        v51 = v0[28];
        v43 = qword_28140BCF8;
        v0[83] = qword_28140BCF8;
        v0[84] = sub_22B35FBFC();
        v44 = sub_22B1216B0;
      }

      else
      {
        if (qword_2814099B0 != -1)
        {
          swift_once();
        }

        v52 = v0[28];
        v43 = qword_28140BCF8;
        v0[85] = qword_28140BCF8;
        v0[86] = sub_22B35FBFC();
        v44 = sub_22B121D94;
      }
    }

    return MEMORY[0x2822009F8](v44, v43, 0);
  }
}

uint64_t sub_22B11FA14(uint64_t a1)
{
  v2 = *(*v1 + 544);
  v3 = *(*v1 + 248);
  v5 = *v1;
  *(*v1 + 552) = a1;

  return MEMORY[0x2822009F8](sub_22B11FB2C, v3, 0);
}

uint64_t sub_22B11FB2C()
{
  v74 = v0;
  v1 = *(v0 + 552);
  if (!v1)
  {
    goto LABEL_23;
  }

  v2 = *(v0 + 552);
  v3 = sub_22B35F18C();
  if (v3)
  {
    v4 = v3;
    if (*(v3 + 16))
    {
      v5 = *(v0 + 528);
      (*(v0 + 520))(*(v0 + 472), *(v0 + 512), *(v0 + 368));

      v6 = sub_22B36050C();
      v7 = sub_22B360D2C();

      v8 = os_log_type_enabled(v6, v7);
      v9 = *(v0 + 536);
      v10 = *(v0 + 472);
      v12 = *(v0 + 368);
      v11 = *(v0 + 376);
      if (v8)
      {
        v71 = *(v0 + 472);
        v13 = swift_slowAlloc();
        v70 = v12;
        v14 = swift_slowAlloc();
        *&v72 = v14;
        *v13 = 136315138;
        v15 = MEMORY[0x23188E390](v4, MEMORY[0x277D837D0]);
        v69 = v9;
        v17 = sub_22B1A7B20(v15, v16, &v72);

        *(v13 + 4) = v17;
        v18 = "Site has generation meters: %s";
LABEL_18:
        _os_log_impl(&dword_22B116000, v6, v7, v18, v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x23188F650](v14, -1, -1);
        MEMORY[0x23188F650](v13, -1, -1);

        v69(v71, v70);
        goto LABEL_24;
      }

LABEL_19:

      v9(v10, v12);
      goto LABEL_24;
    }
  }

  v19 = *(v0 + 528);
  (*(v0 + 520))(*(v0 + 464), *(v0 + 512), *(v0 + 368));
  v20 = sub_22B36050C();
  v21 = sub_22B360D1C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_22B116000, v20, v21, "Site doesnt have saved generation meters. Check defaults", v22, 2u);
    MEMORY[0x23188F650](v22, -1, -1);
  }

  v23 = *(v0 + 536);
  v24 = *(v0 + 464);
  v25 = *(v0 + 368);
  v26 = *(v0 + 376);
  v27 = *(v0 + 248);

  v23(v24, v25);
  v28 = *(v27 + 112);
  if (!v28)
  {

    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
LABEL_21:
    sub_22B123284(v0 + 16, &unk_27D8BA950, &qword_22B364940);
    goto LABEL_23;
  }

  v29 = *(v0 + 232);
  v30 = *(v0 + 240);
  *&v72 = 0x6953796772656E65;
  *(&v72 + 1) = 0xEB000000002D6574;
  MEMORY[0x23188E270](v29, v30);

  MEMORY[0x23188E270](5064493, 0xE300000000000000);

  v31 = sub_22B36081C();

  v32 = [v28 valueForKey_];

  if (v32)
  {
    sub_22B36102C();
    swift_unknownObjectRelease();
  }

  else
  {
    v72 = 0u;
    v73 = 0u;
  }

  v33 = v73;
  *(v0 + 16) = v72;
  *(v0 + 32) = v33;
  if (!*(v0 + 40))
  {

    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
  if (swift_dynamicCast())
  {
    v34 = *(v0 + 528);
    v4 = *(v0 + 144);
    (*(v0 + 520))(*(v0 + 456), *(v0 + 512), *(v0 + 368));

    v6 = sub_22B36050C();
    v7 = sub_22B360D2C();

    v35 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 536);
    v10 = *(v0 + 456);
    v12 = *(v0 + 368);
    v36 = *(v0 + 376);
    if (v35)
    {
      v71 = *(v0 + 456);
      v13 = swift_slowAlloc();
      v70 = v12;
      v14 = swift_slowAlloc();
      *&v72 = v14;
      *v13 = 136315138;
      v37 = MEMORY[0x23188E390](v4, MEMORY[0x277D837D0]);
      v69 = v9;
      v39 = sub_22B1A7B20(v37, v38, &v72);

      *(v13 + 4) = v39;
      v18 = "Defaults has generation meters %s";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

LABEL_23:
  v4 = 0;
LABEL_24:
  *(v0 + 560) = v4;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v40 = *(v0 + 448);
  v41 = *(v0 + 368);
  v42 = *(v0 + 376);
  v43 = *(v0 + 160);
  v44 = __swift_project_value_buffer(v41, qword_28140BD10);
  *(v0 + 568) = v44;
  swift_beginAccess();
  v45 = *(v42 + 16);
  *(v0 + 576) = v45;
  *(v0 + 584) = (v42 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v45(v40, v44, v41);

  v46 = sub_22B36050C();
  v47 = sub_22B360CFC();

  v48 = os_log_type_enabled(v46, v47);
  v49 = *(v0 + 448);
  v50 = *(v0 + 368);
  v51 = *(v0 + 376);
  if (v48)
  {
    v53 = *(v0 + 152);
    v52 = *(v0 + 160);
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *&v72 = v55;
    *v54 = 136315138;
    *(v54 + 4) = sub_22B1A7B20(v53, v52, &v72);
    _os_log_impl(&dword_22B116000, v46, v47, "Fetching interval readings for %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x23188F650](v55, -1, -1);
    MEMORY[0x23188F650](v54, -1, -1);
  }

  v56 = *(v51 + 8);
  v56(v49, v50);
  *(v0 + 592) = v56;
  if (*(v0 + 152) == 7954788 && *(v0 + 160) == 0xE300000000000000 || (sub_22B36134C() & 1) != 0)
  {
    if (qword_2814099B0 != -1)
    {
      swift_once();
    }

    v57 = *(v0 + 224);
    v58 = qword_28140BCF8;
    *(v0 + 600) = qword_28140BCF8;
    *(v0 + 608) = sub_22B35FBFC();
    v59 = sub_22B120494;
  }

  else
  {
    v60 = *(v0 + 160);
    if (*(v0 + 152) == 1801807223 && v60 == 0xE400000000000000 || (v61 = *(v0 + 160), (sub_22B36134C() & 1) != 0))
    {
      if (qword_2814099B0 != -1)
      {
        swift_once();
      }

      v62 = *(v0 + 224);
      v58 = qword_28140BCF8;
      *(v0 + 616) = qword_28140BCF8;
      *(v0 + 624) = sub_22B35FBFC();
      v59 = sub_22B120C0C;
    }

    else if (*(v0 + 152) == 0x68746E6F6DLL && *(v0 + 160) == 0xE500000000000000 || (sub_22B36134C() & 1) != 0)
    {
      if (qword_2814099B0 != -1)
      {
        swift_once();
      }

      v63 = *(v0 + 224);
      v58 = qword_28140BCF8;
      *(v0 + 632) = qword_28140BCF8;
      *(v0 + 640) = sub_22B35FBFC();
      v59 = sub_22B120DEC;
    }

    else if (*(v0 + 152) == 0x68746E6F4D786973 && *(v0 + 160) == 0xE900000000000073 || (sub_22B36134C() & 1) != 0)
    {
      if (qword_2814099B0 != -1)
      {
        swift_once();
      }

      v64 = *(v0 + 224);
      v58 = qword_28140BCF8;
      *(v0 + 648) = qword_28140BCF8;
      *(v0 + 656) = sub_22B35FBFC();
      v59 = sub_22B120FCC;
    }

    else if (*(v0 + 152) == 1918985593 && v60 == 0xE400000000000000 || (v65 = *(v0 + 160), (sub_22B36134C() & 1) != 0))
    {
      if (qword_2814099B0 != -1)
      {
        swift_once();
      }

      v66 = *(v0 + 224);
      v58 = qword_28140BCF8;
      *(v0 + 664) = qword_28140BCF8;
      *(v0 + 672) = sub_22B35FBFC();
      v59 = sub_22B1216B0;
    }

    else
    {
      if (qword_2814099B0 != -1)
      {
        swift_once();
      }

      v67 = *(v0 + 224);
      v58 = qword_28140BCF8;
      *(v0 + 680) = qword_28140BCF8;
      *(v0 + 688) = sub_22B35FBFC();
      v59 = sub_22B121D94;
    }
  }

  return MEMORY[0x2822009F8](v59, v58, 0);
}

uint64_t sub_22B120494()
{
  v1 = *(v0 + 360);
  sub_22B35E07C();
  v2 = sub_22B35E0BC();
  v79 = *(v2 - 8);
  v81 = v2;
  result = (*(v79 + 48))(v1, 1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v74 = *(v0 + 576);
    v77 = *(v0 + 584);
    v71 = *(v0 + 568);
    v4 = *(v0 + 440);
    v5 = *(v0 + 368);
    v6 = *(v0 + 352);
    v7 = *(v0 + 256);
    v9 = *(v0 + 168);
    v8 = *(v0 + 176);
    v10 = sub_22B35DE9C();
    v69 = *(v10 - 8);
    v11 = *(v69 + 16);
    v11(v6, v9, v10);
    v64 = v11;
    v66 = v7;
    v11(v6 + *(v7 + 48), v8, v10);
    v74(v4, v71, v5);
    v12 = sub_22B36050C();
    v13 = sub_22B360D2C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22B116000, v12, v13, "Get interval readings", v14, 2u);
      MEMORY[0x23188F650](v14, -1, -1);
    }

    v15 = *(v0 + 600);
    v16 = *(v0 + 592);
    v17 = *(v0 + 440);
    v19 = *(v0 + 368);
    v18 = *(v0 + 376);

    v16(v17, v19);
    v20 = *(v15 + 112);
    if (v20 && (v21 = v10, (v22 = *(*(v0 + 600) + 128)) != 0))
    {
      v52 = *(v15 + 120);
      v58 = *(v0 + 608);
      v60 = *(v0 + 560);
      v62 = *(v0 + 360);
      v23 = *(v0 + 336);
      v24 = *(v0 + 344);
      v54 = *(v0 + 184);
      v56 = *(v0 + 200);
      sub_22B123130(*(v0 + 352), v24);
      v25 = v66;
      v26 = *(v66 + 48);
      v64(v23, v24, v21);
      v72 = v26;
      v75 = v24;
      v67 = v21;
      v64(v23 + *(v25 + 48), v24 + v26, v21);
      sub_22B1231A0(v20, v52);
      v27 = v22;
      v28 = MEMORY[0x23188EEB0]();
      *(v0 + 120) = MEMORY[0x277D84F98];
      v29 = swift_task_alloc();
      *(v29 + 16) = v27;
      *(v29 + 24) = v54;
      *(v29 + 40) = v56;
      *(v29 + 56) = v58;
      *(v29 + 64) = v23;
      *(v29 + 72) = v60;
      *(v29 + 80) = 0;
      *(v29 + 88) = v62;
      *(v29 + 96) = v0 + 120;
      sub_22B360E7C();
      v32 = *(v0 + 560);
      v34 = *(v0 + 344);
      v33 = *(v0 + 352);
      v35 = *(v0 + 336);

      v78 = *(v0 + 120);
      objc_autoreleasePoolPop(v28);

      sub_22B123284(v33, &qword_27D8BA078, &unk_22B362BB0);
      sub_22B123284(v35, &qword_27D8BA078, &unk_22B362BB0);
      v36 = *(v69 + 8);
      v36(v75 + v72, v67);
      v36(v34, v67);
    }

    else
    {
      v30 = *(v0 + 560);
      v31 = *(v0 + 352);

      sub_22B123284(v31, &qword_27D8BA078, &unk_22B362BB0);
      v78 = 0;
    }

    (*(v79 + 8))(*(v0 + 360), v81);
    v37 = *(v0 + 504);
    v38 = *(v0 + 472);
    v39 = *(v0 + 480);
    v41 = *(v0 + 456);
    v40 = *(v0 + 464);
    v43 = *(v0 + 440);
    v42 = *(v0 + 448);
    v45 = *(v0 + 424);
    v44 = *(v0 + 432);
    v46 = *(v0 + 416);
    v48 = *(v0 + 408);
    v49 = *(v0 + 400);
    v50 = *(v0 + 392);
    v51 = *(v0 + 384);
    v53 = *(v0 + 360);
    v55 = *(v0 + 352);
    v57 = *(v0 + 344);
    v59 = *(v0 + 336);
    v61 = *(v0 + 328);
    v63 = *(v0 + 320);
    v65 = *(v0 + 312);
    v68 = *(v0 + 304);
    v70 = *(v0 + 296);
    v73 = *(v0 + 288);
    v76 = *(v0 + 280);
    v80 = *(v0 + 272);
    v82 = *(v0 + 264);

    v47 = *(v0 + 8);

    return v47(v78);
  }

  return result;
}

uint64_t sub_22B120C0C()
{
  v1 = *(v0 + 616);
  v31 = sub_22B221448(*(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 168), *(v0 + 176), *(v0 + 216), *(v0 + 624), *(v0 + 560));

  v2 = *(v0 + 504);
  v3 = *(v0 + 472);
  v4 = *(v0 + 480);
  v6 = *(v0 + 456);
  v5 = *(v0 + 464);
  v8 = *(v0 + 440);
  v7 = *(v0 + 448);
  v10 = *(v0 + 424);
  v9 = *(v0 + 432);
  v11 = *(v0 + 416);
  v14 = *(v0 + 408);
  v15 = *(v0 + 400);
  v16 = *(v0 + 392);
  v17 = *(v0 + 384);
  v18 = *(v0 + 360);
  v19 = *(v0 + 352);
  v20 = *(v0 + 344);
  v21 = *(v0 + 336);
  v22 = *(v0 + 328);
  v23 = *(v0 + 320);
  v24 = *(v0 + 312);
  v25 = *(v0 + 304);
  v26 = *(v0 + 296);
  v27 = *(v0 + 288);
  v28 = *(v0 + 280);
  v29 = *(v0 + 272);
  v30 = *(v0 + 264);

  v12 = *(v0 + 8);

  return v12(v31);
}

uint64_t sub_22B120DEC()
{
  v1 = *(v0 + 632);
  v31 = sub_22B221448(*(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 168), *(v0 + 176), *(v0 + 216), *(v0 + 640), *(v0 + 560));

  v2 = *(v0 + 504);
  v3 = *(v0 + 472);
  v4 = *(v0 + 480);
  v6 = *(v0 + 456);
  v5 = *(v0 + 464);
  v8 = *(v0 + 440);
  v7 = *(v0 + 448);
  v10 = *(v0 + 424);
  v9 = *(v0 + 432);
  v11 = *(v0 + 416);
  v14 = *(v0 + 408);
  v15 = *(v0 + 400);
  v16 = *(v0 + 392);
  v17 = *(v0 + 384);
  v18 = *(v0 + 360);
  v19 = *(v0 + 352);
  v20 = *(v0 + 344);
  v21 = *(v0 + 336);
  v22 = *(v0 + 328);
  v23 = *(v0 + 320);
  v24 = *(v0 + 312);
  v25 = *(v0 + 304);
  v26 = *(v0 + 296);
  v27 = *(v0 + 288);
  v28 = *(v0 + 280);
  v29 = *(v0 + 272);
  v30 = *(v0 + 264);

  v12 = *(v0 + 8);

  return v12(v31);
}

uint64_t sub_22B120FCC()
{
  v75 = *(v0 + 576);
  v78 = *(v0 + 584);
  v73 = *(v0 + 568);
  v1 = *(v0 + 424);
  v2 = *(v0 + 368);
  v3 = *(v0 + 328);
  v4 = *(v0 + 256);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = sub_22B35DE9C();
  v71 = *(v7 - 8);
  v8 = *(v71 + 16);
  v8(v3, v5, v7);
  v68 = v4;
  v65 = v8;
  v8(v3 + *(v4 + 48), v6, v7);
  v75(v1, v73, v2);
  v9 = sub_22B36050C();
  v10 = sub_22B360D2C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_22B116000, v9, v10, "Get interval readings", v11, 2u);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  v12 = *(v0 + 648);
  v13 = *(v0 + 592);
  v14 = *(v0 + 424);
  v15 = *(v0 + 368);
  v16 = *(v0 + 376);

  v13(v14, v15);
  v17 = *(v12 + 112);
  if (v17 && (v18 = v7, (v19 = *(*(v0 + 648) + 128)) != 0))
  {
    v53 = *(v12 + 120);
    v61 = *(v0 + 656);
    v63 = *(v0 + 560);
    v20 = *(v0 + 320);
    v21 = *(v0 + 312);
    v59 = *(v0 + 216);
    v55 = *(v0 + 184);
    v57 = *(v0 + 200);
    sub_22B123130(*(v0 + 328), v20);
    v22 = *(v68 + 48);
    v65(v21, v20, v18);
    v23 = *(v68 + 48);
    v24 = v17;
    v25 = v21;
    v76 = v20;
    v69 = v22;
    v65(v21 + v23, v20 + v22, v18);
    sub_22B1231A0(v24, v53);
    v26 = v19;
    v27 = MEMORY[0x23188EEB0]();
    *(v0 + 112) = MEMORY[0x277D84F98];
    v28 = swift_task_alloc();
    *(v28 + 16) = v26;
    *(v28 + 24) = v55;
    *(v28 + 40) = v57;
    *(v28 + 56) = v61;
    *(v28 + 64) = v25;
    *(v28 + 72) = v63;
    *(v28 + 80) = 2;
    *(v28 + 88) = v59;
    *(v28 + 96) = v0 + 112;
    sub_22B360E7C();
    v31 = *(v0 + 560);
    v32 = *(v0 + 328);
    v66 = *(v0 + 320);
    v33 = *(v0 + 312);

    v79 = *(v0 + 112);
    objc_autoreleasePoolPop(v27);

    sub_22B123284(v32, &qword_27D8BA078, &unk_22B362BB0);
    sub_22B123284(v33, &qword_27D8BA078, &unk_22B362BB0);
    v34 = *(v71 + 8);
    v34(v76 + v69, v18);
    v34(v66, v18);
  }

  else
  {
    v29 = *(v0 + 560);
    v30 = *(v0 + 328);

    sub_22B123284(v30, &qword_27D8BA078, &unk_22B362BB0);
    v79 = 0;
  }

  v35 = *(v0 + 504);
  v36 = *(v0 + 472);
  v37 = *(v0 + 480);
  v39 = *(v0 + 456);
  v38 = *(v0 + 464);
  v41 = *(v0 + 440);
  v40 = *(v0 + 448);
  v43 = *(v0 + 424);
  v42 = *(v0 + 432);
  v44 = *(v0 + 416);
  v47 = *(v0 + 408);
  v48 = *(v0 + 400);
  v49 = *(v0 + 392);
  v50 = *(v0 + 384);
  v51 = *(v0 + 360);
  v52 = *(v0 + 352);
  v54 = *(v0 + 344);
  v56 = *(v0 + 336);
  v58 = *(v0 + 328);
  v60 = *(v0 + 320);
  v62 = *(v0 + 312);
  v64 = *(v0 + 304);
  v67 = *(v0 + 296);
  v70 = *(v0 + 288);
  v72 = *(v0 + 280);
  v74 = *(v0 + 272);
  v77 = *(v0 + 264);

  v45 = *(v0 + 8);

  return v45(v79);
}

uint64_t sub_22B1216B0()
{
  v75 = *(v0 + 576);
  v78 = *(v0 + 584);
  v73 = *(v0 + 568);
  v1 = *(v0 + 408);
  v2 = *(v0 + 368);
  v3 = *(v0 + 304);
  v4 = *(v0 + 256);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = sub_22B35DE9C();
  v71 = *(v7 - 8);
  v8 = *(v71 + 16);
  v8(v3, v5, v7);
  v68 = v4;
  v65 = v8;
  v8(v3 + *(v4 + 48), v6, v7);
  v75(v1, v73, v2);
  v9 = sub_22B36050C();
  v10 = sub_22B360D2C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_22B116000, v9, v10, "Get interval readings", v11, 2u);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  v12 = *(v0 + 664);
  v13 = *(v0 + 592);
  v14 = *(v0 + 408);
  v15 = *(v0 + 368);
  v16 = *(v0 + 376);

  v13(v14, v15);
  v17 = *(v12 + 112);
  if (v17 && (v18 = v7, (v19 = *(*(v0 + 664) + 128)) != 0))
  {
    v53 = *(v12 + 120);
    v61 = *(v0 + 672);
    v63 = *(v0 + 560);
    v20 = *(v0 + 296);
    v21 = *(v0 + 288);
    v59 = *(v0 + 216);
    v55 = *(v0 + 184);
    v57 = *(v0 + 200);
    sub_22B123130(*(v0 + 304), v20);
    v22 = *(v68 + 48);
    v65(v21, v20, v18);
    v23 = *(v68 + 48);
    v24 = v17;
    v25 = v21;
    v76 = v20;
    v69 = v22;
    v65(v21 + v23, v20 + v22, v18);
    sub_22B1231A0(v24, v53);
    v26 = v19;
    v27 = MEMORY[0x23188EEB0]();
    *(v0 + 104) = MEMORY[0x277D84F98];
    v28 = swift_task_alloc();
    *(v28 + 16) = v26;
    *(v28 + 24) = v55;
    *(v28 + 40) = v57;
    *(v28 + 56) = v61;
    *(v28 + 64) = v25;
    *(v28 + 72) = v63;
    *(v28 + 80) = 3;
    *(v28 + 88) = v59;
    *(v28 + 96) = v0 + 104;
    sub_22B360E7C();
    v31 = *(v0 + 560);
    v32 = *(v0 + 304);
    v66 = *(v0 + 296);
    v33 = *(v0 + 288);

    v79 = *(v0 + 104);
    objc_autoreleasePoolPop(v27);

    sub_22B123284(v32, &qword_27D8BA078, &unk_22B362BB0);
    sub_22B123284(v33, &qword_27D8BA078, &unk_22B362BB0);
    v34 = *(v71 + 8);
    v34(v76 + v69, v18);
    v34(v66, v18);
  }

  else
  {
    v29 = *(v0 + 560);
    v30 = *(v0 + 304);

    sub_22B123284(v30, &qword_27D8BA078, &unk_22B362BB0);
    v79 = 0;
  }

  v35 = *(v0 + 504);
  v36 = *(v0 + 472);
  v37 = *(v0 + 480);
  v39 = *(v0 + 456);
  v38 = *(v0 + 464);
  v41 = *(v0 + 440);
  v40 = *(v0 + 448);
  v43 = *(v0 + 424);
  v42 = *(v0 + 432);
  v44 = *(v0 + 416);
  v47 = *(v0 + 408);
  v48 = *(v0 + 400);
  v49 = *(v0 + 392);
  v50 = *(v0 + 384);
  v51 = *(v0 + 360);
  v52 = *(v0 + 352);
  v54 = *(v0 + 344);
  v56 = *(v0 + 336);
  v58 = *(v0 + 328);
  v60 = *(v0 + 320);
  v62 = *(v0 + 312);
  v64 = *(v0 + 304);
  v67 = *(v0 + 296);
  v70 = *(v0 + 288);
  v72 = *(v0 + 280);
  v74 = *(v0 + 272);
  v77 = *(v0 + 264);

  v45 = *(v0 + 8);

  return v45(v79);
}

uint64_t sub_22B121D94()
{
  v75 = *(v0 + 576);
  v78 = *(v0 + 584);
  v73 = *(v0 + 568);
  v1 = *(v0 + 392);
  v2 = *(v0 + 368);
  v3 = *(v0 + 280);
  v4 = *(v0 + 256);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = sub_22B35DE9C();
  v71 = *(v7 - 8);
  v8 = *(v71 + 16);
  v8(v3, v5, v7);
  v68 = v4;
  v65 = v8;
  v8(v3 + *(v4 + 48), v6, v7);
  v75(v1, v73, v2);
  v9 = sub_22B36050C();
  v10 = sub_22B360D2C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_22B116000, v9, v10, "Get interval readings", v11, 2u);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  v12 = *(v0 + 680);
  v13 = *(v0 + 592);
  v14 = *(v0 + 392);
  v15 = *(v0 + 368);
  v16 = *(v0 + 376);

  v13(v14, v15);
  v17 = *(v12 + 112);
  if (v17 && (v18 = v7, (v19 = *(*(v0 + 680) + 128)) != 0))
  {
    v53 = *(v12 + 120);
    v61 = *(v0 + 688);
    v63 = *(v0 + 560);
    v20 = *(v0 + 272);
    v21 = *(v0 + 264);
    v59 = *(v0 + 216);
    v55 = *(v0 + 184);
    v57 = *(v0 + 200);
    sub_22B123130(*(v0 + 280), v20);
    v22 = *(v68 + 48);
    v65(v21, v20, v18);
    v23 = *(v68 + 48);
    v24 = v17;
    v25 = v21;
    v76 = v20;
    v69 = v22;
    v65(v21 + v23, v20 + v22, v18);
    sub_22B1231A0(v24, v53);
    v26 = v19;
    v27 = MEMORY[0x23188EEB0]();
    *(v0 + 96) = MEMORY[0x277D84F98];
    v28 = swift_task_alloc();
    *(v28 + 16) = v26;
    *(v28 + 24) = v55;
    *(v28 + 40) = v57;
    *(v28 + 56) = v61;
    *(v28 + 64) = v25;
    *(v28 + 72) = v63;
    *(v28 + 80) = 3;
    *(v28 + 88) = v59;
    *(v28 + 96) = v0 + 96;
    sub_22B360E7C();
    v31 = *(v0 + 560);
    v32 = *(v0 + 280);
    v66 = *(v0 + 272);
    v33 = *(v0 + 264);

    v79 = *(v0 + 96);
    objc_autoreleasePoolPop(v27);

    sub_22B123284(v32, &qword_27D8BA078, &unk_22B362BB0);
    sub_22B123284(v33, &qword_27D8BA078, &unk_22B362BB0);
    v34 = *(v71 + 8);
    v34(v76 + v69, v18);
    v34(v66, v18);
  }

  else
  {
    v29 = *(v0 + 560);
    v30 = *(v0 + 280);

    sub_22B123284(v30, &qword_27D8BA078, &unk_22B362BB0);
    v79 = 0;
  }

  v35 = *(v0 + 504);
  v36 = *(v0 + 472);
  v37 = *(v0 + 480);
  v39 = *(v0 + 456);
  v38 = *(v0 + 464);
  v41 = *(v0 + 440);
  v40 = *(v0 + 448);
  v43 = *(v0 + 424);
  v42 = *(v0 + 432);
  v44 = *(v0 + 416);
  v47 = *(v0 + 408);
  v48 = *(v0 + 400);
  v49 = *(v0 + 392);
  v50 = *(v0 + 384);
  v51 = *(v0 + 360);
  v52 = *(v0 + 352);
  v54 = *(v0 + 344);
  v56 = *(v0 + 336);
  v58 = *(v0 + 328);
  v60 = *(v0 + 320);
  v62 = *(v0 + 312);
  v64 = *(v0 + 304);
  v67 = *(v0 + 296);
  v70 = *(v0 + 288);
  v72 = *(v0 + 280);
  v74 = *(v0 + 272);
  v77 = *(v0 + 264);

  v45 = *(v0 + 8);

  return v45(v79);
}

uint64_t sub_22B122478()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22B1224E0(uint64_t a1)
{
  v2 = sub_22B1233D4(&qword_281408628, type metadata accessor for CKError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22B12254C(uint64_t a1)
{
  v2 = sub_22B1233D4(&qword_281408628, type metadata accessor for CKError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22B1225B8(uint64_t a1)
{
  v2 = sub_22B1233D4(&qword_281408620, type metadata accessor for CKError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_22B122624()
{
  v1 = *v0;
  v2 = sub_22B36084C();
  v3 = MEMORY[0x23188E2F0](v2);

  return v3;
}

uint64_t sub_22B122660()
{
  v1 = *v0;
  sub_22B36084C();
  sub_22B3608FC();
}

uint64_t sub_22B1226B4()
{
  v1 = *v0;
  sub_22B36084C();
  sub_22B36149C();
  sub_22B3608FC();
  v2 = sub_22B3614DC();

  return v2;
}

uint64_t sub_22B122728(uint64_t a1, id *a2)
{
  result = sub_22B36082C();
  *a2 = 0;
  return result;
}

uint64_t sub_22B1227A0(uint64_t a1, id *a2)
{
  v3 = sub_22B36083C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_22B122820@<X0>(uint64_t *a1@<X8>)
{
  sub_22B36084C();
  v2 = sub_22B36081C();

  *a1 = v2;
  return result;
}

uint64_t sub_22B122874(uint64_t a1)
{
  v2 = sub_22B1233D4(&qword_281408620, type metadata accessor for CKError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_22B1228E0(uint64_t a1)
{
  v2 = sub_22B1233D4(&qword_281408620, type metadata accessor for CKError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_22B12294C(void *a1, uint64_t a2)
{
  v4 = sub_22B1233D4(&qword_281408620, type metadata accessor for CKError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_22B1229DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B1233D4(&qword_281408620, type metadata accessor for CKError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_22B122A68(uint64_t a1)
{
  v2 = sub_22B1233D4(&qword_27D8BA0E8, type metadata accessor for BGSystemTaskSchedulerError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_22B122AD4(uint64_t a1)
{
  v2 = sub_22B1233D4(&qword_27D8BA0E8, type metadata accessor for BGSystemTaskSchedulerError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_22B122B40(void *a1, uint64_t a2)
{
  v4 = sub_22B1233D4(&qword_27D8BA0E8, type metadata accessor for BGSystemTaskSchedulerError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_22B122BD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B1233D4(&qword_27D8BA0E8, type metadata accessor for BGSystemTaskSchedulerError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_22B122C4C()
{
  v2 = *v0;
  sub_22B36149C();
  sub_22B36072C();
  return sub_22B3614DC();
}

uint64_t sub_22B122CAC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_22B36084C();
  v6 = v5;
  if (v4 == sub_22B36084C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22B36134C();
  }

  return v9 & 1;
}

uint64_t sub_22B122D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22B1233D4(&qword_281408620, type metadata accessor for CKError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_22B122DB8(uint64_t a1)
{
  v2 = sub_22B1233D4(&qword_27D8BA0F0, type metadata accessor for BGSystemTaskSchedulerError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22B122E24(uint64_t a1)
{
  v2 = sub_22B1233D4(&qword_27D8BA0F0, type metadata accessor for BGSystemTaskSchedulerError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22B122E90(uint64_t a1)
{
  v2 = sub_22B1233D4(&qword_27D8BA0E8, type metadata accessor for BGSystemTaskSchedulerError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_22B122EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22B1233D4(&qword_27D8BA0E8, type metadata accessor for BGSystemTaskSchedulerError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_22B122F80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22B36081C();

  *a2 = v5;
  return result;
}

uint64_t sub_22B122FC8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_22B36084C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_22B122FF4(uint64_t a1)
{
  v2 = sub_22B1233D4(&qword_2814092D8, type metadata accessor for FileAttributeKey);
  v3 = sub_22B1233D4(&unk_27D8BA130, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_22B123130(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA078, &unk_22B362BB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_22B1231A0(id result, void *a2)
{
  if (result)
  {

    return a2;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_22B123284(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22B1232F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B123314(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_22B1233D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22B123628()
{
  result = qword_281408630;
  if (!qword_281408630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281408630);
  }

  return result;
}

void sub_22B1237F8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_22B123A50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_22B360B6C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_22B360B1C();

  v9 = sub_22B360B0C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = a1;
  v10[5] = a2;
  sub_22B123DF0(0, 0, v7, &unk_22B363348, v10);
}

uint64_t sub_22B123B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_22B36052C();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  sub_22B360B1C();
  v5[10] = sub_22B360B0C();
  v10 = sub_22B360ACC();

  return MEMORY[0x2822009F8](sub_22B123C6C, v10, v9);
}

uint64_t sub_22B123C6C()
{
  v1 = v0[10];
  v2 = v0[5];
  v3 = v0[6];

  v2(v4);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  v8 = __swift_project_value_buffer(v7, qword_28140BD10);
  swift_beginAccess();
  (*(v6 + 16))(v5, v8, v7);
  v9 = sub_22B36050C();
  v10 = sub_22B360D1C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_22B116000, v9, v10, "[EagerExit] Attempting eager exit", v11, 2u);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  v13 = v0[8];
  v12 = v0[9];
  v14 = v0[7];

  (*(v13 + 8))(v12, v14);
  xpc_transaction_exit_clean();

  v15 = v0[1];

  return v15();
}

uint64_t sub_22B123DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_22B124BA8(a3, v26 - v10);
  v12 = sub_22B360B6C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22B118DDC(v11);
  }

  else
  {
    sub_22B360B5C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_22B360ACC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_22B3608CC() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_22B118DDC(a3);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22B118DDC(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_22B1240B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_22B124BA8(a3, v26 - v10);
  v12 = sub_22B360B6C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22B118DDC(v11);
  }

  else
  {
    sub_22B360B5C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_22B360ACC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_22B3608CC() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA210, &qword_22B363A20);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_22B118DDC(a3);

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22B118DDC(a3);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA210, &qword_22B363A20);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_22B1243B8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22B1244B0;

  return v7(a1);
}

uint64_t sub_22B1244B0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22B1245A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v35 = a3;
  v4 = sub_22B3605EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22B36062C();
  v37 = *(v9 - 8);
  v10 = *(v37 + 64);
  MEMORY[0x28223BE20](v9);
  v36 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22B36052C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_28140BD10);
  swift_beginAccess();
  (*(v13 + 16))(v16, v17, v12);
  v18 = sub_22B36050C();
  v19 = sub_22B360D1C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v33 = v8;
    v21 = v9;
    v22 = v4;
    v23 = a1;
    v24 = v5;
    v25 = v20;
    *v20 = 0;
    _os_log_impl(&dword_22B116000, v18, v19, "[EagerExit] Eager exit scheduled if transactions are clean", v20, 2u);
    v26 = v25;
    v5 = v24;
    a1 = v23;
    v4 = v22;
    v9 = v21;
    v8 = v33;
    MEMORY[0x23188F650](v26, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  sub_22B11870C();
  v27 = sub_22B360D9C();
  v28 = swift_allocObject();
  v29 = v35;
  *(v28 + 16) = v34;
  *(v28 + 24) = v29;
  aBlock[4] = sub_22B1249DC;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B118A6C;
  aBlock[3] = &block_descriptor;
  v30 = _Block_copy(aBlock);

  v31 = v36;
  sub_22B36060C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22B1249E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA330, &unk_22B363330);
  sub_22B124A3C();
  sub_22B36104C();
  MEMORY[0x23188E6A0](a1, v31, v8, v30);
  _Block_release(v30);

  (*(v5 + 8))(v8, v4);
  return (*(v37 + 8))(v31, v9);
}

unint64_t sub_22B1249E4()
{
  result = qword_281409370;
  if (!qword_281409370)
  {
    sub_22B3605EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281409370);
  }

  return result;
}

unint64_t sub_22B124A3C()
{
  result = qword_281409350;
  if (!qword_281409350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D8BA330, &unk_22B363330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281409350);
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

uint64_t sub_22B124AE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B119A60;

  return sub_22B123B78(a1, v4, v5, v7, v6);
}

uint64_t sub_22B124BA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B124C18(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B124D88;

  return sub_22B1243B8(a1, v5);
}

uint64_t sub_22B124CD0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B119A60;

  return sub_22B119030(a1, v5);
}

void sub_22B124DC0(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_22B36052C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_28140BD10);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);

  v14 = a3;

  v15 = v8;
  v16 = sub_22B36050C();
  v17 = sub_22B360D2C();

  v34 = v17;
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v33 = v15;
    v19 = v18;
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v19 = 136315394;
    v20 = MEMORY[0x23188E390](a4, &type metadata for HomeEnergyEventManager.HomeEnergyEvent);
    v30 = v16;
    v22 = sub_22B1A7B20(v20, v21, aBlock);
    v32 = v12;
    v23 = v22;

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_22B1A7B20(a1, a2, aBlock);
    v24 = v30;
    _os_log_impl(&dword_22B116000, v30, v34, "Registering %s for %s", v19, 0x16u);
    v25 = v31;
    swift_arrayDestroy();
    MEMORY[0x23188F650](v25, -1, -1);
    MEMORY[0x23188F650](v19, -1, -1);

    (*(v9 + 8))(v32, v33);
  }

  else
  {

    (*(v9 + 8))(v12, v15);
  }

  v26 = swift_allocObject();
  v26[2] = a1;
  v26[3] = a2;
  v26[4] = v14;
  v26[5] = a4;
  aBlock[4] = sub_22B12591C;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B12587C;
  aBlock[3] = &block_descriptor_0;
  v27 = _Block_copy(aBlock);

  v28 = v14;

  v29 = sub_22B3608CC();
  xpc_set_event_stream_handler((v29 + 32), v28, v27);

  _Block_release(v27);
}

uint64_t sub_22B125154(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5)
{
  v10 = sub_22B36052C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v71 = &v69 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v69 - v18;
  v20 = sub_22B36053C();
  if (xpc_dictionary_get_string(a1, v20))
  {
    v72 = a4;
    v73 = a3;
    v69 = a2;
    v74 = v11;
    v21 = v10;
    v22 = sub_22B36095C();
    v24 = v23;
    v25 = (a5 + 56);
    v26 = *(a5 + 16) + 1;
    while (--v26)
    {
      v28 = *(v25 - 1);
      v27 = *v25;
      if (*(v25 - 3) != v22 || *(v25 - 2) != v24)
      {
        v25 += 4;
        if ((sub_22B36134C() & 1) == 0)
        {
          continue;
        }
      }

      v30 = qword_28140A0C8;

      if (v30 != -1)
      {
        swift_once();
      }

      v31 = __swift_project_value_buffer(v21, qword_28140BD10);
      swift_beginAccess();
      v32 = *(v74 + 16);
      v70 = v21;
      v32(v19, v31, v21);
      v33 = v73;

      v34 = v72;

      v35 = sub_22B36050C();
      v72 = v19;
      v36 = v35;
      v37 = sub_22B360D2C();

      v71 = v34;

      v38 = v36;

      if (os_log_type_enabled(v36, v37))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v75 = v40;
        *v39 = 136315650;
        *(v39 + 4) = sub_22B1A7B20(v69, v33, &v75);
        *(v39 + 12) = 2080;
        v41 = sub_22B1A7B20(v22, v24, &v75);
        v42 = v37;
        v43 = v41;

        *(v39 + 14) = v43;
        *(v39 + 22) = 2080;
        v44 = sub_22B360DCC();
        v46 = sub_22B1A7B20(v44, v45, &v75);

        *(v39 + 24) = v46;
        _os_log_impl(&dword_22B116000, v38, v42, "(%s) run for %s in Queue %s", v39, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23188F650](v40, -1, -1);
        MEMORY[0x23188F650](v39, -1, -1);
      }

      else
      {
      }

      v68 = (*(v74 + 8))(v72, v70);
      v28(v68);
    }

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v56 = v21;
    v57 = __swift_project_value_buffer(v21, qword_28140BD10);
    swift_beginAccess();
    v58 = v74;
    v59 = v71;
    (*(v74 + 16))(v71, v57, v56);

    v60 = v73;

    v61 = v72;
    v62 = sub_22B36050C();
    v63 = sub_22B360D1C();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v70 = v56;
      v66 = v65;
      v75 = v65;
      *v64 = 136315394;
      *(v64 + 4) = sub_22B1A7B20(v69, v60, &v75);
      *(v64 + 12) = 2080;
      v67 = sub_22B1A7B20(v22, v24, &v75);

      *(v64 + 14) = v67;
      _os_log_impl(&dword_22B116000, v62, v63, "No registered event for %s matching %s", v64, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v66, -1, -1);
      MEMORY[0x23188F650](v64, -1, -1);

      return (*(v58 + 8))(v59, v70);
    }

    else
    {

      return (*(v58 + 8))(v59, v56);
    }
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v47 = __swift_project_value_buffer(v10, qword_28140BD10);
    swift_beginAccess();
    (*(v11 + 16))(v14, v47, v10);

    v48 = a4;

    v49 = sub_22B36050C();
    v50 = sub_22B360D1C();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = a2;
      v54 = v52;
      v75 = v52;
      *v51 = 136315138;
      *(v51 + 4) = sub_22B1A7B20(v53, a3, &v75);
      _os_log_impl(&dword_22B116000, v49, v50, "Unable to determine event name for XPC event %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x23188F650](v54, -1, -1);
      MEMORY[0x23188F650](v51, -1, -1);
    }

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_22B12587C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22B125928(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22B125970(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_22B1259C8(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t isEscapingClosureAtFileLocation@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v35 - v13;
  v15 = MEMORY[0x23188EEB0](v12);
  v16 = MEMORY[0x23188EEB0]();
  sub_22B1262B8(a1, a2, a3, a4, v14);
  objc_autoreleasePoolPop(v16);
  v17 = sub_22B35DF1C();
  v18 = *(v17 - 1);
  if ((*(v18 + 48))(v14, 1, v17) != 1)
  {
    goto LABEL_6;
  }

  sub_22B1281CC(v14);

  v19 = sub_22B35DECC();
  v21 = v20;
  if (qword_27D8B9FF0 != -1)
  {
    v34 = v19;
    swift_once();
    v19 = v34;
  }

  v22 = qword_27D8BB220;
  v23 = *algn_27D8BB228;
  aBlock = v19;
  v37 = v21;

  MEMORY[0x23188E270](v22, v23);

  sub_22B35DEAC();
  v24 = objc_opt_self();
  v18 = sub_22B36081C();
  v17 = [v24 insertNewObjectForEntityForName:v18 inManagedObjectContext:*(a4 + 48)];

  v25 = sub_22B36081C();
  v26 = sub_22B36081C();
  [v17 setValue:v25 forKeyPath:v26];

  v27 = sub_22B35DEDC();
  v28 = sub_22B36081C();
  [v17 setValue:v27 forKeyPath:v28];

  v29 = sub_22B35DEDC();
  v30 = sub_22B36081C();
  [v17 setValue:v29 forKeyPath:v30];

  v31 = *(a4 + 48);
  v14 = swift_allocObject();
  *(v14 + 2) = sub_22B12823C;
  *(v14 + 3) = a4;
  v40 = sub_22B128240;
  v41 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v38 = sub_22B32556C;
  v39 = &block_descriptor_22;
  v32 = _Block_copy(&aBlock);
  v33 = v31;

  [v33 performBlockAndWait_];

  _Block_release(v32);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_6:
    (*(v18 + 32))(isEscapingClosureAtFileLocation, v14, v17);
  }

  objc_autoreleasePoolPop(v15);
}

void sub_22B125DF4(uint64_t a1, uint64_t a2)
{
  v3 = sub_22B36052C();
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B35F69C();
  v7 = sub_22B35F68C();
  [v7 setResultType:0];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22B3634B0;
  v9 = sub_22B35DEDC();
  *(v8 + 56) = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
  *(v8 + 64) = sub_22B12805C();
  *(v8 + 32) = v9;
  v10 = sub_22B360CCC();
  [v7 setPredicate:v10];
  v11 = *(a2 + 48);
  v12 = v33;
  v13 = sub_22B360E9C();
  if (!v12)
  {
    v20 = v13;
    v33 = 0;

    if (v20 >> 62)
    {
      v21 = sub_22B36109C();
      if (!v21)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v21)
      {
        goto LABEL_17;
      }
    }

    if (v21 < 1)
    {
LABEL_19:
      __break(1u);
      return;
    }

    for (i = 0; i != v21; ++i)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x23188EAC0](i, v20);
      }

      else
      {
        v23 = *(v20 + 8 * i + 32);
      }

      v24 = v23;
      [*(a2 + 48) deleteObject_];
    }

LABEL_17:

    v25 = *(a2 + 48);
    v26 = swift_allocObject();
    *(v26 + 16) = sub_22B1281A4;
    *(v26 + 24) = a2;
    aBlock[4] = sub_22B128240;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B32556C;
    aBlock[3] = &block_descriptor_14;
    v27 = _Block_copy(aBlock);
    v28 = v25;

    [v28 performBlockAndWait_];

    _Block_release(v27);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  v15 = v31;
  (*(v31 + 16))(v6, v14, v3);
  v16 = sub_22B36050C();
  v17 = sub_22B360D1C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_22B116000, v16, v17, "Error deleting entry from cache.", v18, 2u);
    MEMORY[0x23188F650](v18, -1, -1);
    v19 = v10;
  }

  else
  {
    v19 = v16;
    v16 = v7;
    v7 = v10;
  }

  (*(v15 + 8))(v6, v3);
}

uint64_t sub_22B1262B8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v54 = a4;
  v53 = a5;
  v8 = sub_22B35DF1C();
  v56 = *(v8 - 8);
  v57 = v8;
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v8);
  v50 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22B36052C();
  v51 = *(v11 - 8);
  v52 = v11;
  v12 = *(v51 + 64);
  MEMORY[0x28223BE20](v11);
  v58 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B35F69C();
  v14 = sub_22B35F68C();
  [v14 setResultType_];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22B3634C0;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_22B1280E4();
  v47 = a1;
  v48 = a2;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;

  v49 = a3;
  v16 = sub_22B35DEDC();
  *(v15 + 96) = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
  *(v15 + 104) = sub_22B12805C();
  *(v15 + 72) = v16;
  v17 = sub_22B360CCC();
  [v14 setFetchLimit_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD10, &qword_22B363A30);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22B3634B0;
  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 32) = 0x6E656B6F74;
  *(v18 + 40) = 0xE500000000000000;
  v19 = sub_22B360A3C();

  [v14 setPropertiesToFetch_];

  [v14 setPredicate_];
  v20 = *(v54 + 48);
  v21 = v55;
  v22 = sub_22B360E9C();
  if (!v21)
  {
    v38 = v22;

    if (v38 >> 62)
    {
      result = sub_22B36109C();
      v41 = v56;
      v40 = v57;
      if (result)
      {
LABEL_8:
        if ((v38 & 0xC000000000000001) != 0)
        {
          v42 = MEMORY[0x23188EAC0](0, v38);
        }

        else
        {
          if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v42 = *(v38 + 32);
        }

        v43 = v42;

        v44 = [v43 token];

        v45 = v53;
        sub_22B35DEFC();

        return (*(v41 + 56))(v45, 0, 1, v40);
      }
    }

    else
    {
      result = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v41 = v56;
      v40 = v57;
      if (result)
      {
        goto LABEL_8;
      }
    }

    return (*(v41 + 56))(v53, 1, 1, v40);
  }

  v55 = v21;

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v23 = v52;
  v24 = __swift_project_value_buffer(v52, qword_28140BD10);
  swift_beginAccess();
  v25 = v51;
  (*(v51 + 16))(v58, v24, v23);
  v27 = v56;
  v26 = v57;
  v28 = v50;
  (*(v56 + 16))(v50, v49, v57);
  v29 = v48;

  v30 = sub_22B36050C();
  v31 = sub_22B360D1C();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v59 = v33;
    *v32 = 136380931;
    *(v32 + 4) = sub_22B1A7B20(v47, v29, &v59);
    *(v32 + 12) = 2081;
    sub_22B127FBC();
    v34 = sub_22B36131C();
    v36 = v35;
    (*(v27 + 8))(v28, v26);
    v37 = sub_22B1A7B20(v34, v36, &v59);

    *(v32 + 14) = v37;
    _os_log_impl(&dword_22B116000, v30, v31, "Failed to fetch cache entry for %{private}s, %{private}s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v33, -1, -1);
    MEMORY[0x23188F650](v32, -1, -1);

    (*(v51 + 8))(v58, v52);
  }

  else
  {

    (*(v27 + 8))(v28, v26);
    (*(v25 + 8))(v58, v23);
  }

  return (*(v27 + 56))(v53, 1, 1, v26);
}

void sub_22B126938(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v50 = a3;
  v48 = sub_22B35DF1C();
  v5 = *(v48 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_22B36052C();
  v49 = *(v53 - 8);
  v8 = *(v49 + 64);
  MEMORY[0x28223BE20](v53);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B35F69C();
  v11 = sub_22B35F68C();
  [v11 setResultType_];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v12 = swift_allocObject();
  v51 = xmmword_22B3634B0;
  *(v12 + 16) = xmmword_22B3634B0;
  v46 = a1;
  v13 = sub_22B35DEDC();
  *(v12 + 56) = sub_22B128014(0, &qword_281408548, 0x277CCAD78);
  *(v12 + 64) = sub_22B12805C();
  *(v12 + 32) = v13;
  v14 = sub_22B360CCC();
  [v11 setFetchLimit_];
  [v11 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD10, &qword_22B363A30);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D837D0];
  *(v15 + 16) = v51;
  *(v15 + 56) = v16;
  *(v15 + 32) = 0x444964697267;
  *(v15 + 40) = 0xE600000000000000;
  v17 = sub_22B360A3C();

  [v11 setPropertiesToFetch_];

  v18 = *(a2 + 48);
  v19 = v52;
  v20 = sub_22B360E9C();
  if (!v19)
  {
    v35 = v20;

    if (v35 >> 62)
    {
      if (sub_22B36109C())
      {
LABEL_8:
        if ((v35 & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x23188EAC0](0, v35);
        }

        else
        {
          if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v36 = *(v35 + 32);
        }

        v37 = v36;

        v38 = [v37 gridID];

        v39 = sub_22B36084C();
        v41 = v40;

        v42 = v50;
        *v50 = v39;
        v42[1] = v41;
        return;
      }
    }

    else if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

    v44 = v50;
    *v50 = 0;
    v44[1] = 0;
    return;
  }

  v52 = v19;

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v21 = v53;
  v22 = __swift_project_value_buffer(v53, qword_28140BD10);
  swift_beginAccess();
  v23 = v49;
  (*(v49 + 16))(v10, v22, v21);
  v24 = v47;
  v25 = v48;
  (*(v5 + 16))(v47, v46, v48);
  v26 = sub_22B36050C();
  v27 = sub_22B360D1C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v51 = v10;
    v30 = v29;
    v54 = v29;
    *v28 = 136380675;
    sub_22B127FBC();
    v31 = sub_22B36131C();
    v33 = v32;
    (*(v5 + 8))(v24, v25);
    v34 = sub_22B1A7B20(v31, v33, &v54);

    *(v28 + 4) = v34;
    _os_log_impl(&dword_22B116000, v26, v27, "Failed to fetch gridID entry for token %{private}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x23188F650](v30, -1, -1);
    MEMORY[0x23188F650](v28, -1, -1);

    (*(v49 + 8))(v51, v53);
  }

  else
  {

    (*(v5 + 8))(v24, v25);
    (*(v23 + 8))(v10, v53);
  }

  v43 = v50;
  *v50 = 0;
  v43[1] = 0;
}

uint64_t sub_22B126F18()
{
  type metadata accessor for GuidanceIDTrackerManager();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  if (qword_28140AD60 != -1)
  {
    swift_once();
  }

  v1 = sub_22B33AD90(0xD000000000000010, 0x800000022B368B50, 0x6361436C61636F4CLL, 0xEA00000000006568);
  v2 = *(v0 + 112);
  *(v0 + 112) = v1;

  qword_28140BC50 = v0;
  return result;
}

uint64_t sub_22B126FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_22B1259C8(a2, a3, a4, a1, a5);
  [*(a1 + 48) reset];
  v7 = sub_22B35DF1C();
  return (*(*(v7 - 8) + 56))(a5, 0, 1, v7);
}

uint64_t sub_22B12708C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22B35DF1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v48 = v7;
  v49 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - v9;
  v11 = sub_22B36052C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v11, qword_28140BD10);
  swift_beginAccess();
  (*(v12 + 16))(v15, v16, v11);
  v47 = *(v5 + 16);
  v47(v10, a1, v4);
  v17 = v15;
  v18 = sub_22B36050C();
  v19 = sub_22B360D2C();
  v50 = v11;
  v20 = v19;
  if (os_log_type_enabled(v18, v19))
  {
    v21 = swift_slowAlloc();
    v44 = v2;
    v22 = v21;
    v23 = swift_slowAlloc();
    v46 = v5;
    v24 = v23;
    aBlock[0] = v23;
    *v22 = 136315138;
    sub_22B127FBC();
    v43 = v17;
    v25 = sub_22B36131C();
    v45 = a1;
    v26 = v4;
    v28 = v27;
    (*(v46 + 8))(v10, v26);
    v29 = sub_22B1A7B20(v25, v28, aBlock);
    v4 = v26;
    a1 = v45;

    *(v22 + 4) = v29;
    _os_log_impl(&dword_22B116000, v18, v20, "Delete token tracking from cache for %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v30 = v24;
    v5 = v46;
    MEMORY[0x23188F650](v30, -1, -1);
    v31 = v22;
    v2 = v44;
    MEMORY[0x23188F650](v31, -1, -1);

    result = (*(v12 + 8))(v43, v50);
  }

  else
  {

    (*(v5 + 8))(v10, v4);
    result = (*(v12 + 8))(v17, v50);
  }

  v33 = *(v2 + 112);
  if (v33)
  {
    v34 = *(v33 + 48);
    v35 = v49;
    v47(v49, a1, v4);
    v36 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = v33;
    (*(v5 + 32))(v37 + v36, v35, v4);
    v38 = swift_allocObject();
    *(v38 + 16) = sub_22B128138;
    *(v38 + 24) = v37;
    aBlock[4] = sub_22B12819C;
    aBlock[5] = v38;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B32556C;
    aBlock[3] = &block_descriptor_1;
    v39 = _Block_copy(aBlock);
    swift_retain_n();
    v40 = v34;

    [v40 performBlockAndWait_];

    _Block_release(v39);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_22B12757C(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x23188EEB0]();
  sub_22B125DF4(a2, a1);
  objc_autoreleasePoolPop(v4);
  v5 = *(a1 + 48);

  return [v5 reset];
}

void sub_22B12760C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, const char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a4;
  v43 = a6;
  v44 = a1;
  v45 = a3;
  v8 = sub_22B35DF1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22B36052C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v13, qword_28140BD10);
  swift_beginAccess();
  (*(v14 + 16))(v17, v18, v13);
  (*(v9 + 16))(v12, v45, v8);

  v19 = sub_22B36050C();
  v20 = v9;
  v21 = sub_22B360D2C();

  v22 = os_log_type_enabled(v19, v21);
  v41 = a2;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v39 = a5;
    v24 = v23;
    v37 = swift_slowAlloc();
    v46[0] = v37;
    *v24 = 136380931;
    *(v24 + 4) = sub_22B1A7B20(v44, a2, v46);
    *(v24 + 12) = 2080;
    sub_22B127FBC();
    v38 = v13;
    v25 = v20;
    v26 = sub_22B36131C();
    v28 = v27;
    (*(v25 + 8))(v12, v8);
    v29 = sub_22B1A7B20(v26, v28, v46);

    *(v24 + 14) = v29;
    _os_log_impl(&dword_22B116000, v19, v21, v40, v24, 0x16u);
    v30 = v37;
    swift_arrayDestroy();
    MEMORY[0x23188F650](v30, -1, -1);
    MEMORY[0x23188F650](v24, -1, -1);

    v31 = (*(v14 + 8))(v17, v38);
  }

  else
  {

    (*(v20 + 8))(v12, v8);
    v31 = (*(v14 + 8))(v17, v13);
    v25 = v20;
  }

  v32 = *(v42 + 112);
  if (v32)
  {
    v33 = *(v32 + 48);
    MEMORY[0x28223BE20](v31);
    v34 = v44;
    *(&v37 - 4) = v32;
    *(&v37 - 3) = v34;
    v35 = v45;
    *(&v37 - 2) = v41;
    *(&v37 - 1) = v35;

    v36 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560);
    sub_22B360E7C();
  }

  else
  {
    (*(v25 + 56))(v43, 1, 1, v8);
  }
}

void sub_22B127A4C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = MEMORY[0x23188EEB0]();
  sub_22B1262B8(a2, a3, a4, a1, a5);
  objc_autoreleasePoolPop(v11);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    [*(a1 + 48) reset];
  }
}

uint64_t *sub_22B127AEC(uint64_t *a1)
{
  v2 = v1;
  v32 = a1;
  v3 = sub_22B35DF1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22B36052C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_28140BD10);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);
  (*(v4 + 16))(v7, v32, v3);
  v14 = sub_22B36050C();
  v15 = sub_22B360D2C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30 = v8;
    v17 = v16;
    v29 = swift_slowAlloc();
    v33 = v29;
    *v17 = 136380675;
    sub_22B127FBC();
    v18 = sub_22B36131C();
    v31 = v2;
    v20 = v19;
    (*(v4 + 8))(v7, v3);
    v21 = sub_22B1A7B20(v18, v20, &v33);
    v2 = v31;

    *(v17 + 4) = v21;
    _os_log_impl(&dword_22B116000, v14, v15, "Get grid id from cache for %{private}s", v17, 0xCu);
    v22 = v29;
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x23188F650](v22, -1, -1);
    MEMORY[0x23188F650](v17, -1, -1);

    v23 = (*(v9 + 8))(v12, v30);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
    v23 = (*(v9 + 8))(v12, v8);
  }

  v24 = *(v2 + 112);
  if (!v24)
  {
    return 0;
  }

  v25 = v24[6];
  MEMORY[0x28223BE20](v23);
  v26 = v32;
  *(&v29 - 2) = v24;
  *(&v29 - 1) = v26;

  v27 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA218, &qword_22B363548);
  sub_22B360E7C();

  return v33;
}

void sub_22B127EAC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = MEMORY[0x23188EEB0]();
  sub_22B126938(a2, a1, v10);
  objc_autoreleasePoolPop(v7);
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];
    v9 = v10[1];
    [*(a1 + 48) reset];
    *a3 = v8;
    a3[1] = v9;
  }
}

uint64_t sub_22B127F44()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_22B127FBC()
{
  result = qword_2814091D0;
  if (!qword_2814091D0)
  {
    sub_22B35DF1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814091D0);
  }

  return result;
}

uint64_t sub_22B128014(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_22B12805C()
{
  result = qword_281408540;
  if (!qword_281408540)
  {
    sub_22B128014(255, &qword_281408548, 0x277CCAD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281408540);
  }

  return result;
}

unint64_t sub_22B1280E4()
{
  result = qword_281409360;
  if (!qword_281409360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281409360);
  }

  return result;
}

id sub_22B128138()
{
  v1 = *(sub_22B35DF1C() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_22B12757C(v2, v3);
}

uint64_t sub_22B1281CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22B12824C()
{
  type metadata accessor for HistoricalGuidanceTask();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_22B36081C();
  v3 = [v1 initWithSuiteName_];

  *(v0 + 112) = v3;
  *(v0 + 120) = 0;
  qword_28140BC58 = v0;
}

uint64_t sub_22B1282E4(char a1)
{
  *(v2 + 136) = v1;
  *(v2 + 536) = a1;
  v3 = sub_22B35DE9C();
  *(v2 + 144) = v3;
  v4 = *(v3 - 8);
  *(v2 + 152) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 160) = swift_task_alloc();
  v6 = *(type metadata accessor for CDEnergyGuidanceTracker() - 8);
  *(v2 + 168) = v6;
  v7 = *(v6 + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  v8 = sub_22B36052C();
  *(v2 + 184) = v8;
  v9 = *(v8 - 8);
  *(v2 + 192) = v9;
  v10 = *(v9 + 64) + 15;
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = swift_task_alloc();
  *(v2 + 232) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B12848C, v1, 0);
}

uint64_t sub_22B12848C()
{
  v18 = v0;
  v0[30] = os_transaction_create();
  sub_22B12A788();
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = v0[23];
  v3 = v0[24];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[31] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[32] = v5;
  v0[33] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[29];
  v10 = v0[23];
  v11 = v0[24];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_22B1A7B20(0xD000000000000027, 0x800000022B368C40, &v17);
    _os_log_impl(&dword_22B116000, v6, v7, "[HistoricalGuidanceTask] Executing task %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);
  }

  v14 = *(v11 + 8);
  v14(v9, v10);
  v0[34] = v14;
  if (qword_281408BF0 != -1)
  {
    swift_once();
  }

  v15 = qword_28140BC58;
  v0[35] = qword_28140BC58;

  return MEMORY[0x2822009F8](sub_22B1286EC, v15, 0);
}

uint64_t sub_22B1286EC()
{
  v1 = *(v0 + 136);
  *(v0 + 537) = *(*(v0 + 280) + 120);
  return MEMORY[0x2822009F8](sub_22B128714, v1, 0);
}

uint64_t sub_22B128714()
{
  if (*(v0 + 537) == 1)
  {
    v1 = *(v0 + 264);
    (*(v0 + 256))(*(v0 + 224), *(v0 + 248), *(v0 + 184));
    v2 = sub_22B36050C();
    v3 = sub_22B360D2C();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 272);
    v6 = *(v0 + 240);
    v7 = *(v0 + 224);
    v8 = *(v0 + 184);
    v9 = *(v0 + 192);
    if (v4)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22B116000, v2, v3, "[HistoricalGuidanceTask] Download in progress already", v10, 2u);
      MEMORY[0x23188F650](v10, -1, -1);
    }

    swift_unknownObjectRelease();

    v5(v7, v8);
    v12 = *(v0 + 224);
    v11 = *(v0 + 232);
    v14 = *(v0 + 208);
    v13 = *(v0 + 216);
    v15 = *(v0 + 200);
    v16 = *(v0 + 176);
    v17 = *(v0 + 160);

    v18 = *(v0 + 8);

    return v18(0);
  }

  else
  {
    v20 = *(v0 + 280);

    return MEMORY[0x2822009F8](sub_22B1288D4, v20, 0);
  }
}

uint64_t sub_22B1288D4()
{
  v1 = *(v0 + 136);
  *(*(v0 + 280) + 120) = 1;
  return MEMORY[0x2822009F8](sub_22B1288FC, v1, 0);
}

uint64_t sub_22B1288FC()
{
  v23 = v0;
  if (sub_22B35EEBC())
  {
    if (qword_281408E18 != -1)
    {
      swift_once();
    }

    v1 = qword_28140BCA0;
    v2 = *(v0 + 536);
    if (qword_28140BCA0)
    {
      v3 = sub_22B36081C();
      v4 = [v1 BOOLForKey_];

      if ((v4 | v2))
      {
LABEL_6:
        v5 = *(v0 + 264);
        (*(v0 + 256))(*(v0 + 216), *(v0 + 248), *(v0 + 184));
        v6 = sub_22B36050C();
        v7 = sub_22B360D1C();
        v8 = os_log_type_enabled(v6, v7);
        v9 = *(v0 + 272);
        v10 = *(v0 + 216);
        v11 = *(v0 + 184);
        v12 = *(v0 + 192);
        if (v8)
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v22 = v14;
          *v13 = 136315394;
          *(v13 + 4) = sub_22B1A7B20(0xD00000000000002ALL, 0x800000022B368C70, &v22);
          *(v13 + 12) = 2048;
          *(v13 + 14) = 57;
          _os_log_impl(&dword_22B116000, v6, v7, "[HistoricalGuidanceTask] USING MOCK DATA %s:%ld", v13, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v14);
          MEMORY[0x23188F650](v14, -1, -1);
          MEMORY[0x23188F650](v13, -1, -1);
        }

        v9(v10, v11);
        sub_22B12B228();
        sub_22B35E3FC();
        v15 = sub_22B360CDC();
        *(v0 + 288) = v15;
        if (qword_281408858 != -1)
        {
          v20 = v15;
          swift_once();
          v15 = v20;
        }

        v16 = qword_28140BC40;
        *(v0 + 296) = qword_28140BC40;
        v17 = v15;
        v18 = sub_22B128BEC;
        v19 = v16;
        goto LABEL_15;
      }
    }

    else if (*(v0 + 536))
    {
      goto LABEL_6;
    }
  }

  if (qword_281408858 != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 136);
  *(v0 + 416) = qword_28140BC40;
  v18 = sub_22B129A10;
LABEL_15:

  return MEMORY[0x2822009F8](v18, v19, 0);
}

uint64_t sub_22B128BEC()
{
  v1 = v0[37];
  v2 = v0[17];
  v3 = *(v1 + 112);
  *(v1 + 112) = v0[36];

  return MEMORY[0x2822009F8](sub_22B128C60, v2, 0);
}

uint64_t sub_22B128C60()
{
  if (qword_28140B068 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BDC0;
  *(v0 + 304) = qword_28140BDC0;

  return MEMORY[0x2822009F8](sub_22B128CF8, v1, 0);
}

uint64_t sub_22B128CF8()
{
  v1 = v0[38];
  v2 = v0[17];
  v0[39] = sub_22B211B68();

  return MEMORY[0x2822009F8](sub_22B128D68, v2, 0);
}

uint64_t sub_22B128D68()
{
  v48 = v0;
  v1 = *(v0 + 312);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 168);
    v4 = *(v0 + 176);
    v47 = MEMORY[0x277D84F90];
    sub_22B355680(0, v2, 0);
    v5 = v47;
    v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v7 = *(v3 + 72);
    do
    {
      v8 = *(v0 + 176);
      sub_22B12B168(v6, v8);
      v9 = *v8;
      v10 = *(v4 + 8);

      sub_22B12B1CC(v8);
      v47 = v5;
      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_22B355680((v11 > 1), v12 + 1, 1);
        v5 = v47;
      }

      *(v5 + 16) = v12 + 1;
      v13 = v5 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
      v6 += v7;
      --v2;
    }

    while (v2);
    v14 = *(v0 + 312);
  }

  else
  {
    v15 = *(v0 + 312);

    v5 = MEMORY[0x277D84F90];
  }

  v16 = sub_22B31A80C(v5);
  *(v0 + 320) = v16;

  v17 = *(v16 + 32);
  *(v0 + 538) = v17;
  v18 = -1;
  v19 = -1 << v17;
  v20 = *(v16 + 56);
  if (-v19 < 64)
  {
    v18 = ~(-1 << -v19);
  }

  *(v0 + 328) = 0;
  v21 = v18 & v20;
  if (v21)
  {
    v22 = 0;
    v23 = *(v0 + 320);
LABEL_15:
    *(v0 + 336) = v21;
    *(v0 + 344) = v22;
    v26 = (*(v23 + 48) + ((v22 << 10) | (16 * __clz(__rbit64(v21)))));
    *(v0 + 352) = *v26;
    *(v0 + 360) = v26[1];

    if ((sub_22B360BFC() & 1) == 0)
    {
      v42 = *(v0 + 296);
      v43 = *(v0 + 160);
      sub_22B35DE6C();
      v44 = sub_22B12910C;
      v45 = v42;
      goto LABEL_23;
    }

    v28 = *(v0 + 256);
    v27 = *(v0 + 264);
    v29 = *(v0 + 248);
    v30 = *(v0 + 208);
    v31 = *(v0 + 184);

    v28(v30, v29, v31);
    v32 = sub_22B36050C();
    v33 = sub_22B360D1C();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 320);
    v36 = *(v0 + 288);
    v37 = *(v0 + 208);
    v38 = *(v0 + 184);
    v39 = *(v0 + 192);
    if (v34)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v47 = v41;
      *v40 = 136315394;
      *(v40 + 4) = sub_22B1A7B20(0xD00000000000002ALL, 0x800000022B368C70, &v47);
      *(v40 + 12) = 2048;
      *(v40 + 14) = 77;
      _os_log_impl(&dword_22B116000, v32, v33, "[HistoricalGuidanceTask] Task is cancelled at marker %s:%ld", v40, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x23188F650](v41, -1, -1);
      MEMORY[0x23188F650](v40, -1, -1);
    }

    else
    {
    }

    (*(v39 + 8))(v37, v38);
  }

  else
  {
    v24 = 0;
    v25 = ((63 - v19) >> 6) - 1;
    v23 = *(v0 + 320);
    while (v25 != v24)
    {
      v22 = v24 + 1;
      v21 = *(v23 + 8 * v24++ + 64);
      if (v21)
      {
        goto LABEL_15;
      }
    }
  }

  *(v0 + 528) = 0;
  v45 = *(v0 + 280);
  v44 = sub_22B12A69C;
LABEL_23:

  return MEMORY[0x2822009F8](v44, v45, 0);
}

uint64_t sub_22B12910C()
{
  v1 = v0[44];
  v2 = v0[45];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA228, &qword_22B367FF0);
  inited = swift_initStackObject();
  v0[46] = inited;
  *(inited + 16) = xmmword_22B3634B0;
  *(inited + 32) = v1;
  *(inited + 40) = v2;

  v4 = swift_task_alloc();
  v0[47] = v4;
  *v4 = v0;
  v4[1] = sub_22B1291E8;
  v6 = v0[44];
  v5 = v0[45];
  v7 = v0[37];
  v8 = v0[20];

  return sub_22B1CD648(v6, v5, v8);
}

uint64_t sub_22B1291E8()
{
  v1 = *v0;
  v2 = *(*v0 + 376);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[48] = v4;
  *v4 = v3;
  v4[1] = sub_22B129354;
  v5 = v1[37];
  v6 = v1[20];
  v7 = v1[46];

  return sub_22B35B648(v7, v6);
}

uint64_t sub_22B129354()
{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 368);
  v3 = *(*v0 + 296);
  v6 = *v0;

  swift_setDeallocating();
  v4 = *(v2 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2822009F8](sub_22B129494, v3, 0);
}

uint64_t sub_22B129494()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = *(v2 + 8);
  v0[49] = v5;
  v0[50] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);

  return MEMORY[0x2822009F8](sub_22B129518, v4, 0);
}

uint64_t sub_22B129518()
{
  v1 = v0[45];
  v2 = v0[20];
  sub_22B35DE6C();
  v3 = swift_task_alloc();
  v0[51] = v3;
  *v3 = v0;
  v3[1] = sub_22B1295C4;
  v4 = v0[44];
  v5 = v0[37];
  v6 = v0[20];

  return sub_22B1CD034(v4, v1, v6);
}

uint64_t sub_22B1295C4()
{
  v1 = *(*v0 + 408);
  v2 = *(*v0 + 400);
  v3 = *(*v0 + 392);
  v4 = *(*v0 + 360);
  v5 = *(*v0 + 160);
  v6 = *(*v0 + 144);
  v7 = *(*v0 + 136);
  v9 = *v0;

  v3(v5, v6);

  return MEMORY[0x2822009F8](sub_22B12975C, v7, 0);
}

uint64_t sub_22B12975C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v32 = v3;
  v4 = *(v3 + 328);
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
LABEL_19:
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v7 = *(v3 + 336);
  v6 = *(v3 + 344);
  *(v3 + 328) = v5;
  v8 = (v7 - 1) & v7;
  if (!v8)
  {
    while (1)
    {
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v9 = *(v3 + 320);
      if (v10 >= (((1 << *(v3 + 538)) + 63) >> 6))
      {

        goto LABEL_14;
      }

      v8 = *(v9 + 8 * v10 + 56);
      ++v6;
      if (v8)
      {
        v6 = v10;
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  v9 = *(v3 + 320);
LABEL_8:
  *(v3 + 336) = v8;
  *(v3 + 344) = v6;
  v11 = (*(v9 + 48) + ((v6 << 10) | (16 * __clz(__rbit64(v8)))));
  *(v3 + 352) = *v11;
  *(v3 + 360) = v11[1];

  if (sub_22B360BFC())
  {
    v13 = *(v3 + 256);
    v12 = *(v3 + 264);
    v14 = *(v3 + 248);
    v15 = *(v3 + 208);
    v16 = *(v3 + 184);

    v13(v15, v14, v16);
    v17 = sub_22B36050C();
    v18 = sub_22B360D1C();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v3 + 320);
    v21 = *(v3 + 288);
    v22 = *(v3 + 208);
    v23 = *(v3 + 184);
    v24 = *(v3 + 192);
    if (v19)
    {
      v30 = *(v3 + 208);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31 = v26;
      *v25 = 136315394;
      *(v25 + 4) = sub_22B1A7B20(0xD00000000000002ALL, 0x800000022B368C70, &v31);
      *(v25 + 12) = 2048;
      *(v25 + 14) = 77;
      _os_log_impl(&dword_22B116000, v17, v18, "[HistoricalGuidanceTask] Task is cancelled at marker %s:%ld", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x23188F650](v26, -1, -1);
      MEMORY[0x23188F650](v25, -1, -1);

      (*(v24 + 8))(v30, v23);
    }

    else
    {

      (*(v24 + 8))(v22, v23);
    }

LABEL_14:
    *(v3 + 528) = v5;
    a2 = *(v3 + 280);
    a1 = sub_22B12A69C;
  }

  else
  {
    v27 = *(v3 + 296);
    v28 = *(v3 + 160);
    sub_22B35DE6C();
    a1 = sub_22B12910C;
    a2 = v27;
  }

  a3 = 0;

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_22B129A10()
{
  if (qword_28140B068 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BDC0;
  *(v0 + 424) = qword_28140BDC0;

  return MEMORY[0x2822009F8](sub_22B129AA8, v1, 0);
}

uint64_t sub_22B129AA8()
{
  v1 = v0[53];
  v2 = v0[17];
  v0[54] = sub_22B211B68();

  return MEMORY[0x2822009F8](sub_22B129B18, v2, 0);
}

uint64_t sub_22B129B18()
{
  v39 = v0;
  v1 = v0[54];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[21];
    v4 = v0[22];
    v38 = MEMORY[0x277D84F90];
    sub_22B355680(0, v2, 0);
    v5 = v38;
    v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v7 = *(v3 + 72);
    do
    {
      v8 = v0[22];
      sub_22B12B168(v6, v8);
      v9 = *v8;
      v10 = *(v4 + 8);

      sub_22B12B1CC(v8);
      v38 = v5;
      v12 = v5[2];
      v11 = v5[3];
      if (v12 >= v11 >> 1)
      {
        sub_22B355680((v11 > 1), v12 + 1, 1);
        v5 = v38;
      }

      v5[2] = v12 + 1;
      v13 = &v5[2 * v12];
      v13[4] = v9;
      v13[5] = v10;
      v6 += v7;
      --v2;
    }

    while (v2);
    v14 = v0[54];
  }

  else
  {
    v18 = v0[54];

    v5 = MEMORY[0x277D84F90];
  }

  v0[55] = v5;
  v19 = v5[2];
  v0[56] = v19;
  if (!v19)
  {

    v34 = v0[56];
LABEL_15:
    v0[66] = v34;
    v16 = v0[35];
    v15 = sub_22B12A69C;
    goto LABEL_17;
  }

  v0[57] = 0;
  if (!v5[2])
  {
    __break(1u);
    return MEMORY[0x2822009F8](v15, v16, v17);
  }

  v0[58] = v5[4];
  v0[59] = v5[5];

  if (sub_22B360BFC())
  {
    v20 = v0[55];
    v22 = v0[32];
    v21 = v0[33];
    v23 = v0[31];
    v24 = v0[25];
    v25 = v0[23];

    v22(v24, v23, v25);
    v26 = sub_22B36050C();
    v27 = sub_22B360D1C();
    v28 = os_log_type_enabled(v26, v27);
    v30 = v0[24];
    v29 = v0[25];
    v31 = v0[23];
    if (v28)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v38 = v33;
      *v32 = 136315394;
      *(v32 + 4) = sub_22B1A7B20(0xD00000000000002ALL, 0x800000022B368C70, &v38);
      *(v32 + 12) = 2048;
      *(v32 + 14) = 104;
      _os_log_impl(&dword_22B116000, v26, v27, "[HistoricalGuidanceTask] Task is cancelled at marker %s:%ld", v32, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x23188F650](v33, -1, -1);
      MEMORY[0x23188F650](v32, -1, -1);
    }

    (*(v30 + 8))(v29, v31);
    v34 = 0;
    goto LABEL_15;
  }

  v35 = v0[52];
  v36 = v0[20];
  sub_22B35DE6C();
  v15 = sub_22B129E1C;
  v16 = v35;
LABEL_17:
  v17 = 0;

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_22B129E1C()
{
  v1 = v0[58];
  v2 = v0[59];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA228, &qword_22B367FF0);
  inited = swift_initStackObject();
  v0[60] = inited;
  *(inited + 16) = xmmword_22B3634B0;
  *(inited + 32) = v1;
  *(inited + 40) = v2;

  v4 = swift_task_alloc();
  v0[61] = v4;
  *v4 = v0;
  v4[1] = sub_22B129EF8;
  v6 = v0[58];
  v5 = v0[59];
  v7 = v0[52];
  v8 = v0[20];

  return sub_22B1CD648(v6, v5, v8);
}

uint64_t sub_22B129EF8()
{
  v1 = *v0;
  v2 = *(*v0 + 488);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[62] = v4;
  *v4 = v3;
  v4[1] = sub_22B12A064;
  v5 = v1[52];
  v6 = v1[20];
  v7 = v1[60];

  return sub_22B35B648(v7, v6);
}

uint64_t sub_22B12A064()
{
  v1 = *(*v0 + 496);
  v2 = *(*v0 + 480);
  v3 = *(*v0 + 416);
  v6 = *v0;

  swift_setDeallocating();
  v4 = *(v2 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2822009F8](sub_22B12A1A4, v3, 0);
}

uint64_t sub_22B12A1A4()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = *(v2 + 8);
  v0[63] = v5;
  v0[64] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);

  return MEMORY[0x2822009F8](sub_22B12A228, v4, 0);
}

uint64_t sub_22B12A228()
{
  v1 = v0[59];
  v2 = v0[20];
  sub_22B35DE6C();
  v3 = swift_task_alloc();
  v0[65] = v3;
  *v3 = v0;
  v3[1] = sub_22B12A2D4;
  v4 = v0[58];
  v5 = v0[52];
  v6 = v0[20];

  return sub_22B1CD034(v4, v1, v6);
}

uint64_t sub_22B12A2D4()
{
  v1 = *(*v0 + 520);
  v2 = *(*v0 + 512);
  v3 = *(*v0 + 504);
  v4 = *(*v0 + 472);
  v5 = *(*v0 + 160);
  v6 = *(*v0 + 144);
  v7 = *(*v0 + 136);
  v9 = *v0;

  v3(v5, v6);

  return MEMORY[0x2822009F8](sub_22B12A46C, v7, 0);
}

uint64_t sub_22B12A46C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v26 = v3;
  v4 = v3[57] + 1;
  if (v4 == v3[56])
  {
    v5 = v3[55];

    v4 = v3[56];
LABEL_8:
    v3[66] = v4;
    a2 = v3[35];
    a1 = sub_22B12A69C;
    goto LABEL_10;
  }

  v3[57] = v4;
  v6 = v3[55];
  if (v4 >= *(v6 + 16))
  {
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v7 = v6 + 16 * v4;
  v3[58] = *(v7 + 32);
  v3[59] = *(v7 + 40);

  if (sub_22B360BFC())
  {
    v8 = v3[55];
    v10 = v3[32];
    v9 = v3[33];
    v11 = v3[31];
    v12 = v3[25];
    v13 = v3[23];

    v10(v12, v11, v13);
    v14 = sub_22B36050C();
    v15 = sub_22B360D1C();
    v16 = os_log_type_enabled(v14, v15);
    v18 = v3[24];
    v17 = v3[25];
    v19 = v3[23];
    if (v16)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v25 = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_22B1A7B20(0xD00000000000002ALL, 0x800000022B368C70, &v25);
      *(v20 + 12) = 2048;
      *(v20 + 14) = 104;
      _os_log_impl(&dword_22B116000, v14, v15, "[HistoricalGuidanceTask] Task is cancelled at marker %s:%ld", v20, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x23188F650](v21, -1, -1);
      MEMORY[0x23188F650](v20, -1, -1);
    }

    (*(v18 + 8))(v17, v19);
    goto LABEL_8;
  }

  v22 = v3[52];
  v23 = v3[20];
  sub_22B35DE6C();
  a1 = sub_22B129E1C;
  a2 = v22;
LABEL_10:
  a3 = 0;

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_22B12A69C()
{
  v1 = *(v0 + 136);
  *(*(v0 + 280) + 120) = 0;
  return MEMORY[0x2822009F8](sub_22B12A6C0, v1, 0);
}

uint64_t sub_22B12A6C0()
{
  v1 = v0[30];
  swift_unknownObjectRelease();
  v2 = v0[66];
  v4 = v0[28];
  v3 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[25];
  v8 = v0[22];
  v9 = v0[20];

  v10 = v0[1];

  return v10(v2);
}

uint64_t sub_22B12A788()
{
  v0 = sub_22B36052C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_28140BD10);
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "[HistoricalGuidanceTask] Taking extended lifetime", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_22B12A960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  v12 = sub_22B360B6C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_22B12B3CC(a1, v17);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a2;
  sub_22B11A02C(v17, (v13 + 5));
  v13[10] = a3;
  v13[11] = a4;

  v14 = sub_22B145224(0, 0, v11, &unk_22B363620, v13);
  sub_22B118DDC(v11);
  return v14;
}

uint64_t sub_22B12AAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_22B12AAD8, 0, 0);
}

uint64_t sub_22B12AAD8()
{
  v1 = v0[5];

  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_22B12AB90;
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];

  return sub_22B344FB4(v6, v5, v3, v4);
}

uint64_t sub_22B12AB90()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_22B12ACA0(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_22B36052C();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B12AD60, 0, 0);
}

uint64_t sub_22B12AD60()
{
  if (qword_281408BF0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_22B12AE28;

  return sub_22B1282E4(0);
}

uint64_t sub_22B12AE28(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_22B12AF28, 0, 0);
}

uint64_t sub_22B12AF28()
{
  v22 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[11];
    v8 = v0[8];
    v20 = v0[9];
    v10 = v0[6];
    v9 = v0[7];
    v11 = v0[5];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_22B1A7B20(v11, v10, &v21);
    *(v12 + 12) = 2048;
    *(v12 + 14) = v7;
    _os_log_impl(&dword_22B116000, v5, v6, "[HistoricalGuidanceDownloadTask] %s processed %ld grids", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);

    (*(v8 + 8))(v20, v9);
  }

  else
  {
    v15 = v0[8];
    v14 = v0[9];
    v16 = v0[7];

    (*(v15 + 8))(v14, v16);
  }

  v17 = v0[9];

  v18 = v0[1];

  return v18();
}

uint64_t sub_22B12B168(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CDEnergyGuidanceTracker();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B12B1CC(uint64_t a1)
{
  v2 = type metadata accessor for CDEnergyGuidanceTracker();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22B12B228()
{
  result = qword_27D8BA230;
  if (!qword_27D8BA230)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8BA230);
  }

  return result;
}

uint64_t sub_22B12B274()
{
  v6[3] = &type metadata for BackgroundSystemTaskScheduler;
  v6[4] = &off_283EFE540;
  type metadata accessor for BackgroundLaunchTask();
  v0 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v6, &type metadata for BackgroundSystemTaskScheduler);
  v4 = &type metadata for BackgroundSystemTaskScheduler;
  v5 = &off_283EFE540;
  swift_defaultActor_initialize();
  sub_22B11A02C(&v3, v0 + 112);
  __swift_destroy_boxed_opaque_existential_0(v6);
  v1 = swift_allocObject();
  v1[2] = v0;
  v1[3] = 0xD000000000000027;
  v1[4] = 0x800000022B368C40;

  sub_22B348848(0xD000000000000027, 0x800000022B368C40, sub_22B12B3C0, v1);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_22B12B3CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22B12B430(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B119A60;

  return sub_22B12AAB4(a1, v4, v5, v6, (v1 + 5), v7, v8);
}

void sub_22B12B508(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v35 - v6;
  v8 = type metadata accessor for CDEnergyGuidanceCache();
  v9 = v8[7];
  v38 = v9;
  v10 = sub_22B35DF1C();
  v11 = *(v10 - 8);
  v36 = *(v11 + 56);
  v37 = v11 + 56;
  v36(a2 + v9, 1, 1, v10);
  v12 = (a2 + v8[9]);
  v13 = (a2 + v8[10]);
  v14 = [a1 energyGuidance];
  v15 = sub_22B35DCDC();
  v17 = v16;

  *a2 = v15;
  *(a2 + 8) = v17;
  v18 = [a1 ratePlan];
  v19 = sub_22B36084C();
  v21 = v20;

  *v12 = v19;
  v12[1] = v21;
  v22 = [a1 utilityID];
  v23 = sub_22B36084C();
  v25 = v24;

  *v13 = v23;
  v13[1] = v25;
  *(a2 + 16) = [a1 guidanceType];
  v26 = [a1 guidanceID];
  sub_22B35DEFC();

  v36(v7, 0, 1, v10);
  sub_22B12F2C4(v7, a2 + v38, &qword_27D8BA970, &unk_22B363560);
  v27 = [a1 gridID];
  v28 = sub_22B36084C();
  v30 = v29;

  *(a2 + 24) = v28;
  *(a2 + 32) = v30;
  v31 = [a1 insertTime];
  v32 = a2 + v8[8];
  sub_22B35DE5C();

  *(a2 + v8[11]) = [a1 version];
  v33 = [a1 validUntil];
  v34 = a2 + v8[12];
  sub_22B35DE5C();
}

void sub_22B12B7B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, NSObject *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, void *a10, unint64_t a11)
{
  v151 = a5;
  v157 = a3;
  v158 = a8;
  v155 = a2;
  v156 = a7;
  v149 = a9;
  v154 = a11;
  v152 = a6;
  v153 = a10;
  v148 = sub_22B35E33C();
  v136 = *(v148 - 8);
  v13 = *(v136 + 64);
  MEMORY[0x28223BE20](v148);
  v135 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22B36052C();
  v146 = *(v15 - 8);
  v147 = v15;
  v16 = *(v146 + 64);
  MEMORY[0x28223BE20](v15);
  v145 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v137 = &v128 - v19;
  v20 = sub_22B35D8BC();
  v143 = *(v20 - 8);
  v144 = v20;
  v21 = *(v143 + 64);
  MEMORY[0x28223BE20](v20);
  v141 = &v128 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_22B35DE9C();
  v140 = *(v142 - 8);
  v23 = *(v140 + 64);
  MEMORY[0x28223BE20](v142);
  v139 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22B35DF1C();
  v138 = *(v25 - 8);
  v26 = *(v138 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22B35E20C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v128 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a4;
  sub_22B35E30C();
  LODWORD(a4) = sub_22B35E1FC();
  v37 = *(v30 + 8);
  v36 = v30 + 8;
  v35 = v37;
  v37(v33, v29);
  v38 = sub_22B12C664(v155, v157, a4, v151, v152, v156, v158, v153, v154, a1);
  if (v38)
  {
    v39 = v38;
    v40 = [v39 managedObjectContext];
    if (v40)
    {
      v41 = v40;
      MEMORY[0x28223BE20](v40);
      *(&v128 - 12) = v34;
      *(&v128 - 11) = v39;
      v42 = v157;
      *(&v128 - 10) = v155;
      *(&v128 - 9) = v42;
      v43 = v152;
      *(&v128 - 8) = v151;
      *(&v128 - 7) = v43;
      v44 = v158;
      *(&v128 - 6) = v156;
      *(&v128 - 5) = v44;
      v45 = v154;
      *(&v128 - 4) = v153;
      *(&v128 - 3) = v45;
      v127 = v46;
      sub_22B360E7C();

      return;
    }

    goto LABEL_15;
  }

  v129 = v28;
  v130 = v25;
  v131 = v35;
  v132 = v33;
  v133 = v36;
  v134 = v29;
  v47 = sub_22B35D82C();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  sub_22B35D81C();
  sub_22B12F0B4();
  v50 = v34;
  v51 = v150;
  v52 = sub_22B35D80C();
  v54 = v51;
  if (v51)
  {

LABEL_9:
    v92 = v146;
    v91 = v147;
    v93 = [objc_opt_self() processInfo];
    v94 = [v93 processName];

    v95 = sub_22B36084C();
    v97 = v96;

    v159 = 513;
    v160 = 5;
    v161 = v95;
    v162 = v97;
    v163 = 0;
    static AutoBugCaptureManager.sendIssue(_:)(&v159);

    v98 = v145;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v99 = __swift_project_value_buffer(v91, qword_28140BD10);
    swift_beginAccess();
    (*(v92 + 16))(v98, v99, v91);
    v100 = v54;
    v101 = sub_22B36050C();
    v102 = sub_22B360D1C();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *v103 = 138543362;
      v105 = v54;
      v106 = _swift_stdlib_bridgeErrorToNSError();
      *(v103 + 4) = v106;
      *v104 = v106;
      _os_log_impl(&dword_22B116000, v101, v102, "Error preparing data for inserting into cache. %{public}@", v103, 0xCu);
      sub_22B12F10C(v104);
      MEMORY[0x23188F650](v104, -1, -1);
      MEMORY[0x23188F650](v103, -1, -1);
    }

    else
    {
    }

    (*(v92 + 8))(v98, v91);
LABEL_15:
    *v149 = 0;
    return;
  }

  v55 = v52;
  v56 = v53;

  v57 = objc_opt_self();
  v58 = sub_22B36081C();
  v150 = 0;
  v59 = v58;
  v128 = a1;
  v60 = [v57 insertNewObjectForEntityForName:v58 inManagedObjectContext:*(a1 + 48)];

  v61 = sub_22B35DCCC();
  v62 = sub_22B36081C();
  [v60 setValue:v61 forKeyPath:v62];

  v63 = v129;
  sub_22B35DF0C();
  v64 = sub_22B35DEDC();
  (*(v138 + 8))(v63, v130);
  v65 = sub_22B36081C();
  [v60 &off_2786FB278];

  v66 = sub_22B36081C();
  v67 = sub_22B36081C();
  [v60 &off_2786FB278];

  v68 = sub_22B36081C();
  v69 = sub_22B36081C();
  v152 = v55;
  v70 = v69;
  [v60 &off_2786FB278];

  v71 = sub_22B36081C();
  v72 = sub_22B36081C();
  [v60 &off_2786FB278];

  v73 = sub_22B36081C();
  v74 = sub_22B36081C();
  v154 = v56;
  v75 = v74;
  [v60 &off_2786FB278];

  v76 = v132;
  sub_22B35E30C();
  sub_22B35E1FC();
  v131(v76, v134);
  v77 = sub_22B36144C();
  v78 = sub_22B36081C();
  [v60 &off_2786FB278];

  v79 = v139;
  sub_22B35DE6C();
  v80 = sub_22B35DDDC();
  v81 = *(v140 + 8);
  v82 = v142;
  v81(v79, v142);
  v83 = sub_22B36081C();
  [v60 &off_2786FB278];

  v84 = sub_22B36144C();
  v85 = sub_22B36081C();
  [v60 &off_2786FB278];

  v86 = v141;
  sub_22B35E2DC();
  sub_22B35D86C();
  (*(v143 + 8))(v86, v144);
  v87 = sub_22B35DDDC();
  v81(v79, v82);
  v88 = sub_22B36081C();
  [v60 &off_2786FB278];

  v89 = *(v128 + 48);
  v90 = v150;
  sub_22B2A534C(2);
  if (v90)
  {

    sub_22B12F174(v152, v154);
    v54 = v90;
    goto LABEL_9;
  }

  v107 = v158;
  v153 = v60;
  v108 = v50;
  v150 = 0;

  v110 = v146;
  v109 = v147;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v111 = __swift_project_value_buffer(v109, qword_28140BD10);
  swift_beginAccess();
  v112 = v137;
  (*(v110 + 16))(v137, v111, v109);
  v113 = v136;
  v114 = v135;
  (*(v136 + 16))(v135, v108, v148);
  v115 = v157;

  v116 = sub_22B36050C();
  v117 = sub_22B360D2C();

  v151 = v116;
  v118 = os_log_type_enabled(v116, v117);
  v119 = v149;
  if (v118)
  {
    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v164 = v121;
    *v120 = 136381187;
    *(v120 + 4) = sub_22B1A7B20(v155, v115, &v164);
    *(v120 + 12) = 512;
    v122 = v132;
    v123 = v119;
    sub_22B35E30C();
    v124 = sub_22B35E1FC();
    v131(v122, v134);
    (*(v113 + 8))(v114, v148);
    *(v120 + 14) = v124;
    v119 = v123;
    *(v120 + 16) = 1024;
    v125 = HIBYTE(v107) & 0xF;
    if ((v107 & 0x2000000000000000) == 0)
    {
      v125 = v156 & 0xFFFFFFFFFFFFLL;
    }

    *(v120 + 18) = v125 != 0;

    v126 = v151;
    _os_log_impl(&dword_22B116000, v151, v117, "Added new energy guidance entry to cache for %{private}s %hd hasUtility: %{BOOL}d", v120, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v121);
    MEMORY[0x23188F650](v121, -1, -1);
    MEMORY[0x23188F650](v120, -1, -1);
    sub_22B12F174(v152, v154);

    (*(v146 + 8))(v137, v147);
  }

  else
  {
    (*(v113 + 8))(v114, v148);
    sub_22B12F174(v152, v154);

    (*(v110 + 8))(v112, v109);
  }

  *v119 = 1;
}

uint64_t sub_22B12C664(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v43 = a6;
  v44 = a8;
  v42 = a4;
  v41 = a3;
  v46 = a10;
  v14 = sub_22B36052C();
  v38 = *(v14 - 8);
  v39 = v14;
  v15 = *(v38 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v37[2] = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x23188EEB0](v16);
  v45 = sub_22B35EE0C();
  v18 = sub_22B35EDFC();
  [v18 setResultType_];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22B363640;
  v20 = MEMORY[0x277D837D0];
  *(v19 + 56) = MEMORY[0x277D837D0];
  v21 = sub_22B1280E4();
  *(v19 + 64) = v21;
  v22 = MEMORY[0x277D84958];
  v37[1] = a1;
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;
  v23 = MEMORY[0x277D849A0];
  *(v19 + 96) = v22;
  *(v19 + 104) = v23;
  *(v19 + 72) = v41;
  *(v19 + 136) = v20;
  *(v19 + 144) = v21;
  v24 = v43;
  *(v19 + 112) = v42;
  *(v19 + 120) = a5;
  *(v19 + 176) = v20;
  *(v19 + 184) = v21;
  *(v19 + 152) = v24;
  *(v19 + 160) = a7;
  *(v19 + 216) = v20;
  *(v19 + 224) = v21;
  *(v19 + 192) = v44;
  *(v19 + 200) = a9;

  v25 = sub_22B360CCC();
  [v18 setPredicate_];
  v26 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v27 = sub_22B36081C();
  v28 = [v26 initWithKey:v27 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_22B363650;
  *(v29 + 32) = v28;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v30 = v28;
  v31 = sub_22B360A3C();

  [v18 setSortDescriptors_];

  [v18 setFetchLimit_];
  v32 = *(v46 + 48);
  v33 = sub_22B360E9C();

  if (!(v33 >> 62))
  {
    result = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_9:

    v36 = 0;
    goto LABEL_7;
  }

  result = sub_22B36109C();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v33 & 0xC000000000000001) != 0)
  {
    v35 = MEMORY[0x23188EAC0](0, v33);
    goto LABEL_6;
  }

  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v35 = *(v33 + 32);
LABEL_6:
    v36 = v35;

LABEL_7:
    objc_autoreleasePoolPop(v40);
    return v36;
  }

  __break(1u);
  return result;
}

uint64_t sub_22B12CC1C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(char *, uint64_t)@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v129 = a8;
  v122 = a7;
  v115 = a6;
  v114 = a5;
  v125 = a3;
  v126 = a4;
  v121 = a2;
  v132 = a9;
  v13 = sub_22B35E33C();
  v113 = *(v13 - 8);
  v14 = *(v113 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22B36052C();
  v133 = *(v17 - 8);
  v134 = v17;
  v18 = *(v133 + 64);
  MEMORY[0x28223BE20](v17);
  v130 = (&v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v22 = &v106 - v21;
  v23 = sub_22B35DE9C();
  v119 = *(v23 - 8);
  v120 = v23;
  v24 = *(v119 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_22B35D8BC();
  v117 = *(v118 - 8);
  v27 = *(v117 + 64);
  MEMORY[0x28223BE20](v118);
  v116 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_22B35E20C();
  v127 = *(v124 - 8);
  v29 = *(v127 + 64);
  MEMORY[0x28223BE20](v124);
  v123 = &v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_22B35DF1C();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v106 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_22B35D82C();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  sub_22B35D81C();
  sub_22B12F0B4();
  v128 = a1;
  v39 = v131;
  v40 = sub_22B35D80C();
  if (v39)
  {

    v73 = v133;
    v72 = v134;
    v74 = [objc_opt_self() processInfo];
    v75 = [v74 processName];

    v76 = sub_22B36084C();
    v78 = v77;

    v135 = 513;
    v136 = 5;
    v137 = v76;
    v138 = v78;
    v139 = 0;
    static AutoBugCaptureManager.sendIssue(_:)(&v135);

    v79 = v130;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v80 = __swift_project_value_buffer(v72, qword_28140BD10);
    swift_beginAccess();
    (*(v73 + 16))(v79, v80, v72);
    v81 = v39;
    v82 = sub_22B36050C();
    v83 = sub_22B360D1C();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *v84 = 138543362;
      v86 = v39;
      v87 = _swift_stdlib_bridgeErrorToNSError();
      *(v84 + 4) = v87;
      *v85 = v87;
      _os_log_impl(&dword_22B116000, v82, v83, "Error preparing data for inserting into cache. %{public}@", v84, 0xCu);
      sub_22B12F10C(v85);
      MEMORY[0x23188F650](v85, -1, -1);
      MEMORY[0x23188F650](v84, -1, -1);
    }

    else
    {
    }

    result = (*(v73 + 8))(v79, v72);
    v89 = 0;
  }

  else
  {
    v106 = v16;
    v107 = v13;
    v108 = v22;
    v111 = a12;
    v110 = a11;
    v109 = a10;
    v42 = v40;
    v43 = v41;

    v112 = v42;
    v131 = v43;
    v44 = sub_22B35DCCC();
    v45 = sub_22B36081C();
    v46 = v121;
    [v121 setValue:v44 forKeyPath:v45];

    sub_22B35DF0C();
    v47 = sub_22B35DEDC();
    (*(v32 + 8))(v35, v31);
    v48 = sub_22B36081C();
    [v46 &off_2786FB278];

    v49 = sub_22B36081C();
    v50 = sub_22B36081C();
    [v46 &off_2786FB278];

    v51 = sub_22B36081C();
    v52 = sub_22B36081C();
    [v46 &off_2786FB278];

    v53 = sub_22B36081C();
    v54 = sub_22B36081C();
    [v46 &off_2786FB278];

    v55 = sub_22B36081C();
    v56 = sub_22B36081C();
    [v46 &off_2786FB278];

    v57 = v123;
    sub_22B35E30C();
    sub_22B35E1FC();
    v58 = v127 + 8;
    v115 = *(v127 + 8);
    v115(v57, v124);
    v59 = sub_22B36144C();
    v60 = sub_22B36081C();
    [v46 &off_2786FB278];

    v61 = v116;
    sub_22B35E2DC();
    sub_22B35D86C();
    (*(v117 + 8))(v61, v118);
    v62 = sub_22B35DDDC();
    v63 = v120;
    v64 = *(v119 + 8);
    v64(v26, v120);
    v65 = sub_22B36081C();
    [v46 setValue:v62 forKeyPath:v65];

    sub_22B35DE6C();
    v66 = sub_22B35DDDC();
    v64(v26, v63);
    v67 = sub_22B36081C();
    [v46 setValue:v66 forKeyPath:v67];

    v68 = sub_22B36144C();
    v69 = sub_22B36081C();
    [v46 setValue:v68 forKeyPath:v69];

    sub_22B2A534C(2);
    v70 = v128;
    v71 = v129;
    v127 = v58;
    v90 = v133;
    v91 = v134;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v92 = __swift_project_value_buffer(v91, qword_28140BD10);
    swift_beginAccess();
    (*(v90 + 16))(v108, v92, v91);
    v93 = v113;
    v94 = v106;
    v95 = v107;
    (*(v113 + 16))(v106, v70, v107);
    v96 = v126;

    v97 = sub_22B36050C();
    v98 = sub_22B360D2C();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = v71;
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v140 = v101;
      *v100 = 136381187;
      *(v100 + 4) = sub_22B1A7B20(v125, v96, &v140);
      *(v100 + 12) = 512;
      v102 = v123;
      v130 = v97;
      sub_22B35E30C();
      v103 = sub_22B35E1FC();
      v115(v102, v124);
      (*(v93 + 8))(v94, v107);
      *(v100 + 14) = v103;
      *(v100 + 16) = 1024;
      v104 = HIBYTE(v99) & 0xF;
      if ((v99 & 0x2000000000000000) == 0)
      {
        v104 = v122 & 0xFFFFFFFFFFFFLL;
      }

      *(v100 + 18) = v104 != 0;

      v105 = v130;
      _os_log_impl(&dword_22B116000, v130, v98, "Updated energy guidance to cache for %{private}s %hd hasUtility: %{BOOL}d", v100, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v101);
      MEMORY[0x23188F650](v101, -1, -1);
      MEMORY[0x23188F650](v100, -1, -1);
      sub_22B12F174(v112, v131);
    }

    else
    {
      (*(v93 + 8))(v94, v95);
      sub_22B12F174(v112, v131);
    }

    result = (*(v133 + 8))(v108, v134);
    v89 = 1;
  }

  *v132 = v89;
  return result;
}

void sub_22B12D8EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v42 = a6;
  v43 = a8;
  v41 = a4;
  v40 = a3;
  v39 = a1;
  v13 = sub_22B36052C();
  v36 = *(v13 - 8);
  v37 = v13;
  v14 = *(v36 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v35[1] = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x23188EEB0](v15);
  v17 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v18 = sub_22B36081C();
  v19 = [v17 initWithEntityName_];

  [v19 setResultType_];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22B363640;
  v21 = MEMORY[0x277D837D0];
  *(v20 + 56) = MEMORY[0x277D837D0];
  v22 = sub_22B1280E4();
  *(v20 + 64) = v22;
  v23 = MEMORY[0x277D84958];
  *(v20 + 32) = v39;
  *(v20 + 40) = a2;
  v24 = MEMORY[0x277D849A0];
  *(v20 + 96) = v23;
  *(v20 + 104) = v24;
  *(v20 + 72) = v40;
  *(v20 + 136) = v21;
  *(v20 + 144) = v22;
  v25 = v42;
  *(v20 + 112) = v41;
  *(v20 + 120) = a5;
  *(v20 + 176) = v21;
  *(v20 + 184) = v22;
  *(v20 + 152) = v25;
  *(v20 + 160) = a7;
  *(v20 + 216) = v21;
  *(v20 + 224) = v22;
  *(v20 + 192) = v43;
  *(v20 + 200) = a9;

  v26 = sub_22B360CCC();
  [v19 setPredicate_];
  v27 = *(a10 + 48);
  sub_22B35EE0C();
  v28 = v27;
  v29 = sub_22B360E9C();

  if (!(v29 >> 62))
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_3;
    }

LABEL_10:

    v34 = *(a10 + 48);
    sub_22B2A534C(2);

    objc_autoreleasePoolPop(v38);
    return;
  }

  v30 = sub_22B36109C();
  if (!v30)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v30 >= 1)
  {
    for (i = 0; i != v30; ++i)
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x23188EAC0](i, v29);
      }

      else
      {
        v32 = *(v29 + 8 * i + 32);
      }

      v33 = v32;
      [*(a10 + 48) deleteObject_];
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_22B12DD6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int16 a10, uint64_t a11)
{
  v46 = a8;
  v43 = a4;
  v44 = a6;
  v42 = a3;
  v48 = a11;
  v45 = a10;
  v15 = sub_22B36052C();
  v39 = *(v15 - 8);
  v40 = v15;
  v16 = *(v39 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v38[2] = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x23188EEB0](v17);
  v47 = sub_22B35EE0C();
  v19 = sub_22B35EDFC();
  [v19 setResultType_];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22B363660;
  v21 = MEMORY[0x277D837D0];
  *(v20 + 56) = MEMORY[0x277D837D0];
  v22 = sub_22B1280E4();
  *(v20 + 64) = v22;
  v38[1] = a1;
  *(v20 + 32) = a1;
  *(v20 + 40) = a2;
  v23 = MEMORY[0x277D84958];
  v24 = MEMORY[0x277D849A0];
  *(v20 + 96) = MEMORY[0x277D84958];
  *(v20 + 104) = v24;
  *(v20 + 72) = v42;
  *(v20 + 136) = v21;
  *(v20 + 144) = v22;
  v25 = v44;
  *(v20 + 112) = v43;
  *(v20 + 120) = a5;
  *(v20 + 176) = v21;
  *(v20 + 184) = v22;
  *(v20 + 152) = v25;
  *(v20 + 160) = a7;
  *(v20 + 216) = v21;
  *(v20 + 224) = v22;
  *(v20 + 192) = v46;
  *(v20 + 200) = a9;
  *(v20 + 256) = v23;
  *(v20 + 264) = v24;
  *(v20 + 232) = v45;

  v26 = sub_22B360CCC();
  [v19 setPredicate_];
  v27 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v28 = sub_22B36081C();
  v29 = [v27 initWithKey:v28 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_22B363650;
  *(v30 + 32) = v29;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v31 = v29;
  v32 = sub_22B360A3C();

  [v19 setSortDescriptors_];

  [v19 setFetchLimit_];
  v33 = *(v48 + 48);
  v34 = sub_22B360E9C();

  if (!(v34 >> 62))
  {
    result = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_9:

    v37 = 0;
    goto LABEL_7;
  }

  result = sub_22B36109C();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v34 & 0xC000000000000001) != 0)
  {
    v36 = MEMORY[0x23188EAC0](0, v34);
    goto LABEL_6;
  }

  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v36 = *(v34 + 32);
LABEL_6:
    v37 = v36;

LABEL_7:
    objc_autoreleasePoolPop(v41);
    return v37;
  }

  __break(1u);
  return result;
}

void sub_22B12E33C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v45 = a6;
  v46 = a8;
  v44 = a4;
  v43 = a3;
  v48 = a10;
  v14 = sub_22B36052C();
  v40 = *(v14 - 8);
  v41 = v14;
  v15 = *(v40 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v39[2] = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x23188EEB0](v16);
  v47 = sub_22B35EE0C();
  v18 = sub_22B35EDFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD10, &qword_22B363A30);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D837D0];
  *(v19 + 16) = xmmword_22B3634B0;
  *(v19 + 56) = v20;
  strcpy((v19 + 32), "energyGuidance");
  *(v19 + 47) = -18;
  v21 = sub_22B360A3C();

  [v18 setPropertiesToFetch_];

  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_22B363640;
  *(v22 + 56) = v20;
  v23 = sub_22B1280E4();
  *(v22 + 64) = v23;
  v24 = MEMORY[0x277D84958];
  v39[1] = a1;
  *(v22 + 32) = a1;
  *(v22 + 40) = a2;
  v25 = MEMORY[0x277D849A0];
  *(v22 + 96) = v24;
  *(v22 + 104) = v25;
  *(v22 + 72) = v43;
  *(v22 + 136) = v20;
  *(v22 + 144) = v23;
  v26 = v45;
  *(v22 + 112) = v44;
  *(v22 + 120) = a5;
  *(v22 + 176) = v20;
  *(v22 + 184) = v23;
  *(v22 + 152) = v26;
  *(v22 + 160) = a7;
  *(v22 + 216) = v20;
  *(v22 + 224) = v23;
  *(v22 + 192) = v46;
  *(v22 + 200) = a9;

  v27 = sub_22B360CCC();
  [v18 setPredicate_];
  v28 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v29 = sub_22B36081C();
  v30 = [v28 initWithKey:v29 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_22B363650;
  *(v31 + 32) = v30;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v32 = v30;
  v33 = sub_22B360A3C();

  [v18 setSortDescriptors_];

  [v18 setFetchLimit_];
  v34 = *(v48 + 48);
  v35 = sub_22B360E9C();

  if (!(v35 >> 62))
  {
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:

    goto LABEL_7;
  }

  if (!sub_22B36109C())
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v35 & 0xC000000000000001) != 0)
  {
    v36 = MEMORY[0x23188EAC0](0, v35);
    goto LABEL_6;
  }

  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v36 = *(v35 + 32);
LABEL_6:
    v37 = v36;

    v38 = [v37 energyGuidance];

    sub_22B35DCDC();
LABEL_7:
    objc_autoreleasePoolPop(v42);
    return;
  }

  __break(1u);
}

uint64_t sub_22B12E9AC()
{
  type metadata accessor for EnergyGuidanceCacheManager();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  if (qword_28140AD60 != -1)
  {
    swift_once();
  }

  v1 = sub_22B33AD90(0xD000000000000010, 0x800000022B368B50, 0x6361436C61636F4CLL, 0xEA00000000006568);
  v2 = *(v0 + 112);
  *(v0 + 112) = v1;

  qword_28140BDC8 = v0;
  return result;
}

void sub_22B12EA68(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, NSObject *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, void *a10, unint64_t a11)
{
  v19 = MEMORY[0x23188EEB0]();
  sub_22B12B7B8(a1, a3, a4, a2, a5, a6, a7, a8, &v23, a10, a11);
  objc_autoreleasePoolPop(v19);
  if (v21)
  {
    __break(1u);
  }

  else
  {
    v18 = v23;
    [*(a1 + 48) refreshAllObjects];
    *a9 = v18;
  }
}

id sub_22B12EB3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  sub_22B12E33C(a2, a3, a4, a5, a6, a7, a8, a10, a11, a1);
  v14 = v13;
  v16 = v15;
  result = [*(a1 + 48) refreshAllObjects];
  *a9 = v14;
  a9[1] = v16;
  return result;
}

uint64_t sub_22B12EBC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int16 a12, uint64_t a13)
{
  v28 = a7;
  v29 = a8;
  v26 = a5;
  v27 = a6;
  v31 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA240, &qword_22B3636E8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v26 - v19;
  v30 = a1;
  v21 = sub_22B12DD6C(a2, a3, a4, v26, v27, v28, v29, a10, a11, a12, a1);
  v22 = v21;
  if (v21)
  {
    sub_22B12B508(v21, v20);
    v23 = type metadata accessor for CDEnergyGuidanceCache();
    (*(*(v23 - 8) + 56))(v20, 0, 1, v23);
    sub_22B12F2C4(v20, a13, &qword_27D8BA240, &qword_22B3636E8);
  }

  v24 = *(v30 + 48);
  [v24 refreshAllObjects];

  return sub_22B12F208(a13, v31);
}

id sub_22B12ED5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11)
{
  sub_22B12D8EC(a2, a3, a4, a5, a6, a7, a8, a10, a11, a1);
  v14 = v13;
  result = [*(a1 + 48) refreshAllObjects];
  *a9 = v14 & 1;
  return result;
}

uint64_t sub_22B12EDE0()
{
  v1 = v0;
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_22B36050C();
  v9 = sub_22B360D2C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22B116000, v8, v9, "Delete all energy guidance from cache", v10, 2u);
    MEMORY[0x23188F650](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = *(v1 + 112);
  if (!v11)
  {
    return 0;
  }

  v12 = *(v11 + 48);

  v13 = v12;
  sub_22B360E7C();

  return v15[23];
}

void sub_22B12EFF0(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = MEMORY[0x23188EEB0]();
  sub_22B339F64(0xD000000000000013, 0x800000022B368D90, a1, &v7);
  objc_autoreleasePoolPop(v5);
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v6 = v7;
    [*(a1 + 48) refreshAllObjects];
    *a2 = v6;
  }
}

unint64_t sub_22B12F0B4()
{
  result = qword_281409198;
  if (!qword_281409198)
  {
    sub_22B35E33C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281409198);
  }

  return result;
}

uint64_t sub_22B12F10C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAA90, &unk_22B362BC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B12F174(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22B12F208(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA240, &qword_22B3636E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for CDEnergyGuidanceCache()
{
  result = qword_281409C88;
  if (!qword_281409C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B12F2C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_22B12F370()
{
  sub_22B12F444();
  if (v0 <= 0x3F)
  {
    sub_22B35DE9C();
    if (v1 <= 0x3F)
    {
      sub_22B12F49C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22B12F444()
{
  if (!qword_28140B478)
  {
    sub_22B35DF1C();
    v0 = sub_22B360FFC();
    if (!v1)
    {
      atomic_store(v0, &qword_28140B478);
    }
  }
}

void sub_22B12F49C()
{
  if (!qword_281409358)
  {
    v0 = sub_22B360FFC();
    if (!v1)
    {
      atomic_store(v0, &qword_281409358);
    }
  }
}

uint64_t sub_22B12F4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22B124D88;

  return v11(a1, a2, a3);
}

uint64_t sub_22B12F614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22B124D88;

  return v11(a1, a2, a3);
}

uint64_t sub_22B12F73C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22B124D88;

  return v11(a1, a2, a3);
}

uint64_t sub_22B12F864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 32);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_22B12F9BC;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_22B12F9BC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_22B12FB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 40);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_22B119A60;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_22B12FC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610) - 8) + 64) + 15;
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B12FCF0, 0, 0);
}

uint64_t sub_22B12FCF0()
{
  v1 = v0[3];
  if (*(v1 + 16))
  {
    v2 = v0[7];
    v3 = v0[4];
    v4 = v0[2];
    v5 = sub_22B360B6C();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v3;
    v6[5] = v1;

    sub_22B130048(v2, &unk_22B363848, v6);
    sub_22B123284(v2, &qword_27D8BA8D0, &qword_22B363610);
  }

  v7 = v0[5];
  if (*(v7 + 16))
  {
    v8 = v0[7];
    v9 = v0[4];
    v10 = v0[2];
    v11 = sub_22B360B6C();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v9;
    v12[5] = v7;

    sub_22B130048(v8, &unk_22B363858, v12);
    sub_22B123284(v8, &qword_27D8BA8D0, &qword_22B363610);
  }

  v13 = v0[6];
  if (*(v13 + 16))
  {
    v14 = v0[7];
    v15 = v0[4];
    v16 = v0[2];
    v17 = sub_22B360B6C();
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v15;
    v18[5] = v13;

    sub_22B130048(v14, &unk_22B363868, v18);
    sub_22B123284(v14, &qword_27D8BA8D0, &qword_22B363610);
  }

  v19 = v0[7];

  v20 = v0[1];

  return v20();
}

uint64_t sub_22B12FFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_22B124D88;

  return sub_22B1303FC(a5);
}

uint64_t sub_22B130048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v22 - v10;
  sub_22B124BA8(a1, v22 - v10);
  v12 = sub_22B360B6C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_22B123284(v11, &qword_27D8BA8D0, &qword_22B363610);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_22B360ACC();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_22B360B5C();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t sub_22B130250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_22B119A60;

  return sub_22B1306FC(a5);
}

uint64_t sub_22B1302F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_22B124D88;

  return sub_22B1309C4(a5);
}

uint64_t sub_22B1303A0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_22B1303FC(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_22B36052C();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1304BC, 0, 0);
}

uint64_t sub_22B1304BC()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_22B36050C();
  v6 = sub_22B360D0C();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[5];
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(v8 + 16);

    _os_log_impl(&dword_22B116000, v5, v6, "[ActivityLogCoordinator] Batch processing %ld load events", v9, 0xCu);
    MEMORY[0x23188F650](v9, -1, -1);
  }

  else
  {
    v10 = v0[5];
  }

  (*(v0[7] + 8))(v0[8], v0[6]);
  if (qword_27D8B9F88 != -1)
  {
    swift_once();
  }

  v11 = qword_27D8BB1B0;
  v0[9] = qword_27D8BB1B0;

  return MEMORY[0x2822009F8](sub_22B130690, v11, 0);
}

uint64_t sub_22B130690()
{
  v1 = v0[8];
  v2 = v0[9];
  sub_22B186604(v0[5]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_22B1306FC(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_22B36052C();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1307BC, 0, 0);
}

uint64_t sub_22B1307BC()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_22B36050C();
  v6 = sub_22B360D0C();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[5];
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(v8 + 16);

    _os_log_impl(&dword_22B116000, v5, v6, "[ActivityLogCoordinator] Batch processing %ld hourly session digest events", v9, 0xCu);
    MEMORY[0x23188F650](v9, -1, -1);
  }

  else
  {
    v10 = v0[5];
  }

  (*(v0[7] + 8))(v0[8], v0[6]);
  if (qword_27D8B9FB8 != -1)
  {
    swift_once();
  }

  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = sub_22B1352BC;
  v12 = v0[5];

  return sub_22B3187AC(v12);
}

uint64_t sub_22B1309C4(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_22B36052C();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B130A84, 0, 0);
}

uint64_t sub_22B130A84()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_22B36050C();
  v6 = sub_22B360D0C();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[5];
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(v8 + 16);

    _os_log_impl(&dword_22B116000, v5, v6, "[ActivityLogCoordinator] Batch processing %ld daily session digest events", v9, 0xCu);
    MEMORY[0x23188F650](v9, -1, -1);
  }

  else
  {
    v10 = v0[5];
  }

  (*(v0[7] + 8))(v0[8], v0[6]);
  if (qword_27D8B9F78 != -1)
  {
    swift_once();
  }

  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = sub_22B130C8C;
  v12 = v0[5];

  return sub_22B175388(v12);
}

uint64_t sub_22B130C8C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  if (v0)
  {
  }

  v5 = *(v2 + 64);

  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_22B130DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a1;
  v5[22] = a3;
  v6 = sub_22B36052C();
  v5[25] = v6;
  v7 = *(v6 - 8);
  v5[26] = v7;
  v8 = *(v7 + 64) + 15;
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v9 = sub_22B35E7EC();
  v5[29] = v9;
  v10 = *(v9 - 8);
  v5[30] = v10;
  v11 = *(v10 + 64) + 15;
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v12 = sub_22B35E6AC();
  v5[33] = v12;
  v13 = *(v12 - 8);
  v5[34] = v13;
  v14 = *(v13 + 64) + 15;
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v15 = sub_22B35EA1C();
  v5[37] = v15;
  v16 = *(v15 - 8);
  v5[38] = v16;
  v17 = *(v16 + 64) + 15;
  v5[39] = swift_task_alloc();
  v18 = sub_22B35E9CC();
  v5[40] = v18;
  v19 = *(v18 - 8);
  v5[41] = v19;
  v20 = *(v19 + 64) + 15;
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v21 = sub_22B35E41C();
  v5[44] = v21;
  v22 = *(v21 - 8);
  v5[45] = v22;
  v23 = *(v22 + 64) + 15;
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v24 = sub_22B35EACC();
  v5[48] = v24;
  v25 = *(v24 - 8);
  v5[49] = v25;
  v26 = *(v25 + 64) + 15;
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA248, &unk_22B3637E0) - 8) + 64) + 15;
  v5[52] = swift_task_alloc();
  v28 = sub_22B35DE9C();
  v5[53] = v28;
  v29 = *(v28 - 8);
  v5[54] = v29;
  v30 = *(v29 + 64) + 15;
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v31 = sub_22B35EA0C();
  v5[57] = v31;
  v32 = *(v31 - 8);
  v5[58] = v32;
  v33 = *(v32 + 64) + 15;
  v5[59] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1311D0, 0, 0);
}

uint64_t sub_22B1311D0()
{
  v1 = *(v0 + 472);
  v3 = *(v0 + 440);
  v2 = *(v0 + 448);
  v4 = *(v0 + 424);
  v5 = *(v0 + 432);
  v6 = *(v0 + 192);
  v29 = *(v0 + 176);
  v30 = *(v0 + 184);
  v28 = *(v0 + 168);
  v7 = __swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));
  sub_22B35DE6C();
  sub_22B35DDCC();
  v8 = *(v5 + 8);
  v8(v3, v4);
  sub_22B35DE6C();
  v9 = *v7;
  sub_22B35EA7C();
  v8(v3, v4);
  v8(v2, v4);
  v10 = *__swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));
  v11 = sub_22B35EA8C();
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA258, &qword_22B363808);
  *(v0 + 40) = v14;
  *(v0 + 48) = sub_22B134D30();
  *(v0 + 16) = v11;
  *(v0 + 24) = v13;
  v15 = __swift_project_boxed_opaque_existential_1((v0 + 16), v14);
  v16 = *(v14 - 8);
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  (*(v16 + 16))(v18, v15, v14);
  *(v0 + 80) = swift_getAssociatedTypeWitness();
  *(v0 + 88) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  v19 = *(v18 + 8);
  (*v18)();

  *(v0 + 608) = *MEMORY[0x277D17968];
  *(v0 + 612) = *MEMORY[0x277D17500];
  v20 = MEMORY[0x277D174F8];
  *(v0 + 616) = *MEMORY[0x277D174F0];
  *(v0 + 620) = *v20;
  *(v0 + 624) = *MEMORY[0x277D175C0];
  v21 = MEMORY[0x277D84F90];
  *(v0 + 528) = MEMORY[0x277D84F90];
  *(v0 + 520) = v21;
  *(v0 + 504) = 0;
  *(v0 + 512) = v21;
  *(v0 + 488) = v21;
  *(v0 + 496) = v21;
  *(v0 + 480) = v21;
  v22 = *(v0 + 80);
  v23 = *(v0 + 88);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v22);
  v24 = *(MEMORY[0x277D856D8] + 4);
  v25 = swift_task_alloc();
  *(v0 + 536) = v25;
  *v25 = v0;
  v25[1] = sub_22B131510;
  v26 = *(v0 + 416);

  return MEMORY[0x282200310](v26, 0, 0, v0 + 144, v22, v23);
}

uint64_t sub_22B131510()
{
  v2 = *(*v1 + 536);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_22B132D24;
  }

  else
  {
    v3 = sub_22B131620;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B131620()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 384);
  v3 = *(v0 + 392);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 528);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    v5 = *(v4 + 16);
    v6 = *(v0 + 512);
    if (v5 || *(v6 + 16) || *(*(v0 + 520) + 16))
    {
      v7 = *(v0 + 528);
      v8 = *(v0 + 520);
      v9 = *(v0 + 192);
      v10 = swift_task_alloc();
      *(v0 + 592) = v10;
      v10[2] = v7;
      v10[3] = v9;
      v10[4] = v6;
      v10[5] = v8;
      v11 = *(MEMORY[0x277D858E8] + 4);
      v12 = swift_task_alloc();
      *(v0 + 600) = v12;
      *v12 = v0;
      v12[1] = sub_22B132A78;
LABEL_6:

      return MEMORY[0x282200600]();
    }

    v126 = *(v0 + 528);
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));

    v127 = *(v0 + 472);
    v129 = *(v0 + 440);
    v128 = *(v0 + 448);
    v131 = *(v0 + 408);
    v130 = *(v0 + 416);
    v132 = *(v0 + 400);
    v134 = *(v0 + 368);
    v133 = *(v0 + 376);
    v135 = *(v0 + 344);
    v158 = *(v0 + 336);
    v160 = *(v0 + 312);
    v162 = *(v0 + 288);
    v164 = *(v0 + 280);
    v166 = *(v0 + 256);
    v168 = *(v0 + 248);
    v170 = *(v0 + 224);
    v174 = *(v0 + 216);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v136 = *(v0 + 8);
    v137 = *(v0 + 504);

    return v136(v137);
  }

  else
  {
    (*(v3 + 32))(*(v0 + 408), v1, v2);
    if (sub_22B360BFC())
    {
      v13 = *(v0 + 528);
      v15 = *(v0 + 464);
      v14 = *(v0 + 472);
      v16 = *(v0 + 456);
      v17 = *(v0 + 408);
      v18 = *(v0 + 384);
      v19 = *(v0 + 392);

      sub_22B134CDC();
      swift_allocError();
      *v20 = 2;
      swift_willThrow();
      (*(v19 + 8))(v17, v18);
      (*(v15 + 8))(v14, v16);
      v21 = *(v0 + 520);
      v22 = *(v0 + 512);
      v23 = *(v0 + 472);
      v25 = *(v0 + 440);
      v24 = *(v0 + 448);
      v27 = *(v0 + 408);
      v26 = *(v0 + 416);
      v28 = *(v0 + 400);
      v29 = *(v0 + 376);
      v154 = *(v0 + 368);
      v155 = *(v0 + 344);
      v156 = *(v0 + 336);
      v157 = *(v0 + 312);
      v159 = *(v0 + 288);
      v161 = *(v0 + 280);
      v163 = *(v0 + 256);
      v165 = *(v0 + 248);
      v167 = *(v0 + 224);
      v169 = *(v0 + 216);
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));

      __swift_destroy_boxed_opaque_existential_0((v0 + 16));

      v30 = *(v0 + 8);

      return v30();
    }

    else
    {
      v31 = *(v0 + 608);
      v32 = *(v0 + 400);
      v33 = *(v0 + 384);
      v34 = *(v0 + 392);
      (*(v34 + 16))(v32, *(v0 + 408), v33);
      if ((*(v34 + 88))(v32, v33) != v31)
      {
        if (qword_28140A0C8 == -1)
        {
          goto LABEL_22;
        }

        goto LABEL_56;
      }

      v35 = *(v0 + 612);
      v36 = *(v0 + 400);
      v37 = *(v0 + 376);
      v39 = *(v0 + 360);
      v38 = *(v0 + 368);
      v40 = *(v0 + 352);
      (*(*(v0 + 392) + 96))(v36, *(v0 + 384));
      (*(v39 + 32))(v37, v36, v40);
      (*(v39 + 16))(v38, v37, v40);
      v41 = (*(v39 + 88))(v38, v40);
      if (v41 != v35)
      {
        if (v41 == *(v0 + 616))
        {
          v93 = *(v0 + 512);
          v94 = *(v0 + 368);
          v96 = *(v0 + 280);
          v95 = *(v0 + 288);
          v97 = *(v0 + 264);
          v98 = *(v0 + 272);
          (*(*(v0 + 360) + 96))(v94, *(v0 + 352));
          v172 = *(v98 + 32);
          v172(v95, v94, v97);
          (*(v98 + 16))(v96, v95, v97);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v65 = *(v0 + 512);
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v65 = sub_22B32CCD0(0, *(v65 + 2) + 1, 1, *(v0 + 512));
          }

          v101 = *(v65 + 2);
          v100 = *(v65 + 3);
          if (v101 >= v100 >> 1)
          {
            v65 = sub_22B32CCD0(v100 > 1, v101 + 1, 1, v65);
          }

          v102 = *(v0 + 376);
          v103 = *(v0 + 352);
          v104 = *(v0 + 360);
          v105 = *(v0 + 280);
          v107 = *(v0 + 264);
          v106 = *(v0 + 272);
          (*(v106 + 8))(*(v0 + 288), v107);
          (*(v104 + 8))(v102, v103);
          *(v65 + 2) = v101 + 1;
          v172(&v65[((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v101], v105, v107);
          v64 = *(v0 + 528);
          v62 = *(v0 + 520);
          v66 = *(v0 + 496);
          v63 = v65;
          goto LABEL_27;
        }

        if (v41 == *(v0 + 620))
        {
          v111 = *(v0 + 520);
          v112 = *(v0 + 368);
          v114 = *(v0 + 248);
          v113 = *(v0 + 256);
          v115 = *(v0 + 232);
          v116 = *(v0 + 240);
          (*(*(v0 + 360) + 96))(v112, *(v0 + 352));
          v173 = *(v116 + 32);
          v173(v113, v112, v115);
          (*(v116 + 16))(v114, v113, v115);
          v117 = swift_isUniquelyReferenced_nonNull_native();
          v66 = *(v0 + 520);
          if ((v117 & 1) == 0)
          {
            v66 = sub_22B32CCA8(0, *(v66 + 2) + 1, 1, *(v0 + 520));
          }

          v119 = *(v66 + 2);
          v118 = *(v66 + 3);
          if (v119 >= v118 >> 1)
          {
            v66 = sub_22B32CCA8(v118 > 1, v119 + 1, 1, v66);
          }

          v120 = *(v0 + 376);
          v121 = *(v0 + 352);
          v122 = *(v0 + 360);
          v123 = *(v0 + 248);
          v125 = *(v0 + 232);
          v124 = *(v0 + 240);
          (*(v124 + 8))(*(v0 + 256), v125);
          (*(v122 + 8))(v120, v121);
          *(v66 + 2) = v119 + 1;
          v173(&v66[((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v119], v123, v125);
          v64 = *(v0 + 528);
          v63 = *(v0 + 512);
          v62 = v66;
          goto LABEL_26;
        }

        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v138 = *(v0 + 224);
        v139 = *(v0 + 200);
        v140 = *(v0 + 208);
        v141 = __swift_project_value_buffer(v139, qword_28140BD10);
        swift_beginAccess();
        (*(v140 + 16))(v138, v141, v139);
        v142 = sub_22B36050C();
        v143 = sub_22B360D1C();
        if (os_log_type_enabled(v142, v143))
        {
          v144 = swift_slowAlloc();
          *v144 = 0;
          _os_log_impl(&dword_22B116000, v142, v143, "Unknown energykit event", v144, 2u);
          MEMORY[0x23188F650](v144, -1, -1);
        }

        v146 = *(v0 + 368);
        v145 = *(v0 + 376);
        v147 = *(v0 + 352);
        v148 = *(v0 + 360);
        v149 = *(v0 + 224);
        v150 = *(v0 + 200);
        v151 = *(v0 + 208);

        (*(v151 + 8))(v149, v150);
        v152 = *(v148 + 8);
        v152(v145, v147);
        v152(v146, v147);
        goto LABEL_25;
      }

      v42 = *(v0 + 624);
      v43 = *(v0 + 368);
      v44 = *(v0 + 344);
      v45 = *(v0 + 320);
      v46 = *(v0 + 328);
      v48 = *(v0 + 304);
      v47 = *(v0 + 312);
      v49 = *(v0 + 296);
      v50 = *(v0 + 184);
      (*(*(v0 + 360) + 96))(v43, *(v0 + 352));
      v171 = *(v46 + 32);
      v171(v44, v43, v45);
      (*(v48 + 104))(v47, v42, v49);
      sub_22B134F24();
      sub_22B360A1C();
      sub_22B360A1C();
      (*(v48 + 8))(v47, v49);
      if (*(v0 + 152) != *(v0 + 160))
      {
        v108 = *(v0 + 376);
        v109 = *(v0 + 352);
        v110 = *(v0 + 360);
        (*(*(v0 + 328) + 8))(*(v0 + 344), *(v0 + 320));
        (*(v110 + 8))(v108, v109);
        goto LABEL_25;
      }

      v51 = *(v0 + 528);
      (*(*(v0 + 328) + 16))(*(v0 + 336), *(v0 + 344), *(v0 + 320));
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v53 = *(v0 + 528);
      if ((v52 & 1) == 0)
      {
        v53 = sub_22B32CCF8(0, *(v53 + 2) + 1, 1, *(v0 + 528));
      }

      v55 = *(v53 + 2);
      v54 = *(v53 + 3);
      if (v55 >= v54 >> 1)
      {
        v53 = sub_22B32CCF8(v54 > 1, v55 + 1, 1, v53);
      }

      v56 = *(v0 + 376);
      v57 = *(v0 + 352);
      v58 = *(v0 + 360);
      v59 = *(v0 + 336);
      v61 = *(v0 + 320);
      v60 = *(v0 + 328);
      (*(v60 + 8))(*(v0 + 344), v61);
      (*(v58 + 8))(v56, v57);
      *(v53 + 2) = v55 + 1;
      v171(&v53[((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v55], v59, v61);
      v62 = *(v0 + 520);
      v63 = *(v0 + 512);
      v64 = v53;
      v65 = *(v0 + 488);
      v66 = *(v0 + 496);
      while (1)
      {
        *(v0 + 560) = v66;
        *(v0 + 552) = v65;
        *(v0 + 544) = v53;
        v80 = *(v0 + 504);
        v81 = __OFADD__(v80, 1);
        v82 = v80 + 1;
        *(v0 + 568) = v82;
        if (!v81)
        {
          break;
        }

        __break(1u);
LABEL_56:
        swift_once();
LABEL_22:
        v68 = *(v0 + 208);
        v67 = *(v0 + 216);
        v69 = *(v0 + 200);
        v70 = __swift_project_value_buffer(v69, qword_28140BD10);
        swift_beginAccess();
        (*(v68 + 16))(v67, v70, v69);
        v71 = sub_22B36050C();
        v72 = sub_22B360D1C();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          *v73 = 0;
          _os_log_impl(&dword_22B116000, v71, v72, "Unknown event type", v73, 2u);
          MEMORY[0x23188F650](v73, -1, -1);
        }

        v75 = *(v0 + 392);
        v74 = *(v0 + 400);
        v76 = *(v0 + 384);
        v78 = *(v0 + 208);
        v77 = *(v0 + 216);
        v79 = *(v0 + 200);

        (*(v78 + 8))(v77, v79);
        (*(v75 + 8))(v74, v76);
LABEL_25:
        v64 = *(v0 + 528);
        v62 = *(v0 + 520);
        v63 = *(v0 + 512);
        v66 = *(v0 + 496);
LABEL_26:
        v65 = *(v0 + 488);
LABEL_27:
        v53 = *(v0 + 480);
      }

      if (__ROR8__(0x8F5C28F5C28F5C29 * v82 + 0x51EB851EB851EB8, 2) <= 0x28F5C28F5C28F5CuLL)
      {
        v89 = *(v0 + 192);
        v90 = swift_task_alloc();
        *(v0 + 576) = v90;
        v90[2] = v64;
        v90[3] = v89;
        v90[4] = v63;
        v90[5] = v62;
        v91 = *(MEMORY[0x277D858E8] + 4);
        v92 = swift_task_alloc();
        *(v0 + 584) = v92;
        *v92 = v0;
        v92[1] = sub_22B13246C;
        goto LABEL_6;
      }

      (*(*(v0 + 392) + 8))(*(v0 + 408), *(v0 + 384));
      v83 = *(v0 + 568);
      *(v0 + 528) = v64;
      *(v0 + 520) = v62;
      *(v0 + 504) = v83;
      *(v0 + 512) = v63;
      *(v0 + 488) = v65;
      *(v0 + 496) = v66;
      *(v0 + 480) = v53;
      v84 = *(v0 + 80);
      v85 = *(v0 + 88);
      __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v84);
      v86 = *(MEMORY[0x277D856D8] + 4);
      v87 = swift_task_alloc();
      *(v0 + 536) = v87;
      *v87 = v0;
      v87[1] = sub_22B131510;
      v88 = *(v0 + 416);

      return MEMORY[0x282200310](v88, 0, 0, v0 + 144, v84, v85);
    }
  }
}

uint64_t sub_22B13246C()
{
  v1 = *(*v0 + 584);
  v2 = *(*v0 + 576);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B132584, 0, 0);
}

uint64_t sub_22B132584()
{
  v1 = v0[68];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = v0[68];
  if (isUniquelyReferenced_nonNull_native)
  {
    v4 = *(v3 + 16);
    v5 = swift_isUniquelyReferenced_nonNull_native();
    v6 = v0[68];
    if ((v5 & 1) == 0)
    {
      v6 = sub_22B32CCF8(0, v4, 1, v0[68]);
    }

    v7 = v0[40];
    v8 = *(v0[41] + 80);
    v9 = v6 + ((v8 + 32) & ~v8);
    swift_arrayDestroy();
    if (v4)
    {
      v10 = *(v0[41] + 72);
      if (v10 * v4 > 0 || v9 >= &v9[v10 * v4 + (v6[2] - v4) * v10])
      {
        v12 = v0[40];
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v10)
      {
        v25 = v0[40];
        swift_arrayInitWithTakeBackToFront();
      }

      v6[2] -= v4;
    }
  }

  else if (*(v3 + 24) > 1uLL)
  {
    v13 = v0[41];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA268, &unk_22B367680);
    v14 = *(v13 + 72);
    v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v6 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v6);
    if (!v14)
    {
      __break(1u);
      goto LABEL_67;
    }

    v22 = v16 - v15;
    if (v16 - v15 == 0x8000000000000000 && v14 == -1)
    {
      goto LABEL_69;
    }

    v24 = v0[68];
    v6[2] = 0;
    v6[3] = 2 * (v22 / v14);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  v26 = v0[69];
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v28 = v0[69];
  if (v27)
  {
    v29 = *(v28 + 16);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v31 = v0[69];
    if ((v30 & 1) == 0)
    {
      v31 = sub_22B32CCD0(0, v29, 1, v0[69]);
    }

    v32 = v0[33];
    v33 = *(v0[34] + 80);
    v34 = v31 + ((v33 + 32) & ~v33);
    swift_arrayDestroy();
    if (v29)
    {
      v35 = *(v0[34] + 72);
      if (v35 * v29 > 0 || v34 >= &v34[v35 * v29 + (v31[2] - v29) * v35])
      {
        v37 = v0[33];
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v35)
      {
        v44 = v0[33];
        swift_arrayInitWithTakeBackToFront();
      }

      v31[2] -= v29;
    }

    goto LABEL_43;
  }

  if (*(v28 + 24) <= 1uLL)
  {

    v31 = MEMORY[0x277D84F90];
    goto LABEL_43;
  }

  v38 = v0[34];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA270, &unk_22B363830);
  v39 = *(v38 + 72);
  v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v31 = swift_allocObject();
  v16 = _swift_stdlib_malloc_size(v31);
  if (!v39)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v41 = v16 - v40;
  if (v16 - v40 == 0x8000000000000000 && v39 == -1)
  {
    goto LABEL_70;
  }

  v43 = v0[69];
  v31[2] = 0;
  v31[3] = 2 * (v41 / v39);

LABEL_43:
  v45 = v0[70];
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v47 = v0[70];
  if (v46)
  {
    v48 = *(v47 + 16);
    v49 = v0[70];
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v51 = v0[70];
    if ((v50 & 1) == 0)
    {
      v51 = sub_22B32CCA8(0, v48, 1, v0[70]);
    }

    v52 = v0[29];
    v53 = *(v0[30] + 80);
    v54 = v51 + ((v53 + 32) & ~v53);
    swift_arrayDestroy();
    if (v48)
    {
      v55 = *(v0[30] + 72);
      if (v55 * v48 > 0 || v54 >= &v54[v55 * v48 + (v51[2] - v48) * v55])
      {
        v62 = v0[29];
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v55)
      {
        v56 = v0[29];
        swift_arrayInitWithTakeBackToFront();
      }

      v51[2] -= v48;
    }

    (*(v0[49] + 8))(v0[51], v0[48]);
    goto LABEL_63;
  }

  if (*(v47 + 24) >= 2uLL)
  {
    v57 = v0[30];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA250, &unk_22B367FC0);
    v58 = *(v57 + 72);
    v59 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v51 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v51);
    if (v58)
    {
      if (v16 - v59 != 0x8000000000000000 || v58 != -1)
      {
        v51[2] = 0;
        v51[3] = 2 * ((v16 - v59) / v58);
        v61 = v0[70];
        goto LABEL_59;
      }

LABEL_71:
      __break(1u);
      return MEMORY[0x282200310](v16, v17, v18, v19, v20, v21);
    }

    goto LABEL_68;
  }

  v51 = MEMORY[0x277D84F90];
LABEL_59:
  (*(v0[49] + 8))(v0[51], v0[48]);

LABEL_63:
  v63 = v0[71];
  v0[66] = v6;
  v0[65] = v51;
  v0[63] = v63;
  v0[64] = v31;
  v0[61] = v31;
  v0[62] = v51;
  v0[60] = v6;
  v64 = v0[10];
  v65 = v0[11];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v64);
  v66 = *(MEMORY[0x277D856D8] + 4);
  v67 = swift_task_alloc();
  v0[67] = v67;
  *v67 = v0;
  v67[1] = sub_22B131510;
  v16 = v0[52];
  v19 = v0 + 18;
  v17 = 0;
  v18 = 0;
  v20 = v64;
  v21 = v65;

  return MEMORY[0x282200310](v16, v17, v18, v19, v20, v21);
}

uint64_t sub_22B132A78()
{
  v1 = *(*v0 + 600);
  v2 = *(*v0 + 592);
  v3 = *(*v0 + 528);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22B132BAC, 0, 0);
}

uint64_t sub_22B132BAC()
{
  v1 = v0[65];
  v2 = v0[64];
  (*(v0[58] + 8))(v0[59], v0[57]);

  v3 = v0[59];
  v5 = v0[55];
  v4 = v0[56];
  v7 = v0[51];
  v6 = v0[52];
  v8 = v0[50];
  v10 = v0[46];
  v9 = v0[47];
  v11 = v0[43];
  v15 = v0[42];
  v16 = v0[39];
  v17 = v0[36];
  v18 = v0[35];
  v19 = v0[32];
  v20 = v0[31];
  v21 = v0[28];
  v22 = v0[27];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v12 = v0[1];
  v13 = v0[63];

  return v12(v13);
}

uint64_t sub_22B132D24()
{
  v1 = v0[66];
  (*(v0[58] + 8))(v0[59], v0[57]);

  v23 = v0[18];
  v2 = v0[65];
  v3 = v0[64];
  v4 = v0[59];
  v6 = v0[55];
  v5 = v0[56];
  v8 = v0[51];
  v7 = v0[52];
  v9 = v0[50];
  v10 = v0[47];
  v13 = v0[46];
  v14 = v0[43];
  v15 = v0[42];
  v16 = v0[39];
  v17 = v0[36];
  v18 = v0[35];
  v19 = v0[32];
  v20 = v0[31];
  v21 = v0[28];
  v22 = v0[27];
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_22B132EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  v5 = sub_22B35E7EC();
  v4[20] = v5;
  v6 = *(v5 - 8);
  v4[21] = v6;
  v7 = *(v6 + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v8 = sub_22B35E41C();
  v4[24] = v8;
  v9 = *(v8 - 8);
  v4[25] = v9;
  v10 = *(v9 + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v11 = sub_22B35EACC();
  v4[28] = v11;
  v12 = *(v11 - 8);
  v4[29] = v12;
  v13 = *(v12 + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA248, &unk_22B3637E0) - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v15 = sub_22B36052C();
  v4[33] = v15;
  v16 = *(v15 - 8);
  v4[34] = v16;
  v17 = *(v16 + 64) + 15;
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v18 = sub_22B35DE9C();
  v4[41] = v18;
  v19 = *(v18 - 8);
  v4[42] = v19;
  v20 = *(v19 + 64) + 15;
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v21 = sub_22B35EA2C();
  v4[45] = v21;
  v22 = *(v21 - 8);
  v4[46] = v22;
  v23 = *(v22 + 64) + 15;
  v4[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1331EC, 0, 0);
}

uint64_t sub_22B1331EC()
{
  v37 = *(v0 + 376);
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v3 = *(v0 + 328);
  v4 = *(v0 + 336);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v8 = *(v0 + 128);
  v7 = *(v0 + 136);
  v9 = __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  sub_22B35D89C();
  sub_22B35D86C();
  v10 = *v9;
  MEMORY[0x23188C390](v8, v1, v2, 200000, v6);
  v11 = *(v4 + 8);
  v11(v2, v3);
  v11(v1, v3);
  v12 = *__swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  sub_22B35EA9C();
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 320);
  v14 = *(v0 + 264);
  v15 = *(v0 + 272);
  v16 = __swift_project_value_buffer(v14, qword_28140BD10);
  *(v0 + 384) = v16;
  swift_beginAccess();
  v17 = *(v15 + 16);
  *(v0 + 392) = v17;
  *(v0 + 400) = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17(v13, v16, v14);
  v18 = sub_22B36050C();
  v19 = sub_22B360D1C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_22B116000, v18, v19, "[ActivityLogCoordinator] Downloading Older Digests", v20, 2u);
    MEMORY[0x23188F650](v20, -1, -1);
  }

  v21 = *(v0 + 320);
  v22 = *(v0 + 264);
  v23 = *(v0 + 272);

  v24 = *(v23 + 8);
  *(v0 + 408) = v24;
  v24(v21, v22);
  v25 = *(v0 + 40);
  v26 = __swift_project_boxed_opaque_existential_1((v0 + 16), v25);
  v27 = *(v25 - 8);
  v28 = *(v27 + 64) + 15;
  v29 = swift_task_alloc();
  (*(v27 + 16))(v29, v26, v25);
  *(v0 + 80) = swift_getAssociatedTypeWitness();
  *(v0 + 88) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  sub_22B360C1C();

  *(v0 + 488) = *MEMORY[0x277D17968];
  v30 = MEMORY[0x277D84F90];
  *(v0 + 492) = *MEMORY[0x277D174F8];
  *(v0 + 424) = 0;
  *(v0 + 432) = v30;
  *(v0 + 416) = 0;
  v31 = *(v0 + 80);
  v32 = *(v0 + 88);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v31);
  v33 = *(MEMORY[0x277D856D8] + 4);
  v34 = swift_task_alloc();
  *(v0 + 440) = v34;
  *v34 = v0;
  v34[1] = sub_22B1335A8;
  v35 = *(v0 + 256);

  return MEMORY[0x282200310](v35, 0, 0, v0 + 120, v31, v32);
}