uint64_t sub_1E6557850(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6552B9C(a1);
}

uint64_t sub_1E65578EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6552C38(a1);
}

uint64_t sub_1E6557A4C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(v4 + 40);
  v14 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(v11, v12, v7, v8, v9, v13, v10, v14);
}

uint64_t sub_1E6557B10(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *(v4 + 40);
  v12 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(a1, v7, v8, v9, v11, v10, v12);
}

uint64_t sub_1E6557C18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E6557CB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AF20, &qword_1E660A968);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6557DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DC0, &qword_1E660ACC0);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFE0, &unk_1E660ACC8) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v9 = sub_1E65E6428();
  v4[8] = v9;
  v10 = *(v9 - 8);
  v4[9] = v10;
  v11 = *(v10 + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6557F00, 0, 0);
}

uint64_t sub_1E6557F00()
{
  v1 = v0[10];
  v2 = [objc_opt_self() defaultCenter];
  v3 = *MEMORY[0x1E69DDAB0];
  sub_1E65E6448();

  sub_1E65E6418();
  v4 = sub_1E655B028();
  v5 = *(MEMORY[0x1E69E85A8] + 4);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_1E6558000;
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[8];

  return MEMORY[0x1EEE6D8C8](v8, v9, v4);
}

uint64_t sub_1E6558000()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1E655B56C;
  }

  else
  {
    v3 = sub_1E6558114;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6558130()
{
  v1 = v0[7];
  v2 = sub_1E65D7068();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[6];
    v4 = v0[3];
    (*(v0[9] + 8))(v0[10], v0[8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8);
    sub_1E65E60E8();

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[3];
    v10 = v0[4];
    sub_1E65E60C8();
    (*(v8 + 8))(v7, v10);
    sub_1E5DFE50C(v1, &qword_1ED07AFE0, &unk_1E660ACC8);
    v11 = sub_1E655B028();
    v12 = *(MEMORY[0x1E69E85A8] + 4);
    v13 = swift_task_alloc();
    v0[11] = v13;
    *v13 = v0;
    v13[1] = sub_1E6558000;
    v14 = v0[10];
    v15 = v0[7];
    v16 = v0[8];

    return MEMORY[0x1EEE6D8C8](v15, v16, v11);
  }
}

uint64_t sub_1E655831C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DC0, &qword_1E660ACC0);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFE0, &unk_1E660ACC8) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v9 = sub_1E65E6428();
  v4[8] = v9;
  v10 = *(v9 - 8);
  v4[9] = v10;
  v11 = *(v10 + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E655847C, 0, 0);
}

uint64_t sub_1E655847C()
{
  v1 = v0[10];
  v2 = [objc_opt_self() defaultCenter];
  v3 = *MEMORY[0x1E69DDAC8];
  sub_1E65E6448();

  sub_1E65E6418();
  v4 = sub_1E655B028();
  v5 = *(MEMORY[0x1E69E85A8] + 4);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_1E655857C;
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[8];

  return MEMORY[0x1EEE6D8C8](v8, v9, v4);
}

uint64_t sub_1E655857C()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1E655B56C;
  }

  else
  {
    v3 = sub_1E6558690;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E65586AC()
{
  v1 = v0[7];
  v2 = sub_1E65D7068();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[6];
    v4 = v0[3];
    (*(v0[9] + 8))(v0[10], v0[8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8);
    sub_1E65E60E8();

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[3];
    v10 = v0[4];
    sub_1E65E60C8();
    (*(v8 + 8))(v7, v10);
    sub_1E5DFE50C(v1, &qword_1ED07AFE0, &unk_1E660ACC8);
    v11 = sub_1E655B028();
    v12 = *(MEMORY[0x1E69E85A8] + 4);
    v13 = swift_task_alloc();
    v0[11] = v13;
    *v13 = v0;
    v13[1] = sub_1E655857C;
    v14 = v0[10];
    v15 = v0[7];
    v16 = v0[8];

    return MEMORY[0x1EEE6D8C8](v15, v16, v11);
  }
}

uint64_t sub_1E6558898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DC0, &qword_1E660ACC0);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFE0, &unk_1E660ACC8) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v9 = sub_1E65E6428();
  v4[8] = v9;
  v10 = *(v9 - 8);
  v4[9] = v10;
  v11 = *(v10 + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65589F8, 0, 0);
}

uint64_t sub_1E65589F8()
{
  v1 = v0[10];
  v2 = [objc_opt_self() defaultCenter];
  v3 = *MEMORY[0x1E69DDBC0];
  sub_1E65E6448();

  sub_1E65E6418();
  v4 = sub_1E655B028();
  v5 = *(MEMORY[0x1E69E85A8] + 4);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_1E6558AF8;
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[8];

  return MEMORY[0x1EEE6D8C8](v8, v9, v4);
}

uint64_t sub_1E6558AF8()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1E655B56C;
  }

  else
  {
    v3 = sub_1E6558C0C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6558C28()
{
  v1 = v0[7];
  v2 = sub_1E65D7068();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[6];
    v4 = v0[3];
    (*(v0[9] + 8))(v0[10], v0[8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8);
    sub_1E65E60E8();

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[3];
    v10 = v0[4];
    sub_1E65E60C8();
    (*(v8 + 8))(v7, v10);
    sub_1E5DFE50C(v1, &qword_1ED07AFE0, &unk_1E660ACC8);
    v11 = sub_1E655B028();
    v12 = *(MEMORY[0x1E69E85A8] + 4);
    v13 = swift_task_alloc();
    v0[11] = v13;
    *v13 = v0;
    v13[1] = sub_1E6558AF8;
    v14 = v0[10];
    v15 = v0[7];
    v16 = v0[8];

    return MEMORY[0x1EEE6D8C8](v15, v16, v11);
  }
}

uint64_t sub_1E6558E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DC0, &qword_1E660ACC0);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFE0, &unk_1E660ACC8) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v9 = sub_1E65E6428();
  v4[8] = v9;
  v10 = *(v9 - 8);
  v4[9] = v10;
  v11 = *(v10 + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6558F74, 0, 0);
}

uint64_t sub_1E6558F74()
{
  v1 = v0[10];
  v2 = [objc_opt_self() defaultCenter];
  v3 = *MEMORY[0x1E69DDBC8];
  sub_1E65E6448();

  sub_1E65E6418();
  v4 = sub_1E655B028();
  v5 = *(MEMORY[0x1E69E85A8] + 4);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_1E6559074;
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[8];

  return MEMORY[0x1EEE6D8C8](v8, v9, v4);
}

uint64_t sub_1E6559074()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1E655B56C;
  }

  else
  {
    v3 = sub_1E6559188;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E65591A4()
{
  v1 = v0[7];
  v2 = sub_1E65D7068();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[6];
    v4 = v0[3];
    (*(v0[9] + 8))(v0[10], v0[8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8);
    sub_1E65E60E8();

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[3];
    v10 = v0[4];
    sub_1E65E60C8();
    (*(v8 + 8))(v7, v10);
    sub_1E5DFE50C(v1, &qword_1ED07AFE0, &unk_1E660ACC8);
    v11 = sub_1E655B028();
    v12 = *(MEMORY[0x1E69E85A8] + 4);
    v13 = swift_task_alloc();
    v0[11] = v13;
    *v13 = v0;
    v13[1] = sub_1E6559074;
    v14 = v0[10];
    v15 = v0[7];
    v16 = v0[8];

    return MEMORY[0x1EEE6D8C8](v15, v16, v11);
  }
}

uint64_t sub_1E6559390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DC0, &qword_1E660ACC0);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFE0, &unk_1E660ACC8) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v9 = sub_1E65E6428();
  v4[8] = v9;
  v10 = *(v9 - 8);
  v4[9] = v10;
  v11 = *(v10 + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65594F0, 0, 0);
}

uint64_t sub_1E65594F0()
{
  v1 = v0[10];
  v2 = [objc_opt_self() defaultCenter];
  v3 = *MEMORY[0x1E69DDBD0];
  sub_1E65E6448();

  sub_1E65E6418();
  v4 = sub_1E655B028();
  v5 = *(MEMORY[0x1E69E85A8] + 4);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_1E65595F0;
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[8];

  return MEMORY[0x1EEE6D8C8](v8, v9, v4);
}

uint64_t sub_1E65595F0()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1E65598EC;
  }

  else
  {
    v3 = sub_1E6559704;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6559720()
{
  v1 = v0[7];
  v2 = sub_1E65D7068();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[6];
    v4 = v0[3];
    (*(v0[9] + 8))(v0[10], v0[8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8);
    sub_1E65E60E8();

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[3];
    v10 = v0[4];
    sub_1E65E60C8();
    (*(v8 + 8))(v7, v10);
    sub_1E5DFE50C(v1, &qword_1ED07AFE0, &unk_1E660ACC8);
    v11 = sub_1E655B028();
    v12 = *(MEMORY[0x1E69E85A8] + 4);
    v13 = swift_task_alloc();
    v0[11] = v13;
    *v13 = v0;
    v13[1] = sub_1E65595F0;
    v14 = v0[10];
    v15 = v0[7];
    v16 = v0[8];

    return MEMORY[0x1EEE6D8C8](v15, v16, v11);
  }
}

uint64_t sub_1E65598EC()
{
  *(v0 + 16) = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t sub_1E6559998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v18 - v12;
  v14 = sub_1E65E60A8();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v6 + 16))(v9, a1, v5);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  (*(v6 + 32))(v16 + v15, v9, v5);
  sub_1E64B80F8(0, 0, v13, a3, v16);
}

uint64_t sub_1E6559B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DC0, &qword_1E660ACC0);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFE0, &unk_1E660ACC8) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v9 = sub_1E65E6428();
  v4[8] = v9;
  v10 = *(v9 - 8);
  v4[9] = v10;
  v11 = *(v10 + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6559CC8, 0, 0);
}

uint64_t sub_1E6559CC8()
{
  v1 = v0[10];
  v2 = [objc_opt_self() defaultCenter];
  v3 = *MEMORY[0x1E69DDB88];
  sub_1E65E6448();

  sub_1E65E6418();
  v4 = sub_1E655B028();
  v5 = *(MEMORY[0x1E69E85A8] + 4);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_1E6559DC8;
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[8];

  return MEMORY[0x1EEE6D8C8](v8, v9, v4);
}

uint64_t sub_1E6559DC8()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1E655B56C;
  }

  else
  {
    v3 = sub_1E6559EDC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6559EF8()
{
  v1 = v0[7];
  v2 = sub_1E65D7068();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[6];
    v4 = v0[3];
    (*(v0[9] + 8))(v0[10], v0[8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8);
    sub_1E65E60E8();

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[3];
    v10 = v0[4];
    sub_1E65E60C8();
    (*(v8 + 8))(v7, v10);
    sub_1E5DFE50C(v1, &qword_1ED07AFE0, &unk_1E660ACC8);
    v11 = sub_1E655B028();
    v12 = *(MEMORY[0x1E69E85A8] + 4);
    v13 = swift_task_alloc();
    v0[11] = v13;
    *v13 = v0;
    v13[1] = sub_1E6559DC8;
    v14 = v0[10];
    v15 = v0[7];
    v16 = v0[8];

    return MEMORY[0x1EEE6D8C8](v15, v16, v11);
  }
}

uint64_t sub_1E655A0C4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DA0, &qword_1E6609BC0);
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E655A194, a2, 0);
}

uint64_t sub_1E655A194()
{
  v1 = v0[2];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x1E69E8650], v0[3]);
  sub_1E65E6128();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E655A250(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E655A0C4(a1, v1);
}

uint64_t sub_1E655A2EC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DA0, &qword_1E6609BC0);
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E655A3BC, a2, 0);
}

uint64_t sub_1E655A3BC()
{
  v1 = v0[2];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x1E69E8650], v0[3]);
  sub_1E65E6128();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E655A478(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E655A2EC(a1, v1);
}

uint64_t sub_1E655A514(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E655A530, a2, 0);
}

uint64_t sub_1E655A530()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  swift_getObjectType();
  sub_1E65DDDB8();
  sub_1E65DDE28();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E655A5F0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E655A514(a1, v1);
}

uint64_t sub_1E655A68C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DA0, &qword_1E6609BC0);
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E655A75C, a2, 0);
}

uint64_t sub_1E655A75C()
{
  v1 = v0[2];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x1E69E8650], v0[3]);
  sub_1E65E6128();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E655A818(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E655A68C(a1, v1);
}

uint64_t sub_1E655A8B4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DA0, &qword_1E6609BC0);
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E655A984, a2, 0);
}

uint64_t sub_1E655A984()
{
  v1 = v0[2];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x1E69E8650], v0[3]);
  sub_1E65E6128();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E655AA40(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E655A8B4(a1, v1);
}

uint64_t sub_1E655AADC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DA0, &qword_1E6609BC0);
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E655ABAC, a2, 0);
}

uint64_t sub_1E655ABAC()
{
  v1 = v0[2];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x1E69E8650], v0[3]);
  sub_1E65E6128();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E655AC68(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E655AADC(a1, v1);
}

uint64_t sub_1E655AD04(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DA0, &qword_1E6609BC0);
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E655ADD4, a2, 0);
}

uint64_t sub_1E655ADD4()
{
  v1 = v0[2];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x1E69E8650], v0[3]);
  sub_1E65E6128();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E655AE90(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E655AD04(a1, v1);
}

uint64_t sub_1E655AF2C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6559B68(a1, v6, v7, v1 + v5);
}

unint64_t sub_1E655B028()
{
  result = qword_1EE2D45C0;
  if (!qword_1EE2D45C0)
  {
    sub_1E65E6428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D45C0);
  }

  return result;
}

uint64_t sub_1E655B080(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFA78C;

  return sub_1E6559390(a1, v6, v7, v1 + v5);
}

uint64_t sub_1E655B17C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6558E14(a1, v6, v7, v1 + v5);
}

uint64_t sub_1E655B278(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6558898(a1, v6, v7, v1 + v5);
}

uint64_t sub_1E655B374(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E655831C(a1, v6, v7, v1 + v5);
}

uint64_t sub_1E655B470(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6557DA0(a1, v6, v7, v1 + v5);
}

uint64_t AppStateService.makeAppDidBecomeActiveStream.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AppStateService.makeAppDidEnterBackgroundStream.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AppStateService.makeAppIdleOccurredStream.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t AppStateService.makeAppWillEnterForegroundStream.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t AppStateService.makeAppWillResignActiveStream.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t AppStateService.makeAppWillTerminateStream.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t AppStateService.makeSignificantTimeChangeStream.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1E655B6E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1E655B72C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void static AppStateService.simulator()(void *a1@<X8>)
{
  *a1 = &unk_1E660ADB0;
  a1[1] = 0;
  a1[2] = &unk_1E660ADC0;
  a1[3] = 0;
  a1[4] = &unk_1E660ADD0;
  a1[5] = 0;
  a1[6] = &unk_1E660ADE0;
  a1[7] = 0;
  a1[8] = &unk_1E660ADF0;
  a1[9] = 0;
  a1[10] = &unk_1E660AE00;
  a1[11] = 0;
  a1[12] = &unk_1E660AE10;
  a1[13] = 0;
}

uint64_t sub_1E655B818(uint64_t a1)
{
  v1[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DA0, &qword_1E6609BC0);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6539E14, 0, 0);
}

uint64_t sub_1E655B8E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E655B818(a1);
}

