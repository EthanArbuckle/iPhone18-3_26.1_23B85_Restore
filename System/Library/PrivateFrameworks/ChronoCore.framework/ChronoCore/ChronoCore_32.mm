uint64_t sub_224D4134C(void *a1)
{
  v1 = *(*a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84FA0];
  }

  v3 = *a1 + 32;
  v4 = MEMORY[0x277D84FA0];
  do
  {
    sub_224A3317C(v3, v7);
    v5 = sub_224D413EC(v7, a1 + 1);
    __swift_destroy_boxed_opaque_existential_1(v7);
    v4 = sub_224AD6960(v5, v4);
    v3 += 40;
    --v1;
  }

  while (v1);
  return v4;
}

uint64_t sub_224D413EC(void *a1, void *a2)
{
  v3 = v2;
  v37 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v36 - v7;
  v9 = sub_224DA9688();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v36[3] = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v38 = v36 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = v36 - v16;
  v18 = v3[3];
  v19 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v18);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = sub_224DAE338();
  v22 = v18;
  v23 = v9;
  v24 = v10;
  (*(v19 + 8))(v21, v22, v19);

  if ((*(v10 + 48))(v8, 1, v23) == 1)
  {
    sub_224A3311C(v8, &unk_27D6F4680, &unk_224DB4610);
    return MEMORY[0x277D84FA0];
  }

  else
  {
    (*(v10 + 32))(v17, v8, v23);
    v25 = v38;
    sub_224DA9548();
    v26 = v37[4];
    __swift_project_boxed_opaque_existential_1(v37, v37[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48B0, &qword_224DB8210);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_224DB3100;
    v28 = *MEMORY[0x277CBE7B0];
    *(v27 + 32) = *MEMORY[0x277CBE7B0];
    v29 = v28;
    v30 = sub_224DAA3F8();

    MEMORY[0x28223BE20](v31);
    v36[-2] = v25;
    v32 = sub_224D40F88(sub_224D41AD8, &v36[-4], v30);

    v33 = sub_224AE9040(v32);

    v34 = *(v24 + 8);
    v34(v17, v23);
    v34(v25, v23);
    return v33;
  }
}

uint64_t sub_224D41994()
{
  v0 = sub_224DA9598();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[0] = sub_224DA9588();
  v7[1] = v5;
  (*(v1 + 104))(v4, *MEMORY[0x277CC91D8], v0);
  sub_224AFC154();
  sub_224DA9678();
  (*(v1 + 8))(v4, v0);
}

uint64_t sub_224D41B60(uint64_t a1)
{
  sub_224BDD38C();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    v14 = *(v2 - 8) + 64;
    v5 = sub_224DA9878();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      v15 = *(v5 - 8) + 64;
      v7 = *(a1 + 80);
      v8 = swift_checkMetadataState();
      v3 = v8;
      if (v9 <= 0x3F)
      {
        v16 = *(v8 - 8) + 64;
        v10 = *(a1 + 88);
        swift_getAssociatedTypeWitness();
        v11 = sub_224DAF728();
        v3 = v11;
        if (v12 <= 0x3F)
        {
          v17 = *(v11 - 8) + 64;
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return v3;
}

uint64_t sub_224D41D20(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v3 = sub_224DAE8B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F63B0, &qword_224DBFEA8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - v9;
  v11 = type metadata accessor for ExtensionTask.SchedulingOption(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  v18 = *(a2 + 16);
  if (!v18)
  {
    return 0;
  }

  v19 = a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v20 = (v4 + 48);
  v21 = *(v14 + 72);
  v36 = (v4 + 8);
  v31 = (v4 + 32);
  v32 = v7;
  v37 = v21;
  v38 = v15;
  while (1)
  {
    sub_224D42D6C(v19, v17, type metadata accessor for ExtensionTask.SchedulingOption);
    v22 = *(v7 + 48);
    sub_224D42D6C(v17, v10, type metadata accessor for ExtensionTask.SchedulingOption);
    sub_224D42D6C(v39, &v10[v22], type metadata accessor for ExtensionTask.SchedulingOption);
    v23 = *v20;
    v24 = (*v20)(v10, 5, v3);
    if (v24 > 2)
    {
      break;
    }

    if (v24)
    {
      if (v24 == 1)
      {
        if (v23(&v10[v22], 5, v3) == 1)
        {
          goto LABEL_25;
        }
      }

      else if (v23(&v10[v22], 5, v3) == 2)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    v25 = v38;
    sub_224D42D6C(v10, v38, type metadata accessor for ExtensionTask.SchedulingOption);
    if (v23(&v10[v22], 5, v3))
    {
      (*v36)(v25, v3);
      v21 = v37;
      goto LABEL_19;
    }

    v26 = v35;
    (*v31)(v35, &v10[v22], v3);
    sub_224D42EB0(&qword_281350C38, MEMORY[0x277CE3D38]);
    sub_224DAEFA8();
    sub_224DAEFA8();
    v27 = *v36;
    v28 = v26;
    v7 = v32;
    (*v36)(v28, v3);
    v33 = v40;
    v34 = v41;
    v27(v25, v3);
    sub_224A3D3B8(v10, type metadata accessor for ExtensionTask.SchedulingOption);
    v21 = v37;
    if (v34 == v33)
    {
      goto LABEL_26;
    }

LABEL_20:
    sub_224A3D3B8(v17, type metadata accessor for ExtensionTask.SchedulingOption);
    v19 += v21;
    if (!--v18)
    {
      return 0;
    }
  }

  if (v24 == 3)
  {
    if (v23(&v10[v22], 5, v3) == 3)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  if (v24 == 4)
  {
    if (v23(&v10[v22], 5, v3) == 4)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  if (v23(&v10[v22], 5, v3) != 5)
  {
LABEL_19:
    sub_224A3311C(v10, &qword_27D6F63B0, &qword_224DBFEA8);
    goto LABEL_20;
  }

LABEL_25:
  sub_224A3D3B8(v10, type metadata accessor for ExtensionTask.SchedulingOption);
LABEL_26:
  sub_224A3D3B8(v17, type metadata accessor for ExtensionTask.SchedulingOption);
  return 1;
}

BOOL sub_224D42214(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_224D42244(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v2;
LABEL_10:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    if (*(*(a2 + 56) + ((v7 << 9) | (8 * v8))) == result)
    {
      return 1;
    }
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {
      return 0;
    }

    v5 = *(a2 + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224D423B8()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_2813516A0);
  __swift_project_value_buffer(v0, qword_2813516A0);
  return sub_224DAB238();
}

uint64_t sub_224D42438()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_224DAF728();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v30 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v30 - v14;
  v16 = *(v2 + 184);
  swift_beginAccess();
  (*(v7 + 16))(v11, v1 + v16, v6);
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v7 + 8))(v11, v6);
  }

  (*(v12 + 32))(v15, v11, AssociatedTypeWitness);
  if (qword_281351698 != -1)
  {
    swift_once();
  }

  v18 = sub_224DAB258();
  __swift_project_value_buffer(v18, qword_2813516A0);
  swift_retain_n();
  v19 = sub_224DAB228();
  v20 = sub_224DAF2A8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v22;
    *v21 = 138543618;
    v23 = v1[3];
    *(v21 + 4) = v23;
    *v22 = v23;
    *(v21 + 12) = 1026;
    v24 = v3;
    v25 = v4;
    v26 = *(v1 + 16);
    v27 = v23;

    *(v21 + 14) = v26;
    v4 = v25;
    v3 = v24;

    _os_log_impl(&dword_224A2F000, v19, v20, "Session priority boosting for task %{public}@: %{BOOL,public}d", v21, 0x12u);
    v28 = v30;
    sub_224A3311C(v30, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v28, -1, -1);
    MEMORY[0x22AA5EED0](v21, -1, -1);
  }

  else
  {
  }

  v29 = *(*v1 + 152);
  (*(v3 + 48))(v15, *(v1 + 16), v4, v3);
  return (*(v12 + 8))(v15, AssociatedTypeWitness);
}

uint64_t sub_224D42818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  v9 = *(*a6 + 88);
  v10 = *(*a6 + 80);
  v8[14] = swift_getAssociatedTypeWitness();
  v11 = sub_224DAF728();
  v8[15] = v11;
  v12 = *(v11 - 8);
  v8[16] = v12;
  v13 = *(v12 + 64) + 15;
  v8[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224D4292C, 0, 0);
}

uint64_t sub_224D4292C()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 88);
  v6 = *(*v5 + 184);
  swift_beginAccess();
  (*(v2 + 16))(v1, v5 + v6, v3);
  v7 = *(v4 - 8);
  v8 = (*(v7 + 48))(v1, 1, v4);
  v9 = *(v0 + 136);
  if (v8 == 1)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
  }

  else
  {
    v10 = *(v0 + 112);
    *(v0 + 40) = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    (*(v7 + 32))(boxed_opaque_existential_1, v9, v10);
  }

  v16 = (*(v0 + 72) + **(v0 + 72));
  v12 = *(*(v0 + 72) + 4);
  v13 = swift_task_alloc();
  *(v0 + 144) = v13;
  *v13 = v0;
  v13[1] = sub_224D42B24;
  v14 = *(v0 + 80);

  return v16(v0 + 16);
}

