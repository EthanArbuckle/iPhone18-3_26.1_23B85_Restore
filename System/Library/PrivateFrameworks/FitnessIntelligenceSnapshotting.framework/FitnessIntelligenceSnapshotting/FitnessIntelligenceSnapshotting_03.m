uint64_t sub_20CD42500(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_20CD4255C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CD425CC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20CCED908;

  return sub_20CD31E64(a1, v5, v4);
}

uint64_t sub_20CD42728(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20CD427D0()
{
  v1 = [v0 metadata];
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  v3 = sub_20CD631C4();

  v4 = sub_20CD62874();
  if (!*(v3 + 16))
  {

    goto LABEL_6;
  }

  v6 = sub_20CD52E80(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_6:

LABEL_7:
    v9 = 0;
    memset(v11, 0, sizeof(v11));
    goto LABEL_8;
  }

  sub_20CD28ED4(*(v3 + 56) + 32 * v6, v11);

  v9 = 1;
LABEL_8:
  sub_20CD428C0(v11);
  return v9;
}

uint64_t sub_20CD428C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F88, &qword_20CD64A28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CD42928()
{
  v0 = sub_20CD631B4();
  __swift_allocate_value_buffer(v0, qword_28110F878);
  __swift_project_value_buffer(v0, qword_28110F878);
  return sub_20CD631A4();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t SeymourStore.init()@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = sub_20CD628A4();
  v19 = v1;
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CD626C4();
  v6 = type metadata accessor for SeymourStore();
  v20 = *(v6 + 20);
  v18[1] = sub_20CD62824();
  sub_20CD42CB8();
  sub_20CD633F4();
  v7 = *MEMORY[0x277D4F368];
  v8 = *(v2 + 104);
  v8(v5, v7, v1);
  v9 = sub_20CD62894();
  v23 = v9;
  v24 = MEMORY[0x277D4F358];
  __swift_allocate_boxed_opaque_existential_1(v22);
  sub_20CD62884();
  v10 = sub_20CD628D4();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_20CD628C4();
  sub_20CD633F4();
  v13 = sub_20CD62814();
  v14 = v21;
  *(v21 + v20) = v13;
  v20 = *(v6 + 24);
  sub_20CD62864();
  sub_20CD633F4();
  v8(v5, v7, v19);
  v23 = v9;
  v24 = MEMORY[0x277D4F358];
  __swift_allocate_boxed_opaque_existential_1(v22);
  sub_20CD62884();
  v15 = *(v10 + 48);
  v16 = *(v10 + 52);
  swift_allocObject();
  sub_20CD628C4();
  sub_20CD633F4();
  result = sub_20CD62854();
  *(v14 + v20) = result;
  return result;
}

uint64_t type metadata accessor for SeymourStore()
{
  result = qword_28110F590;
  if (!qword_28110F590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20CD42CB8()
{
  result = qword_28110F148;
  if (!qword_28110F148)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28110F148);
  }

  return result;
}

uint64_t SeymourStore.archivedSessions(for:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F90, &qword_20CD64A38);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD42DD0, 0, 0);
}

uint64_t sub_20CD42DD0()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = *(v2 + *(type metadata accessor for SeymourStore() + 20));
  sub_20CD62804();
  v4 = swift_task_alloc();
  v0[8] = v4;
  *(v4 + 16) = "FitnessIntelligenceSnapshotting/SeymourStore.swift";
  *(v4 + 24) = 50;
  *(v4 + 32) = 2;
  *(v4 + 40) = 27;
  *(v4 + 48) = v1;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[9] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F98, &qword_20CD64A40);
  *v6 = v0;
  v6[1] = sub_20CD42F10;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000020CD65A80, sub_20CD47C18, v4, v7);
}

uint64_t sub_20CD42F10()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  v2[10] = v0;

  v5 = v2[8];
  if (v0)
  {

    v6 = sub_20CD43130;
  }

  else
  {
    v8 = v2[6];
    v7 = v2[7];
    v9 = v2[5];
    v2[11] = v2[2];

    (*(v8 + 8))(v7, v9);
    v6 = sub_20CD43070;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_20CD43070()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[7];
  v4 = v0[3];
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  v6 = sub_20CD4329C(sub_20CD47C30, v5, v1);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_20CD43130()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];
  v2 = v0[10];

  return v1();
}

uint64_t sub_20CD431B0()
{
  v0 = sub_20CD62654();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s31FitnessIntelligenceSnapshotting0A24PlusSessionRepresentableV5start10Foundation4DateVvg_0();
  v5 = sub_20CD624F4();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_20CD4329C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v47 = a1;
  v48 = a2;
  v6 = sub_20CD62764();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v41 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v46 = &v41 - v11;
  result = MEMORY[0x28223BE20](v10);
  v51 = a3;
  v52 = &v41 - v14;
  v15 = 0;
  v18 = *(a3 + 56);
  v17 = a3 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v49 = v13;
  v50 = v13 + 32;
  v44 = (v13 + 8);
  v45 = v13 + 16;
  v42 = MEMORY[0x277D84F90];
  while (1)
  {
    v23 = v15;
    if (!v21)
    {
      break;
    }

    v24 = v4;
LABEL_10:
    v25 = *(v51 + 48);
    v26 = v49;
    v43 = *(v49 + 72);
    v27 = v46;
    (*(v49 + 16))(v46, v25 + v43 * (__clz(__rbit64(v21)) | (v15 << 6)), v6);
    v28 = *(v26 + 32);
    v29 = v6;
    v30 = v52;
    v31 = v29;
    v28(v52, v27);
    v32 = v47(v30);
    v4 = v24;
    if (v24)
    {
      (*v44)(v52, v31);
      v40 = v42;

      return v40;
    }

    v21 &= v21 - 1;
    if (v32)
    {
      v6 = v31;
      (v28)(v41, v52, v31);
      v33 = v42;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_20CD46C8C(0, *(v33 + 16) + 1, 1);
        v6 = v31;
        v33 = v53;
      }

      v36 = *(v33 + 16);
      v35 = *(v33 + 24);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        v39 = v36 + 1;
        v42 = v36;
        sub_20CD46C8C(v35 > 1, v36 + 1, 1);
        v37 = v39;
        v36 = v42;
        v6 = v31;
        v33 = v53;
      }

      *(v33 + 16) = v37;
      v38 = *(v49 + 80);
      v42 = v33;
      result = (v28)(v33 + ((v38 + 32) & ~v38) + v36 * v43, v41, v6);
    }

    else
    {
      v6 = v31;
      result = (*v44)(v52, v31);
    }
  }

  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v22)
    {

      return v42;
    }

    v21 = *(v17 + 8 * v15);
    ++v23;
    if (v21)
    {
      v24 = v4;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t SeymourStore.workouts(for:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_20CD62764();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810FA0, &qword_20CD64A50);
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD43734, 0, 0);
}

uint64_t sub_20CD43734()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v0[6];
    v26 = MEMORY[0x277D84F90];
    sub_20CD46CD0(0, v2, 0);
    v3 = v26;
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v24 = *(v4 + 56);
    v25 = v5;
    v7 = (v4 - 8);
    do
    {
      v8 = v0[7];
      v9 = v0[5];
      v25(v8, v6, v9);
      v10 = sub_20CD62734();
      v12 = v11;
      (*v7)(v8, v9);
      v14 = *(v26 + 16);
      v13 = *(v26 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_20CD46CD0((v13 > 1), v14 + 1, 1);
      }

      *(v26 + 16) = v14 + 1;
      v15 = v26 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v6 += v24;
      --v2;
    }

    while (v2);
  }

  v16 = v0[10];
  v17 = v0[4];
  v18 = *(v17 + *(type metadata accessor for SeymourStore() + 24));
  sub_20CD48898(v3);

  sub_20CD62834();

  v19 = swift_task_alloc();
  v0[11] = v19;
  *(v19 + 16) = "FitnessIntelligenceSnapshotting/SeymourStore.swift";
  *(v19 + 24) = 50;
  *(v19 + 32) = 2;
  *(v19 + 40) = 35;
  *(v19 + 48) = v16;
  v20 = *(MEMORY[0x277D85A40] + 4);
  v21 = swift_task_alloc();
  v0[12] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810FA8, &qword_20CD64A58);
  *v21 = v0;
  v21[1] = sub_20CD439A0;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000020CD65A80, sub_20CD48930, v19, v22);
}

uint64_t sub_20CD439A0()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  v2[13] = v0;

  v5 = v2[11];
  if (v0)
  {

    v6 = sub_20CD43C48;
  }

  else
  {
    v8 = v2[9];
    v7 = v2[10];
    v9 = v2[8];
    v2[14] = v2[2];

    (*(v8 + 8))(v7, v9);
    v6 = sub_20CD43B00;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_20CD43B00()
{
  v12 = v0;
  v1 = v0[14];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = MEMORY[0x277D52828];
    v4 = sub_20CD444AC(*(v1 + 16), 0, &qword_27C811018, &qword_20CD64B48, MEMORY[0x277D52828]);
    v5 = *(sub_20CD627A4() - 8);
    v6 = sub_20CD48310(&v11, (v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80))), v2, v1, v3);
    sub_20CD48948();
    if (v6 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  v7 = v0[10];
  v8 = v0[7];

  v9 = v0[1];

  return v9(v4);
}

uint64_t sub_20CD43C48()
{
  v1 = v0[7];
  (*(v0[9] + 8))(v0[10], v0[8]);

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t SeymourStore.modalities()()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810FB0, &qword_20CD64A68);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD43D9C, 0, 0);
}

uint64_t sub_20CD43D9C()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = *(v2 + *(type metadata accessor for SeymourStore() + 24));
  sub_20CD62844();
  v4 = swift_task_alloc();
  v0[7] = v4;
  *(v4 + 16) = "FitnessIntelligenceSnapshotting/SeymourStore.swift";
  *(v4 + 24) = 50;
  *(v4 + 32) = 2;
  *(v4 + 40) = 41;
  *(v4 + 48) = v1;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[8] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810FB8, &qword_20CD64A70);
  *v6 = v0;
  v6[1] = sub_20CD43EDC;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000020CD65A80, sub_20CD48950, v4, v7);
}

uint64_t sub_20CD43EDC()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  v2[9] = v0;

  v5 = v2[7];
  if (v0)
  {

    v6 = sub_20CD44178;
  }

  else
  {
    v8 = v2[5];
    v7 = v2[6];
    v9 = v2[4];
    v2[10] = v2[2];

    (*(v8 + 8))(v7, v9);
    v6 = sub_20CD4403C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_20CD4403C()
{
  v11 = v0;
  v1 = v0[10];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = MEMORY[0x277D52AF8];
    v4 = sub_20CD444AC(*(v1 + 16), 0, &qword_27C811008, &qword_20CD64B38, MEMORY[0x277D52AF8]);
    v5 = *(sub_20CD627D4() - 8);
    v6 = sub_20CD48310(&v10, (v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80))), v2, v1, v3);
    sub_20CD48948();
    if (v6 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  v7 = v0[6];

  v8 = v0[1];

  return v8(v4);
}

uint64_t sub_20CD44178()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

uint64_t sub_20CD441F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20CD49268;

  return SeymourStore.archivedSessions(for:)(a1);
}

uint64_t sub_20CD4428C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20CD49268;

  return SeymourStore.workouts(for:)(a1);
}

uint64_t sub_20CD44320()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20CD443AC;

  return SeymourStore.modalities()();
}