uint64_t sub_1E655B97C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E655B818(a1);
}

uint64_t sub_1E655BA14(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E655B818(a1);
}

uint64_t sub_1E655BAAC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E655B818(a1);
}

uint64_t sub_1E655BB44(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E655B818(a1);
}

uint64_t sub_1E655BBDC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E655B818(a1);
}

uint64_t sub_1E655BC74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E655B818(a1);
}

uint64_t sub_1E655BD0C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFF0, &qword_1E660AEB8);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E655BDDC, v2, 0);
}

uint64_t sub_1E655BDDC()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD738();

  return MEMORY[0x1EEE6DFA0](sub_1E655BE78, 0, 0);
}

uint64_t sub_1E655BE78()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "FitnessSiriService/LiveSiriService.swift";
  *(v2 + 24) = 40;
  *(v2 + 32) = 2;
  *(v2 + 40) = 24;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = sub_1E65D9EA8();
  *v4 = v0;
  v4[1] = sub_1E653B6A4;
  v6 = v0[2];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E655C6D8, v2, v5);
}

uint64_t sub_1E655BF90(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E655BFB0, 0, 0);
}

uint64_t sub_1E655BFB0()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_1E65DB778();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1E655C014(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFA78C;

  return sub_1E655BD0C(a1, a2);
}

uint64_t sub_1E655C0C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFA78C;

  return sub_1E655C014(a1, a2);
}

uint64_t sub_1E655C16C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E655C188, a2, 0);
}

uint64_t sub_1E655C188()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 152);
  v4 = *(v1 + 160);
  swift_getObjectType();
  sub_1E65DB788();
  sub_1E65DB718();
  sub_1E655CB48();
  sub_1E65DDE28();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E655C260(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E655C16C(a1, v1);
}

uint64_t sub_1E655C2FC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFF8, &unk_1E660AEC0);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFF0, &qword_1E660AEB8);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E655CA4C;
  *(v35 + 24) = v33;

  v34(sub_1E6531034, v35);
}

uint64_t sub_1E655C6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_1E65D9EA8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B000, &qword_1E660AED0);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v17 = (&v37 - v16);
  v18 = sub_1E65E3B68();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v22 = sub_1E65E3B48();
  v23 = sub_1E65E6338();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_1E65E68B8();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_1E5DFD4B0(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_1E5DE9000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x1E694F1C0](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_1E655CAD8(a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFF8, &unk_1E660AEC0);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFF8, &unk_1E660AEC0);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E655CA4C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFF8, &unk_1E660AEC0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 40);
  v9 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_1E655C6E8(a1, v4, v5, v6, v8, v7, v9);
}

uint64_t sub_1E655CAD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B000, &qword_1E660AED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E655CB48()
{
  result = qword_1EE2D6D30;
  if (!qword_1EE2D6D30)
  {
    sub_1E65DB788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D6D30);
  }

  return result;
}

uint64_t SiriService.evaluateStartWorkoutRequest.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SiriService.makeSiriBeginSessionRequestedStream.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t static SiriService.simulator()@<X0>(void *a1@<X8>)
{
  type metadata accessor for SimulatorSiriService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *a1 = &unk_1E660AF28;
  a1[1] = v2;
  a1[2] = &unk_1E660AF38;
  a1[3] = v2;
}

uint64_t sub_1E655CCB8()
{
  v1 = *(v0 + 16);
  sub_1E65D9E78();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E655CD3C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFA78C;

  return sub_1E655CC98(a1, a2, v2);
}

uint64_t sub_1E655CDE8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B008, &unk_1E660AF80);
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E655CEB8, a2, 0);
}

uint64_t sub_1E655CEB8()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E65DB718();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E655CF90(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E655CDE8(a1, v1);
}

uint64_t sub_1E655D02C(uint64_t a1)
{
  v2 = sub_1E655DF40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E655D068(uint64_t a1)
{
  v2 = sub_1E655DF40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E655D0A4()
{
  v1 = *v0;
  v2 = 1701602409;
  v3 = 0x6979696669726576;
  v4 = 0x697463656E6E6F63;
  if (v1 != 3)
  {
    v4 = 0x657463656E6E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7369747265766461;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E655D14C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E655EE68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E655D174(uint64_t a1)
{
  v2 = sub_1E655DCE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E655D1B0(uint64_t a1)
{
  v2 = sub_1E655DCE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E655D20C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7069636974726170 && a2 == 0xEB00000000746E61)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E65E6C18();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E655D298(uint64_t a1)
{
  v2 = sub_1E655DD9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E655D2D4(uint64_t a1)
{
  v2 = sub_1E655DD9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E655D310(uint64_t a1)
{
  v2 = sub_1E655DDF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E655D34C(uint64_t a1)
{
  v2 = sub_1E655DDF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E655D388(uint64_t a1)
{
  v2 = sub_1E655DF94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E655D3C4(uint64_t a1)
{
  v2 = sub_1E655DF94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E655D41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7954656369766564 && a2 == 0xEA00000000006570)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E65E6C18();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E655D4AC(uint64_t a1)
{
  v2 = sub_1E655DE44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E655D4E8(uint64_t a1)
{
  v2 = sub_1E655DE44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteBrowsingGuestPairingState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B010, &qword_1E660AF90);
  v61 = *(v2 - 8);
  v62 = v2;
  v3 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v60 = &v48 - v4;
  v5 = sub_1E65D8DE8();
  v58 = *(v5 - 8);
  v59 = v5;
  v6 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B018, &qword_1E660AF98);
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B020, &qword_1E660AFA0);
  v55 = *(v11 - 8);
  v56 = v11;
  v12 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B028, &qword_1E660AFA8);
  v50 = *(v15 - 8);
  v51 = v15;
  v16 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B030, &qword_1E660AFB0);
  v48 = *(v19 - 8);
  v49 = v19;
  v20 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v48 - v21;
  v23 = type metadata accessor for RemoteBrowsingGuestPairingState();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B038, &qword_1E660AFB8);
  v64 = *(v65 - 8);
  v27 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v29 = &v48 - v28;
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E655DCE4();
  sub_1E65E6DA8();
  sub_1E655DD38(v63, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v33 = v14;
    v35 = v56;
    v34 = v57;
    v36 = v60;
    v37 = v58;
    v38 = v61;
    v39 = v62;
    if (EnumCaseMultiPayload)
    {
      v46 = v26;
      v47 = v59;
      (*(v58 + 32))(v57, v46, v59);
      v72 = 4;
      sub_1E655DD9C();
      sub_1E65E6B18();
      sub_1E655F434(&qword_1ED079738, MEMORY[0x1E69CBB90]);
      sub_1E65E6B78();
      (*(v38 + 8))(v36, v39);
      (*(v37 + 8))(v34, v47);
      return (*(v64 + 8))(v29, v65);
    }

    else
    {
      v40 = *v26;
      v41 = v26[8];
      v70 = 2;
      sub_1E655DE44();
      v42 = v65;
      sub_1E65E6B18();
      v66 = v40;
      v67 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B060, &qword_1E660AFC0);
      sub_1E655EA7C(&qword_1ED07B068);
      sub_1E65E6B38();
      (*(v55 + 8))(v33, v35);
      return (*(v64 + 8))(v29, v42);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v68 = 0;
    sub_1E655DF94();
    v44 = v65;
    sub_1E65E6B18();
    (*(v48 + 8))(v22, v49);
    return (*(v64 + 8))(v29, v44);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v69 = 1;
      sub_1E655DF40();
      v32 = v65;
      sub_1E65E6B18();
      (*(v50 + 8))(v18, v51);
    }

    else
    {
      v71 = 3;
      sub_1E655DDF0();
      v45 = v52;
      v32 = v65;
      sub_1E65E6B18();
      (*(v53 + 8))(v45, v54);
    }

    return (*(v64 + 8))(v29, v32);
  }
}

uint64_t type metadata accessor for RemoteBrowsingGuestPairingState()
{
  result = qword_1EE2D52E0;
  if (!qword_1EE2D52E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E655DCE4()
{
  result = qword_1ED07B040;
  if (!qword_1ED07B040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B040);
  }

  return result;
}

uint64_t sub_1E655DD38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteBrowsingGuestPairingState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E655DD9C()
{
  result = qword_1ED07B048;
  if (!qword_1ED07B048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B048);
  }

  return result;
}

unint64_t sub_1E655DDF0()
{
  result = qword_1ED07B050;
  if (!qword_1ED07B050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B050);
  }

  return result;
}

unint64_t sub_1E655DE44()
{
  result = qword_1ED07B058;
  if (!qword_1ED07B058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B058);
  }

  return result;
}

unint64_t sub_1E655DE98()
{
  result = qword_1ED07B070;
  if (!qword_1ED07B070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B070);
  }

  return result;
}

unint64_t sub_1E655DEEC()
{
  result = qword_1ED07B078;
  if (!qword_1ED07B078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B078);
  }

  return result;
}

unint64_t sub_1E655DF40()
{
  result = qword_1ED07B080;
  if (!qword_1ED07B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B080);
  }

  return result;
}

unint64_t sub_1E655DF94()
{
  result = qword_1ED07B088;
  if (!qword_1ED07B088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B088);
  }

  return result;
}

uint64_t RemoteBrowsingGuestPairingState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B090, &qword_1E660AFC8);
  v68 = *(v3 - 8);
  v69 = v3;
  v4 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v71 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B098, &qword_1E660AFD0);
  v65 = *(v6 - 8);
  v66 = v6;
  v7 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v70 = &v56 - v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B0A0, &qword_1E660AFD8);
  v67 = *(v64 - 8);
  v9 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v75 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B0A8, &qword_1E660AFE0);
  v12 = *(v11 - 8);
  v62 = v11;
  v63 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v74 = &v56 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B0B0, &qword_1E660AFE8);
  v60 = *(v15 - 8);
  v61 = v15;
  v16 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v73 = &v56 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B0B8, &unk_1E660AFF0);
  v76 = *(v18 - 8);
  v19 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v56 - v20;
  v22 = type metadata accessor for RemoteBrowsingGuestPairingState();
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v56 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v56 - v30;
  v33 = a1[3];
  v32 = a1[4];
  v78 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_1E655DCE4();
  v34 = v77;
  sub_1E65E6D98();
  if (!v34)
  {
    v35 = v73;
    v57 = v29;
    v58 = v26;
    v37 = v74;
    v36 = v75;
    v77 = v31;
    v59 = v22;
    v38 = v18;
    v39 = sub_1E65E6AF8();
    if (*(v39 + 16) != 1 || (v40 = *(v39 + 32), v40 == 5))
    {
      v44 = sub_1E65E68F8();
      swift_allocError();
      v46 = v45;
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80) + 48);
      *v46 = v59;
      sub_1E65E6A78();
      sub_1E65E68E8();
      (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v44);
      swift_willThrow();
      (*(v76 + 8))(v21, v18);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v39 + 32) <= 1u)
      {
        if (*(v39 + 32))
        {
          v82 = 1;
          sub_1E655DF40();
          sub_1E65E6A68();
          v49 = v72;
          (*(v63 + 8))(v37, v62);
        }

        else
        {
          v81 = 0;
          sub_1E655DF94();
          sub_1E65E6A68();
          v49 = v72;
          (*(v60 + 8))(v35, v61);
        }

        (*(v76 + 8))(v21, v38);
        swift_unknownObjectRelease();
        v43 = v77;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v41 = v76;
        if (v40 == 2)
        {
          v74 = v39;
          v83 = 2;
          sub_1E655DE44();
          sub_1E65E6A68();
          v49 = v72;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B060, &qword_1E660AFC0);
          sub_1E655EA7C(&qword_1ED07B0C0);
          v50 = v64;
          sub_1E65E6A98();
          (*(v67 + 8))(v36, v50);
          (*(v41 + 8))(v21, v38);
          swift_unknownObjectRelease();
          v54 = v80;
          v55 = v57;
          *v57 = v79;
          *(v55 + 8) = v54;
          swift_storeEnumTagMultiPayload();
          v43 = v77;
          sub_1E655EA18(v55, v77);
        }

        else
        {
          if (v40 == 3)
          {
            v84 = 3;
            sub_1E655DDF0();
            v42 = v70;
            sub_1E65E6A68();
            (*(v65 + 8))(v42, v66);
            (*(v41 + 8))(v21, v18);
            swift_unknownObjectRelease();
            v43 = v77;
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            v85 = 4;
            sub_1E655DD9C();
            sub_1E65E6A68();
            sub_1E65D8DE8();
            sub_1E655F434(&qword_1ED079768, MEMORY[0x1E69CBB90]);
            v51 = v58;
            v52 = v69;
            v53 = v71;
            sub_1E65E6AD8();
            (*(v68 + 8))(v53, v52);
            (*(v41 + 8))(v21, v18);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v43 = v77;
            sub_1E655EA18(v51, v77);
          }

          v49 = v72;
        }
      }

      sub_1E655EA18(v43, v49);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v78);
}

uint64_t sub_1E655EA18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteBrowsingGuestPairingState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E655EA7C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED07B060, &qword_1E660AFC0);
    sub_1E655DE98();
    sub_1E655DEEC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t RemoteBrowsingGuestPairingState.hash(into:)()
{
  v1 = v0;
  v2 = sub_1E65D8DE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RemoteBrowsingGuestPairingState();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E655DD38(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v3 + 32))(v6, v10, v2);
      MEMORY[0x1E694E740](4);
      sub_1E655F434(&qword_1ED079748, MEMORY[0x1E69CBB90]);
      sub_1E65E5B48();
      return (*(v3 + 8))(v6, v2);
    }

    else
    {
      v13 = *v10;
      v14 = v10[8];
      MEMORY[0x1E694E740](2);
      if (v14 == 255)
      {
        return sub_1E65E6D48();
      }

      else
      {
        sub_1E65E6D48();
        v16 = v13;
        v17 = v14 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B060, &qword_1E660AFC0);
        sub_1E655F398();
        return sub_1E65D7FC8();
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v12 = 0;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v12 = 1;
    }

    else
    {
      v12 = 3;
    }

    return MEMORY[0x1E694E740](v12);
  }
}

uint64_t RemoteBrowsingGuestPairingState.hashValue.getter()
{
  sub_1E65E6D28();
  RemoteBrowsingGuestPairingState.hash(into:)();
  return sub_1E65E6D78();
}

uint64_t sub_1E655EDE4()
{
  sub_1E65E6D28();
  RemoteBrowsingGuestPairingState.hash(into:)();
  return sub_1E65E6D78();
}

uint64_t sub_1E655EE28()
{
  sub_1E65E6D28();
  RemoteBrowsingGuestPairingState.hash(into:)();
  return sub_1E65E6D78();
}

uint64_t sub_1E655EE68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7369747265766461 && a2 == 0xEB00000000676E69 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6979696669726576 && a2 == 0xEA0000000000676ELL || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEA0000000000676ELL || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657463656E6E6F63 && a2 == 0xE900000000000064)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E65E6C18();

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