uint64_t sub_224D42B24()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v6 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_224D42CC0;
  }

  else
  {
    sub_224A3311C(v2 + 16, &qword_27D6F4760, &unk_224DB3680);
    v4 = sub_224D42C50;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_224D42C50()
{
  v1 = *(v0 + 104);
  (*(v0 + 96))(0);
  v2 = *(v0 + 136);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_224D42CC0()
{
  v1 = v0[19];
  v3 = v0[12];
  v2 = v0[13];
  sub_224A3311C((v0 + 2), &qword_27D6F4760, &unk_224DB3680);
  v4 = v1;
  v3(v1);

  v5 = v0[17];

  v6 = v0[1];

  return v6();
}

uint64_t sub_224D42D6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_224D42DD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_224ACED1C;

  return sub_224D42818(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_224D42EB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224D42F10()
{
  v1 = *v0;
  v26 = sub_224DAA428();
  v2 = *(v26 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v26);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v4);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v17 = *(v1 + 88);
  OnlyHost = type metadata accessor for ReadOnlyHost();
  (*(v13 + 16))(v16, v0 + qword_281365430, v12);
  v19 = *(*v0 + 104);
  swift_beginAccess();
  (*(v8 + 16))(v11, v0 + v19, v7);
  v20 = *(*v0 + 112);
  swift_beginAccess();
  (*(v2 + 16))(v6, v0 + v20, v26);
  v21 = *(OnlyHost + 48);
  v22 = *(OnlyHost + 52);
  v23 = swift_allocObject();
  sub_224D43364(v16, v11, v6, &qword_281365418);
  return v23;
}

uint64_t sub_224D431CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  sub_224D43364(a1, a2, a3, &qword_281365418);
  return v9;
}

void sub_224D43250(uint64_t a1)
{
  sub_224AFCD10();
  if (v3 <= 0x3F)
  {
    v9 = *(v2 - 8) + 64;
    v4 = *(a1 + 80);
    v5 = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v10 = *(v5 - 8) + 64;
      v7 = sub_224DAA428();
      if (v8 <= 0x3F)
      {
        v11 = *(v7 - 8) + 64;
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t *sub_224D43364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *v4;
  v9 = *a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  (*(*(v10 - 8) + 32))(v4 + v9, a1, v10);
  (*(*(*(v8 + 80) - 8) + 32))(v4 + *(*v4 + 104), a2);
  v11 = *(*v4 + 112);
  v12 = sub_224DAA428();
  (*(*(v12 - 8) + 32))(v4 + v11, a3, v12);
  return v4;
}

uint64_t sub_224D434D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_224D43504(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DA9908();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  v22 = a2;

  MEMORY[0x22AA5D210](45, 0xE100000000000000);
  sub_224DA98F8();
  v20[1] = sub_224DA98E8();
  sub_224A3F6A4();
  sub_224DAEF18();
  v9 = sub_224A3D19C(8);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = MEMORY[0x22AA5D1C0](v9, v11, v13, v15);
  v18 = v17;

  (*(v5 + 8))(v8, v4);
  MEMORY[0x22AA5D210](v16, v18);

  return v21;
}

uint64_t sub_224D4369C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    v4 = (a1 + 32);
    do
    {
      v5 = v4[4];
      __swift_project_boxed_opaque_existential_1(v4, v4[3]);
      sub_224DAE338();
      sub_224DAF9B8();
      v6 = *(v7 + 16);
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
      v4 += 5;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_224D43768(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v33 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v39 = v8;
  v41 = v6;
  v33 = v1;
  v44 = MEMORY[0x277D84F90];
  sub_224ADA64C(0, v9, 0);
  v10 = v44;
  v11 = a1 + 64;
  v12 = -1 << *(a1 + 32);
  result = sub_224DAF798();
  v14 = result;
  v15 = 0;
  v40 = v4;
  v37 = v4 + 32;
  v38 = (v4 + 16);
  v34 = a1 + 72;
  v35 = v9;
  v36 = a1 + 64;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    v17 = v14 >> 6;
    if ((*(v11 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_21;
    }

    v18 = *(a1 + 36);
    v42 = v15;
    v43 = v18;
    v19 = *(*(a1 + 48) + 8 * v14);
    v20 = *MEMORY[0x277CFA138];
    swift_beginAccess();
    v21 = a1;
    v22 = v39;
    v23 = v41;
    (*v38)(v39, v19 + v20, v41);
    v44 = v10;
    v25 = *(v10 + 16);
    v24 = *(v10 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_224ADA64C(v24 > 1, v25 + 1, 1);
      v10 = v44;
    }

    *(v10 + 16) = v25 + 1;
    result = (*(v40 + 32))(v10 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v25, v22, v23);
    v16 = 1 << *(v21 + 32);
    if (v14 >= v16)
    {
      goto LABEL_22;
    }

    v11 = v36;
    v26 = *(v36 + 8 * v17);
    if ((v26 & (1 << v14)) == 0)
    {
      goto LABEL_23;
    }

    a1 = v21;
    if (v43 != *(v21 + 36))
    {
      goto LABEL_24;
    }

    v27 = v26 & (-2 << (v14 & 0x3F));
    if (v27)
    {
      v16 = __clz(__rbit64(v27)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = v17 << 6;
      v29 = v17 + 1;
      v30 = (v34 + 8 * v17);
      while (v29 < (v16 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_224A3E204(v14, v43, 0);
          v16 = __clz(__rbit64(v31)) + v28;
          goto LABEL_4;
        }
      }

      result = sub_224A3E204(v14, v43, 0);
    }

LABEL_4:
    v15 = v42 + 1;
    v14 = v16;
    if (v42 + 1 == v35)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_224D43A9C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v35 = MEMORY[0x277D84F90];
    sub_224A3DFD8(0, v2, 0);
    v34 = v35;
    v3 = v1 + 64;
    v4 = -1 << *(v1 + 32);
    v5 = sub_224DAF798();
    v6 = 0;
    v7 = *(v1 + 36);
    v29 = v1 + 72;
    v30 = v2;
    v31 = v7;
    v32 = v1 + 64;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_23;
      }

      v33 = v6;
      v10 = *(*(v1 + 56) + 8 * v5);
      v11 = *(*(v1 + 48) + 8 * v5);
      v12 = v10;
      v13 = [v11 description];
      v14 = sub_224DAEE18();
      v15 = v1;
      v17 = v16;

      MEMORY[0x22AA5D210](v14, v17);

      MEMORY[0x22AA5D210](58, 0xE100000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
      sub_224DAFA48();

      v18 = v34;
      v20 = *(v34 + 16);
      v19 = *(v34 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_224A3DFD8((v19 > 1), v20 + 1, 1);
        v18 = v34;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = 0;
      *(v21 + 40) = 0xE000000000000000;
      v8 = 1 << *(v15 + 32);
      if (v5 >= v8)
      {
        goto LABEL_24;
      }

      v1 = v15;
      v3 = v32;
      v22 = *(v32 + 8 * v9);
      if ((v22 & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      v34 = v18;
      v7 = v31;
      if (v31 != *(v1 + 36))
      {
        goto LABEL_26;
      }

      v23 = v22 & (-2 << (v5 & 0x3F));
      if (v23)
      {
        v8 = __clz(__rbit64(v23)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v9 << 6;
        v25 = v9 + 1;
        v26 = (v29 + 8 * v9);
        while (v25 < (v8 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            sub_224A3E204(v5, v31, 0);
            v8 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        sub_224A3E204(v5, v31, 0);
      }

LABEL_4:
      v6 = v33 + 1;
      v5 = v8;
      if (v33 + 1 == v30)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_224D43D90(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v37 = MEMORY[0x277D84F90];
    sub_224A3DFD8(0, v2, 0);
    v35 = v37;
    v3 = v1 + 64;
    v4 = -1 << *(v1 + 32);
    v5 = sub_224DAF798();
    v6 = 0;
    v7 = *(v1 + 36);
    v30 = v1 + 72;
    v31 = v2;
    v32 = v7;
    v33 = v1 + 64;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_23;
      }

      v34 = v6;
      v10 = *(*(v1 + 56) + 8 * v5);
      v11 = *(*(v1 + 48) + 8 * v5);
      v12 = v10;
      v13 = [v11 description];
      v14 = sub_224DAEE18();
      v15 = v1;
      v17 = v16;

      MEMORY[0x22AA5D210](58, 0xE100000000000000);
      swift_getErrorValue();
      v18 = sub_224D1680C(v36);
      MEMORY[0x22AA5D210](v18);

      v19 = v35;
      v21 = *(v35 + 16);
      v20 = *(v35 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_224A3DFD8((v20 > 1), v21 + 1, 1);
        v19 = v35;
      }

      *(v19 + 16) = v21 + 1;
      v22 = v19 + 16 * v21;
      *(v22 + 32) = v14;
      *(v22 + 40) = v17;
      v8 = 1 << *(v15 + 32);
      if (v5 >= v8)
      {
        goto LABEL_24;
      }

      v1 = v15;
      v3 = v33;
      v23 = *(v33 + 8 * v9);
      if ((v23 & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      v35 = v19;
      v7 = v32;
      if (v32 != *(v1 + 36))
      {
        goto LABEL_26;
      }

      v24 = v23 & (-2 << (v5 & 0x3F));
      if (v24)
      {
        v8 = __clz(__rbit64(v24)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v9 << 6;
        v26 = v9 + 1;
        v27 = (v30 + 8 * v9);
        while (v26 < (v8 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            sub_224A3E204(v5, v32, 0);
            v8 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        sub_224A3E204(v5, v32, 0);
      }

LABEL_4:
      v6 = v34 + 1;
      v5 = v8;
      if (v34 + 1 == v31)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t sub_224D44060(uint64_t a1, uint64_t *a2)
{
  v3 = a1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v44 = v8;
  v45 = v4;
  v41 = a2;
  v42 = result;
  while (1)
  {
    if (!v7)
    {
      while (1)
      {
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v12 >= v8)
        {
        }

        v7 = *(v4 + 8 * v12);
        ++v10;
        if (v7)
        {
          v10 = v12;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      return result;
    }

LABEL_11:
    v13 = *(*(v3 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v7)))));
    v14 = v13 >> 62;
    v15 = v13 >> 62 ? sub_224DAF838() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = *a2;
    if (*a2 >> 62)
    {
      break;
    }

    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = v17 + v15;
    if (__OFADD__(v17, v15))
    {
      goto LABEL_45;
    }

LABEL_15:
    v19 = *a2;

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v20 = v19;
    *a2 = v19;
    v49 = v7;
    v47 = v15;
    if (result)
    {
      if (v19 < 0 || (v19 & 0x4000000000000000) != 0)
      {
        goto LABEL_24;
      }

      v21 = v19 & 0xFFFFFFFFFFFFFF8;
      if (v18 <= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v22 = v13;
        goto LABEL_26;
      }
    }

    else
    {
      if (v19 < 0 || (v19 & 0x4000000000000000) != 0)
      {
LABEL_24:
        sub_224DAF838();
        goto LABEL_25;
      }

      v21 = v19 & 0xFFFFFFFFFFFFFF8;
    }

    v23 = *(v21 + 16);
LABEL_25:
    v22 = v13;
    result = sub_224DAF968();
    v20 = result;
    *a2 = result;
    v21 = result & 0xFFFFFFFFFFFFFF8;
LABEL_26:
    v24 = *(v21 + 16);
    v25 = (*(v21 + 24) >> 1) - v24;
    v46 = v20;
    if (v14)
    {
      v29 = sub_224DAF838();
      if (!v29)
      {
LABEL_4:

        v8 = v44;
        v4 = v45;
        v11 = v49;
        if (v47 > 0)
        {
          goto LABEL_48;
        }

        goto LABEL_5;
      }

      v30 = v29;
      result = sub_224DAF838();
      if (v25 < result)
      {
        goto LABEL_51;
      }

      if (v30 < 1)
      {
        goto LABEL_52;
      }

      v43 = result;
      v31 = v21 + 8 * v24 + 32;
      sub_224A33088(&qword_27D6F4090, &qword_27D6F4088, &unk_224DC1A90);
      for (i = 0; i != v30; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4088, &unk_224DC1A90);
        v33 = sub_224A6996C(v48, i, v22);
        v35 = *v34;
        (v33)(v48, 0);
        *(v31 + 8 * i) = v35;
      }

      a2 = v41;
      v3 = v42;
      v28 = v43;
    }

    else
    {
      v26 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v26)
      {
        goto LABEL_4;
      }

      if (v25 < v26)
      {
        goto LABEL_50;
      }

      v27 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_224A3B79C(0, &unk_27D6F46E0, 0x277CFA1D0);
      v28 = v27;
      swift_arrayInitWithCopy();
    }

    v8 = v44;
    v4 = v45;
    v11 = v49;
    if (v28 < v47)
    {
      goto LABEL_48;
    }

    if (v28 > 0)
    {
      v36 = *(v21 + 16);
      v37 = __OFADD__(v36, v28);
      v38 = v36 + v28;
      if (v37)
      {
        goto LABEL_49;
      }

      *(v21 + 16) = v38;
    }

LABEL_5:
    v7 = (v11 - 1) & v11;
    *a2 = v46;
  }

  if (v16 < 0)
  {
    v39 = *a2;
  }

  v40 = sub_224DAF838();
  v18 = v40 + v15;
  if (!__OFADD__(v40, v15))
  {
    goto LABEL_15;
  }

LABEL_45:
  __break(1u);
}

unint64_t sub_224D44404(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v30 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v28 = v1;
    while (1)
    {
      if (v32)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AA5DCC0](v2, v27);
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v2 >= *(v31 + 16))
        {
          goto LABEL_43;
        }

        v4 = *(v30 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_42;
        }
      }

      v6 = [*(v4 + *(*v4 + 104)) controlItems];
      sub_224DAF5D8();
      v7 = sub_224DAF008();

      v8 = v7 >> 62;
      v9 = v7 >> 62 ? sub_224DAF838() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
      {
        goto LABEL_41;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v10)
        {
          goto LABEL_20;
        }

        v12 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v11 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v34 = v3;
          goto LABEL_22;
        }
      }

      else
      {
        if (v10)
        {
LABEL_20:
          sub_224DAF838();
          goto LABEL_21;
        }

        v12 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v13 = *(v12 + 16);
LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_224DAF968();
      v34 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v14 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v8)
      {
        v17 = v12;
        isUniquelyReferenced_nonNull_bridgeObject = sub_224DAF838();
        v12 = v17;
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v15 >> 1) - v14) < v9)
          {
            goto LABEL_45;
          }

          v18 = v12 + 8 * v14 + 32;
          v29 = v12;
          if (v8)
          {
            if (v16 < 1)
            {
              goto LABEL_47;
            }

            sub_224A33088(&qword_27D6F4068, &qword_27D6F4060, &unk_224DC1AA0);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4060, &unk_224DC1AA0);
              v20 = sub_224A6996C(v33, i, v7);
              v22 = *v21;
              (v20)(v33, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v28;
          v3 = v34;
          if (v9 >= 1)
          {
            v23 = *(v29 + 16);
            v5 = __OFADD__(v23, v9);
            v24 = v23 + v9;
            if (v5)
            {
              goto LABEL_46;
            }

            *(v29 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_26;
        }
      }

      v3 = v34;
      if (v9 > 0)
      {
        goto LABEL_44;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_224DAF838();
    v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
    {
      goto LABEL_13;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_224DAF838();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_224D447A4()
{
  v1 = *v0;
  v2 = 0x72756769666E6F63;
  if (*v0 != 1)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  *v0;
  if (v1 == 2)
  {
    v2 = 0xD000000000000013;
  }

  if (v1 == 3)
  {
    return 7105633;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_224D44828@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_224D56DB4(a1);

  *a2 = v3;
  return result;
}

void *sub_224D44868@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_224D44888()
{
  v1 = OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___activityDescriptorPublisher;
  if (*(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___activityDescriptorPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___activityDescriptorPublisher);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService__activityDescriptorPublisher);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F53F0, &qword_224DC1B60);
    sub_224A33088(&qword_281350F48, &qword_27D6F53F0, &qword_224DC1B60);
    v3 = v0;
    v2 = sub_224DAB3A8();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_224D44964()
{
  v1 = OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___widgetDescriptorPublisher;
  if (*(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___widgetDescriptorPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___widgetDescriptorPublisher);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService__widgetDescriptorPublisher);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F53F8, &qword_224DBBB38);
    sub_224A33088(&qword_281350F58, &qword_27D6F53F8, &qword_224DBBB38);
    v3 = v0;
    v2 = sub_224DAB3A8();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_224D44A40()
{
  v1 = OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___controlDescriptorPublisher;
  if (*(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___controlDescriptorPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___controlDescriptorPublisher);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService__controlDescriptorPublisher);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5400, &unk_224DC1B50);
    sub_224A33088(&qword_281350F50, &qword_27D6F5400, &unk_224DC1B50);
    v3 = v0;
    v2 = sub_224DAB3A8();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_224D44B1C()
{
  v1 = OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___combinedDescriptorPublisher;
  if (*(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___combinedDescriptorPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___combinedDescriptorPublisher);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService__combinedDescriptorPublisher);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5408, &qword_224DBBB40);
    sub_224A33088(&qword_281350F40, &qword_27D6F5408, &qword_224DBBB40);
    v3 = v0;
    v2 = sub_224DAB3A8();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_224D44BF8()
{
  v1 = OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___extensionPublisher;
  if (*(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___extensionPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___extensionPublisher);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService__extensionPublisher);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5410, &unk_224DC1B40);
    sub_224A33088(&qword_281350EF8, &qword_27D6F5410, &unk_224DC1B40);
    v3 = v0;
    v2 = sub_224DAB3A8();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_224D44CD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6CC0, &qword_224DC1B10);
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6CC8, &qword_224DC1B18);
  v23 = *(v5 - 8);
  v6 = *(v23 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  sub_224A3B79C(0, &qword_2813508D0, 0x277CFA318);
  sub_224DAD8F8();
  v9 = v1[13];
  v9(v4, *MEMORY[0x277CF9DF8], v0);
  sub_224DAD8E8();
  v10 = v1[1];
  v10(v4, v0);
  sub_224DA9E78();
  sub_224DA9E68();
  v11 = sub_224DA9D48();

  if ((v11 & 1) == 0)
  {
    v9(v4, *MEMORY[0x277CF9E00], v0);
    sub_224DAD8E8();
    v10(v4, v0);
  }

  v12 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
  v13 = v22;
  swift_beginAccess();
  sub_224A3796C(v13 + v12, v24, &qword_27D6F6C28, &qword_224DC1A38);
  v14 = v25;
  if (v25)
  {
    v15 = __swift_project_boxed_opaque_existential_1(v24, v25);
    v16 = *(v14 - 8);
    v17 = *(v16 + 64);
    MEMORY[0x28223BE20](v15);
    v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v19);
    sub_224A3311C(v24, &qword_27D6F6C28, &qword_224DC1A38);
    sub_224DAD5C8();
    (*(v16 + 8))(v19, v14);
    v20 = sub_224DACFA8();

    (*(v23 + 8))(v8, v5);
  }

  else
  {
    (*(v23 + 8))(v8, v5);
    sub_224A3311C(v24, &qword_27D6F6C28, &qword_224DC1A38);
    return 0;
  }

  return v20;
}

id sub_224D450A0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_queryTimer];
  if (v2)
  {
    [v2 invalidate];
  }

  v3 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_persistentSubscriptions;
  swift_beginAccess();
  v4 = *&v1[v3];
  if ((v4 & 0xC000000000000001) != 0)
  {
    if (v4 < 0)
    {
      v5 = *&v1[v3];
    }

    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224DAB338();
    sub_224A39EF8(&unk_281350FE0, MEMORY[0x277CBCDA8]);
    result = sub_224DAF1F8();
    v8 = v23;
    v7 = v24;
    v9 = v25;
    v10 = v26;
    v11 = v27;
  }

  else
  {
    v12 = -1 << *(v4 + 32);
    v7 = v4 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v4 + 56);
    result = swift_bridgeObjectRetain_n();
    v10 = 0;
    v8 = v4;
  }

  v15 = (v9 + 64) >> 6;
  if (v8 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v16 = v10;
    v17 = v11;
    v18 = v10;
    if (!v11)
    {
      break;
    }

LABEL_16:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v8 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));

    if (!v20)
    {
LABEL_22:
      sub_224A3B7E4();

      v22.receiver = v1;
      v22.super_class = type metadata accessor for DescriptorService();
      return objc_msgSendSuper2(&v22, sel_dealloc);
    }

    while (1)
    {
      sub_224DAB328();

      v10 = v18;
      v11 = v19;
      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_224DAF878())
      {
        sub_224DAB338();
        swift_dynamicCast();
        v18 = v10;
        v19 = v11;
        if (v21)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_22;
    }

    v17 = *(v7 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for DescriptorService()
{
  result = qword_28135A920;
  if (!qword_28135A920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224D455C4(void *a1)
{
  v254 = a1;
  v193 = sub_224DAB7B8();
  v192 = *(v193 - 8);
  v1 = *(v192 + 64);
  MEMORY[0x28223BE20](v193);
  v190 = &v183 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_224DAB848();
  v189 = *(v191 - 8);
  v3 = *(v189 + 64);
  MEMORY[0x28223BE20](v191);
  v188 = &v183 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = sub_224DAD448();
  v235 = *(v236 - 8);
  v5 = *(v235 + 64);
  MEMORY[0x28223BE20](v236);
  v234 = &v183 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CA0, &qword_224DBA450);
  v232 = *(v233 - 8);
  v7 = *(v232 + 64);
  MEMORY[0x28223BE20](v233);
  v231 = &v183 - v8;
  v226 = sub_224DAF558();
  v225 = *(v226 - 8);
  v9 = *(v225 + 64);
  MEMORY[0x28223BE20](v226);
  v224 = &v183 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6C58, &qword_224DC1AB8);
  v228 = *(v229 - 8);
  v11 = *(v228 + 64);
  MEMORY[0x28223BE20](v229);
  v227 = &v183 - v12;
  v245 = sub_224DAF3B8();
  v246 = *(v245 - 8);
  v13 = *(v246 + 64);
  MEMORY[0x28223BE20](v245);
  v230 = &v183 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_224DADBD8();
  v216 = *(v217 - 8);
  v15 = *(v216 + 64);
  MEMORY[0x28223BE20](v217);
  v215 = &v183 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6C60, &qword_224DC1AC0);
  v207 = *(v208 - 8);
  v17 = *(v207 + 64);
  MEMORY[0x28223BE20](v208);
  v206 = &v183 - v18;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6C68, &qword_224DC1AC8);
  v210 = *(v211 - 8);
  v19 = *(v210 + 64);
  MEMORY[0x28223BE20](v211);
  v209 = &v183 - v20;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6C70, &qword_224DC1AD0);
  v213 = *(v214 - 8);
  v21 = *(v213 + 64);
  MEMORY[0x28223BE20](v214);
  v212 = &v183 - v22;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6C78, &qword_224DC1AD8);
  v219 = *(v220 - 8);
  v23 = *(v219 + 64);
  MEMORY[0x28223BE20](v220);
  v218 = &v183 - v24;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6C80, &unk_224DC1AE0);
  v222 = *(v223 - 8);
  v25 = *(v222 + 64);
  MEMORY[0x28223BE20](v223);
  v221 = &v183 - v26;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5DB0, &unk_224DB35E0);
  v204 = *(v205 - 8);
  v27 = *(v204 + 64);
  MEMORY[0x28223BE20](v205);
  v203 = &v183 - v28;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37C8, &unk_224DB4020);
  v202 = *(v201 - 8);
  v29 = *(v202 + 8);
  MEMORY[0x28223BE20](v201);
  v200 = &v183 - v30;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C50, &unk_224DBA3C0);
  v195 = *(v196 - 8);
  v31 = *(v195 + 64);
  MEMORY[0x28223BE20](v196);
  v194 = &v183 - v32;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C58, &qword_224DC1AF0);
  v198 = *(v199 - 8);
  v33 = *(v198 + 64);
  MEMORY[0x28223BE20](v199);
  v197 = &v183 - v34;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6C88, &qword_224DC1AF8);
  v244 = *(v253 - 8);
  v35 = *(v244 + 8);
  MEMORY[0x28223BE20](v253);
  v240 = &v183 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v242 = &v183 - v39;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5300, &qword_224DB6600);
  v243 = *(v238 - 8);
  v40 = *(v243 + 64);
  MEMORY[0x28223BE20](v238);
  v237 = &v183 - v41;
  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v42 = sub_224DAB258();
  __swift_project_value_buffer(v42, qword_281365168);
  v43 = sub_224DAB228();
  v44 = sub_224DAF2A8();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_224A2F000, v43, v44, "start", v45, 2u);
    MEMORY[0x22AA5EED0](v45, -1, -1);
  }

  sub_224DA9E78();
  sub_224DA9E68();
  v46 = sub_224DA9D58();

  aBlock = v46;
  v265 = *&v255[OBJC_IVAR____TtC10ChronoCore17DescriptorService_queue];
  v47 = v265;
  v48 = sub_224DAF358();
  v49 = *(v48 - 8);
  v252 = *(v49 + 56);
  v251 = v49 + 56;
  v50 = v242;
  v252(v242, 1, 1, v48);
  v241 = v47;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4730, &unk_224DBAF00);
  v250 = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  v239 = MEMORY[0x277CBCD90];
  v52 = sub_224A33088(&qword_281351010, &unk_27D6F4730, &unk_224DBAF00);
  v53 = sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78);
  v54 = v237;
  v187 = v51;
  v186 = v52;
  sub_224DAB448();
  sub_224A3311C(v50, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  v55 = v255;
  swift_unknownObjectWeakInit();
  v56 = sub_224A33088(&qword_281351210, &unk_27D6F5300, &qword_224DB6600);
  v57 = v238;
  v185 = v56;
  sub_224DAB488();

  v58 = *(v243 + 8);
  v243 += 8;
  v184 = v58;
  v58(v54, v57);
  v59 = &v55[OBJC_IVAR____TtC10ChronoCore17DescriptorService_persistentSubscriptions];
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  sub_224DAD528();
  aBlock = sub_224DAD508();
  v60 = v241;
  v265 = v241;
  v249 = v48;
  v252(v50, 1, 1, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F54A0, &qword_224DBBB88);
  sub_224A33088(&qword_281351038, &unk_27D6F54A0, &qword_224DBBB88);
  v61 = v240;
  v248 = v53;
  sub_224DAB448();
  sub_224A3311C(v50, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  v62 = v255;
  swift_unknownObjectWeakInit();
  sub_224A33088(&qword_281351218, &qword_27D6F6C88, &qword_224DC1AF8);
  v63 = v253;
  sub_224DAB488();

  (*(v244 + 1))(v61, v63);
  swift_beginAccess();
  v247 = v59;
  sub_224DAB308();
  swift_endAccess();

  sub_224A3317C(v254, &aBlock);
  v64 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
  swift_beginAccess();
  sub_224A838C0(&aBlock, &v62[v64], &qword_27D6F6C28, &qword_224DC1A38);
  swift_endAccess();
  v65 = *&v62[OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager + 24];
  v66 = *&v62[OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager + 32];
  v244 = &v62[OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager];
  __swift_project_boxed_opaque_existential_1(&v62[OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager], v65);
  v67 = sub_224DAC678();
  v68 = *(v67 + 16);
  if (v68)
  {
    v253 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_stateCaptureManager;
    v240 = v67;
    v69 = v67 + 32;
    do
    {
      sub_224A3317C(v69, &v265);
      __swift_project_boxed_opaque_existential_1(&v265, v266);
      v72 = sub_224DAE338();
      sub_224A3317C(v254, &v260);
      aBlock = v72;
      sub_224A3796C(&v255[v253], &v257, &unk_27D6F53A0, &qword_224DC1A80);
      if (v258)
      {
        __swift_project_boxed_opaque_existential_1(&v257, v258);
        v256[3] = &type metadata for ExtensionDescriptorStateCapturing;
        v256[4] = sub_224D5BCA8();
        v256[0] = swift_allocObject();
        sub_224D5BCFC(&aBlock, v256[0] + 16);
        __swift_project_boxed_opaque_existential_1(&v265, v266);
        v70 = sub_224DAE338();
        v71 = [v70 description];

        sub_224DAEE18();
        sub_224DAA2F8();

        sub_224D5BC78(&aBlock);
        __swift_destroy_boxed_opaque_existential_1(v256);
        __swift_destroy_boxed_opaque_existential_1(&v257);
      }

      else
      {
        sub_224D5BC78(&aBlock);
        sub_224A3311C(&v257, &unk_27D6F53A0, &qword_224DC1A80);
      }

      __swift_destroy_boxed_opaque_existential_1(&v265);
      v69 += 40;
      --v68;
    }

    while (v68);
  }

  v73 = v244;
  v74 = *(v244 + 4);
  __swift_project_boxed_opaque_existential_1(v244, *(v244 + 3));
  aBlock = sub_224DAC688();
  v75 = *(v73 + 4);
  __swift_project_boxed_opaque_existential_1(v73, *(v73 + 3));
  v265 = sub_224DAC6A8();
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5500, &unk_224DB4040);
  v253 = MEMORY[0x277CBCD90];
  v240 = sub_224A33088(&qword_281351048, &unk_27D6F5500, &unk_224DB4040);
  v76 = v194;
  sub_224DAB428();

  v77 = v241;
  aBlock = v241;
  v78 = v242;
  v252(v242, 1, 1, v249);
  sub_224A33088(&qword_281351310, &qword_27D6F4C50, &unk_224DBA3C0);
  v79 = v77;
  v80 = v197;
  v81 = v196;
  sub_224DAB448();
  sub_224A3311C(v78, &qword_27D6F5090, &qword_224DB5C30);

  (*(v195 + 8))(v76, v81);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v241 = MEMORY[0x277CBCD60];
  sub_224A33088(&qword_2813511C8, &qword_27D6F4C58, &qword_224DC1AF0);
  v82 = v199;
  sub_224DAB488();

  (*(v198 + 8))(v80, v82);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  v83 = *(v244 + 4);
  __swift_project_boxed_opaque_existential_1(v244, *(v244 + 3));
  aBlock = sub_224DAC698();
  v265 = v79;
  v252(v78, 1, 1, v249);
  v84 = v79;
  v85 = v200;
  sub_224DAB448();
  sub_224A3311C(v78, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  v86 = v255;
  swift_unknownObjectWeakInit();
  v199 = sub_224A33088(&qword_281351230, &qword_27D6F37C8, &unk_224DB4020);
  v87 = v201;
  sub_224DAB488();

  v198 = *(v202 + 1);
  (v198)(v85, v87);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  v88 = &v86[OBJC_IVAR____TtC10ChronoCore17DescriptorService_remoteWidgetDescriptorService];
  v89 = *&v86[OBJC_IVAR____TtC10ChronoCore17DescriptorService_remoteWidgetDescriptorService + 24];
  v90 = *&v86[OBJC_IVAR____TtC10ChronoCore17DescriptorService_remoteWidgetDescriptorService + 32];
  v202 = v88;
  __swift_project_boxed_opaque_existential_1(v88, v89);
  aBlock = sub_224DADE88();
  v265 = v84;
  v91 = v249;
  v252(v78, 1, 1, v249);
  v92 = v84;
  sub_224DAB448();
  sub_224A3311C(v78, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  v93 = v255;
  swift_unknownObjectWeakInit();
  sub_224DAB488();

  (v198)(v85, v87);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  v94 = &v93[OBJC_IVAR____TtC10ChronoCore17DescriptorService_hostService];
  v95 = v93;
  v96 = *&v93[OBJC_IVAR____TtC10ChronoCore17DescriptorService_hostService + 24];
  v97 = *&v93[OBJC_IVAR____TtC10ChronoCore17DescriptorService_hostService + 32];
  __swift_project_boxed_opaque_existential_1(v94, v96);
  aBlock = (*(*(v97 + 8) + 40))(768, v96);
  v265 = v92;
  v252(v78, 1, 1, v91);
  v98 = v92;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5140, &unk_224DBAE80);
  v201 = sub_224A33088(&qword_281351140, &unk_27D6F5140, &unk_224DBAE80);
  v99 = v203;
  sub_224DAB448();
  sub_224A3311C(v78, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v200 = sub_224A33088(&qword_2813512B0, &qword_27D6F5DB0, &unk_224DB35E0);
  v100 = v205;
  sub_224DAB488();

  v204 = *(v204 + 8);
  (v204)(v99, v100);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  v101 = &v95[OBJC_IVAR____TtC10ChronoCore17DescriptorService_controlHostService];
  v102 = *&v95[OBJC_IVAR____TtC10ChronoCore17DescriptorService_controlHostService + 24];
  v103 = *&v95[OBJC_IVAR____TtC10ChronoCore17DescriptorService_controlHostService + 32];
  __swift_project_boxed_opaque_existential_1(v101, v102);
  aBlock = (*(*(v103 + 8) + 40))(768, v102);
  v239 = v98;
  v265 = v98;
  v252(v78, 1, 1, v249);
  sub_224DAB448();
  sub_224A3311C(v78, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  v104 = v255;
  swift_unknownObjectWeakInit();
  sub_224DAB488();

  (v204)(v99, v100);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  v105 = swift_allocObject();
  *(v105 + 16) = 0;
  v106 = v254[4];
  __swift_project_boxed_opaque_existential_1(v254, v254[3]);
  aBlock = sub_224DAD5E8();
  *(swift_allocObject() + 16) = v104;
  v240 = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6C90, &unk_224DC1B00);
  sub_224A33088(&qword_2813510B8, &qword_27D6F6C90, &unk_224DC1B00);
  v107 = v206;
  v108 = v217;
  sub_224DAB3B8();

  v109 = sub_224DAF3D8();
  aBlock = v109;
  v252(v78, 1, 1, v249);
  sub_224A33088(&qword_27D6F6C98, &qword_27D6F6C60, &qword_224DC1AC0);
  v110 = v209;
  v111 = v208;
  sub_224DAB448();
  sub_224A3311C(v78, &qword_27D6F5090, &qword_224DB5C30);

  (*(v207 + 8))(v107, v111);
  v112 = v215;
  sub_224DADBA8();
  sub_224A33088(&qword_27D6F6CA0, &qword_27D6F6C68, &qword_224DC1AC8);

  v113 = v212;
  v114 = v211;
  sub_224DAB3F8();

  (*(v216 + 8))(v112, v108);
  (*(v210 + 8))(v110, v114);
  sub_224A33088(&qword_27D6F6CA8, &qword_27D6F6C70, &qword_224DC1AD0);

  v115 = v214;
  v116 = v218;
  sub_224DAB3C8();

  (*(v213 + 8))(v113, v115);
  v117 = v230;
  sub_224DAF378();
  v118 = sub_224DAF3D8();
  aBlock = v118;
  v119 = v252;
  v252(v78, 1, 1, v249);
  sub_224A33088(&qword_27D6F6CB0, &qword_27D6F6C78, &qword_224DC1AD8);
  v120 = v221;
  v121 = v220;
  sub_224DAB468();
  sub_224A3311C(v78, &qword_27D6F5090, &qword_224DB5C30);

  v122 = *(v246 + 8);
  v246 += 8;
  v255 = v122;
  (v122)(v117, v245);
  (*(v219 + 8))(v116, v121);
  v123 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v124 = swift_allocObject();
  *(v124 + 16) = v123;
  *(v124 + 24) = v105;
  v241 = MEMORY[0x277CBCCF8];
  sub_224A33088(&qword_27D6F6CB8, &qword_27D6F6C80, &unk_224DC1AE0);
  v220 = v105;

  v125 = v223;
  sub_224DAB488();

  (*(v222 + 8))(v120, v125);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  v126 = [objc_opt_self() defaultCenter];
  v127 = *MEMORY[0x277D23A70];
  v128 = v224;
  sub_224DAF568();

  sub_224DAF378();
  v129 = sub_224DAF3D8();
  aBlock = v129;
  v130 = v249;
  v119(v78, 1, 1, v249);
  sub_224A39EF8(&qword_281350980, MEMORY[0x277CC9DB0]);
  v131 = v227;
  v132 = v226;
  sub_224DAB468();
  sub_224A3311C(v78, &qword_27D6F5090, &qword_224DB5C30);

  (v255)(v117, v245);
  (*(v225 + 8))(v128, v132);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_224A33088(&qword_281351318, &qword_27D6F6C58, &qword_224DC1AB8);
  v133 = v229;
  sub_224DAB488();

  (*(v228 + 8))(v131, v133);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  sub_224DADB98();
  aBlock = sub_224DADB78();
  sub_224DAF378();
  v134 = v239;
  v265 = v239;
  v252(v78, 1, 1, v130);
  v135 = v134;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5200, &qword_224DBA810);
  sub_224A33088(&qword_281350FF0, &qword_27D6F5200, &qword_224DBA810);
  v136 = v231;
  v137 = v135;
  sub_224DAB468();
  sub_224A3311C(v78, &qword_27D6F5090, &qword_224DB5C30);

  (v255)(v117, v245);
  v138 = v240;

  swift_allocObject();
  v139 = v138;
  swift_unknownObjectWeakInit();
  sub_224A33088(&qword_281351338, &qword_27D6F4CA0, &qword_224DBA450);
  v140 = v233;
  sub_224DAB488();

  (*(v232 + 8))(v136, v140);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  v141 = *(v244 + 4);
  __swift_project_boxed_opaque_existential_1(v244, *(v244 + 3));
  v142 = sub_224DAC678();
  v143 = *(v142 + 16);
  if (v143)
  {
    v265 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    v144 = v142 + 32;
    do
    {
      sub_224A3317C(v144, &aBlock);
      __swift_project_boxed_opaque_existential_1(&aBlock, v262);
      sub_224DAE338();
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      sub_224DAF9B8();
      v145 = v265[2];
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
      v144 += 40;
      --v143;
    }

    while (v143);

    v146 = v265;
  }

  else
  {

    v146 = MEMORY[0x277D84F90];
  }

  v147 = &v138[OBJC_IVAR____TtC10ChronoCore17DescriptorService_preferences];
  swift_beginAccess();
  v148 = *__swift_project_boxed_opaque_existential_1(v147, *(v147 + 3));
  v149 = sub_224CB986C();

  v151 = sub_224D58898(v150, v146);

  if ((v151 & 0xC000000000000001) != 0)
  {
    v152 = sub_224DAF838();
    if ((v149 & 0xC000000000000001) != 0)
    {
LABEL_18:
      v153 = sub_224DAF838();
      goto LABEL_21;
    }
  }

  else
  {
    v152 = *(v151 + 16);
    if ((v149 & 0xC000000000000001) != 0)
    {
      goto LABEL_18;
    }
  }

  v153 = *(v149 + 16);
LABEL_21:
  v154 = v137;

  if (v152 == v153)
  {
  }

  else
  {
    swift_beginAccess();
    v155 = *(v147 + 3);
    v156 = *(v147 + 4);
    __swift_mutable_project_boxed_opaque_existential_1(v147, v155);
    (*(v156 + 16))(v151, v155, v156);
    swift_endAccess();
  }

  v157 = v202;
  v158 = v254;
  v159 = v254[4];
  __swift_project_boxed_opaque_existential_1(v254, v254[3]);
  sub_224A39EF8(&qword_28135A968, type metadata accessor for DescriptorService);
  v160 = v139;
  sub_224DAD578();
  v161 = *(v157 + 4);
  __swift_project_boxed_opaque_existential_1(v157, *(v157 + 3));
  sub_224DADE78();
  sub_224D53BF0();
  v162 = v158[4];
  __swift_project_boxed_opaque_existential_1(v158, v158[3]);
  v163 = v235;
  v164 = v234;
  v165 = v236;
  (*(v235 + 104))(v234, *MEMORY[0x277CF9CD8], v236);
  sub_224DAD628();

  (*(v163 + 8))(v164, v165);
  v166 = swift_allocObject();
  *(v166 + 16) = v160;
  v167 = swift_allocObject();
  *(v167 + 16) = sub_224D5C120;
  *(v167 + 24) = v166;
  v263 = sub_224A8A838;
  v264 = v167;
  aBlock = MEMORY[0x277D85DD0];
  v260 = 1107296256;
  v261 = sub_224A9B6F8;
  v262 = &block_descriptor_251;
  v168 = _Block_copy(&aBlock);
  v169 = v160;

  dispatch_sync(v154, v168);
  _Block_release(v168);
  LOBYTE(v168) = swift_isEscapingClosureAtFileLocation();

  if (v168)
  {
    __break(1u);
  }

  else
  {
    v171 = *&v169[OBJC_IVAR____TtC10ChronoCore17DescriptorService_keybagStateProvider + 32];
    __swift_project_boxed_opaque_existential_1(&v169[OBJC_IVAR____TtC10ChronoCore17DescriptorService_keybagStateProvider], *&v169[OBJC_IVAR____TtC10ChronoCore17DescriptorService_keybagStateProvider + 24]);
    aBlock = sub_224DAA168();
    v257 = v154;
    v172 = v242;
    v252(v242, 1, 1, v249);
    v173 = v237;
    sub_224DAB448();
    sub_224A3311C(v172, &qword_27D6F5090, &qword_224DB5C30);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    v174 = v238;
    v175 = sub_224DAB488();

    v184(v173, v174);
    v176 = *&v169[OBJC_IVAR____TtC10ChronoCore17DescriptorService_finishLaunchingToken];
    *&v169[OBJC_IVAR____TtC10ChronoCore17DescriptorService_finishLaunchingToken] = v175;

    v177 = swift_allocObject();
    *(v177 + 16) = v169;
    v263 = sub_224D5C130;
    v264 = v177;
    aBlock = MEMORY[0x277D85DD0];
    v260 = 1107296256;
    v261 = sub_224A39F40;
    v262 = &block_descriptor_258;
    v178 = _Block_copy(&aBlock);
    v179 = v169;
    v180 = v188;
    sub_224DAB7E8();
    v257 = MEMORY[0x277D84F90];
    sub_224A39EF8(&qword_281350ED0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    v181 = v190;
    v182 = v193;
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v180, v181, v178);
    _Block_release(v178);
    (*(v192 + 8))(v181, v182);
    (*(v189 + 8))(v180, v191);
  }

  return result;
}

void sub_224D4838C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281365168);
  v3 = sub_224DAB228();
  v4 = sub_224DAF2A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_224A2F000, v3, v4, "New value set for 'showInternalWidgets': %{BOOL,public}d", v5, 8u);
    MEMORY[0x22AA5EED0](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_224D53DD4(0, MEMORY[0x277D84FA0]);
  }
}