uint64_t sub_20CD443AC(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

size_t sub_20CD444AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20CD445A8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20CD62654();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_20CD49218(&qword_27C811040, MEMORY[0x277CC9578]);
  v36 = a2;
  v13 = sub_20CD631D4();
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
      sub_20CD49218(&qword_27C811048, MEMORY[0x277CC9578]);
      v23 = sub_20CD63234();
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
    sub_20CD455F4(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_20CD44888(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v27 = &v27 - v10;
  v28 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_20CD63624();
  sub_20CD62AB4();
  sub_20CD49218(&qword_28110F780, MEMORY[0x277D09F70]);
  sub_20CD631E4();
  v13 = *(v4 + 36);
  v33 = a2;
  v30 = v13;
  v31 = v4;
  sub_20CD631E4();
  v14 = sub_20CD63644();
  v32 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v14 & ~v15;
  if ((*(v11 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = *(v5 + 72);
    while (1)
    {
      sub_20CD49140(*(v32 + 48) + v18 * v16, v9);
      sub_20CD49218(&qword_28110F770, MEMORY[0x277D09F70]);
      if (sub_20CD63234())
      {
        v20 = &v9[*(v31 + 36)];
        v21 = sub_20CD63234();
        sub_20CD491B0(v9);
        if (v21)
        {
          sub_20CD491B0(v33);
          sub_20CD49140(*(v32 + 48) + v18 * v16, v29);
          return 0;
        }
      }

      else
      {
        sub_20CD491B0(v9);
      }

      v16 = (v16 + 1) & v17;
      v19 = v33;
      if (((*(v11 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  v19 = v33;
LABEL_9:
  v23 = v28;
  v24 = *v28;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = v27;
  sub_20CD49140(v19, v27);
  v34 = *v23;
  sub_20CD45898(v26, v16, isUniquelyReferenced_nonNull_native);
  *v23 = v34;
  sub_20CD4255C(v19, v29);
  return 1;
}

uint64_t sub_20CD44B8C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_20CD63624();
  sub_20CD63284();
  v9 = sub_20CD63644();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_20CD63594() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_20CD45B84(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_20CD44CDC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_20CD62654();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811050, &unk_20CD64B78);
  result = sub_20CD63484();
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
      sub_20CD49218(&qword_27C811040, MEMORY[0x277CC9578]);
      result = sub_20CD631D4();
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

uint64_t sub_20CD45038(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v39 = &v35 - v6;
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811058, &qword_20CD64B88);
  result = sub_20CD63484();
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
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48);
      v23 = *(v37 + 72);
      v24 = v39;
      sub_20CD4255C(v22 + v23 * (v19 | (v11 << 6)), v39);
      v25 = *(v10 + 40);
      sub_20CD63624();
      sub_20CD62AB4();
      sub_20CD49218(&qword_28110F780, MEMORY[0x277D09F70]);
      sub_20CD631E4();
      v26 = v24 + *(v38 + 36);
      sub_20CD631E4();
      result = sub_20CD63644();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_20CD4255C(v39, *(v10 + 48) + v18 * v23);
      ++*(v10 + 16);
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

    v34 = 1 << *(v7 + 32);
    if (v34 >= 64)
    {
      bzero(v12, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_20CD45394(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EA8, &qword_20CD64728);
  result = sub_20CD63484();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_20CD63624();
      sub_20CD63284();
      result = sub_20CD63644();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_20CD455F4(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_20CD62654();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
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
    sub_20CD44CDC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_20CD45D04();
      goto LABEL_12;
    }

    sub_20CD46284(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_20CD49218(&qword_27C811040, MEMORY[0x277CC9578]);
  v15 = sub_20CD631D4();
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
      sub_20CD49218(&qword_27C811048, MEMORY[0x277CC9578]);
      v23 = sub_20CD63234();
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
  result = sub_20CD635B4();
  __break(1u);
  return result;
}

uint64_t sub_20CD45898(uint64_t a1, unint64_t a2, char a3)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v30);
  v10 = &v26 - v9;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v27 = v7;
  v28 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_20CD45038(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_20CD45F3C();
      goto LABEL_15;
    }

    sub_20CD465A0(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_20CD63624();
  sub_20CD62AB4();
  sub_20CD49218(&qword_28110F780, MEMORY[0x277D09F70]);
  sub_20CD631E4();
  v29 = *(v30 + 36);
  sub_20CD631E4();
  v15 = sub_20CD63644();
  v16 = -1 << *(v13 + 32);
  a2 = v15 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v18 = *(v7 + 72);
    do
    {
      sub_20CD49140(*(v13 + 48) + v18 * a2, v10);
      sub_20CD49218(&qword_28110F770, MEMORY[0x277D09F70]);
      if (sub_20CD63234())
      {
        v19 = &v10[*(v30 + 36)];
        v20 = sub_20CD63234();
        sub_20CD491B0(v10);
        if (v20)
        {
          sub_20CD635B4();
          __break(1u);
          break;
        }
      }

      else
      {
        sub_20CD491B0(v10);
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v21 = *v28;
  *(*v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_20CD4255C(a1, *(v21 + 48) + *(v27 + 72) * a2);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v25;
  }

  return result;
}

uint64_t sub_20CD45B84(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_20CD45394(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_20CD46128();
      goto LABEL_16;
    }

    sub_20CD468CC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_20CD63624();
  sub_20CD63284();
  result = sub_20CD63644();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_20CD63594();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_20CD635B4();
  __break(1u);
  return result;
}

void *sub_20CD45D04()
{
  v1 = v0;
  v2 = sub_20CD62654();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811050, &unk_20CD64B78);
  v7 = *v0;
  v8 = sub_20CD63474();
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

void *sub_20CD45F3C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v23 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811058, &qword_20CD64B88);
  v7 = *v0;
  v8 = sub_20CD63474();
  v9 = v8;
  if (*(v7 + 16))
  {
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
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_20CD49140(*(v7 + 48) + v22, v6);
        result = sub_20CD4255C(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_20CD46128()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EA8, &qword_20CD64728);
  v2 = *v0;
  v3 = sub_20CD63474();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_20CD46284(uint64_t a1)
{
  v2 = v1;
  v37 = sub_20CD62654();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811050, &unk_20CD64B78);
  v10 = sub_20CD63484();
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
      sub_20CD49218(&qword_27C811040, MEMORY[0x277CC9578]);
      result = sub_20CD631D4();
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

uint64_t sub_20CD465A0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v4);
  v38 = &v34 - v6;
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811058, &qword_20CD64B88);
  result = sub_20CD63484();
  v10 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
    v35 = v7;
    v11 = 0;
    v12 = v7 + 56;
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
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48);
      v23 = *(v36 + 72);
      v24 = v38;
      sub_20CD49140(v22 + v23 * (v19 | (v11 << 6)), v38);
      v25 = *(v10 + 40);
      sub_20CD63624();
      sub_20CD62AB4();
      sub_20CD49218(&qword_28110F780, MEMORY[0x277D09F70]);
      sub_20CD631E4();
      v26 = v24 + *(v37 + 36);
      sub_20CD631E4();
      result = sub_20CD63644();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_20CD4255C(v38, *(v10 + 48) + v18 * v23);
      ++*(v10 + 16);
      v7 = v35;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v2 = v34;
        goto LABEL_28;
      }

      v21 = *(v12 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
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

uint64_t sub_20CD468CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EA8, &qword_20CD64728);
  result = sub_20CD63484();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_20CD63624();

      sub_20CD63284();
      result = sub_20CD63644();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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
    *v2 = v6;
  }

  return result;
}

size_t sub_20CD46B04(size_t a1, int64_t a2, char a3)
{
  result = sub_20CD47284(a1, a2, a3, *v3, &qword_27C810FE8, &qword_20CD64B08, MEMORY[0x277D09F70]);
  *v3 = result;
  return result;
}

size_t sub_20CD46B48(size_t a1, int64_t a2, char a3)
{
  result = sub_20CD46E48(a1, a2, a3, *v3, &qword_27C811060, &qword_20CD64B90, &qword_27C810D08, &qword_20CD64280);
  *v3 = result;
  return result;
}

size_t sub_20CD46B88(size_t a1, int64_t a2, char a3)
{
  result = sub_20CD46E48(a1, a2, a3, *v3, &qword_27C810FF0, &unk_20CD64B10, &qword_27C810EB8, &qword_20CD64810);
  *v3 = result;
  return result;
}

size_t sub_20CD46BC8(size_t a1, int64_t a2, char a3)
{
  result = sub_20CD46E48(a1, a2, a3, *v3, &qword_27C810FF8, &unk_20CD64B20, &qword_27C810EC0, &qword_20CD64818);
  *v3 = result;
  return result;
}

size_t sub_20CD46C08(size_t a1, int64_t a2, char a3)
{
  result = sub_20CD46E48(a1, a2, a3, *v3, &qword_27C811000, &qword_20CD64B30, &qword_27C810EC8, &qword_20CD64820);
  *v3 = result;
  return result;
}

size_t sub_20CD46C48(size_t a1, int64_t a2, char a3)
{
  result = sub_20CD47284(a1, a2, a3, *v3, &qword_27C810FE0, &qword_20CD64B00, MEMORY[0x277D0A6A0]);
  *v3 = result;
  return result;
}

size_t sub_20CD46C8C(size_t a1, int64_t a2, char a3)
{
  result = sub_20CD47284(a1, a2, a3, *v3, &qword_27C811030, &qword_20CD64B68, MEMORY[0x277D50978]);
  *v3 = result;
  return result;
}

char *sub_20CD46CD0(char *a1, int64_t a2, char a3)
{
  result = sub_20CD47030(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20CD46CF0(void *a1, int64_t a2, char a3)
{
  result = sub_20CD4713C(a1, a2, a3, *v3, &qword_27C810FD0, &qword_20CD64AF0, &qword_27C810FD8, &qword_20CD64AF8);
  *v3 = result;
  return result;
}

void *sub_20CD46D30(void *a1, int64_t a2, char a3)
{
  result = sub_20CD4713C(a1, a2, a3, *v3, &qword_27C810FC0, &qword_20CD64AE0, &qword_27C810FC8, &qword_20CD64AE8);
  *v3 = result;
  return result;
}

size_t sub_20CD46D70(size_t a1, int64_t a2, char a3)
{
  result = sub_20CD47284(a1, a2, a3, *v3, &qword_27C810F70, &qword_20CD64A00, MEMORY[0x277D0A558]);
  *v3 = result;
  return result;
}

size_t sub_20CD46DB4(size_t a1, int64_t a2, char a3)
{
  result = sub_20CD47284(a1, a2, a3, *v3, &unk_27C811068, qword_20CD64B98, MEMORY[0x277D0A248]);
  *v3 = result;
  return result;
}

size_t sub_20CD46E48(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_20CD47030(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811028, &qword_20CD64B60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20CD4713C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_20CD47284(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_20CD47460(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811010, &qword_20CD64B40);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_20CD631B4();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_20CD4802C(0x65uLL);
  sub_20CD628B4();
  v18 = sub_20CD63194();
  v41 = sub_20CD633D4();
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
    v21 = sub_20CD634C4();
    v39 = a4;
    v23 = sub_20CD6153C(v21, v22, &v48);
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
    _os_log_impl(&dword_20CCEA000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x20F3115B0](v30, -1, -1);
    MEMORY[0x20F3115B0](v20, -1, -1);

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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810FB0, &qword_20CD64A68);
  v34 = sub_20CD627E4();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_20CD48EA8;
  *(v35 + 24) = v33;

  v34(sub_20CD49264, v35);
}

uint64_t sub_20CD4783C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811038, &qword_20CD64B70);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_20CD631B4();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_20CD4802C(0x65uLL);
  sub_20CD628B4();
  v18 = sub_20CD63194();
  v41 = sub_20CD633D4();
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
    v21 = sub_20CD634C4();
    v39 = a4;
    v23 = sub_20CD6153C(v21, v22, &v48);
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
    _os_log_impl(&dword_20CCEA000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x20F3115B0](v30, -1, -1);
    MEMORY[0x20F3115B0](v20, -1, -1);

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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F90, &qword_20CD64A38);
  v34 = sub_20CD627E4();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_20CD48FEC;
  *(v35 + 24) = v33;

  v34(sub_20CD49040, v35);
}

uint64_t sub_20CD47C50(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811020, &unk_20CD64B50);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_20CD631B4();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_20CD4802C(0x65uLL);
  sub_20CD628B4();
  v18 = sub_20CD63194();
  v41 = sub_20CD633D4();
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
    v21 = sub_20CD634C4();
    v39 = a4;
    v23 = sub_20CD6153C(v21, v22, &v48);
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
    _os_log_impl(&dword_20CCEA000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x20F3115B0](v30, -1, -1);
    MEMORY[0x20F3115B0](v20, -1, -1);

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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810FA0, &qword_20CD64A50);
  v34 = sub_20CD627E4();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_20CD48EBC;
  *(v35 + 24) = v33;

  v34(sub_20CD49264, v35);
}

unint64_t sub_20CD4802C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x20F3115C0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x20F3115C0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20CD480B8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10)
{
  v33 = a7;
  v32 = a6;
  v31[2] = a5;
  v34 = a2;
  v13 = a10;
  v35 = a9;
  v14 = sub_20CD631B4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CD628B4();
  v19 = sub_20CD63194();
  v20 = sub_20CD633D4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v31[1] = a8;
    v22 = v21;
    v23 = swift_slowAlloc();
    v31[0] = a10;
    v24 = v23;
    v36 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a3;
    *(v22 + 12) = 2080;
    v25 = sub_20CD634C4();
    v27 = sub_20CD6153C(v25, v26, &v36);

    *(v22 + 14) = v27;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v33;
    _os_log_impl(&dword_20CCEA000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v28 = v24;
    v13 = v31[0];
    MEMORY[0x20F3115B0](v28, -1, -1);
    MEMORY[0x20F3115B0](v22, -1, -1);
  }

  (*(v15 + 8))(v18, v14);
  v36 = a1;
  if (v34)
  {
    v29 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(v35, v13);
    return sub_20CD63334();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(v35, v13);
    return sub_20CD63344();
  }
}

uint64_t sub_20CD48310(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v42 = a5(0);
  v44 = *(v42 - 8);
  v9 = *(v44 + 64);
  v10 = (MEMORY[0x28223BE20])();
  v43 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v41 = &v35 - v13;
  v14 = a4 + 56;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v33 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v14;
    *(a1 + 16) = ~v15;
    *(a1 + 24) = v33;
    *(a1 + 32) = v17;
    return a3;
  }

  if (!a3)
  {
    v33 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(a4 + 32);
    v36 = a1;
    result = 0;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v37 = v44 + 32;
    v38 = v44 + 16;
    a1 = 1;
    v39 = a4 + 56;
    v40 = a3;
    v20 = v41;
    while (v17)
    {
      v46 = a2;
LABEL_15:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v45 = v18;
      v24 = a4;
      v25 = *(a4 + 48);
      v26 = v43;
      v27 = v44;
      v28 = *(v44 + 72);
      v29 = v42;
      (*(v44 + 16))(v43, v25 + v28 * (v23 | (v18 << 6)), v42);
      v30 = *(v27 + 32);
      v30(v20, v26, v29);
      v31 = v46;
      v30(v46, v20, v29);
      a3 = v40;
      if (a1 == v40)
      {
        v15 = v35;
        a1 = v36;
        a4 = v24;
        v33 = v45;
        v14 = v39;
        goto LABEL_25;
      }

      a2 = &v31[v28];
      result = a1;
      v32 = __OFADD__(a1++, 1);
      a4 = v24;
      v18 = v45;
      v14 = v39;
      if (v32)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v46 = a2;
        v18 = v22;
        goto LABEL_15;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v33 = v34 - 1;
    a3 = result;
    v15 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_20CD485B8(uint64_t a1)
{
  v2 = sub_20CD62654();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_20CD49218(&qword_27C811040, MEMORY[0x277CC9578]);
  result = MEMORY[0x20F310D70](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_20CD445A8(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_20CD48754(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_20CD4908C();
  result = MEMORY[0x20F310D70](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_20CD49140(v13, v7);
      sub_20CD44888(v9, v7);
      sub_20CD491B0(v9);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_20CD48898(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x20F310D70](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_20CD44B8C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t dispatch thunk of SeymourStoreProtocol.archivedSessions(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_20CD49260;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of SeymourStoreProtocol.workouts(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_20CD49260;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of SeymourStoreProtocol.modalities()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CD48CE8;

  return v9(a1, a2);
}

uint64_t sub_20CD48CE8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_20CD48E0C()
{
  result = sub_20CD626F4();
  if (v1 <= 0x3F)
  {
    result = sub_20CD62824();
    if (v2 <= 0x3F)
    {
      result = sub_20CD62864();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t objectdestroyTm_1(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 56) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t objectdestroy_18Tm()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CD49044(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(result + 8);
  v5 = *result;
  v6 = v4;
  if (v2)
  {
    return v2(&v5);
  }

  return result;
}

unint64_t sub_20CD4908C()
{
  result = qword_28110F198;
  if (!qword_28110F198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C810D08, &qword_20CD64280);
    sub_20CD49218(&qword_28110F780, MEMORY[0x277D09F70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110F198);
  }

  return result;
}

uint64_t sub_20CD49140(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CD491B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810D08, &qword_20CD64280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CD49218(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20CD49284()
{
  v1 = *v0;
  sub_20CD63624();
  MEMORY[0x20F311000](v1);
  return sub_20CD63644();
}

uint64_t sub_20CD492F8()
{
  v1 = *v0;
  sub_20CD63624();
  MEMORY[0x20F311000](v1);
  return sub_20CD63644();
}

char *sub_20CD4933C(void *a1)
{
  v3 = sub_20CD626A4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting22SnapshotDatabaseClient_proxyProvider] = 0;
  sub_20CD62694();
  (*(v4 + 32))(&v1[OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting22SnapshotDatabaseClient_identifier], v7, v3);
  *&v1[OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting22SnapshotDatabaseClient_healthStore] = a1;
  v8 = objc_allocWithZone(MEMORY[0x277CCD6A8]);
  v9 = a1;
  v10 = [v8 initWithHealthStore_];
  *&v1[OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting22SnapshotDatabaseClient_nanoSyncControl] = v10;
  v11 = type metadata accessor for SnapshotDatabaseClient();
  v19.receiver = v1;
  v19.super_class = v11;
  v12 = objc_msgSendSuper2(&v19, sel_init);
  sub_20CD62DB4();
  (*(v4 + 16))(v7, &v12[OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting22SnapshotDatabaseClient_identifier], v3);
  v13 = objc_allocWithZone(MEMORY[0x277CCDAA0]);
  v14 = sub_20CD63244();

  v15 = sub_20CD62674();
  v16 = [v13 initWithHealthStore:v9 taskIdentifier:v14 exportedObject:v12 taskUUID:v15];

  (*(v4 + 8))(v7, v3);
  v17 = *&v12[OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting22SnapshotDatabaseClient_proxyProvider];
  *&v12[OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting22SnapshotDatabaseClient_proxyProvider] = v16;

  return v12;
}

id sub_20CD495A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SnapshotDatabaseClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SnapshotDatabaseClient()
{
  result = qword_28110F858;
  if (!qword_28110F858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CD496C8()
{
  result = sub_20CD626A4();
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

void sub_20CD49770(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)())
{
  sub_20CD28ED4(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8110E8, &qword_20CD64C00);
  if (swift_dynamicCast())
  {
    a4();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_20CD1CEF0();
    v6 = swift_allocError();
    *v7 = 1;
    a2();
  }
}

uint64_t sub_20CD49844(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[3] = swift_getObjectType();
  v6[0] = a2;

  swift_unknownObjectRetain();
  v4(v6);

  return __swift_destroy_boxed_opaque_existential_0(v6);
}

void sub_20CD498B4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_20CD4991C(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8110F0, &qword_20CD64C08);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v12 = *(v4 + 16);
  v12(&v29 - v10, a1, v3);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v32 = swift_allocObject();
  v33 = v4;
  v14 = *(v4 + 32);
  v14(v32 + v13, v11, v3);
  v12(v9, v30, v3);
  v12(v34, v9, v3);
  v15 = swift_allocObject();
  v16 = v15 + v13;
  v17 = v3;
  v14(v16, v9, v3);
  v18 = *(v31 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting22SnapshotDatabaseClient_proxyProvider);
  if (v18)
  {
    v19 = swift_allocObject();
    v19[2] = sub_20CD4D250;
    v19[3] = v15;
    v20 = v32;
    v19[4] = sub_20CD4D228;
    v19[5] = v20;
    v39 = sub_20CD1DF94;
    v40 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_20CD49844;
    v38 = &block_descriptor_77;
    v21 = _Block_copy(&aBlock);
    v22 = v18;

    v39 = sub_20CD4D250;
    v40 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_20CD498B4;
    v38 = &block_descriptor_80;
    v23 = _Block_copy(&aBlock);

    [v22 fetchProxyWithHandler:v21 errorHandler:v23];

    _Block_release(v23);
    _Block_release(v21);

    v24 = v34;
  }

  else
  {
    sub_20CD1CEF0();
    v25 = swift_allocError();
    *v26 = 0;
    v27 = v34;
    sub_20CD1B6B4(v25, v34, &qword_27C8110F0, &qword_20CD64C08);

    v24 = v27;
  }

  return (*(v33 + 8))(v24, v17);
}

void sub_20CD49CEC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8110F0, &qword_20CD64C08);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a2, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_20CD4D264;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CD4A078;
  aBlock[3] = &block_descriptor_86;
  v11 = _Block_copy(aBlock);

  [a1 listCacheIndexesWithCompletion_];
  _Block_release(v11);
}

uint64_t sub_20CD49E9C(uint64_t a1, unint64_t *a2)
{
  v4 = sub_20CD62AB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v18 = a2;
    v9 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8110F0, &qword_20CD64C08);
    return sub_20CD63334();
  }

  else
  {
    v11 = *(a1 + 16);
    v12 = MEMORY[0x277D84F90];
    if (v11)
    {
      v18 = MEMORY[0x277D84F90];
      sub_20CD46B04(0, v11, 0);
      v12 = v18;
      v13 = (a1 + 32);
      do
      {
        v14 = *v13++;
        sub_20CD62AC4();
        v18 = v12;
        v16 = v12[2];
        v15 = v12[3];
        if (v16 >= v15 >> 1)
        {
          sub_20CD46B04(v15 > 1, v16 + 1, 1);
          v12 = v18;
        }

        v12[2] = v16 + 1;
        (*(v5 + 32))(v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, v8, v4);
        --v11;
      }

      while (v11);
    }

    v18 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8110F0, &qword_20CD64C08);
    return sub_20CD63344();
  }
}

uint64_t sub_20CD4A084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  v42 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8110F8, &unk_20CD64C10);
  v35 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v43 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v39 = &v34 - v9;
  v37 = v6;
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - v10;
  v36 = &v34 - v10;
  v12 = sub_20CD62E94();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  (*(v13 + 16))(&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v12);
  v15 = *(v5 + 16);
  v15(v11, v42, v4);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = *(v5 + 80);
  v38 = v17 | 7;
  v18 = swift_allocObject();
  v19 = v12;
  v20 = v35;
  (*(v13 + 32))(v18 + v16, &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  v41 = v5;
  v21 = *(v5 + 32);
  v21(v18 + ((v14 + v17 + v16) & ~v17), v36, v20);
  v22 = v39;
  v15(v39, v42, v20);
  v15(v43, v22, v20);
  v23 = swift_allocObject();
  v21(v23 + ((v17 + 16) & ~v17), v22, v20);
  v24 = *(v40 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting22SnapshotDatabaseClient_proxyProvider);
  if (v24)
  {
    v25 = swift_allocObject();
    v25[2] = sub_20CD4DB38;
    v25[3] = v23;
    v25[4] = sub_20CD4D76C;
    v25[5] = v18;
    v48 = sub_20CD1DF94;
    v49 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_20CD49844;
    v47 = &block_descriptor_165;
    v26 = _Block_copy(&aBlock);
    v27 = v24;

    v48 = sub_20CD4DB38;
    v49 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_20CD498B4;
    v47 = &block_descriptor_168;
    v28 = _Block_copy(&aBlock);

    [v27 fetchProxyWithHandler:v26 errorHandler:v28];

    _Block_release(v28);
    _Block_release(v26);

    v29 = v43;
  }

  else
  {
    sub_20CD1CEF0();
    v30 = swift_allocError();
    *v31 = 0;
    v32 = v43;
    sub_20CD1B6B4(v30, v43, &unk_27C8110F8, &unk_20CD64C10);

    v29 = v32;
  }

  return (*(v41 + 8))(v29, v20);
}

void sub_20CD4A548(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8110F8, &unk_20CD64C10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = aBlock - v8;
  sub_20CD62E84();
  v10 = sub_20CD63244();

  (*(v6 + 16))(v9, a3, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, v9, v5);
  aBlock[4] = sub_20CD4DB3C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CD4A71C;
  aBlock[3] = &block_descriptor_174;
  v13 = _Block_copy(aBlock);

  [a1 mostRecentCheckpointsWithType:v10 completion:v13];
  _Block_release(v13);
}

void sub_20CD4A728(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = sub_20CD632E4();

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_20CD4A7B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v39 = a4;
  v34 = a2;
  v37 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8110F8, &unk_20CD64C10);
  v6 = *(v33 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v33);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v14 = *(v6 + 16);
  v14(&v32 - v12, a1);
  v15 = *(v6 + 80);
  v16 = swift_allocObject();
  v35 = a3;
  v36 = v16;
  v17 = v39;
  *(v16 + 16) = a3;
  *(v16 + 24) = v17;
  v38 = v6;
  v18 = *(v6 + 32);
  v19 = v33;
  v18(v16 + ((v15 + 32) & ~v15), v13, v33);
  (v14)(v11, v37, v19);
  v37 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (v14)(v37, v11, v19);
  v20 = swift_allocObject();
  v18(v20 + ((v15 + 16) & ~v15), v11, v19);
  v21 = *(v34 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting22SnapshotDatabaseClient_proxyProvider);
  if (v21)
  {
    v22 = swift_allocObject();
    v22[2] = sub_20CD4D520;
    v22[3] = v20;
    v23 = v36;
    v22[4] = sub_20CD4D4A0;
    v22[5] = v23;
    v44 = sub_20CD1DF94;
    v45 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v41 = 1107296256;
    v42 = sub_20CD49844;
    v43 = &block_descriptor_143;
    v24 = _Block_copy(&aBlock);
    sub_20CD1CF44(v35, v39);
    v25 = v21;

    v44 = sub_20CD4D520;
    v45 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v41 = 1107296256;
    v42 = sub_20CD498B4;
    v43 = &block_descriptor_146;
    v26 = _Block_copy(&aBlock);

    [v25 fetchProxyWithHandler:v24 errorHandler:v26];

    _Block_release(v26);
    _Block_release(v24);

    v27 = v37;
  }

  else
  {
    sub_20CD1CEF0();
    v28 = swift_allocError();
    *v29 = 0;
    sub_20CD1CF44(v35, v39);
    v30 = v37;
    sub_20CD1B6B4(v28, v37, &unk_27C8110F8, &unk_20CD64C10);

    v27 = v30;
  }

  return (*(v38 + 8))(v27, v19);
}

void sub_20CD4ABBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8110F8, &unk_20CD64C10);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = sub_20CD62524();
  (*(v7 + 16))(v10, a4, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = sub_20CD4D534;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CD4A71C;
  aBlock[3] = &block_descriptor_152;
  v14 = _Block_copy(aBlock);

  [a1 listIntermediateCheckpointsWithStep:v11 completion:v14];
  _Block_release(v14);
}

uint64_t sub_20CD4AD8C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v6 = sub_20CD62EF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v19 = a2;
    v11 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8110F8, &unk_20CD64C10);
    return sub_20CD63334();
  }

  else
  {
    v13 = *(a1 + 16);
    v14 = MEMORY[0x277D84F90];
    if (v13)
    {
      v18[0] = a3;
      v19 = MEMORY[0x277D84F90];
      sub_20CD46D70(0, v13, 0);
      v14 = v19;
      v18[1] = v7 + 32;
      v15 = (a1 + 40);
      do
      {
        sub_20CD1CF44(*(v15 - 1), *v15);
        sub_20CD4D5B8();
        sub_20CD62D54();
        v19 = v14;
        v17 = v14[2];
        v16 = v14[3];
        if (v17 >= v16 >> 1)
        {
          sub_20CD46D70(v16 > 1, v17 + 1, 1);
          v14 = v19;
        }

        v15 += 2;
        v14[2] = v17 + 1;
        (*(v7 + 32))(v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, v10, v6);
        --v13;
      }

      while (v13);
    }

    v19 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8110F8, &unk_20CD64C10);
    return sub_20CD63344();
  }
}

uint64_t sub_20CD4AFDC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v41 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0);
  v39 = v7;
  v8 = *(v7 - 8);
  v42 = *(v8 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v49 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v43 = &v39 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - v13;
  v40 = &v39 - v13;
  v15 = sub_20CD62E94();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  (*(v16 + 16))(&v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v15);
  v48 = v8;
  v18 = *(v8 + 16);
  v18(v14, a1, v7);
  v19 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v20 = *(v8 + 80);
  v21 = (v17 + v20 + v19) & ~v20;
  v22 = swift_allocObject();
  v23 = v47;
  *(v22 + 16) = v46;
  *(v22 + 24) = v23;
  v24 = v22 + v19;
  v25 = v39;
  v26 = v15;
  v27 = v22;
  (*(v16 + 32))(v24, &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  v28 = *(v48 + 32);
  v44 = v27;
  v28(v27 + v21, v40, v25);
  v29 = v43;
  v18(v43, v41, v25);
  v18(v49, v29, v25);
  v30 = swift_allocObject();
  v28(v30 + ((v20 + 16) & ~v20), v29, v25);
  v31 = *(v45 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting22SnapshotDatabaseClient_proxyProvider);
  if (v31)
  {
    v32 = swift_allocObject();
    v32[2] = sub_20CD4DB30;
    v32[3] = v30;
    v33 = v44;
    v32[4] = sub_20CD4D330;
    v32[5] = v33;
    v54 = sub_20CD1DF94;
    v55 = v32;
    aBlock = MEMORY[0x277D85DD0];
    v51 = 1107296256;
    v52 = sub_20CD49844;
    v53 = &block_descriptor_121_0;
    v34 = _Block_copy(&aBlock);
    sub_20CD1CF44(v46, v47);
    v35 = v31;

    v54 = sub_20CD4DB30;
    v55 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v51 = 1107296256;
    v52 = sub_20CD498B4;
    v53 = &block_descriptor_124;
    v36 = _Block_copy(&aBlock);

    [v35 fetchProxyWithHandler:v34 errorHandler:v36];

    _Block_release(v36);
    _Block_release(v34);
  }

  else
  {
    sub_20CD1CEF0();
    v35 = swift_allocError();
    *v37 = 0;
    sub_20CD1CF44(v46, v47);
    sub_20CD1B6B4(v35, v49, &qword_27C810EB0, &unk_20CD64BF0);
  }

  return (*(v48 + 8))(v49, v25);
}

void sub_20CD4B4C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = aBlock - v10;
  v12 = sub_20CD62524();
  sub_20CD62E84();
  v13 = sub_20CD63244();

  (*(v8 + 16))(v11, a5, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v11, v7);
  aBlock[4] = sub_20CD4D414;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CD4B738;
  aBlock[3] = &block_descriptor_130;
  v16 = _Block_copy(aBlock);

  [a1 saveWithRecordsData:v12 type:v13 completion:v16];
  _Block_release(v16);
}

uint64_t sub_20CD4B6C0(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0);
    return sub_20CD63334();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0);
    return sub_20CD63344();
  }
}

void sub_20CD4B738(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_20CD4B7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  v42 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0);
  v35 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v43 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v39 = &v34 - v9;
  v37 = v6;
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - v10;
  v36 = &v34 - v10;
  v12 = sub_20CD62AB4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  (*(v13 + 16))(&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v12);
  v15 = *(v5 + 16);
  v15(v11, v42, v4);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = *(v5 + 80);
  v38 = v17 | 7;
  v18 = swift_allocObject();
  v19 = v12;
  v20 = v35;
  (*(v13 + 32))(v18 + v16, &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  v41 = v5;
  v21 = *(v5 + 32);
  v21(v18 + ((v14 + v17 + v16) & ~v17), v36, v20);
  v22 = v39;
  v15(v39, v42, v20);
  v15(v43, v22, v20);
  v23 = swift_allocObject();
  v21(v23 + ((v17 + 16) & ~v17), v22, v20);
  v24 = *(v40 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting22SnapshotDatabaseClient_proxyProvider);
  if (v24)
  {
    v25 = swift_allocObject();
    v25[2] = sub_20CD4DB30;
    v25[3] = v23;
    v25[4] = sub_20CD4D2F0;
    v25[5] = v18;
    v48 = sub_20CD1DF94;
    v49 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_20CD49844;
    v47 = &block_descriptor_99;
    v26 = _Block_copy(&aBlock);
    v27 = v24;

    v48 = sub_20CD4DB30;
    v49 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_20CD498B4;
    v47 = &block_descriptor_102;
    v28 = _Block_copy(&aBlock);

    [v27 fetchProxyWithHandler:v26 errorHandler:v28];

    _Block_release(v28);
    _Block_release(v26);

    v29 = v43;
  }

  else
  {
    sub_20CD1CEF0();
    v30 = swift_allocError();
    *v31 = 0;
    v32 = v43;
    sub_20CD1B6B4(v30, v43, &qword_27C810EB0, &unk_20CD64BF0);

    v29 = v32;
  }

  return (*(v41 + 8))(v29, v20);
}

void sub_20CD4BC74(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = aBlock - v8;
  v10 = sub_20CD62AA4();
  (*(v6 + 16))(v9, a3, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, v9, v5);
  aBlock[4] = sub_20CD4D32C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CD4BE34;
  aBlock[3] = &block_descriptor_108;
  v13 = _Block_copy(aBlock);

  [a1 invalidateAfter:v10 completion:v13];
  _Block_release(v13);
}

void sub_20CD4BE34(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_20CD4BEA0(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v12 = *(v4 + 16);
  v12(&v29 - v10, a1, v3);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v32 = swift_allocObject();
  v33 = v4;
  v14 = *(v4 + 32);
  v14(v32 + v13, v11, v3);
  v12(v9, v30, v3);
  v12(v34, v9, v3);
  v15 = swift_allocObject();
  v16 = v15 + v13;
  v17 = v3;
  v14(v16, v9, v3);
  v18 = *(v31 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting22SnapshotDatabaseClient_proxyProvider);
  if (v18)
  {
    v19 = swift_allocObject();
    v19[2] = sub_20CD4DB30;
    v19[3] = v15;
    v20 = v32;
    v19[4] = sub_20CD4D108;
    v19[5] = v20;
    v39 = sub_20CD1DF94;
    v40 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_20CD49844;
    v38 = &block_descriptor_55;
    v21 = _Block_copy(&aBlock);
    v22 = v18;

    v39 = sub_20CD4DB30;
    v40 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_20CD498B4;
    v38 = &block_descriptor_58_0;
    v23 = _Block_copy(&aBlock);

    [v22 fetchProxyWithHandler:v21 errorHandler:v23];

    _Block_release(v23);
    _Block_release(v21);

    v24 = v34;
  }

  else
  {
    sub_20CD1CEF0();
    v25 = swift_allocError();
    *v26 = 0;
    v27 = v34;
    sub_20CD1B6B4(v25, v34, &qword_27C810EB0, &unk_20CD64BF0);

    v24 = v27;
  }

  return (*(v33 + 8))(v24, v17);
}

void sub_20CD4C270(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a2, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_20CD4DB34;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CD4BE34;
  aBlock[3] = &block_descriptor_64_0;
  v11 = _Block_copy(aBlock);

  [a1 cleanUpWithCompletion_];
  _Block_release(v11);
}

uint64_t sub_20CD4C420(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0);
    return sub_20CD63334();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0);
    return sub_20CD63344();
  }
}