uint64_t _s28FitnessRemoteBrowsingService0bC17GuestPairingStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65D8DE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RemoteBrowsingGuestPairingState();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B150, &unk_1E660B690);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v30 - v19;
  v21 = &v30 + *(v18 + 56) - v19;
  sub_1E655DD38(a1, &v30 - v19);
  sub_1E655DD38(a2, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1E655DD38(v20, v13);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(v5 + 32))(v8, v21, v4);
        v27 = MEMORY[0x1E69407C0](v13, v8);
        v28 = *(v5 + 8);
        v28(v8, v4);
        v28(v13, v4);
        sub_1E655FBC8(v20);
        return v27 & 1;
      }

      (*(v5 + 8))(v13, v4);
    }

    else
    {
      sub_1E655DD38(v20, v15);
      v23 = *v15;
      v24 = v15[8];
      if (!swift_getEnumCaseMultiPayload())
      {
        v25 = v21[8];
        if (v24 == 255)
        {
          if (v25 == 255)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v26 = *v21;
          v32 = v23;
          v33 = v24;
          if (v25 != 255)
          {
            v30 = v26;
            v31 = v25 & 1;
            sub_1E655FC24();
            sub_1E655FC78();
            if (sub_1E65D7FD8())
            {
              goto LABEL_15;
            }
          }
        }

        sub_1E655FBC8(v20);
        goto LABEL_20;
      }
    }

LABEL_19:
    sub_1E655FB60(v20);
LABEL_20:
    v27 = 0;
    return v27 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 3)
  {
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    goto LABEL_19;
  }

LABEL_15:
  sub_1E655FBC8(v20);
  v27 = 1;
  return v27 & 1;
}

unint64_t sub_1E655F398()
{
  result = qword_1ED07B0C8;
  if (!qword_1ED07B0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B0C8);
  }

  return result;
}

uint64_t sub_1E655F434(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E655F47C()
{
  sub_1E655F58C(319, &qword_1EE2D7158, sub_1E655F528);
  if (v0 <= 0x3F)
  {
    sub_1E655F58C(319, &qword_1EE2D70D8, MEMORY[0x1E69CBB90]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1E655F528()
{
  if (!qword_1EE2D7150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED07B060, &qword_1E660AFC0);
    v0 = sub_1E65E6668();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D7150);
    }
  }
}

void sub_1E655F58C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1E655F63C()
{
  result = qword_1ED07B0D8;
  if (!qword_1ED07B0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B0D8);
  }

  return result;
}

unint64_t sub_1E655F694()
{
  result = qword_1ED07B0E0;
  if (!qword_1ED07B0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B0E0);
  }

  return result;
}

unint64_t sub_1E655F6EC()
{
  result = qword_1ED07B0E8;
  if (!qword_1ED07B0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B0E8);
  }

  return result;
}

unint64_t sub_1E655F744()
{
  result = qword_1ED07B0F0;
  if (!qword_1ED07B0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B0F0);
  }

  return result;
}

unint64_t sub_1E655F79C()
{
  result = qword_1ED07B0F8;
  if (!qword_1ED07B0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B0F8);
  }

  return result;
}

unint64_t sub_1E655F7F4()
{
  result = qword_1ED07B100;
  if (!qword_1ED07B100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B100);
  }

  return result;
}

unint64_t sub_1E655F84C()
{
  result = qword_1ED07B108;
  if (!qword_1ED07B108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B108);
  }

  return result;
}

unint64_t sub_1E655F8A4()
{
  result = qword_1ED07B110;
  if (!qword_1ED07B110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B110);
  }

  return result;
}

unint64_t sub_1E655F8FC()
{
  result = qword_1ED07B118;
  if (!qword_1ED07B118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B118);
  }

  return result;
}

unint64_t sub_1E655F954()
{
  result = qword_1ED07B120;
  if (!qword_1ED07B120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B120);
  }

  return result;
}

unint64_t sub_1E655F9AC()
{
  result = qword_1ED07B128;
  if (!qword_1ED07B128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B128);
  }

  return result;
}

unint64_t sub_1E655FA04()
{
  result = qword_1ED07B130;
  if (!qword_1ED07B130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B130);
  }

  return result;
}

unint64_t sub_1E655FA5C()
{
  result = qword_1ED07B138;
  if (!qword_1ED07B138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B138);
  }

  return result;
}

unint64_t sub_1E655FAB4()
{
  result = qword_1ED07B140;
  if (!qword_1ED07B140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B140);
  }

  return result;
}

unint64_t sub_1E655FB0C()
{
  result = qword_1ED07B148;
  if (!qword_1ED07B148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B148);
  }

  return result;
}

uint64_t sub_1E655FB60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B150, &unk_1E660B690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E655FBC8(uint64_t a1)
{
  v2 = type metadata accessor for RemoteBrowsingGuestPairingState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E655FC24()
{
  result = qword_1ED07B158;
  if (!qword_1ED07B158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B158);
  }

  return result;
}

unint64_t sub_1E655FC78()
{
  result = qword_1ED07B160;
  if (!qword_1ED07B160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B160);
  }

  return result;
}

uint64_t sub_1E655FCCC(uint64_t a1, uint64_t a2)
{
  sub_1E655FBC8(a1);
  type metadata accessor for RemoteBrowsingGuestPairingState();
  swift_storeEnumTagMultiPayload();
  v4 = *(a2 + 48);
  (*(a2 + 40))(a1);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = sub_1E65DDEB8();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  v10 = sub_1E65DDEA8();
  swift_getObjectType();
  sub_1E65DE2C8();
  swift_allocObject();
  swift_weakInit();

  sub_1E65DDE18();

  __swift_destroy_boxed_opaque_existential_1(v13);

  sub_1E65DE398();
  swift_allocObject();
  swift_weakInit();
  sub_1E65DDE08();

  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_1E65DE378();
  swift_allocObject();
  swift_weakInit();

  sub_1E65DDE18();

  __swift_destroy_boxed_opaque_existential_1(v13);

  sub_1E65DE298();
  swift_allocObject();
  swift_weakInit();
  sub_1E65DDE08();

  __swift_destroy_boxed_opaque_existential_1(v13);
  v11 = *(a2 + 32);
  *(a2 + 32) = v10;
}

uint64_t sub_1E655FFAC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 64);
    (*(result + 56))();
  }

  return result;
}

uint64_t sub_1E656000C()
{
  v0 = sub_1E65DAAA8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_1E65DE388();
    v7 = sub_1E65DAA98();
    v9 = v8;
    (*(v1 + 8))(v4, v0);
    v10 = *(v6 + 72);
    v11 = v10 + *(*v10 + *MEMORY[0x1E69E6B68] + 16);
    v12 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v10 + v12));
    sub_1E655FBC8(v11);
    *v11 = v7;
    *(v11 + 8) = v9;
    type metadata accessor for RemoteBrowsingGuestPairingState();
    swift_storeEnumTagMultiPayload();
    v13 = *(v6 + 48);
    (*(v6 + 40))(v11);
    os_unfair_lock_unlock((v10 + v12));
  }

  return result;
}

uint64_t sub_1E65601B0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 72);
    v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
    v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v1 + v3));
    sub_1E65606C0(v1 + v2);
    os_unfair_lock_unlock((v1 + v3));
  }

  return result;
}

uint64_t sub_1E6560270()
{
  v0 = sub_1E65D8DE8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65DA7E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_1E65DE288();
    sub_1E65DA7D8();
    v12 = (*(v6 + 8))(v9, v5);
    v13 = *(v11 + 72);
    MEMORY[0x1EEE9AC00](v12);
    *(&v16 - 2) = v4;
    *(&v16 - 1) = v11;
    v14 = *(*v13 + *MEMORY[0x1E69E6B68] + 16);
    v15 = (*(*v13 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v13 + v15));
    sub_1E65606A4(v13 + v14);
    os_unfair_lock_unlock((v13 + v15));

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_1E65604AC(uint64_t a1, uint64_t a2)
{
  sub_1E655FBC8(a1);
  v3 = *(a2 + 32);
  *(a2 + 32) = 0;

  type metadata accessor for RemoteBrowsingGuestPairingState();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E6560508(uint64_t a1, uint64_t a2)
{
  sub_1E655FBC8(a1);
  type metadata accessor for RemoteBrowsingGuestPairingState();
  swift_storeEnumTagMultiPayload();
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  return v4(a1);
}

uint64_t sub_1E6560568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E655FBC8(a1);
  v6 = sub_1E65D8DE8();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  type metadata accessor for RemoteBrowsingGuestPairingState();
  swift_storeEnumTagMultiPayload();
  v7 = *(a3 + 40);
  v8 = *(a3 + 48);
  return v7(a1);
}

uint64_t sub_1E6560608()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[9];

  return swift_deallocClassInstance();
}

uint64_t sub_1E65606DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E65606FC, 0, 0);
}

uint64_t sub_1E65606FC()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_1E65DE148();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1E6560760(uint64_t a1, uint64_t a2)
{
  v31 = type metadata accessor for RemoteBrowsingGuestPairingState();
  v4 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v32 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1E8, &qword_1E660B9A8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v28 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = *(v7 + 16);
  v30 = *(a2 + 112);
  v12(v11, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v29 = swift_allocObject();
  v14 = *(v7 + 32);
  v14(v29 + v13, v11, v6);
  v15 = v28;
  v12(v28, a1, v6);
  v16 = swift_allocObject();
  v14(v16 + v13, v15, v6);
  type metadata accessor for RemoteBrowsingGuestPairingMonitor();
  v17 = swift_allocObject();
  *(v17 + 32) = 0;
  v18 = v32;
  swift_storeEnumTagMultiPayload();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1F0, &qword_1E660B9B0);
  v20 = *(v19 + 52);
  v21 = (*(v19 + 48) + 3) & 0x1FFFFFFFCLL;
  v22 = swift_allocObject();
  *(v22 + ((*(*v22 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v23 = MEMORY[0x1E69E6B68];
  sub_1E655EA18(v18, v22 + *(*v22 + *MEMORY[0x1E69E6B68] + 16));
  *(v17 + 16) = v30;
  *(v17 + 48) = v16;
  *(v17 + 56) = sub_1E65688C8;
  *(v17 + 64) = v29;
  *(v17 + 72) = v22;
  *(v17 + 40) = sub_1E65688DC;
  swift_unknownObjectRetain();

  sub_1E65E60B8();
  v24 = *(v17 + 72);
  v25 = *(*v24 + *v23 + 16);
  v26 = (*(*v24 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v24 + v26));
  sub_1E6568960(v24 + v25);
  os_unfair_lock_unlock((v24 + v26));
}

uint64_t sub_1E6560B34(uint64_t a1)
{
  v2 = type metadata accessor for RemoteBrowsingGuestPairingState();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1F8, &qword_1E660B9B8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  sub_1E6568998(a1, v5, type metadata accessor for RemoteBrowsingGuestPairingState);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1E8, &qword_1E660B9A8);
  sub_1E65E60D8();
  return (*(v7 + 8))(v10, v6);
}

void sub_1E6560C8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 72);
  v3 = *(*v2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  sub_1E656897C(v2 + v3);

  os_unfair_lock_unlock((v2 + v4));
}

uint64_t sub_1E6560D2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B210, &qword_1E660B9E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1E5DF650C(a2 + 208, v24);
  v10 = *(v5 + 16);
  v23 = *(a2 + 112);
  v10(v9, a1, v4);
  v11 = *(v5 + 80);
  v22 = a1;
  v12 = (v11 + 16) & ~v11;
  v20 = swift_allocObject();
  v13 = *(v5 + 32);
  v13(v20 + v12, v9, v4);
  v14 = v21;
  v10(v21, a1, v4);
  v15 = swift_allocObject();
  v13(v15 + v12, v14, v4);
  type metadata accessor for RemoteParticipantDiscoveryMonitor();
  v16 = swift_allocObject();
  *(v16 + 80) = 0;
  *(v16 + 16) = 2;
  sub_1E5DF650C(v24, v16 + 24);
  *(v16 + 64) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B218, &qword_1E660B9E8);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_1(v24);
  *(v17 + 16) = MEMORY[0x1E69E7CD0];
  *(v16 + 96) = v15;
  *(v16 + 104) = sub_1E6568A08;
  *(v16 + 112) = v20;
  *(v16 + 120) = v17;
  *(v16 + 88) = sub_1E6568A74;

  sub_1E65E60B8();
  sub_1E6568B7C();
}

uint64_t sub_1E6561000(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B220, &unk_1E660B9F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v8 - v5;
  v8[1] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B210, &qword_1E660B9E0);
  sub_1E65E60D8();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1E6561104()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65611D0, v0, 0);
}

uint64_t sub_1E65611D0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = v2[30];
  __swift_project_boxed_opaque_existential_1(v2 + 26, v2[29]);
  sub_1E65DD698();

  return MEMORY[0x1EEE6DFA0](sub_1E6561264, 0, 0);
}

uint64_t sub_1E6561264()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = "FitnessRemoteBrowsingService/LiveRemoteBrowsingService.swift";
  *(v2 + 24) = 60;
  *(v2 + 32) = 2;
  *(v2 + 40) = 110;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1E6561374;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6568B70, v2, v5);
}

uint64_t sub_1E6561374()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v5 = sub_1E6523C0C;
    v6 = 0;
  }

  else
  {
    v7 = v2[2];
    (*(v2[4] + 8))(v2[5], v2[3]);
    v5 = sub_1E65614CC;
    v6 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1E65614CC()
{
  v1 = v0[5];
  *(v0[2] + 248) = 0;

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E6561538(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1D8, &qword_1E660B998);
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E656166C, v1, 0);
}

uint64_t sub_1E656166C()
{
  v1 = v0[3];
  if (*(v1 + 248) == 3)
  {
    v2 = sub_1E65D99F8();
    sub_1E6568878(&qword_1ED07B1D0, MEMORY[0x1E69CC620]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x1E69CC618], v2);
    swift_willThrow();
    v4 = v0[9];
    v5 = v0[6];

    v6 = v0[1];

    return v6();
  }

  else
  {
    *(v1 + 248) = 2;
    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_1E6561804;
    v9 = v0[3];

    return sub_1E6561104();
  }
}

uint64_t sub_1E6561804()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  v5 = *(v2 + 24);
  if (v0)
  {

    v6 = sub_1E6568B78;
  }

  else
  {
    v6 = sub_1E656193C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E656193C()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[2];
  v5 = v0[3];
  type metadata accessor for RemoteBrowsingGuestPairingState();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();
  v7 = v5[30];
  __swift_project_boxed_opaque_existential_1(v5 + 26, v5[29]);
  sub_1E65DD688();

  return MEMORY[0x1EEE6DFA0](sub_1E6561A40, 0, 0);
}

uint64_t sub_1E6561A40()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *(v2 + 16) = "FitnessRemoteBrowsingService/LiveRemoteBrowsingService.swift";
  *(v2 + 24) = 60;
  *(v2 + 32) = 2;
  *(v2 + 40) = 119;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E6561B50;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6568B70, v2, v5);
}

uint64_t sub_1E6561B50()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v5 = sub_1E6561D18;
    v6 = 0;
  }

  else
  {
    v7 = v2[3];
    (*(v2[5] + 8))(v2[6], v2[4]);
    v5 = sub_1E6561CA8;
    v6 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1E6561CA8()
{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E6561D18()
{
  v1 = v0[3];
  (*(v0[5] + 8))(v0[6], v0[4]);

  return MEMORY[0x1EEE6DFA0](sub_1E6561D90, v1, 0);
}

uint64_t sub_1E6561D90()
{
  v1 = v0[2];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1E0, &qword_1E660B9A0);
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = v0[13];
  v4 = v0[9];
  v5 = v0[6];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E6561E48()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6561F14, v0, 0);
}