void sub_224D484C0(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a3(v4);
  }
}

void sub_224D48530(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_224D4C850(v1, 1, 0xD000000000000025, 0x8000000224DCFF40);
  }
}

uint64_t sub_224D485A8(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v5 = sub_224DAA5C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    (*(v6 + 104))(v9, *a3, v5);
    sub_224D52DE4(a1, v9);

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_224D486D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_suppressPublishingNotificationsForTesting);
  v6 = sub_224DADBD8();
  v7 = *(v6 - 8);
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v11 = *(v6 - 8);
    (*(v11 + 16))(a3, a1, v6);
    v7 = v11;
    v8 = 0;
  }

  v9 = *(v7 + 56);

  return v9(a3, v8, 1, v6);
}

uint64_t sub_224D487A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  if (*(a2 + 16) == 1)
  {
    v6 = sub_224DADBD8();
    return (*(*(v6 - 8) + 16))(a3, a1, v6);
  }

  else
  {
    sub_224DADBB8();
    v8 = sub_224DADBB8();
    sub_224B42BA0(v8);
    v9 = sub_224DADBC8();
    v10 = sub_224DADBC8();
    sub_224AD6BAC(v10, v9);
    return sub_224DADBA8();
  }
}

uint64_t sub_224D48898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    *(a3 + 16) = 1;
    v6 = sub_224DADBB8();
    v7 = sub_224A3DADC(v6);

    v8 = sub_224DADBC8();
    sub_224D53DD4(v7, v8);
  }

  return result;
}

void sub_224D48954(uint64_t a1)
{
  v2 = sub_224DAB7B8();
  v48 = *(v2 - 8);
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DAB848();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DA9398();
  v50 = *(v10 - 8);
  v11 = *(v50 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v49 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v41 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v16 = Strong;
  v46 = a1;
  v17 = sub_224DA9388();
  if (!v17)
  {

    v52 = 0u;
    v53 = 0u;
    goto LABEL_13;
  }

  v18 = v17;
  v19 = *MEMORY[0x277D23A80];
  aBlock[6] = sub_224DAEE18();
  aBlock[7] = v20;
  sub_224DAF8D8();
  if (!*(v18 + 16) || (v21 = sub_224B0B624(aBlock), (v22 & 1) == 0))
  {

    sub_224AD52A4(aBlock);
    v52 = 0u;
    v53 = 0u;
    goto LABEL_11;
  }

  sub_224A33E0C(*(v18 + 56) + 32 * v21, &v52);
  sub_224AD52A4(aBlock);

  if (!*(&v53 + 1))
  {
LABEL_11:

LABEL_13:
    sub_224A3311C(&v52, &qword_27D6F4760, &unk_224DB3680);
    return;
  }

  sub_224A3B79C(0, &qword_281350850, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:

    return;
  }

  v23 = aBlock[0];
  if ([aBlock[0] integerValue])
  {

    goto LABEL_9;
  }

  v45 = v23;
  v41[2] = *&v16[OBJC_IVAR____TtC10ChronoCore17DescriptorService_queue];
  v24 = v50;
  v42 = *(v50 + 16);
  v41[1] = v50 + 16;
  v42(v14, v46, v10);
  v25 = (*(v24 + 80) + 24) & ~*(v24 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = v16;
  v27 = *(v24 + 32);
  v43 = v10;
  v27(&v26[v25], v14, v10);
  aBlock[4] = sub_224D5C198;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_274;
  v28 = _Block_copy(aBlock);
  v44 = v16;
  sub_224DAB7E8();
  *&v52 = MEMORY[0x277D84F90];
  sub_224A39EF8(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v9, v5, v28);
  _Block_release(v28);
  (*(v48 + 8))(v5, v2);
  (*(v47 + 8))(v9, v6);

  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v29 = sub_224DAB258();
  __swift_project_value_buffer(v29, qword_281365168);
  v30 = v49;
  v31 = v43;
  v42(v49, v46, v43);
  v32 = sub_224DAB228();
  v33 = sub_224DAF2A8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v34 = 136446210;
    if (sub_224DA9388())
    {
      v36 = sub_224DAED18();
      v38 = v37;
    }

    else
    {
      v38 = 0xE300000000000000;
      v36 = 7104878;
    }

    (*(v50 + 8))(v30, v31);
    v39 = sub_224A33F74(v36, v38, aBlock);

    *(v34 + 4) = v39;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x22AA5EED0](v35, -1, -1);
    MEMORY[0x22AA5EED0](v34, -1, -1);
  }

  else
  {

    (*(v50 + 8))(v30, v31);
  }

  v40 = v44;
  sub_224D4DCFC(0xD000000000000018, 0x8000000224DCFF20);
}

uint64_t sub_224D49098(uint64_t a1)
{
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v2 = *(v70 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v70);
  v72 = &v64 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v76 = *(v5 - 8);
  v6 = v76[8];
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v74 = &v64 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v64 - v13;
  MEMORY[0x28223BE20](v12);
  v78 = &v64 - v15;
  v16 = OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_currentExtensionsAndCompletionsBeingFetched;
  swift_beginAccess();
  v75 = a1;
  v17 = *(a1 + v16);

  v19 = sub_224D43768(v18);

  v20 = sub_224AE9E84(v19);

  v21 = sub_224DA9388();
  if (!v21)
  {

    v91 = 0u;
    v92 = 0u;
    return sub_224A3311C(&v91, &qword_27D6F4760, &unk_224DB3680);
  }

  v22 = v21;
  v23 = *MEMORY[0x277D23A78];
  v87 = sub_224DAEE18();
  v88 = v24;
  sub_224DAF8D8();
  if (!*(v22 + 16) || (v25 = sub_224B0B624(v89), (v26 & 1) == 0))
  {

    sub_224AD52A4(v89);
    v91 = 0u;
    v92 = 0u;
    goto LABEL_34;
  }

  sub_224A33E0C(*(v22 + 56) + 32 * v25, &v91);
  sub_224AD52A4(v89);

  if (!*(&v92 + 1))
  {
LABEL_34:

    return sub_224A3311C(&v91, &qword_27D6F4760, &unk_224DB3680);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
  }

  v28 = v89[0];
  v69 = *(v89[0] + 16);
  if (!v69)
  {
LABEL_39:
  }

  v29 = 0;
  v73 = OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_extensionsPendingRefetchWithLNMetadataChanged;
  v66 = (v75 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager);
  v68 = v89[0] + 32;
  v83 = v20 + 56;
  v85 = (v76 + 2);
  v86 = (v76 + 1);
  v65 = (v2 + 8);
  v82 = v9;
  v84 = v20;
  v67 = v89[0];
  while (v29 < *(v28 + 16))
  {
    v71 = v29;
    v31 = (v68 + 16 * v29);
    v33 = *v31;
    v32 = v31[1];
    swift_bridgeObjectRetain_n();
    sub_224DA9FF8();
    if (*(v20 + 16) && (v34 = v84, v35 = *(v84 + 40), sub_224A33088(&unk_281351900, &unk_27D6F3920, &qword_224DB35B0), v36 = sub_224DAED88(), v37 = -1 << *(v34 + 32), v38 = v36 & ~v37, ((*(v83 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) != 0))
    {
      v39 = ~v37;
      v40 = v76[9];
      v41 = v76[2];
      while (1)
      {
        v41(v14, *(v84 + 48) + v40 * v38, v5);
        sub_224A33088(&unk_2813518F0, &unk_27D6F3920, &qword_224DB35B0);
        v42 = sub_224DAEDD8();
        v43 = *v86;
        (*v86)(v14, v5);
        if (v42)
        {
          break;
        }

        v38 = (v38 + 1) & v39;
        if (((*(v83 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v62 = v74;
      v63 = v78;
      v41(v74, v78, v5);
      swift_beginAccess();
      sub_224A85C9C(v14, v62);
      v43(v14, v5);
      swift_endAccess();
      result = (v43)(v63, v5);
      v20 = v84;
      v28 = v67;
      v30 = v71;
    }

    else
    {
LABEL_17:
      sub_224DA9FF8();
      v44 = v66[4];
      __swift_project_boxed_opaque_existential_1(v66, v66[3]);
      result = sub_224DAC668();
      v45 = result;
      v81 = *(result + 16);
      if (v81)
      {
        v46 = 0;
        v80 = result + 32;
        v47 = v82;
        v20 = v84;
        v79 = result;
        while (v46 < *(v45 + 16))
        {
          sub_224A3317C(v80 + 40 * v46, v89);
          __swift_project_boxed_opaque_existential_1(v89, v90);
          v48 = sub_224DAE338();
          v49 = *MEMORY[0x277CFA138];
          swift_beginAccess();
          v50 = *v85;
          (*v85)(v47, &v48[v49], v5);

          if (*(v20 + 16))
          {
            v51 = *(v20 + 40);
            sub_224A33088(&unk_281351900, &unk_27D6F3920, &qword_224DB35B0);
            v52 = sub_224DAED88();
            v53 = -1 << *(v20 + 32);
            v54 = v52 & ~v53;
            if ((*(v83 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54))
            {
              v77 = v86 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              v55 = ~v53;
              v56 = v76[9];
              while (1)
              {
                v50(v14, (*(v84 + 48) + v56 * v54), v5);
                sub_224A33088(&unk_2813518F0, &unk_27D6F3920, &qword_224DB35B0);
                v57 = sub_224DAEDD8();
                v58 = *v86;
                (*v86)(v14, v5);
                if (v57)
                {
                  break;
                }

                v54 = (v54 + 1) & v55;
                if (((*(v83 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
                {
                  v47 = v82;
                  v20 = v84;
                  v45 = v79;
                  goto LABEL_29;
                }
              }

              v47 = v82;
              v58(v82, v5);
              __swift_project_boxed_opaque_existential_1(v89, v90);
              v59 = sub_224DAE338();
              v60 = *MEMORY[0x277CFA138];
              swift_beginAccess();
              v61 = v74;
              v50(v74, &v59[v60], v5);

              swift_beginAccess();
              sub_224A85C9C(v14, v61);
              v58(v14, v5);
              swift_endAccess();
              v20 = v84;
              v45 = v79;
            }

            else
            {
              v58 = *v86;
              v45 = v79;
LABEL_29:
              v58(v47, v5);
            }
          }

          else
          {
            (*v86)(v47, v5);
          }

          ++v46;
          result = __swift_destroy_boxed_opaque_existential_1(v89);
          if (v46 == v81)
          {

            goto LABEL_9;
          }
        }

        __break(1u);
        break;
      }

      v20 = v84;
LABEL_9:
      v28 = v67;
      v30 = v71;
      (*v65)(v72, v70);
      result = (*v86)(v78, v5);
    }

    v29 = v30 + 1;
    if (v29 == v69)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
  return result;
}

void sub_224D49B50()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_224D4CBFC();
  }
}

void sub_224D49BA4(uint64_t a1)
{
  sub_224D50518(2);
  v2 = *(a1 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_hostService + 24);
  v3 = *(a1 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_hostService + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_hostService), v2);
  (*(v3 + 32))(v5, 768, v2, v3);
  if (v6)
  {
    v4 = *(v6 + 16);
    sub_224A699F0(v5);
    if (v4)
    {
      sub_224D50518(1);
    }
  }

  else
  {
    sub_224A3311C(v5, &qword_27D6F50E0, &qword_224DB41A0);
  }
}

void sub_224D49C60(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1)
    {
      if (qword_281351708 != -1)
      {
        swift_once();
      }

      v4 = sub_224DAB258();
      __swift_project_value_buffer(v4, qword_281365168);
      v5 = sub_224DAB228();
      v6 = sub_224DAF2A8();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_224A2F000, v5, v6, "First unlock event received.  Reloading any default intents if necessary...", v7, 2u);
        MEMORY[0x22AA5EED0](v7, -1, -1);
      }

      sub_224D4DCFC(0x6E75207473726966, 0xEC0000006B636F6CLL);
      v8 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_finishLaunchingToken;
      if (*&v3[OBJC_IVAR____TtC10ChronoCore17DescriptorService_finishLaunchingToken])
      {
        v9 = *&v3[OBJC_IVAR____TtC10ChronoCore17DescriptorService_finishLaunchingToken];

        sub_224DAB328();

        v10 = *&v3[v8];
      }

      *&v3[v8] = 0;
    }

    else
    {
    }
  }
}

void sub_224D49DD4(void *a1)
{
  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281365168);
  v3 = a1;
  v4 = sub_224DAB228();
  v5 = sub_224DAF2A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    *(v6 + 4) = *&v3[OBJC_IVAR____TtC10ChronoCore17DescriptorService_queryTimerInterval];
    _os_log_impl(&dword_224A2F000, v4, v5, "Lazy refresh timer scheduled with %{public}f hour interval.  Running pending ones now.", v6, 0xCu);
    MEMORY[0x22AA5EED0](v6, -1, -1);
  }

  sub_224D507B4();
  v7 = objc_allocWithZone(MEMORY[0x277CF0BD8]);
  v8 = sub_224DAEDE8();
  v9 = [v7 initWithIdentifier_];

  v10 = *&v3[OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_queryTimer];
  *&v3[OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_queryTimer] = v9;
  v11 = v9;

  if (v11)
  {
    v12 = *&v3[OBJC_IVAR____TtC10ChronoCore17DescriptorService_initialQueryTimerInterval];
    v13 = *&v3[OBJC_IVAR____TtC10ChronoCore17DescriptorService_queryTimerInterval];
    v14 = *&v3[OBJC_IVAR____TtC10ChronoCore17DescriptorService_queue];
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17[4] = sub_224D5C138;
    v17[5] = v15;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = sub_224A3837C;
    v17[3] = &block_descriptor_263;
    v16 = _Block_copy(v17);

    [v11 scheduleRepeatingWithFireInterval:v14 repeatInterval:v16 leewayInterval:v12 queue:v13 handler:60.0];
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

void sub_224D4A048()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_224D507B4();
  }
}

uint64_t sub_224D4A09C(unint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v7 = sub_224DAB7B8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DAB848();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    if (sub_224DAF838())
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v23 = *&v3[OBJC_IVAR____TtC10ChronoCore17DescriptorService_queue];
    v17 = swift_allocObject();
    v17[2] = a1;
    v17[3] = v3;
    v17[4] = a2;
    v17[5] = a3;
    aBlock[4] = sub_224D5BFD0;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_221;
    v18 = _Block_copy(aBlock);

    v19 = v3;

    sub_224DAB7E8();
    v24 = MEMORY[0x277D84F90];
    sub_224A39EF8(&qword_281350ED0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    v22 = v12;
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v16, v11, v18);
    _Block_release(v18);
    (*(v8 + 8))(v11, v7);
    (*(v13 + 8))(v16, v22);
  }

  return a2();
}

void sub_224D4A3C8(unint64_t a1, uint64_t a2, void (*a3)(id), uint64_t a4)
{
  v81[2] = a4;
  v82 = a3;
  v87 = sub_224DAD448();
  v6 = *(v87 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v87);
  v86 = (v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v95 = v81 - v11;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v12 = *(v94 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v94);
  v93 = v81 - v14;
  if (qword_281351708 != -1)
  {
LABEL_48:
    swift_once();
  }

  v15 = sub_224DAB258();
  v16 = __swift_project_value_buffer(v15, qword_281365168);

  v81[1] = v16;
  v17 = sub_224DAB228();
  v18 = sub_224DAF2A8();

  v19 = os_log_type_enabled(v17, v18);
  v96 = a1;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v104 = v21;
    *v20 = 136446210;
    v22 = sub_224A3B79C(0, &qword_281350880, 0x277CFA240);
    v23 = MEMORY[0x22AA5D380](a1, v22);
    v25 = sub_224A33F74(v23, v24, &v104);

    *(v20 + 4) = v25;
    a1 = v96;
    _os_log_impl(&dword_224A2F000, v17, v18, "Modify descriptor enablement requested: %{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x22AA5EED0](v21, -1, -1);
    MEMORY[0x22AA5EED0](v20, -1, -1);
  }

  v106 = 0;
  if (a1 >> 62)
  {
    v26 = sub_224DAF838();
  }

  else
  {
    v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager;
  v97 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
  swift_beginAccess();
  swift_beginAccess();
  if (v26)
  {
    v28 = 0;
    v90 = (a2 + v27);
    v92 = a1 & 0xC000000000000001;
    v91 = a1 & 0xFFFFFFFFFFFFFF8;
    v89 = (v12 + 1);
    v85 = *MEMORY[0x277CF9CC0];
    v84 = (v6 + 13);
    v83 = (v6 + 1);
    v88 = v26;
    while (1)
    {
      if (v92)
      {
        v29 = MEMORY[0x22AA5DCC0](v28, a1);
      }

      else
      {
        if (v28 >= *(v91 + 16))
        {
          goto LABEL_47;
        }

        v29 = *(a1 + 8 * v28 + 32);
      }

      v6 = v29;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v99 = v28 + 1;
      v30 = v90[4];
      __swift_project_boxed_opaque_existential_1(v90, v90[3]);
      v100 = v6;
      v31 = [v6 extensionBundleIdentifier];
      sub_224DAEE18();

      sub_224DA9FF8();
      v32 = v93;
      sub_224DAA278();
      sub_224DAC6C8();
      (*v89)(v32, v94);
      if (!v103)
      {
        break;
      }

      sub_224A36F98(&v102, &v104);
      v6 = v97;
      v12 = &qword_27D6F6C28;
      sub_224A3796C(a2 + v97, &v102, &qword_27D6F6C28, &qword_224DC1A38);
      v33 = v103;
      if (v103)
      {
        v34 = __swift_project_boxed_opaque_existential_1(&v102, v103);
        v35 = *(v33 - 8);
        v36 = *(v35 + 64);
        MEMORY[0x28223BE20](v34);
        v38 = v81 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v35 + 16))(v38);
        sub_224A3311C(&v102, &qword_27D6F6C28, &qword_224DC1A38);
        sub_224DAD5A8();
        (*(v35 + 8))(v38, v33);
        v39 = sub_224DACF78();

        __swift_project_boxed_opaque_existential_1(&v104, v105);
        v40 = sub_224DAE338();
        v41 = v40;
        if (*(v39 + 16) && (v42 = sub_224A3E7EC(v40), (v43 & 1) != 0))
        {
          v44 = *(*(v39 + 56) + 8 * v42);

          v98 = sub_224D4B200(v44, v100, &v106, &unk_2813509D0, 0x277CFA378);
        }

        else
        {

          v98 = MEMORY[0x277D84F90];
        }

        v12 = &qword_27D6F6C28;
      }

      else
      {
        sub_224A3311C(&v102, &qword_27D6F6C28, &qword_224DC1A38);
        v98 = MEMORY[0x277D84F90];
      }

      sub_224A3796C(v6 + a2, &v102, &qword_27D6F6C28, &qword_224DC1A38);
      v45 = v103;
      if (v103)
      {
        v46 = __swift_project_boxed_opaque_existential_1(&v102, v103);
        v47 = *(v45 - 8);
        v48 = *(v47 + 64);
        MEMORY[0x28223BE20](v46);
        v50 = v81 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v47 + 16))(v50);
        sub_224A3311C(&v102, &qword_27D6F6C28, &qword_224DC1A38);
        sub_224DAD5B8();
        (*(v47 + 8))(v50, v45);
        v51 = sub_224DACF78();

        __swift_project_boxed_opaque_existential_1(&v104, v105);
        v52 = sub_224DAE338();
        v53 = v52;
        if (*(v51 + 16) && (v54 = sub_224A3E7EC(v52), (v55 & 1) != 0))
        {
          v56 = *(*(v51 + 56) + 8 * v54);

          sub_224D4B200(v56, v100, &v106, &qword_2813509B8, 0x277CFA210);
        }

        else
        {
        }
      }

      else
      {
        sub_224A3311C(&v102, &qword_27D6F6C28, &qword_224DC1A38);
      }

      sub_224A3796C(v6 + a2, &v102, &qword_27D6F6C28, &qword_224DC1A38);
      v57 = v103;
      if (v103)
      {
        v58 = __swift_project_boxed_opaque_existential_1(&v102, v103);
        v59 = *(v57 - 8);
        v60 = *(v59 + 64);
        MEMORY[0x28223BE20](v58);
        v62 = v81 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v59 + 16))(v62);
        sub_224A3311C(&v102, &qword_27D6F6C28, &qword_224DC1A38);
        v63 = sub_224DAD608();
        (*(v59 + 8))(v62, v57);
        __swift_project_boxed_opaque_existential_1(&v104, v105);
        v64 = sub_224DAE338();
        v65 = v64;
        if (*(v63 + 16) && (v66 = sub_224A3E7EC(v64), (v67 & 1) != 0))
        {
          v68 = *(*(v63 + 56) + 8 * v66);
        }

        else
        {
        }

        v6 = v97;
      }

      else
      {
        sub_224A3311C(&v102, &qword_27D6F6C28, &qword_224DC1A38);
      }

      if (v106 == 1)
      {
        sub_224A3796C(v6 + a2, &v102, &qword_27D6F6C28, &qword_224DC1A38);
        if (v103)
        {
          sub_224A3317C(&v102, v101);
          sub_224A3311C(&v102, &qword_27D6F6C28, &qword_224DC1A38);
          __swift_project_boxed_opaque_existential_1(v101, v101[3]);
          v12 = v86;
          v6 = v87;
          (*v84)(v86, v85, v87);
          sub_224DAD638();

          (*v83)(v12, v6);
          __swift_destroy_boxed_opaque_existential_1(v101);
        }

        else
        {

          sub_224A3311C(&v102, &qword_27D6F6C28, &qword_224DC1A38);
        }
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_1(&v104);
      ++v28;
      a1 = v96;
      if (v99 == v88)
      {
        goto LABEL_40;
      }
    }

    sub_224A3311C(&v102, &unk_27D6F4700, &unk_224DB3A10);
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v72 = sub_224CBC42C(0x18u, 0, 0);
    swift_willThrow();

    v73 = v72;
    v74 = sub_224DAB228();
    v75 = sub_224DAF2A8();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v76 = 138543362;
      v78 = v73;
      v79 = _swift_stdlib_bridgeErrorToNSError();
      *(v76 + 4) = v79;
      *v77 = v79;
      _os_log_impl(&dword_224A2F000, v74, v75, "Modify descriptor enablement request failed with error: %{public}@", v76, 0xCu);
      sub_224A3311C(v77, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v77, -1, -1);
      MEMORY[0x22AA5EED0](v76, -1, -1);
    }

    v80 = v73;
    v82(v73);
  }

  else
  {
LABEL_40:
    v69 = sub_224DAB228();
    v70 = sub_224DAF2A8();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_224A2F000, v69, v70, "Modify descriptor enablement request completed successfully.", v71, 2u);
      MEMORY[0x22AA5EED0](v71, -1, -1);
    }

    v82(0);
  }
}