uint64_t sub_20CD4C494(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v12 = *(v4 + 16);
  v12(&v29 - v10, a1, v3);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v32 = swift_allocObject();
  v33 = v4;
  v14 = *(v4 + 32);
  v14(v32 + v13, v11, v3);
  v12(v9, v30, v3);
  v12(v34, v9, v3);
  v15 = swift_allocObject();
  v16 = v15 + v13;
  v17 = v3;
  v14(v16, v9, v3);
  v18 = *(v31 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting22SnapshotDatabaseClient_proxyProvider);
  if (v18)
  {
    v19 = swift_allocObject();
    v19[2] = sub_20CD4DB30;
    v19[3] = v15;
    v20 = v32;
    v19[4] = sub_20CD4CFCC;
    v19[5] = v20;
    v39 = sub_20CD1DF94;
    v40 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_20CD49844;
    v38 = &block_descriptor_33;
    v21 = _Block_copy(&aBlock);
    v22 = v18;

    v39 = sub_20CD4DB30;
    v40 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_20CD498B4;
    v38 = &block_descriptor_36;
    v23 = _Block_copy(&aBlock);

    [v22 fetchProxyWithHandler:v21 errorHandler:v23];

    _Block_release(v23);
    _Block_release(v21);

    v24 = v34;
  }

  else
  {
    sub_20CD1CEF0();
    v25 = swift_allocError();
    *v26 = 0;
    v27 = v34;
    sub_20CD1B6B4(v25, v34, &qword_27C810EB0, &unk_20CD64BF0);

    v24 = v27;
  }

  return (*(v33 + 8))(v24, v17);
}