uint64_t sub_1E6561F14()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = v2[30];
  __swift_project_boxed_opaque_existential_1(v2 + 26, v2[29]);
  sub_1E65DD678();

  return MEMORY[0x1EEE6DFA0](sub_1E6561FA8, 0, 0);
}

uint64_t sub_1E6561FA8()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = "FitnessRemoteBrowsingService/LiveRemoteBrowsingService.swift";
  *(v2 + 24) = 60;
  *(v2 + 32) = 2;
  *(v2 + 40) = 124;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1E65620B8;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6568B70, v2, v5);
}

uint64_t sub_1E65620B8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v5 = sub_1E6562210;
    v6 = 0;
  }

  else
  {
    v7 = v2[2];
    (*(v2[4] + 8))(v2[5], v2[3]);
    v5 = sub_1E6568B6C;
    v6 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1E6562210()
{
  v1 = v0[2];
  (*(v0[4] + 8))(v0[5], v0[3]);

  return MEMORY[0x1EEE6DFA0](sub_1E5FEE4E0, v1, 0);
}

uint64_t sub_1E6562288(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1E65DE168();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(sub_1E65D99E8() - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1B8, &qword_1E660B980);
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();
  v10 = sub_1E65D9FF8();
  v2[12] = v10;
  v11 = *(v10 - 8);
  v2[13] = v11;
  v12 = *(v11 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6562444, v1, 0);
}

uint64_t sub_1E6562444()
{
  v1 = v0[3];
  if (*(v1 + 248))
  {
    v2 = sub_1E65D99F8();
    sub_1E6568878(&qword_1ED07B1D0, MEMORY[0x1E69CC620]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x1E69CC618], v2);
    swift_willThrow();
    v4 = v0[14];
    v5 = v0[11];
    v7 = v0[7];
    v6 = v0[8];
    v8 = v0[6];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[11];
    v12 = v0[2];
    *(v1 + 248) = 3;
    v13 = *(v1 + 200);
    __swift_project_boxed_opaque_existential_1((v1 + 168), *(v1 + 192));
    sub_1E65DD578();

    return MEMORY[0x1EEE6DFA0](sub_1E6562608, 0, 0);
  }
}

uint64_t sub_1E6562608()
{
  v1 = v0[11];
  v2 = swift_task_alloc();
  v0[15] = v2;
  *(v2 + 16) = "FitnessRemoteBrowsingService/LiveRemoteBrowsingService.swift";
  *(v2 + 24) = 60;
  *(v2 + 32) = 2;
  *(v2 + 40) = 133;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_1E6562718;
  v5 = v0[14];
  v6 = v0[12];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6568B74, v2, v6);
}

uint64_t sub_1E6562718()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v9 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v5 = sub_1E6562AB8;
    v6 = 0;
  }

  else
  {
    v7 = v2[3];
    (*(v2[10] + 8))(v2[11], v2[9]);
    v5 = sub_1E6562874;
    v6 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1E6562874()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[8];
  v18 = v0[11];
  v19 = v0[7];
  v5 = v0[6];
  v17 = v0[5];
  v6 = v0[3];
  v16 = v0[4];
  v7 = v0[2];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072890, &qword_1E65EBF00);
  v9 = *(v8 + 48);
  v10 = sub_1E65D8DE8();
  (*(*(v10 - 8) + 16))(v4, v7, v10);
  (*(v2 + 16))(v4 + v9, v1, v3);
  (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
  v11 = *(v6 + 160);
  __swift_project_boxed_opaque_existential_1((v6 + 128), *(v6 + 152));
  sub_1E65DE0F8();
  v12 = *(v6 + 112);
  v13 = *(v6 + 120);
  swift_getObjectType();
  sub_1E6568998(v4, v19, MEMORY[0x1E69CC610]);
  sub_1E65DE158();
  sub_1E65DDDE8();
  (*(v17 + 8))(v5, v16);
  sub_1E65687DC(v4);
  (*(v2 + 8))(v1, v3);
  *(v6 + 248) = 0;

  v14 = v0[1];

  return v14();
}

uint64_t sub_1E6562AB8()
{
  v1 = v0[3];
  (*(v0[10] + 8))(v0[11], v0[9]);

  return MEMORY[0x1EEE6DFA0](sub_1E6562B34, v1, 0);
}

uint64_t sub_1E6562B34()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[11];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E6562BD4()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1B8, &qword_1E660B980);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_1E65D9FF8();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079F08, &qword_1E660B960) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v9 = sub_1E65D8DE8();
  v1[10] = v9;
  v10 = *(v9 - 8);
  v1[11] = v10;
  v11 = *(v10 + 64) + 15;
  v1[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6562D90, v0, 0);
}

uint64_t sub_1E6562D90()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[2];
  v5 = v4[20];
  __swift_project_boxed_opaque_existential_1(v4 + 16, v4[19]);
  v6 = *(*(v5 + 8) + 8);
  sub_1E65DE0E8();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E5DFE50C(v0[9], &qword_1ED079F08, &qword_1E660B960);
    v7 = sub_1E65D9298();
    sub_1E6568878(&qword_1ED07B1A0, MEMORY[0x1E69CBF90]);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x1E69CBF88], v7);
    swift_willThrow();
    v9 = v0[12];
    v11 = v0[8];
    v10 = v0[9];
    v12 = v0[5];

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[5];
    v16 = v0[2];
    (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
    v17 = v16[25];
    __swift_project_boxed_opaque_existential_1(v16 + 21, v16[24]);
    sub_1E65DD538();

    return MEMORY[0x1EEE6DFA0](sub_1E6562FC0, 0, 0);
  }
}

uint64_t sub_1E6562FC0()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[13] = v2;
  *(v2 + 16) = "FitnessRemoteBrowsingService/LiveRemoteBrowsingService.swift";
  *(v2 + 24) = 60;
  *(v2 + 32) = 2;
  *(v2 + 40) = 144;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1E65630D0;
  v5 = v0[8];
  v6 = v0[6];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6568838, v2, v6);
}

uint64_t sub_1E65630D0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v5 = sub_1E6563330;
    v6 = 0;
  }

  else
  {
    v7 = v2[2];
    (*(v2[4] + 8))(v2[5], v2[3]);
    v5 = sub_1E6563228;
    v6 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1E6563228()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  v11 = v0[9];
  v12 = v0[5];
  v7 = v0[2];
  v8 = v7[20];
  __swift_project_boxed_opaque_existential_1(v7 + 16, v7[19]);
  sub_1E65DE108();
  (*(v4 + 8))(v5, v6);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E6563330()
{
  v1 = v0[2];
  (*(v0[4] + 8))(v0[5], v0[3]);

  return MEMORY[0x1EEE6DFA0](sub_1E65633A8, v1, 0);
}

uint64_t sub_1E65633A8()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[15];
  v2 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E656344C()
{
  v1[2] = v0;
  v2 = *(*(sub_1E65D99E8() - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079F08, &qword_1E660B960) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6563514, v0, 0);
}

uint64_t sub_1E6563514()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v2[20];
  __swift_project_boxed_opaque_existential_1(v2 + 16, v2[19]);
  v4 = *(*(v3 + 8) + 8);
  sub_1E65DE0E8();
  v5 = sub_1E65D8DE8();
  v6 = (*(*(v5 - 8) + 48))(v1, 1, v5);
  sub_1E5DFE50C(v1, &qword_1ED079F08, &qword_1E660B960);
  v7 = v2[20];
  __swift_project_boxed_opaque_existential_1(v2 + 16, v2[19]);
  if (v6 == 1)
  {
    sub_1E65DE118();
  }

  else
  {
    v8 = v0[3];
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072890, &qword_1E65EBF00);
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    sub_1E65DE0F8();
    sub_1E65687DC(v8);
  }

  v11 = v0[3];
  v10 = v0[4];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1E65636AC()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079F08, &qword_1E660B960) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = sub_1E65D8DE8();
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E656380C, v0, 0);
}

uint64_t sub_1E656380C()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[2];
  v5 = v4[20];
  __swift_project_boxed_opaque_existential_1(v4 + 16, v4[19]);
  v6 = *(*(v5 + 8) + 8);
  sub_1E65DE0E8();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E5DFE50C(v0[6], &qword_1ED079F08, &qword_1E660B960);
    v7 = sub_1E65D9298();
    sub_1E6568878(&qword_1ED07B1A0, MEMORY[0x1E69CBF90]);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x1E69CBF88], v7);
    swift_willThrow();
    v9 = v0[9];
    v11 = v0[5];
    v10 = v0[6];

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[5];
    v15 = v0[2];
    (*(v0[8] + 32))(v0[9], v0[6], v0[7]);
    v16 = v15[25];
    __swift_project_boxed_opaque_existential_1(v15 + 21, v15[24]);
    sub_1E65DD568();

    return MEMORY[0x1EEE6DFA0](sub_1E6563A30, 0, 0);
  }
}

uint64_t sub_1E6563A30()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[10] = v2;
  *(v2 + 16) = "FitnessRemoteBrowsingService/LiveRemoteBrowsingService.swift";
  *(v2 + 24) = 60;
  *(v2 + 32) = 2;
  *(v2 + 40) = 160;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_1E6563B40;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6568B70, v2, v5);
}

uint64_t sub_1E6563B40()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v5 = sub_1E6563D34;
    v6 = 0;
  }

  else
  {
    v7 = v2[2];
    (*(v2[4] + 8))(v2[5], v2[3]);
    v5 = sub_1E6563C98;
    v6 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1E6563C98()
{
  v1 = v0[6];
  v2 = v0[5];
  (*(v0[8] + 8))(v0[9], v0[7]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E6563D34()
{
  v1 = v0[2];
  (*(v0[4] + 8))(v0[5], v0[3]);

  return MEMORY[0x1EEE6DFA0](sub_1E6563DAC, v1, 0);
}

uint64_t sub_1E6563DAC()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = v0[12];
  v2 = v0[9];
  v4 = v0[5];
  v3 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6563E44(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_1E65D9C28();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = sub_1E65DAC18();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079F08, &qword_1E660B960) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v13 = sub_1E65D8DE8();
  v2[14] = v13;
  v14 = *(v13 - 8);
  v2[15] = v14;
  v15 = *(v14 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6564068, v1, 0);
}

uint64_t sub_1E6564068()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[3];
  v5 = v4[20];
  __swift_project_boxed_opaque_existential_1(v4 + 16, v4[19]);
  v6 = *(*(v5 + 8) + 8);
  sub_1E65DE0E8();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E5DFE50C(v0[13], &qword_1ED079F08, &qword_1E660B960);
    v7 = sub_1E65D9298();
    sub_1E6568878(&qword_1ED07B1A0, MEMORY[0x1E69CBF90]);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x1E69CBF88], v7);
    swift_willThrow();
    v10 = v0[16];
    v9 = v0[17];
    v12 = v0[12];
    v11 = v0[13];
    v13 = v0[9];
    v14 = v0[6];

    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = v0[16];
    v18 = v0[17];
    v19 = v0[14];
    v20 = v0[15];
    v21 = v0[12];
    v23 = v0[8];
    v22 = v0[9];
    v27 = v0[7];
    v28 = v0[6];
    v25 = v0[2];
    v24 = v0[3];
    (*(v20 + 32))(v18, v0[13], v19);
    (*(v20 + 16))(v17, v18, v19);
    (*(v23 + 16))(v22, v25, v27);
    sub_1E65DAC08();
    v26 = v24[25];
    __swift_project_boxed_opaque_existential_1(v24 + 21, v24[24]);
    sub_1E65DD588();

    return MEMORY[0x1EEE6DFA0](sub_1E656431C, 0, 0);
  }
}

uint64_t sub_1E656431C()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[18] = v2;
  *(v2 + 16) = "FitnessRemoteBrowsingService/LiveRemoteBrowsingService.swift";
  *(v2 + 24) = 60;
  *(v2 + 32) = 2;
  *(v2 + 40) = 169;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_1E656442C;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65687C4, v2, v5);
}

uint64_t sub_1E656442C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  v9 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v5 = sub_1E656466C;
    v6 = 0;
  }

  else
  {
    v7 = v2[3];
    (*(v2[5] + 8))(v2[6], v2[4]);
    v5 = sub_1E6564584;
    v6 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1E6564584()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[13];
  v6 = v0[9];
  v7 = v0[6];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v4 + 8))(v2, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E656466C()
{
  v1 = v0[3];
  (*(v0[5] + 8))(v0[6], v0[4]);

  return MEMORY[0x1EEE6DFA0](sub_1E65646E4, v1, 0);
}

uint64_t sub_1E65646E4()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[20];
  v6 = v0[16];
  v5 = v0[17];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[9];
  v10 = v0[6];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E65647C4()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B198, &qword_1E660B958);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_1E65D9C78();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079F08, &qword_1E660B960) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v9 = sub_1E65D8DE8();
  v1[10] = v9;
  v10 = *(v9 - 8);
  v1[11] = v10;
  v11 = *(v10 + 64) + 15;
  v1[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6564980, v0, 0);
}

uint64_t sub_1E6564980()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[2];
  v5 = v4[20];
  __swift_project_boxed_opaque_existential_1(v4 + 16, v4[19]);
  v6 = *(*(v5 + 8) + 8);
  sub_1E65DE0E8();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E5DFE50C(v0[9], &qword_1ED079F08, &qword_1E660B960);
    v7 = sub_1E65D9298();
    sub_1E6568878(&qword_1ED07B1A0, MEMORY[0x1E69CBF90]);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x1E69CBF88], v7);
    swift_willThrow();
    v9 = v0[12];
    v11 = v0[8];
    v10 = v0[9];
    v12 = v0[5];

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[5];
    v16 = v0[2];
    (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
    v17 = v16[25];
    __swift_project_boxed_opaque_existential_1(v16 + 21, v16[24]);
    sub_1E65DD548();

    return MEMORY[0x1EEE6DFA0](sub_1E6564BB0, 0, 0);
  }
}

uint64_t sub_1E6564BB0()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[13] = v2;
  *(v2 + 16) = "FitnessRemoteBrowsingService/LiveRemoteBrowsingService.swift";
  *(v2 + 24) = 60;
  *(v2 + 32) = 2;
  *(v2 + 40) = 176;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1E6564CC0;
  v5 = v0[8];
  v6 = v0[6];

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65686D4, v2, v6);
}

uint64_t sub_1E6564CC0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v15 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v5 = sub_1E6564FF4;
    v6 = 0;
  }

  else
  {
    v8 = v2[7];
    v7 = v2[8];
    v10 = v2[5];
    v9 = v2[6];
    v11 = v2[3];
    v12 = v2[4];
    v13 = v2[2];
    (*(v8 + 8))(v7, v9);
    (*(v12 + 8))(v10, v11);
    v5 = sub_1E6564E38;
    v6 = v13;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1E6564E38()
{
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_1E6564EC8;
  v2 = *(v0 + 16);

  return sub_1E6562BD4();
}

uint64_t sub_1E6564EC8()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_1E6565114;
  }

  else
  {
    v6 = sub_1E656506C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E6564FF4()
{
  v1 = v0[2];
  (*(v0[4] + 8))(v0[5], v0[3]);

  return MEMORY[0x1EEE6DFA0](sub_1E6568B64, v1, 0);
}

uint64_t sub_1E656506C()
{
  v1 = v0[9];
  v2 = v0[8];
  v3 = v0[5];
  (*(v0[11] + 8))(v0[12], v0[10]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6565114()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[17];
  v2 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E65651B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B188, &qword_1E660B938);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6565288, v2, 0);
}