unint64_t sub_224D4B200(unint64_t result, void *a2, _BYTE *a3, unint64_t *a4, uint64_t *a5)
{
  v65 = MEMORY[0x277D84F90];
  if (result >> 62)
  {
    v51 = result;
    v8 = sub_224DAF838();
    result = v51;
    if (v8)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  v8 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v8 >= 1)
  {
    v60 = result & 0xC000000000000001;
    v9 = result;
    swift_beginAccess();
    v10 = v9;
    v11 = 0;
    v52 = "storefront change";
    v61 = v8;
    v62 = v9;
    v58 = a2;
    while (1)
    {
      if (v60)
      {
        v27 = MEMORY[0x22AA5DCC0](v11, v10);
      }

      else
      {
        v27 = *(v10 + 8 * v11 + 32);
      }

      v28 = v27;
      v29 = [v27 kind];
      v30 = sub_224DAEE18();
      v32 = v31;

      v33 = [a2 kind];
      v34 = sub_224DAEE18();
      v36 = v35;

      if (v30 == v34 && v32 == v36)
      {
      }

      else
      {
        v38 = sub_224DAFD88();

        if ((v38 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      if ([v28 wasEnablementExplicitlyDeclared])
      {
        [v28 mutableCopy];
        sub_224DAF758();
        swift_unknownObjectRelease();
        sub_224A3B79C(0, a4, a5);
        if (swift_dynamicCast())
        {
          v39 = v63;
          if ([a2 enabled])
          {
            v40 = 1;
          }

          else
          {
            v40 = 2;
          }

          [v39 setEnablement_];

          [v39 copy];
          sub_224DAF758();
          swift_unknownObjectRelease();
          v41 = swift_dynamicCast();
          MEMORY[0x22AA5D350](v41);
          if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v50 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_224DAF038();
          }

          sub_224DAF078();
          v42 = v65;
          if (qword_281351708 != -1)
          {
            swift_once();
          }

          v43 = sub_224DAB258();
          __swift_project_value_buffer(v43, qword_281365168);
          v44 = v28;
          v45 = a2;
          v46 = sub_224DAB228();
          v47 = sub_224DAF2A8();

          if (os_log_type_enabled(v46, v47))
          {
            v55 = v47;
            v12 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            v64[0] = v57;
            *v12 = 138543874;
            v13 = [v44 extensionIdentity];
            *(v12 + 4) = v13;
            *v53 = v13;
            *(v12 + 12) = 2082;
            v14 = a5;
            v15 = [v45 kind];
            v56 = v44;
            v16 = a4;
            v17 = sub_224DAEE18();
            v54 = v39;
            v19 = v18;

            v20 = v17;
            a4 = v16;
            v21 = sub_224A33F74(v20, v19, v64);

            *(v12 + 14) = v21;
            a5 = v14;
            *(v12 + 22) = 2082;
            v22 = [v45 enabled];
            v23 = v22 == 0;
            if (v22)
            {
              v24 = 0xD000000000000011;
            }

            else
            {
              v24 = 0xD000000000000012;
            }

            if (v23)
            {
              v25 = v52;
            }

            else
            {
              v25 = "explicitlyDisabled";
            }

            v26 = sub_224A33F74(v24, v25 | 0x8000000000000000, v64);

            *(v12 + 24) = v26;
            _os_log_impl(&dword_224A2F000, v46, v55, "Modifying %{public}@, %{public}s to: %{public}s", v12, 0x20u);
            sub_224A3311C(v53, &unk_27D6F69F0, &unk_224DB3900);
            MEMORY[0x22AA5EED0](v53, -1, -1);
            swift_arrayDestroy();
            MEMORY[0x22AA5EED0](v57, -1, -1);
            MEMORY[0x22AA5EED0](v12, -1, -1);
          }

          else
          {
          }

          v10 = v62;
          a2 = v58;
          *a3 = 1;
          goto LABEL_13;
        }
      }

LABEL_35:
      v48 = v28;
      MEMORY[0x22AA5D350]();
      if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v49 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_224DAF038();
      }

      sub_224DAF078();

      v42 = v65;
      v10 = v62;
LABEL_13:
      if (v61 == ++v11)
      {
        return v42;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_224D4B7DC(char a1, uint64_t a2, unint64_t a3)
{
  v73 = a3;
  v6 = sub_224DAB7B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAB848();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v72 = a2;
    v75 = *&v3[OBJC_IVAR____TtC10ChronoCore17DescriptorService_queue];
    v76 = v14;
    v17 = swift_allocObject();
    *(v17 + 16) = v3;
    v85 = sub_224D5BFC8;
    v86 = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    v84 = &block_descriptor_215;
    v18 = _Block_copy(aBlock);
    v77 = v3;
    sub_224DAB7E8();
    v78[0] = MEMORY[0x277D84F90];
    sub_224A39EF8(&qword_281350ED0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v16, v10, v18);
    _Block_release(v18);
    (*(v7 + 8))(v10, v6);
    (*(v12 + 8))(v16, v76);

    if (qword_281351708 != -1)
    {
      goto LABEL_40;
    }

    while (1)
    {
      v19 = sub_224DAB258();
      __swift_project_value_buffer(v19, qword_281365168);
      v20 = v73;

      v21 = sub_224DAB228();
      v22 = sub_224DAF2A8();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        aBlock[0] = v24;
        *v23 = 136446210;
        *(v23 + 4) = sub_224A33F74(v72, v20, aBlock);
        _os_log_impl(&dword_224A2F000, v21, v22, "Discover descriptors for reason: %{public}s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        MEMORY[0x22AA5EED0](v24, -1, -1);
        MEMORY[0x22AA5EED0](v23, -1, -1);
      }

      v25 = v77;
      v26 = MEMORY[0x277D84F90];
      v82 = MEMORY[0x277D84FA0];
      v27 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
      swift_beginAccess();
      sub_224A3796C(v25 + v27, aBlock, &qword_27D6F6C28, &qword_224DC1A38);
      v28 = v84;
      if (v84)
      {
        v29 = __swift_project_boxed_opaque_existential_1(aBlock, v84);
        v30 = *(v28 - 1);
        v31 = *(v30 + 64);
        MEMORY[0x28223BE20](v29);
        v33 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v30 + 16))(v33);
        sub_224A3311C(aBlock, &qword_27D6F6C28, &qword_224DC1A38);
        sub_224DAD598();
        (*(v30 + 8))(v33, v28);
        v34 = sub_224DACF58();

        v71 = v34;
        v82 = v34;
      }

      else
      {
        sub_224A3311C(aBlock, &qword_27D6F6C28, &qword_224DC1A38);
        v71 = MEMORY[0x277D84FA0];
      }

      v81 = v26;
      v42 = *(&v25[4].isa + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager);
      __swift_project_boxed_opaque_existential_1((&v25->isa + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager), *(&v25[3].isa + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager));
      v43 = sub_224DAC678();
      v44 = sub_224D563AC(v43, &v82);

      sub_224A85B54(v44);
      if (sub_224A48648())
      {
        v45 = sub_224DACF18();
      }

      else
      {
        v45 = 0;
      }

      if (sub_224A5B8B8())
      {
        v46 = sub_224DACF18();
      }

      else
      {
        v46 = 0;
      }

      sub_224D5726C(v45, v46);
      v48 = v47;

      v49 = v25;
      v50 = sub_224D56DEC(v48, v49);

      v76 = *(v50 + 16);
      if (!v76)
      {

        goto LABEL_37;
      }

      v70 = v49;
      v51 = 0;
      v74 = v50;
      v75 = v50 + 32;
LABEL_25:
      if (v51 < *(v50 + 16))
      {
        break;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      swift_once();
    }

    v77 = (&v51->isa + 1);
    sub_224A3317C(v75 + 40 * v51, aBlock);
    v59 = v81;
    v60 = (v81 + 4);
    v61 = -v81[2];
    v62 = -1;
    while (v61 + v62 != -1)
    {
      if (++v62 >= v59[2])
      {
        __break(1u);
        goto LABEL_39;
      }

      v63 = v60 + 40;
      sub_224A3317C(v60, v78);
      sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
      __swift_project_boxed_opaque_existential_1(v78, v79);
      v64 = sub_224DAE338();
      __swift_project_boxed_opaque_existential_1(aBlock, v84);
      v65 = sub_224DAE338();
      v66 = sub_224DAF6A8();

      __swift_destroy_boxed_opaque_existential_1(v78);
      v60 = v63;
      if (v66)
      {
        v50 = v74;
        goto LABEL_24;
      }
    }

    sub_224A3317C(aBlock, v78);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = v59;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v59 = sub_224A5C040(0, v59[2] + 1, 1, v59);
      v81 = v59;
    }

    v50 = v74;
    v69 = v59[2];
    v68 = v59[3];
    if (v69 >= v68 >> 1)
    {
      v59 = sub_224A5C040((v68 > 1), v69 + 1, 1, v59);
      v81 = v59;
    }

    v52 = v79;
    v53 = v80;
    v54 = __swift_mutable_project_boxed_opaque_existential_1(v78, v79);
    v55 = *(*(v52 - 8) + 64);
    MEMORY[0x28223BE20](v54);
    v57 = &v70 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v58 + 16))(v57);
    sub_224A5C064(v69, v57, &v81, v52, v53);
    __swift_destroy_boxed_opaque_existential_1(v78);
    v81 = v59;
LABEL_24:
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v51 = v77;
    if (v77 != v76)
    {
      goto LABEL_25;
    }

    v20 = v73;
LABEL_37:
    sub_224D4C850(v81, 1, v72, v20);
  }

  else
  {
    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v35 = sub_224DAB258();
    __swift_project_value_buffer(v35, qword_281365168);
    v36 = v73;

    v77 = sub_224DAB228();
    v37 = sub_224DAF2A8();

    if (os_log_type_enabled(v77, v37))
    {
      v38 = a2;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v39 = 136446210;
      *(v39 + 4) = sub_224A33F74(v38, v36, aBlock);
      _os_log_impl(&dword_224A2F000, v77, v37, "Ignoring request to discover descriptors because it was not user initiated for reason: %{public}s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x22AA5EED0](v40, -1, -1);
      MEMORY[0x22AA5EED0](v39, -1, -1);
    }

    else
    {
      v41 = v77;
    }
  }
}

uint64_t sub_224D4C278(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  sub_224DA9868();
  v6 = sub_224DA9878();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_lastUserInitiatedDiscovery;
  swift_beginAccess();
  sub_224A838C0(v5, a1 + v7, &qword_27D6F32B0, &qword_224DB3EA0);
  return swift_endAccess();
}

uint64_t sub_224D4C384(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v32 = a6;
  v33 = a5;
  v30 = a4;
  v29 = a3;
  v28 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27[-v12];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v14 = *(v31 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v31);
  v17 = &v27[-v16];
  (*(v10 + 16))(v13, a1, v9);
  sub_224A33088(&qword_281351920, &unk_27D6F3920, &qword_224DB35B0);
  sub_224A33088(&qword_2813518E0, &unk_27D6F3920, &qword_224DB35B0);
  sub_224A33088(&unk_281351910, &unk_27D6F3920, &qword_224DB35B0);
  sub_224A33088(&unk_281351900, &unk_27D6F3920, &qword_224DB35B0);
  sub_224DAA1D8();
  v18 = *&v7[OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager + 32];
  __swift_project_boxed_opaque_existential_1(&v7[OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager], *&v7[OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager + 24]);
  sub_224DAC6C8();
  if (v35)
  {
    sub_224A36F98(&v34, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3500, &qword_224DB3A98);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_224DB3100;
    sub_224A3317C(v36, inited + 32);
    v21 = v32;
    v20 = v33;
    sub_224A364AC(v33);
    sub_224D58DD8(inited, v28 & 1, v29, v30, v7, v20, v21);
    sub_224A3D418(v20);
    swift_setDeallocating();
    v22 = *(inited + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3508, &qword_224DB3AA0);
    swift_arrayDestroy();
    __swift_destroy_boxed_opaque_existential_1(v36);
    return (*(v14 + 8))(v17, v31);
  }

  else
  {
    v24 = v31;
    sub_224A3311C(&v34, &unk_27D6F4700, &unk_224DB3A10);
    v25 = v33;
    if (v33)
    {
      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      v26 = sub_224CBC42C(0x18u, 0, 0);
      (v25)(0, v26);
    }

    return (*(v14 + 8))(v17, v24);
  }
}

void sub_224D4C788(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_224DAF838())
    {
      goto LABEL_3;
    }
  }

  else if (*(a1 + 16))
  {
LABEL_3:
    if (a3)
    {
      v6 = sub_224D5D6B4(a1);
      if (v6)
      {
        v8 = v7;

        v6 = v8;
      }

      v9 = v6;
      a3();
    }

    return;
  }

  if (a3)
  {
    (a3)(0, a2);
  }
}

void sub_224D4C850(uint64_t a1, char a2, uint64_t a3, unint64_t a4)
{
  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v8 = sub_224DAB258();
  __swift_project_value_buffer(v8, qword_281365168);

  v9 = sub_224DAB228();
  v10 = sub_224DAF268();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19[0] = v18;
    *v11 = 136446466;
    *(v11 + 4) = sub_224A33F74(a3, a4, v19);
    *(v11 + 12) = 2082;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3508, &qword_224DB3AA0);
    v13 = MEMORY[0x22AA5D380](a1, v12);
    v15 = sub_224A33F74(v13, v14, v19);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_224A2F000, v9, v10, "Reloading descriptors for reason: %{public}s with extensions: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v18, -1, -1);
    MEMORY[0x22AA5EED0](v11, -1, -1);
  }

  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = a1 + 32;
    do
    {
      sub_224A3317C(v17, v19);
      sub_224A365A0(v19, a2 & 1, a3, a4, 0, 0);
      __swift_destroy_boxed_opaque_existential_1(v19);
      v17 += 40;
      --v16;
    }

    while (v16);
  }
}

uint64_t sub_224D4CA64()
{
  v1 = *(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager), *(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager + 24));
  result = sub_224DAC678();
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = 0;
    v6 = result + 32;
    v7 = MEMORY[0x277D84F90];
    while (v5 < *(v3 + 16))
    {
      sub_224A3317C(v6, &v15);
      __swift_project_boxed_opaque_existential_1(&v15, v16);
      v8 = sub_224DAE268();
      if (v8 && (v9 = v8, v10 = [v8 invalidatesOnStorefrontChange], v9, v10))
      {
        sub_224A36F98(&v15, v14);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_224ADA390(0, *(v7 + 16) + 1, 1);
          v7 = v17;
        }

        v13 = *(v7 + 16);
        v12 = *(v7 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_224ADA390((v12 > 1), v13 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v13 + 1;
        result = sub_224A36F98(v14, v7 + 40 * v13 + 32);
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1(&v15);
      }

      ++v5;
      v6 += 40;
      if (v4 == v5)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
LABEL_14:

    return v7;
  }

  return result;
}

uint64_t sub_224D4CBFC()
{
  v0 = sub_224D4CA64();
  if (*(v0 + 16))
  {
    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v1 = sub_224DAB258();
    __swift_project_value_buffer(v1, qword_281365168);

    v2 = sub_224DAB228();
    v3 = sub_224DAF2A8();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v11 = v5;
      *v4 = 136446210;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3508, &qword_224DB3AA0);
      v7 = MEMORY[0x22AA5D380](v0, v6);
      v9 = sub_224A33F74(v7, v8, &v11);

      *(v4 + 4) = v9;
      _os_log_impl(&dword_224A2F000, v2, v3, "Reloading descriptors for storefront change: %{public}s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x22AA5EED0](v5, -1, -1);
      MEMORY[0x22AA5EED0](v4, -1, -1);
    }

    sub_224D4C850(v0, 1, 0xD000000000000011, 0x8000000224DCFEA0);
  }
}

void sub_224D4CDBC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, dispatch_group_t a5, uint64_t a6)
{
  v96 = a3;
  v94 = a2;
  v11 = sub_224DAB7B8();
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = sub_224DAB848();
  v92 = *(isUniquelyReferenced_nonNull_native - 8);
  v17 = *(v92 + 64);
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  v91 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
  swift_beginAccess();
  v97 = v6;
  sub_224A3796C(&v6[v19], &aBlock, &qword_27D6F6C28, &qword_224DC1A38);
  if (!v103)
  {
    sub_224A3311C(&aBlock, &qword_27D6F6C28, &qword_224DC1A38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32D8, &qword_224DC1AB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_224DB3100;
    v27 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_224DAEE18();
    *(inited + 40) = v28;
    *(inited + 48) = 0xD00000000000001BLL;
    *(inited + 56) = 0x8000000224DCFE80;
    v29 = sub_224D9FE14(inited);
    swift_setDeallocating();
    sub_224A3311C(inited + 32, &qword_27D6F32E0, &unk_224DB65F0);
    v30 = a5;
    LOBYTE(aBlock) = 17;
    sub_224B67B98();
    sub_224B67BEC();
    sub_224B67C40();
    v31 = sub_224DA93D8();
    sub_224D9F01C(v29);

    v32 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v33 = sub_224DAEDE8();
    v34 = sub_224DAECC8();

    v35 = [v32 initWithDomain:v33 code:v31 userInfo:v34];

    v36 = sub_224DA1CC8(MEMORY[0x277D84F90]);
    v37 = v35;
    v30(v36, v35);

    return;
  }

  v87 = v12;
  sub_224A36F98(&aBlock, &v106);
  if (qword_281351708 != -1)
  {
LABEL_43:
    swift_once();
  }

  v20 = sub_224DAB258();
  __swift_project_value_buffer(v20, qword_281365168);

  v21 = sub_224DAB228();
  v22 = sub_224DAF2A8();

  v23 = os_log_type_enabled(v21, v22);
  v90 = a6;
  v89 = a5;
  v88 = v11;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&aBlock = v25;
    *v24 = 134349314;
    *(v24 + 4) = *(a1 + 16);

    *(v24 + 12) = 2082;
    *(v24 + 14) = sub_224A33F74(v96, a4, &aBlock);
    _os_log_impl(&dword_224A2F000, v21, v22, "Fetching descriptors for %{public}ld extensions with reason: %{public}s", v24, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x22AA5EED0](v25, -1, -1);
    MEMORY[0x22AA5EED0](v24, -1, -1);
  }

  else
  {
  }

  v85 = v15;
  v86 = isUniquelyReferenced_nonNull_native;
  a5 = dispatch_group_create();
  v38 = swift_allocObject();
  v39 = MEMORY[0x277D84F98];
  v95 = v38;
  *(v38 + 16) = MEMORY[0x277D84F98];
  v40 = (v38 + 16);
  v98 = swift_allocObject();
  *(v98 + 16) = v39;
  a6 = *(a1 + 16);
  if (!a6)
  {
LABEL_39:
    v73 = MEMORY[0x277D84F90];
    v74 = v97;
    v75 = *&v97[OBJC_IVAR____TtC10ChronoCore17DescriptorService_queue];
    v76 = swift_allocObject();
    v77 = v98;
    v76[2] = v74;
    v76[3] = v77;
    v78 = v89;
    v76[4] = v95;
    v76[5] = v78;
    v76[6] = v90;
    v104 = sub_224D5BE1C;
    v105 = v76;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v102 = sub_224A39F40;
    v103 = &block_descriptor_171_0;
    v79 = _Block_copy(&aBlock);

    v80 = v74;

    v81 = v91;
    sub_224DAB7E8();
    v100 = v73;
    sub_224A39EF8(&qword_281350ED0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    v82 = v85;
    v83 = v88;
    sub_224DAF788();
    sub_224DAF308();
    _Block_release(v79);

    (*(v87 + 8))(v82, v83);
    (*(v92 + 8))(v81, v86);

    __swift_destroy_boxed_opaque_existential_1(&v106);
    return;
  }

  a1 += 32;
  v93 = a4;
  while (1)
  {
    sub_224A3317C(a1, &aBlock);
    __swift_project_boxed_opaque_existential_1(&aBlock, v103);
    v44 = sub_224DAE338();
    __swift_project_boxed_opaque_existential_1(&v106, v107);
    if ((sub_224DAD5D8() & 1) == 0)
    {
      dispatch_group_enter(a5);
      v41 = swift_allocObject();
      v41[2] = v95;
      v41[3] = v44;
      v41[4] = v98;
      v41[5] = a5;
      v42 = v44;

      v43 = a5;
      sub_224A365A0(&aBlock, v94 & 1, v96, a4, sub_224D5BE10, v41);

      goto LABEL_10;
    }

    __swift_project_boxed_opaque_existential_1(&v106, v107);
    sub_224DAD5A8();
    v45 = sub_224DACF78();

    if (*(v45 + 16))
    {
      v46 = sub_224A3E7EC(v44);
      if (v47)
      {
        v48 = *(*(v45 + 56) + 8 * v46);
      }
    }

    __swift_project_boxed_opaque_existential_1(&v106, v107);
    v49 = sub_224DAD5F8();
    if (*(v49 + 16))
    {
      v50 = sub_224A3E7EC(v44);
      if (v51)
      {
        v52 = *(*(v49 + 56) + 8 * v50);
      }
    }

    v15 = v108;
    __swift_project_boxed_opaque_existential_1(&v106, v107);
    v53 = sub_224DAD608();
    if (*(v53 + 16) && (v54 = sub_224A3E7EC(v44), (v55 & 1) != 0))
    {
      isUniquelyReferenced_nonNull_native = *(*(v53 + 56) + 8 * v54);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
    }

    sub_224DAE9F8();
    v11 = v44;
    a4 = sub_224DAE9B8();
    swift_beginAccess();
    v56 = *v40;
    if ((*v40 & 0xC000000000000001) != 0)
    {
      if (v56 < 0)
      {
        v57 = *v40;
      }

      else
      {
        v57 = v56 & 0xFFFFFFFFFFFFFF8;
      }

      v58 = sub_224DAF838();
      if (__OFADD__(v58, 1))
      {
        goto LABEL_41;
      }

      *v40 = sub_224D2CDB4(v57, v58 + 1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v99 = *v40;
    v59 = v99;
    *v40 = 0x8000000000000000;
    v15 = sub_224A3E7EC(v11);
    v61 = v59[2];
    v62 = (v60 & 1) == 0;
    v63 = v61 + v62;
    if (__OFADD__(v61, v62))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v64 = v60;
    if (v59[3] >= v63)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_224B27EA4();
      }

      goto LABEL_34;
    }

    sub_224B13F9C(v63, isUniquelyReferenced_nonNull_native);
    v65 = sub_224A3E7EC(v11);
    if ((v64 & 1) != (v66 & 1))
    {
      break;
    }

    v15 = v65;
LABEL_34:
    v67 = v99;
    if (v64)
    {
      v68 = v99[7];
      v69 = *(v68 + 8 * v15);
      *(v68 + 8 * v15) = a4;
    }

    else
    {
      v99[(v15 >> 6) + 8] |= 1 << v15;
      *(v67[6] + 8 * v15) = v11;
      *(v67[7] + 8 * v15) = a4;
      v70 = v67[2];
      v71 = __OFADD__(v70, 1);
      v72 = v70 + 1;
      if (v71)
      {
        goto LABEL_42;
      }

      v67[2] = v72;
    }

    *v40 = v67;
    swift_endAccess();

    a4 = v93;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    a1 += 40;
    if (!--a6)
    {
      goto LABEL_39;
    }
  }

  sub_224DAF538();
  sub_224DAFDD8();
  __break(1u);
}

void sub_224D4D924(void *a1, void *a2, uint64_t a3, void *a4, int a5, dispatch_group_t group)
{
  if (a1)
  {
    swift_beginAccess();
    v11 = *(a3 + 16);
    if ((v11 & 0xC000000000000001) != 0)
    {
      if (v11 < 0)
      {
        v12 = *(a3 + 16);
      }

      else
      {
        v12 = v11 & 0xFFFFFFFFFFFFFF8;
      }

      v13 = a1;
      v14 = sub_224DAF838();
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return;
      }

      *(a3 + 16) = sub_224D2CDB4(v12, v14 + 1);
    }

    else
    {
      v15 = *(a3 + 16);
      v13 = a1;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(a3 + 16);
    sub_224A59194(v13, a4, isUniquelyReferenced_nonNull_native);
    *(a3 + 16) = v18;
    swift_endAccess();
  }

  if (a2)
  {
    swift_beginAccess();
    v17 = a2;
    sub_224B09A8C(a2, a4);
    swift_endAccess();
  }

  dispatch_group_leave(group);
}

void sub_224D4DA58(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void))
{
  swift_beginAccess();
  v7 = *(a2 + 16);

  v9 = sub_224A5988C(v8);

  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v10 = sub_224DAB258();
  __swift_project_value_buffer(v10, qword_281365168);
  v11 = v9;

  v12 = sub_224DAB228();
  v13 = sub_224DAF2A8();

  if (os_log_type_enabled(v12, v13))
  {
    v28 = a4;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 134349314;
    swift_beginAccess();
    v16 = *(a3 + 16);
    if ((v16 & 0xC000000000000001) != 0)
    {
      if (v16 < 0)
      {
        v17 = *(a3 + 16);
      }

      v18 = *(a3 + 16);

      v19 = sub_224DAF838();
    }

    else
    {
      v19 = *(v16 + 16);
    }

    *(v14 + 4) = v19;

    *(v14 + 12) = 2082;
    if (v9)
    {
      v20 = [v11 debugDescription];
      v21 = sub_224DAEE18();
      v23 = v22;
    }

    else
    {
      v23 = 0xE300000000000000;
      v21 = 7104878;
    }

    v24 = sub_224A33F74(v21, v23, &v29);

    *(v14 + 14) = v24;
    _os_log_impl(&dword_224A2F000, v12, v13, "Received descriptors for %{public}ld extensions from descriptor service with error: %{public}s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x22AA5EED0](v15, -1, -1);
    MEMORY[0x22AA5EED0](v14, -1, -1);

    a4 = v28;
  }

  else
  {
  }

  swift_beginAccess();
  v25 = *(a3 + 16);
  v26 = v11;

  a4(v27, v9);
}

uint64_t sub_224D4DCFC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (sub_224A48648())
  {
    v6 = sub_224DACF18();
  }

  else
  {
    v6 = 0;
  }

  if (sub_224A5B8B8())
  {
    v7 = sub_224DACF18();
  }

  else
  {
    v7 = 0;
  }

  sub_224D5726C(v6, v7);
  v9 = v8;

  v10 = v3;
  v11 = sub_224D56DEC(v9, v10);

  sub_224A3796C(v10 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_userManager, v41, &unk_27D6F5418, &qword_224DBBB48);
  if (!v42)
  {
    v26 = &unk_27D6F5418;
    v27 = &qword_224DBBB48;
    v28 = v41;
LABEL_19:
    sub_224A3311C(v28, v26, v27);
    goto LABEL_20;
  }

  v12 = [*(*__swift_project_boxed_opaque_existential_1(v41 v42) + 16)];
  __swift_destroy_boxed_opaque_existential_1(v41);
  if (v12)
  {
    v13 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
    swift_beginAccess();
    sub_224A3796C(v10 + v13, &v39, &qword_27D6F6C28, &qword_224DC1A38);
    if (v40)
    {
      v14 = sub_224A36F98(&v39, v41);
      MEMORY[0x28223BE20](v14);
      v38[2] = v41;
      v15 = sub_224C5CCE8(sub_224D5BDF0, v38, v11);
      if (*(v15 + 16))
      {
        if (qword_281351708 != -1)
        {
          swift_once();
        }

        v16 = sub_224DAB258();
        __swift_project_value_buffer(v16, qword_281365168);

        v17 = sub_224DAB228();
        v18 = sub_224DAF2A8();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          *&v39 = v20;
          *v19 = 136446466;
          *(v19 + 4) = sub_224A33F74(a1, a2, &v39);
          *(v19 + 12) = 2082;
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3508, &qword_224DB3AA0);
          v22 = MEMORY[0x22AA5D380](v15, v21);
          v24 = sub_224A33F74(v22, v23, &v39);

          *(v19 + 14) = v24;
          _os_log_impl(&dword_224A2F000, v17, v18, "Reloading descriptors with unresolved default intents for filtered extensions in EDU mode for reason: %{public}s: %{public}s", v19, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AA5EED0](v20, -1, -1);
          MEMORY[0x22AA5EED0](v19, -1, -1);
        }

        sub_224D4C850(v15, 1, a1, a2);
      }

      return __swift_destroy_boxed_opaque_existential_1(v41);
    }

    v26 = &qword_27D6F6C28;
    v27 = &qword_224DC1A38;
    v28 = &v39;
    goto LABEL_19;
  }