uint64_t sub_20CD4C864(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_20CD4C8A8(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v12 = *(v4 + 16);
  v12(&v29 - v10, a1, v3);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v32 = swift_allocObject();
  v33 = v4;
  v14 = *(v4 + 32);
  v14(v32 + v13, v11, v3);
  v12(v9, v30, v3);
  v12(v34, v9, v3);
  v15 = swift_allocObject();
  v16 = v15 + v13;
  v17 = v3;
  v14(v16, v9, v3);
  v18 = *(v31 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting22SnapshotDatabaseClient_proxyProvider);
  if (v18)
  {
    v19 = swift_allocObject();
    v19[2] = sub_20CD4CF9C;
    v19[3] = v15;
    v20 = v32;
    v19[4] = sub_20CD4CF6C;
    v19[5] = v20;
    v39 = sub_20CD1CF98;
    v40 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_20CD49844;
    v38 = &block_descriptor_1;
    v21 = _Block_copy(&aBlock);
    v22 = v18;

    v39 = sub_20CD4CF9C;
    v40 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_20CD498B4;
    v38 = &block_descriptor_14;
    v23 = _Block_copy(&aBlock);

    [v22 fetchProxyWithHandler:v21 errorHandler:v23];

    _Block_release(v23);
    _Block_release(v21);

    v24 = v34;
  }

  else
  {
    sub_20CD1CEF0();
    v25 = swift_allocError();
    *v26 = 0;
    v27 = v34;
    sub_20CD1B6B4(v25, v34, &qword_27C810EB0, &unk_20CD64BF0);

    v24 = v27;
  }

  return (*(v33 + 8))(v24, v17);
}

void sub_20CD4CC78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = aBlock - v14;
  (*(v12 + 16))(aBlock - v14, a2, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v11);
  aBlock[4] = a4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CD4C864;
  aBlock[3] = a5;
  v18 = _Block_copy(aBlock);

  [a1 *a6];
  _Block_release(v18);
}

void sub_20CD4CE84()
{
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v0 = sub_20CD631B4();
  __swift_project_value_buffer(v0, qword_28110F878);
  oslog = sub_20CD63194();
  v1 = sub_20CD633D4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_20CCEA000, oslog, v1, "SnapshotDatabaseClient connection invalidated", v2, 2u);
    MEMORY[0x20F3115B0](v2, -1, -1);
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20CD4D09C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_20CD63344();
}

uint64_t sub_20CD4D130(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_20CD4D264(uint64_t a1, unint64_t *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8110F0, &qword_20CD64C08) - 8) + 80);

  return sub_20CD49E9C(a1, a2);
}

void sub_20CD4D330(void *a1)
{
  v3 = *(sub_20CD62E94() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0) - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  sub_20CD4B4C4(a1, v7, v8, v1 + v4, v9);
}

uint64_t sub_20CD4D414(int a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810EB0, &unk_20CD64BF0) - 8) + 80);

  return sub_20CD4B6C0(a1, a2);
}

void sub_20CD4D4A0(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8110F8, &unk_20CD64C10) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_20CD4ABBC(a1, v4, v5, v6);
}

unint64_t sub_20CD4D5B8()
{
  result = qword_28110F680;
  if (!qword_28110F680)
  {
    sub_20CD62EF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110F680);
  }

  return result;
}

uint64_t objectdestroy_88Tm(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = a1(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  v14 = (v9 + v10 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v8 | v13;
  (*(v7 + 8))(v3 + v9, v6);
  (*(v12 + 8))(v3 + v14, v11);

  return MEMORY[0x2821FE8E8](v3, v14 + v15, v16 | 7);
}

uint64_t sub_20CD4D7A8(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, unint64_t, uint64_t))
{
  v9 = *(a2(0) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v13 = v5 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  return a5(a1, v5 + v10, v13);
}

uint64_t getEnumTagSinglePayload for SnapshotDatabaseClient.SnapshotDatabaseClientError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SnapshotDatabaseClient.SnapshotDatabaseClientError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20CD4DA20()
{
  result = qword_27C811108;
  if (!qword_27C811108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C811108);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20CD4DB54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_20CD4DB9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20CD4DBF4(uint64_t a1, char a2)
{
  *(v3 + 136) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810F20, &qword_20CD64960) - 8) + 64) + 15;
  *(v3 + 32) = swift_task_alloc();
  v5 = sub_20CD626A4();
  *(v3 + 40) = v5;
  v6 = *(v5 - 8);
  *(v3 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811170, &qword_20CD64D58) - 8) + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  v9 = sub_20CD63084();
  *(v3 + 72) = v9;
  v10 = *(v9 - 8);
  *(v3 + 80) = v10;
  v11 = *(v10 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD4DD84, 0, 0);
}

uint64_t sub_20CD4DD84()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(MEMORY[0x277D0A6D8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_20CD4DE44;
  v6 = *(v0 + 136);
  v7 = *(v0 + 16);

  return MEMORY[0x2821612A8](v7, v6, v2, v3);
}

uint64_t sub_20CD4DE44(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = a1;

  if (v1)
  {
    v7 = *(v4 + 88);
    v8 = *(v4 + 56);
    v9 = *(v4 + 64);
    v10 = *(v4 + 32);

    v11 = *(v6 + 8);

    return v11();
  }

  else
  {
    v13 = swift_task_alloc();
    *(v4 + 112) = v13;
    *v13 = v6;
    v13[1] = sub_20CD4DFEC;
    v14 = *(v4 + 24);
    v15 = *(v4 + 136);

    return sub_20CD4E518(a1, v15);
  }
}

uint64_t sub_20CD4DFEC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v7 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v5 = sub_20CD4E484;
  }

  else
  {
    v5 = sub_20CD4E100;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

size_t sub_20CD4E100()
{
  v1 = v0[13];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v30 = v0[13];
    }

    v2 = sub_20CD63524();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_19:
    v31 = v0[15];
    v32 = v0[13];

    v6 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_19;
  }

LABEL_3:
  v43 = MEMORY[0x277D84F90];
  result = sub_20CD46C48(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v0[10];
  v41 = v1 & 0xC000000000000001;
  v42 = v0[15];
  v6 = v43;
  v38 = v0[13] + 32;
  v39 = v2;
  v40 = (v0[6] + 8);
  do
  {
    if (v41)
    {
      v7 = MEMORY[0x20F310EA0](v4, v0[13]);
    }

    else
    {
      v7 = *(v38 + 8 * v4);
    }

    v8 = v7;
    v10 = v0[7];
    v9 = v0[8];
    v11 = sub_20CD62704();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    v12 = [v8 UUID];
    sub_20CD62684();

    if (*(v42 + 16) && (v13 = v0[15], v14 = sub_20CD52EF8(v0[7]), v15 = v0[7], v16 = v0[5], (v17 & 1) != 0))
    {
      v18 = *(*(v42 + 56) + 8 * v14);
      v19 = *v40;

      v19(v15, v16);
    }

    else
    {
      (*v40)(v0[7], v0[5]);
    }

    v20 = v0[11];
    v21 = v0[8];
    v22 = v0[4];
    v23 = sub_20CD62FD4();
    (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
    sub_20CD63074();
    v25 = *(v43 + 16);
    v24 = *(v43 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_20CD46C48(v24 > 1, v25 + 1, 1);
    }

    v26 = v0[11];
    v27 = v0[9];
    ++v4;
    *(v43 + 16) = v25 + 1;
    (*(v5 + 32))(v43 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v25, v26, v27);
  }

  while (v39 != v4);
  v28 = v0[15];
  v29 = v0[13];

LABEL_20:
  v33 = v0[11];
  v34 = v0[7];
  v35 = v0[8];
  v36 = v0[4];

  v37 = v0[1];

  return v37(v6);
}

uint64_t sub_20CD4E484()
{
  v1 = v0[13];

  v2 = v0[16];
  v3 = v0[11];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[4];

  v7 = v0[1];

  return v7();
}

uint64_t sub_20CD4E518(uint64_t a1, char a2)
{
  *(v3 + 184) = a2;
  *(v3 + 32) = a1;
  *(v3 + 40) = v2;
  v4 = sub_20CD626A4();
  *(v3 + 48) = v4;
  v5 = *(v4 - 8);
  *(v3 + 56) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD4E5DC, 0, 0);
}

uint64_t sub_20CD4E5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = *(v5 + 32);
  if (v6 >> 62)
  {
    if (v6 < 0)
    {
      v26 = *(v5 + 32);
    }

    v7 = sub_20CD63524();
    *(v5 + 72) = v7;
    if (v7)
    {
LABEL_3:
      v8 = *(v5 + 32);
      v9 = *MEMORY[0x277CCCB90];
      *(v5 + 80) = *MEMORY[0x277CCCB10];
      *(v5 + 88) = v9;
      v10 = *MEMORY[0x277CCCC90];
      *(v5 + 96) = *MEMORY[0x277CCCB40];
      *(v5 + 104) = v10;
      v11 = MEMORY[0x277D84F98];
      *(v5 + 112) = *MEMORY[0x277CCCCD0];
      *(v5 + 120) = v11;
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x20F310EA0](0);
      }

      else
      {
        if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x282161238](v7, v8, a3, a4, a5);
        }

        v12 = *(v8 + 32);
      }

      v13 = v12;
      *(v5 + 128) = v12;
      *(v5 + 136) = 1;
      v14 = [v12 workoutActivityType];
      if (v14 <= 36)
      {
        if (v14 == 13)
        {
          v15 = *(v5 + 80);
LABEL_19:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811190, &qword_20CD64D90);
          v17 = swift_allocObject();
          *(v17 + 16) = xmmword_20CD64CF0;
          v18 = (v17 + 32);
          sub_20CD50E10(0, &qword_28110F158, 0x277CCD830);
          goto LABEL_20;
        }

        if (v14 != 24)
        {
LABEL_17:
          if ((sub_20CD427D0() & 1) == 0)
          {
            v17 = MEMORY[0x277D84F90];
LABEL_21:
            *(v5 + 144) = v17;
            v19 = *(v5 + 40);
            v20 = *(v5 + 184);
            *(v5 + 16) = v17;
            v21 = swift_task_alloc();
            *(v5 + 152) = v21;
            *(v21 + 16) = v19;
            *(v21 + 24) = v13;
            *(v21 + 32) = v20;
            v22 = *(MEMORY[0x277D0A660] + 4);
            v23 = swift_task_alloc();
            *(v5 + 160) = v23;
            v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811178, &qword_20CD64D78);
            v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811180, &qword_20CD64D80);
            a5 = sub_20CD4F5F0();
            *v23 = v5;
            v23[1] = sub_20CD4E938;
            v7 = &unk_20CD64D70;
            v8 = v21;
            a3 = v24;
            a4 = v25;

            return MEMORY[0x282161238](v7, v8, a3, a4, a5);
          }

          v15 = *(v5 + 88);
          goto LABEL_19;
        }
      }

      else if (v14 != 37 && v14 != 52)
      {
        if (v14 == 84)
        {
          v16 = *(v5 + 104);
          v15 = *(v5 + 112);
LABEL_15:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811190, &qword_20CD64D90);
          v17 = swift_allocObject();
          *(v17 + 16) = xmmword_20CD64D00;
          sub_20CD50E10(0, &qword_28110F158, 0x277CCD830);
          *(v17 + 32) = MEMORY[0x20F310DB0](v16);
          v18 = (v17 + 40);
LABEL_20:
          *v18 = MEMORY[0x20F310DB0](v15);
          goto LABEL_21;
        }

        goto LABEL_17;
      }

      v16 = *(v5 + 88);
      v15 = *(v5 + 96);
      goto LABEL_15;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v5 + 72) = v7;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v27 = *(v5 + 64);

  v28 = *(v5 + 8);
  v29 = MEMORY[0x277D84F98];

  return v28(v29);
}

uint64_t sub_20CD4E938(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v11 = *v2;
  v3[21] = a1;
  v3[22] = v1;

  if (v1)
  {
    v5 = v3[19];
    v6 = v3[15];

    v7 = sub_20CD4EEC0;
  }

  else
  {
    v8 = v3[18];
    v9 = v3[19];

    v7 = sub_20CD4EA70;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20CD4EA70()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 64);
  v3 = [*(v0 + 128) UUID];
  sub_20CD62684();

  if (*(v1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811188, &qword_20CD64D88);
    v4 = sub_20CD63554();
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  *(v0 + 24) = v4;

  sub_20CD4F654(v7, 1, (v0 + 24));
  if (v6)
  {

    return MEMORY[0x2821FEBD8](v6, "Swift/Dictionary.swift", 22, 1, 490);
  }

  v8 = *(v0 + 168);
  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  v11 = *(v0 + 120);
  v12 = *(v0 + 64);
  v13 = *(v0 + 72);
  v14 = *(v0 + 48);
  v15 = *(v0 + 56);

  v16 = sub_20CD4F1EC(*(v0 + 24));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = v11;
  sub_20CD505D4(v16, v12, isUniquelyReferenced_nonNull_native);
  (*(v15 + 8))(v12, v14);

  if (v9 != v13)
  {
    v24 = *(v0 + 136);
    *(v0 + 120) = v40;
    v25 = *(v0 + 32);
    if ((v25 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x20F310EA0](v24);
    }

    else
    {
      if (v24 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v18 = *(v25 + 8 * v24 + 32);
    }

    v26 = v18;
    *(v0 + 128) = v18;
    *(v0 + 136) = v24 + 1;
    if (!__OFADD__(v24, 1))
    {
      v27 = [v18 workoutActivityType];
      if (v27 <= 36)
      {
        if (v27 == 13)
        {
          v28 = *(v0 + 80);
LABEL_29:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811190, &qword_20CD64D90);
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_20CD64CF0;
          v31 = (v30 + 32);
          sub_20CD50E10(0, &qword_28110F158, 0x277CCD830);
          goto LABEL_30;
        }

        if (v27 != 24)
        {
LABEL_27:
          if ((sub_20CD427D0() & 1) == 0)
          {
            v30 = MEMORY[0x277D84F90];
LABEL_31:
            *(v0 + 144) = v30;
            v32 = *(v0 + 40);
            v33 = *(v0 + 184);
            *(v0 + 16) = v30;
            v34 = swift_task_alloc();
            *(v0 + 152) = v34;
            *(v34 + 16) = v32;
            *(v34 + 24) = v26;
            *(v34 + 32) = v33;
            v35 = *(MEMORY[0x277D0A660] + 4);
            v36 = swift_task_alloc();
            *(v0 + 160) = v36;
            v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811178, &qword_20CD64D78);
            v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811180, &qword_20CD64D80);
            v21 = sub_20CD4F5F0();
            *v36 = v0;
            v36[1] = sub_20CD4E938;
            v18 = &unk_20CD64D70;
            v25 = v34;
            v19 = v37;
            v20 = v38;

            return MEMORY[0x282161238](v18, v25, v19, v20, v21);
          }

          v28 = *(v0 + 88);
          goto LABEL_29;
        }
      }

      else if (v27 != 37 && v27 != 52)
      {
        if (v27 == 84)
        {
          v29 = *(v0 + 104);
          v28 = *(v0 + 112);
LABEL_25:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811190, &qword_20CD64D90);
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_20CD64D00;
          sub_20CD50E10(0, &qword_28110F158, 0x277CCD830);
          *(v30 + 32) = MEMORY[0x20F310DB0](v29);
          v31 = (v30 + 40);
LABEL_30:
          *v31 = MEMORY[0x20F310DB0](v28);
          goto LABEL_31;
        }

        goto LABEL_27;
      }

      v29 = *(v0 + 88);
      v28 = *(v0 + 96);
      goto LABEL_25;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return MEMORY[0x282161238](v18, v25, v19, v20, v21);
  }

  v22 = *(v0 + 64);

  v23 = *(v0 + 8);

  return v23(v11);
}