uint64_t sub_1E6565288()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v2[25];
  __swift_project_boxed_opaque_existential_1(v2 + 21, v2[24]);
  sub_1E65DD558();

  return MEMORY[0x1EEE6DFA0](sub_1E6565324, 0, 0);
}

uint64_t sub_1E6565324()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "FitnessRemoteBrowsingService/LiveRemoteBrowsingService.swift";
  *(v2 + 24) = 60;
  *(v2 + 32) = 2;
  *(v2 + 40) = 182;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = sub_1E65D92D8();
  *v4 = v0;
  v4[1] = sub_1E653B6A4;
  v6 = v0[2];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6567C38, v2, v5);
}

uint64_t sub_1E656543C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B200, &qword_1E660B9D0);
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E656550C, a2, 0);
}

uint64_t sub_1E656550C()
{
  v1 = v0[3];
  if (*(v1 + 248) == 3)
  {
    v2 = v0[6];
    v3 = sub_1E65D99F8();
    sub_1E6568878(&qword_1ED07B1D0, MEMORY[0x1E69CC620]);
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x1E69CC618], v3);
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  else
  {
    *(v1 + 248) = 1;
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_1E65656A8;
    v8 = v0[3];

    return sub_1E6561E48();
  }
}

uint64_t sub_1E65656A8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  v5 = *(v2 + 24);
  if (v0)
  {

    v6 = sub_1E6568B68;
  }

  else
  {
    v6 = sub_1E65657E0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E65657E0()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B208, &qword_1E660B9D8);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E65658C8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E656543C(a1, v1);
}

uint64_t sub_1E6565964()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E6561104();
}

uint64_t sub_1E65659F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E6565964();
}

uint64_t sub_1E6565A84(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6561538(a1);
}

uint64_t sub_1E6565B20(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6565A84(a1);
}

uint64_t sub_1E6565BBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E6561E48();
}

uint64_t sub_1E6565C4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E6565BBC();
}

uint64_t sub_1E6565CDC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6562288(a1);
}

uint64_t sub_1E6565D74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6565CDC(a1);
}

uint64_t sub_1E6565E0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E6562BD4();
}

uint64_t sub_1E6565E9C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E6565E0C();
}

uint64_t sub_1E6565F2C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFA78C;

  return sub_1E65651B8(a1, a2);
}

uint64_t sub_1E6565FD8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E6565F2C(a1, a2);
}

uint64_t sub_1E6566084(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B290, &qword_1E660B9C0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6566124, a2, 0);
}

uint64_t sub_1E6566124()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v1[19]);
  v4 = *(*(v3 + 8) + 8);
  sub_1E65DE0D8();
  v5 = sub_1E65D9FF8();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v2, 1, v5) == 1)
  {
    sub_1E5DFE50C(v0[4], &unk_1ED07B290, &qword_1E660B9C0);
    v7 = sub_1E65D9298();
    sub_1E6568878(&qword_1ED07B1A0, MEMORY[0x1E69CBF90]);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x1E69CBF88], v7);
    swift_willThrow();
  }

  else
  {
    (*(v6 + 32))(v0[2], v0[4], v5);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E6566310(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6566084(a1, v1);
}

uint64_t sub_1E65663AC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079F08, &qword_1E660B960) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E656644C, a2, 0);
}

uint64_t sub_1E656644C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v1[19]);
  v4 = *(*(v3 + 8) + 8);
  sub_1E65DE0E8();
  v5 = sub_1E65D8DE8();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v2, 1, v5) == 1)
  {
    sub_1E5DFE50C(v0[4], &qword_1ED079F08, &qword_1E660B960);
    v7 = sub_1E65D9298();
    sub_1E6568878(&qword_1ED07B1A0, MEMORY[0x1E69CBF90]);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x1E69CBF88], v7);
    swift_willThrow();
  }

  else
  {
    (*(v6 + 32))(v0[2], v0[4], v5);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E6566638(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E65663AC(a1, v1);
}

uint64_t sub_1E65666D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E656344C();
}

uint64_t sub_1E6566764()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E65666D4();
}

uint64_t sub_1E65667F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6566810, a2, 0);
}

uint64_t sub_1E6566810()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  swift_getObjectType();
  sub_1E65DE168();
  sub_1E65D99E8();
  sub_1E65DDE28();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E65668E0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E65667F4(a1, v1);
}

uint64_t sub_1E656697C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B290, &qword_1E660B9C0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6566A1C, a2, 0);
}

uint64_t sub_1E6566A1C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v2[20];
  __swift_project_boxed_opaque_existential_1(v2 + 16, v2[19]);
  v4 = *(*(v3 + 8) + 8);
  sub_1E65DE0D8();
  v5 = sub_1E65D9FF8();
  LODWORD(v3) = (*(*(v5 - 8) + 48))(v1, 1, v5);
  sub_1E5DFE50C(v1, &unk_1ED07B290, &qword_1E660B9C0);
  if (v3 == 1)
  {
    v6 = v0[4];
    v7 = sub_1E65D9298();
    sub_1E6568878(&qword_1ED07B1A0, MEMORY[0x1E69CBF90]);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x1E69CBF88], v7);
    swift_willThrow();
  }

  else
  {
    v10 = v0[4];
    v11 = v0[2];
    v12 = v2[20];
    __swift_project_boxed_opaque_existential_1(v2 + 16, v2[19]);
    v13 = *(v12 + 8);
    sub_1E65DE1D8();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E6566C04(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E656697C(a1, v1);
}

uint64_t sub_1E6566C9C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E65636AC();
}

uint64_t sub_1E6566D2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E6566C9C();
}

uint64_t sub_1E6566DBC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6563E44(a1);
}

uint64_t sub_1E6566E54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6566DBC(a1);
}

uint64_t sub_1E6566EEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E65647C4();
}

uint64_t sub_1E6566F7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E6566EEC();
}

unint64_t sub_1E6567020()
{
  result = qword_1ED07B180;
  if (!qword_1ED07B180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07B180);
  }

  return result;
}

uint64_t sub_1E6567074(uint64_t a1, uint64_t (*a2)(void))
{
  if (a2)
  {
    return a2();
  }

  return result;
}

uint64_t sub_1E65670A4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1C0, &qword_1E660B988);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1B8, &qword_1E660B980);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E6568850;
  *(v35 + 24) = v33;

  v34(sub_1E6557D70, v35);
}

uint64_t sub_1E6567480(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1A8, &qword_1E660B968);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B198, &qword_1E660B958);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E6568704;
  *(v35 + 24) = v33;

  v34(sub_1E6557D70, v35);
}

uint64_t sub_1E656785C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B190, &unk_1E660B940);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B188, &qword_1E660B938);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65686AC;
  *(v35 + 24) = v33;

  v34(sub_1E6557D50, v35);
}

uint64_t sub_1E6567C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_1E65D9FF8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1C8, &qword_1E660B990);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v17 = (&v37 - v16);
  v18 = sub_1E65E3B68();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v22 = sub_1E65E3B48();
  v23 = sub_1E65E6338();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_1E65E68B8();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_1E5DFD4B0(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_1E5DE9000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x1E694F1C0](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_1E5DFD1CC(a1, v17, &qword_1ED07B1C8, &qword_1E660B990);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1C0, &qword_1E660B988);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1C0, &qword_1E660B988);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E6567FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_1E65D9C78();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1B0, &unk_1E660B970);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v17 = (&v37 - v16);
  v18 = sub_1E65E3B68();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v22 = sub_1E65E3B48();
  v23 = sub_1E65E6338();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_1E65E68B8();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_1E5DFD4B0(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_1E5DE9000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x1E694F1C0](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_1E5DFD1CC(a1, v17, &qword_1ED07B1B0, &unk_1E660B970);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1A8, &qword_1E660B968);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1A8, &qword_1E660B968);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E6568338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_1E65D92D8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B9D0, &qword_1E660B950);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v17 = (&v37 - v16);
  v18 = sub_1E65E3B68();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v22 = sub_1E65E3B48();
  v23 = sub_1E65E6338();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_1E65E68B8();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_1E5DFD4B0(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_1E5DE9000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x1E694F1C0](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_1E5DFD1CC(a1, v17, &qword_1ED07B9D0, &qword_1E660B950);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B190, &unk_1E660B940);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B190, &unk_1E660B940);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E656872C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *(v4 + 40);
  v12 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(a1, v7, v8, v9, v11, v10, v12);
}

uint64_t sub_1E65687DC(uint64_t a1)
{
  v2 = sub_1E65D99E8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6568878(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E65688DC(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1E8, &qword_1E660B9A8) - 8) + 80);

  return sub_1E6560B34(a1);
}

uint64_t sub_1E6568998(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E6568A1C(uint64_t *a1, uint64_t *a2)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_1E65E60E8();
}

uint64_t sub_1E6568A74(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B210, &qword_1E660B9E0) - 8) + 80);

  return sub_1E6561000(a1);
}

void sub_1E6568AF0()
{
  v1 = *(v0 + 120);
  os_unfair_lock_lock((v1 + 24));
  sub_1E6568B48((v1 + 16));

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1E6568B7C()
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v62 = *(v56 - 8);
  v55 = *(v62 + 64);
  v1 = MEMORY[0x1EEE9AC00](v56);
  v3 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v49 - v5;
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B228, &qword_1E660BA70);
  v9 = *(v8 - 8);
  v59 = v8;
  v60 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v49 - v11;
  v12 = *(v0 + 64);
  v13 = *(v0 + 72);
  v14 = sub_1E65DDEB8();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  v17 = sub_1E65DDEA8();
  swift_getObjectType();
  sub_1E65DE0C8();
  swift_allocObject();
  swift_weakInit();
  sub_1E65DDE08();

  __swift_destroy_boxed_opaque_existential_1(v63);
  sub_1E65DDF68();
  swift_allocObject();
  swift_weakInit();
  v54 = v17;
  sub_1E65DDE08();

  __swift_destroy_boxed_opaque_existential_1(v63);
  sub_1E65DE028();
  swift_allocObject();
  swift_weakInit();
  sub_1E65DDE08();

  __swift_destroy_boxed_opaque_existential_1(v63);
  v18 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  v19 = *(v0 + 16);
  v61 = v0;
  v49 = v6;
  sub_1E65DD6A8();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1E6569E1C;
  *(v21 + 24) = v20;
  v22 = v62;
  v23 = *(v62 + 16);
  v52 = v62 + 16;
  v53 = v23;
  v24 = v3;
  v25 = v3;
  v26 = v56;
  v23(v25, v6, v56);
  v27 = *(v22 + 80);
  v51 = (v27 + 16) & ~v27;
  v28 = (v55 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v50 = *(v22 + 32);
  v30 = v24;
  v31 = v26;
  v50(v29 + ((v27 + 16) & ~v27), v30, v26);
  v32 = (v29 + v28);
  *v32 = sub_1E646123C;
  v32[1] = v21;
  v33 = v57;
  sub_1E65DACA8();
  v34 = *(v22 + 8);
  v62 = v22 + 8;
  v55 = v34;
  v35 = v49;
  v34(v49, v31);
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = swift_allocObject();
  v38 = v54;
  *(v37 + 16) = v36;
  *(v37 + 24) = v38;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_1E656A17C;
  *(v39 + 24) = v37;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1E656A184;
  *(v40 + 24) = v39;
  v53(v35, v33, v31);
  v41 = swift_allocObject();
  v50(v41 + v51, v35, v31);
  v42 = (v41 + v28);
  *v42 = sub_1E656BF1C;
  v42[1] = v40;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B230, &qword_1E660BA78);
  v43 = v58;
  sub_1E65DACA8();
  v55(v33, v31);
  v44 = v59;
  v45 = sub_1E65DACC8();
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  v45(sub_1E656C0B8, v46);

  (*(v60 + 8))(v43, v44);
  v47 = *(v61 + 80);
  *(v61 + 80) = v38;
}

uint64_t sub_1E6569240()
{
  v0 = sub_1E65D8DE8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_1E65DE0B8();
    v8 = *(v6 + 120);
    MEMORY[0x1EEE9AC00](v7);
    *(&v9 - 2) = v4;
    *(&v9 - 1) = v6;
    os_unfair_lock_lock((v8 + 24));
    sub_1E656C460((v8 + 16));
    os_unfair_lock_unlock((v8 + 24));

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_1E6569394()
{
  v0 = sub_1E65D8DE8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_1E65DDF58();
    v8 = *(v6 + 120);
    MEMORY[0x1EEE9AC00](v7);
    *(&v9 - 2) = v4;
    *(&v9 - 1) = v6;
    os_unfair_lock_lock((v8 + 24));
    sub_1E656C430((v8 + 16));
    os_unfair_lock_unlock((v8 + 24));

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_1E65694E8()
{
  v0 = sub_1E65D8DE8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_1E65DE018();
    v8 = *(v6 + 120);
    MEMORY[0x1EEE9AC00](v7);
    *(&v9 - 2) = v4;
    *(&v9 - 1) = v6;
    os_unfair_lock_lock((v8 + 24));
    sub_1E656C108((v8 + 16));
    os_unfair_lock_unlock((v8 + 24));

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_1E656963C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 112);
    (*(result + 104))();
  }

  return result;
}

double sub_1E65696AC@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 64);
    v4 = *(Strong + 72);
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_1E65DE228();
    swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    sub_1E65DDE18();

    swift_unknownObjectRelease();
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1E65697FC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 112);
    (*(result + 104))();
  }

  return result;
}

uint64_t sub_1E656985C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = *(a2 + 80);
  *(a2 + 80) = 0;

  *a1 = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t sub_1E65698B0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B240, &qword_1E660BA88);
  v8 = sub_1E65D8DE8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E65EA670;
  (*(v9 + 16))(v12 + v11, a2, v8);
  a4(v12);
  swift_setDeallocating();
  (*(v9 + 8))(v12 + v11, v8);
  swift_deallocClassInstance();
  v13 = *(a3 + 96);
  return (*(a3 + 88))(*a1);
}

uint64_t sub_1E6569A08(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079F08, &qword_1E660B960);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v12 - v6;
  if (*(*v1 + 16))
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = *(sub_1E65D8DE8() - 8);
      v10 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v11 = *(v9 + 72);
      do
      {
        sub_1E656AF70(v10, v7);
        result = sub_1E5DFE50C(v7, &qword_1ED079F08, &qword_1E660B960);
        v10 += v11;
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t sub_1E6569B34(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v16[2] = a2;

  v7 = sub_1E656B4E8(sub_1E656C124, v16, v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B240, &qword_1E660BA88);
  v8 = sub_1E65D8DE8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E65EA670;
  (*(v9 + 16))(v12 + v11, a2, v8);
  v13 = sub_1E656C28C(v12, v7);
  swift_setDeallocating();
  (*(v9 + 8))(v12 + v11, v8);
  swift_deallocClassInstance();
  *a1 = v13;
  v14 = *(a3 + 96);
  return (*(a3 + 88))(v13);
}

uint64_t sub_1E6569CD0()
{
  v0 = sub_1E65D8D98();
  v2 = v1;
  if (v0 == sub_1E65D8D98() && v2 == v3)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_1E65E6C18();

    v4 = v5 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E6569D80()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v1 = v0[8];
  swift_unknownObjectRelease();
  v2 = v0[10];

  v3 = v0[12];

  v4 = v0[14];

  v5 = v0[15];

  return swift_deallocClassInstance();
}

uint64_t sub_1E6569E38(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  a3(&v5);
  v6 = 0;
  a1(&v5);
  return sub_1E5DFE50C(&v5, &qword_1ED07B238, &qword_1E660BA80);
}

uint64_t sub_1E6569EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v9 = sub_1E65DACC8();
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a1;
  v10[5] = a2;

  v9(sub_1E656C0C0, v10);
}