LABEL_20:
  if (*(v11 + 16))
  {
    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v29 = sub_224DAB258();
    __swift_project_value_buffer(v29, qword_281365168);

    v30 = sub_224DAB228();
    v31 = sub_224DAF2A8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v41[0] = v33;
      *v32 = 136446466;
      *(v32 + 4) = sub_224A33F74(a1, a2, v41);
      *(v32 + 12) = 2082;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3508, &qword_224DB3AA0);
      v35 = MEMORY[0x22AA5D380](v11, v34);
      v37 = sub_224A33F74(v35, v36, v41);

      *(v32 + 14) = v37;
      _os_log_impl(&dword_224A2F000, v30, v31, "Reloading descriptors with unresolved default intents for extensions for reason: %{public}s: %{public}s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v33, -1, -1);
      MEMORY[0x22AA5EED0](v32, -1, -1);
    }

    sub_224D4C850(v11, 1, a1, a2);
  }
}

uint64_t sub_224D4E244(void *a1, void *a2)
{
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v4 = sub_224DAD5F8();
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_224DAE338();
  v7 = v6;
  if (*(v4 + 16) && (sub_224A3E7EC(v6), (v8 & 1) != 0))
  {

    v9 = sub_224DAD5F8();
    v10 = sub_224DAE338();
    v11 = v10;
    if (*(v9 + 16) && (v12 = sub_224A3E7EC(v10), (v13 & 1) != 0))
    {
      v14 = *(*(v9 + 56) + 8 * v12);

      v15 = sub_224C91694(v14, MEMORY[0x277D84F90]);

      v16 = v15 ^ 1;
    }

    else
    {

      v16 = 1;
    }
  }

  else
  {

    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_224D4E3B4(void *a1, void *a2)
{
  v3 = v2;
  v68 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3380, &qword_224DB3598);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v65 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v69 = *(v9 - 8);
  v10 = *(v69 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v65 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D0, &unk_224DBD6D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v65 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = sub_224DAE338();
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_224DAE238())
  {
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if ((sub_224DAE368() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22 = sub_224DAE338();
  v23 = [v22 isRemote];

  if (v23)
  {
    goto LABEL_20;
  }

  v24 = *(v3 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_hostService + 24);
  v25 = *(v3 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_hostService + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_hostService), v24);
  (*(v25 + 32))(v70, 768, v24, v25);
  v26 = MEMORY[0x277CFA138];
  v66 = v18;
  v67 = v3;
  if (v70[5])
  {
    v27 = *MEMORY[0x277CFA138];
    swift_beginAccess();
    v65 = v12;
    v28 = v69;
    (*(v69 + 16))(v65, &v18[v27], v9);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
    (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
    v30 = type metadata accessor for HostDescriptorPredicate();
    v16[v30[5]] = 3;
    v16[v30[6]] = 3;
    v31 = v30[7];
    v32 = *(v28 + 56);
    v32(&v16[v31], 1, 1, v9);
    v33 = v30[8];
    v34 = sub_224DABE18();
    (*(*(v34 - 8) + 56))(&v16[v33], 1, 1, v34);
    v35 = v30[9];
    v36 = sub_224DAC268();
    (*(*(v36 - 8) + 56))(&v16[v35], 1, 1, v36);
    v37 = &v16[v30[10]];
    *v37 = 0;
    v37[8] = 1;
    sub_224A3311C(&v16[v31], &unk_27D6F6140, qword_224DBB6B0);
    v38 = v28;
    v12 = v65;
    (*(v38 + 32))(&v16[v31], v65, v9);
    v32(&v16[v31], 0, 1, v9);
    (*(*(v30 - 1) + 56))(v16, 0, 1, v30);
    v39 = sub_224A6BAF8(v16);
    if (v39)
    {
      if (v39 >> 62)
      {
        v40 = sub_224DAF838();
      }

      else
      {
        v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = v66;
      v3 = v67;
      v26 = MEMORY[0x277CFA138];

      sub_224A3311C(v16, &qword_27D6F46D0, &unk_224DBD6D0);
      sub_224A699F0(v70);
      if (v40)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_224A3311C(v16, &qword_27D6F46D0, &unk_224DBD6D0);
      sub_224A699F0(v70);
      v18 = v66;
      v3 = v67;
      v26 = MEMORY[0x277CFA138];
    }
  }

  else
  {
    sub_224A3311C(v70, &qword_27D6F50E0, &qword_224DB41A0);
  }

  v41 = *(v3 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_controlHostService + 24);
  v42 = *(v3 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_controlHostService + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_controlHostService), v41);
  v65 = (*(v42 + 24))(768, v41, v42);
  if (v65)
  {
    v43 = *v26;
    swift_beginAccess();
    v44 = v12;
    v45 = v69;
    (*(v69 + 16))(v44, &v18[v43], v9);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
    (*(*(v46 - 8) + 56))(v8, 1, 1, v46);
    v47 = type metadata accessor for ControlHostDescriptorPredicate();
    v8[v47[5]] = 3;
    v8[v47[6]] = 3;
    v48 = v47[7];
    v49 = *(v45 + 56);
    v49(&v8[v48], 1, 1, v9);
    v50 = v47[8];
    v51 = sub_224DAC2B8();
    (*(*(v51 - 8) + 56))(&v8[v50], 1, 1, v51);
    sub_224A3311C(&v8[v48], &unk_27D6F6140, qword_224DBB6B0);
    (*(v45 + 32))(&v8[v48], v44, v9);
    v49(&v8[v48], 0, 1, v9);
    v52 = (*(*(v47 - 1) + 56))(v8, 0, 1, v47);
    if (*(v65 + 16))
    {
      MEMORY[0x28223BE20](v52);
      *(&v65 - 2) = v8;
      v53 = v65;

      v54 = sub_224A6CD14(sub_224ACFDF4, (&v65 - 4), v53);
      v55 = sub_224D44404(v54);

      MEMORY[0x28223BE20](v56);
      *(&v65 - 2) = v8;
      v57 = sub_224A4ECE8(sub_224ACFE14, (&v65 - 4), v55);
      if (v57 >> 62)
      {
        v58 = sub_224DAF838();
      }

      else
      {
        v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = v66;
      v3 = v67;

      sub_224A3311C(v8, &qword_27D6F3380, &qword_224DB3598);
      if (v58)
      {
        goto LABEL_20;
      }
    }

    else
    {

      sub_224A3311C(v8, &qword_27D6F3380, &qword_224DB3598);
      v18 = v66;
      v3 = v67;
    }
  }

  v59 = v68[4];
  __swift_project_boxed_opaque_existential_1(v68, v68[3]);
  if ((sub_224DAD5D8() & 1) == 0)
  {
    v62 = (v3 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_preferences);
    swift_beginAccess();
    v63 = *__swift_project_boxed_opaque_existential_1(v62, v62[3]);
    v64 = sub_224CB986C();
    v60 = sub_224CD6B48(v18, v64);

    return v60 & 1;
  }

LABEL_20:

  v60 = 1;
  return v60 & 1;
}

void sub_224D4EC94(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v71 - v6;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v75 = *(v82 - 8);
  v8 = *(v75 + 64);
  MEMORY[0x28223BE20](v82);
  v79 = &v71 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6C48, &qword_224DC1A88);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = (&v71 - v12);
  v14 = *(v1 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_queue);
  BSDispatchQueueAssert();
  if (qword_281351708 != -1)
  {
LABEL_55:
    swift_once();
  }

  v15 = sub_224DAB258();
  v16 = __swift_project_value_buffer(v15, qword_281365168);

  v78 = v16;
  v17 = sub_224DAB228();
  v18 = sub_224DAF2A8();

  v19 = os_log_type_enabled(v17, v18);
  v80 = v7;
  v81 = a1;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v86[0] = v21;
    *v20 = 136446210;
    v77 = v20;
    v76 = v21;
    if (a1)
    {
      LODWORD(v72) = v18;
      v74 = v13;
      if (a1 >> 62)
      {
        v22 = sub_224DAF838();
      }

      else
      {
        v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v23 = MEMORY[0x277D84F90];
      if (v22)
      {
        v71 = v17;
        v73 = v2;
        *&v84 = MEMORY[0x277D84F90];
        sub_224A3DFD8(0, v22 & ~(v22 >> 63), 0);
        if (v22 < 0)
        {
          __break(1u);
          return;
        }

        v24 = 0;
        v23 = v84;
        v25 = a1 & 0xC000000000000001;
        do
        {
          if (v25)
          {
            v26 = MEMORY[0x22AA5DCC0](v24, a1);
          }

          else
          {
            v26 = *(a1 + 8 * v24 + 32);
          }

          v27 = v26;
          v28 = [v27 description];
          v29 = sub_224DAEE18();
          v31 = v30;

          *&v84 = v23;
          v33 = *(v23 + 16);
          v32 = *(v23 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_224A3DFD8((v32 > 1), v33 + 1, 1);
            v23 = v84;
          }

          ++v24;
          *(v23 + 16) = v33 + 1;
          v34 = v23 + 16 * v33;
          *(v34 + 32) = v29;
          *(v34 + 40) = v31;
          a1 = v81;
        }

        while (v22 != v24);
        v2 = v73;
        v17 = v71;
      }

      *&v84 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
      sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0);
      v35 = sub_224DAEDA8();
      v37 = v36;

      v13 = v74;
      LOBYTE(v18) = v72;
    }

    else
    {
      v37 = 0xED0000656C61636FLL;
      v35 = 0x6C206D6574737973;
    }

    v38 = sub_224A33F74(v35, v37, v86);

    v39 = v77;
    *(v77 + 4) = v38;
    _os_log_impl(&dword_224A2F000, v17, v18, "Received locale changed notification: %{public}s", v39, 0xCu);
    v40 = v76;
    __swift_destroy_boxed_opaque_existential_1(v76);
    MEMORY[0x22AA5EED0](v40, -1, -1);
    MEMORY[0x22AA5EED0](v39, -1, -1);
  }

  v41 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
  swift_beginAccess();
  sub_224A3796C(v2 + v41, &v84, &qword_27D6F6C28, &qword_224DC1A38);
  if (v85)
  {
    sub_224A36F98(&v84, v86);
    v42 = sub_224A3B79C(0, &qword_27D6F6C50, 0x277CBEAF8);
    sub_224DAF678();
    v83 = MEMORY[0x277D84F90];
    __swift_project_boxed_opaque_existential_1(v86, v86[3]);
    sub_224DAD598();
    v7 = sub_224DACF78();

    if (a1)
    {
      v72 = v42;
      v74 = v13;
      v73 = v2;
      v2 = (v7 + 64);
      v43 = 1 << v7[32];
      v44 = -1;
      if (v43 < 64)
      {
        v44 = ~(-1 << v43);
      }

      v45 = v44 & *(v7 + 8);
      v46 = (v43 + 63) >> 6;

      v48 = 0;
      v13 = 0;
      while (v45)
      {
LABEL_30:
        v50 = (v48 << 9) | (8 * __clz(__rbit64(v45)));
        v51 = *(*(v7 + 7) + v50);
        *&v84 = *(*(v7 + 6) + v50);
        MEMORY[0x28223BE20](v47);
        *(&v71 - 2) = &v84;
        a1 = v52;

        if (sub_224B449EC(sub_224D5BDCC, &(&v71)[-4], v81))
        {

          sub_224B42A18(v53);
        }

        v45 &= v45 - 1;
      }

      while (1)
      {
        v49 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        if (v49 >= v46)
        {
          break;
        }

        v45 = *(v2 + 8 * v49);
        ++v48;
        if (v45)
        {
          v48 = v49;
          goto LABEL_30;
        }
      }

      v2 = v83;
      if (v83 >> 62)
      {
        v81 = sub_224DAF838();
        if (v81)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v81 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v81)
        {
LABEL_34:
          v54 = 0;
          v77 = v2 & 0xFFFFFFFFFFFFFF8;
          v78 = v2 & 0xC000000000000001;
          v55 = (v75 + 48);
          v76 = (v75 + 32);
          v13 = MEMORY[0x277D84F90];
          while (1)
          {
            if (v78)
            {
              v56 = MEMORY[0x22AA5DCC0](v54, v2);
            }

            else
            {
              if (v54 >= *(v77 + 16))
              {
                goto LABEL_54;
              }

              v56 = *(v2 + 8 * v54 + 32);
            }

            a1 = v56;
            v7 = (v54 + 1);
            if (__OFADD__(v54, 1))
            {
              goto LABEL_53;
            }

            v57 = [v56 extensionIdentity];

            v58 = *MEMORY[0x277CFA130];
            swift_beginAccess();
            v59 = v57 + v58;
            v60 = v80;
            sub_224A3796C(v59, v80, &unk_27D6F5060, &qword_224DB5620);

            a1 = v82;
            if ((*v55)(v60, 1, v82) == 1)
            {
              sub_224A3311C(v60, &unk_27D6F5060, &qword_224DB5620);
            }

            else
            {
              v61 = *v76;
              (*v76)(v79, v60, a1);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v13 = sub_224AD9A3C(0, v13[2].isa + 1, 1, v13);
              }

              isa = v13[2].isa;
              v62 = v13[3].isa;
              a1 = isa + 1;
              if (isa >= v62 >> 1)
              {
                v13 = sub_224AD9A3C(v62 > 1, isa + 1, 1, v13);
              }

              v13[2].isa = a1;
              v61(v13 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * isa, v79);
            }

            ++v54;
            if (v7 == v81)
            {
              goto LABEL_58;
            }
          }
        }
      }

      v13 = MEMORY[0x277D84F90];
LABEL_58:
      v69 = MEMORY[0x22AA5D9D0](v13);

      MEMORY[0x28223BE20](v70);
      v13 = v74;
      *(&v71 - 2) = v69;
      *(&v71 - 1) = v13;
      sub_224D4F6FC(v2, sub_224D5BDE8, &(&v71)[-4], v73);
    }

    else
    {
      sub_224D44060(v7, &v83);

      v68 = v83;
      MEMORY[0x28223BE20](v67);
      *(&v71 - 2) = v13;
      sub_224D4F6FC(v68, sub_224D5BD9C, &(&v71)[-4], v2);
    }

    sub_224A3311C(v13, &qword_27D6F6C48, &qword_224DC1A88);
    __swift_destroy_boxed_opaque_existential_1(v86);
  }

  else
  {
    sub_224A3311C(&v84, &qword_27D6F6C28, &qword_224DC1A38);
    v64 = sub_224DAB228();
    v65 = sub_224DAF288();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_224A2F000, v64, v65, "Waiting for descriptor cache", v66, 2u);
      MEMORY[0x22AA5EED0](v66, -1, -1);
    }
  }
}

uint64_t sub_224D4F6FC(unint64_t a1, char *a2, uint64_t (*a3)(char *, uint64_t, uint64_t), uint64_t a4)
{
  v38[1] = a4;
  *&v42 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_28:
    v8 = sub_224DAF838();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = 0;
    v11 = a1 & 0xC000000000000001;
    v12 = a1 & 0xFFFFFFFFFFFFFF8;
    v39 = a1 & 0xC000000000000001;
    do
    {
      if (v11)
      {
        v13 = MEMORY[0x22AA5DCC0](v10, a1);
      }

      else
      {
        if (v10 >= *(v12 + 16))
        {
          goto LABEL_27;
        }

        v13 = *(a1 + 8 * v10 + 32);
      }

      v4 = v13;
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      *&v41[0] = v13;
      if (sub_224D4FB30(v41, a2, a3))
      {
        v40 = 0;
        sub_224DAF9B8();
        v15 = v12;
        v16 = v8;
        v17 = *(v42 + 16);
        sub_224DAF9F8();
        v8 = v16;
        v12 = v15;
        sub_224DAFA08();
        sub_224DAF9C8();
        v11 = v39;
      }

      else
      {
      }

      ++v10;
    }

    while (v14 != v8);
    v18 = v42;
    v9 = MEMORY[0x277D84F90];
    if ((v42 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

  v18 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_29;
  }

LABEL_17:
  if ((v18 & 0x4000000000000000) != 0)
  {
LABEL_29:
    v19 = sub_224DAF838();
    if (!v19)
    {
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  v19 = *(v18 + 16);
  if (!v19)
  {
LABEL_30:

    v25 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

LABEL_19:
  *&v42 = v9;
  sub_224DAF9E8();
  if (v19 < 0)
  {
LABEL_47:
    __break(1u);

    __break(1u);
    return result;
  }

  v20 = 0;
  v4 = &off_27853F000;
  do
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x22AA5DCC0](v20, v18);
    }

    else
    {
      v21 = *(v18 + 8 * v20 + 32);
    }

    v22 = v21;
    ++v20;
    v23 = [v21 extensionIdentity];

    sub_224DAF9B8();
    v24 = *(v42 + 16);
    sub_224DAF9F8();
    sub_224DAFA08();
    sub_224DAF9C8();
  }

  while (v19 != v20);

  v25 = v42;
LABEL_31:
  v26 = sub_224D53BF0();
  v27 = v26;
  v28 = *(v26 + 16);
  if (v28)
  {
    v29 = 0;
    v30 = v26 + 32;
    v31 = MEMORY[0x277D84F90];
    while (v29 < *(v27 + 16))
    {
      sub_224A3317C(v30, &v42);
      __swift_project_boxed_opaque_existential_1(&v42, v43);
      v32 = sub_224DAE338();
      v4 = v38;
      *&v41[0] = v32;
      MEMORY[0x28223BE20](v32);
      v37[2] = v41;
      v33 = sub_224B449EC(sub_224D5C320, v37, v25);

      if (v33)
      {
        sub_224A36F98(&v42, v41);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_224ADA390(0, *(v31 + 16) + 1, 1);
          v31 = v44;
        }

        v4 = *(v31 + 16);
        v35 = *(v31 + 24);
        if (v4 >= v35 >> 1)
        {
          sub_224ADA390((v35 > 1), v4 + 1, 1);
          v31 = v44;
        }

        *(v31 + 16) = v4 + 1;
        sub_224A36F98(v41, v31 + 40 * v4 + 32);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(&v42);
      }

      ++v29;
      v30 += 40;
      if (v28 == v29)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
    goto LABEL_47;
  }

  v31 = MEMORY[0x277D84F90];
LABEL_43:

  if (*(v31 + 16))
  {
    sub_224D4C850(v31, 1, 0x6320656C61636F6CLL, 0xEE006465676E6168);
  }
}

uint64_t sub_224D4FB30(id *a1, char *a2, uint64_t (*a3)(char *, uint64_t, uint64_t))
{
  v84 = a3;
  v85 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v80 = *(v4 - 8);
  v81 = v4;
  v5 = *(v80 + 64);
  MEMORY[0x28223BE20](v4);
  v79 = &v73 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6C48, &qword_224DC1A88);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v82 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v83 = &v73 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v73 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v73 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v73 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v73 - v25;
  v86 = *a1;
  v27 = [v86 extensionIdentity];
  v28 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224A3796C(v27 + v28, v21, &unk_27D6F5060, &qword_224DB5620);

  v29 = v22;
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_224A3311C(v21, &unk_27D6F5060, &qword_224DB5620);
    return 0;
  }

  v78 = v23;
  (*(v23 + 32))(v26, v21, v22);
  (v85)(v26);
  sub_224A3796C(v17, v15, &qword_27D6F6C48, &qword_224DC1A88);
  v30 = sub_224DAD318();
  v31 = *(v30 - 8);
  v84 = *(v31 + 48);
  v32 = v84(v15, 1, v30);
  v85 = v26;
  v77 = v31;
  if (v32 == 1)
  {
    sub_224A3311C(v15, &qword_27D6F6C48, &qword_224DC1A88);
    v33 = 0;
    v34 = 0xF000000000000000;
  }

  else
  {
    v33 = sub_224DAD308();
    v34 = v35;
    (*(v31 + 8))(v15, v30);
  }

  v36 = v86;
  v37 = sub_224DAF2D8();
  sub_224AC1D9C(v33, v34);
  if (v37)
  {
    sub_224A3311C(v17, &qword_27D6F6C48, &qword_224DC1A88);
    (*(v78 + 8))(v85, v29);
    return 0;
  }

  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v39 = sub_224DAB258();
  __swift_project_value_buffer(v39, qword_281365168);
  v40 = v83;
  sub_224A3796C(v17, v83, &qword_27D6F6C48, &qword_224DC1A88);
  v41 = v36;
  v42 = sub_224DAB228();
  v43 = sub_224DAF2A8();

  if (os_log_type_enabled(v42, v43))
  {
    v74 = v43;
    v75 = v42;
    v76 = v17;
    v86 = v29;
    v44 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v87 = v73;
    *v44 = 136446722;
    v45 = [v41 extensionIdentity];
    v46 = *MEMORY[0x277CFA138];
    swift_beginAccess();
    v48 = v79;
    v47 = v80;
    v49 = v81;
    (*(v80 + 16))(v79, &v45[v46], v81);

    sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0);
    v50 = sub_224DAFD28();
    v52 = v51;
    (*(v47 + 8))(v48, v49);
    v53 = sub_224A33F74(v50, v52, &v87);

    *(v44 + 4) = v53;
    *(v44 + 12) = 2082;
    v54 = [v41 localeToken];
    if (v54)
    {
      v55 = v54;
      v56 = sub_224DA96D8();
      v58 = v57;

      v59 = sub_224DA96C8();
      v61 = v60;
      sub_224A78024(v56, v58);
    }

    else
    {
      v61 = 0xE300000000000000;
      v59 = 7104878;
    }

    v62 = sub_224A33F74(v59, v61, &v87);

    *(v44 + 14) = v62;
    *(v44 + 22) = 2082;
    v63 = v82;
    v64 = v83;
    sub_224A3796C(v83, v82, &qword_27D6F6C48, &qword_224DC1A88);
    if (v84(v63, 1, v30) == 1)
    {
      sub_224A3311C(v63, &qword_27D6F6C48, &qword_224DC1A88);
      v65 = 0xE300000000000000;
      v66 = v85;
      v67 = v74;
      v68 = 7104878;
    }

    else
    {
      v68 = sub_224DAD2F8();
      v65 = v69;
      (*(v77 + 8))(v63, v30);
      v66 = v85;
      v67 = v74;
    }

    sub_224A3311C(v64, &qword_27D6F6C48, &qword_224DC1A88);
    v70 = sub_224A33F74(v68, v65, &v87);

    *(v44 + 24) = v70;
    v71 = v75;
    _os_log_impl(&dword_224A2F000, v75, v67, "Locale for existing descriptor for %{public}s: %{public}s does not match current locale: %{public}s", v44, 0x20u);
    v72 = v73;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v72, -1, -1);
    MEMORY[0x22AA5EED0](v44, -1, -1);

    sub_224A3311C(v76, &qword_27D6F6C48, &qword_224DC1A88);
    (*(v78 + 8))(v66, v86);
  }

  else
  {

    sub_224A3311C(v40, &qword_27D6F6C48, &qword_224DC1A88);
    sub_224A3311C(v17, &qword_27D6F6C48, &qword_224DC1A88);
    (*(v78 + 8))(v85, v29);
  }

  return 1;
}