uint64_t sub_20CD4EEC0()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 64);

  v3 = *(v0 + 8);
  v4 = *(v0 + 176);

  return v3();
}

uint64_t sub_20CD4EF3C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  v6 = *a2;
  *(v5 + 32) = a4;
  *(v5 + 40) = v6;
  return MEMORY[0x2822009F8](sub_20CD4EF68, 0, 0);
}

uint64_t sub_20CD4EF68()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(MEMORY[0x277D0A6B8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_20CD4F028;
  v6 = *(v0 + 64);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);

  return MEMORY[0x282161288](v8, v7, v6, v2, v3);
}

uint64_t sub_20CD4F028(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x2822009F8](sub_20CD4F174, 0, 0);
  }
}

uint64_t sub_20CD4F174()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[2];
  *v3 = v2;
  v3[1] = v1;
  v6 = v0[1];
  v4 = v2;

  return v6();
}

unint64_t sub_20CD4F1EC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8111A0, &unk_20CD64DA0);
    v2 = sub_20CD63554();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = sub_20CD50E10(0, &qword_28110F160, 0x277CCD8D8);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = v5 + 63;
  if (v3 == MEMORY[0x277D837D0])
  {
    v26 = v8 >> 6;

    v27 = 0;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_29:
    while (1)
    {
      v33 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v33 >= v26)
      {
LABEL_36:

        return v2;
      }

      v7 = *(v4 + 8 * v33);
      ++v27;
      if (v7)
      {
        while (1)
        {
          v34 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v35 = (v33 << 9) | (8 * v34);
          v36 = *(*(a1 + 56) + v35);
          v37 = *(*(a1 + 48) + v35);

          result = sub_20CD52FCC(v37);
          if (v38)
          {
            v28 = *(v2 + 48);
            v29 = *(v28 + 8 * result);
            *(v28 + 8 * result) = v37;
            v30 = result;

            v31 = *(v2 + 56);
            v32 = *(v31 + 8 * v30);
            *(v31 + 8 * v30) = v36;

            v27 = v33;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v39 = *(v2 + 16);
            if (v39 >= *(v2 + 24))
            {
              goto LABEL_40;
            }

            *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
            *(*(v2 + 48) + 8 * result) = v37;
            *(*(v2 + 56) + 8 * result) = v36;
            *(v2 + 16) = v39 + 1;
            v27 = v33;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          v33 = v27;
        }
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 64;

    v12 = 0;
    while (v7)
    {
LABEL_16:
      v15 = (v12 << 9) | (8 * __clz(__rbit64(v7)));
      v16 = *(*(a1 + 56) + v15);
      v17 = *(v2 + 40);
      v18 = *(*(a1 + 48) + v15);

      result = sub_20CD63424();
      v19 = -1 << *(v2 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v10 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v2 + 48) + 8 * v13) = v18;
      *(*(v2 + 56) + 8 * v13) = v16;
      ++*(v2 + 16);
    }

    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v9)
      {
        goto LABEL_36;
      }

      v7 = *(v4 + 8 * v14);
      ++v12;
      if (v7)
      {
        v12 = v14;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_20CD4F52C(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_20CCED908;

  return sub_20CD4EF3C(a1, a2, v6, v7, v8);
}

unint64_t sub_20CD4F5F0()
{
  result = qword_28110F170;
  if (!qword_28110F170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C811178, &qword_20CD64D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110F170);
  }

  return result;
}

void sub_20CD4F654(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v7 = *(a1 + 40);
  v8 = *a3;
  v9 = *(a1 + 32);

  v10 = sub_20CD5301C(v9);
  v12 = v8[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v8[3] < v15)
  {
    sub_20CD50198(v15, v6 & 1);
    v17 = *a3;
    v10 = sub_20CD5301C(v9);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_20CD50E10(0, &qword_28110F158, 0x277CCD830);
    v10 = sub_20CD635C4();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_20CD50E58();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C18, &qword_20CD640B0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v22[6] + 8 * v10) = v9;
  *(v22[7] + 8 * v10) = v7;
  v23 = v22[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_20CD634B4();
    MEMORY[0x20F310C60](0xD00000000000001BLL, 0x800000020CD65BA0);
    sub_20CD50E10(0, &qword_28110F158, 0x277CCD830);
    sub_20CD63504();
    MEMORY[0x20F310C60](39, 0xE100000000000000);
    sub_20CD63514();
    __break(1u);
    return;
  }

  v22[2] = v24;
  if (v4 != 1)
  {
    v6 = (a1 + 56);
    v25 = 1;
    while (v25 < *(a1 + 16))
    {
      v7 = *v6;
      v26 = *a3;
      v9 = *(v6 - 1);

      v27 = sub_20CD5301C(v9);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_20CD50198(v31, 1);
        v32 = *a3;
        v27 = sub_20CD5301C(v9);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      *(v34[6] + 8 * v27) = v9;
      *(v34[7] + 8 * v27) = v7;
      v35 = v34[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v25;
      v34[2] = v36;
      v6 += 2;
      if (v4 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_20CD4F9E0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_20CD62514();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8111A8, &unk_20CD64DB0);
  v43 = a2;
  result = sub_20CD63544();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_20CD50FBC(&qword_27C8111B0, MEMORY[0x277CC88A8]);
      result = sub_20CD631D4();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_20CD4FDBC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_20CD626A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811198, &qword_20CD64D98);
  v43 = a2;
  result = sub_20CD63544();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_20CD50FBC(&qword_28110F7D8, MEMORY[0x277CC95F0]);
      result = sub_20CD631D4();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_20CD50198(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811188, &qword_20CD64D88);
  result = sub_20CD63544();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = *(v8 + 40);
      result = sub_20CD63424();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_20CD50408(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_20CD62514();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_20CD52CD8(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_20CD50910();
      goto LABEL_7;
    }

    sub_20CD4F9E0(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_20CD52CD8(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_20CD507A0(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_20CD635C4();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_20CD505D4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_20CD626A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_20CD52EF8(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_20CD50B90();
      goto LABEL_7;
    }

    sub_20CD4FDBC(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_20CD52EF8(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_20CD50858(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_20CD635C4();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_20CD507A0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_20CD62514();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_20CD50858(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_20CD626A4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

char *sub_20CD50910()
{
  v1 = v0;
  v34 = sub_20CD62514();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8111A8, &unk_20CD64DB0);
  v4 = *v0;
  v5 = sub_20CD63534();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_20CD50B90()
{
  v1 = v0;
  v34 = sub_20CD626A4();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811198, &qword_20CD64D98);
  v4 = *v0;
  v5 = sub_20CD63534();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_20CD50E10(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void *sub_20CD50E58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811188, &qword_20CD64D88);
  v2 = *v0;
  v3 = sub_20CD63534();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_20CD50FBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20CD51014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v5 = sub_20CD62654();
  v4[21] = v5;
  v6 = *(v5 - 8);
  v4[22] = v6;
  v7 = *(v6 + 64) + 15;
  v4[23] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8111B8, &qword_20CD64E08) - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v9 = sub_20CD627D4();
  v4[25] = v9;
  v10 = *(v9 - 8);
  v4[26] = v10;
  v11 = *(v10 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v12 = sub_20CD627A4();
  v4[29] = v12;
  v13 = *(v12 - 8);
  v4[30] = v13;
  v14 = *(v13 + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8111C0, &qword_20CD64E10) - 8) + 64) + 15;
  v4[35] = swift_task_alloc();
  v16 = type metadata accessor for FitnessPlusSessionRepresentable();
  v4[36] = v16;
  v17 = *(v16 - 8);
  v4[37] = v17;
  v18 = *(v17 + 64) + 15;
  v4[38] = swift_task_alloc();
  v19 = sub_20CD62764();
  v4[39] = v19;
  v20 = *(v19 - 8);
  v4[40] = v20;
  v21 = *(v20 + 64) + 15;
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD512F4, 0, 0);
}

uint64_t sub_20CD512F4()
{
  v1 = v0[20];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[43] = v6;
  *v6 = v0;
  v6[1] = sub_20CD51420;
  v7 = v0[17];

  return v9(v7, v2, v3);
}

uint64_t sub_20CD51420(uint64_t a1)
{
  v3 = *(*v2 + 344);
  v4 = *v2;
  v4[44] = a1;

  if (v1)
  {
    v6 = v4[41];
    v5 = v4[42];
    v7 = v4[38];
    v9 = v4[34];
    v8 = v4[35];
    v11 = v4[32];
    v10 = v4[33];
    v12 = v4[31];
    v13 = v4[28];
    v14 = v4[23];
    v17 = v4[27];
    v18 = v4[24];

    v15 = v4[1];

    return v15();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20CD51608, 0, 0);
  }
}

uint64_t sub_20CD51608()
{
  v1 = v0[20];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 16);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[45] = v6;
  *v6 = v0;
  v6[1] = sub_20CD51734;
  v7 = v0[44];

  return v9(v7, v2, v3);
}

uint64_t sub_20CD51734(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 360);
  v7 = *v2;
  *(v3 + 368) = a1;
  *(v3 + 376) = v1;

  if (v1)
  {
    v5 = sub_20CD52130;
  }

  else
  {
    v5 = sub_20CD51848;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20CD51848()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 368);
  v99 = *(v1 + 16);
  if (v99)
  {
    v3 = 0;
    v4 = *(v0 + 320);
    v5 = *(v4 + 16);
    v4 += 16;
    v100 = v5;
    v98 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v6 = *(v0 + 240);
    v7 = (v6 + 8);
    v89 = v6;
    v8 = (v6 + 32);
    v9 = *(v0 + 208);
    v86 = (v9 + 48);
    v87 = v8;
    v75 = (v9 + 16);
    v76 = (v9 + 32);
    v10 = *(v0 + 176);
    v73 = (v10 + 56);
    v74 = (v10 + 8);
    v77 = (v9 + 8);
    v97 = (v4 - 8);
    v11 = *(v0 + 296);
    v72 = *(v0 + 288);
    v96 = (v11 + 56);
    v12 = MEMORY[0x277D84F90];
    v88 = v11;
    v94 = *(v4 + 56);
    v95 = (v11 + 48);
    v93 = *(v0 + 376);
    v90 = *(v0 + 368);
    v5(*(v0 + 336), v98, *(v0 + 312));
    while (1)
    {
      v13 = *(v2 + 16);
      if (v13)
      {
        v101 = v3;
        v103 = v12;
        v14 = *(v0 + 368) + ((*(v89 + 80) + 32) & ~*(v89 + 80));
        v15 = *(v89 + 72);
        v16 = *(v89 + 16);
        while (1)
        {
          v17 = *(v0 + 336);
          v16(*(v0 + 256), v14, *(v0 + 232));
          v18 = sub_20CD62774();
          v20 = v19;
          if (v18 == sub_20CD62734() && v20 == v21)
          {
            break;
          }

          v23 = sub_20CD63594();

          if (v23)
          {
            goto LABEL_16;
          }

          (*v7)(*(v0 + 256), *(v0 + 232));
          v14 += v15;
          if (!--v13)
          {
            v12 = v103;
            v2 = v90;
            goto LABEL_22;
          }
        }

LABEL_16:
        v25 = *(v0 + 264);
        v24 = *(v0 + 272);
        v26 = *(v0 + 232);
        v27 = *(v0 + 192);
        v91 = *(v0 + 200);
        v28 = *(v0 + 144);
        v29 = *v87;
        (*v87)(v25, *(v0 + 256), v26);
        v29(v24, v25, v26);
        *(swift_task_alloc() + 16) = v24;
        sub_20CD52290(sub_20CD525B8, v28, MEMORY[0x277D52AF8], v27);

        if ((*v86)(v27, 1, v91) == 1)
        {
          v30 = *(v0 + 192);
          v31 = &unk_27C8111B8;
          v32 = &unk_20CD64E08;
        }

        else
        {
          v33 = *(v0 + 336);
          v34 = *(v0 + 152);
          (*v76)(*(v0 + 224), *(v0 + 192), *(v0 + 200));
          *(swift_task_alloc() + 16) = v33;
          sub_20CD52464(sub_20CD52CB8, v34, v0 + 56);

          if (*(v0 + 80))
          {
            v36 = *(v0 + 328);
            v35 = *(v0 + 336);
            v37 = *(v0 + 312);
            v85 = *(v0 + 288);
            v38 = *(v0 + 272);
            v39 = *(v0 + 248);
            v41 = *(v0 + 224);
            v40 = *(v0 + 232);
            v83 = v40;
            v84 = v38;
            v78 = *(v0 + 216);
            v79 = *(v0 + 280);
            v92 = *(v0 + 200);
            v80 = *(v0 + 184);
            v81 = *(v0 + 168);
            sub_20CCEC32C((v0 + 56), v0 + 16);
            v82 = v37;
            v100(v36, v35, v37);
            v16(v39, v38, v40);
            (*v75)(v78, v41, v92);
            sub_20CCEE234(v0 + 16, v0 + 96);
            v100(v79, v36, v37);
            sub_20CD62794();
            v42 = v79 + v72[5];
            sub_20CD629C4();
            v43 = sub_20CD627C4();
            v45 = v44;
            LOBYTE(v40) = v46;
            sub_20CCEE6AC(v79 + v72[6]);
            sub_20CCEE750(v43, v45, v40 & 1);
            sub_20CCEE234(v0 + 96, v79 + v72[7]);
            v47 = v72[8];
            _s31FitnessIntelligenceSnapshotting0A24PlusSessionRepresentableV5start10Foundation4DateVvg_0();
            sub_20CD62744();
            sub_20CD62554();
            (*v74)(v80, v81);
            (*v73)(v79 + v47, 0, 1, v81);
            sub_20CD62744();
            v48 = [objc_opt_self() seconds];
            v49 = v72[9];
            sub_20CD50E10(0, &qword_28110F150, 0x277CCADD0);
            sub_20CD624B4();
            __swift_destroy_boxed_opaque_existential_0((v0 + 96));
            v50 = *v77;
            (*v77)(v78, v92);
            v51 = *v7;
            (*v7)(v39, v83);
            v52 = *v97;
            (*v97)(v36, v82);
            __swift_destroy_boxed_opaque_existential_0((v0 + 16));
            v50(v41, v92);
            (*v96)(v79, 0, 1, v85);
            v51(v84, v83);
            v3 = v101;
            v12 = v103;
            v2 = v90;
            goto LABEL_24;
          }

          (*v77)(*(v0 + 224), *(v0 + 200));
          v30 = v0 + 56;
          v31 = &unk_27C8111C8;
          v32 = &unk_20CD64E18;
        }

        sub_20CD1DA10(v30, v31, v32);
        v12 = v103;
        v2 = v90;
        (*v7)(*(v0 + 272), *(v0 + 232));
LABEL_22:
        v3 = v101;
      }

      (*v96)(*(v0 + 280), 1, 1, *(v0 + 288));
      v52 = *v97;
LABEL_24:
      v54 = *(v0 + 280);
      v53 = *(v0 + 288);
      v52(*(v0 + 336), *(v0 + 312));
      if ((*v95)(v54, 1, v53) == 1)
      {
        sub_20CD1DA10(*(v0 + 280), &qword_27C8111C0, &qword_20CD64E10);
      }

      else
      {
        sub_20CD525D8(*(v0 + 280), *(v0 + 304));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_20CD52ADC(0, v12[2] + 1, 1, v12, &qword_27C8111D0, &qword_20CD64E20, type metadata accessor for FitnessPlusSessionRepresentable);
        }

        v56 = v12[2];
        v55 = v12[3];
        if (v56 >= v55 >> 1)
        {
          v12 = sub_20CD52ADC(v55 > 1, v56 + 1, 1, v12, &qword_27C8111D0, &qword_20CD64E20, type metadata accessor for FitnessPlusSessionRepresentable);
        }

        v57 = *(v0 + 304);
        v12[2] = v56 + 1;
        sub_20CD525D8(v57, v12 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v56);
      }

      if (++v3 == v99)
      {
        break;
      }

      v100(*(v0 + 336), v98 + v3 * v94, *(v0 + 312));
    }

    v58 = *(v0 + 368);
    v59 = *(v0 + 352);

    v60 = v12;
  }

  else
  {

    v60 = MEMORY[0x277D84F90];
  }

  v62 = *(v0 + 328);
  v61 = *(v0 + 336);
  v63 = *(v0 + 304);
  v65 = *(v0 + 272);
  v64 = *(v0 + 280);
  v67 = *(v0 + 256);
  v66 = *(v0 + 264);
  v68 = *(v0 + 248);
  v69 = *(v0 + 224);
  v102 = *(v0 + 216);
  v104 = *(v0 + 192);
  v105 = *(v0 + 184);

  v70 = *(v0 + 8);

  return v70(v60);
}

uint64_t sub_20CD52130()
{
  v1 = v0[44];

  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[38];
  v6 = v0[34];
  v5 = v0[35];
  v8 = v0[32];
  v7 = v0[33];
  v9 = v0[31];
  v10 = v0[27];
  v11 = v0[28];
  v14 = v0[24];
  v15 = v0[23];
  v16 = v0[47];

  v12 = v0[1];

  return v12();
}

uint64_t sub_20CD52290@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v25 = a1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v8;
    v23 = a4;
    v14 = *(v8 + 16);
    v13 = v8 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v7);
      v18 = v25(v11);
      if (v4)
      {
        return (*v15)(v11, v7);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v7);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v8 = v22;
        a4 = v23;
        return (*(v8 + 56))(a4, v19, 1, v7);
      }
    }

    v8 = v22;
    a4 = v23;
    (*(v22 + 32))(v23, v11, v7);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v8 + 56))(a4, v19, 1, v7);
}