uint64_t sub_1E6569FB8(void *a1, char a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B228, &qword_1E660BA70);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v21 - v15;
  if (a2)
  {
    v21[0] = a1;
    v22 = 1;
    v17 = a1;
    a5(v21);
    return sub_1E5DFE50C(v21, &qword_1ED07B238, &qword_1E660BA80);
  }

  else
  {
    a3(v14);
    v19 = sub_1E65DACC8();
    v20 = swift_allocObject();
    *(v20 + 16) = a5;
    *(v20 + 24) = a6;

    v19(sub_1E656C490, v20);

    return (*(v12 + 8))(v16, v11);
  }
}

double sub_1E656A17C@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1E65696AC(a1);
}

uint64_t sub_1E656A184()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1E656A1B4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1E65D8DE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1E656C3EC(&qword_1ED079748);
  v36 = a2;
  v13 = sub_1E65E5B38();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1E656C3EC(&qword_1ED07B248);
      v23 = sub_1E65E5B98();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1E656A7B4(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1E656A46C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1E65D8DE8();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B250, &qword_1E660BA90);
  result = sub_1E65E6868();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1E656C3EC(&qword_1ED079748);
      result = sub_1E65E5B38();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1E656A7B4(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1E65D8DE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1E656A46C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1E656AA30();
      goto LABEL_12;
    }

    sub_1E656AC68(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1E656C3EC(&qword_1ED079748);
  v15 = sub_1E65E5B38();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1E656C3EC(&qword_1ED07B248);
      v23 = sub_1E65E5B98();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1E65E6C58();
  __break(1u);
  return result;
}

void *sub_1E656AA30()
{
  v1 = v0;
  v2 = sub_1E65D8DE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B250, &qword_1E660BA90);
  v7 = *v0;
  v8 = sub_1E65E6858();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_1E656AC68(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1E65D8DE8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B250, &qword_1E660BA90);
  v10 = sub_1E65E6868();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1E656C3EC(&qword_1ED079748);
      result = sub_1E65E5B38();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1E656AF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1E65D8DE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1E656C3EC(&qword_1ED079748);
  v35 = a1;
  v13 = sub_1E65E5B38();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_1E656C3EC(&qword_1ED07B248);
      v22 = sub_1E65E5B98();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1E656AA30();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_1E656B1F0(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_1E656B1F0(int64_t a1)
{
  v3 = sub_1E65D8DE8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_1E65E6758();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v38 = (v15 + 1) & v13;
      v17 = *(v4 + 16);
      v16 = v4 + 16;
      v18 = v13;
      v19 = *(v16 + 56);
      v39 = v16;
      v36 = (v16 - 8);
      v37 = v17;
      do
      {
        v20 = v10;
        v21 = v19;
        v22 = v19 * v12;
        v37(v8, *(v9 + 48) + v19 * v12, v3);
        v23 = v9;
        v24 = v18;
        v25 = v23;
        v26 = *(v23 + 40);
        sub_1E656C3EC(&qword_1ED079748);
        v27 = sub_1E65E5B38();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v18 = v24;
        if (a1 >= v38)
        {
          if (v28 >= v38 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v21;
            v32 = v21 * a1;
            if (v21 * a1 < v22 || v31 + v21 * a1 >= (v31 + v22 + v21))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v22)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v38 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v21;
LABEL_5:
        v12 = (v12 + 1) & v18;
        v10 = v20;
      }

      while (((*(v20 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

uint64_t sub_1E656B4E8(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v45 = a1;
  v49 = *MEMORY[0x1E69E9840];
  v6 = sub_1E65D8DE8();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v10) = *(a3 + 32);
  v12 = ((1 << v10) + 63) >> 6;
  if ((v10 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v37 = v12;
    v43 = v11;
    v44 = v9;
    v48 = v4;
    v39 = &v36;
    MEMORY[0x1EEE9AC00](v9);
    v38 = &v36 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v38, v13);
    v14 = 0;
    v46 = a3;
    v16 = *(a3 + 56);
    a3 += 56;
    v15 = v16;
    v17 = 1 << *(a3 - 24);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v15;
    v11 = ((v17 + 63) >> 6);
    v40 = 0;
    v41 = v7 + 2;
    v42 = (v7 + 1);
    while (v19)
    {
      v20 = __clz(__rbit64(v19));
      v47 = (v19 - 1) & v19;
LABEL_12:
      v12 = v20 | (v14 << 6);
      v23 = *(v46 + 48) + v7[9] * v12;
      v4 = v7;
      v24 = v7[2];
      v25 = v43;
      v26 = v44;
      v24(v43, v23, v44);
      v27 = v48;
      v28 = v45(v25);
      v48 = v27;
      if (v27)
      {
        (*v42)(v25, v26);

        result = swift_willThrow();
        goto LABEL_18;
      }

      v29 = v28;
      v9 = (*v42)(v25, v26);
      v7 = v4;
      v19 = v47;
      if (v29)
      {
        *&v38[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
        if (__OFADD__(v40++, 1))
        {
          __break(1u);
LABEL_17:
          result = sub_1E656BB70(v38, v37, v40, v46);
          goto LABEL_18;
        }
      }
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_17;
      }

      v22 = *(a3 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v33 = v9;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v9 = v33;
  }

  v34 = swift_slowAlloc();
  v35 = sub_1E656BAE0(v34, v12, a3, v45);

  result = MEMORY[0x1E694F1C0](v34, -1, -1);
  if (!v4)
  {
    result = v35;
  }

LABEL_18:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E656B880(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v36 = a4;
  v30 = a2;
  v31 = a1;
  v39 = sub_1E65D8DE8();
  v6 = *(*(v39 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v39);
  v37 = a3;
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v34 = v8 + 16;
  v35 = v8;
  v32 = 0;
  v33 = (v8 + 8);
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v19 = v18 | (v10 << 6);
    v20 = v39;
    v21 = v38;
LABEL_11:
    (*(v35 + 16))(v21, *(v37 + 48) + *(v35 + 72) * v19, v20);
    v24 = v36(v21);
    v25 = v21;
    if (v4)
    {
      return (*v33)(v21, v20);
    }

    v26 = v24;
    result = (*v33)(v25, v20);
    if (v26)
    {
      *(v31 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_16:
        v28 = v37;

        return sub_1E656BB70(v31, v30, v32, v28);
      }
    }
  }

  v22 = v10;
  v20 = v39;
  v21 = v38;
  while (1)
  {
    v10 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_16;
    }

    v23 = *(v12 + 8 * v10);
    ++v22;
    if (v23)
    {
      v16 = (v23 - 1) & v23;
      v19 = __clz(__rbit64(v23)) | (v10 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1E656BAE0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
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

    v8 = sub_1E656B880(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1E656BB70(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_1E65D8DE8();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B250, &qword_1E660BA90);
  result = sub_1E65E6888();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_1E656C3EC(&qword_1ED079748);
    result = sub_1E65E5B38();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1E656BE84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B230, &qword_1E660BA78);

  return sub_1E65DACA8();
}

uint64_t objectdestroy_9Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return swift_deallocObject();
}

uint64_t sub_1E656BFE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a3(a1, a2, v3 + v7, v9, v10);
}

uint64_t sub_1E656C144(uint64_t a1)
{
  v2 = sub_1E65D8DE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v5);
  v10 = &v17 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_1E656A1B4(v10, v7);
      result = (*(v12 - 8))(v10, v2);
      v15 += v16;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_1E656C28C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65D8DE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - v10;
  v20 = a2;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v5 + 16);
    v13 = v5 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v9, v16, v4);
      sub_1E656A1B4(v11, v9);
      (*(v13 - 8))(v11, v4);
      v16 += v17;
      --v12;
    }

    while (v12);
    return v20;
  }

  return a2;
}

uint64_t sub_1E656C3EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1E65D8DE8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void static RemoteBrowsingService.simulator()(void *a1@<X8>)
{
  *a1 = &unk_1E660BA98;
  a1[1] = 0;
  a1[2] = &unk_1E660BAA0;
  a1[3] = 0;
  a1[4] = &unk_1E660BAA8;
  a1[5] = 0;
  a1[6] = &unk_1E660BAB0;
  a1[7] = 0;
  a1[8] = &unk_1E660BAB8;
  a1[9] = 0;
  a1[10] = &unk_1E660BAC0;
  a1[11] = 0;
  a1[12] = &unk_1E660BAC8;
  a1[13] = 0;
  a1[14] = &unk_1E660BAD0;
  a1[15] = 0;
  a1[16] = &unk_1E660BAD8;
  a1[17] = 0;
  a1[18] = &unk_1E660BAE0;
  a1[19] = 0;
  a1[20] = &unk_1E660BAE8;
  a1[21] = 0;
  a1[22] = &unk_1E660BAF0;
  a1[23] = 0;
  a1[24] = &unk_1E660BAF8;
  a1[25] = 0;
  a1[26] = &unk_1E660BB00;
  a1[27] = 0;
  a1[28] = &unk_1E660BB08;
  a1[29] = 0;
}

uint64_t sub_1E656C5C4(uint64_t a1)
{
  v1[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B200, &qword_1E660B9D0);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E656C690, 0, 0);
}

uint64_t sub_1E656C690()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B208, &qword_1E660B9D8);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E656C774(uint64_t a1)
{
  v1[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B1D8, &qword_1E660B998);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E656C840, 0, 0);
}

uint64_t sub_1E656C840()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  type metadata accessor for RemoteBrowsingGuestPairingState();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E656C938()
{
  v1 = *(v0 + 16);
  sub_1E65D92C8();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E656C9BC()
{
  v1 = *(v0 + 16);
  sub_1E65D9FE8();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E656CA40()
{
  v1 = *(v0 + 16);
  sub_1E65D8DD8();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E656CAA4(uint64_t a1)
{
  v1[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B258, &unk_1E660BB10);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E656CB70, 0, 0);
}

uint64_t sub_1E656CB70()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E65D99E8();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v5 = v0[1];

  return v5();
}

uint64_t RemoteBrowsingService.beginDiscoveringRemoteParticipants.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RemoteBrowsingService.endDiscoveringRemoteParticipants.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t RemoteBrowsingService.beginAdvertisingGuestPairing.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t RemoteBrowsingService.endAdvertisingGuestPairing.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t RemoteBrowsingService.requestEnvironmentWithConfirmation.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t RemoteBrowsingService.requestEnvironmentUpdate.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t RemoteBrowsingService.requestRemoteBrowsingServiceSubscription.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t RemoteBrowsingService.requireActiveEnvironment.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t RemoteBrowsingService.requireActiveParticipant.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t RemoteBrowsingService.invalidateRemoteBrowsingEnvironment.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return v1;
}

uint64_t RemoteBrowsingService.appendRemoteBrowsingJournalEntry.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return v1;
}

uint64_t RemoteBrowsingService.showWorkoutPlanCreationPrompt.getter()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return v1;
}

uint64_t RemoteBrowsingService.showPersonalizedWorkoutPlanCreationPrompt.getter()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return v1;
}

uint64_t RemoteBrowsingService.requireActiveWorkoutPlan.getter()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return v1;
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_1E656CF58(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
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

uint64_t sub_1E656CFA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E656D01C()
{
  v1[4] = v0;
  v2 = sub_1E65D8F68();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B290, &qword_1E660B9C0) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v6 = sub_1E65D9FF8();
  v1[9] = v6;
  v7 = *(v6 - 8);
  v1[10] = v7;
  v8 = *(v7 + 64) + 15;
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E656D170, 0, 0);
}

uint64_t sub_1E656D170()
{
  v1 = v0[4];
  if (*(v1 + 144) <= 2u)
  {
    v2 = *(v1 + 80);
    __swift_project_boxed_opaque_existential_1((v1 + 48), *(v1 + 72));
    v3 = sub_1E65DDF88();
    if (!v4)
    {
LABEL_5:
      v7 = v0[4];
      v8 = v7[3];
      v9 = v7[4];
      __swift_project_boxed_opaque_existential_1(v7, v8);
      v10 = *(MEMORY[0x1E69CADF0] + 4);
      v11 = swift_task_alloc();
      v0[12] = v11;
      *v11 = v0;
      v12 = sub_1E656D538;
LABEL_8:
      v11[1] = v12;

      return MEMORY[0x1EEE34888](v8, v9);
    }

    v5 = v3;
    v6 = v4;
    v0[2] = v3;
    v0[3] = v4;
    sub_1E5F9AEA8();
    if (sub_1E65E66F8())
    {

      goto LABEL_5;
    }

    goto LABEL_13;
  }

  v13 = v0[9];
  v14 = v0[10];
  v15 = v0[8];
  v16 = *(v1 + 136);
  __swift_project_boxed_opaque_existential_1((v1 + 104), *(v1 + 128));
  sub_1E65DE0D8();
  if ((*(v14 + 48))(v15, 1, v13) == 1)
  {
    v17 = v0[4];
    sub_1E656F1C8(v0[8]);
    v8 = v17[3];
    v9 = v17[4];
    __swift_project_boxed_opaque_existential_1(v17, v8);
    v18 = *(MEMORY[0x1E69CADF0] + 4);
    v11 = swift_task_alloc();
    v0[13] = v11;
    *v11 = v0;
    v12 = sub_1E656D6AC;
    goto LABEL_8;
  }

  v20 = v0[6];
  v19 = v0[7];
  v21 = v0[5];
  (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
  sub_1E65D9FD8();
  v5 = sub_1E65D8F58();
  v6 = v22;
  (*(v20 + 8))(v19, v21);
  v24 = v0[10];
  v23 = v0[11];
  v25 = v0[9];
  if (v6)
  {
    (*(v24 + 8))(v0[11], v0[9]);
LABEL_13:
    v26 = v0[11];
    v28 = v0[7];
    v27 = v0[8];

    v29 = v0[1];

    return v29(v5, v6);
  }

  v30 = sub_1E65E38E8();
  sub_1E656F180(&qword_1ED074300, MEMORY[0x1E69CADC8]);
  swift_allocError();
  (*(*(v30 - 8) + 104))(v31, *MEMORY[0x1E69CADB0], v30);
  swift_willThrow();
  (*(v24 + 8))(v23, v25);
  v32 = v0[11];
  v33 = v0[7];
  v34 = v0[8];

  v35 = v0[1];

  return v35();
}

uint64_t sub_1E656D538(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 96);
  v8 = *v3;

  v9 = v6[11];
  v10 = v6[8];
  v11 = v6[7];

  v14 = *(v8 + 8);
  if (!v2)
  {
    v12 = a1;
    v13 = a2;
  }

  return v14(v12, v13);
}

uint64_t sub_1E656D6AC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 104);
  v8 = *v3;

  v9 = v6[11];
  v10 = v6[8];
  v11 = v6[7];

  v14 = *(v8 + 8);
  if (!v2)
  {
    v12 = a1;
    v13 = a2;
  }

  return v14(v12, v13);
}