uint64_t sub_224D503BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_224DAD318();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    return sub_224A3796C(a3, a4, &qword_27D6F6C48, &qword_224DC1A88);
  }

  v13 = sub_224A89A08(a1);
  if ((v14 & 1) == 0)
  {
    return sub_224A3796C(a3, a4, &qword_27D6F6C48, &qword_224DC1A88);
  }

  (*(v9 + 16))(v12, *(a2 + 56) + *(v9 + 72) * v13, v8);
  (*(v9 + 32))(a4, v12, v8);
  return (*(v9 + 56))(a4, 0, 1, v8);
}

void sub_224D50518(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_queue);
  BSDispatchQueueAssert();
  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v4 = sub_224DAB258();
  __swift_project_value_buffer(v4, qword_281365168);
  v5 = sub_224DAB228();
  v6 = sub_224DAF2A8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136446210;
    v9 = 0xEE00736E6F697461;
    v10 = 0x72756769666E6F63;
    if (a1 != 1)
    {
      v10 = 0x6E776F6E6B6E75;
      v9 = 0xE700000000000000;
    }

    if (a1 == 2)
    {
      v10 = 0xD000000000000013;
      v9 = 0x8000000224DCFD70;
    }

    if (a1 == 3)
    {
      v11 = 7105633;
    }

    else
    {
      v11 = v10;
    }

    if (a1 == 3)
    {
      v12 = 0xE300000000000000;
    }

    else
    {
      v12 = v9;
    }

    v13 = sub_224A33F74(v11, v12, &v18);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_224A2F000, v5, v6, "Data source ready: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x22AA5EED0](v8, -1, -1);
    MEMORY[0x22AA5EED0](v7, -1, -1);
  }

  v14 = *(v1 + OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_readyDataSources);
  if ((a1 & ~v14) != 0)
  {
    v14 |= a1;
    *(v1 + OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_readyDataSources) = v14;
  }

  if (v14 == 3)
  {
    v15 = sub_224DAB228();
    v16 = sub_224DAF2A8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_224A2F000, v15, v16, "All data sources ready - processing pending extension events", v17, 2u);
      MEMORY[0x22AA5EED0](v17, -1, -1);
    }

    sub_224D51338();
  }
}

void sub_224D507B4()
{
  v1 = v0;
  v78 = sub_224DAB7B8();
  v2 = *(v78 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v78);
  v77 = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_224DAB848();
  v5 = *(v76 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v76);
  v75 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_224DAD448();
  v79 = *(v84 - 8);
  v8 = *(v79 + 64);
  v9 = MEMORY[0x28223BE20](v84);
  v74 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v83 = v60 - v10;
  v73 = *(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_queue);
  BSDispatchQueueAssert();
  v11 = (v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_preferences);
  swift_beginAccess();
  v12 = *__swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v13 = sub_224CB986C();
  v14 = v13;
  v15 = v13 & 0xC000000000000001;
  if ((v13 & 0xC000000000000001) == 0)
  {
    if (*(v13 + 16))
    {
      goto LABEL_3;
    }

LABEL_9:

    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v30 = sub_224DAB258();
    __swift_project_value_buffer(v30, qword_281365168);
    v31 = sub_224DAB228();
    v32 = sub_224DAF2A8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_224A2F000, v31, v32, "Lazy refresh timer fired - no pending work.", v33, 2u);
      MEMORY[0x22AA5EED0](v33, -1, -1);
    }

    return;
  }

  if (!sub_224DAF838())
  {
    goto LABEL_9;
  }

LABEL_3:
  if (qword_281351708 == -1)
  {
    goto LABEL_4;
  }

  while (1)
  {
    swift_once();
LABEL_4:
    v16 = sub_224DAB258();
    __swift_project_value_buffer(v16, qword_281365168);

    v17 = sub_224DAB228();
    v18 = sub_224DAF2A8();

    v19 = os_log_type_enabled(v17, v18);
    v82 = v1;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v81 = v5;
      v21 = v20;
      v22 = swift_slowAlloc();
      *&aBlock = v22;
      *v21 = 136446210;
      sub_224DAF538();
      sub_224A39EF8(&unk_2813509A0, MEMORY[0x277CFA140]);
      v23 = sub_224DAF1C8();
      v25 = sub_224A33F74(v23, v24, &aBlock);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_224A2F000, v17, v18, "Lazy refresh timer fired - pending descriptors to fetch: %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x22AA5EED0](v22, -1, -1);
      v26 = v21;
      v5 = v81;
      MEMORY[0x22AA5EED0](v26, -1, -1);
    }

    if (v15)
    {
      sub_224DAF7E8();
      sub_224DAF538();
      sub_224A39EF8(&unk_2813509A0, MEMORY[0x277CFA140]);
      sub_224DAF1F8();
      v14 = v93[8];
      v15 = v93[9];
      v27 = v93[10];
      v28 = v93[11];
      v29 = v93[12];
    }

    else
    {
      v28 = 0;
      v34 = -1 << *(v14 + 32);
      v15 = v14 + 56;
      v27 = ~v34;
      v35 = -v34;
      v36 = v35 < 64 ? ~(-1 << v35) : -1;
      v29 = v36 & *(v14 + 56);
    }

    v60[1] = v27;
    v1 = (v27 + 64) >> 6;
    v69 = 0x8000000224DCFE60;
    v68 = *MEMORY[0x277CF9CC8];
    v67 = v79 + 104;
    v66 = v79 + 16;
    v65 = v8 + 7;
    v64 = v79 + 32;
    v63 = &v87;
    v62 = (v2 + 1);
    v61 = (v5 + 1);
    v60[2] = v79 + 8;
    v72 = v14;
    v71 = v15;
    v70 = v1;
    if (v14 < 0)
    {
      break;
    }

    while (1)
    {
      v55 = v28;
      v56 = v29;
      v57 = v28;
      v8 = v82;
      if (!v29)
      {
        break;
      }

LABEL_25:
      v5 = ((v56 - 1) & v56);
      v2 = *(*(v14 + 48) + ((v57 << 9) | (8 * __clz(__rbit64(v56)))));
      if (!v2)
      {
        goto LABEL_32;
      }

LABEL_29:
      v59 = *&v8[OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager + 32];
      __swift_project_boxed_opaque_existential_1(&v8[OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager], *&v8[OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager + 24]);
      sub_224DAC6D8();
      if (v88)
      {
        sub_224A36F98(&aBlock, v93);
        v37 = v79;
        v38 = v83;
        v39 = v84;
        (*(v79 + 104))(v83, v68, v84);
        sub_224A3317C(v93, &v92);
        v40 = v74;
        (*(v37 + 16))(v74, v38, v39);
        v41 = (*(v37 + 80) + 64) & ~*(v37 + 80);
        v42 = &v65[v41] & 0xFFFFFFFFFFFFFFF8;
        v43 = swift_allocObject();
        *(v43 + 16) = v8;
        sub_224A36F98(&v92, v43 + 24);
        (*(v37 + 32))(v43 + v41, v40, v39);
        v44 = (v43 + v42);
        *v44 = 0;
        v44[1] = 0;
        LOBYTE(v44) = ~v8[OBJC_IVAR____TtC10ChronoCore17DescriptorService__test_noRetries];
        v81 = v2;
        v45 = v44 & 1;
        __swift_project_boxed_opaque_existential_1(v93, v93[3]);
        v46 = v8;
        v47 = sub_224DAE338();
        sub_224A3317C(v93, &v91);
        v48 = swift_allocObject();
        *(v48 + 16) = v46;
        *(v48 + 24) = v47;
        *(v48 + 32) = sub_224A58DC8;
        *(v48 + 40) = v43;
        *(v48 + 48) = 0xD000000000000016;
        *(v48 + 56) = v69;
        sub_224A36F98(&v91, v48 + 64);
        *(v48 + 104) = v45;
        *(v48 + 112) = 0;
        v89 = sub_224D5C2B4;
        v90 = v48;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v87 = sub_224A39F40;
        v88 = &block_descriptor_155;
        v49 = _Block_copy(&aBlock);
        v50 = v46;
        v51 = v47;

        v52 = v75;
        sub_224DAB7E8();
        v85 = MEMORY[0x277D84F90];
        sub_224A39EF8(&qword_281350ED0, MEMORY[0x277D85198]);
        v80 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
        sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
        v5 = v77;
        v2 = v78;
        sub_224DAF788();
        MEMORY[0x22AA5D760](0, v52, v5, v49);

        _Block_release(v49);
        v14 = v72;

        (*v62)(v5, v2);
        v53 = v52;
        v15 = v71;
        (*v61)(v53, v76);
        v54 = *(v37 + 8);
        v1 = v70;
        v54(v83, v84);

        __swift_destroy_boxed_opaque_existential_1(v93);
        v28 = v57;
        v29 = v80;
        if (v14 < 0)
        {
          goto LABEL_27;
        }
      }

      else
      {

        sub_224A3311C(&aBlock, &unk_27D6F4700, &unk_224DB3A10);
        v28 = v57;
        v29 = v5;
        if (v14 < 0)
        {
          goto LABEL_27;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v1)
      {
        goto LABEL_32;
      }

      v56 = *(v15 + 8 * v57);
      ++v55;
      if (v56)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

LABEL_27:
  v58 = sub_224DAF878();
  v8 = v82;
  if (v58)
  {
    v93[0] = v58;
    sub_224DAF538();
    swift_dynamicCast();
    v2 = aBlock;
    v57 = v28;
    v5 = v29;
    if (aBlock)
    {
      goto LABEL_29;
    }
  }

LABEL_32:
  sub_224A3B7E4();
}

void sub_224D51338()
{
  v1 = v0;
  v2 = sub_224DAD448();
  v122 = *(v2 - 8);
  v123 = v2;
  v3 = *(v122 + 64);
  MEMORY[0x28223BE20](v2);
  v121 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v118 - v7;
  v9 = sub_224DA9878();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_queue);
  BSDispatchQueueAssert();
  v15 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
  swift_beginAccess();
  sub_224A3796C(v1 + v15, &v136, &qword_27D6F6C28, &qword_224DC1A38);
  if (!v137)
  {
    sub_224A3311C(&v136, &qword_27D6F6C28, &qword_224DC1A38);
    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v18 = sub_224DAB258();
    __swift_project_value_buffer(v18, qword_281365168);
    v19 = sub_224DAB228();
    v20 = sub_224DAF288();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_224A2F000, v19, v20, "Unable to process extension events: waiting for descriptor cache", v21, 2u);
      MEMORY[0x22AA5EED0](v21, -1, -1);
    }

    return;
  }

  sub_224A36F98(&v136, v141);
  if (*(v1 + OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_readyDataSources) != 3)
  {
    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v22 = sub_224DAB258();
    __swift_project_value_buffer(v22, qword_281365168);
    v23 = sub_224DAB228();
    v24 = sub_224DAF2A8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_224A2F000, v23, v24, "Unable to process extension events: waiting for data sources", v25, 2u);
      MEMORY[0x22AA5EED0](v25, -1, -1);
    }

    goto LABEL_16;
  }

  v16 = OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_extensionEvents;
  swift_beginAccess();
  if (!*(*(v1 + v16) + 16))
  {
    goto LABEL_16;
  }

  v119 = v16;
  v17 = OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_lastUserInitiatedDiscovery;
  swift_beginAccess();
  sub_224A3796C(v1 + v17, v8, &qword_27D6F32B0, &qword_224DB3EA0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_224A3311C(v8, &qword_27D6F32B0, &qword_224DB3EA0);
    v125 = 0;
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    sub_224DA97B8();
    v27 = v26;
    (*(v10 + 8))(v13, v9);
    v125 = v27 > -5.0;
  }

  v140 = MEMORY[0x277D84F90];
  v28 = v119;
  v29 = *(v1 + v119);
  v30 = *(v29 + 16);
  v124 = v1;
  if (!v30)
  {
    v32 = MEMORY[0x277D84F90];
    v130 = MEMORY[0x277D84F90];
    goto LABEL_56;
  }

  v127 = v29 + 32;

  v32 = MEMORY[0x277D84F90];
  *&v33 = 136446466;
  v120 = v33;
  v130 = MEMORY[0x277D84F90];
  v126 = v31;
  while (v30 <= *(v31 + 16))
  {
    v129 = (v30 - 1);
    sub_224D5BD34(v127 + 48 * (v30 - 1), &v136);
    v42 = (v32 + 4);
    v43 = -v32[2];
    v44 = -1;
    while (v43 + v44 != -1)
    {
      if (++v44 >= v32[2])
      {
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v45 = v42 + 40;
      sub_224A3317C(v42, v133);
      sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
      __swift_project_boxed_opaque_existential_1(&v136, v137);
      v46 = sub_224DAE338();
      v47 = v32;
      __swift_project_boxed_opaque_existential_1(v133, v134);
      v48 = sub_224DAE338();
      v49 = sub_224DAF6A8();

      v32 = v47;
      __swift_destroy_boxed_opaque_existential_1(v133);
      v42 = v45;
      if (v49)
      {
        goto LABEL_22;
      }
    }

    v128 = v32;
    v50 = v130[2];
    v32 = v130 + 4;

    v51 = v32;
    v52 = -v50;
    v53 = -1;
    while (v52 + v53 != -1)
    {
      if (++v53 >= v130[2])
      {
        goto LABEL_53;
      }

      v54 = v51 + 40;
      sub_224A3317C(v51, v133);
      v32 = sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
      __swift_project_boxed_opaque_existential_1(&v136, v137);
      v55 = sub_224DAE338();
      __swift_project_boxed_opaque_existential_1(v133, v134);
      v56 = sub_224DAE338();
      v57 = sub_224DAF6A8();

      __swift_destroy_boxed_opaque_existential_1(v133);
      v51 = v54;
      if (v57)
      {

        v32 = v128;
        goto LABEL_22;
      }
    }

    v58 = v128;
    if ((v138 & 1) == 0)
    {
      if (v125 && (__swift_project_boxed_opaque_existential_1(&v136, v137), v58 = v128, (sub_224DAE368() & 1) == 0) || (sub_224D4E3B4(&v136, v141) & 1) != 0)
      {
        sub_224A3317C(&v136, v133);
        v62 = v130;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v64 = v62;
        v140 = v62;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v64 = sub_224A5C040(0, v62[2] + 1, 1, v62);
          v140 = v64;
        }

        v130 = v64;
        v66 = v64[2];
        v65 = v64[3];
        if (v66 >= v65 >> 1)
        {
          v130 = sub_224A5C040((v65 > 1), v66 + 1, 1, v130);
          v140 = v130;
        }

        v67 = v134;
        v68 = v135;
        v69 = __swift_mutable_project_boxed_opaque_existential_1(v133, v134);
        v70 = *(*(v67 - 8) + 64);
        MEMORY[0x28223BE20](v69);
        v72 = &v118 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v73 + 16))(v72);
        sub_224A5C064(v66, v72, &v140, v67, v68);
        __swift_destroy_boxed_opaque_existential_1(v133);
        v140 = v130;
        v32 = v128;
        goto LABEL_22;
      }

      if (qword_281351708 != -1)
      {
        swift_once();
      }

      v74 = sub_224DAB258();
      __swift_project_value_buffer(v74, qword_281365168);
      sub_224D5BD34(&v136, v133);
      sub_224D5BD34(&v136, v132);
      v75 = sub_224DAB228();
      v76 = sub_224DAF288();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v131 = v78;
        *v77 = v120;
        v79 = v135;
        __swift_project_boxed_opaque_existential_1(v133, v134);
        v80 = *(v79 + 8);
        v81 = sub_224DAFD28();
        v83 = v82;
        sub_224D5BD6C(v133);
        v84 = sub_224A33F74(v81, v83, &v131);

        *(v77 + 4) = v84;
        *(v77 + 12) = 1026;
        __swift_project_boxed_opaque_existential_1(v132, v132[3]);
        v58 = v128;
        LODWORD(v84) = sub_224DAE238() & 1;
        sub_224D5BD6C(v132);
        *(v77 + 14) = v84;
        _os_log_impl(&dword_224A2F000, v75, v76, "Requested to add extension, but purging instead because we shouldn't cache it: %{public}s - isInternal? %{BOOL,public}d", v77, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v78);
        MEMORY[0x22AA5EED0](v78, -1, -1);
        MEMORY[0x22AA5EED0](v77, -1, -1);
      }

      else
      {
        sub_224D5BD6C(v132);

        sub_224D5BD6C(v133);
      }
    }

    sub_224A3317C(&v136, v133);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v139 = v58;
    if ((v59 & 1) == 0)
    {
      v58 = sub_224A5C040(0, v58[2] + 1, 1, v58);
      v139 = v58;
    }

    v61 = v58[2];
    v60 = v58[3];
    if (v61 >= v60 >> 1)
    {
      v34 = sub_224A5C040((v60 > 1), v61 + 1, 1, v58);
      v139 = v34;
    }

    else
    {
      v34 = v58;
    }

    v35 = v134;
    v36 = v135;
    v37 = __swift_mutable_project_boxed_opaque_existential_1(v133, v134);
    v38 = *(*(v35 - 8) + 64);
    MEMORY[0x28223BE20](v37);
    v40 = &v118 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v41 + 16))(v40);
    sub_224A5C064(v61, v40, &v139, v35, v36);
    __swift_destroy_boxed_opaque_existential_1(v133);
    v32 = v34;
LABEL_22:
    sub_224D5BD6C(&v136);
    v31 = v126;
    v30 = v129;
    if (!v129)
    {
      goto LABEL_55;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:

  v1 = v124;
  v28 = v119;
  v85 = *(v124 + v119);
LABEL_56:
  *(v1 + v28) = MEMORY[0x277D84F90];

  if (!v130[2])
  {
    goto LABEL_62;
  }

  if (qword_281351708 != -1)
  {
    goto LABEL_78;
  }

  while (1)
  {
    v86 = sub_224DAB258();
    __swift_project_value_buffer(v86, qword_281365168);
    v87 = sub_224DAB228();
    v88 = sub_224DAF2A8();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      *&v136 = v129;
      *v89 = 136446210;

      v91 = sub_224D4369C(v90);

      v92 = sub_224DAF538();
      v93 = MEMORY[0x22AA5D380](v91, v92);
      v95 = v94;

      v96 = sub_224A33F74(v93, v95, &v136);

      *(v89 + 4) = v96;
      v1 = v124;
      _os_log_impl(&dword_224A2F000, v87, v88, "Updating descriptors if necessary for new or updated extensions: %{public}s", v89, 0xCu);
      v97 = v129;
      __swift_destroy_boxed_opaque_existential_1(v129);
      MEMORY[0x22AA5EED0](v97, -1, -1);
      MEMORY[0x22AA5EED0](v89, -1, -1);
    }

    v98 = v123;
    v129 = v143;
    __swift_project_boxed_opaque_existential_1(v141, v142);
    v99 = v121;
    v100 = v122;
    (*(v122 + 104))(v121, *MEMORY[0x277CF9CC8], v98);

    sub_224DAD628();

    (*(v100 + 8))(v99, v98);
LABEL_62:
    if (!v32[2])
    {

      goto LABEL_75;
    }

    v101 = v32[2];
    if (!v101)
    {
      break;
    }

    v102 = v1;
    v133[0] = MEMORY[0x277D84F90];

    sub_224DAF9E8();
    v103 = 0;
    v104 = (v32 + 4);
    while (v103 < v32[2])
    {
      sub_224A3317C(v104, &v136);
      __swift_project_boxed_opaque_existential_1(&v136, v137);
      sub_224DAE338();
      __swift_destroy_boxed_opaque_existential_1(&v136);
      ++v103;
      sub_224DAF9B8();
      v1 = *(v133[0] + 16);
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
      v104 += 40;
      if (v101 == v103)
      {
        v105 = v133[0];
        v1 = v102;
        goto LABEL_70;
      }
    }

    __break(1u);
LABEL_78:
    swift_once();
  }

  v105 = MEMORY[0x277D84F90];
LABEL_70:
  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v106 = sub_224DAB258();
  __swift_project_value_buffer(v106, qword_281365168);

  v107 = sub_224DAB228();
  v108 = sub_224DAF2A8();

  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    *&v136 = v110;
    *v109 = 136446210;
    v111 = sub_224DAF538();
    v112 = MEMORY[0x22AA5D380](v105, v111);
    v114 = sub_224A33F74(v112, v113, &v136);

    *(v109 + 4) = v114;
    _os_log_impl(&dword_224A2F000, v107, v108, "Purging descriptors for extensions: %{public}s", v109, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v110);
    MEMORY[0x22AA5EED0](v110, -1, -1);
    MEMORY[0x22AA5EED0](v109, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1(v141, v142);

  sub_224DAD618();

  v115 = v1 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_preferences;
  swift_beginAccess();
  v116 = *(v115 + 24);
  v117 = *(v115 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v115, v116);
  (*(v117 + 40))(v105, v116, v117);
  swift_endAccess();

LABEL_75:

LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v141);
}

void sub_224D523A4(uint64_t a1, char a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_queue);
  BSDispatchQueueAssert();
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_extensionEvents;
    v8 = a1 + 32;
    v9 = a2 & 1;
    do
    {
      sub_224A3317C(v8, &v17);
      v18[24] = v9;
      swift_beginAccess();
      v10 = *(v2 + v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + v7) = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_224AD9C48(0, *(v10 + 2) + 1, 1, v10);
        *(v2 + v7) = v10;
      }

      v13 = *(v10 + 2);
      v12 = *(v10 + 3);
      if (v13 >= v12 >> 1)
      {
        v10 = sub_224AD9C48((v12 > 1), v13 + 1, 1, v10);
      }

      *(v10 + 2) = v13 + 1;
      v14 = &v10[48 * v13];
      v15 = v17;
      v16 = *v18;
      *(v14 + 57) = *&v18[9];
      *(v14 + 2) = v15;
      *(v14 + 3) = v16;
      *(v2 + v7) = v10;
      swift_endAccess();
      v8 += 40;
      --v6;
    }

    while (v6);
  }

  sub_224D51338();
}