uint64_t sub_20CD52464@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      sub_20CCEE234(v7, v9);
      v8 = v6(v9);
      if (v3)
      {
        return __swift_destroy_boxed_opaque_existential_0(v9);
      }

      if (v8)
      {
        return sub_20CCEC32C(v9, a3);
      }

      result = __swift_destroy_boxed_opaque_existential_0(v9);
      v7 += 40;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_20CD5251C()
{
  v0 = sub_20CD627B4();
  v2 = v1;
  if (v0 == sub_20CD62784() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_20CD63594();
  }

  return v4 & 1;
}

uint64_t sub_20CD525D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FitnessPlusSessionRepresentable();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CD5263C(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = sub_20CD62D74();
  v3 = sub_20CD62874();
  if (!*(v2 + 16))
  {

    goto LABEL_9;
  }

  v5 = sub_20CD52E80(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  sub_20CD28ED4(*(v2 + 56) + 32 * v5, v14);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    _s31FitnessIntelligenceSnapshotting0A24PlusSessionRepresentableV10identifierSSvg_0();
    goto LABEL_11;
  }

  v9 = _s31FitnessIntelligenceSnapshotting0A24PlusSessionRepresentableV10identifierSSvg_0();
  if (!v13)
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  if (v12 == v9 && v13 == v8)
  {

    v10 = 1;
  }

  else
  {
    v10 = sub_20CD63594();
  }

LABEL_12:

  return v10 & 1;
}

size_t sub_20CD528CC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

size_t sub_20CD52ADC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_20CD52CD8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_20CD62514();
  v5 = MEMORY[0x277CC88A8];
  sub_20CD53390(&qword_27C8111B0, MEMORY[0x277CC88A8]);
  v6 = sub_20CD631D4();
  return sub_20CD5306C(a1, v6, MEMORY[0x277CC88A8], &qword_27C8111D8, v5, MEMORY[0x277CC88C8]);
}

unint64_t sub_20CD52DAC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_20CD62AB4();
  v5 = MEMORY[0x277D09F70];
  sub_20CD53390(&qword_28110F780, MEMORY[0x277D09F70]);
  v6 = sub_20CD631D4();
  return sub_20CD5306C(a1, v6, MEMORY[0x277D09F70], &qword_28110F770, v5, MEMORY[0x277D09F88]);
}

unint64_t sub_20CD52E80(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_20CD63624();
  sub_20CD63284();
  v6 = sub_20CD63644();

  return sub_20CD5320C(a1, a2, v6);
}

unint64_t sub_20CD52EF8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_20CD626A4();
  v5 = MEMORY[0x277CC95F0];
  sub_20CD53390(&qword_28110F7D8, MEMORY[0x277CC95F0]);
  v6 = sub_20CD631D4();
  return sub_20CD5306C(a1, v6, MEMORY[0x277CC95F0], &qword_28110F7D0, v5, MEMORY[0x277CC9610]);
}

unint64_t sub_20CD52FCC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_20CD63424();
  return sub_20CD532C4(a1, v5, &qword_28110F160, 0x277CCD8D8);
}

unint64_t sub_20CD5301C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_20CD63424();
  return sub_20CD532C4(a1, v5, &qword_28110F158, 0x277CCD830);
}

unint64_t sub_20CD5306C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_20CD53390(v24, v25);
      v20 = sub_20CD63234();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_20CD5320C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_20CD63594())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_20CD532C4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_20CD50E10(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_20CD63434();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_20CD53390(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_20CD533D8(void *a1)
{
  v3 = sub_20CD626A4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting16SanityTaskClient_proxyProvider] = 0;
  sub_20CD62694();
  (*(v4 + 32))(&v1[OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting16SanityTaskClient_identifier], v7, v3);
  *&v1[OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting16SanityTaskClient_healthStore] = a1;
  v8 = objc_allocWithZone(MEMORY[0x277CCD6A8]);
  v9 = a1;
  v10 = [v8 initWithHealthStore_];
  *&v1[OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting16SanityTaskClient_nanoSyncControl] = v10;
  v11 = type metadata accessor for SanityTaskClient();
  v19.receiver = v1;
  v19.super_class = v11;
  v12 = objc_msgSendSuper2(&v19, sel_init);
  sub_20CD62DA4();
  (*(v4 + 16))(v7, &v12[OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting16SanityTaskClient_identifier], v3);
  v13 = objc_allocWithZone(MEMORY[0x277CCDAA0]);
  v14 = sub_20CD63244();

  v15 = sub_20CD62674();
  v16 = [v13 initWithHealthStore:v9 taskIdentifier:v14 exportedObject:v12 taskUUID:v15];

  (*(v4 + 8))(v7, v3);
  v17 = *&v12[OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting16SanityTaskClient_proxyProvider];
  *&v12[OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting16SanityTaskClient_proxyProvider] = v16;

  return v12;
}

id sub_20CD5363C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SanityTaskClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SanityTaskClient()
{
  result = qword_28110F868;
  if (!qword_28110F868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CD53764()
{
  result = sub_20CD626A4();
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

void sub_20CD5380C(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)())
{
  sub_20CD28ED4(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811238, &unk_20CD64F00);
  if (swift_dynamicCast())
  {
    a4();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_20CD54450();
    v6 = swift_allocError();
    *v7 = 1;
    a2();
  }
}

uint64_t sub_20CD538E0(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811228, &unk_20CD64EF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v12 = *(v4 + 16);
  v12(&v29 - v10, a1, v3);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v32 = swift_allocObject();
  v33 = v4;
  v14 = *(v4 + 32);
  v14(v32 + v13, v11, v3);
  v12(v9, v30, v3);
  v12(v34, v9, v3);
  v15 = swift_allocObject();
  v16 = v15 + v13;
  v17 = v3;
  v14(v16, v9, v3);
  v18 = *(v31 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting16SanityTaskClient_proxyProvider);
  if (v18)
  {
    v19 = swift_allocObject();
    v19[2] = sub_20CD543A8;
    v19[3] = v15;
    v20 = v32;
    v19[4] = sub_20CD54390;
    v19[5] = v20;
    v39 = sub_20CD544A4;
    v40 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_20CD49844;
    v38 = &block_descriptor_2;
    v21 = _Block_copy(&aBlock);
    v22 = v18;

    v39 = sub_20CD543A8;
    v40 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_20CD498B4;
    v38 = &block_descriptor_14_0;
    v23 = _Block_copy(&aBlock);

    [v22 fetchProxyWithHandler:v21 errorHandler:v23];

    _Block_release(v23);
    _Block_release(v21);

    v24 = v34;
  }

  else
  {
    sub_20CD54450();
    v25 = swift_allocError();
    *v26 = 0;
    v27 = v34;
    sub_20CD540A0(v25);

    v24 = v27;
  }

  return (*(v33 + 8))(v24, v17);
}

void sub_20CD53CA0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811228, &unk_20CD64EF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a2, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_20CD5455C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CD4A71C;
  aBlock[3] = &block_descriptor_20_0;
  v11 = _Block_copy(aBlock);

  [a1 queryMismatchingCheckpointsWithCompletion_];
  _Block_release(v11);
}

uint64_t sub_20CD53E50(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v6 = sub_20CD62BE4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v19 = a2;
    v11 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811228, &unk_20CD64EF0);
    return sub_20CD63334();
  }

  else
  {
    v13 = *(a1 + 16);
    v14 = MEMORY[0x277D84F90];
    if (v13)
    {
      v18[0] = a3;
      v19 = MEMORY[0x277D84F90];
      sub_20CD46DB4(0, v13, 0);
      v14 = v19;
      v18[1] = v7 + 32;
      v15 = (a1 + 40);
      do
      {
        sub_20CD1CF44(*(v15 - 1), *v15);
        sub_20CD545E8();
        sub_20CD62D54();
        v19 = v14;
        v17 = v14[2];
        v16 = v14[3];
        if (v17 >= v16 >> 1)
        {
          sub_20CD46DB4(v16 > 1, v17 + 1, 1);
          v14 = v19;
        }

        v15 += 2;
        v14[2] = v17 + 1;
        (*(v7 + 32))(v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, v10, v6);
        --v13;
      }

      while (v13);
    }

    v19 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811228, &unk_20CD64EF0);
    return sub_20CD63344();
  }
}

uint64_t sub_20CD540A0(void *a1)
{
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v2 = sub_20CD631B4();
  __swift_project_value_buffer(v2, qword_28110F878);
  v3 = a1;
  v4 = sub_20CD63194();
  v5 = sub_20CD633B4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_20CD635D4();
    v10 = sub_20CD6153C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_20CCEA000, v4, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x20F3115B0](v7, -1, -1);
    MEMORY[0x20F3115B0](v6, -1, -1);
  }

  v13 = a1;
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811228, &unk_20CD64EF0);
  return sub_20CD63334();
}

void sub_20CD542A8()
{
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v0 = sub_20CD631B4();
  __swift_project_value_buffer(v0, qword_28110F878);
  oslog = sub_20CD63194();
  v1 = sub_20CD633D4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_20CCEA000, oslog, v1, "SanityTaskClient connection invalidated", v2, 2u);
    MEMORY[0x20F3115B0](v2, -1, -1);
  }
}

uint64_t sub_20CD543C0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811228, &unk_20CD64EF0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_20CD54450()
{
  result = qword_27C811230;
  if (!qword_27C811230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C811230);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_2()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811228, &unk_20CD64EF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20CD5455C(uint64_t a1, unint64_t *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811228, &unk_20CD64EF0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_20CD53E50(a1, a2, v6);
}

unint64_t sub_20CD545E8()
{
  result = qword_27C811240;
  if (!qword_27C811240)
  {
    sub_20CD62BE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C811240);
  }

  return result;
}

unint64_t sub_20CD54654()
{
  result = qword_27C811248;
  if (!qword_27C811248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C811248);
  }

  return result;
}

uint64_t sub_20CD546C8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_20CD62AB4();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_20CD62FD4();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD547E8, 0, 0);
}

uint64_t sub_20CD547E8()
{
  v1 = v0[4];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(MEMORY[0x277D0A6D0] + 4);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_20CD548A4;
  v6 = v0[2];

  return MEMORY[0x2821612A0](v6, v2, v3);
}

uint64_t sub_20CD548A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v5 = *v2;
  *(*v2 + 96) = a1;

  if (v1)
  {
    v6 = *(v3 + 80);
    v7 = *(v3 + 56);

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20CD54A00, 0, 0);
  }
}

uint64_t sub_20CD54A00()
{
  v1 = v0[12];
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0[12]; v2; i = v0[12])
  {
    v4 = 0;
    v5 = v0[9];
    v25 = v1 & 0xFFFFFFFFFFFFFF8;
    v26 = v1 & 0xC000000000000001;
    v23 = (v0[6] + 8);
    v22 = i + 32;
    v6 = MEMORY[0x277D84F90];
    v24 = v2;
    while (1)
    {
      if (v26)
      {
        v7 = MEMORY[0x20F310EA0](v4, v0[12]);
      }

      else
      {
        if (v4 >= *(v25 + 16))
        {
          goto LABEL_16;
        }

        v7 = *(v22 + 8 * v4);
      }

      v8 = v7;
      v1 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = v0[10];
      v10 = v0[7];
      v11 = v0[5];
      v12 = v0[3];
      [v7 _activitySummaryIndex];
      sub_20CD62AC4();
      sub_20CD62FC4();

      (*v23)(v10, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_20CD52AB4(0, v6[2] + 1, 1, v6);
      }

      v14 = v6[2];
      v13 = v6[3];
      if (v14 >= v13 >> 1)
      {
        v6 = sub_20CD52AB4(v13 > 1, v14 + 1, 1, v6);
      }

      v15 = v0[10];
      v16 = v0[8];
      v6[2] = v14 + 1;
      (*(v5 + 32))(v6 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v15, v16);
      ++v4;
      if (v1 == v24)
      {
        v17 = v0[12];
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v2 = sub_20CD63524();
  }

  v6 = MEMORY[0x277D84F90];
LABEL_19:
  v18 = v0[10];
  v19 = v0[7];

  v20 = v0[1];

  return v20(v6);
}

uint64_t sub_20CD54C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811360, &qword_20CD653E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_20CD5A81C(a3, v24 - v10);
  v12 = sub_20CD63374();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_20CD5A88C(v11);
  }

  else
  {
    sub_20CD63364();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_20CD63314();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_20CD63274() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C10, &unk_20CD650C0);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_20CD5A88C(a3);

      return v22;
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

  sub_20CD5A88C(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810C10, &unk_20CD650C0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_20CD54F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811360, &qword_20CD653E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_20CD5A81C(a3, v24 - v10);
  v12 = sub_20CD63374();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_20CD5A88C(v11);
  }

  else
  {
    sub_20CD63364();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_20CD63314();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_20CD63274() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_20CD5A88C(a3);

      return v22;
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

  sub_20CD5A88C(a3);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_20CD55204(uint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), unint64_t *a3, uint64_t a4, void (*a5)(uint64_t *, unint64_t))
{
  v26 = a4;
  v27 = a5;
  v25 = a3;
  v7 = sub_20CD63084();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v29 = MEMORY[0x277D84F90];
    v23 = a2;
    a2(0, v12, 0);
    v13 = v29;
    v16 = *(v8 + 16);
    v15 = v8 + 16;
    v14 = v16;
    v17 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v24 = *(v15 + 56);
    do
    {
      v14(v11, v17, v7);
      v29 = v13;
      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        v23(v18 > 1, v19 + 1, 1);
      }

      v28[3] = v7;
      v28[4] = sub_20CD5AB20(v25, MEMORY[0x277D0A6A0]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
      v14(boxed_opaque_existential_1, v11, v7);
      v13 = v29;
      *(v29 + 16) = v19 + 1;
      v27(v28, v13 + 40 * v19 + 32);
      (*(v15 - 8))(v11, v7);
      v17 += v24;
      --v12;
    }

    while (v12);
  }

  return v13;
}