uint64_t sub_1E656D820()
{
  v1[2] = v0;
  v2 = sub_1E65E38D8();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E656D8E0, 0, 0);
}

uint64_t sub_1E656D8E0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  (*(v2 + 104))(v1, *MEMORY[0x1E69CAD88], v4);
  v7 = *(MEMORY[0x1E69CADE8] + 4);
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_1E656D9D0;
  v9 = v0[5];

  return MEMORY[0x1EEE34880](v9, v5, v6);
}

uint64_t sub_1E656D9D0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 24);
  v10 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v8 = sub_1E653C3B0;
  }

  else
  {
    v8 = sub_1E656DB44;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1E656DB44()
{
  v1 = [*(v0 + 56) identifier];
  if (v1)
  {
    v2 = v1;
    sub_1E65E5C68();
  }

  v3 = *(v0 + 56);
  v4 = sub_1E65E38E8();
  sub_1E656F180(&qword_1ED074300, MEMORY[0x1E69CADC8]);
  swift_allocError();
  (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69CAD98], v4);
  swift_willThrow();

  v6 = *(v0 + 40);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1E656DD10()
{
  v2 = v0[9];
  v1 = v0[10];

  sub_1E65E6048();
  sub_1E65E5FC8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = [objc_allocWithZone(MEMORY[0x1E698CD28]) initWithAccount:v0[7] bag:*(v0[2] + 40)];
  v0[11] = v3;
  sub_1E65E3988();
  v4 = sub_1E65E5C48();

  [v3 setSubscriptionType_];

  return MEMORY[0x1EEE6DFA0](sub_1E656DE38, 0, 0);
}

uint64_t sub_1E656DE38()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);
  v3 = *(v0 + 88);

  return v2(v3);
}

uint64_t sub_1E656DEAC()
{
  v1[6] = v0;
  v2 = sub_1E65E3B68();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E656DF6C, 0, 0);
}

uint64_t sub_1E656DF6C()
{
  v1 = *(v0 + 48);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = *(MEMORY[0x1E69CAE08] + 4);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1E656E024;

  return MEMORY[0x1EEE348A8](v3, v2);
}

uint64_t sub_1E656E024(void *a1)
{
  v4 = *(*v2 + 80);
  v5 = *v2;
  v5[11] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E656E17C, 0, 0);
  }

  else
  {
    v6 = v5[9];

    v7 = v5[1];

    return v7();
  }
}

uint64_t sub_1E656E17C()
{
  v26 = v0;
  v1 = v0[11];
  v2 = v0[9];
  sub_1E65DE348();
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6338();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[11];
    v8 = v0[8];
    v7 = v0[9];
    v9 = v0[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = v0[2];
    v13 = MEMORY[0x1E694E6C0](v0[3], v0[4]);
    v15 = sub_1E5DFD4B0(v13, v14, &v25);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Account required, fetch failed with error %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1E694F1C0](v11, -1, -1);
    MEMORY[0x1E694F1C0](v10, -1, -1);

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v17 = v0[8];
    v16 = v0[9];
    v18 = v0[7];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[11];
  v20 = v0[9];
  v21 = sub_1E65E38E8();
  sub_1E656F180(&qword_1ED074300, MEMORY[0x1E69CADC8]);
  swift_allocError();
  (*(*(v21 - 8) + 104))(v22, *MEMORY[0x1E69CAD90], v21);
  swift_willThrow();

  v23 = v0[1];

  return v23();
}

uint64_t sub_1E656E410()
{
  v1 = *(v0 + 16);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = *(MEMORY[0x1E69CAE08] + 4);
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1E6531170;

  return MEMORY[0x1EEE348A8](v3, v2);
}

uint64_t sub_1E656E4C8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E656E3F0(v0 + 16);
}

uint64_t sub_1E656E57C()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(MEMORY[0x1E69CADF8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1E651F35C;

  return MEMORY[0x1EEE34890](v2, v3);
}

uint64_t sub_1E656E630()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E656E55C(v0 + 16);
}

uint64_t sub_1E656E6C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E656E6E4, 0, 0);
}

uint64_t sub_1E656E6E4()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(MEMORY[0x1E69CAE00] + 4);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1E61A482C;
  v6 = v0[2];

  return MEMORY[0x1EEE34898](v6, v2, v3);
}

uint64_t sub_1E656E7A0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E656E6C4(a1, v1 + 16);
}

uint64_t sub_1E656E838(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E656E858, 0, 0);
}

uint64_t sub_1E656E858()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v1[9]);
  if (sub_1E65DDF78())
  {
    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = sub_1E65E38E8();
    sub_1E656F180(&qword_1ED074300, MEMORY[0x1E69CADC8]);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E69CADC0], v6);
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1E656E9BC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E656E838(a1, v1 + 16);
}

uint64_t sub_1E656EA54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E656EAE4;

  return sub_1E656D01C();
}

uint64_t sub_1E656EAE4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1E656EBF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E621FCB8;

  return sub_1E656EA54();
}

uint64_t sub_1E656EC88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60ABB70;

  return sub_1E656D820();
}

uint64_t sub_1E656ED18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FE99E8;

  return sub_1E656EC88();
}

uint64_t sub_1E656EDAC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E656EDCC, 0, 0);
}

uint64_t sub_1E656EDCC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  swift_getObjectType();
  sub_1E65E38F8();
  sub_1E656F180(&qword_1EE2D5C38, MEMORY[0x1E69CADE0]);
  sub_1E65DDE28();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E656EECC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E656EDAC(a1, v1 + 16);
}

uint64_t sub_1E656EF68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFA78C;

  return sub_1E656DEAC();
}

uint64_t sub_1E656EFF8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFA78C;

  return sub_1E656EF68();
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1E656F0C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E656F108(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E656F180(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E656F1C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B290, &qword_1E660B9C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 AccountService.init(fetchCurrentAccount:fetchPrimaryAccount:fetchMatchingAccount:fetchUserContact:fetchUserFirstName:makeSubscriptionManagementViewController:makeAccountChangedStream:requireAccount:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __n128 a12, uint64_t a13, uint64_t a14)
{
  result = a12;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 120) = a14;
  return result;
}

uint64_t AccountService.fetchCurrentAccount.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AccountService.fetchPrimaryAccount.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AccountService.fetchMatchingAccount.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t AccountService.fetchUserContact.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t AccountService.fetchUserFirstName.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t AccountService.makeSubscriptionManagementViewController.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t AccountService.makeAccountChangedStream.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t AccountService.requireAccount.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

void static AccountService.simulator()(void *a1@<X8>)
{
  *a1 = &unk_1E660BDB0;
  a1[1] = 0;
  a1[2] = &unk_1E660BDB8;
  a1[3] = 0;
  a1[4] = &unk_1E660BDC0;
  a1[5] = 0;
  a1[6] = &unk_1E660BDC8;
  a1[7] = 0;
  a1[8] = &unk_1E660BDD0;
  a1[9] = 0;
  a1[10] = &unk_1E660BDD8;
  a1[11] = 0;
  a1[12] = &unk_1E660BDE0;
  a1[13] = 0;
  a1[14] = &unk_1E660BDE8;
  a1[15] = 0;
}

uint64_t sub_1E656F4B8()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E6959A28]) init];
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E656F548()
{
  v1 = sub_1E65E38E8();
  sub_1E647871C();
  swift_allocError();
  (*(*(v1 - 8) + 104))(v2, *MEMORY[0x1E69CADC0], v1);
  swift_willThrow();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E656F648()
{
  sub_1E65E6058();
  *(v0 + 16) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E656F6DC, v2, v1);
}

uint64_t sub_1E656F6DC()
{
  v1 = *(v0 + 16);

  v2 = [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t PrivacyPreferenceService.queryNoticePrivacyPreference.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PrivacyPreferenceService.updateNoticePrivacyPreference.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PrivacyPreferenceService.queryOptInPrivacyPreference.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t PrivacyPreferenceService.updateOptInPrivacyPreference.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t PrivacyPreferenceService.queryPersonalizationPrivacyPreference.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t PrivacyPreferenceService.updatePersonalizationPrivacyPreference.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t PrivacyPreferenceService.makePersonalizationPrivacyPreferenceUpdatedStream.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t sub_1E656F8AC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B450, &unk_1E660BFC0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E656F978, v1, 0);
}

uint64_t sub_1E656F978()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[20];
  __swift_project_boxed_opaque_existential_1(v2 + 16, v2[19]);
  sub_1E65DD628();

  return MEMORY[0x1EEE6DFA0](sub_1E656FA0C, 0, 0);
}

uint64_t sub_1E656FA0C()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessPrivacyPreferenceService/LivePrivacyPreferenceService.swift";
  *(v2 + 24) = 66;
  *(v2 + 32) = 2;
  *(v2 + 40) = 22;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = sub_1E65D9BA8();
  *v4 = v0;
  v4[1] = sub_1E656FB24;
  v6 = v0[2];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6572AD8, v2, v5);
}

uint64_t sub_1E656FB24()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *v1;
  v4[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E65231C0, 0, 0);
  }

  else
  {
    (*(v4[5] + 8))(v4[6], v4[4]);

    v5 = v4[1];

    return v5();
  }
}

uint64_t sub_1E656FCA8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E656FD74, v1, 0);
}

uint64_t sub_1E656FD74()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v2[20];
  __swift_project_boxed_opaque_existential_1(v2 + 16, v2[19]);
  sub_1E65DD648();

  return MEMORY[0x1EEE6DFA0](sub_1E656FE10, 0, 0);
}

uint64_t sub_1E656FE10()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessPrivacyPreferenceService/LivePrivacyPreferenceService.swift";
  *(v2 + 24) = 66;
  *(v2 + 32) = 2;
  *(v2 + 40) = 26;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1E656FF20;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6572B1C, v2, v5);
}

uint64_t sub_1E656FF20()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v5 = sub_1E65231C0;
    v6 = 0;
  }

  else
  {
    v7 = v2[3];
    (*(v2[5] + 8))(v2[6], v2[4]);
    v5 = sub_1E6572B18;
    v6 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1E6570078(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B438, &qword_1E660BFA8);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6570144, v1, 0);
}

uint64_t sub_1E6570144()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[20];
  __swift_project_boxed_opaque_existential_1(v2 + 16, v2[19]);
  sub_1E65DD608();

  return MEMORY[0x1EEE6DFA0](sub_1E65701D8, 0, 0);
}

uint64_t sub_1E65701D8()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessPrivacyPreferenceService/LivePrivacyPreferenceService.swift";
  *(v2 + 24) = 66;
  *(v2 + 32) = 2;
  *(v2 + 40) = 30;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = sub_1E65D9998();
  *v4 = v0;
  v4[1] = sub_1E6549180;
  v6 = v0[2];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6572A00, v2, v5);
}

uint64_t sub_1E65702F0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65703BC, v1, 0);
}

uint64_t sub_1E65703BC()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v2[20];
  __swift_project_boxed_opaque_existential_1(v2 + 16, v2[19]);
  sub_1E65DD638();

  return MEMORY[0x1EEE6DFA0](sub_1E6570458, 0, 0);
}

uint64_t sub_1E6570458()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessPrivacyPreferenceService/LivePrivacyPreferenceService.swift";
  *(v2 + 24) = 66;
  *(v2 + 32) = 2;
  *(v2 + 40) = 34;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1E654D1D0;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6572B1C, v2, v5);
}

uint64_t sub_1E6570568(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B420, &qword_1E660BF90);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6570634, v1, 0);
}

uint64_t sub_1E6570634()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = v2[20];
  __swift_project_boxed_opaque_existential_1(v2 + 16, v2[19]);
  sub_1E65DD658();

  return MEMORY[0x1EEE6DFA0](sub_1E65706C8, 0, 0);
}

uint64_t sub_1E65706C8()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessPrivacyPreferenceService/LivePrivacyPreferenceService.swift";
  *(v2 + 24) = 66;
  *(v2 + 32) = 2;
  *(v2 + 40) = 38;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = sub_1E65DA988();
  *v4 = v0;
  v4[1] = sub_1E656FB24;
  v6 = v0[2];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65729A8, v2, v5);
}

uint64_t sub_1E65707E0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65708AC, v1, 0);
}

uint64_t sub_1E65708AC()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v2[20];
  __swift_project_boxed_opaque_existential_1(v2 + 16, v2[19]);
  sub_1E65DD668();

  return MEMORY[0x1EEE6DFA0](sub_1E6570948, 0, 0);
}

uint64_t sub_1E6570948()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessPrivacyPreferenceService/LivePrivacyPreferenceService.swift";
  *(v2 + 24) = 66;
  *(v2 + 32) = 2;
  *(v2 + 40) = 42;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1E656FF20;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E657177C, v2, v5);
}

uint64_t sub_1E6570A58(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6570A78, 0, 0);
}

uint64_t sub_1E6570A78()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_1E65DE2A8();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1E6570ADC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E656F8AC(a1);
}

uint64_t sub_1E6570B78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6570ADC(a1);
}

uint64_t sub_1E6570C14(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E656FCA8(a1);
}

uint64_t sub_1E6570CAC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6570C14(a1);
}

uint64_t sub_1E6570D44(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6570078(a1);
}

uint64_t sub_1E6570DE0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6570D44(a1);
}

uint64_t sub_1E6570E7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E65702F0(a1);
}

uint64_t sub_1E6570F14(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E6570E7C(a1);
}

uint64_t sub_1E6570FAC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E6570568(a1);
}

uint64_t sub_1E6571048(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E6570FAC(a1);
}

uint64_t sub_1E65710E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E65707E0(a1);
}

uint64_t sub_1E657117C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E65710E4(a1);
}

uint64_t sub_1E6571214(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6571230, a2, 0);
}

uint64_t sub_1E6571230()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  swift_getObjectType();
  sub_1E65DE2B8();
  sub_1E65DA988();
  sub_1E65DDE28();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6571304(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6571214(a1, v1);
}

uint64_t sub_1E65713A0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B9B0, &unk_1E660DD20);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B450, &unk_1E660BFC0);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E6572AF0;
  *(v35 + 24) = v33;

  v34(sub_1E6557D70, v35);
}

uint64_t sub_1E6571794(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B440, &qword_1E660BFB0);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B438, &qword_1E660BFA8);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E6572A18;
  *(v35 + 24) = v33;

  v34(sub_1E6557D50, v35);
}

uint64_t sub_1E6571B70(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B428, &qword_1E660BF98);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1E65E3B68();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v41 = sub_1E65E6338();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v39 = a4;
    v23 = sub_1E5DFD4B0(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_1E5DE9000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v30, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B420, &qword_1E660BF90);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65729D8;
  *(v35 + 24) = v33;

  v34(sub_1E6557D70, v35);
}