void sub_224D524E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
  swift_beginAccess();
  v36 = v1;
  sub_224A3796C(v1 + v3, &v40, &qword_27D6F6C28, &qword_224DC1A38);
  v34 = a1;
  if (v41)
  {
    sub_224A36F98(&v40, v44);
    v4 = *(a1 + 16);
    if (v4)
    {
      v35 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_stateCaptureManager;
      v5 = &unk_27D6F53A0;
      v6 = a1 + 32;
      do
      {
        sub_224A3317C(v6, v42);
        __swift_project_boxed_opaque_existential_1(v42, v43);
        v10 = sub_224DAE338();
        sub_224A3317C(v44, &v40 + 8);
        *&v40 = v10;
        sub_224A3796C(v36 + v35, v38, v5, &qword_224DC1A80);
        if (v39)
        {
          __swift_project_boxed_opaque_existential_1(v38, v39);
          v37[3] = &type metadata for ExtensionDescriptorStateCapturing;
          v37[4] = sub_224D5BCA8();
          v37[0] = swift_allocObject();
          sub_224D5BCFC(&v40, v37[0] + 16);
          v7 = v5;
          __swift_project_boxed_opaque_existential_1(v42, v43);
          v8 = sub_224DAE338();
          v9 = [v8 description];

          sub_224DAEE18();
          v5 = v7;
          sub_224DAA2F8();

          sub_224D5BC78(&v40);
          __swift_destroy_boxed_opaque_existential_1(v37);
          __swift_destroy_boxed_opaque_existential_1(v38);
        }

        else
        {
          sub_224D5BC78(&v40);
          sub_224A3311C(v38, v5, &qword_224DC1A80);
        }

        __swift_destroy_boxed_opaque_existential_1(v42);
        v6 += 40;
        --v4;
      }

      while (v4);
    }

    __swift_destroy_boxed_opaque_existential_1(v44);
    a1 = v34;
  }

  else
  {
    sub_224A3311C(&v40, &qword_27D6F6C28, &qword_224DC1A38);
  }

  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v11 = sub_224DAB258();
  __swift_project_value_buffer(v11, qword_281365168);

  v12 = sub_224DAB228();
  v13 = sub_224DAF2A8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = v15;
    v44[0] = v15;
    *v14 = 136446210;
    v17 = *(a1 + 16);
    v18 = MEMORY[0x277D84F90];
    if (v17)
    {
      v32 = v15;
      v33 = v14;
      v42[0] = MEMORY[0x277D84F90];
      sub_224A3DFD8(0, v17, 0);
      v18 = v42[0];
      v19 = a1 + 32;
      do
      {
        sub_224A3317C(v19, &v40);
        __swift_project_boxed_opaque_existential_1(&v40, v41);
        v20 = sub_224DAE338();
        v21 = [v20 description];
        v22 = sub_224DAEE18();
        v24 = v23;

        __swift_destroy_boxed_opaque_existential_1(&v40);
        v42[0] = v18;
        v26 = *(v18 + 16);
        v25 = *(v18 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_224A3DFD8((v25 > 1), v26 + 1, 1);
          v18 = v42[0];
        }

        *(v18 + 16) = v26 + 1;
        v27 = v18 + 16 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v24;
        v19 += 40;
        --v17;
      }

      while (v17);
      v14 = v33;
      a1 = v34;
      v16 = v32;
    }

    *&v40 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
    sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0);
    v28 = sub_224DAEDA8();
    v30 = v29;

    v31 = sub_224A33F74(v28, v30, v44);

    *(v14 + 4) = v31;
    _os_log_impl(&dword_224A2F000, v12, v13, "Queuing extension added events: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x22AA5EED0](v16, -1, -1);
    MEMORY[0x22AA5EED0](v14, -1, -1);
  }

  sub_224D523A4(a1, 0);
}

void sub_224D529E4(uint64_t a1)
{
  v31 = *(a1 + 16);
  if (v31)
  {
    v28 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_stateCaptureManager;
    v1 = a1 + 32;
    v2 = *(a1 + 16);
    do
    {
      sub_224A3317C(v1, v35);
      sub_224A3796C(v30 + v28, v33, &unk_27D6F53A0, &qword_224DC1A80);
      if (v34)
      {
        __swift_project_boxed_opaque_existential_1(v33, v34);
        __swift_project_boxed_opaque_existential_1(v35, v36);
        v3 = sub_224DAE338();
        v4 = [v3 tokenString];

        sub_224DAEE18();
        sub_224DAA298();

        __swift_destroy_boxed_opaque_existential_1(v33);
      }

      else
      {
        sub_224A3311C(v33, &unk_27D6F53A0, &qword_224DC1A80);
      }

      __swift_destroy_boxed_opaque_existential_1(v35);
      v1 += 40;
      --v2;
    }

    while (v2);
  }

  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v5 = sub_224DAB258();
  __swift_project_value_buffer(v5, qword_281365168);
  v6 = a1;

  v7 = sub_224DAB228();
  v8 = sub_224DAF2A8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = v10;
    v33[0] = v10;
    *v9 = 136446210;
    v12 = MEMORY[0x277D84F90];
    if (v31)
    {
      v26 = v10;
      v29 = v8;
      v32 = MEMORY[0x277D84F90];
      sub_224A3DFD8(0, v31, 0);
      v12 = v32;
      v13 = a1 + 32;
      do
      {
        sub_224A3317C(v13, v35);
        __swift_project_boxed_opaque_existential_1(v35, v36);
        v14 = sub_224DAE338();
        v15 = [v14 description];
        v16 = sub_224DAEE18();
        v18 = v17;

        __swift_destroy_boxed_opaque_existential_1(v35);
        v20 = *(v32 + 16);
        v19 = *(v32 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_224A3DFD8((v19 > 1), v20 + 1, 1);
        }

        *(v32 + 16) = v20 + 1;
        v21 = v32 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
        v13 += 40;
        --v31;
      }

      while (v31);
      v6 = a1;
      v8 = v29;
      v11 = v26;
    }

    v35[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
    sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0);
    v22 = sub_224DAEDA8();
    v24 = v23;

    v25 = sub_224A33F74(v22, v24, v33);

    *(v9 + 4) = v25;
    _os_log_impl(&dword_224A2F000, v7, v8, "Queuing extension removed events: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x22AA5EED0](v11, -1, -1);
    MEMORY[0x22AA5EED0](v9, -1, -1);
  }

  sub_224D523A4(v6, 1);
}

void sub_224D52DE4(uint64_t a1, uint64_t a2)
{
  v84 = a2;
  v83 = sub_224DAD448();
  v82 = *(v83 - 8);
  v4 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v81 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_224DAA5C8();
  v86 = *(v87 - 8);
  v6 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v85 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v2;
  v8 = *(v2 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_hostService + 24);
  v9 = *(v2 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_hostService + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_hostService), v8);
  (*(v9 + 32))(v108, 768, v8, v9);
  v10 = v109;
  if (v109)
  {
    if (*(v109 + 16) && (v11 = sub_224A683FC(a1), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      v14 = [*(v13 + *(*v13 + 104)) containerDescriptors];
      sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
      v94 = sub_224DAF008();
    }

    else
    {
      v94 = 0;
    }

    sub_224A699F0(v108);
  }

  else
  {
    sub_224A3311C(v108, &qword_27D6F50E0, &qword_224DB41A0);
    v94 = 0;
  }

  v15 = *(v90 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_controlHostService + 24);
  v16 = *(v90 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_controlHostService + 32);
  __swift_project_boxed_opaque_existential_1((v90 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_controlHostService), v15);
  v17 = (*(v16 + 24))(768, v15, v16);
  if (!v17)
  {
    if (!v94)
    {
      goto LABEL_82;
    }

LABEL_13:
    v18 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v18 = sub_224CFFD3C(a1, v17);

  if (v94)
  {
    if (v18)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (!v18)
  {
    goto LABEL_82;
  }

  v94 = MEMORY[0x277D84F90];
LABEL_16:
  v19 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
  v20 = v90;
  swift_beginAccess();
  sub_224A3796C(v20 + v19, &v106, &qword_27D6F6C28, &qword_224DC1A38);
  if (!v107)
  {

    sub_224A3311C(&v106, &qword_27D6F6C28, &qword_224DC1A38);
    goto LABEL_82;
  }

  sub_224A36F98(&v106, v108);
  *&v106 = MEMORY[0x277D84FA0];
  if (v94 >> 62)
  {
    goto LABEL_71;
  }

  for (i = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
  {
    v22 = 0;
    v93 = v94 & 0xC000000000000001;
    v89 = v94 & 0xFFFFFFFFFFFFFF8;
    v88 = v94 + 32;
    v23 = MEMORY[0x277D84FA0];
    v92 = v18;
    v91 = i;
    while (1)
    {
      if (v93)
      {
        v25 = MEMORY[0x22AA5DCC0](v22, v94);
      }

      else
      {
        if (v22 >= *(v89 + 16))
        {
          goto LABEL_70;
        }

        v25 = *(v88 + 8 * v22);
      }

      v26 = v25;
      v27 = __OFADD__(v22, 1);
      v28 = v22 + 1;
      if (v27)
      {
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v29 = [v25 widgets];
      sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
      v30 = sub_224DAF008();

      v31 = v30 >> 62 ? sub_224DAF838() : *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v95 = v26;
      v96 = v28;
      if (v31)
      {
        break;
      }

LABEL_20:
      v24 = v23;
LABEL_21:

      v23 = v24;
      v22 = v96;
      v18 = v92;
      if (v96 == v91)
      {
        goto LABEL_72;
      }
    }

    v32 = v31;
    if (v31 < 1)
    {
      goto LABEL_68;
    }

    v33 = 0;
    v18 = v30 & 0xC000000000000001;
    v99 = v30 + 32;
    v100 = v31;
    v98 = v30 & 0xC000000000000001;
    v97 = v30;
    while (1)
    {
LABEL_33:
      v37 = v23 & 0xFFFFFFFFFFFFFF8;
      if (v23 < 0)
      {
        v37 = v23;
      }

      v101 = v37;
      v102 = v23 & 0xC000000000000001;
      v38 = v23 + 56;
      while (1)
      {
        while (1)
        {
          v39 = v18 ? MEMORY[0x22AA5DCC0](v33, v30) : *(v99 + 8 * v33);
          ++v33;
          v103 = v39;
          v40 = [v39 extensionIdentity];
          v41 = v40;
          if (v102)
          {
            break;
          }

          sub_224DAF538();
          v44 = *(v23 + 40);
          v45 = sub_224DAF698();
          v46 = -1 << *(v23 + 32);
          v47 = v45 & ~v46;
          if (((*(v38 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
          {
LABEL_32:
            v34 = v106;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v105 = v34;
            v36 = v41;
            sub_224AE2760(v36, v47, isUniquelyReferenced_nonNull_native);

            v23 = v105;
            *&v106 = v105;
            v24 = v105;
            v32 = v100;
            v30 = v97;
            v18 = v98;
            if (v33 == v100)
            {
              goto LABEL_21;
            }

            goto LABEL_33;
          }

          v48 = ~v46;
          while (1)
          {
            v49 = *(*(v23 + 48) + 8 * v47);
            v50 = sub_224DAF6A8();

            if (v50)
            {
              break;
            }

            v47 = (v47 + 1) & v48;
            if (((*(v38 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
            {
              goto LABEL_32;
            }
          }

          v32 = v100;
          v30 = v97;
          v18 = v98;
          if (v33 == v100)
          {
            goto LABEL_20;
          }
        }

        v42 = v40;

        v43 = sub_224DAF858();

        if (!v43)
        {
          break;
        }

        v104 = v43;
        sub_224DAF538();
        swift_dynamicCast();

        if (v33 == v32)
        {
          goto LABEL_20;
        }
      }

      v51 = v101;
      v52 = sub_224DAF838();
      if (__OFADD__(v52, 1))
      {
        break;
      }

      v24 = sub_224ADD3D8(v51, v52 + 1);
      v105 = v24;
      v53 = *(v24 + 2);
      if (*(v24 + 3) <= v53)
      {
        sub_224ADEE2C(v53 + 1);
        v24 = v105;
      }

      v54 = *(v24 + 5);
      v55 = v42;
      v56 = sub_224DAF698();
      v57 = v24 + 56;
      v58 = -1 << v24[32];
      v59 = v56 & ~v58;
      v60 = v59 >> 6;
      if (((-1 << v59) & ~*&v24[8 * (v59 >> 6) + 56]) != 0)
      {
        v61 = __clz(__rbit64((-1 << v59) & ~*&v24[8 * (v59 >> 6) + 56])) | v59 & 0x7FFFFFFFFFFFFFC0;
        v32 = v100;
      }

      else
      {
        v62 = 0;
        v63 = (63 - v58) >> 6;
        v32 = v100;
        do
        {
          if (++v60 == v63 && (v62 & 1) != 0)
          {
            __break(1u);
            goto LABEL_67;
          }

          v64 = v60 == v63;
          if (v60 == v63)
          {
            v60 = 0;
          }

          v62 |= v64;
          v65 = *&v57[8 * v60];
        }

        while (v65 == -1);
        v61 = __clz(__rbit64(~v65)) + (v60 << 6);
      }

      *&v57[(v61 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v61;
      *(*(v24 + 6) + 8 * v61) = v55;
      ++*(v24 + 2);

      *&v106 = v24;
      v23 = v24;
      if (v33 == v32)
      {
        goto LABEL_21;
      }
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    ;
  }

LABEL_72:

  if (v18 >> 62)
  {
    v66 = sub_224DAF838();
    if (v66)
    {
      goto LABEL_74;
    }
  }

  else
  {
    v66 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v66)
    {
LABEL_74:
      if (v66 < 1)
      {
        __break(1u);
        return;
      }

      v67 = 0;
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v68 = MEMORY[0x22AA5DCC0](v67, v18);
        }

        else
        {
          v68 = *(v18 + 8 * v67 + 32);
        }

        v69 = v68;
        ++v67;
        v70 = [v68 controlIdentity];
        v71 = [v70 &off_27853F578];

        sub_224A3DC84(&v105, v71);
      }

      while (v66 != v67);
    }
  }

  v72 = *(v90 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager + 32);
  __swift_project_boxed_opaque_existential_1((v90 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager), *(v90 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager + 24));
  v73 = sub_224DAC678();
  sub_224D5662C(v73, &v106);

  __swift_project_boxed_opaque_existential_1(v108, v108[3]);
  v74 = v82;
  v75 = v81;
  v76 = v83;
  (*(v82 + 104))(v81, *MEMORY[0x277CF9CD8], v83);
  sub_224DAD628();

  (*(v74 + 8))(v75, v76);

  __swift_destroy_boxed_opaque_existential_1(v108);
LABEL_82:
  v77 = v86;
  v78 = v85;
  v79 = v87;
  (*(v86 + 104))(v85, *MEMORY[0x277CFA0D8], v87);
  sub_224A39EF8(&qword_2813517E8, MEMORY[0x277CFA0E8]);
  sub_224DAEFA8();
  sub_224DAEFA8();
  (*(v77 + 8))(v78, v79);
  if (v108[0] == v106)
  {
    sub_224D50518(1);
  }
}

uint64_t sub_224D53938(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t (*a5)(void, uint64_t), uint64_t a6, uint64_t a7)
{
  v13 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
  swift_beginAccess();
  sub_224A3796C(a1 + v13, &v15, &qword_27D6F6C28, &qword_224DC1A38);
  if (!v16)
  {
    sub_224A3311C(&v15, &qword_27D6F6C28, &qword_224DC1A38);
    return a5(0, a7);
  }

  sub_224A36F98(&v15, v17);
  result = sub_224D4E3B4(a2, v17);
  if ((result & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v17);
    return a5(0, a7);
  }

  if (__OFSUB__(a3, 1))
  {
    __break(1u);
  }

  else
  {
    sub_224A3E908(a2, a3 - 1, 0xD00000000000001ALL, 0x8000000224DCFDB0, a4 & 1);
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  return result;
}

void sub_224D53A60(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, dispatch_group_t group)
{
  if (!a1)
  {
    goto LABEL_9;
  }

  v11 = a1;
  [a2 mutableCopy];
  sub_224DAF758();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6C40, &unk_224DC1A70);
  swift_dynamicCast();
  v12 = [objc_allocWithZone(MEMORY[0x277CFA278]) initWithIntent_];
  [v18 setDefaultIntentReference_];

  os_unfair_lock_lock(*(a3 + 16));
  swift_beginAccess();
  v13 = *(a4 + 16);
  v14 = v18;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *(a4 + 16) = v13;
  if (!isUniquelyReferenced_nonNull_bridgeObject || v13 < 0 || (v13 & 0x4000000000000000) != 0)
  {
    v13 = sub_224B44A20(v13);
    *(a4 + 16) = v13;
  }

  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) > a5)
  {
    v16 = (v13 & 0xFFFFFFFFFFFFFF8) + 8 * a5;
    v17 = *(v16 + 0x20);
    *(v16 + 32) = v14;
    *(a4 + 16) = v13;
    swift_endAccess();

    os_unfair_lock_unlock(*(a3 + 16));
LABEL_9:
    dispatch_group_leave(group);
    return;
  }

  __break(1u);
}

uint64_t sub_224D53BF0()
{
  v1 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
  swift_beginAccess();
  sub_224A3796C(v0 + v1, &v12, &qword_27D6F6C28, &qword_224DC1A38);
  if (v13)
  {
    sub_224A36F98(&v12, v14);
    v2 = *(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager), *(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager + 24));
    v3 = sub_224DAC678();
    MEMORY[0x28223BE20](v3);
    v11[2] = v0;
    v11[3] = v14;
    v5 = sub_224C5CCE8(sub_224D5BBE8, v11, v4);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    sub_224A3311C(&v12, &qword_27D6F6C28, &qword_224DC1A38);
    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v6 = sub_224DAB258();
    __swift_project_value_buffer(v6, qword_281365168);
    v7 = sub_224DAB228();
    v8 = sub_224DAF288();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_224A2F000, v7, v8, "Waiting for descriptor cache", v9, 2u);
      MEMORY[0x22AA5EED0](v9, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  return v5;
}

uint64_t sub_224D53DD4(void *a1, uint64_t a2)
{
  v3 = v2;
  v134 = a1;
  v5 = sub_224DADDB8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DADD78();
  v132 = *(v10 - 8);
  v133 = v10;
  v11 = *(v132 + 64);
  MEMORY[0x28223BE20](v10);
  v131 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_224DADCA8();
  v129 = *(v130 - 8);
  v13 = v129[8];
  MEMORY[0x28223BE20](v130);
  v128 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224DADC58();
  v127 = *(v15 - 8);
  v16 = v127[8];
  result = MEMORY[0x28223BE20](v15);
  v19 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2[OBJC_IVAR____TtC10ChronoCore17DescriptorService_suppressPublishingNotificationsForTesting])
  {
    return result;
  }

  v20 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache;
  swift_beginAccess();
  sub_224A3796C(&v2[v20], v137, &qword_27D6F6C28, &qword_224DC1A38);
  v21 = v137[3];
  result = sub_224A3311C(v137, &qword_27D6F6C28, &qword_224DC1A38);
  if (!v21)
  {
    return result;
  }

  v122 = v9;
  v126 = a2;
  v123 = v6;
  v124 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F55E0, &unk_224DB65D0);
  v22 = MEMORY[0x277D84F90];
  sub_224DA06A0(MEMORY[0x277D84F90]);
  v23 = sub_224DACF68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5698, &qword_224DBBCC0);
  sub_224DA06C8(v22);
  sub_224DACF68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6C30, qword_224DC1A40);
  sub_224DA2D68(v22);
  v135 = sub_224DACF68();
  v24 = sub_224A48648();
  if (v24)
  {
    v25 = v24;
    if (v134)
    {
      MEMORY[0x28223BE20](v24);
      *(&v117 - 2) = v26;
      v27 = 0;
      v28 = sub_224DACF48();

      v23 = v28;
    }

    else
    {

      v27 = 0;
      v23 = v25;
    }

    v30 = qword_281351708;
    swift_retain_n();
    if (v30 != -1)
    {
      swift_once();
    }

    v31 = sub_224DAB258();
    __swift_project_value_buffer(v31, qword_281365168);
    swift_retain_n();

    v32 = v3;
    v33 = sub_224DAB228();
    v34 = sub_224DAF2A8();
    v121 = v32;

    v120 = v34;
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v137[0] = v119;
      *v35 = 134349570;
      v118 = v33;
      v36 = sub_224DACF88();

      *(v35 + 4) = v36;

      *(v35 + 12) = 2050;
      v37 = sub_224DACF88();

      *(v35 + 14) = v37;

      *(v35 + 22) = 2082;
      v38 = &v121[OBJC_IVAR____TtC10ChronoCore17DescriptorService_preferences];
      swift_beginAccess();
      v39 = *__swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
      sub_224CB986C();
      sub_224DAF538();
      v125 = 0;
      sub_224A39EF8(&unk_2813509A0, MEMORY[0x277CFA140]);
      v40 = sub_224DAF1C8();
      v41 = v3;
      v42 = v23;
      v44 = v43;

      v45 = v40;
      v27 = v125;
      v46 = sub_224A33F74(v45, v44, v137);
      v23 = v42;
      v3 = v41;

      *(v35 + 24) = v46;
      v47 = v118;
      _os_log_impl(&dword_224A2F000, v118, v120, "Publishing changed widget descriptors - count = %{public}ld (total = %{public}ld, pending = %{public}s)", v35, 0x20u);
      v48 = v119;
      __swift_destroy_boxed_opaque_existential_1(v119);
      MEMORY[0x22AA5EED0](v48, -1, -1);
      MEMORY[0x22AA5EED0](v35, -1, -1);
    }

    else
    {
    }

    v29 = v134;

    sub_224DADC28();
    v49 = *&v121[OBJC_IVAR____TtC10ChronoCore17DescriptorService__widgetDescriptorPublisher];
    sub_224DAB348();

    (v127[1])(v19, v15);
  }

  else
  {
    v27 = 0;
    v29 = v134;
  }

  v50 = sub_224A5B8B8();
  if (v50)
  {
    if (v29)
    {
      MEMORY[0x28223BE20](v50);
      *(&v117 - 2) = v29;
      sub_224DACF48();
    }

    else
    {
    }

    v51 = qword_281351708;
    swift_retain_n();
    if (v51 != -1)
    {
      swift_once();
    }

    v52 = sub_224DAB258();
    __swift_project_value_buffer(v52, qword_281365168);
    v53 = v3;

    v54 = sub_224DAB228();
    v55 = sub_224DAF2A8();

    v56 = os_log_type_enabled(v54, v55);
    v125 = v27;
    if (v56)
    {
      v57 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v137[0] = v127;
      *v57 = 134349570;
      LODWORD(v121) = v55;
      v58 = sub_224DACF88();

      *(v57 + 4) = v58;

      *(v57 + 12) = 2050;
      *(v57 + 14) = sub_224DACF88();

      *(v57 + 22) = 2082;
      v59 = &v53[OBJC_IVAR____TtC10ChronoCore17DescriptorService_preferences];
      swift_beginAccess();
      v60 = *__swift_project_boxed_opaque_existential_1(v59, *(v59 + 3));
      sub_224CB986C();
      sub_224DAF538();
      sub_224A39EF8(&unk_2813509A0, MEMORY[0x277CFA140]);
      v61 = sub_224DAF1C8();
      v62 = v3;
      v63 = v23;
      v65 = v64;

      v66 = v61;
      v29 = v134;
      v67 = sub_224A33F74(v66, v65, v137);
      v23 = v63;
      v3 = v62;

      *(v57 + 24) = v67;
      _os_log_impl(&dword_224A2F000, v54, v121, "Publishing changed control descriptors - count = %{public}ld (total = %{public}ld, pending = %{public}s)", v57, 0x20u);
      v68 = v127;
      __swift_destroy_boxed_opaque_existential_1(v127);
      MEMORY[0x22AA5EED0](v68, -1, -1);
      MEMORY[0x22AA5EED0](v57, -1, -1);
    }

    else
    {
    }

    v69 = v128;
    sub_224DADC28();
    v70 = *&v53[OBJC_IVAR____TtC10ChronoCore17DescriptorService__controlDescriptorPublisher];
    sub_224DAB348();

    (v129[1])(v69, v130);
  }

  v71 = sub_224D44CD4();
  if (v71)
  {
    v72 = v71;
    if (v29)
    {
      MEMORY[0x28223BE20](v71);
      *(&v117 - 2) = v29;
      v73 = sub_224DACF48();

      v135 = v73;
    }

    else
    {

      v135 = v72;
    }

    v74 = qword_281351708;
    swift_retain_n();
    if (v74 != -1)
    {
      swift_once();
    }

    v75 = sub_224DAB258();
    __swift_project_value_buffer(v75, qword_281365168);
    v76 = v3;

    v77 = sub_224DAB228();
    v78 = sub_224DAF2A8();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v130 = v23;
      v129 = v80;
      v136 = v80;
      *v79 = 134349570;
      v81 = sub_224DACF88();

      *(v79 + 4) = v81;

      *(v79 + 12) = 2050;
      *(v79 + 14) = sub_224DACF88();

      *(v79 + 22) = 2082;
      v82 = &v76[OBJC_IVAR____TtC10ChronoCore17DescriptorService_preferences];
      swift_beginAccess();
      v83 = *__swift_project_boxed_opaque_existential_1(v82, *(v82 + 3));
      sub_224CB986C();
      sub_224DAF538();
      sub_224A39EF8(&unk_2813509A0, MEMORY[0x277CFA140]);
      v84 = sub_224DAF1C8();
      v86 = v85;

      v87 = sub_224A33F74(v84, v86, &v136);
      v29 = v134;

      *(v79 + 24) = v87;
      _os_log_impl(&dword_224A2F000, v77, v78, "Publishing changed activity descriptors - count = %{public}ld (total = %{public}ld, pending = %{public}s)", v79, 0x20u);
      v88 = v129;
      __swift_destroy_boxed_opaque_existential_1(v129);
      MEMORY[0x22AA5EED0](v88, -1, -1);
      MEMORY[0x22AA5EED0](v79, -1, -1);
    }

    else
    {
    }

    v89 = v76;

    v90 = v131;
    sub_224DADC28();
    v91 = *&v89[OBJC_IVAR____TtC10ChronoCore17DescriptorService__activityDescriptorPublisher];
    sub_224DAB348();

    (*(v132 + 8))(v90, v133);
  }

  if (!v29)
  {
    if (MEMORY[0x277D84F90] >> 62)
    {
      if (sub_224DAF838())
      {
        sub_224D57F20(MEMORY[0x277D84F90], &qword_27D6F3510, &qword_224DB3AA8, MEMORY[0x277CFA140]);
        v92 = v116;
      }

      else
      {
        v92 = MEMORY[0x277D84FA0];
      }
    }

    else
    {
      v92 = MEMORY[0x277D84FA0];
    }

    if (sub_224A48648())
    {
      v94 = sub_224DACF58();
      sub_224A5B11C(v94, v92);
      v92 = v95;
    }

    if (sub_224A5B8B8())
    {
      v96 = sub_224DACF58();
      sub_224A5B11C(v96, v92);
      v92 = v97;
    }

    if ((v92 & 0xC000000000000001) != 0)
    {
      goto LABEL_36;
    }

LABEL_44:
    v93 = *(v92 + 16);
    swift_bridgeObjectRetain_n();
    goto LABEL_45;
  }

  v92 = v29;
  if ((v29 & 0xC000000000000001) == 0)
  {
    goto LABEL_44;
  }

LABEL_36:
  swift_bridgeObjectRetain_n();
  v93 = sub_224DAF838();
LABEL_45:

  if (v93)
  {
    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v98 = sub_224DAB258();
    __swift_project_value_buffer(v98, qword_281365168);

    v99 = sub_224DAB228();
    v100 = sub_224DAF2A8();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 134349312;
      *(v101 + 4) = sub_224DACF88();

      *(v101 + 12) = 2050;
      *(v101 + 14) = sub_224DACF88();

      _os_log_impl(&dword_224A2F000, v99, v100, "Publishing combined descriptors change event - widgets: %{public}ld, controls: %{public}ld", v101, 0x16u);
      MEMORY[0x22AA5EED0](v101, -1, -1);
    }

    else
    {
    }

    v102 = v122;
    sub_224DADD88();
    v103 = *&v3[OBJC_IVAR____TtC10ChronoCore17DescriptorService__combinedDescriptorPublisher];
    sub_224DAB348();
    (*(v123 + 8))(v102, v124);
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6820, &qword_224DC0838);
  v104 = *(sub_224DAC1E8() - 8);
  v105 = *(v104 + 72);
  v106 = (*(v104 + 80) + 32) & ~*(v104 + 80);
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_224DB30F0;
  sub_224DAC1C8();
  sub_224DAC1D8();
  v108 = sub_224A5AD0C(v107);
  swift_setDeallocating();
  v109 = *(v107 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (qword_281351708 != -1)
  {
    swift_once();
  }

  v110 = sub_224DAB258();
  __swift_project_value_buffer(v110, qword_281365168);

  v111 = sub_224DAB228();
  v112 = sub_224DAF2A8();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    *v113 = 134349056;
    if ((v108 & 0xC000000000000001) != 0)
    {
      v114 = sub_224DAF838();
    }

    else
    {
      v114 = *(v108 + 16);
    }

    *(v113 + 4) = v114;

    _os_log_impl(&dword_224A2F000, v111, v112, "Publishing new extensions set - count = %{public}ld", v113, 0xCu);
    MEMORY[0x22AA5EED0](v113, -1, -1);
  }

  else
  {
  }

  v115 = *&v3[OBJC_IVAR____TtC10ChronoCore17DescriptorService__extensionPublisher];
  v136 = v108;
  sub_224DAB348();
}

void sub_224D55068()
{
  sub_224BDD38C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_224D55270(uint64_t a1, int a2, uint64_t a3, uint64_t a4, NSObject *a5, uint64_t a6)
{
  v12 = (*v6 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager);
  v13 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v14 = sub_224DAC668();
  sub_224D4CDBC(v14, a2, a3, a4, a5, a6);
}

uint64_t sub_224D55498()
{

  return swift_deallocClassInstance();
}

unint64_t sub_224D5550C()
{
  result = qword_27D6F6BE8;
  if (!qword_27D6F6BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6BE8);
  }

  return result;
}

unint64_t sub_224D55564()
{
  result = qword_27D6F6BF0;
  if (!qword_27D6F6BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6BF0);
  }

  return result;
}

unint64_t sub_224D555BC()
{
  result = qword_27D6F6BF8;
  if (!qword_27D6F6BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6BF8);
  }

  return result;
}

unint64_t sub_224D55614()
{
  result = qword_27D6F6C00;
  if (!qword_27D6F6C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6C00);
  }

  return result;
}