uint64_t sub_20CD55408(uint64_t a1)
{
  v2 = type metadata accessor for FitnessPlusSessionRepresentable();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v18 = MEMORY[0x277D84F90];
    sub_20CD46D30(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_20CD5A594(v9, v6);
      v18 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_20CD46D30((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = sub_20CD5AB20(&qword_27C810CD8, type metadata accessor for FitnessPlusSessionRepresentable);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
      sub_20CD5A594(v6, boxed_opaque_existential_1);
      *(v8 + 16) = v12 + 1;
      sub_20CCEC32C(&v15, v8 + 40 * v12 + 32);
      sub_20CD5A5F8(v6);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_20CD555D0(uint64_t a1)
{
  v2 = sub_20CD62FD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v22 = MEMORY[0x277D84F90];
    sub_20CD46D30(0, v7, 0);
    v8 = v22;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v18 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      v22 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_20CD46D30((v13 > 1), v14 + 1, 1);
      }

      v20 = v2;
      v21 = MEMORY[0x277D0A620];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
      v10(boxed_opaque_existential_1, v6, v2);
      v8 = v22;
      *(v22 + 16) = v14 + 1;
      sub_20CCEC32C(&v19, v8 + 40 * v14 + 32);
      (*(v9 - 8))(v6, v2);
      v12 += v18;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_20CD557A4()
{
  sub_20CD63624();
  MEMORY[0x20F311000](0);
  return sub_20CD63644();
}

uint64_t sub_20CD55810()
{
  sub_20CD63624();
  MEMORY[0x20F311000](0);
  return sub_20CD63644();
}

uint64_t sub_20CD55850(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_20CD62514();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v3[13] = *(v5 + 64);
  v3[14] = swift_task_alloc();
  v6 = sub_20CD62E94();
  v3[15] = v6;
  v7 = *(v6 - 8);
  v3[16] = v7;
  v3[17] = *(v7 + 64);
  v3[18] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811360, &qword_20CD653E0) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD559B8, v2, 0);
}

uint64_t sub_20CD559B8()
{
  v1 = v0[10];
  v2 = OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_cache;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v4 = v0[8];
    v5 = *(v1 + v2);

    v6 = sub_20CD52CD8(v4);
    if (v7)
    {
      v8 = *(*(v3 + 56) + 8 * v6);

      goto LABEL_6;
    }
  }

  v10 = v0[18];
  v9 = v0[19];
  v35 = v1;
  v36 = v9;
  v11 = v0[16];
  v13 = v0[14];
  v12 = v0[15];
  v31 = v13;
  v14 = v0[12];
  v32 = v0[13];
  v33 = v0[17];
  v15 = v0[11];
  v34 = v0[10];
  v16 = v0[8];
  v28 = v0[9];
  v30 = v15;
  v37 = v16;
  v17 = sub_20CD63374();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  (*(v11 + 16))(v10, v28, v12);
  (*(v14 + 16))(v13, v16, v15);
  v29 = sub_20CD5AB20(&qword_27C811298, type metadata accessor for SnapshotRetriverRepresentableProvider);
  v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v19 = (v33 + *(v14 + 80) + v18) & ~*(v14 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v34;
  *(v20 + 24) = v29;
  (*(v11 + 32))(v20 + v18, v10, v12);
  (*(v14 + 32))(v20 + v19, v31, v30);
  *(v20 + ((v32 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v34;
  swift_retain_n();
  v8 = sub_20CD54C8C(0, 0, v36, &unk_20CD650D8, v20);
  swift_beginAccess();

  v21 = *(v35 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(v35 + v2);
  *(v35 + v2) = 0x8000000000000000;
  sub_20CD50408(v8, v37, isUniquelyReferenced_nonNull_native);
  *(v35 + v2) = v38;
  swift_endAccess();
LABEL_6:
  v24 = v0[18];
  v23 = v0[19];
  v25 = v0[14];

  v26 = v0[1];

  return v26(v8);
}

uint64_t sub_20CD55CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v8 = sub_20CD62514();
  v6[6] = v8;
  v9 = *(v8 - 8);
  v6[7] = v9;
  v10 = *(v9 + 64) + 15;
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v11 = sub_20CD62E94();
  v6[10] = v11;
  v12 = *(v11 - 8);
  v6[11] = v12;
  v13 = *(v12 + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v14 = sub_20CD62654();
  v6[15] = v14;
  v15 = *(v14 - 8);
  v6[16] = v15;
  v16 = *(v15 + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD55E8C, a6, 0);
}

uint64_t sub_20CD55E8C()
{
  v63 = v0;
  v1 = v0[19];
  sub_20CD62644();
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[3];
  v8 = v0[4];
  v10 = sub_20CD631B4();
  v0[20] = __swift_project_value_buffer(v10, qword_28110F878);
  v11 = *(v4 + 16);
  v0[21] = v11;
  v0[22] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v60 = v11;
  v11(v2, v9, v3);
  v12 = *(v7 + 16);
  v0[23] = v12;
  v0[24] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v5, v8, v6);
  v13 = sub_20CD63194();
  v14 = sub_20CD633D4();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[14];
  v18 = v0[10];
  v17 = v0[11];
  v19 = v0[9];
  v21 = v0[6];
  v20 = v0[7];
  if (v15)
  {
    log = v13;
    v22 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v62[0] = v59;
    *v22 = 136315394;
    v23 = sub_20CD62E84();
    v57 = v14;
    v25 = v24;
    v56 = v19;
    v26 = *(v17 + 8);
    v26(v16, v18);
    v27 = sub_20CD6153C(v23, v25, v62);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2080;
    sub_20CD5AB20(&qword_28110F7F8, MEMORY[0x277CC88A8]);
    v28 = sub_20CD63574();
    v30 = v29;
    v31 = *(v20 + 8);
    v31(v56, v21);
    v32 = sub_20CD6153C(v28, v30, v62);

    *(v22 + 14) = v32;
    _os_log_impl(&dword_20CCEA000, log, v57, "[SnapshotRetriverRepresentableProvider] Starting to fetch %s representables for date: %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v59, -1, -1);
    MEMORY[0x20F3115B0](v22, -1, -1);
  }

  else
  {

    v31 = *(v20 + 8);
    v31(v19, v21);
    v26 = *(v17 + 8);
    v26(v16, v18);
  }

  v0[25] = v31;
  v0[26] = v26;
  v33 = v0[13];
  v34 = v0[10];
  v35 = v0[11];
  v60(v33, v0[3], v34);
  v36 = (*(v35 + 88))(v33, v34);
  if (v36 == *MEMORY[0x277D0A428])
  {

    return MEMORY[0x2822009F8](sub_20CD56438, 0, 0);
  }

  else if (v36 == *MEMORY[0x277D0A430])
  {
    v37 = v0[5];
    v38 = swift_task_alloc();
    v0[34] = v38;
    *v38 = v0;
    v38[1] = sub_20CD56D9C;
    v39 = v0[4];

    return sub_20CD4DBF4(v39, 1);
  }

  else if (v36 == *MEMORY[0x277D0A420])
  {
    v40 = swift_task_alloc();
    v0[38] = v40;
    *v40 = v0;
    v40[1] = sub_20CD57474;
    v41 = v0[4];
    v42 = v0[5];

    return sub_20CD59C10(v41);
  }

  else
  {
    v43 = v0[19];
    v44 = v0[15];
    v45 = v0[16];
    v61 = v26;
    v46 = v0[11];
    sub_20CD5A8F4();
    swift_allocError();
    swift_willThrow();
    (*(v45 + 8))(v43, v44);
    v48 = v0[18];
    v47 = v0[19];
    v49 = v0[17];
    v50 = v0[14];
    v51 = v0[12];
    v52 = v0[9];
    v53 = v0[8];
    v61(v0[13], v0[10]);

    v54 = v0[1];

    return v54();
  }
}

uint64_t sub_20CD56438()
{
  v1 = (v0[5] + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_healthStore);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(MEMORY[0x277D0A6B0] + 4);
  v5 = swift_task_alloc();
  v0[27] = v5;
  *v5 = v0;
  v5[1] = sub_20CD56500;
  v6 = v0[4];

  return MEMORY[0x282161280](v6, v2, v3);
}

uint64_t sub_20CD56500(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  *(*v2 + 224) = a1;

  if (v1)
  {
    v4[33] = v1;
    v7 = v4[5];

    return MEMORY[0x2822009F8](sub_20CD56CB8, v7, 0);
  }

  else
  {
    v8 = v4[5];
    v9 = swift_task_alloc();
    v4[29] = v9;
    *v9 = v6;
    v9[1] = sub_20CD5669C;
    v10 = v4[4];

    return sub_20CD546C8(v10, a1);
  }
}

uint64_t sub_20CD5669C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v7 = sub_20CD56C48;
  }

  else
  {
    v8 = *(v4 + 224);

    *(v4 + 248) = a1;
    v7 = sub_20CD567CC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20CD567CC()
{
  v1 = v0[5];
  v0[32] = sub_20CD555D0(v0[31]);

  return MEMORY[0x2822009F8](sub_20CD56848, v1, 0);
}

uint64_t sub_20CD56848()
{
  v63 = v0;
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v61 = *(v0 + 256);
  v6 = *(v0 + 144);
  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  v9 = *(v0 + 64);
  v10 = *(v0 + 48);
  v11 = *(v0 + 32);
  (*(v0 + 168))(*(v0 + 96), *(v0 + 24), *(v0 + 80));
  v2(v9, v11, v10);
  (*(v7 + 16))(v6, v5, v8);
  v12 = sub_20CD63194();
  v13 = sub_20CD633D4();
  v14 = os_log_type_enabled(v12, v13);
  v57 = *(v0 + 208);
  v58 = *(v0 + 200);
  v59 = *(v0 + 152);
  v60 = *(v0 + 144);
  if (v14)
  {
    v15 = *(v0 + 128);
    v54 = *(v0 + 136);
    v55 = *(v0 + 120);
    v56 = v13;
    v17 = *(v0 + 88);
    v16 = *(v0 + 96);
    v18 = *(v0 + 80);
    v51 = *(v0 + 64);
    v52 = *(v0 + 56);
    v19 = *(v0 + 48);
    v20 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v62 = v53;
    *v20 = 136315650;
    v21 = sub_20CD62E84();
    v23 = v22;
    v57(v16, v18);
    v24 = sub_20CD6153C(v21, v23, &v62);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    sub_20CD5AB20(&qword_28110F7F8, MEMORY[0x277CC88A8]);
    v25 = sub_20CD63574();
    v27 = v26;
    v58(v51, v19);
    v28 = sub_20CD6153C(v25, v27, &v62);

    *(v20 + 14) = v28;
    *(v20 + 22) = 2048;
    sub_20CD62644();
    sub_20CD62544();
    v30 = v29;
    v31 = *(v15 + 8);
    v31(v54, v55);
    v31(v60, v55);
    *(v20 + 24) = v30;
    _os_log_impl(&dword_20CCEA000, v12, v56, "[SnapshotRetriverRepresentableProvider] Fetched %s representables for %s in %f seconds", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v53, -1, -1);
    MEMORY[0x20F3115B0](v20, -1, -1);

    v31(v59, v55);
  }

  else
  {
    v32 = *(v0 + 120);
    v33 = *(v0 + 128);
    v35 = *(v0 + 88);
    v34 = *(v0 + 96);
    v36 = *(v0 + 80);
    v37 = *(v0 + 56);
    v38 = *(v0 + 64);
    v39 = *(v0 + 48);

    v40 = *(v33 + 8);
    v40(v60, v32);
    v58(v38, v39);
    v57(v34, v36);
    v40(v59, v32);
  }

  v42 = *(v0 + 144);
  v41 = *(v0 + 152);
  v43 = *(v0 + 136);
  v45 = *(v0 + 104);
  v44 = *(v0 + 112);
  v46 = *(v0 + 96);
  v48 = *(v0 + 64);
  v47 = *(v0 + 72);
  **(v0 + 16) = v61;

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_20CD56C48()
{
  v1 = v0[28];

  v0[33] = v0[30];
  v2 = v0[5];

  return MEMORY[0x2822009F8](sub_20CD56CB8, v2, 0);
}

uint64_t sub_20CD56CB8()
{
  v1 = v0[17];
  v2 = v0[33];
  v3 = v0[18];
  v4 = v0[14];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[8];
  v7 = v0[9];
  (*(v0[16] + 8))(v0[19], v0[15]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_20CD56D9C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 272);
  v6 = *v2;
  *(*v2 + 280) = v1;

  if (v1)
  {
    v7 = *(v4 + 40);
    v8 = sub_20CD57390;
  }

  else
  {
    *(v4 + 288) = a1;
    v8 = sub_20CD56ED0;
    v7 = 0;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_20CD56ED0()
{
  v1 = v0[5];
  v0[37] = sub_20CD55204(v0[36], sub_20CD46D30, &qword_28110F648, MEMORY[0x277D0A690], sub_20CD5AD9C);

  return MEMORY[0x2822009F8](sub_20CD56F90, v1, 0);
}

uint64_t sub_20CD56F90()
{
  v63 = v0;
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v61 = *(v0 + 296);
  v6 = *(v0 + 144);
  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  v9 = *(v0 + 64);
  v10 = *(v0 + 48);
  v11 = *(v0 + 32);
  (*(v0 + 168))(*(v0 + 96), *(v0 + 24), *(v0 + 80));
  v2(v9, v11, v10);
  (*(v7 + 16))(v6, v5, v8);
  v12 = sub_20CD63194();
  v13 = sub_20CD633D4();
  v14 = os_log_type_enabled(v12, v13);
  v57 = *(v0 + 208);
  v58 = *(v0 + 200);
  v59 = *(v0 + 152);
  v60 = *(v0 + 144);
  if (v14)
  {
    v15 = *(v0 + 128);
    v54 = *(v0 + 136);
    v55 = *(v0 + 120);
    v56 = v13;
    v17 = *(v0 + 88);
    v16 = *(v0 + 96);
    v18 = *(v0 + 80);
    v51 = *(v0 + 64);
    v52 = *(v0 + 56);
    v19 = *(v0 + 48);
    v20 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v62 = v53;
    *v20 = 136315650;
    v21 = sub_20CD62E84();
    v23 = v22;
    v57(v16, v18);
    v24 = sub_20CD6153C(v21, v23, &v62);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    sub_20CD5AB20(&qword_28110F7F8, MEMORY[0x277CC88A8]);
    v25 = sub_20CD63574();
    v27 = v26;
    v58(v51, v19);
    v28 = sub_20CD6153C(v25, v27, &v62);

    *(v20 + 14) = v28;
    *(v20 + 22) = 2048;
    sub_20CD62644();
    sub_20CD62544();
    v30 = v29;
    v31 = *(v15 + 8);
    v31(v54, v55);
    v31(v60, v55);
    *(v20 + 24) = v30;
    _os_log_impl(&dword_20CCEA000, v12, v56, "[SnapshotRetriverRepresentableProvider] Fetched %s representables for %s in %f seconds", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v53, -1, -1);
    MEMORY[0x20F3115B0](v20, -1, -1);

    v31(v59, v55);
  }

  else
  {
    v32 = *(v0 + 120);
    v33 = *(v0 + 128);
    v35 = *(v0 + 88);
    v34 = *(v0 + 96);
    v36 = *(v0 + 80);
    v37 = *(v0 + 56);
    v38 = *(v0 + 64);
    v39 = *(v0 + 48);

    v40 = *(v33 + 8);
    v40(v60, v32);
    v58(v38, v39);
    v57(v34, v36);
    v40(v59, v32);
  }

  v42 = *(v0 + 144);
  v41 = *(v0 + 152);
  v43 = *(v0 + 136);
  v45 = *(v0 + 104);
  v44 = *(v0 + 112);
  v46 = *(v0 + 96);
  v48 = *(v0 + 64);
  v47 = *(v0 + 72);
  **(v0 + 16) = v61;

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_20CD57390()
{
  v1 = v0[17];
  v2 = v0[35];
  v3 = v0[18];
  v4 = v0[14];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[8];
  v7 = v0[9];
  (*(v0[16] + 8))(v0[19], v0[15]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_20CD57474(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *v2;
  v4[39] = v1;

  v7 = v4[5];
  if (v1)
  {
    v8 = sub_20CD579B0;
  }

  else
  {
    v4[40] = a1;
    v8 = sub_20CD575B0;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_20CD575B0()
{
  v63 = v0;
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v61 = *(v0 + 320);
  v6 = *(v0 + 144);
  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  v9 = *(v0 + 64);
  v10 = *(v0 + 48);
  v11 = *(v0 + 32);
  (*(v0 + 168))(*(v0 + 96), *(v0 + 24), *(v0 + 80));
  v2(v9, v11, v10);
  (*(v7 + 16))(v6, v5, v8);
  v12 = sub_20CD63194();
  v13 = sub_20CD633D4();
  v14 = os_log_type_enabled(v12, v13);
  v57 = *(v0 + 208);
  v58 = *(v0 + 200);
  v59 = *(v0 + 152);
  v60 = *(v0 + 144);
  if (v14)
  {
    v15 = *(v0 + 128);
    v54 = *(v0 + 136);
    v55 = *(v0 + 120);
    v56 = v13;
    v17 = *(v0 + 88);
    v16 = *(v0 + 96);
    v18 = *(v0 + 80);
    v51 = *(v0 + 64);
    v52 = *(v0 + 56);
    v19 = *(v0 + 48);
    v20 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v62 = v53;
    *v20 = 136315650;
    v21 = sub_20CD62E84();
    v23 = v22;
    v57(v16, v18);
    v24 = sub_20CD6153C(v21, v23, &v62);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    sub_20CD5AB20(&qword_28110F7F8, MEMORY[0x277CC88A8]);
    v25 = sub_20CD63574();
    v27 = v26;
    v58(v51, v19);
    v28 = sub_20CD6153C(v25, v27, &v62);

    *(v20 + 14) = v28;
    *(v20 + 22) = 2048;
    sub_20CD62644();
    sub_20CD62544();
    v30 = v29;
    v31 = *(v15 + 8);
    v31(v54, v55);
    v31(v60, v55);
    *(v20 + 24) = v30;
    _os_log_impl(&dword_20CCEA000, v12, v56, "[SnapshotRetriverRepresentableProvider] Fetched %s representables for %s in %f seconds", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v53, -1, -1);
    MEMORY[0x20F3115B0](v20, -1, -1);

    v31(v59, v55);
  }

  else
  {
    v32 = *(v0 + 120);
    v33 = *(v0 + 128);
    v35 = *(v0 + 88);
    v34 = *(v0 + 96);
    v36 = *(v0 + 80);
    v37 = *(v0 + 56);
    v38 = *(v0 + 64);
    v39 = *(v0 + 48);

    v40 = *(v33 + 8);
    v40(v60, v32);
    v58(v38, v39);
    v57(v34, v36);
    v40(v59, v32);
  }

  v42 = *(v0 + 144);
  v41 = *(v0 + 152);
  v43 = *(v0 + 136);
  v45 = *(v0 + 104);
  v44 = *(v0 + 112);
  v46 = *(v0 + 96);
  v48 = *(v0 + 64);
  v47 = *(v0 + 72);
  **(v0 + 16) = v61;

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_20CD579B0()
{
  v1 = v0[17];
  v2 = v0[39];
  v3 = v0[18];
  v4 = v0[14];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[8];
  v7 = v0[9];
  (*(v0[16] + 8))(v0[19], v0[15]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_20CD57A94(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_20CD62E94();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v3[13] = *(v5 + 64);
  v3[14] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C811360, &qword_20CD653E0) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v7 = sub_20CD62514();
  v3[16] = v7;
  v8 = *(v7 - 8);
  v3[17] = v8;
  v3[18] = *(v8 + 64);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v9 = sub_20CD62654();
  v3[21] = v9;
  v10 = *(v9 - 8);
  v3[22] = v10;
  v3[23] = *(v10 + 64);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD57C84, v2, 0);
}

uint64_t sub_20CD57C84()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[21];
  v5 = v0[22];
  v6 = v0[20];
  v7 = v0[10];
  v8 = v0[8];
  sub_20CD626B4();
  v9 = *(v5 + 16);
  v9(v2, v1, v4);
  v54 = v9;
  v9(v3, v8, v4);
  sub_20CD624D4();
  v10 = OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_cache;
  swift_beginAccess();
  v56 = v7;
  v11 = *(v7 + v10);
  if (*(v11 + 16))
  {
    v12 = v0[20];
    v13 = *(v7 + v10);

    v14 = sub_20CD52CD8(v12);
    if (v15)
    {
      v57 = *(*(v11 + 56) + 8 * v14);

      goto LABEL_6;
    }
  }

  v16 = v0[25];
  v49 = v0[22];
  v50 = v0[23];
  v17 = v0[21];
  v48 = v17;
  v53 = v10;
  v58 = v0[19];
  v59 = v0[20];
  v18 = v0[16];
  v19 = v0[17];
  v20 = v0[14];
  v21 = v0[15];
  v52 = v21;
  v22 = v0[12];
  v46 = v20;
  v47 = v0[13];
  v23 = v0[11];
  v51 = v0[10];
  v43 = v0[9];
  v44 = v0[8];
  v45 = v23;
  v24 = sub_20CD63374();
  (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
  (*(v22 + 16))(v20, v43, v23);
  v54(v16, v44, v17);
  (*(v19 + 16))(v58, v59, v18);
  v55 = sub_20CD5AB20(&qword_27C811298, type metadata accessor for SnapshotRetriverRepresentableProvider);
  v25 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v26 = (v47 + *(v49 + 80) + v25) & ~*(v49 + 80);
  v27 = (v50 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (*(v19 + 80) + v27 + 8) & ~*(v19 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v51;
  *(v29 + 24) = v55;
  (*(v22 + 32))(v29 + v25, v46, v45);
  (*(v49 + 32))(v29 + v26, v16, v48);
  *(v29 + v27) = v51;
  (*(v19 + 32))(v29 + v28, v58, v18);
  swift_retain_n();
  v30 = sub_20CD54C8C(0, 0, v52, &unk_20CD650B8, v29);
  swift_beginAccess();

  v31 = *(v56 + v53);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60 = *(v56 + v53);
  *(v56 + v53) = 0x8000000000000000;
  v57 = v30;
  sub_20CD50408(v30, v59, isUniquelyReferenced_nonNull_native);
  *(v56 + v53) = v60;
  swift_endAccess();
LABEL_6:
  v33 = v0[25];
  v34 = v0[26];
  v35 = v0[24];
  v37 = v0[21];
  v36 = v0[22];
  v38 = v0[19];
  v40 = v0[14];
  v39 = v0[15];
  (*(v0[17] + 8))(v0[20], v0[16]);
  (*(v36 + 8))(v34, v37);

  v41 = v0[1];

  return v41(v57);
}

uint64_t sub_20CD580E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v9 = sub_20CD62E94();
  v7[7] = v9;
  v10 = *(v9 - 8);
  v7[8] = v10;
  v11 = *(v10 + 64) + 15;
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v12 = sub_20CD62654();
  v7[12] = v12;
  v13 = *(v12 - 8);
  v7[13] = v13;
  v14 = *(v13 + 64) + 15;
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CD58250, a6, 0);
}

uint64_t sub_20CD58250()
{
  v63 = v0;
  v1 = v0[18];
  sub_20CD62644();
  if (qword_28110F1A0 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  v6 = v0[7];
  v7 = v0[8];
  v9 = v0[3];
  v8 = v0[4];
  v10 = sub_20CD631B4();
  v0[19] = __swift_project_value_buffer(v10, qword_28110F878);
  v11 = *(v7 + 16);
  v0[20] = v11;
  v0[21] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v61 = v11;
  v11(v5, v9, v6);
  v12 = *(v4 + 16);
  v0[22] = v12;
  v0[23] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v2, v8, v3);
  v13 = sub_20CD63194();
  v14 = sub_20CD633D4();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[17];
  v18 = v0[12];
  v17 = v0[13];
  v19 = v0[11];
  v21 = v0[7];
  v20 = v0[8];
  if (v15)
  {
    log = v13;
    v22 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v62[0] = v60;
    *v22 = 136315394;
    v23 = sub_20CD62E84();
    v58 = v14;
    v25 = v24;
    v57 = v18;
    v26 = v16;
    v27 = *(v20 + 8);
    v27(v19, v21);
    v28 = sub_20CD6153C(v23, v25, v62);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    sub_20CD5AB20(&qword_28110F7E8, MEMORY[0x277CC9578]);
    v29 = sub_20CD63574();
    v31 = v30;
    v32 = *(v17 + 8);
    v32(v26, v57);
    v33 = sub_20CD6153C(v29, v31, v62);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_20CCEA000, log, v58, "[SnapshotRetriverRepresentableProvider] Starting to fetch %s representables for date: %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v60, -1, -1);
    MEMORY[0x20F3115B0](v22, -1, -1);
  }

  else
  {

    v32 = *(v17 + 8);
    v32(v16, v18);
    v27 = *(v20 + 8);
    v27(v19, v21);
  }

  v0[24] = v27;
  v0[25] = v32;
  v34 = v0[10];
  v35 = v0[7];
  v36 = v0[8];
  v61(v34, v0[3], v35);
  v37 = (*(v36 + 88))(v34, v35);
  if (v37 == *MEMORY[0x277D0A428])
  {

    return MEMORY[0x2822009F8](sub_20CD587FC, 0, 0);
  }

  else if (v37 == *MEMORY[0x277D0A430])
  {
    v38 = v0[5];
    v39 = swift_task_alloc();
    v0[29] = v39;
    *v39 = v0;
    v39[1] = sub_20CD58F70;
    v40 = v0[6];

    return sub_20CD4DBF4(v40, 1);
  }

  else if (v37 == *MEMORY[0x277D0A420])
  {
    v41 = swift_task_alloc();
    v0[33] = v41;
    *v41 = v0;
    v41[1] = sub_20CD5961C;
    v43 = v0[5];
    v42 = v0[6];

    return sub_20CD59C10(v42);
  }

  else
  {
    v44 = v0[18];
    v45 = v0[12];
    v46 = v0[13];
    sub_20CD5A8F4();
    swift_allocError();
    swift_willThrow();
    v32(v44, v45);
    v48 = v0[17];
    v47 = v0[18];
    v50 = v0[15];
    v49 = v0[16];
    v51 = v0[14];
    v52 = v0[11];
    v53 = v0[9];
    v54 = v0[8] + 8;
    v27(v0[10], v0[7]);

    v55 = v0[1];

    return v55();
  }
}

uint64_t sub_20CD587FC()
{
  v1 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C810FC0, &qword_20CD64AE0);
  v2 = swift_allocObject();
  v0[26] = v2;
  *(v2 + 16) = xmmword_20CD64880;
  v3 = (v1 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_healthStore);
  v4 = *(v1 + OBJC_IVAR____TtC31FitnessIntelligenceSnapshotting37SnapshotRetriverRepresentableProvider_healthStore + 24);
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = sub_20CD62FD4();
  v7 = MEMORY[0x277D0A620];
  *(v2 + 56) = v6;
  *(v2 + 64) = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 32));
  v9 = *(MEMORY[0x277D0A6C0] + 4);
  v10 = swift_task_alloc();
  v0[27] = v10;
  *v10 = v0;
  v10[1] = sub_20CD58920;
  v11 = v0[4];

  return MEMORY[0x282161290](boxed_opaque_existential_1, v11, v4, v5);
}

uint64_t sub_20CD58920()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = sub_20CD58E0C;
    v5 = 0;
  }

  else
  {
    v5 = *(v2 + 40);
    v4 = sub_20CD58A3C;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_20CD58A3C()
{
  v56 = v0;
  v1 = *(v0 + 208);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 168);
  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  v9 = *(v0 + 96);
  v10 = *(v0 + 32);
  (*(v0 + 160))(*(v0 + 72), *(v0 + 24), *(v0 + 56));
  v3(v7, v10, v9);
  v3(v8, v5, v9);
  v11 = sub_20CD63194();
  v12 = sub_20CD633D4();
  log = v11;
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 192);
  v15 = *(v0 + 200);
  v54 = *(v0 + 144);
  v16 = *(v0 + 128);
  v52 = *(v0 + 120);
  if (v13)
  {
    v48 = *(v0 + 104);
    v49 = *(v0 + 112);
    v51 = v12;
    v18 = *(v0 + 64);
    v17 = *(v0 + 72);
    v46 = *(v0 + 56);
    v47 = *(v0 + 96);
    v19 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v55 = v50;
    *v19 = 136315650;
    v20 = sub_20CD62E84();
    v21 = v1;
    v23 = v22;
    v14(v17, v46);
    v24 = sub_20CD6153C(v20, v23, &v55);
    v1 = v21;

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    sub_20CD5AB20(&qword_28110F7E8, MEMORY[0x277CC9578]);
    v25 = sub_20CD63574();
    v27 = v26;
    v15(v16, v47);
    v28 = sub_20CD6153C(v25, v27, &v55);

    *(v19 + 14) = v28;
    *(v19 + 22) = 2048;
    sub_20CD62644();
    sub_20CD62544();
    v30 = v29;
    v15(v49, v47);
    v15(v52, v47);
    *(v19 + 24) = v30;
    _os_log_impl(&dword_20CCEA000, log, v51, "[SnapshotRetriverRepresentableProvider] Fetched %s representables for %s in %f seconds", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F3115B0](v50, -1, -1);
    MEMORY[0x20F3115B0](v19, -1, -1);

    v15(v54, v47);
  }

  else
  {
    v31 = *(v0 + 96);
    v32 = *(v0 + 104);
    v34 = *(v0 + 64);
    v33 = *(v0 + 72);
    v35 = *(v0 + 56);

    v15(v52, v31);
    v15(v16, v31);
    v14(v33, v35);
    v15(v54, v31);
  }

  v37 = *(v0 + 136);
  v36 = *(v0 + 144);
  v39 = *(v0 + 120);
  v38 = *(v0 + 128);
  v40 = *(v0 + 112);
  v42 = *(v0 + 80);
  v41 = *(v0 + 88);
  v43 = *(v0 + 72);
  **(v0 + 16) = v1;

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_20CD58E0C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 40);
  __swift_deallocate_boxed_opaque_existential_1((v1 + 32));
  *(v1 + 16) = 0;

  return MEMORY[0x2822009F8](sub_20CD58E88, v2, 0);
}

uint64_t sub_20CD58E88()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 112);
  v6 = *(v0 + 88);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);
  v9 = *(v0 + 104) + 8;
  (*(v0 + 200))(*(v0 + 144), *(v0 + 96));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_20CD58F70(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v7 = *(v4 + 40);
    v8 = sub_20CD59534;
  }

  else
  {
    *(v4 + 248) = a1;
    v8 = sub_20CD590A4;
    v7 = 0;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}