uint64_t sub_1E6571F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_1E65D9BA8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B9C0, &qword_1E660BFD0);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v17 = (&v37 - v16);
  v18 = sub_1E65E3B68();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v22 = sub_1E65E3B48();
  v23 = sub_1E65E6338();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_1E65E68B8();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_1E5DFD4B0(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_1E5DE9000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x1E694F1C0](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_1E5DFD1CC(a1, v17, &unk_1ED07B9C0, &qword_1E660BFD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B9B0, &unk_1E660DD20);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B9B0, &unk_1E660DD20);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E65722C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_1E65D9998();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B448, &qword_1E660BFB8);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v17 = (&v37 - v16);
  v18 = sub_1E65E3B68();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v22 = sub_1E65E3B48();
  v23 = sub_1E65E6338();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_1E65E68B8();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_1E5DFD4B0(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_1E5DE9000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x1E694F1C0](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_1E5DFD1CC(a1, v17, &qword_1ED07B448, &qword_1E660BFB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B440, &qword_1E660BFB0);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B440, &qword_1E660BFB0);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E6572634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_1E65DA988();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B430, &qword_1E660BFA0);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v17 = (&v37 - v16);
  v18 = sub_1E65E3B68();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v22 = sub_1E65E3B48();
  v23 = sub_1E65E6338();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v14;
    v25 = v24;
    v26 = swift_slowAlloc();
    v40 = a7;
    v38 = v26;
    v48 = v26;
    *v25 = 134218498;
    *(v25 + 4) = a2;
    *(v25 + 12) = 2080;
    v27 = sub_1E65E68B8();
    v29 = v17;
    v30 = a1;
    v31 = v11;
    v32 = v10;
    v33 = sub_1E5DFD4B0(v27, v28, &v48);

    *(v25 + 14) = v33;
    v10 = v32;
    v11 = v31;
    a1 = v30;
    v17 = v29;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v44;
    _os_log_impl(&dword_1E5DE9000, v22, v23, "Finished P->A conversion: %ld:%s:%lu", v25, 0x20u);
    v34 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E694F1C0](v34, -1, -1);
    v35 = v25;
    v14 = v39;
    MEMORY[0x1E694F1C0](v35, -1, -1);
  }

  (*(v45 + 8))(v21, v46);
  sub_1E5DFD1CC(a1, v17, &qword_1ED07B430, &qword_1E660BFA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B428, &qword_1E660BF98);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B428, &qword_1E660BF98);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E6572A40(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *(v4 + 40);
  v12 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(a1, v7, v8, v9, v11, v10, v12);
}

uint64_t sub_1E6572B20()
{
  v1 = OBJC_IVAR____TtC31FitnessPrivacyPreferenceService33SimulatorPrivacyPreferenceService_noticePrivacyPreference;
  v2 = sub_1E65D9BA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC31FitnessPrivacyPreferenceService33SimulatorPrivacyPreferenceService_optInPrivacyPreference;
  v4 = sub_1E65D9998();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC31FitnessPrivacyPreferenceService33SimulatorPrivacyPreferenceService_personalizationPrivacyPreference;
  v6 = sub_1E65DA988();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t static PrivacyPreferenceService.simulator()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for SimulatorPrivacyPreferenceService();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1E65D9B88();
  sub_1E65D9B68();
  sub_1E65D9988();
  sub_1E65D9968();
  sub_1E65DA978();
  sub_1E65DA958();
  *a1 = &unk_1E660BFE8;
  a1[1] = v5;
  a1[2] = &unk_1E660BFF8;
  a1[3] = v5;
  a1[4] = &unk_1E660C008;
  a1[5] = v5;
  a1[6] = &unk_1E660C018;
  a1[7] = v5;
  a1[8] = &unk_1E660C028;
  a1[9] = v5;
  a1[10] = &unk_1E660C038;
  a1[11] = v5;
  a1[12] = &unk_1E660C048;
  a1[13] = v5;
  return swift_retain_n();
}

uint64_t type metadata accessor for SimulatorPrivacyPreferenceService()
{
  result = qword_1ED07B458;
  if (!qword_1ED07B458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E6572DB8(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6572DD4, a2, 0);
}

uint64_t sub_1E6572DD4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = OBJC_IVAR____TtC31FitnessPrivacyPreferenceService33SimulatorPrivacyPreferenceService_noticePrivacyPreference;
  swift_beginAccess();
  v4 = sub_1E65D9BA8();
  (*(*(v4 - 8) + 16))(v2, v1 + v3, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6572E94(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6572DB8(a1, v1);
}

uint64_t sub_1E6572F30(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6572F4C, a2, 0);
}

uint64_t sub_1E6572F4C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = OBJC_IVAR____TtC31FitnessPrivacyPreferenceService33SimulatorPrivacyPreferenceService_noticePrivacyPreference;
  swift_beginAccess();
  v4 = sub_1E65D9BA8();
  (*(*(v4 - 8) + 24))(v1 + v3, v2, v4);
  swift_endAccess();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6573014(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6572F30(a1, v1);
}

uint64_t sub_1E65730AC(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E65730C8, a2, 0);
}

uint64_t sub_1E65730C8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = OBJC_IVAR____TtC31FitnessPrivacyPreferenceService33SimulatorPrivacyPreferenceService_optInPrivacyPreference;
  swift_beginAccess();
  v4 = sub_1E65D9998();
  (*(*(v4 - 8) + 16))(v2, v1 + v3, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6573188(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E65730AC(a1, v1);
}

uint64_t sub_1E6573224(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6573240, a2, 0);
}

uint64_t sub_1E6573240()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = OBJC_IVAR____TtC31FitnessPrivacyPreferenceService33SimulatorPrivacyPreferenceService_optInPrivacyPreference;
  swift_beginAccess();
  v4 = sub_1E65D9998();
  (*(*(v4 - 8) + 24))(v1 + v3, v2, v4);
  swift_endAccess();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6573308(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6573224(a1, v1);
}

uint64_t sub_1E65733A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E65733BC, a2, 0);
}

uint64_t sub_1E65733BC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = OBJC_IVAR____TtC31FitnessPrivacyPreferenceService33SimulatorPrivacyPreferenceService_personalizationPrivacyPreference;
  swift_beginAccess();
  v4 = sub_1E65DA988();
  (*(*(v4 - 8) + 16))(v2, v1 + v3, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E657347C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E65733A0(a1, v1);
}

uint64_t sub_1E6573518(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6573534, a2, 0);
}

uint64_t sub_1E6573534()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = OBJC_IVAR____TtC31FitnessPrivacyPreferenceService33SimulatorPrivacyPreferenceService_personalizationPrivacyPreference;
  swift_beginAccess();
  v4 = sub_1E65DA988();
  (*(*(v4 - 8) + 24))(v1 + v3, v2, v4);
  swift_endAccess();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E65735FC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6573518(a1, v1);
}

uint64_t sub_1E6573694(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B468, &unk_1E660C0B8);
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6573764, a2, 0);
}

uint64_t sub_1E6573764()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E65DA988();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E657383C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6573694(a1, v1);
}

uint64_t sub_1E65738E0()
{
  result = sub_1E65D9BA8();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_1E65D9998();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_1E65DA988();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1E65739F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v19 - v12;
  v14 = sub_1E65E60A8();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_1E5DF650C(a5, v20);
  sub_1E65E6058();

  swift_unknownObjectRetain();
  v15 = sub_1E65E6048();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a3;
  v16[7] = a4;
  sub_1E5DF599C(v20, (v16 + 8));
  sub_1E64B80F8(0, 0, v13, &unk_1E660C1C0, v16);
}

uint64_t sub_1E6573B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a4;
  v8[11] = a8;
  sub_1E65E6058();
  v8[12] = sub_1E65E6048();
  v10 = sub_1E65E5FC8();
  v8[13] = v10;
  v8[14] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E6573C00, v10, v9);
}

uint64_t sub_1E6573C00()
{
  v1 = *(v0 + 80);
  sub_1E5DF650C(*(v0 + 88), v0 + 16);
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0x80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B478, &qword_1E660C0C8);
  sub_1E5FED46C(&unk_1ED07B530, &qword_1ED07B478, &qword_1E660C0C8);
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6573CDC, v3, v2);
}

uint64_t sub_1E6573CDC()
{
  v1 = v0[10];
  sub_1E65E1798();
  sub_1E6575B9C((v0 + 2));
  v2 = v0[13];
  v3 = v0[14];

  return MEMORY[0x1EEE6DFA0](sub_1E6573D4C, v2, v3);
}

uint64_t sub_1E6573D4C()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E6573DAC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v25 - v18;
  v20 = sub_1E65E60A8();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  sub_1E5DF650C(a6, v26);
  sub_1E65E6058();

  swift_unknownObjectRetain();
  v21 = sub_1E65E6048();
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E85E0];
  *(v22 + 16) = v21;
  *(v22 + 24) = v23;
  *(v22 + 32) = a2;
  *(v22 + 40) = a3;
  *(v22 + 48) = a4;
  *(v22 + 56) = a5;
  sub_1E5DF599C(v26, v22 + 64);
  *(v22 + 104) = a7;
  *(v22 + 112) = a8;
  *(v22 + 120) = a1;
  sub_1E64B80F8(0, 0, v19, &unk_1E660C1B0, v22);
}

uint64_t sub_1E6573F40(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 73) = v15;
  *(v10 + 96) = a1;
  *(v10 + 104) = a2;
  *(v10 + 80) = a6;
  *(v10 + 88) = a10;
  sub_1E65E6058();
  *(v10 + 112) = sub_1E65E6048();
  v12 = sub_1E65E5FC8();
  *(v10 + 120) = v12;
  *(v10 + 128) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1E6573FE8, v12, v11);
}

uint64_t sub_1E6573FE8()
{
  v1 = *(v0 + 73);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 80);
  sub_1E5DF650C(*(v0 + 88), v0 + 16);
  *(v0 + 56) = v3;
  *(v0 + 64) = v2;
  *(v0 + 72) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B478, &qword_1E660C0C8);
  sub_1E5FED46C(&unk_1ED07B530, &qword_1ED07B478, &qword_1E660C0C8);
  v6 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E65740D0, v6, v5);
}

uint64_t sub_1E65740D0()
{
  v1 = v0[10];
  sub_1E65E1798();
  sub_1E6575B9C((v0 + 2));
  v2 = v0[15];
  v3 = v0[16];

  return MEMORY[0x1EEE6DFA0](sub_1E6574140, v2, v3);
}

uint64_t sub_1E6574140()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E65741A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E65741C4, 0, 0);
}

uint64_t sub_1E65741C4()
{
  v1 = v0[4];
  v2 = v0[2];
  v2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B540, &qword_1E660C1C8);
  v2[4] = sub_1E5FED46C(&qword_1ED07B548, &qword_1ED07B540, &qword_1E660C1C8);
  v0[5] = __swift_allocate_boxed_opaque_existential_1(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B478, &qword_1E660C0C8);
  sub_1E5FED46C(&unk_1ED07B530, &qword_1ED07B478, &qword_1E660C0C8);
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E65742E8, v4, v3);
}

uint64_t sub_1E65742E8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_1E65E1788();
  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6574350(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E65741A0(a1, a2, v6);
}

uint64_t sub_1E6574418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E657443C, 0, 0);
}

uint64_t sub_1E657443C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  swift_getObjectType();
  sub_1E65E5648();
  sub_1E6575D2C();
  sub_1E65DDE38();
  v4 = v0[1];

  return v4();
}

uint64_t sub_1E65744EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFA78C;

  return sub_1E6574418(a1, v4, v5, v7, v6);
}

char *sub_1E65745AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v66 = a7;
  v67 = a8;
  v65 = a6;
  v55 = a5;
  v63 = a4;
  v62 = a3;
  v53[1] = a2;
  v57 = a15;
  v56 = a11;
  v64 = a9;
  v54 = a10;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077770, &unk_1E660C190);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v53 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = v53 - v22;
  v61 = v53 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076220, &unk_1E65FA4A0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = v53 - v26;
  v60 = v53 - v26;
  v58 = sub_1E65D74E8();
  v28 = *(v58 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v59 = v53 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))();
  sub_1E5DFD1CC(v55, v27, &qword_1ED076220, &unk_1E65FA4A0);
  sub_1E5DFD1CC(v54, v23, &unk_1ED07B500, &qword_1E65F0EE0);
  sub_1E5DFD1CC(v56, v19, &unk_1ED077770, &unk_1E660C190);
  sub_1E5DF650C(a1, v71);
  v31 = swift_allocObject();
  *(v31 + 2) = a12;
  *(v31 + 3) = a13;
  v32 = v57;
  *(v31 + 4) = a14;
  *(v31 + 5) = v32;
  sub_1E5DF599C(v71, v31 + 48);
  sub_1E5DF650C(a1, v70);
  v33 = swift_allocObject();
  *(v33 + 2) = a12;
  *(v33 + 3) = a13;
  *(v33 + 4) = a14;
  *(v33 + 5) = v32;
  sub_1E5DF599C(v70, v33 + 48);
  v34 = type metadata accessor for StandardPlayerPresenter();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  v37 = swift_allocObject();
  swift_retain_n();
  swift_retain_n();
  swift_unknownObjectRetain_n();
  swift_defaultActor_initialize();
  *(v37 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v37 + 128) = 0;
  *(v37 + 136) = 0;
  *(v37 + 144) = 0;
  *(v37 + 152) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B510, &qword_1E6609F00);
  sub_1E65D7F18();
  sub_1E5DF599C(v69, v37 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_artworkImageLoader);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE30, &qword_1E660C1A0);
  sub_1E65D7F18();
  sub_1E5DF599C(v69, v37 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_assetClient);
  sub_1E65DB608();
  sub_1E65D7F18();
  *(v37 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_audioSessionCoordinator) = *&v69[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  *(v37 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_eventHub) = v69[0];
  sub_1E65D7F18();
  *(v37 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_platform) = v69[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B520, &qword_1E660ABA8);
  sub_1E65D7F18();
  sub_1E5DF599C(v69, v37 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_sessionPreferenceClient);
  (*(v28 + 32))(v37 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_streamingURL, v59, v58);
  v38 = (v37 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_streamingTitle);
  v39 = v63;
  *v38 = v62;
  v38[1] = v39;
  sub_1E5FAB460(v60, v37 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_streamingImageDescriptor, &qword_1ED076220, &unk_1E65FA4A0);
  v40 = (v37 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_contentIdentifier);
  v41 = v66;
  *v40 = v65;
  v40[1] = v41;
  v42 = (v37 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_streamingProgramIdentifier);
  v43 = v64;
  *v42 = v67;
  v42[1] = v43;
  sub_1E5FAB460(v61, v37 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_metricPage, &unk_1ED07B500, &qword_1E65F0EE0);
  sub_1E5FAB460(v19, v37 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_qualityReportingEntity, &unk_1ED077770, &unk_1E660C190);
  v44 = (v37 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_onFinished);
  *v44 = sub_1E6575A2C;
  v44[1] = v31;
  v45 = (v37 + OBJC_IVAR____TtC20FitnessPlayerService23StandardPlayerPresenter_onDismissed);
  *v45 = sub_1E6575A8C;
  v45[1] = v33;
  v46 = type metadata accessor for StandardPlayerViewController();
  v47 = objc_allocWithZone(v46);
  *&v47[OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_presenter] = v37;
  v48 = objc_allocWithZone(MEMORY[0x1E6958608]);

  v49 = [v48 init];
  v50 = OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_playerViewController;
  *&v47[OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_playerViewController] = v49;
  [v49 setAllowsPictureInPicturePlayback_];
  [*&v47[v50] setRequiresLinearPlayback_];
  [*&v47[v50] setVideoGravity_];
  v68.receiver = v47;
  v68.super_class = v46;
  v51 = objc_msgSendSuper2(&v68, sel_initWithNibName_bundle_, 0, 0);

  *(*&v51[OBJC_IVAR____TtC20FitnessPlayerService28StandardPlayerViewController_presenter] + 120) = &off_1F5FCB4B0;
  swift_unknownObjectWeakAssign();
  return v51;
}