uint64_t sub_224D55668(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a2;
  v7 = sub_224DAB7B8();
  v27 = *(v7 - 8);
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAB848();
  v25 = *(v11 - 8);
  v26 = v11;
  v12 = *(v25 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (v3[OBJC_IVAR____TtC10ChronoCore17DescriptorService__test_noRetries] & 1) == 0;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = sub_224DAE338();
  v18 = *&v4[OBJC_IVAR____TtC10ChronoCore17DescriptorService_queue];
  sub_224A3317C(a1, v30);
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  *(v19 + 24) = v17;
  *(v19 + 32) = v24;
  *(v19 + 40) = a3;
  *(v19 + 48) = 0x6E69206568636163;
  *(v19 + 56) = 0xEF64657461697469;
  sub_224A36F98(v30, v19 + 64);
  *(v19 + 104) = v15;
  *(v19 + 112) = 0;
  aBlock[4] = sub_224A39F84;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_56;
  v20 = _Block_copy(aBlock);
  v21 = v4;
  v22 = v17;

  sub_224DAB7E8();
  v28 = MEMORY[0x277D84F90];
  sub_224A39EF8(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v14, v10, v20);
  _Block_release(v20);

  (*(v27 + 8))(v10, v7);
  (*(v25 + 8))(v14, v26);
}

uint64_t sub_224D55A5C()
{
  v1 = *(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager), *(v0 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager + 24));
  return sub_224DAC6C8();
}

uint64_t sub_224D55C2C(void **a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v3 = sub_224DA9FE8();
  v5 = v4;
  v6 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v7 = sub_224A921B4(v3, v5, 0);
  if (v1)
  {

    return 1;
  }

  else if (v7)
  {
    v9 = v7;
    v10 = [v7 appClipMetadata];
    if (v10)
    {

      if (qword_281351460 != -1)
      {
        swift_once();
      }

      v11 = sub_224DAB258();
      __swift_project_value_buffer(v11, qword_281364DC0);
      v12 = v2;
      v13 = sub_224DAB228();
      v14 = sub_224DAF2A8();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v22 = v16;
        *v15 = 136446210;
        v17 = [v12 extensionBundleIdentifier];
        v18 = sub_224DAEE18();
        v20 = v19;

        v21 = sub_224A33F74(v18, v20, &v22);

        *(v15 + 4) = v21;
        _os_log_impl(&dword_224A2F000, v13, v14, "Descriptor from %{public}s is an App Clip", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x22AA5EED0](v16, -1, -1);
        MEMORY[0x22AA5EED0](v15, -1, -1);
      }

      return 0;
    }

    else
    {

      return 1;
    }
  }

  else
  {
    return 1;
  }
}

uint64_t sub_224D55E5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - v4 + 16;
  strcpy(v11, "Descriptors[");
  BYTE5(v11[1]) = 0;
  HIWORD(v11[1]) = -5120;
  v6 = *v0;
  v7 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  (*(v2 + 16))(v5, v6 + v7, v1);
  sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0);
  v8 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v8);

  (*(v2 + 8))(v5, v1);
  MEMORY[0x22AA5D210](93, 0xE100000000000000);
  return v11[0];
}

uint64_t sub_224D55FF8()
{
  v1 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 1, v0[4]);
  v2 = *v0;
  v3 = sub_224DAD588();
  if (!v3)
  {
    return 0x30203A746E756F43;
  }

  v4 = v3;
  if (v3 >> 62)
  {
    v5 = sub_224DAF838();
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v6);

  MEMORY[0x22AA5D210](10, 0xE100000000000000);
  if (!v5)
  {
    goto LABEL_15;
  }

  v21 = MEMORY[0x277D84F90];
  result = sub_224A3DFD8(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x22AA5DCC0](v8, v4);
      }

      else
      {
        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = [v9 description];
      v12 = sub_224DAEE18();
      v14 = v13;

      v16 = *(v21 + 16);
      v15 = *(v21 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_224A3DFD8((v15 > 1), v16 + 1, 1);
      }

      ++v8;
      *(v21 + 16) = v16 + 1;
      v17 = v21 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
    }

    while (v5 != v8);
LABEL_15:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
    sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0);
    v18 = sub_224DAEDA8();
    v20 = v19;

    MEMORY[0x22AA5D210](v18, v20);

    return 0x203A746E756F43;
  }

  __break(1u);
  return result;
}

uint64_t sub_224D5628C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t *sub_224D562BC(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_224D58430(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_224D56358(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_224DAF538();
  return sub_224DAF6A8() & 1;
}

uint64_t sub_224D563AC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a2;
    v4 = 0;
    v5 = a1 + 32;
    v6 = MEMORY[0x277D84F90];
    v22 = *(a1 + 16);
    v21 = a1 + 32;
    while (1)
    {
      sub_224A3317C(v5 + 40 * v4, &v25);
      __swift_project_boxed_opaque_existential_1(&v25, v26);
      if ((sub_224DAE368() & 1) == 0)
      {
        v7 = *v3;
        __swift_project_boxed_opaque_existential_1(&v25, v26);

        v8 = sub_224DAE338();
        if ((v7 & 0xC000000000000001) != 0)
        {
          v9 = sub_224DAF888();

          if ((v9 & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        else
        {
          if (!*(v7 + 16) || (sub_224DAF538(), v10 = *(v7 + 40), v11 = sub_224DAF698(), v12 = -1 << *(v7 + 32), v13 = v11 & ~v12, ((*(v7 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0))
          {
LABEL_15:

            v2 = v22;
            v3 = a2;
            v5 = v21;
LABEL_16:
            sub_224A36F98(&v25, v24);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v27 = v6;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_224ADA390(0, *(v6 + 16) + 1, 1);
              v6 = v27;
            }

            v19 = *(v6 + 16);
            v18 = *(v6 + 24);
            if (v19 >= v18 >> 1)
            {
              sub_224ADA390((v18 > 1), v19 + 1, 1);
              v6 = v27;
            }

            *(v6 + 16) = v19 + 1;
            sub_224A36F98(v24, v6 + 40 * v19 + 32);
            goto LABEL_5;
          }

          v14 = ~v12;
          while (1)
          {
            v15 = *(*(v7 + 48) + 8 * v13);
            v16 = sub_224DAF6A8();

            if (v16)
            {
              break;
            }

            v13 = (v13 + 1) & v14;
            if (((*(v7 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          v2 = v22;
          v3 = a2;
          v5 = v21;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(&v25);
LABEL_5:
      if (++v4 == v2)
      {
        return v6;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_224D5662C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a2;
    v4 = 0;
    v5 = a1 + 32;
    v24 = MEMORY[0x277D84F90];
    v21 = a1 + 32;
    v22 = *(a1 + 16);
    while (1)
    {
      sub_224A3317C(v5 + 40 * v4, &v26);
      v6 = *v3;
      __swift_project_boxed_opaque_existential_1(&v26, v27);

      v7 = sub_224DAE338();
      if ((v6 & 0xC000000000000001) != 0)
      {
        v8 = sub_224DAF888();

        if (v8)
        {
          goto LABEL_8;
        }
      }

      else
      {
        if (*(v6 + 16))
        {
          sub_224DAF538();
          v13 = *(v6 + 40);
          v14 = sub_224DAF698();
          v15 = -1 << *(v6 + 32);
          v16 = v14 & ~v15;
          if ((*(v6 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
          {
            v17 = ~v15;
            while (1)
            {
              v18 = *(*(v6 + 48) + 8 * v16);
              v19 = sub_224DAF6A8();

              if (v19)
              {
                break;
              }

              v16 = (v16 + 1) & v17;
              if (((*(v6 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
              {
                goto LABEL_3;
              }
            }

            v2 = v22;
            v3 = a2;
            v5 = v21;
LABEL_8:
            sub_224A36F98(&v26, v25);
            v9 = v24;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v28 = v24;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_224ADA390(0, *(v24 + 16) + 1, 1);
              v9 = v28;
            }

            v12 = *(v9 + 16);
            v11 = *(v9 + 24);
            if (v12 >= v11 >> 1)
            {
              sub_224ADA390((v11 > 1), v12 + 1, 1);
              v9 = v28;
            }

            *(v9 + 16) = v12 + 1;
            v24 = v9;
            sub_224A36F98(v25, v9 + 40 * v12 + 32);
            goto LABEL_5;
          }
        }

LABEL_3:

        v2 = v22;
        v3 = a2;
        v5 = v21;
      }

      __swift_destroy_boxed_opaque_existential_1(&v26);
LABEL_5:
      if (++v4 == v2)
      {
        return v24;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_224D56880(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v51 = a4;
  v52 = a5;
  v50 = a3;
  v8 = sub_224DAC1E8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v13)
  {
    v49 = v5;
    v57 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    v15 = (a1 + 32);
    v56 = (v9 + 8);
    v53 = v8;
    v54 = a2;
    do
    {
      v17 = sub_224A5B354(v15);
      sub_224DAC1C8();
      v19 = sub_224D422E0(v12, a2);
      v20 = *v56;
      (*v56)(v12, v8);
      if (v19)
      {
        if (*v50)
        {
          v21 = *v50;

          v22 = sub_224DACF78();

          v23 = v15[4];
          __swift_project_boxed_opaque_existential_1(v15, v15[3]);
          v24 = sub_224DAE338();
          v25 = v24;
          if (*(v22 + 16) && (v26 = sub_224A3E7EC(v24), (v27 & 1) != 0))
          {
            v28 = *(*(v22 + 56) + 8 * v26);
          }

          else
          {
          }

          v8 = v53;
          a2 = v54;
        }

        sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
        v29 = sub_224DAEFF8();

        [v17 setOrderedWidgetDescriptors_];
      }

      sub_224DAC1D8();
      v30 = sub_224D422E0(v12, a2);
      v20(v12, v8);
      if (v30)
      {
        if (*v51)
        {
          v31 = *v51;

          v32 = sub_224DACF78();

          v33 = v15[4];
          __swift_project_boxed_opaque_existential_1(v15, v15[3]);
          v34 = sub_224DAE338();
          v35 = v34;
          if (*(v32 + 16) && (v36 = sub_224A3E7EC(v34), (v37 & 1) != 0))
          {
            v38 = *(*(v32 + 56) + 8 * v36);
          }

          else
          {
          }

          v8 = v53;
          a2 = v54;
        }

        sub_224A3B79C(0, &qword_2813509B8, 0x277CFA210);
        v39 = sub_224DAEFF8();

        [v17 setOrderedControlDescriptors_];
      }

      sub_224DAC1B8();
      v40 = sub_224D422E0(v12, a2);
      v20(v12, v8);
      if (v40)
      {
        v41 = *v52;
        v55 = v17;
        if (v41)
        {

          v42 = sub_224DACF78();

          v43 = v15[4];
          __swift_project_boxed_opaque_existential_1(v15, v15[3]);
          v44 = sub_224DAE338();
          v45 = v44;
          if (*(v42 + 16) && (v46 = sub_224A3E7EC(v44), (v47 & 1) != 0))
          {
            v48 = *(*(v42 + 56) + 8 * v46);

            sub_224AE8D28(v48);
          }

          else
          {
          }

          v8 = v53;
          a2 = v54;
        }

        sub_224A3B79C(0, &qword_2813508D0, 0x277CFA318);
        sub_224A3B758(&unk_2813508C0, &qword_2813508D0, 0x277CFA318);
        v16 = sub_224DAF1A8();

        v17 = v55;
        [v55 setLiveActivityDescriptors_];
      }

      [objc_allocWithZone(MEMORY[0x277CFA3A8]) initFromExtension_];

      sub_224DAF9B8();
      v18 = *(v57 + 16);
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
      v15 += 5;
      --v13;
    }

    while (v13);
    return v57;
  }

  return result;
}

uint64_t sub_224D56DB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_224D56DEC(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = v33 - v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224DAF538();
    sub_224A39EF8(&unk_2813509A0, MEMORY[0x277CFA140]);
    result = sub_224DAF1F8();
    a1 = v45;
    v7 = v46;
    v8 = v47;
    v9 = v48;
    v10 = v49;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v33[1] = v8;
  v35 = (v3 + 8);
  v39 = MEMORY[0x277D84F90];
  v34 = a1;
  v14 = v36;
  while (a1 < 0)
  {
    v20 = sub_224DAF878();
    if (!v20 || (*&v41 = v20, sub_224DAF538(), swift_dynamicCast(), v19 = *&v44[0], v17 = v9, v18 = v10, !*&v44[0]))
    {
LABEL_26:
      sub_224A3B7E4();
      return v39;
    }

LABEL_19:
    v40 = v18;
    v21 = *(v38 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager + 32);
    __swift_project_boxed_opaque_existential_1((v38 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager), *(v38 + OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager + 24));
    sub_224DAF528();
    sub_224DAC6C8();
    (*v35)(v14, v37);

    if (v42)
    {
      sub_224A36F98(&v41, v44);
      sub_224A36F98(v44, &v41);
      v22 = v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = sub_224A5C040(0, v22[2] + 1, 1, v22);
        v50 = v22;
      }

      v25 = v22[2];
      v24 = v22[3];
      if (v25 >= v24 >> 1)
      {
        v39 = sub_224A5C040((v24 > 1), v25 + 1, 1, v22);
        v50 = v39;
      }

      else
      {
        v39 = v22;
      }

      v26 = v42;
      v27 = v43;
      v28 = __swift_mutable_project_boxed_opaque_existential_1(&v41, v42);
      v29 = *(*(v26 - 8) + 64);
      MEMORY[0x28223BE20](v28);
      v31 = v33 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v32 + 16))(v31);
      sub_224A5C064(v25, v31, &v50, v26, v27);
      result = __swift_destroy_boxed_opaque_existential_1(&v41);
    }

    else
    {
      result = sub_224A3311C(&v41, &unk_27D6F4700, &unk_224DB3A10);
    }

    v9 = v17;
    v10 = v40;
    a1 = v34;
  }

  v15 = v9;
  v16 = v10;
  v17 = v9;
  if (v10)
  {
LABEL_15:
    v18 = (v16 - 1) & v16;
    v19 = *(*(a1 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v19)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= ((v8 + 64) >> 6))
    {
      goto LABEL_26;
    }

    v16 = *(v7 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_224D5726C(unint64_t a1, unint64_t a2)
{
  v18[1] = MEMORY[0x277D84FA0];
  if (a1)
  {
    if (a1 >> 62)
    {
      v4 = sub_224DAF838();
      if (!v4)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        goto LABEL_16;
      }
    }

    if (v4 < 1)
    {
      __break(1u);
      goto LABEL_33;
    }

    for (i = 0; i != v4; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x22AA5DCC0](i, a1);
      }

      else
      {
        v6 = *(a1 + 8 * i + 32);
      }

      v7 = v6;
      v8 = [v6 intentType];
      if (v8)
      {

        v9 = [v7 defaultIntentReference];
        if (v9)
        {
          v10 = v9;
        }

        else
        {
          sub_224A3DC84(v18, [v7 extensionIdentity]);
        }
      }

      else
      {
      }
    }
  }

LABEL_16:
  if (!a2)
  {
    return;
  }

  if (a2 >> 62)
  {
    v11 = sub_224DAF838();
    if (!v11)
    {
      return;
    }
  }

  else
  {
    v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      return;
    }
  }

  if (v11 < 1)
  {
LABEL_33:
    __break(1u);
    return;
  }

  for (j = 0; j != v11; ++j)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x22AA5DCC0](j, a2);
    }

    else
    {
      v13 = *(a2 + 8 * j + 32);
    }

    v14 = v13;
    v15 = [v13 intentType];
    if (v15)
    {

      v16 = [v14 defaultIntentReference];
      if (v16)
      {
        v17 = v16;
      }

      else
      {
        sub_224A3DC84(v18, [v14 extensionIdentity]);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_224D574B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F34E0, &unk_224DC1B70);
    v3 = sub_224DAF918();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_224DAFE68();
      if (v8)
      {
        MEMORY[0x22AA5E1E0](1);

        sub_224DAEE78();
      }

      else
      {
        MEMORY[0x22AA5E1E0](0);
      }

      result = sub_224DAFEA8();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      if ((v16 & v15) != 0)
      {
        do
        {
          v21 = (*(v3 + 48) + 16 * v13);
          v22 = v21[1];
          if (v22)
          {
            if (v8)
            {
              v23 = *v21 == v9 && v22 == v8;
              if (v23 || (result = sub_224DAFD88(), (result & 1) != 0))
              {
LABEL_3:

                goto LABEL_4;
              }
            }

            else
            {
            }
          }

          else
          {

            if (!v8)
            {
              goto LABEL_3;
            }
          }

          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
        }

        while ((v15 & (1 << v13)) != 0);
      }

      *(v5 + 8 * v14) = v15 | v16;
      v17 = (*(v3 + 48) + 16 * v13);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        break;
      }

      *(v3 + 16) = v20;
LABEL_4:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_224D5767C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_224DAF838())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F35D8, &qword_224DB3BB0);
      v3 = sub_224DAF918();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_224DAF838();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v40 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v38 = v1;
    while (1)
    {
      v8 = MEMORY[0x22AA5DCC0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_224DAF698();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_224A3B79C(0, &qword_281350A40, 0x277CFA3A8);
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_224DAF6A8();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v38;
            v5 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v38;
        v5 = v40;
        if (v7 == v40)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = v1 + 32;
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v39)
    {
      v24 = *(v3 + 40);
      v25 = *(v37 + 8 * v23);
      v26 = sub_224DAF698();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_224A3B79C(0, &qword_281350A40, 0x277CFA3A8);
        do
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_224DAF6A8();

          if (v34)
          {

            v5 = v40;
            goto LABEL_23;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
        }

        while (((1 << v28) & v30) != 0);
        v5 = v40;
      }

      *(v6 + 8 * v29) = v31 | v30;
      *(*(v3 + 48) + 8 * v28) = v25;
      v35 = *(v3 + 16);
      v9 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v36;
LABEL_23:
      if (++v23 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

unint64_t sub_224D5796C(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_224DAF838();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3610, &qword_224DB3BE8);
      result = sub_224DAF918();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_224DAF838();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    result = MEMORY[0x22AA5DCC0](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    v10 = *(v3 + 40);
    sub_224DAB338();
    sub_224A39EF8(&unk_281350FE0, MEMORY[0x277CBCDA8]);
    result = sub_224DAED88();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_224A39EF8(&unk_281350FD0, MEMORY[0x277CBCDA8]);
      do
      {
        v23 = *(*(v3 + 48) + 8 * v12);
        result = sub_224DAEDD8();
        if (result)
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v17 = *(v3 + 16);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_224D57C00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3640, &qword_224DB3C18);
    v3 = sub_224DAF918();
    v4 = 0;
    v30 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    while (1)
    {
      v5 = *(v28 + v4);
      v29 = v4 + 1;
      v6 = *(v3 + 40);
      sub_224DAFE68();
      sub_224DAEE78();

      result = sub_224DAFEA8();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v30 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          v13 = *(*(v3 + 48) + v9);
          v14 = 0xD000000000000014;
          if (v13 == 2)
          {
            v14 = 0x64657472617473;
          }

          v15 = 0xE700000000000000;
          if (v13 != 2)
          {
            v15 = 0x8000000224DC4690;
          }

          v16 = 0x437363697274656DLL;
          if (!*(*(v3 + 48) + v9))
          {
            v16 = 0xD000000000000012;
          }

          v17 = 0xEE006465676E6168;
          if (!*(*(v3 + 48) + v9))
          {
            v17 = 0x8000000224DC4660;
          }

          if (*(*(v3 + 48) + v9) <= 1u)
          {
            v18 = v16;
          }

          else
          {
            v18 = v14;
          }

          if (*(*(v3 + 48) + v9) <= 1u)
          {
            v19 = v17;
          }

          else
          {
            v19 = v15;
          }

          if (v5 > 1)
          {
            if (v5 == 2)
            {
              v22 = 0x64657472617473;
            }

            else
            {
              v22 = 0xD000000000000014;
            }

            if (v5 == 2)
            {
              v21 = 0xE700000000000000;
            }

            else
            {
              v21 = 0x8000000224DC4690;
            }

            if (v18 != v22)
            {
              goto LABEL_33;
            }
          }

          else
          {
            v20 = 0x437363697274656DLL;
            v21 = 0xEE006465676E6168;
            if (!v5)
            {
              v20 = 0xD000000000000012;
              v21 = 0x8000000224DC4660;
            }

            if (v18 != v20)
            {
              goto LABEL_33;
            }
          }

          if (v19 == v21)
          {

            goto LABEL_4;
          }

LABEL_33:
          v23 = sub_224DAFD88();

          if (v23)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v30 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v30 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v5;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      *(v3 + 16) = v26;
LABEL_4:
      v4 = v29;
      if (v29 == v27)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}