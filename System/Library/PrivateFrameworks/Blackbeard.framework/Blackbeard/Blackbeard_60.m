uint64_t sub_1E6526A0C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC90, &unk_1E6609490);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC80, &unk_1E660A0E0);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65272A8;
  *(v35 + 24) = v33;

  v34(sub_1E5E20B0C, v35);
}

uint64_t sub_1E6526E00(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v30 = a7;
  v29 = a6;
  v31 = a2;
  v11 = sub_1E65E3B68();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v16 = sub_1E65E3B48();
  v17 = sub_1E65E6338();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28[1] = a8;
    v19 = v18;
    v20 = swift_slowAlloc();
    v28[0] = a1;
    v21 = v20;
    v32 = v20;
    *v19 = 134218498;
    *(v19 + 4) = a3;
    *(v19 + 12) = 2080;
    v22 = sub_1E65E68B8();
    v24 = sub_1E5DFD4B0(v22, v23, &v32);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v30;
    _os_log_impl(&dword_1E5DE9000, v16, v17, "Finished P->A conversion: %ld:%s:%lu", v19, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v25 = v21;
    a1 = v28[0];
    MEMORY[0x1E694F1C0](v25, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  if (v31)
  {
    v32 = a1;
    v26 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
    return sub_1E65E5FE8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E6527050(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v30 = a7;
  v29 = a6;
  v31 = a2;
  v11 = sub_1E65E3B68();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v16 = sub_1E65E3B48();
  v17 = sub_1E65E6338();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28[0] = a1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v28[1] = a8;
    v21 = v20;
    v32 = v20;
    *v19 = 134218498;
    *(v19 + 4) = a3;
    *(v19 + 12) = 2080;
    v22 = sub_1E65E68B8();
    v24 = sub_1E5DFD4B0(v22, v23, &v32);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v30;
    _os_log_impl(&dword_1E5DE9000, v16, v17, "Finished P->A conversion: %ld:%s:%lu", v19, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1E694F1C0](v21, -1, -1);
    v25 = v19;
    a1 = v28[0];
    MEMORY[0x1E694F1C0](v25, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  v32 = a1;
  if (v31)
  {
    v26 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC90, &unk_1E6609490);
    return sub_1E65E5FE8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC90, &unk_1E6609490);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E6527300(uint64_t a1)
{
  v2 = sub_1E65DA5E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ACA8, &qword_1E66094B8);
    v11 = sub_1E65E6888();
    v12 = 0;
    v13 = v11 + 56;
    v14 = *(v3 + 80);
    v27 = v10;
    v28 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v3 + 72);
    while (2)
    {
      sub_1E65275E0(v28 + v15 * v12, v9);
      v16 = *(v11 + 40);
      sub_1E65E6D28();
      sub_1E65DA5D8();
      v17 = sub_1E65E6D78();
      v18 = ~(-1 << *(v11 + 32));
      for (i = v17 & v18; ; i = (i + 1) & v18)
      {
        v20 = *(v13 + 8 * (i >> 6));
        if (((1 << i) & v20) == 0)
        {
          break;
        }

        sub_1E65275E0(*(v11 + 48) + i * v15, v7);
        v21 = MEMORY[0x1E6941FD0](v7, v9);
        sub_1E6527538(v7, MEMORY[0x1E69CCEF0]);
        if (v21)
        {
          sub_1E6527538(v9, MEMORY[0x1E69CCEF0]);
          goto LABEL_4;
        }
      }

      *(v13 + 8 * (i >> 6)) = (1 << i) | v20;
      result = sub_1E6527644(v9, *(v11 + 48) + i * v15);
      v23 = *(v11 + 16);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (!v24)
      {
        *(v11 + 16) = v25;
LABEL_4:
        if (++v12 == v27)
        {
          return v11;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1E6527538(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6527598(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E65275E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DA5E8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6527644(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DA5E8();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E65276E8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1E65277E8()
{
  v2 = sub_1E65D9B08();
  v1[2] = v2;
  v3 = *(v2 - 8);
  v1[3] = v3;
  v4 = *(v3 + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E65278A4, v0, 0);
}

uint64_t sub_1E65278A4()
{
  v1 = v0[2];
  v2 = sub_1E65E5F28();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[3];
    v23 = MEMORY[0x1E69E7CC0];
    sub_1E601C0B8(0, v3, 0);
    v5 = v23;
    v6 = *(v4 + 16);
    v4 += 16;
    v7 = v2 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v21 = *(v4 + 56);
    v22 = v6;
    v8 = (v4 - 8);
    do
    {
      v9 = v0[4];
      v10 = v0[2];
      v22(v9, v7, v10);
      v11 = sub_1E65D9AD8();
      v13 = v12;
      (*v8)(v9, v10);
      v15 = *(v23 + 16);
      v14 = *(v23 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1E601C0B8((v14 > 1), v15 + 1, 1);
      }

      *(v23 + 16) = v15 + 1;
      v16 = v23 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      v7 += v21;
      --v3;
    }

    while (v3);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v17 = v0[4];
  v18 = sub_1E600AA08(v5);

  v19 = v0[1];

  return v19(v18);
}

uint64_t static ArchivedSessionService.simulator()@<X0>(void *a1@<X8>)
{
  type metadata accessor for SimulatorArchivedSessionService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *a1 = &unk_1E6609528;
  a1[1] = v2;
  a1[2] = &unk_1E6609538;
  a1[3] = v2;
  a1[4] = &unk_1E6609548;
  a1[5] = v2;
  a1[6] = &unk_1E6609558;
  a1[7] = v2;
  a1[8] = &unk_1E6609568;
  a1[9] = v2;
  a1[10] = &unk_1E6609578;
  a1[11] = v2;
  a1[12] = &unk_1E6609588;
  a1[13] = v2;
  a1[14] = &unk_1E6609598;
  a1[15] = v2;
  return swift_retain_n();
}

uint64_t sub_1E6527B90()
{
  sub_1E65D8768();
  sub_1E652840C(&qword_1ED07ACF8, MEMORY[0x1E69CB538]);
  v1 = sub_1E65E6218();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E6527C44()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E6527B74(v0);
}

uint64_t sub_1E6527CD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60ABB70;

  return sub_1E65277E8();
}

uint64_t sub_1E6527D64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E6527CD4();
}

uint64_t sub_1E6527E0C()
{
  sub_1E65D8AD8();
  sub_1E652840C(&qword_1ED07ACF0, MEMORY[0x1E69CB850]);
  v1 = sub_1E65E6218();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E6527EC0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FE99E8;

  return sub_1E6527DF4(a1, v1);
}

uint64_t sub_1E6527F58(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ACE8, &unk_1E66095F0);
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6528028, a2, 0);
}

uint64_t sub_1E6528028()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0748E0, &qword_1E660F180);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E652810C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E6527F58(a1, v1);
}

uint64_t sub_1E65281A8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6527F58(a1, v1);
}

uint64_t sub_1E6528244()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E65282D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E6528364()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E652840C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E6528454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a1;
  v5[3] = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD18, &qword_1E660AB50);
  v5[4] = v9;
  v10 = *(v9 - 8);
  v5[5] = v10;
  v11 = *(v10 + 64) + 15;
  v5[6] = swift_task_alloc();
  v12 = type metadata accessor for SwappableWorkout();
  v5[7] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v14 = swift_task_alloc();
  v5[8] = v14;
  v15 = swift_task_alloc();
  v5[9] = v15;
  *v15 = v5;
  v15[1] = sub_1E65285B0;

  return sub_1E6531890(v14, a2, a3, a4);
}

uint64_t sub_1E65285B0()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 24);
  v6 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_1E6528B64;
  }

  else
  {
    v4 = sub_1E65286D8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E65286D8()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v4[20];
  __swift_project_boxed_opaque_existential_1(v4 + 16, v4[19]);
  v6 = (v1 + *(v2 + 24));
  v7 = *v6;
  v8 = v6[1];
  sub_1E65DDA88();

  return MEMORY[0x1EEE6DFA0](sub_1E6528788, 0, 0);
}

uint64_t sub_1E6528788()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *(v2 + 16) = "FitnessWorkoutPlanService/LiveWorkoutPlanService.swift";
  *(v2 + 24) = 54;
  *(v2 + 32) = 2;
  *(v2 + 40) = 30;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  v5 = sub_1E65D9658();
  *v4 = v0;
  v4[1] = sub_1E65288A0;
  v6 = v0[2];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6530F3C, v2, v5);
}

uint64_t sub_1E65288A0()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v5 = sub_1E6528A74;
    v6 = 0;
  }

  else
  {
    v7 = v2[3];
    (*(v2[5] + 8))(v2[6], v2[4]);
    v5 = sub_1E65289F8;
    v6 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1E65289F8()
{
  v1 = v0[6];
  sub_1E6530F4C(v0[8]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E6528A74()
{
  v1 = v0[3];
  (*(v0[5] + 8))(v0[6], v0[4]);

  return MEMORY[0x1EEE6DFA0](sub_1E6528AEC, v1, 0);
}

uint64_t sub_1E6528AEC()
{
  sub_1E6530F4C(v0[8]);
  v1 = v0[13];
  v2 = v0[8];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6528B64()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6528BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1E65D71A8();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_1E65D8EF8();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_1E65D7BC8();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = sub_1E65D96F8();
  v4[15] = v14;
  v15 = *(v14 - 8);
  v4[16] = v15;
  v16 = *(v15 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077780, &unk_1E66097F0) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v18 = sub_1E65D7908();
  v4[20] = v18;
  v19 = *(v18 - 8);
  v4[21] = v19;
  v20 = *(v19 + 64) + 15;
  v4[22] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30) - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v22 = sub_1E65D76A8();
  v4[25] = v22;
  v23 = *(v22 - 8);
  v4[26] = v23;
  v24 = *(v23 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v25 = sub_1E65D76F8();
  v4[30] = v25;
  v26 = *(v25 - 8);
  v4[31] = v26;
  v27 = *(v26 + 64) + 15;
  v4[32] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072968, &unk_1E6609800) - 8) + 64) + 15;
  v4[33] = swift_task_alloc();
  v29 = sub_1E65D7EB8();
  v4[34] = v29;
  v30 = *(v29 - 8);
  v4[35] = v30;
  v31 = *(v30 + 64) + 15;
  v4[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6528FF4, v3, 0);
}

uint64_t sub_1E6528FF4()
{
  v1 = v0[5];
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = *(MEMORY[0x1E69CAA10] + 4);
  v5 = swift_task_alloc();
  v0[37] = v5;
  *v5 = v0;
  v5[1] = sub_1E65290B4;
  v6 = v0[33];

  return MEMORY[0x1EEE33FA8](v6, v2, v3);
}

uint64_t sub_1E65290B4()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;

  v5 = *(v2 + 40);
  if (v0)
  {

    v6 = sub_1E6529E58;
  }

  else
  {
    v6 = sub_1E65291EC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E65291EC()
{
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[32];
  v6 = v0[5];
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  v7 = v6[24];
  v8 = v6[25];
  __swift_project_boxed_opaque_existential_1(v6 + 21, v7);
  sub_1E65D7DC8();
  v9 = *(MEMORY[0x1E69CAA38] + 4);
  v10 = swift_task_alloc();
  v0[38] = v10;
  *v10 = v0;
  v10[1] = sub_1E6529310;
  v11 = v0[32];
  v12 = v0[3];
  v13 = v0[4];

  return MEMORY[0x1EEE33FD0](v11, v12, v13, v7, v8);
}

uint64_t sub_1E6529310(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *(*v2 + 256);
  v7 = *(*v2 + 248);
  v8 = *(*v2 + 240);
  v9 = *v2;
  *(v4 + 312) = a1;
  *(v4 + 320) = v1;

  (*(v7 + 8))(v6, v8);
  v10 = *(v3 + 40);
  if (v1)
  {
    v11 = sub_1E652A058;
  }

  else
  {
    v11 = sub_1E65294A0;
  }

  return MEMORY[0x1EEE6DFA0](v11, v10, 0);
}

uint64_t sub_1E65294A0()
{
  v116 = v0;
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  sub_1E65D7858();
  sub_1E65D7688();
  sub_1E65D7868();
  v8 = *(v3 + 8);
  (v8)(v1, v2);
  v9 = *(v6 + 8);
  v9(v5, v7);
  v10 = *(v3 + 48);
  if (v10(v4, 1, v2) == 1)
  {
    v11 = v0[39];
    v13 = v0[35];
    v12 = v0[36];
    v14 = v0[34];
    v15 = v0[24];

    sub_1E5DFE50C(v15, &qword_1ED0752D8, &qword_1E660CC30);
    v16 = sub_1E65D8B88();
    sub_1E6530EF4(&qword_1ED078840, MEMORY[0x1E69CB928]);
    swift_allocError();
    (*(*(v16 - 8) + 104))(v17, *MEMORY[0x1E69CB900], v16);
    swift_willThrow();
    (*(v13 + 8))(v12, v14);
    goto LABEL_9;
  }

  v104 = v10;
  v107 = v9;
  v111 = v8;
  v18 = v0[39];
  v19 = v0[40];
  v20 = v0[36];
  v21 = v0[29];
  v22 = v0[19];
  v23 = v0[15];
  v24 = v0[16];
  v101 = *(v0[26] + 32);
  v101(v21, v0[24], v0[25]);
  v25 = swift_task_alloc();
  *(v25 + 16) = v20;
  *(v25 + 24) = v21;
  sub_1E652A37C(sub_1E652E508, v18, v22);

  v26 = (*(v24 + 48))(v22, 1, v23);
  v27 = v0[39];
  if (v26 != 1)
  {
    v34 = v0[35];
    v33 = v0[36];
    v35 = v0[34];
    v36 = v0[29];
    v37 = v0[25];
    v38 = v0[19];
    v39 = v0[39];

    goto LABEL_8;
  }

  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = v19;
    v30 = v0[16];
    v31 = sub_1E652F348(*(v27 + 16), 0);
    v98 = sub_1E6530C50(v115, &v31[(*(v30 + 80) + 32) & ~*(v30 + 80)], v28, v27);

    result = sub_1E5E24EE4();
    if (v98 != v28)
    {
      __break(1u);
      return result;
    }

    v19 = v29;
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  v115[0] = v31;
  sub_1E652F2A0(v115);
  if (!v19)
  {
    v53 = v0[39];

    v33 = v0[36];
    if (v115[0][2])
    {
      v54 = v0[22];
      v96 = v0[23];
      v99 = v0[25];
      v55 = v0[17];
      v56 = v0[18];
      v57 = v0[15];
      v58 = v0[16];
      v59 = v0[14];
      v77 = v0[27];
      v79 = v0[13];
      v81 = v0[20];
      v83 = v0[12];
      v89 = v0[10];
      v91 = v0[9];
      v85 = v0[11];
      v87 = v0[8];
      v93 = v0[7];
      v94 = v0[6];
      (*(v58 + 16))(v55, v115[0] + ((*(v58 + 80) + 32) & ~*(v58 + 80)), v57);

      (*(v58 + 32))(v56, v55, v57);
      sub_1E65D7E98();
      sub_1E65D7858();
      sub_1E65D7B88();
      v107(v54, v81);
      (*(v79 + 8))(v59, v83);
      sub_1E65D7858();
      sub_1E65D96B8();
      sub_1E65D8E98();
      (*(v89 + 8))(v85, v91);
      sub_1E65D78C8();
      (*(v93 + 8))(v87, v94);
      v107(v54, v81);
      if (v104(v96, 1, v99) != 1)
      {
        v69 = v0[35];
        v82 = v0[34];
        v84 = v0[36];
        v88 = v0[33];
        v90 = v0[32];
        v86 = v0[27];
        v70 = v0[25];
        v78 = v0[23];
        v80 = v0[29];
        v95 = v0[24];
        v97 = v0[22];
        v71 = v0[18];
        v72 = v0[19];
        v92 = v0[28];
        v73 = v0[16];
        v100 = v0[17];
        v74 = v0[14];
        v75 = v0[15];
        v110 = v0[11];
        v114 = v0[8];
        v76 = v0[2];
        v111();
        (*(v73 + 8))(v71, v75);
        sub_1E5DFE50C(v72, &unk_1ED077780, &unk_1E66097F0);
        v101(v76, v78, v70);
        (v111)(v80, v70);
        (*(v69 + 8))(v84, v82);

        v52 = v0[1];
        goto LABEL_10;
      }

      v60 = v0[35];
      v106 = v0[34];
      v109 = v0[36];
      v103 = v0[29];
      v61 = v0[27];
      v62 = v0[25];
      v64 = v0[18];
      v63 = v0[19];
      v66 = v0[15];
      v65 = v0[16];
      sub_1E5DFE50C(v0[23], &qword_1ED0752D8, &qword_1E660CC30);
      v67 = sub_1E65D8B88();
      sub_1E6530EF4(&qword_1ED078840, MEMORY[0x1E69CB928]);
      swift_allocError();
      (*(*(v67 - 8) + 104))(v68, *MEMORY[0x1E69CB900], v67);
      swift_willThrow();
      (v111)(v61, v62);
      (*(v65 + 8))(v64, v66);
      sub_1E5DFE50C(v63, &unk_1ED077780, &unk_1E66097F0);
      (v111)(v103, v62);
      (*(v60 + 8))(v109, v106);
LABEL_9:
      v42 = v0[36];
      v44 = v0[32];
      v43 = v0[33];
      v46 = v0[28];
      v45 = v0[29];
      v47 = v0[27];
      v49 = v0[23];
      v48 = v0[24];
      v50 = v0[22];
      v51 = v0[19];
      v102 = v0[18];
      v105 = v0[17];
      v108 = v0[14];
      v112 = v0[11];
      v113 = v0[8];

      v52 = v0[1];
LABEL_10:

      return v52();
    }

    v35 = v0[34];
    v34 = v0[35];
    v36 = v0[29];
    v37 = v0[25];
    v38 = v0[19];

LABEL_8:
    v40 = sub_1E65D8B88();
    sub_1E6530EF4(&qword_1ED078840, MEMORY[0x1E69CB928]);
    swift_allocError();
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x1E69CB8E0], v40);
    swift_willThrow();
    sub_1E5DFE50C(v38, &unk_1ED077780, &unk_1E66097F0);
    (v111)(v36, v37);
    (*(v34 + 8))(v33, v35);
    goto LABEL_9;
  }
}

uint64_t sub_1E6529E58()
{
  v1 = v0[33];
  (*(v0[35] + 56))(v1, 1, 1, v0[34]);
  sub_1E5DFE50C(v1, &qword_1ED072968, &unk_1E6609800);
  v2 = sub_1E65D8B88();
  sub_1E6530EF4(&qword_1ED078840, MEMORY[0x1E69CB928]);
  swift_allocError();
  (*(*(v2 - 8) + 104))(v3, *MEMORY[0x1E69CB8F8], v2);
  swift_willThrow();
  v4 = v0[36];
  v6 = v0[32];
  v5 = v0[33];
  v8 = v0[28];
  v7 = v0[29];
  v9 = v0[27];
  v11 = v0[23];
  v10 = v0[24];
  v12 = v0[22];
  v13 = v0[19];
  v16 = v0[18];
  v17 = v0[17];
  v18 = v0[14];
  v19 = v0[11];
  v20 = v0[8];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1E652A058()
{
  (*(v0[35] + 8))(v0[36], v0[34]);
  v1 = v0[36];
  v3 = v0[32];
  v2 = v0[33];
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[27];
  v8 = v0[23];
  v7 = v0[24];
  v9 = v0[22];
  v10 = v0[19];
  v13 = v0[18];
  v14 = v0[17];
  v15 = v0[14];
  v16 = v0[11];
  v17 = v0[8];
  v18 = v0[40];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E652A19C()
{
  v0 = sub_1E65D8EF8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65D76A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D96B8();
  sub_1E65D7E28();
  (*(v1 + 8))(v4, v0);
  sub_1E6530EF4(&qword_1ED073FD8, MEMORY[0x1E6969530]);
  v10 = sub_1E65E5B88();
  (*(v6 + 8))(v9, v5);
  return v10 & 1;
}

uint64_t sub_1E652A37C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v4 = v3;
  v33 = a1;
  v29 = a3;
  v39 = sub_1E65D96F8();
  v6 = *(*(v39 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v39);
  v38 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v29 - v10;
  v11 = a2 + 56;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v34 = v9 + 32;
  v35 = v9;
  v30 = (v9 + 8);
  v31 = v9 + 16;
  v36 = a2;

  v17 = 0;
  v18 = v32;
  if (v14)
  {
    while (1)
    {
      v37 = v4;
      v19 = v17;
LABEL_9:
      v20 = v35;
      v21 = v39;
      (*(v35 + 16))(v18, *(v36 + 48) + *(v35 + 72) * (__clz(__rbit64(v14)) | (v19 << 6)), v39);
      v22 = *(v20 + 32);
      v23 = v38;
      v22(v38, v18, v21);
      v24 = v37;
      v25 = v33(v23);
      v4 = v24;
      if (v24)
      {
        (*v30)(v38, v39);
      }

      if (v25)
      {
        break;
      }

      v14 &= v14 - 1;
      result = (*v30)(v38, v39);
      v17 = v19;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v28 = v29;
    v22(v29, v38, v39);
    v27 = v28;
    v26 = 0;
    return (*(v35 + 56))(v27, v26, 1, v39);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {

        v26 = 1;
        v27 = v29;
        return (*(v35 + 56))(v27, v26, 1, v39);
      }

      v14 = *(v11 + 8 * v19);
      ++v17;
      if (v14)
      {
        v37 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E652A63C(uint64_t a1)
{
  v46 = sub_1E65DA598();
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1E65D76F8();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v42 = v9;
    v34 = v1;
    v50 = MEMORY[0x1E69E7CC0];
    v36 = a1;
    sub_1E6537D50(0, v10, 0);
    v12 = v6;
    v13 = v36;
    v14 = -1 << *(v36 + 32);
    v48 = v36 + 56;
    v49 = v50;
    result = sub_1E65E6748();
    v15 = result;
    v16 = 0;
    v40 = v3 + 8;
    v41 = v3 + 16;
    v43 = v12;
    v38 = v3;
    v39 = v12 + 32;
    v35 = v13 + 64;
    v37 = v10;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v13 + 32))
    {
      v19 = v15 >> 6;
      if ((*(v48 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_23;
      }

      v47 = *(v13 + 36);
      v21 = v45;
      v20 = v46;
      (*(v3 + 16))(v45, *(v13 + 48) + *(v3 + 72) * v15, v46);
      v22 = v42;
      sub_1E65DA578();
      (*(v3 + 8))(v21, v20);
      v23 = v49;
      v50 = v49;
      v25 = *(v49 + 16);
      v24 = *(v49 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1E6537D50(v24 > 1, v25 + 1, 1);
        v23 = v50;
      }

      *(v23 + 16) = v25 + 1;
      v26 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v49 = v23;
      result = (*(v43 + 32))(v23 + v26 + *(v43 + 72) * v25, v22, v44);
      v17 = 1 << *(v13 + 32);
      if (v15 >= v17)
      {
        goto LABEL_24;
      }

      v27 = *(v48 + 8 * v19);
      if ((v27 & (1 << v15)) == 0)
      {
        goto LABEL_25;
      }

      if (v47 != *(v13 + 36))
      {
        goto LABEL_26;
      }

      v28 = v27 & (-2 << (v15 & 0x3F));
      if (v28)
      {
        v17 = __clz(__rbit64(v28)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v18 = v37;
        v3 = v38;
      }

      else
      {
        v29 = v19 << 6;
        v30 = v19 + 1;
        v31 = (v35 + 8 * v19);
        v18 = v37;
        v3 = v38;
        while (v30 < (v17 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_1E5F87098(v15, v47, 0);
            v17 = __clz(__rbit64(v32)) + v29;
            goto LABEL_19;
          }
        }

        result = sub_1E5F87098(v15, v47, 0);
LABEL_19:
        v13 = v36;
      }

      ++v16;
      v15 = v17;
      if (v16 == v18)
      {
        return v49;
      }
    }

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

  return result;
}

uint64_t sub_1E652AA00(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E652AA20, 0, 0);
}

uint64_t sub_1E652AA20()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1E65DDF18();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1E652AABC()
{
  v1[2] = v0;
  v2 = sub_1E65D76F8();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_1E65D7EB8();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E652ABD8, v0, 0);
}

uint64_t sub_1E652ABD8()
{
  v1 = v0[2];
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = *(MEMORY[0x1E69CAA10] + 4);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1E652AC98;
  v6 = v0[8];

  return MEMORY[0x1EEE33FA8](v6, v2, v3);
}

uint64_t sub_1E652AC98()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_1E652B028;
  }

  else
  {
    v6 = sub_1E652ADC4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E652ADC4()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v3[24];
  v5 = v3[25];
  __swift_project_boxed_opaque_existential_1(v3 + 21, v4);
  sub_1E65D7DC8();
  v6 = *(MEMORY[0x1E69CAA40] + 4);
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_1E652AEA0;
  v8 = v0[5];

  return MEMORY[0x1EEE33FD8](v8, v4, v5);
}

uint64_t sub_1E652AEA0()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *v1;
  *(*v1 + 96) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 16);
  if (v0)
  {
    v9 = sub_1E652B098;
  }

  else
  {
    v9 = sub_1E651FC0C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1E652B028()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E652B098()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E652B120(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1E65D7BC8();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_1E65D9388();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B58, &qword_1E65EC600) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = sub_1E65D76F8();
  v3[12] = v11;
  v12 = *(v11 - 8);
  v3[13] = v12;
  v13 = *(v12 + 64) + 15;
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E652B2D4, v2, 0);
}

uint64_t sub_1E652B2D4()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[7];
  v6 = v0[3];
  v5 = v0[4];
  v19 = v5[25];
  __swift_project_boxed_opaque_existential_1(v5 + 21, v5[24]);
  v7 = sub_1E65D8FB8();
  v0[15] = v7;
  v8 = sub_1E65D8FD8();
  v10 = v9;
  v0[16] = v9;
  sub_1E65D8F98();
  sub_1E65D8FC8();
  sub_1E65D8FE8();
  sub_1E65D8FF8();
  sub_1E65D9008();
  sub_1E65D8F88();
  v11 = *(MEMORY[0x1E69CAA58] + 4);
  v12 = swift_task_alloc();
  v0[17] = v12;
  *v12 = v0;
  v12[1] = sub_1E652B43C;
  v13 = v0[14];
  v15 = v0[10];
  v14 = v0[11];
  v16 = v0[7];
  v17 = v0[2];

  return MEMORY[0x1EEE33FF0](v17, v7, v8, v10, v13, v14, v15, v16);
}

uint64_t sub_1E652B43C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v19 = *(*v1 + 120);
  v23 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  v22 = *(*v1 + 96);
  v21 = *(*v1 + 88);
  v20 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v18 = *(*v1 + 64);
  v7 = *(*v1 + 56);
  v8 = *(*v1 + 48);
  v9 = *(*v1 + 40);
  v10 = *v1;
  *(*v1 + 144) = v0;

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v20, v18);
  sub_1E5DFE50C(v21, &qword_1ED072B58, &qword_1E65EC600);
  (*(v5 + 8))(v23, v22);
  if (v0)
  {
    v11 = v2[4];

    return MEMORY[0x1EEE6DFA0](sub_1E652B748, v11, 0);
  }

  else
  {
    v12 = v2[14];
    v14 = v2[10];
    v13 = v2[11];
    v15 = v2[7];

    v16 = *(v10 + 8);

    return v16();
  }
}

uint64_t sub_1E652B748()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[7];

  v5 = v0[1];
  v6 = v0[18];

  return v5();
}

uint64_t sub_1E652B7D4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1E65D7BC8();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_1E65D9388();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B58, &qword_1E65EC600) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = sub_1E65D76F8();
  v3[12] = v11;
  v12 = *(v11 - 8);
  v3[13] = v12;
  v13 = *(v12 + 64) + 15;
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E652B988, v2, 0);
}

uint64_t sub_1E652B988()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[7];
  v6 = v0[3];
  v5 = v0[4];
  v19 = v5[25];
  __swift_project_boxed_opaque_existential_1(v5 + 21, v5[24]);
  v7 = sub_1E65D8FB8();
  v0[15] = v7;
  v8 = sub_1E65D8FD8();
  v10 = v9;
  v0[16] = v9;
  sub_1E65D8F98();
  sub_1E65D8FC8();
  sub_1E65D8FE8();
  sub_1E65D8FF8();
  sub_1E65D9008();
  sub_1E65D8F88();
  v11 = *(MEMORY[0x1E69CAA70] + 4);
  v12 = swift_task_alloc();
  v0[17] = v12;
  *v12 = v0;
  v12[1] = sub_1E652BAF0;
  v13 = v0[14];
  v15 = v0[10];
  v14 = v0[11];
  v16 = v0[7];
  v17 = v0[2];

  return MEMORY[0x1EEE34008](v17, v7, v8, v10, v13, v14, v15, v16);
}

uint64_t sub_1E652BAF0()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v19 = *(*v1 + 120);
  v23 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  v22 = *(*v1 + 96);
  v21 = *(*v1 + 88);
  v20 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v18 = *(*v1 + 64);
  v7 = *(*v1 + 56);
  v8 = *(*v1 + 48);
  v9 = *(*v1 + 40);
  v10 = *v1;
  *(*v1 + 144) = v0;

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v20, v18);
  sub_1E5DFE50C(v21, &qword_1ED072B58, &qword_1E65EC600);
  (*(v5 + 8))(v23, v22);
  if (v0)
  {
    v11 = v2[4];

    return MEMORY[0x1EEE6DFA0](sub_1E653116C, v11, 0);
  }

  else
  {
    v12 = v2[14];
    v14 = v2[10];
    v13 = v2[11];
    v15 = v2[7];

    v16 = *(v10 + 8);

    return v16();
  }
}

uint64_t sub_1E652BDFC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E652BE18, a2, 0);
}

uint64_t sub_1E652BE18()
{
  v1 = v0[3];
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = *(MEMORY[0x1E69CAA10] + 4);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1E630DF80;
  v6 = v0[2];

  return MEMORY[0x1EEE33FA8](v6, v2, v3);
}

uint64_t sub_1E652BED8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E652BDFC(a1, v1);
}

uint64_t sub_1E652BF94()
{
  v1 = *(v0 + 16);
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = *(MEMORY[0x1E69CAA80] + 4);
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1E651F35C;

  return MEMORY[0x1EEE34018](v2, v3);
}

uint64_t sub_1E652C04C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E652BF74(v0);
}

uint64_t sub_1E652C0DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E652C0F8, a2, 0);
}

uint64_t sub_1E652C0F8()
{
  v1 = v0[3];
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = *(MEMORY[0x1E69CAA50] + 4);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1E61A482C;
  v6 = v0[2];

  return MEMORY[0x1EEE33FE8](v6, v2, v3);
}

uint64_t sub_1E652C1B8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FE99E8;

  return sub_1E652C0DC(a1, v1);
}

uint64_t sub_1E652C270()
{
  v1 = *(v0 + 16);
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = *(MEMORY[0x1E69CAA80] + 4);
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1E652C328;

  return MEMORY[0x1EEE34018](v2, v3);
}

uint64_t sub_1E652C328(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v4 + 16);
    *(v4 + 40) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1E652C478, v9, 0);
  }
}

uint64_t sub_1E652C478()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = sub_1E652A63C(v0[5]);

  v4 = v2[24];
  v5 = v2[25];
  __swift_project_boxed_opaque_existential_1(v2 + 21, v4);
  v6 = sub_1E600C8B4(v3);
  v0[6] = v6;

  v7 = *(MEMORY[0x1E69CAA50] + 4);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_1E652C56C;

  return MEMORY[0x1EEE33FE8](v6, v4, v5);
}

uint64_t sub_1E652C56C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = *(v4 + 16);

    return MEMORY[0x1EEE6DFA0](sub_1E652C6C4, v7, 0);
  }

  else
  {
    v8 = *(v4 + 48);

    v9 = *(v6 + 8);

    return v9(a1);
  }
}

uint64_t sub_1E652C6C4()
{
  v1 = v0[6];

  v2 = v0[8];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1E652C728()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E652C250(v0);
}

uint64_t sub_1E652C7D8()
{
  v1 = *(v0 + 16);
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = *(MEMORY[0x1E69CAA78] + 4);
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1E6531170;

  return MEMORY[0x1EEE34010](v2, v3);
}

uint64_t sub_1E652C890()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E652C7B8(v0);
}

uint64_t sub_1E652C920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E652C944, a3, 0);
}

uint64_t sub_1E652C944()
{
  v1 = v0[4];
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = *(MEMORY[0x1E69CAA30] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1E6531168;
  v6 = v0[2];
  v7 = v0[3];

  return MEMORY[0x1EEE33FC8](v6, v7, v2, v3);
}

uint64_t sub_1E652CA04(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E652C920(a1, a2, v2);
}

uint64_t sub_1E652CAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E652CAD4, a4, 0);
}

uint64_t sub_1E652CAD4()
{
  v1 = v0[5];
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = *(MEMORY[0x1E69CAA38] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1E652CB98;
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return MEMORY[0x1EEE33FD0](v8, v6, v7, v2, v3);
}

uint64_t sub_1E652CB98(uint64_t a1)
{
  v4 = *(*v2 + 48);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1E652CC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1E5FEE4D4;

  return sub_1E652CAB0(a1, a2, a3, v3);
}

uint64_t sub_1E652CD48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFA78C;

  return sub_1E6528BD4(a1, a2, a3);
}

uint64_t sub_1E652CDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFA78C;

  return sub_1E652CD48(a1, a2, a3);
}

uint64_t sub_1E652CEB0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E652CECC, a2, 0);
}

uint64_t sub_1E652CECC()
{
  v1 = v0[3];
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = *(MEMORY[0x1E69CAA20] + 4);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1E6531164;
  v6 = v0[2];

  return MEMORY[0x1EEE33FB8](v6, v2, v3);
}

uint64_t sub_1E652CF8C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E652CEB0(a1, v1);
}

uint64_t sub_1E652D028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6528454(a1, a2, a3, a4);
}

uint64_t sub_1E652D0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E652D028(a1, a2, a3, a4);
}

uint64_t sub_1E652D1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v8 = sub_1E65D7EB8();
  v4[5] = v8;
  v9 = *(v8 - 8);
  v4[6] = v9;
  v10 = *(v9 + 64) + 15;
  v4[7] = swift_task_alloc();
  v11 = type metadata accessor for SwappableWorkout();
  v4[8] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v13 = swift_task_alloc();
  v4[9] = v13;
  v14 = swift_task_alloc();
  v4[10] = v14;
  *v14 = v4;
  v14[1] = sub_1E652D308;

  return sub_1E6531890(v13, a1, a2, a3);
}

uint64_t sub_1E652D308()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1E652D640;
  }

  else
  {
    v4 = sub_1E652D430;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E652D430()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[4];
  v4 = v3[24];
  v5 = v3[25];
  __swift_project_boxed_opaque_existential_1(v3 + 21, v4);
  v6 = *(v2 + 20);
  v7 = *(MEMORY[0x1E69CAA68] + 4);
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_1E652D50C;
  v9 = v0[9];
  v10 = v0[7];
  v11 = v0[2];
  v12 = v0[3];

  return MEMORY[0x1EEE34000](v10, v9, v1 + v6, v11, v12, v4, v5);
}

uint64_t sub_1E652D50C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v8 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[4];
    v5 = sub_1E652D72C;
  }

  else
  {
    v6 = v2[4];
    (*(v2[6] + 8))(v2[7], v2[5]);
    v5 = sub_1E652D6B0;
    v4 = v6;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1E652D640()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E652D6B0()
{
  v1 = v0[7];
  sub_1E6530F4C(v0[9]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E652D72C()
{
  sub_1E6530F4C(v0[9]);
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E652D7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E652D1B0(a1, a2, a3, v3);
}

uint64_t sub_1E652D854(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E652D870, a2, 0);
}

uint64_t sub_1E652D870()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  swift_getObjectType();
  sub_1E65DDFE8();
  sub_1E65DDE28();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E652D930(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E652D854(a1, v1);
}

uint64_t sub_1E652D9CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E652D9E8, a2, 0);
}

uint64_t sub_1E652D9E8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  swift_getObjectType();
  sub_1E65DDF18();
  sub_1E65DDE28();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E652DAA0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E652D9CC(a1, v1);
}

uint64_t sub_1E652DB3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E652AABC();
}

uint64_t sub_1E652DBCC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E652DB3C();
}

uint64_t sub_1E652DC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E652DC80, a3, 0);
}

uint64_t sub_1E652DC80()
{
  v1 = v0[4];
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = *(MEMORY[0x1E69CAA60] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1E6126414;
  v6 = v0[2];
  v7 = v0[3];

  return MEMORY[0x1EEE33FF8](v6, v7, v2, v3);
}

uint64_t sub_1E652DD40(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E652DC5C(a1, a2, v2);
}

uint64_t sub_1E652DE0C()
{
  v1 = *(v0 + 16);
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = *(MEMORY[0x1E69CAA28] + 4);
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1E5FEEF74;

  return MEMORY[0x1EEE33FC0](v2, v3);
}

uint64_t sub_1E652DEC4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFE6BC;

  return sub_1E652DDEC(v0);
}

uint64_t sub_1E652DF54(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E652DF70, a2, 0);
}

uint64_t sub_1E652DF70()
{
  v1 = v0[3];
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = *(MEMORY[0x1E69CAA88] + 4);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1E6531164;
  v6 = v0[2];

  return MEMORY[0x1EEE34020](v6, v2, v3);
}

uint64_t sub_1E652E030(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E652DF54(a1, v1);
}

uint64_t sub_1E652E0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E652E0EC, a3, 0);
}

uint64_t sub_1E652E0EC()
{
  v1 = v0[4];
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = *(MEMORY[0x1E69CAA48] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1E6531168;
  v6 = v0[2];
  v7 = v0[3];

  return MEMORY[0x1EEE33FE0](v6, v7, v2, v3);
}

uint64_t sub_1E652E1AC(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E652E0C8(a1, a2, v2);
}

uint64_t sub_1E652E258(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E652B120(a1, a2);
}

uint64_t sub_1E652E304(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E652E258(a1, a2);
}

uint64_t sub_1E652E3B0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E652B7D4(a1, a2);
}

uint64_t sub_1E652E45C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E652E3B0(a1, a2);
}

uint64_t sub_1E652E508()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1E652A19C() & 1;
}

uint64_t sub_1E652E528(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD38, &qword_1E6609848);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD40, &qword_1E6609850);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E65310D4;
  *(v35 + 24) = v33;

  v34(sub_1E5E20BC8, v35);
}

uint64_t sub_1E652E904(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD20, &unk_1E6609820);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD18, &qword_1E660AB50);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E6530FA8;
  *(v35 + 24) = v33;

  v34(sub_1E6531034, v35);
}

uint64_t sub_1E652ECE0(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v32 = a7;
  v31 = a6;
  v30 = a5;
  LODWORD(v10) = a2;
  v12 = sub_1E65E3B68();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v18 = sub_1E65E6338();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = a8;
    v20 = v19;
    v21 = swift_slowAlloc();
    HIDWORD(v28) = v10;
    v10 = v21;
    v33 = v21;
    *v20 = 134218498;
    *(v20 + 4) = a3;
    *(v20 + 12) = 2080;
    v22 = sub_1E65E68B8();
    v24 = sub_1E5DFD4B0(v22, v23, &v33);

    *(v20 + 14) = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = v32;
    _os_log_impl(&dword_1E5DE9000, v17, v18, "Finished P->A conversion: %ld:%s:%lu", v20, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    v25 = v10;
    LOBYTE(v10) = BYTE4(v28);
    MEMORY[0x1E694F1C0](v25, -1, -1);
    MEMORY[0x1E694F1C0](v20, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  v33 = a1;
  if (v10)
  {
    v26 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD38, &qword_1E6609848);
    return sub_1E65E5FE8();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD38, &qword_1E6609848);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E652EF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v43 = a5;
  v41 = a3;
  v42 = a4;
  v10 = sub_1E65D9658();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD28, &qword_1E6609830);
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
  sub_1E6531064(a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD20, &unk_1E6609820);
    return sub_1E65E5FE8();
  }

  else
  {
    (*(v11 + 32))(v14, v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD20, &unk_1E6609820);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E652F2A0(void **a1)
{
  v2 = *(sub_1E65D96F8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1E6530C04(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1E652F444(v6);
  *a1 = v3;
  return result;
}

size_t sub_1E652F348(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD10, &unk_1E6609810);
  v4 = *(sub_1E65D96F8() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E652F444(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E65E6BA8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1E65D96F8();
        v6 = sub_1E65E5F98();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1E65D96F8() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1E652F834(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1E652F570(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E652F570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1E65D96F8();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v42 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v46 = &v32 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v45 = &v32 - v16;
  v34 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v43 = *(v15 + 16);
    v44 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v40 = (v15 + 32);
    v41 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v39 = -v18;
    v21 = a1 - a3;
    v33 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v37 = v20;
    v38 = a3;
    v35 = v22;
    v36 = v21;
    v23 = v20;
    while (1)
    {
      v24 = v45;
      v25 = v43;
      v43(v45, v22, v8);
      v26 = v46;
      v25(v46, v23, v8);
      sub_1E6530EF4(&qword_1ED07A728, MEMORY[0x1E69CC278]);
      v27 = sub_1E65E5B78();
      v28 = *v19;
      (*v19)(v26, v8);
      result = v28(v24, v8);
      if ((v27 & 1) == 0)
      {
LABEL_4:
        a3 = v38 + 1;
        v20 = v37 + v33;
        v21 = v36 - 1;
        v22 = v35 + v33;
        if (v38 + 1 == v34)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v41)
      {
        break;
      }

      v29 = *v40;
      v30 = v42;
      (*v40)(v42, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v29)(v23, v30, v8);
      v23 += v39;
      v22 += v39;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E652F834(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v123 = a1;
  v8 = sub_1E65D96F8();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v128 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v135 = &v120 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v141 = &v120 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v140 = &v120 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v22 = *v123;
    if (!*v123)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_1E636AC44(v21);
      v21 = result;
    }

    v143 = v21;
    v116 = *(v21 + 2);
    if (v116 >= 2)
    {
      while (*a3)
      {
        v117 = *&v21[16 * v116];
        v118 = *&v21[16 * v116 + 24];
        sub_1E653025C(*a3 + v9[9] * v117, *a3 + v9[9] * *&v21[16 * v116 + 16], *a3 + v9[9] * v118, v22);
        if (v5)
        {
        }

        if (v118 < v117)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1E636AC44(v21);
        }

        if (v116 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v119 = &v21[16 * v116];
        *v119 = v117;
        *(v119 + 1) = v118;
        v143 = v21;
        result = sub_1E636ABB8(v116 - 1);
        v21 = v143;
        v116 = *(v143 + 2);
        if (v116 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v120 = a4;
  v20 = 0;
  v138 = (v9 + 1);
  v139 = v9 + 2;
  v137 = (v9 + 4);
  v21 = MEMORY[0x1E69E7CC0];
  v125 = v9;
  v142 = v8;
  v121 = a3;
  while (1)
  {
    v22 = v20;
    v126 = v21;
    if (v20 + 1 >= v19)
    {
      v35 = v20 + 1;
    }

    else
    {
      v133 = v19;
      v122 = v5;
      v23 = *a3;
      v24 = v9[9];
      v25 = v20;
      v124 = v20;
      v26 = &v23[v24 * (v20 + 1)];
      v27 = v8;
      v28 = v9[2];
      v29 = v140;
      v28(v140, v26, v27);
      v30 = &v23[v24 * v25];
      v31 = v141;
      v132 = v28;
      v28(v141, v30, v27);
      v131 = sub_1E6530EF4(&qword_1ED07A728, MEMORY[0x1E69CC278]);
      LODWORD(v134) = sub_1E65E5B78();
      v32 = v9[1];
      v32(v31, v27);
      v130 = v32;
      result = (v32)(v29, v27);
      v33 = v124 + 2;
      v136 = v24;
      v34 = &v23[v24 * (v124 + 2)];
      while (1)
      {
        v35 = v133;
        if (v133 == v33)
        {
          break;
        }

        v36 = v140;
        v37 = v9;
        v38 = v142;
        v39 = v132;
        (v132)(v140, v34, v142);
        v40 = v141;
        v39(v141, v26, v38);
        v41 = sub_1E65E5B78() & 1;
        v42 = v130;
        (v130)(v40, v38);
        v43 = v38;
        v9 = v37;
        result = v42(v36, v43);
        ++v33;
        v34 += v136;
        v26 += v136;
        if ((v134 & 1) != v41)
        {
          v35 = v33 - 1;
          break;
        }
      }

      v5 = v122;
      v21 = v126;
      v8 = v142;
      a3 = v121;
      v22 = v124;
      if (v134)
      {
        if (v35 < v124)
        {
          goto LABEL_123;
        }

        if (v124 < v35)
        {
          v44 = v35;
          v45 = v136 * (v35 - 1);
          v46 = v35 * v136;
          v133 = v35;
          v47 = v124;
          v48 = v124 * v136;
          do
          {
            if (v47 != --v44)
            {
              v50 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v134 = *v137;
              v134(v128, &v50[v48], v142);
              if (v48 < v45 || &v50[v48] >= &v50[v46])
              {
                v49 = v142;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v49 = v142;
                if (v48 != v45)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v134)(&v50[v45], v128, v49);
              v9 = v125;
              v21 = v126;
            }

            ++v47;
            v45 -= v136;
            v46 -= v136;
            v48 += v136;
          }

          while (v47 < v44);
          v5 = v122;
          v8 = v142;
          v22 = v124;
          v35 = v133;
        }
      }
    }

    v51 = a3[1];
    if (v35 < v51)
    {
      if (__OFSUB__(v35, v22))
      {
        goto LABEL_122;
      }

      if (v35 - v22 < v120)
      {
        if (__OFADD__(v22, v120))
        {
          goto LABEL_124;
        }

        if (v22 + v120 >= v51)
        {
          v52 = a3[1];
        }

        else
        {
          v52 = v22 + v120;
        }

        if (v52 < v22)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v35 != v52)
        {
          break;
        }
      }
    }

    v53 = v35;
    if (v35 < v22)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E636ADD0(0, *(v21 + 2) + 1, 1, v21);
      v21 = result;
    }

    v55 = *(v21 + 2);
    v54 = *(v21 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      result = sub_1E636ADD0((v54 > 1), v55 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v56;
    v57 = &v21[16 * v55];
    *(v57 + 4) = v22;
    *(v57 + 5) = v53;
    v22 = *v123;
    if (!*v123)
    {
      goto LABEL_131;
    }

    v129 = v53;
    if (v55)
    {
      while (1)
      {
        v58 = v56 - 1;
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v59 = *(v21 + 4);
          v60 = *(v21 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_52:
          if (v62)
          {
            goto LABEL_110;
          }

          v75 = &v21[16 * v56];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_113;
          }

          v81 = &v21[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_117;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v56 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v85 = &v21[16 * v56];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_66:
        if (v80)
        {
          goto LABEL_112;
        }

        v88 = &v21[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_115;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_73:
        v96 = v58 - 1;
        if (v58 - 1 >= v56)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v97 = *&v21[16 * v96 + 32];
        v98 = *&v21[16 * v58 + 40];
        sub_1E653025C(*a3 + v9[9] * v97, *a3 + v9[9] * *&v21[16 * v58 + 32], *a3 + v9[9] * v98, v22);
        if (v5)
        {
        }

        if (v98 < v97)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1E636AC44(v21);
        }

        if (v96 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v99 = &v21[16 * v96];
        *(v99 + 4) = v97;
        *(v99 + 5) = v98;
        v143 = v21;
        result = sub_1E636ABB8(v58);
        v21 = v143;
        v56 = *(v143 + 2);
        v8 = v142;
        if (v56 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v21[16 * v56 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_108;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_109;
      }

      v70 = &v21[16 * v56];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_111;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_114;
      }

      if (v74 >= v66)
      {
        v92 = &v21[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_118;
        }

        if (v61 < v95)
        {
          v58 = v56 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v129;
    if (v129 >= v19)
    {
      goto LABEL_94;
    }
  }

  v122 = v5;
  v100 = *a3;
  v101 = v9[9];
  v136 = v9[2];
  v102 = v100 + v101 * (v35 - 1);
  v103 = -v101;
  v124 = v22;
  v104 = v22 - v35;
  v134 = v100;
  v127 = v101;
  v105 = v100 + v35 * v101;
  v129 = v52;
LABEL_85:
  v132 = v102;
  v133 = v35;
  v130 = v105;
  v131 = v104;
  v106 = v102;
  while (1)
  {
    v107 = v140;
    v108 = v136;
    (v136)(v140, v105, v8);
    v109 = v141;
    v108(v141, v106, v142);
    sub_1E6530EF4(&qword_1ED07A728, MEMORY[0x1E69CC278]);
    v110 = sub_1E65E5B78();
    v111 = *v138;
    v112 = v109;
    v8 = v142;
    (*v138)(v112, v142);
    result = v111(v107, v8);
    if ((v110 & 1) == 0)
    {
LABEL_84:
      v35 = v133 + 1;
      v102 = &v132[v127];
      v104 = v131 - 1;
      v105 = &v130[v127];
      v53 = v129;
      if (v133 + 1 != v129)
      {
        goto LABEL_85;
      }

      v5 = v122;
      a3 = v121;
      v9 = v125;
      v21 = v126;
      v22 = v124;
      if (v129 < v124)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v134)
    {
      break;
    }

    v113 = *v137;
    v114 = v135;
    (*v137)(v135, v105, v8);
    swift_arrayInitWithTakeFrontToBack();
    v113(v106, v114, v8);
    v106 += v103;
    v105 += v103;
    if (__CFADD__(v104++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1E653025C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = sub_1E65D96F8();
  v8 = *(v53 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v53);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v50 = &v41 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_63;
  }

  v52 = a3;
  v17 = (a2 - a1) / v15;
  v56 = a1;
  v55 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v19;
    if (v19 >= 1)
    {
      v29 = -v15;
      v44 = a4;
      v45 = (v8 + 16);
      v42 = (v8 + 8);
      v43 = a1;
      v30 = a4 + v19;
      v31 = v52;
      v46 = v29;
      do
      {
        v41 = v28;
        v32 = a2 + v29;
        v48 = a2 + v29;
        v49 = v28;
        v47 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v56 = a2;
            v28 = v41;
            goto LABEL_59;
          }

          v34 = v31;
          v52 = v31 + v29;
          v35 = v30 + v29;
          v36 = *v45;
          v37 = v50;
          v38 = v53;
          (*v45)(v50, v30 + v29, v53);
          v39 = v51;
          v36(v51, v32, v38);
          sub_1E6530EF4(&qword_1ED07A728, MEMORY[0x1E69CC278]);
          LOBYTE(v36) = sub_1E65E5B78();
          v40 = *v42;
          (*v42)(v39, v38);
          v40(v37, v38);
          if (v36)
          {
            break;
          }

          v31 = v52;
          if (v34 < v30 || v52 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v48;
            a1 = v43;
          }

          else
          {
            v32 = v48;
            a1 = v43;
            if (v34 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v49 = v35;
          v30 = v35;
          v33 = v35 > v44;
          v29 = v46;
          a2 = v47;
          if (!v33)
          {
            v28 = v49;
            goto LABEL_58;
          }
        }

        v31 = v52;
        if (v34 < v47 || v52 >= v47)
        {
          a2 = v48;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v43;
        }

        else
        {
          a2 = v48;
          a1 = v43;
          if (v34 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v28 = v49;
        v29 = v46;
      }

      while (v30 > v44);
    }

LABEL_58:
    v56 = a2;
LABEL_59:
    v54 = v28;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v49 = a4 + v18;
    v54 = a4 + v18;
    if (v18 >= 1 && a2 < v52)
    {
      v47 = *(v8 + 16);
      v48 = v8 + 16;
      v45 = v15;
      v46 = (v8 + 8);
      do
      {
        v21 = v50;
        v22 = v53;
        v23 = v47;
        v47(v50, a2, v53);
        v24 = v51;
        v23(v51, a4, v22);
        sub_1E6530EF4(&qword_1ED07A728, MEMORY[0x1E69CC278]);
        LOBYTE(v23) = sub_1E65E5B78();
        v25 = *v46;
        (*v46)(v24, v22);
        v25(v21, v22);
        if (v23)
        {
          v26 = v45;
          if (a1 < a2 || a1 >= v45 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v26;
        }

        else
        {
          v26 = v45;
          v27 = v45 + a4;
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v55 = v27;
          a4 += v26;
        }

        a1 += v26;
        v56 = a1;
      }

      while (a4 < v49 && a2 < v52);
    }
  }

  sub_1E653087C(&v56, &v55, &v54, MEMORY[0x1E69CC278]);
  return 1;
}

uint64_t sub_1E653087C(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

size_t sub_1E65309DC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1E6530C50(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_1E65D96F8();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x1EEE9AC00](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1E6530EF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E6530F4C(uint64_t a1)
{
  v2 = type metadata accessor for SwappableWorkout();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6530FA8(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD20, &unk_1E6609820) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 40);
  v9 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_1E652EF3C(a1, v4, v5, v6, v8, v7, v9);
}

uint64_t sub_1E6531034()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

uint64_t sub_1E6531064(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD28, &qword_1E6609830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E65310D4(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD38, &qword_1E6609848) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(v1 + 40);
  v11 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_1E652ECE0(v8, v9, v4, v5, v6, v10, v7, v11);
}

uint64_t sub_1E65311F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1E65D76D8() & 1) == 0 || (MEMORY[0x1E69410E0](a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_1E65E6C18();
}

unint64_t sub_1E6531294()
{
  result = qword_1ED07AD50;
  if (!qword_1ED07AD50)
  {
    type metadata accessor for SwappableWorkout();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED07AD50);
  }

  return result;
}

uint64_t type metadata accessor for SwappableWorkout()
{
  result = qword_1ED07AD58;
  if (!qword_1ED07AD58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E6531360()
{
  result = sub_1E65D76F8();
  if (v1 <= 0x3F)
  {
    result = sub_1E65D96F8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t WorkoutPlanService.queryActiveWorkoutPlan.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WorkoutPlanService.queryAllWorkoutPlanTemplateReferences.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t WorkoutPlanService.queryWorkoutPlanTemplateMetadata.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t WorkoutPlanService.queryAllWorkoutPlanTemplateMetadata.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t WorkoutPlanService.queryAllWorkoutPlanTemplatesCount.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t WorkoutPlanService.queryNextIncompleteWorkoutReference.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t WorkoutPlanService.queryIncompleteMatchingWorkoutReferences.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t WorkoutPlanService.queryFutureDuplicatedWorkoutDate.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t WorkoutPlanService.queryPendingWorkoutPlanSummary.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t WorkoutPlanService.fetchSwappablePlannedWorkoutDetail.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t WorkoutPlanService.requestWorkoutPlanSwap.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return v1;
}

uint64_t WorkoutPlanService.makeActiveWorkoutPlanUpdatedStream.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return v1;
}

uint64_t WorkoutPlanService.makeWorkoutPlansUpdatedStream.getter()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return v1;
}

uint64_t WorkoutPlanService.endWorkoutPlan.getter()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return v1;
}

uint64_t WorkoutPlanService.repeatWorkoutPlan.getter()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return v1;
}

uint64_t WorkoutPlanService.evaluateActiveWorkoutPlanCompletion.getter()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  return v1;
}

uint64_t WorkoutPlanService.validateSchedule.getter()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  return v1;
}

uint64_t WorkoutPlanService.makeWorkoutPlanSchedule.getter()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  return v1;
}

uint64_t WorkoutPlanService.createWorkoutPlan.getter()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  return v1;
}

uint64_t WorkoutPlanService.replaceWorkoutPlan.getter()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);

  return v1;
}

uint64_t sub_1E65317B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 320))
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

uint64_t sub_1E65317FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E6531890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v6 = sub_1E65D9A28();
  v5[24] = v6;
  v7 = *(v6 - 8);
  v5[25] = v7;
  v8 = *(v7 + 64) + 15;
  v5[26] = swift_task_alloc();
  v9 = sub_1E65DA3F8();
  v5[27] = v9;
  v10 = *(v9 - 8);
  v5[28] = v10;
  v11 = *(v10 + 64) + 15;
  v5[29] = swift_task_alloc();
  v12 = type metadata accessor for SwappableWorkout();
  v5[30] = v12;
  v13 = *(v12 - 8);
  v5[31] = v13;
  v14 = *(v13 + 64) + 15;
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v15 = sub_1E65D78F8();
  v5[38] = v15;
  v16 = *(v15 - 8);
  v5[39] = v16;
  v17 = *(v16 + 64) + 15;
  v5[40] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD68, &qword_1E66099F0) - 8) + 64) + 15;
  v5[41] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD40, &qword_1E6609850);
  v5[42] = v19;
  v20 = *(v19 - 8);
  v5[43] = v20;
  v21 = *(v20 + 64) + 15;
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v22 = sub_1E65D9B08();
  v5[46] = v22;
  v23 = *(v22 - 8);
  v5[47] = v23;
  v24 = *(v23 + 64) + 15;
  v5[48] = swift_task_alloc();
  v25 = sub_1E65D76A8();
  v5[49] = v25;
  v26 = *(v25 - 8);
  v5[50] = v26;
  v27 = *(v26 + 64) + 15;
  v5[51] = swift_task_alloc();
  v28 = sub_1E65D7EB8();
  v5[52] = v28;
  v29 = *(v28 - 8);
  v5[53] = v29;
  v30 = *(v29 + 64) + 15;
  v5[54] = swift_task_alloc();
  v31 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1E6531C9C, v4, 0);
}

uint64_t sub_1E6531C9C()
{
  v1 = v0;
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 184);
  v3 = v2[24];
  v4 = v2[25];
  __swift_project_boxed_opaque_existential_1(v2 + 21, v3);
  v5 = *(MEMORY[0x1E69CAA10] + 4);
  v6 = swift_task_alloc();
  *(v1 + 440) = v6;
  *v6 = v1;
  v6[1] = sub_1E6531D90;
  v7 = *(v1 + 432);
  v8 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE33FA8](v7, v3, v4);
}

uint64_t sub_1E6531D90()
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 440);
  v4 = *v1;
  *(*v1 + 448) = v0;

  v5 = *(v2 + 184);
  if (v0)
  {
    v6 = sub_1E6533ED4;
  }

  else
  {
    v6 = sub_1E6531EE8;
  }

  v7 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E6531EE8()
{
  v39 = *MEMORY[0x1E69E9840];
  v1 = v0[54];
  v3 = v0[50];
  v2 = v0[51];
  v4 = v0[49];
  v6 = v0[20];
  v5 = v0[21];
  sub_1E65D7688();
  v7 = sub_1E65D7DB8();
  (*(v3 + 8))(v2, v4);
  v8 = *(v7 + 16);

  if (v8)
  {
    v10 = v0[53];
    v9 = v0[54];
    v11 = v0[52];
    v12 = sub_1E65D8B88();
    sub_1E6538198(&qword_1ED078840, MEMORY[0x1E69CB928]);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x1E69CB8E8], v12);
    swift_willThrow();
    (*(v10 + 8))(v9, v11);
    v14 = v0[54];
    v15 = v0[51];
    v16 = v0[48];
    v18 = v0[44];
    v17 = v0[45];
    v20 = v0[40];
    v19 = v0[41];
    v22 = v0[36];
    v21 = v0[37];
    v23 = v0[35];
    v34 = v0[34];
    v35 = v0[33];
    v36 = v0[32];
    v37 = v0[29];
    v38 = v0[26];

    v24 = v0[1];
    v25 = *MEMORY[0x1E69E9840];

    return v24();
  }

  else
  {
    v27 = v0[45];
    v28 = v0[23];
    v30 = v0[20];
    v29 = v0[21];
    v31 = v28[20];
    __swift_project_boxed_opaque_existential_1(v28 + 16, v28[19]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B20, &qword_1E6609840);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E65EA670;
    *(inited + 32) = v30;
    *(inited + 40) = v29;

    sub_1E5F9B6E4(inited);
    swift_setDeallocating();
    sub_1E6065BF0(inited + 32);
    sub_1E65DD938();

    v33 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEE6DFA0](sub_1E6532248, 0, 0);
  }
}

uint64_t sub_1E6532248()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = v0[45];
  v2 = swift_task_alloc();
  v0[57] = v2;
  *(v2 + 16) = "FitnessWorkoutPlanService/SwappableWorkoutFetching.swift";
  *(v2 + 24) = 56;
  *(v2 + 32) = 2;
  *(v2 + 40) = 29;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[58] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD70, &unk_1E660EF30);
  v0[59] = v5;
  *v4 = v0;
  v4[1] = sub_1E653239C;
  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DE38](v0 + 17, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E6537E54, v2, v5);
}

uint64_t sub_1E653239C()
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *v1;
  v2[60] = v0;

  v5 = v2[57];
  if (v0)
  {

    v6 = *MEMORY[0x1E69E9840];
    v7 = sub_1E6532C30;
    v8 = 0;
  }

  else
  {
    v9 = v2[45];
    v10 = v2[42];
    v11 = v2[43];
    v12 = v2[23];
    v2[61] = v2[17];

    v13 = *(v11 + 8);
    v2[62] = v13;
    v2[63] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v9, v10);
    v14 = *MEMORY[0x1E69E9840];
    v7 = sub_1E6532564;
    v8 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1E6532564()
{
  v78 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);
  v3 = *(v0 + 328);
  sub_1E65341B4(*(v0 + 488), MEMORY[0x1E69CC6C0], MEMORY[0x1E69CC6C0], v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 424);
    v4 = *(v0 + 432);
    v6 = *(v0 + 416);
    sub_1E5DFE50C(*(v0 + 328), &qword_1ED07AD68, &qword_1E66099F0);
    v7 = sub_1E65D7EC8();
    sub_1E6538198(&qword_1ED078850, MEMORY[0x1E69CB148]);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x1E69CB138], v7);
    swift_willThrow();
    (*(v5 + 8))(v4, v6);
LABEL_27:
    v56 = *(v0 + 432);
    v57 = *(v0 + 408);
    v58 = *(v0 + 384);
    v60 = *(v0 + 352);
    v59 = *(v0 + 360);
    v62 = *(v0 + 320);
    v61 = *(v0 + 328);
    v64 = *(v0 + 288);
    v63 = *(v0 + 296);
    v65 = *(v0 + 280);
    v69 = *(v0 + 272);
    v70 = *(v0 + 264);
    v71 = *(v0 + 256);
    v74 = *(v0 + 232);
    v76 = *(v0 + 208);

    v66 = *(v0 + 8);
    v67 = *MEMORY[0x1E69E9840];

    return v66();
  }

  v9 = *(v0 + 480);
  v10 = *(v0 + 432);
  v11 = *(v0 + 320);
  v12 = *(v0 + 304);
  v13 = *(v0 + 312);
  v14 = *(v0 + 176);
  (*(*(v0 + 376) + 32))(*(v0 + 384), *(v0 + 328), *(v0 + 368));
  (*(v13 + 104))(v11, *MEMORY[0x1E6969A48], v12);
  v15 = sub_1E65D7DF8();
  (*(v13 + 8))(v11, v12);
  v16 = swift_task_alloc();
  *(v16 + 16) = v10;
  v17 = sub_1E6534288(sub_1E6537E58, v16, v15);

  v18 = MEMORY[0x1E69E7CC0];
  v75 = *(v17 + 16);
  if (v75)
  {
    v19 = 0;
    v20 = *(v0 + 248);
    v72 = *(v0 + 240);
    do
    {
      if (v19 >= *(v17 + 16))
      {
        __break(1u);
      }

      v21 = *(v0 + 296);
      v23 = *(v0 + 160);
      v22 = *(v0 + 168);
      v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v25 = *(v20 + 72);
      sub_1E6537E78(v17 + v24 + v25 * v19, v21);
      v26 = (v21 + *(v72 + 24));
      v27 = *v26 == v23 && v26[1] == v22;
      if (v27 || (v28 = *(v0 + 160), v29 = *(v0 + 168), (sub_1E65E6C18() & 1) != 0))
      {
        sub_1E6530F4C(*(v0 + 296));
      }

      else
      {
        sub_1E6537EDC(*(v0 + 296), *(v0 + 288));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1E6537D30(0, *(v18 + 16) + 1, 1);
        }

        v31 = *(v18 + 16);
        v30 = *(v18 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_1E6537D30(v30 > 1, v31 + 1, 1);
        }

        v32 = *(v0 + 288);
        *(v18 + 16) = v31 + 1;
        sub_1E6537EDC(v32, v18 + v24 + v31 * v25);
      }

      ++v19;
    }

    while (v75 != v19);
  }

  *(v0 + 512) = v18;

  v33 = *(v18 + 16);
  if (!v33)
  {
    v48 = *(v0 + 424);
    v49 = *(v0 + 432);
    v50 = *(v0 + 416);
    v52 = *(v0 + 376);
    v51 = *(v0 + 384);
    v53 = *(v0 + 368);

    v54 = sub_1E65D8B88();
    sub_1E6538198(&qword_1ED078840, MEMORY[0x1E69CB928]);
    swift_allocError();
    (*(*(v54 - 8) + 104))(v55, *MEMORY[0x1E69CB8E8], v54);
    swift_willThrow();
    (*(v52 + 8))(v51, v53);
    (*(v48 + 8))(v49, v50);
    goto LABEL_27;
  }

  v35 = *(v0 + 240);
  v34 = *(v0 + 248);
  sub_1E5DF650C(*(v0 + 184) + 128, v0 + 64);
  v73 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
  v77 = MEMORY[0x1E69E7CC0];
  sub_1E601C0B8(0, v33, 0);
  v36 = *(v34 + 80);
  *(v0 + 592) = v36;
  v37 = v18 + ((v36 + 32) & ~v36);
  v38 = *(v34 + 72);
  *(v0 + 520) = v38;
  do
  {
    v39 = *(v0 + 280);
    sub_1E6537E78(v37, v39);
    v40 = (v39 + *(v35 + 24));
    v41 = *v40;
    v42 = v40[1];

    sub_1E6530F4C(v39);
    v44 = *(v77 + 16);
    v43 = *(v77 + 24);
    if (v44 >= v43 >> 1)
    {
      sub_1E601C0B8((v43 > 1), v44 + 1, 1);
    }

    *(v77 + 16) = v44 + 1;
    v45 = v77 + 16 * v44;
    *(v45 + 32) = v41;
    *(v45 + 40) = v42;
    v37 += v38;
    --v33;
  }

  while (v33);
  v46 = *(v0 + 352);
  sub_1E600AA08(v77);

  sub_1E65DD938();

  v47 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1E6532E44, 0, 0);
}

uint64_t sub_1E6532C30()
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = v0[23];
  (*(v0[43] + 8))(v0[45], v0[42]);
  v2 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1E6532CD8, v1, 0);
}

uint64_t sub_1E6532CD8()
{
  v20 = *MEMORY[0x1E69E9840];
  (*(v0[53] + 8))(v0[54], v0[52]);
  v1 = v0[54];
  v2 = v0[51];
  v3 = v0[48];
  v5 = v0[44];
  v4 = v0[45];
  v7 = v0[40];
  v6 = v0[41];
  v9 = v0[36];
  v8 = v0[37];
  v10 = v0[35];
  v14 = v0[60];
  v15 = v0[34];
  v16 = v0[33];
  v17 = v0[32];
  v18 = v0[29];
  v19 = v0[26];

  v11 = v0[1];
  v12 = *MEMORY[0x1E69E9840];

  return v11();
}

uint64_t sub_1E6532E44()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = v0[44];
  v2 = swift_task_alloc();
  v0[66] = v2;
  *(v2 + 16) = "FitnessWorkoutPlanService/SwappableWorkoutFetching.swift";
  *(v2 + 24) = 56;
  *(v2 + 32) = 2;
  *(v2 + 40) = 52;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[67] = v4;
  *v4 = v0;
  v4[1] = sub_1E6532F80;
  v5 = v0[59];
  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DE38](v0 + 18, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E65381E0, v2, v5);
}

uint64_t sub_1E6532F80()
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = (*v1)[67];
  v18 = *v1;
  (*v1)[68] = v0;

  if (v0)
  {
    v4 = v2[66];
    v5 = v2[64];

    v6 = *MEMORY[0x1E69E9840];
    v7 = sub_1E653340C;
    v8 = 0;
  }

  else
  {
    v9 = v2[66];
    v11 = v2[62];
    v10 = v2[63];
    v12 = v2[44];
    v13 = v2[42];
    v14 = v2[23];
    v2[69] = v2[18];

    v11(v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v2 + 8);
    v15 = *MEMORY[0x1E69E9840];
    v7 = sub_1E6533140;
    v8 = v14;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1E6533140()
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[48];
  v4 = v0[23];
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  v6 = sub_1E65367F4(sub_1E6537F50, v5, v1);

  v0[70] = sub_1E6534710(v6);

  v7 = v4[24];
  v8 = v4[25];
  __swift_project_boxed_opaque_existential_1(v4 + 21, v7);
  v9 = *(MEMORY[0x1E69CAA18] + 4);
  v10 = swift_task_alloc();
  v0[71] = v10;
  *v10 = v0;
  v10[1] = sub_1E6533288;
  v11 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE33FB0](v7, v8);
}

uint64_t sub_1E6533288(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *v2;
  v4 = *(*v2 + 568);
  v14 = *v2;
  v3[72] = a1;
  v3[73] = v1;

  if (v1)
  {
    v5 = v3[70];
    v6 = v3[64];
    v7 = v3[23];

    v8 = *MEMORY[0x1E69E9840];
    v9 = sub_1E6534028;
    v10 = v7;
  }

  else
  {
    v10 = v3[23];
    v11 = *MEMORY[0x1E69E9840];
    v9 = sub_1E6533648;
  }

  return MEMORY[0x1EEE6DFA0](v9, v10, 0);
}

uint64_t sub_1E653340C()
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 504);
  v2 = *(v0 + 184);
  (*(v0 + 496))(*(v0 + 352), *(v0 + 336));
  v3 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1E65334AC, v2, 0);
}

uint64_t sub_1E65334AC()
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[52];
  v5 = v0[47];
  v4 = v0[48];
  v6 = v0[46];
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[54];
  v8 = v0[51];
  v9 = v0[48];
  v11 = v0[44];
  v10 = v0[45];
  v13 = v0[40];
  v12 = v0[41];
  v15 = v0[36];
  v14 = v0[37];
  v16 = v0[35];
  v20 = v0[68];
  v21 = v0[34];
  v22 = v0[33];
  v23 = v0[32];
  v24 = v0[29];
  v25 = v0[26];

  v17 = v0[1];
  v18 = *MEMORY[0x1E69E9840];

  return v17();
}

uint64_t sub_1E6533648(uint64_t a1)
{
  v105 = v1;
  v104[2] = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 576);
  v3 = *(v2 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  v5 = v2;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  while (1)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v87 = *(v1 + 576);

    v5 = *(v1 + 576);
LABEL_2:
    v93 = &v92;
    v94 = v4;
    v6 = *(v1 + 224);
    v7 = *(v1 + 200);
    MEMORY[0x1EEE9AC00](a1);
    v95 = &v92 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v95, v8);
    v9 = 0;
    v100 = v6;
    v101 = v5;
    v12 = *(v5 + 56);
    v11 = v5 + 56;
    v10 = v12;
    v13 = 1 << *(v2 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & v10;
    v16 = (v13 + 63) >> 6;
    v98 = (v7 + 8);
    v99 = v6 + 16;
    v96 = 0;
    v97 = v6 + 8;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v103 = (v15 - 1) & v15;
LABEL_12:
      v20 = *(v1 + 232);
      v22 = *(v1 + 208);
      v21 = *(v1 + 216);
      v102 = *(v1 + 192);
      v4 = v100;
      v23 = v17 | (v9 << 6);
      (*(v100 + 16))(v20, *(v101 + 48) + *(v100 + 72) * v23, v21);
      sub_1E65DA3E8();
      v2 = sub_1E65D9A18();
      (*v98)(v22, v102);
      (*(v4 + 8))(v20, v21);
      v15 = v103;
      if (v2)
      {
        *&v95[(v23 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v23;
        if (__OFADD__(v96++, 1))
        {
          __break(1u);
LABEL_16:
          v25 = sub_1E6536EC4(v95, v94, v96, *(v1 + 576));
          v26 = *(v1 + 584);
          goto LABEL_17;
        }
      }
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        goto LABEL_16;
      }

      v19 = *(v11 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v103 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
  }

  v88 = *(v1 + 584);
  v89 = *(v1 + 576);
  v90 = swift_slowAlloc();
  v26 = v88;
  v25 = sub_1E6536E1C(v90, v4, v89, sub_1E6535018, 0, MEMORY[0x1E69CCD78], sub_1E6536EC4);
  v91 = *(v1 + 576);

  result = MEMORY[0x1E694F1C0](v90, -1, -1);
  if (v26)
  {
    goto LABEL_32;
  }

LABEL_17:
  v4 = *(v1 + 512);
  v103 = sub_1E6534A18(v25);

  v27 = *(v4 + 16);
  if (v27)
  {
    v28 = 0;
    v102 = v1 + 120;
    v2 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v29 = *(v1 + 512);
      if (v28 >= *(v29 + 16))
      {
        goto LABEL_40;
      }

      v30 = *(v1 + 560);
      v31 = *(v1 + 272);
      v32 = *(v1 + 240);
      sub_1E6537E78(v29 + ((*(v1 + 592) + 32) & ~*(v1 + 592)) + *(v1 + 520) * v28, v31);
      v33 = (v31 + *(v32 + 24));
      v34 = *v33;
      v4 = v33[1];
      *(v1 + 104) = *v33;
      *(v1 + 112) = v4;
      v35 = swift_task_alloc();
      *(v35 + 16) = v1 + 104;
      LOBYTE(v30) = sub_1E5F95F4C(sub_1E6537F70, v35, v30);

      if (v30 & 1) == 0 || (*(v1 + 120) = v34, *(v1 + 128) = v4, v36 = swift_task_alloc(), v37 = v103, *(v36 + 16) = v102, v38 = sub_1E5F95F4C(sub_1E65381E4, v36, v37), , (v38))
      {
        sub_1E6530F4C(*(v1 + 272));
      }

      else
      {
        sub_1E6537EDC(*(v1 + 272), *(v1 + 264));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v104[0] = v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E6537D30(0, *(v2 + 16) + 1, 1);
          v2 = v104[0];
        }

        v4 = *(v2 + 16);
        v40 = *(v2 + 24);
        if (v4 >= v40 >> 1)
        {
          sub_1E6537D30(v40 > 1, v4 + 1, 1);
          v2 = v104[0];
        }

        v41 = *(v1 + 520);
        v42 = *(v1 + 592);
        v43 = *(v1 + 264);
        *(v2 + 16) = v4 + 1;
        sub_1E6537EDC(v43, v2 + ((v42 + 32) & ~v42) + v41 * v4);
      }

      if (v27 == ++v28)
      {
        goto LABEL_30;
      }
    }
  }

  v2 = MEMORY[0x1E69E7CC0];
LABEL_30:
  v44 = *(v1 + 560);
  v45 = *(v1 + 512);

  v104[0] = v2;

  sub_1E65353DC(v104);
  if (v26)
  {

LABEL_32:
    v47 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (v104[0][2])
  {
    v48 = *(v1 + 592);
    v49 = *(v1 + 424);
    v50 = *(v1 + 432);
    v51 = *(v1 + 416);
    v52 = *(v1 + 376);
    v53 = *(v1 + 384);
    v54 = *(v1 + 360);
    v55 = *(v1 + 368);
    v92 = *(v1 + 408);
    v93 = v54;
    v56 = *(v1 + 320);
    v57 = *(v1 + 328);
    v94 = *(v1 + 352);
    v95 = v57;
    v96 = v56;
    v58 = *(v1 + 288);
    v97 = *(v1 + 296);
    v98 = v58;
    v59 = *(v1 + 272);
    v99 = *(v1 + 280);
    v100 = v59;
    v60 = *(v1 + 256);
    v61 = *(v1 + 232);
    v101 = *(v1 + 264);
    v102 = v61;
    v103 = *(v1 + 208);
    v62 = *(v1 + 152);
    sub_1E6537E78(v104[0] + ((v48 + 32) & ~v48), v60);

    sub_1E6537EDC(v60, v62);
    (*(v52 + 8))(v53, v55);
    (*(v49 + 8))(v50, v51);
  }

  else
  {
    v66 = *(v1 + 424);
    v65 = *(v1 + 432);
    v67 = *(v1 + 416);
    v69 = *(v1 + 376);
    v68 = *(v1 + 384);
    v70 = *(v1 + 368);

    v71 = sub_1E65D8B88();
    sub_1E6538198(&qword_1ED078840, MEMORY[0x1E69CB928]);
    v72 = swift_allocError();
    (*(*(v71 - 8) + 104))(v73, *MEMORY[0x1E69CB8E8], v71);
    v98 = v72;
    swift_willThrow();
    (*(v69 + 8))(v68, v70);
    (*(v66 + 8))(v65, v67);
    v74 = *(v1 + 432);
    v75 = *(v1 + 408);
    v76 = *(v1 + 384);
    v78 = *(v1 + 352);
    v77 = *(v1 + 360);
    v80 = *(v1 + 320);
    v79 = *(v1 + 328);
    v82 = *(v1 + 288);
    v81 = *(v1 + 296);
    v83 = *(v1 + 280);
    v85 = *(v1 + 256);
    v84 = *(v1 + 264);
    v99 = *(v1 + 272);
    v100 = v84;
    v86 = *(v1 + 232);
    v101 = v85;
    v102 = v86;
    v103 = *(v1 + 208);
  }

  v63 = *(v1 + 8);
  v64 = *MEMORY[0x1E69E9840];

  return v63();
}

uint64_t sub_1E6533ED4()
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = v0[54];
  v2 = v0[51];
  v3 = v0[48];
  v5 = v0[44];
  v4 = v0[45];
  v7 = v0[40];
  v6 = v0[41];
  v9 = v0[36];
  v8 = v0[37];
  v10 = v0[35];
  v14 = v0[56];
  v15 = v0[34];
  v16 = v0[33];
  v17 = v0[32];
  v18 = v0[29];
  v19 = v0[26];

  v11 = v0[1];
  v12 = *MEMORY[0x1E69E9840];

  return v11();
}

uint64_t sub_1E6534028()
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[52];
  (*(v0[47] + 8))(v0[48], v0[46]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[54];
  v5 = v0[51];
  v6 = v0[48];
  v8 = v0[44];
  v7 = v0[45];
  v10 = v0[40];
  v9 = v0[41];
  v12 = v0[36];
  v11 = v0[37];
  v13 = v0[35];
  v17 = v0[73];
  v18 = v0[34];
  v19 = v0[33];
  v20 = v0[32];
  v21 = v0[29];
  v22 = v0[26];

  v14 = v0[1];
  v15 = *MEMORY[0x1E69E9840];

  return v14();
}

uint64_t sub_1E65341B4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = -1 << *(a1 + 32);
  v9 = sub_1E65E6748();
  v10 = 1;
  if (v9 != 1 << *(a1 + 32))
  {
    sub_1E6537D90(v9, *(a1 + 36), a1, a2, a4);
    v10 = 0;
  }

  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4, v10, 1, v11);
}

uint64_t sub_1E6534288(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v53 = a1;
  v54 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD88, &qword_1E6609A00);
  v6 = *(*(v52 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v52);
  v51 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v45 - v9;
  v10 = type metadata accessor for SwappableWorkout();
  v49 = *(v10 - 8);
  v11 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (!v14)
  {
    return v15;
  }

  v61 = MEMORY[0x1E69E7CC0];
  sub_1E6537D30(0, v14, 0);
  v15 = v61;
  v16 = a3 + 64;
  v17 = -1 << *(a3 + 32);
  v18 = sub_1E65E6748();
  v19 = 0;
  v20 = *(a3 + 36);
  v46 = a3 + 72;
  v47 = v14;
  v55 = a3;
  v48 = v20;
  while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(a3 + 32))
  {
    if ((*(v16 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
    {
      goto LABEL_24;
    }

    if (v20 != *(a3 + 36))
    {
      goto LABEL_25;
    }

    v57 = 1 << v18;
    v58 = v18 >> 6;
    v56 = v19;
    v23 = v16;
    v60 = v15;
    v24 = *(a3 + 48);
    v25 = sub_1E65D96F8();
    v26 = *(v25 - 8);
    v59 = v4;
    v27 = v26;
    v28 = v13;
    v29 = v50;
    (*(v26 + 16))(v50, v24 + *(v26 + 72) * v18, v25);
    v30 = (*(a3 + 56) + 16 * v18);
    v32 = *v30;
    v31 = v30[1];
    v14 = v51;
    v33 = v29;
    v13 = v28;
    (*(v27 + 32))(v51, v33, v25);
    v34 = (v14 + *(v52 + 48));
    *v34 = v32;
    v34[1] = v31;

    v35 = v59;
    v53(v14);
    if (v35)
    {
      goto LABEL_29;
    }

    v4 = 0;
    sub_1E5DFE50C(v14, &qword_1ED07AD88, &qword_1E6609A00);
    v15 = v60;
    v61 = v60;
    v14 = *(v60 + 16);
    v36 = *(v60 + 24);
    v16 = v23;
    if (v14 >= v36 >> 1)
    {
      sub_1E6537D30(v36 > 1, v14 + 1, 1);
      v15 = v61;
    }

    *(v15 + 16) = v14 + 1;
    sub_1E6537EDC(v13, v15 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v14);
    a3 = v55;
    v21 = 1 << *(v55 + 32);
    LODWORD(v20) = v48;
    if (v18 >= v21)
    {
      goto LABEL_26;
    }

    v37 = *(v16 + 8 * v58);
    if ((v37 & v57) == 0)
    {
      goto LABEL_27;
    }

    if (v48 != *(v55 + 36))
    {
      goto LABEL_28;
    }

    v38 = v37 & (-2 << (v18 & 0x3F));
    if (v38)
    {
      v21 = __clz(__rbit64(v38)) | v18 & 0x7FFFFFFFFFFFFFC0;
      v22 = v56;
    }

    else
    {
      v39 = v58 << 6;
      v40 = v58 + 1;
      v41 = (v46 + 8 * v58);
      while (v40 < (v21 + 63) >> 6)
      {
        v43 = *v41++;
        v42 = v43;
        v39 += 64;
        ++v40;
        if (v43)
        {
          sub_1E5F87098(v18, v48, 0);
          v21 = __clz(__rbit64(v42)) + v39;
          goto LABEL_21;
        }
      }

      sub_1E5F87098(v18, v48, 0);
LABEL_21:
      a3 = v55;
      v22 = v56;
    }

    v19 = v22 + 1;
    v18 = v21;
    v14 = v47;
    if (v19 == v47)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  sub_1E5DFE50C(v14, &qword_1ED07AD88, &qword_1E6609A00);

  __break(1u);
  return result;
}

uint64_t sub_1E6534710(uint64_t a1)
{
  v37 = sub_1E65D9B08();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x1E69E7CC0];
    sub_1E601C0B8(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_1E65E6748();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = sub_1E65D9AD8();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_1E601C0B8((v19 > 1), v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_1E5F87098(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
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
  }

  return result;
}

uint64_t sub_1E6534A18(uint64_t a1)
{
  v51 = sub_1E65D9A28();
  v3 = *(v51 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1E65DA3F8();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v40 = v1;
  v56 = MEMORY[0x1E69E7CC0];
  sub_1E601C0B8(0, v9, 0);
  v10 = v56;
  v11 = a1 + 56;
  v12 = -1 << *(a1 + 32);
  result = sub_1E65E6748();
  v14 = result;
  v15 = 0;
  v45 = (v3 + 8);
  v46 = v6 + 16;
  v47 = v6;
  v43 = a1 + 56;
  v44 = v6 + 8;
  v41 = a1 + 64;
  v42 = v9;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    v18 = v14 >> 6;
    if ((*(v11 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_21;
    }

    v19 = *(a1 + 36);
    v52 = v15;
    v53 = v19;
    v20 = v47;
    v21 = *(a1 + 48) + *(v47 + 72) * v14;
    v22 = *(v47 + 16);
    v55 = v10;
    v24 = v48;
    v23 = v49;
    v22(v48, v21, v49);
    v25 = v50;
    sub_1E65DA3E8();
    v26 = sub_1E65D9A08();
    v54 = v27;
    (*v45)(v25, v51);
    v28 = v24;
    v10 = v55;
    result = (*(v20 + 8))(v28, v23);
    v56 = v10;
    v30 = *(v10 + 16);
    v29 = *(v10 + 24);
    if (v30 >= v29 >> 1)
    {
      result = sub_1E601C0B8((v29 > 1), v30 + 1, 1);
      v10 = v56;
    }

    *(v10 + 16) = v30 + 1;
    v31 = v10 + 16 * v30;
    v32 = v54;
    *(v31 + 32) = v26;
    *(v31 + 40) = v32;
    v16 = 1 << *(a1 + 32);
    if (v14 >= v16)
    {
      goto LABEL_22;
    }

    v11 = v43;
    v33 = *(v43 + 8 * v18);
    if ((v33 & (1 << v14)) == 0)
    {
      goto LABEL_23;
    }

    if (v53 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v34 = v33 & (-2 << (v14 & 0x3F));
    if (v34)
    {
      v16 = __clz(__rbit64(v34)) | v14 & 0x7FFFFFFFFFFFFFC0;
      v17 = v42;
    }

    else
    {
      v35 = v18 << 6;
      v36 = v18 + 1;
      v17 = v42;
      v37 = (v41 + 8 * v18);
      while (v36 < (v16 + 63) >> 6)
      {
        v39 = *v37++;
        v38 = v39;
        v35 += 64;
        ++v36;
        if (v39)
        {
          result = sub_1E5F87098(v14, v53, 0);
          v16 = __clz(__rbit64(v38)) + v35;
          goto LABEL_4;
        }
      }

      result = sub_1E5F87098(v14, v53, 0);
    }

LABEL_4:
    v15 = v52 + 1;
    v14 = v16;
    if (v52 + 1 == v17)
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

uint64_t sub_1E6534DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD88, &qword_1E6609A00);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  sub_1E65D7DC8();
  sub_1E6537F8C(a1, v11);
  v12 = *&v11[*(v5 + 56) + 8];

  sub_1E6537F8C(a1, v9);
  v13 = &v9[*(v5 + 56)];
  v14 = *v13;
  v15 = *(v13 + 1);
  v16 = sub_1E65D9EE8();
  v18 = v17;

  v19 = type metadata accessor for SwappableWorkout();
  v20 = *(v19 + 20);
  v21 = sub_1E65D96F8();
  v22 = *(v21 - 8);
  (*(v22 + 32))(a2 + v20, v11, v21);
  v23 = (a2 + *(v19 + 24));
  *v23 = v16;
  v23[1] = v18;
  return (*(v22 + 8))(v9, v21);
}

uint64_t sub_1E6534F7C()
{
  v0 = sub_1E65D9AE8();
  v2 = v1;
  if (v0 == sub_1E65D9AE8() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E65E6C18();
  }

  return v4 & 1;
}

uint64_t sub_1E6535018()
{
  v0 = sub_1E65D9A28();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DA3E8();
  v5 = sub_1E65D9A18();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_1E65350FC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1E65DA598();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1E6538198(&qword_1ED07AD90, MEMORY[0x1E69CCEA0]);
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
      sub_1E6538198(&qword_1ED07AD98, MEMORY[0x1E69CCEA0]);
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
    sub_1E6537514(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1E65353DC(void **a1)
{
  v2 = *(type metadata accessor for SwappableWorkout() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1E6530BB8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1E6535484(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1E6535484(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E65E6BA8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for SwappableWorkout();
        v6 = sub_1E65E5F98();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for SwappableWorkout() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1E65357B0(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1E65355B0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E65355B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for SwappableWorkout();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v28 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v19 = &v28 - v18;
  v30 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v23 = -v21;
    v24 = a1 - a3;
    v35 = v20;
    v29 = v21;
    v25 = v20 + v21 * a3;
LABEL_5:
    v33 = v22;
    v34 = a3;
    v31 = v25;
    v32 = v24;
    while (1)
    {
      sub_1E6537E78(v25, v19);
      sub_1E6537E78(v22, v15);
      v26 = MEMORY[0x1E69410D0](&v19[*(v8 + 20)], &v15[*(v8 + 20)]);
      sub_1E6530F4C(v15);
      result = sub_1E6530F4C(v19);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v22 = v33 + v29;
        v24 = v32 - 1;
        v25 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      sub_1E6537EDC(v25, v12);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1E6537EDC(v12, v22);
      v22 += v23;
      v25 += v23;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E65357B0(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v103 = a1;
  v9 = type metadata accessor for SwappableWorkout();
  v111 = *(v9 - 8);
  v10 = *(v111 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v105 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v114 = &v100 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v100 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v20 = &v100 - v19;
  v113 = a3;
  v21 = a3[1];
  if (v21 < 1)
  {
    v23 = MEMORY[0x1E69E7CC0];
LABEL_97:
    v5 = *v103;
    if (!*v103)
    {
      goto LABEL_136;
    }

    a4 = v23;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_100:
      v116 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        while (*v113)
        {
          v96 = *(result + 16 * a4);
          v97 = result;
          v98 = *(result + 16 * (a4 - 1) + 40);
          sub_1E6536010(*v113 + *(v111 + 72) * v96, *v113 + *(v111 + 72) * *(result + 16 * (a4 - 1) + 32), *v113 + *(v111 + 72) * v98, v5);
          if (v6)
          {
          }

          if (v98 < v96)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v97 = sub_1E636AC44(v97);
          }

          if (a4 - 2 >= *(v97 + 2))
          {
            goto LABEL_124;
          }

          v99 = &v97[16 * a4];
          *v99 = v96;
          *(v99 + 1) = v98;
          v116 = v97;
          sub_1E636ABB8(a4 - 1);
          result = v116;
          a4 = *(v116 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_134;
      }
    }

LABEL_130:
    result = sub_1E636AC44(a4);
    goto LABEL_100;
  }

  v22 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  v102 = a4;
  v115 = v9;
  while (1)
  {
    v24 = v22;
    v25 = v22 + 1;
    v106 = v23;
    if (v25 >= v21)
    {
      v21 = v25;
    }

    else
    {
      v26 = *v113;
      v27 = v24;
      v28 = *(v111 + 72);
      v5 = *v113 + v28 * v25;
      sub_1E6537E78(v5, v20);
      sub_1E6537E78(v26 + v28 * v27, v17);
      LODWORD(v110) = MEMORY[0x1E69410D0](&v20[*(v9 + 20)], &v17[*(v9 + 20)]);
      sub_1E6530F4C(v17);
      result = sub_1E6530F4C(v20);
      v101 = v27;
      v29 = v27 + 2;
      v112 = v28;
      v30 = v26 + v28 * v29;
      v31 = v110;
      while (v21 != v29)
      {
        sub_1E6537E78(v30, v20);
        sub_1E6537E78(v5, v17);
        v32 = MEMORY[0x1E69410D0](&v20[*(v115 + 20)], &v17[*(v115 + 20)]) & 1;
        sub_1E6530F4C(v17);
        result = sub_1E6530F4C(v20);
        ++v29;
        v30 += v112;
        v5 += v112;
        if ((v31 & 1) != v32)
        {
          v33 = v31;
          v21 = v29 - 1;
          goto LABEL_11;
        }
      }

      v33 = v31;
LABEL_11:
      v24 = v101;
      a4 = v102;
      v9 = v115;
      if (v33)
      {
        if (v21 < v101)
        {
          goto LABEL_127;
        }

        if (v101 < v21)
        {
          v100 = v6;
          v34 = v112 * (v21 - 1);
          v35 = v21 * v112;
          v110 = v21;
          v36 = v21;
          v37 = v101;
          v38 = v101 * v112;
          do
          {
            if (v37 != --v36)
            {
              v39 = *v113;
              if (!*v113)
              {
                goto LABEL_133;
              }

              v5 = v39 + v38;
              sub_1E6537EDC(v39 + v38, v105);
              if (v38 < v34 || v5 >= v39 + v35)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v38 != v34)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1E6537EDC(v105, v39 + v34);
            }

            ++v37;
            v34 -= v112;
            v35 -= v112;
            v38 += v112;
          }

          while (v37 < v36);
          v6 = v100;
          v24 = v101;
          a4 = v102;
          v9 = v115;
          v21 = v110;
        }
      }
    }

    v40 = v113[1];
    if (v21 >= v40)
    {
      goto LABEL_34;
    }

    if (__OFSUB__(v21, v24))
    {
      goto LABEL_126;
    }

    if (v21 - v24 >= a4)
    {
LABEL_34:
      v42 = v21;
      if (v21 < v24)
      {
        goto LABEL_125;
      }

      goto LABEL_35;
    }

    if (__OFADD__(v24, a4))
    {
      goto LABEL_128;
    }

    if ((v24 + a4) >= v40)
    {
      v41 = v113[1];
    }

    else
    {
      v41 = v24 + a4;
    }

    if (v41 < v24)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v21 == v41)
    {
      goto LABEL_34;
    }

    v100 = v6;
    v101 = v24;
    a4 = *v113;
    v87 = *(v111 + 72);
    v88 = *v113 + v87 * (v21 - 1);
    v89 = v21;
    v90 = -v87;
    v91 = v24 - v89;
    v110 = v89;
    v104 = v87;
    v5 = a4 + v89 * v87;
    v107 = v41;
LABEL_87:
    v108 = v5;
    v109 = v91;
    v112 = v88;
    v92 = v88;
LABEL_88:
    sub_1E6537E78(v5, v20);
    sub_1E6537E78(v92, v17);
    v93 = MEMORY[0x1E69410D0](&v20[*(v9 + 20)], &v17[*(v9 + 20)]);
    sub_1E6530F4C(v17);
    result = sub_1E6530F4C(v20);
    if (v93)
    {
      break;
    }

    v9 = v115;
LABEL_86:
    v88 = v112 + v104;
    v91 = v109 - 1;
    v42 = v107;
    v5 = v108 + v104;
    if (++v110 != v107)
    {
      goto LABEL_87;
    }

    v6 = v100;
    v24 = v101;
    if (v107 < v101)
    {
      goto LABEL_125;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v23 = v106;
    }

    else
    {
      result = sub_1E636ADD0(0, *(v106 + 2) + 1, 1, v106);
      v23 = result;
    }

    a4 = *(v23 + 2);
    v43 = *(v23 + 3);
    v5 = a4 + 1;
    if (a4 >= v43 >> 1)
    {
      result = sub_1E636ADD0((v43 > 1), a4 + 1, 1, v23);
      v23 = result;
    }

    *(v23 + 2) = v5;
    v44 = &v23[16 * a4];
    *(v44 + 4) = v24;
    *(v44 + 5) = v42;
    v45 = *v103;
    if (!*v103)
    {
      goto LABEL_135;
    }

    v107 = v42;
    if (a4)
    {
      while (2)
      {
        v46 = v5 - 1;
        if (v5 >= 4)
        {
          v51 = &v23[16 * v5 + 32];
          v52 = *(v51 - 64);
          v53 = *(v51 - 56);
          v57 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          if (v57)
          {
            goto LABEL_112;
          }

          v56 = *(v51 - 48);
          v55 = *(v51 - 40);
          v57 = __OFSUB__(v55, v56);
          v49 = v55 - v56;
          v50 = v57;
          if (v57)
          {
            goto LABEL_113;
          }

          v58 = &v23[16 * v5];
          v60 = *v58;
          v59 = *(v58 + 1);
          v57 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v57)
          {
            goto LABEL_115;
          }

          v57 = __OFADD__(v49, v61);
          v62 = v49 + v61;
          if (v57)
          {
            goto LABEL_118;
          }

          if (v62 >= v54)
          {
            v80 = &v23[16 * v46 + 32];
            v82 = *v80;
            v81 = *(v80 + 1);
            v57 = __OFSUB__(v81, v82);
            v83 = v81 - v82;
            if (v57)
            {
              goto LABEL_122;
            }

            if (v49 < v83)
            {
              v46 = v5 - 2;
            }
          }

          else
          {
LABEL_54:
            if (v50)
            {
              goto LABEL_114;
            }

            v63 = &v23[16 * v5];
            v65 = *v63;
            v64 = *(v63 + 1);
            v66 = __OFSUB__(v64, v65);
            v67 = v64 - v65;
            v68 = v66;
            if (v66)
            {
              goto LABEL_117;
            }

            v69 = &v23[16 * v46 + 32];
            v71 = *v69;
            v70 = *(v69 + 1);
            v57 = __OFSUB__(v70, v71);
            v72 = v70 - v71;
            if (v57)
            {
              goto LABEL_120;
            }

            if (__OFADD__(v67, v72))
            {
              goto LABEL_121;
            }

            if (v67 + v72 < v49)
            {
              goto LABEL_68;
            }

            if (v49 < v72)
            {
              v46 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v47 = *(v23 + 4);
            v48 = *(v23 + 5);
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
            goto LABEL_54;
          }

          v73 = &v23[16 * v5];
          v75 = *v73;
          v74 = *(v73 + 1);
          v57 = __OFSUB__(v74, v75);
          v67 = v74 - v75;
          v68 = v57;
LABEL_68:
          if (v68)
          {
            goto LABEL_116;
          }

          v76 = &v23[16 * v46];
          v78 = *(v76 + 4);
          v77 = *(v76 + 5);
          v57 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v57)
          {
            goto LABEL_119;
          }

          if (v79 < v67)
          {
            break;
          }
        }

        a4 = v46 - 1;
        if (v46 - 1 >= v5)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*v113)
        {
          goto LABEL_132;
        }

        v84 = v23;
        v85 = *&v23[16 * a4 + 32];
        v5 = *&v23[16 * v46 + 40];
        sub_1E6536010(*v113 + *(v111 + 72) * v85, *v113 + *(v111 + 72) * *&v23[16 * v46 + 32], *v113 + *(v111 + 72) * v5, v45);
        if (v6)
        {
        }

        if (v5 < v85)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = sub_1E636AC44(v84);
        }

        if (a4 >= *(v84 + 2))
        {
          goto LABEL_111;
        }

        v86 = &v84[16 * a4];
        *(v86 + 4) = v85;
        *(v86 + 5) = v5;
        v116 = v84;
        result = sub_1E636ABB8(v46);
        v23 = v116;
        v5 = *(v116 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v21 = v113[1];
    v22 = v107;
    a4 = v102;
    v9 = v115;
    if (v107 >= v21)
    {
      goto LABEL_97;
    }
  }

  if (a4)
  {
    v94 = v114;
    sub_1E6537EDC(v5, v114);
    v9 = v115;
    swift_arrayInitWithTakeFrontToBack();
    sub_1E6537EDC(v94, v92);
    v92 += v90;
    v5 += v90;
    if (__CFADD__(v91++, 1))
    {
      goto LABEL_86;
    }

    goto LABEL_88;
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_1E6536010(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = a3;
  v44 = type metadata accessor for SwappableWorkout();
  v8 = *(*(v44 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v44);
  v43 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = v39 - v12;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v16 = v45 - a2;
  if (v45 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v17 = (a2 - a1) / v15;
  v48 = a1;
  v47 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v39[1] = v4;
    v24 = a4 + v19;
    if (v19 < 1)
    {
      v27 = a4 + v19;
    }

    else
    {
      v25 = -v15;
      v26 = a4 + v19;
      v27 = v24;
      v41 = v25;
      v42 = a4;
      do
      {
        v39[0] = v27;
        v28 = a2;
        v29 = a2 + v25;
        while (1)
        {
          v31 = v45;
          if (v28 <= a1)
          {
            v48 = v28;
            v46 = v39[0];
            goto LABEL_59;
          }

          v40 = v27;
          v45 += v25;
          v32 = v26 + v25;
          sub_1E6537E78(v32, v13);
          v33 = v29;
          v34 = v29;
          v35 = v13;
          v36 = v43;
          sub_1E6537E78(v34, v43);
          v37 = MEMORY[0x1E69410D0](v35 + *(v44 + 20), v36 + *(v44 + 20));
          v38 = v36;
          v13 = v35;
          sub_1E6530F4C(v38);
          sub_1E6530F4C(v35);
          if (v37)
          {
            break;
          }

          v27 = v32;
          if (v31 < v26 || v45 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v33;
          }

          else
          {
            v29 = v33;
            if (v31 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v32;
          v30 = v32 > v42;
          v25 = v41;
          if (!v30)
          {
            a2 = v28;
            goto LABEL_58;
          }
        }

        if (v31 < v28 || v45 >= v28)
        {
          a2 = v33;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v40;
          v25 = v41;
        }

        else
        {
          v27 = v40;
          v25 = v41;
          a2 = v33;
          if (v31 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v42);
    }

LABEL_58:
    v48 = a2;
    v46 = v27;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v20 = a4 + v18;
    v46 = a4 + v18;
    if (v18 >= 1 && a2 < v45)
    {
      do
      {
        sub_1E6537E78(a2, v13);
        v22 = v43;
        sub_1E6537E78(a4, v43);
        v23 = MEMORY[0x1E69410D0](&v13[*(v44 + 20)], v22 + *(v44 + 20));
        sub_1E6530F4C(v22);
        sub_1E6530F4C(v13);
        if (v23)
        {
          if (a1 < a2 || a1 >= a2 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v15;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v15;
          a4 += v15;
        }

        a1 += v15;
        v48 = a1;
      }

      while (a4 < v20 && a2 < v45);
    }
  }

LABEL_59:
  sub_1E6530864(&v48, &v47, &v46);
  return 1;
}

uint64_t sub_1E6536498(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1E65DA598();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADA0, &qword_1E6609A08);
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
      sub_1E6538198(&qword_1ED07AD90, MEMORY[0x1E69CCEA0]);
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

uint64_t sub_1E65367F4(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v46 = a1;
  v50 = *MEMORY[0x1E69E9840];
  v7 = sub_1E65D9B08();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v11) = *(a3 + 32);
  v13 = ((1 << v11) + 63) >> 6;
  if ((v11 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v44 = v12;
    v45 = v10;
    v38 = v13;
    v49 = v4;
    v40 = &v37;
    MEMORY[0x1EEE9AC00](v10);
    v39 = &v37 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v39, v14);
    v15 = 0;
    v47 = a3;
    v17 = *(a3 + 56);
    a3 += 56;
    v16 = v17;
    v18 = 1 << *(a3 - 24);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v16;
    v12 = ((v18 + 63) >> 6);
    v41 = 0;
    v42 = v8 + 2;
    v43 = (v8 + 1);
    while (v20)
    {
      v21 = __clz(__rbit64(v20));
      v48 = (v20 - 1) & v20;
LABEL_12:
      v13 = v21 | (v15 << 6);
      v24 = *(v47 + 48) + v8[9] * v13;
      v4 = v8;
      v25 = v8[2];
      v26 = v44;
      v27 = v45;
      v25(v44, v24, v45);
      v28 = v49;
      v29 = v46(v26);
      v49 = v28;
      if (v28)
      {
        (*v43)(v26, v27);

        result = swift_willThrow();
        goto LABEL_18;
      }

      v30 = v29;
      v10 = (*v43)(v26, v27);
      v8 = v4;
      v20 = v48;
      if (v30)
      {
        *&v39[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
        if (__OFADD__(v41++, 1))
        {
          __break(1u);
LABEL_17:
          result = sub_1E65371EC(v39, v38, v41, v47);
          goto LABEL_18;
        }
      }
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v12)
      {
        goto LABEL_17;
      }

      v23 = *(a3 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v48 = (v23 - 1) & v23;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v34 = v10;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v10 = v34;
  }

  v35 = swift_slowAlloc();
  v36 = sub_1E6536E1C(v35, v13, a3, v46, a2, MEMORY[0x1E69CC6C0], sub_1E65371EC);

  result = MEMORY[0x1E694F1C0](v35, -1, -1);
  if (!v4)
  {
    result = v36;
  }

LABEL_18:
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E6536BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v32 = a2;
  v33 = a7;
  v39 = a4;
  v34 = a1;
  v42 = a6(0);
  v9 = *(*(v42 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v42);
  v40 = a3;
  v41 = &v32 - v12;
  v13 = 0;
  v16 = *(a3 + 56);
  v15 = a3 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v37 = v11 + 16;
  v38 = v11;
  v35 = 0;
  v36 = (v11 + 8);
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v22 = v21 | (v13 << 6);
    v23 = v42;
    v24 = v41;
LABEL_11:
    (*(v38 + 16))(v24, *(v40 + 48) + *(v38 + 72) * v22, v23);
    v27 = v39(v24);
    v28 = v24;
    if (v7)
    {
      return (*v36)(v24, v23);
    }

    v29 = v27;
    result = (*v36)(v28, v23);
    if (v29)
    {
      *(v34 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      if (__OFADD__(v35++, 1))
      {
        __break(1u);
LABEL_16:
        v31 = v40;

        return v33(v34, v32, v35, v31);
      }
    }
  }

  v25 = v13;
  v23 = v42;
  v24 = v41;
  while (1)
  {
    v13 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      goto LABEL_16;
    }

    v26 = *(v15 + 8 * v13);
    ++v25;
    if (v26)
    {
      v19 = (v26 - 1) & v26;
      v22 = __clz(__rbit64(v26)) | (v13 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1E6536E1C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a7;
      v11 = a6;
      v12 = a5;
      v13 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v13;
      a5 = v12;
      a6 = v11;
      a7 = v10;
    }

    v14 = sub_1E6536BB4(result, a2, a3, a4, a5, a6, a7);

    return v14;
  }

  return result;
}

uint64_t sub_1E6536EC4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_1E65DA3F8();
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD78, &qword_1E66099F8);
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
    sub_1E6538198(&qword_1ED07AD80, MEMORY[0x1E69CCD78]);
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

uint64_t sub_1E65371EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_1E65D9B08();
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075390, &qword_1E65F1A18);
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
    sub_1E6538198(&qword_1EE2D7040, MEMORY[0x1E69CC6C0]);
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

uint64_t sub_1E6537514(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1E65DA598();
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
    sub_1E6536498(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1E65377DC(MEMORY[0x1E69CCEA0], &qword_1ED07ADA0, &qword_1E6609A08);
      goto LABEL_12;
    }

    sub_1E6537A14(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1E6538198(&qword_1ED07AD90, MEMORY[0x1E69CCEA0]);
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
      sub_1E6538198(&qword_1ED07AD98, MEMORY[0x1E69CCEA0]);
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

void *sub_1E65377DC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = sub_1E65E6858();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

uint64_t sub_1E6537A14(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1E65DA598();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADA0, &qword_1E6609A08);
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
      sub_1E6538198(&qword_1ED07AD90, MEMORY[0x1E69CCEA0]);
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

size_t sub_1E6537D30(size_t a1, int64_t a2, char a3)
{
  result = sub_1E6530964(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1E6537D50(size_t a1, int64_t a2, char a3)
{
  result = sub_1E653098C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1E6537D70(size_t a1, int64_t a2, char a3)
{
  result = sub_1E65309B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1E6537D90@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  if (result < 0 || (v5 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = *(a3 + 48);
  v8 = a4(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v11 = v7 + *(v9 + 72) * v5;

  return v10(a5, v11, v8);
}

uint64_t sub_1E6537E78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SwappableWorkout();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6537EDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SwappableWorkout();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6537F8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD88, &qword_1E6609A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6537FFC(uint64_t a1)
{
  v2 = sub_1E65DA598();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1E6538198(&qword_1ED07AD90, MEMORY[0x1E69CCEA0]);
  result = MEMORY[0x1E694DC60](v10, v2, v11);
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
      sub_1E65350FC(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1E6538198(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E6538200(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADC8, &qword_1E6609BC8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v54 = v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADD0, &unk_1E6609BD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = v40 - v8;
  v9 = sub_1E65D76F8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v52 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1E65DA488();
  v12 = *(v51 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v50 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1E65DA598();
  v15 = *(v49 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    v40[1] = v1;
    v60 = MEMORY[0x1E69E7CC0];
    sub_1E6537D70(0, v19, 0);
    v59 = v60;
    v21 = a1 + 56;
    v22 = -1 << *(a1 + 32);
    result = sub_1E65E6748();
    v23 = result;
    v24 = 0;
    v45 = v12 + 8;
    v46 = v12 + 16;
    v43 = v18;
    v44 = v15 + 32;
    v41 = a1 + 64;
    v42 = v19;
    v47 = a1 + 56;
    v48 = v15;
    while ((v23 & 0x8000000000000000) == 0 && v23 < 1 << *(a1 + 32))
    {
      if ((*(v21 + 8 * (v23 >> 6)) & (1 << v23)) == 0)
      {
        goto LABEL_22;
      }

      v57 = v23 >> 6;
      v58 = 1 << v23;
      v26 = *(a1 + 36);
      v55 = v24;
      v56 = v26;
      v28 = v50;
      v27 = v51;
      (*(v12 + 16))(v50, *(a1 + 48) + *(v12 + 72) * v23, v51);
      sub_1E65DA418();
      sub_1E65DA438();
      sub_1E65DA448();
      sub_1E65DA588();
      (*(v12 + 8))(v28, v27);
      v29 = v59;
      v60 = v59;
      v31 = *(v59 + 16);
      v30 = *(v59 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1E6537D70(v30 > 1, v31 + 1, 1);
        v29 = v60;
      }

      *(v29 + 16) = v31 + 1;
      v32 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v59 = v29;
      result = (*(v48 + 32))(v29 + v32 + *(v48 + 72) * v31, v43, v49);
      v25 = 1 << *(a1 + 32);
      v21 = v47;
      if (v23 >= v25)
      {
        goto LABEL_23;
      }

      v33 = *(v47 + 8 * v57);
      if ((v33 & v58) == 0)
      {
        goto LABEL_24;
      }

      if (v56 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v34 = v33 & (-2 << (v23 & 0x3F));
      if (v34)
      {
        v25 = __clz(__rbit64(v34)) | v23 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v35 = v57 << 6;
        v36 = v57 + 1;
        v37 = (v41 + 8 * v57);
        while (v36 < (v25 + 63) >> 6)
        {
          v39 = *v37++;
          v38 = v39;
          v35 += 64;
          ++v36;
          if (v39)
          {
            result = sub_1E5F87098(v23, v56, 0);
            v25 = __clz(__rbit64(v38)) + v35;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v23, v56, 0);
      }

LABEL_4:
      v24 = v55 + 1;
      v23 = v25;
      if (v55 + 1 == v42)
      {
        return v59;
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
  }

  return result;
}

uint64_t sub_1E65386D8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A720, &qword_1E6607338);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v48 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADD0, &unk_1E6609BD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v48 - v18;
  v20 = sub_1E65D7EB8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072968, &unk_1E6609800);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v52 = &v48 - v27;
  swift_defaultActor_initialize();
  v53 = v21;
  v49 = *(v21 + 56);
  v50 = OBJC_IVAR____TtC25FitnessWorkoutPlanService27SimulatorWorkoutPlanService_activeWorkoutPlan;
  v55 = v20;
  v49(v1 + OBJC_IVAR____TtC25FitnessWorkoutPlanService27SimulatorWorkoutPlanService_activeWorkoutPlan, 1, 1, v20);
  v28 = OBJC_IVAR____TtC25FitnessWorkoutPlanService27SimulatorWorkoutPlanService_workoutPlanTemplateMetadata;
  v29 = sub_1E65DA488();
  sub_1E653B364(&qword_1ED074170, MEMORY[0x1E69CCDC8]);
  *(v1 + v28) = sub_1E65E6218();
  v51 = v24;
  sub_1E65D7E88();
  v30 = sub_1E65D76A8();
  v31 = *(*(v30 - 8) + 56);
  v54 = v19;
  v31(v19, 1, 1, v30);
  v32 = sub_1E65D76F8();
  v33 = *(*(v32 - 8) + 56);
  v56 = v15;
  v33(v15, 1, 1, v32);
  v34 = sub_1E65D7BC8();
  v35 = v48;
  (*(*(v34 - 8) + 56))();
  v36 = *(v1 + v28);

  sub_1E6059E80(v37, v5);

  v38 = *(v29 - 8);
  if ((*(v38 + 48))(v5, 1, v29) == 1)
  {
    sub_1E5DFE50C(v5, &qword_1ED07A720, &qword_1E6607338);
    v39 = 1;
  }

  else
  {
    sub_1E65DA418();
    (*(v38 + 8))(v5, v29);
    v39 = 0;
  }

  v33(v13, v39, 1, v32);
  v40 = v52;
  v41 = v54;
  v42 = v56;
  v43 = v35;
  v44 = v51;
  sub_1E65D7E78();
  sub_1E5DFE50C(v13, &unk_1ED077760, &unk_1E66011D0);
  sub_1E5DFE50C(v43, &qword_1ED07ADD0, &unk_1E6609BD0);
  sub_1E5DFE50C(v42, &unk_1ED077760, &unk_1E66011D0);
  sub_1E5DFE50C(v41, &qword_1ED0752D8, &qword_1E660CC30);
  v45 = v55;
  (*(v53 + 8))(v44, v55);
  v49(v40, 0, 1, v45);
  v46 = v50;
  swift_beginAccess();
  sub_1E653B3AC(v40, v1 + v46);
  swift_endAccess();
  return v1;
}

uint64_t sub_1E6538CA0()
{
  sub_1E5DFE50C(v0 + OBJC_IVAR____TtC25FitnessWorkoutPlanService27SimulatorWorkoutPlanService_activeWorkoutPlan, &qword_1ED072968, &unk_1E6609800);
  v1 = *(v0 + OBJC_IVAR____TtC25FitnessWorkoutPlanService27SimulatorWorkoutPlanService_workoutPlanTemplateMetadata);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t static WorkoutPlanService.simulator()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for SimulatorWorkoutPlanService();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  sub_1E65386D8();
  *a1 = &unk_1E6609A18;
  a1[1] = v5;
  a1[2] = &unk_1E6609A28;
  a1[3] = v5;
  a1[4] = &unk_1E6609A38;
  a1[5] = v5;
  a1[6] = &unk_1E6609A48;
  a1[7] = v5;
  a1[8] = &unk_1E6609A58;
  a1[9] = v5;
  a1[10] = &unk_1E6609A68;
  a1[11] = v5;
  a1[12] = &unk_1E6609A78;
  a1[13] = v5;
  a1[14] = &unk_1E6609A88;
  a1[15] = v5;
  a1[16] = &unk_1E6609A98;
  a1[17] = v5;
  a1[18] = &unk_1E6609AA8;
  a1[19] = v5;
  a1[20] = &unk_1E6609AB8;
  a1[21] = v5;
  a1[22] = &unk_1E6609AC8;
  a1[23] = v5;
  a1[24] = &unk_1E6609AD8;
  a1[25] = v5;
  a1[26] = &unk_1E6609AE8;
  a1[27] = v5;
  a1[28] = &unk_1E6609AF8;
  a1[29] = v5;
  a1[30] = &unk_1E6609B08;
  a1[31] = v5;
  a1[32] = &unk_1E6609B18;
  a1[33] = v5;
  a1[34] = &unk_1E6609B28;
  a1[35] = v5;
  a1[36] = &unk_1E6609B38;
  a1[37] = v5;
  a1[38] = &unk_1E6609B48;
  a1[39] = v5;
  return swift_retain_n();
}

uint64_t type metadata accessor for SimulatorWorkoutPlanService()
{
  result = qword_1ED07ADA8;
  if (!qword_1ED07ADA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E6538F24(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072968, &unk_1E6609800) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6538FC4, a2, 0);
}

uint64_t sub_1E6538FC4()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = OBJC_IVAR____TtC25FitnessWorkoutPlanService27SimulatorWorkoutPlanService_activeWorkoutPlan;
  swift_beginAccess();
  sub_1E61A8DB4(v1 + v3, v2);
  v4 = sub_1E65D7EB8();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = v0[7];
  if (v6 == 1)
  {
    sub_1E5DFE50C(v0[7], &qword_1ED072968, &unk_1E6609800);
    v8 = sub_1E65D8B88();
    sub_1E653B364(&qword_1ED078840, MEMORY[0x1E69CB928]);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x1E69CB8F8], v8);
    swift_willThrow();
  }

  else
  {
    (*(v5 + 32))(v0[5], v0[7], v4);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E65391AC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6538F24(a1, v1);
}

uint64_t sub_1E6539268()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC25FitnessWorkoutPlanService27SimulatorWorkoutPlanService_workoutPlanTemplateMetadata);

  v3 = sub_1E6538200(v2);

  v4 = sub_1E6537FFC(v3);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1E6539310()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E6539248(v0);
}

uint64_t sub_1E65393A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E65393BC, a2, 0);
}

uint64_t sub_1E65393BC()
{
  v1 = v0[2];
  v2 = *(v0[3] + OBJC_IVAR____TtC25FitnessWorkoutPlanService27SimulatorWorkoutPlanService_workoutPlanTemplateMetadata);

  v4 = sub_1E653AD84(v3, v1);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1E653945C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5FE99E8;

  return sub_1E65393A0(a1, v1);
}

uint64_t sub_1E6539514()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC25FitnessWorkoutPlanService27SimulatorWorkoutPlanService_workoutPlanTemplateMetadata);
  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t sub_1E653958C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E65394F4(v0);
}

uint64_t sub_1E6539668()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5FEE4D4;

  return sub_1E653961C(v0);
}

uint64_t sub_1E6539718()
{
  v1 = *(v0 + 16);
  sub_1E65D96E8();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E653977C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E65396F8(a1, a2, v2);
}

uint64_t sub_1E6539848()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FEE4D4;

  return sub_1E6539828();
}

uint64_t sub_1E6539918()
{
  v1 = *(v0 + 16);
  sub_1E65D7688();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E653997C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1E5DFA78C;

  return sub_1E65398F8(a1, a2, a3, v3);
}

uint64_t sub_1E6539A4C()
{
  v1 = *(v0 + 16);
  sub_1E65D9038();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E6539AB0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6539A30(a1, v1);
}

uint64_t sub_1E6539B6C()
{
  v1 = *(v0 + 16);
  sub_1E65D9638();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E6539BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E6539B4C(a1, a2, a3, a4, v4);
}

uint64_t sub_1E6539C94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E6539D44(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DA0, &qword_1E6609BC0);
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6539E14, a2, 0);
}

uint64_t sub_1E6539E14()
{
  v1 = v0[2];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x1E69E8650], v0[3]);
  sub_1E65E6128();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E6539ED0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6539D44(a1, v1);
}

uint64_t sub_1E6539F6C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADC0, &qword_1E6609BB8);
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E653A03C, a2, 0);
}

uint64_t sub_1E653A03C()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E65DDF18();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1E65E6128();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E653A110(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E6539F6C(a1, v1);
}

uint64_t sub_1E653A1AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E653A25C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E653A23C(a1, a2, v2);
}

uint64_t sub_1E653A308()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E653A398()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5E1CF6C();
}

uint64_t sub_1E653A450()
{
  v1 = *(v0 + 16);
  sub_1E65D9378();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E653A4B4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E653A430(a1, a2, v2);
}

uint64_t sub_1E653A580()
{
  v1 = *(v0 + 16);
  sub_1E65D7E88();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E653A5E4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E653A560(a1, a2, v2);
}

uint64_t sub_1E653A690(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E653A23C(a1, a2, v2);
}

void sub_1E653A744()
{
  sub_1E653A7EC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1E653A7EC()
{
  if (!qword_1ED07ADB8)
  {
    sub_1E65D7EB8();
    v0 = sub_1E65E6668();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED07ADB8);
    }
  }
}

unint64_t *sub_1E653A844(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
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

    v8 = sub_1E653A8E0(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1E653A8E0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v44 = a2;
  v46 = a1;
  v6 = sub_1E65D76F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v43 - v12;
  v13 = sub_1E65DA488();
  v14 = *(*(v13 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v13);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  v56 = a3;
  v20 = *(a3 + 56);
  v47 = a3 + 56;
  v48 = 0;
  v21 = 1 << *(a3 + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v59 = a4 + 7;
  v58 = v7 + 16;
  v45 = v7;
  v60 = (v7 + 8);
  v61 = a4;
  v54 = v16;
  v55 = result;
  v50 = (v16 + 8);
  v51 = v16 + 16;
  v52 = v24;
  v53 = v18;
  while (v23)
  {
    v25 = __clz(__rbit64(v23));
    v57 = (v23 - 1) & v23;
LABEL_13:
    v28 = v25 | (v19 << 6);
    v29 = *(v56 + 48);
    v30 = *(v54 + 72);
    v49 = v28;
    (*(v54 + 16))(v18, v29 + v30 * v28, v13);
    sub_1E65DA418();
    if (v61[2] && (v31 = v61, v32 = v61[5], sub_1E653B364(&qword_1EE2D71A8, MEMORY[0x1E69695A8]), v33 = sub_1E65E5B38(), v34 = -1 << *(v31 + 32), v35 = v33 & ~v34, ((*(v59 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) != 0))
    {
      v36 = ~v34;
      v37 = *(v45 + 72);
      v38 = *(v45 + 16);
      while (1)
      {
        v38(v11, v61[6] + v37 * v35, v6);
        sub_1E653B364(&qword_1EE2D71A0, MEMORY[0x1E69695A8]);
        v39 = sub_1E65E5B98();
        v40 = *v60;
        (*v60)(v11, v6);
        if (v39)
        {
          break;
        }

        v35 = (v35 + 1) & v36;
        if (((*(v59 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v40(v62, v6);
      v18 = v53;
      v13 = v55;
      result = (*v50)(v53, v55);
      *(v46 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v41 = __OFADD__(v48++, 1);
      v24 = v52;
      v23 = v57;
      if (v41)
      {
        __break(1u);
LABEL_22:
        v42 = v56;

        return sub_1E6089D18(v46, v44, v48, v42);
      }
    }

    else
    {
LABEL_5:
      (*v60)(v62, v6);
      v18 = v53;
      v13 = v55;
      result = (*v50)(v53, v55);
      v24 = v52;
      v23 = v57;
    }
  }

  v26 = v19;
  while (1)
  {
    v19 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v19 >= v24)
    {
      goto LABEL_22;
    }

    v27 = *(v47 + 8 * v19);
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v57 = (v27 - 1) & v27;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E653AD84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v66 = *MEMORY[0x1E69E9840];
  v64 = sub_1E65D76F8();
  v6 = *(v64 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v64);
  v61 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v65 = v44 - v10;
  v11 = sub_1E65DA488();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v14) = *(a1 + 32);
  v16 = v14 & 0x3F;
  v45 = ((1 << v14) + 63) >> 6;
  v17 = 8 * v45;

  if (v16 > 0xD)
  {
LABEL_27:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v43 = swift_slowAlloc();

      v40 = sub_1E653A844(v43, v45, a1, a2);

      MEMORY[0x1E694F1C0](v43, -1, -1);

      goto LABEL_25;
    }
  }

  v44[2] = v3;
  v44[1] = v44;
  MEMORY[0x1EEE9AC00](v18);
  v47 = v44 - ((v17 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v47, v17);
  v19 = 0;
  v3 = 0;
  v57 = a1;
  v21 = *(a1 + 56);
  a1 += 56;
  v20 = v21;
  v48 = a1;
  v22 = 1 << *(a1 - 24);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v20;
  v25 = (v22 + 63) >> 6;
  v62 = a2 + 56;
  v60 = v6 + 16;
  v46 = v6;
  v63 = (v6 + 8);
  v55 = v11;
  v56 = v12;
  v51 = v12 + 16;
  v52 = (v12 + 8);
  v53 = v25;
  v54 = v15;
  while (2)
  {
    v49 = v19;
    while (1)
    {
      v26 = v57;
      if (!v24)
      {
        v28 = v3;
        while (1)
        {
          v3 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          if (v3 >= v25)
          {
            goto LABEL_24;
          }

          v29 = *(v48 + 8 * v3);
          ++v28;
          if (v29)
          {
            v27 = __clz(__rbit64(v29));
            v58 = (v29 - 1) & v29;
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_27;
      }

      v27 = __clz(__rbit64(v24));
      v58 = (v24 - 1) & v24;
LABEL_15:
      v30 = v27 | (v3 << 6);
      v31 = *(v57 + 48);
      v32 = *(v56 + 72);
      v50 = v30;
      (*(v56 + 16))(v15, v31 + v32 * v30, v11);
      v17 = v15;
      sub_1E65DA418();
      if (*(a2 + 16))
      {
        v33 = *(a2 + 40);
        sub_1E653B364(&qword_1EE2D71A8, MEMORY[0x1E69695A8]);
        v17 = v65;
        v34 = sub_1E65E5B38();
        v35 = -1 << *(a2 + 32);
        v6 = v34 & ~v35;
        if ((*(v62 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          break;
        }
      }

LABEL_7:
      (*v63)(v65, v64);
      v15 = v54;
      v11 = v55;
      (*v52)(v54, v55);
      v25 = v53;
      v24 = v58;
    }

    v59 = ~v35;
    v12 = *(v46 + 72);
    v36 = *(v46 + 16);
    while (1)
    {
      v37 = a2;
      v38 = v61;
      v17 = v64;
      v36(v61, *(a2 + 48) + v12 * v6, v64);
      sub_1E653B364(&qword_1EE2D71A0, MEMORY[0x1E69695A8]);
      a1 = sub_1E65E5B98();
      v39 = *v63;
      (*v63)(v38, v17);
      if (a1)
      {
        break;
      }

      v6 = (v6 + 1) & v59;
      a2 = v37;
      if (((*(v62 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v39(v65, v64);
    v15 = v54;
    v11 = v55;
    (*v52)(v54, v55);
    *&v47[(v50 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v50;
    v19 = v49 + 1;
    a2 = v37;
    v25 = v53;
    v24 = v58;
    if (!__OFADD__(v49, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_24:
  v40 = sub_1E6089D18(v47, v45, v49, v26);

LABEL_25:
  v41 = *MEMORY[0x1E69E9840];
  return v40;
}

uint64_t sub_1E653B364(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E653B3AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072968, &unk_1E6609800);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E653B420(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE00, &qword_1E6609D00);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E653B4F0, v2, 0);
}

uint64_t sub_1E653B4F0()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD798();

  return MEMORY[0x1EEE6DFA0](sub_1E653B58C, 0, 0);
}

uint64_t sub_1E653B58C()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "FitnessSyncService/LiveSyncService.swift";
  *(v2 + 24) = 40;
  *(v2 + 32) = 2;
  *(v2 + 40) = 20;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = sub_1E65D8738();
  *v4 = v0;
  v4[1] = sub_1E653B6A4;
  v6 = v0[2];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E653E56C, v2, v5);
}

uint64_t sub_1E653B6A4()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *v1;
  v4[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6523658, 0, 0);
  }

  else
  {
    (*(v4[6] + 8))(v4[7], v4[5]);

    v5 = v4[1];

    return v5();
  }
}

uint64_t sub_1E653B828(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 72) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  *(v2 + 24) = v3;
  v4 = *(v3 - 8);
  *(v2 + 32) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E653B8F8, v1, 0);
}

uint64_t sub_1E653B8F8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v0 + 72);
  v4 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD778();

  return MEMORY[0x1EEE6DFA0](sub_1E653B998, 0, 0);
}

uint64_t sub_1E653B998()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = "FitnessSyncService/LiveSyncService.swift";
  *(v2 + 24) = 40;
  *(v2 + 32) = 2;
  *(v2 + 40) = 24;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1E6523A50;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E653E680, v2, v5);
}

uint64_t sub_1E653BAA8()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADF0, &qword_1E6609CF0);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E653BB74, v0, 0);
}

uint64_t sub_1E653BB74()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD748();

  return MEMORY[0x1EEE6DFA0](sub_1E653BC08, 0, 0);
}

uint64_t sub_1E653BC08()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = "FitnessSyncService/LiveSyncService.swift";
  *(v2 + 24) = 40;
  *(v2 + 32) = 2;
  *(v2 + 40) = 28;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1E653BD1C;
  v5 = MEMORY[0x1E69CB948];

  return MEMORY[0x1EEE6DE38](v0 + 9, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E653E490, v2, v5);
}

uint64_t sub_1E653BD1C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(v2 + 64) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6523C0C, 0, 0);
  }

  else
  {
    v7 = *(v2 + 32);
    v6 = *(v2 + 40);
    v8 = *(v2 + 24);
    v9 = *(v2 + 72);

    (*(v7 + 8))(v6, v8);

    v10 = *(v4 + 8);

    return v10(v9);
  }
}

uint64_t sub_1E653BEB0()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADE0, &qword_1E6609CE0);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E653BF7C, v0, 0);
}

uint64_t sub_1E653BF7C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD768();

  return MEMORY[0x1EEE6DFA0](sub_1E653C010, 0, 0);
}

uint64_t sub_1E653C010()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = "FitnessSyncService/LiveSyncService.swift";
  *(v2 + 24) = 40;
  *(v2 + 32) = 2;
  *(v2 + 40) = 32;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1E653C124;
  v5 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 9, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E653E3E4, v2, v5);
}

uint64_t sub_1E653C124()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v13 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = *(v2 + 48);

    v5 = sub_1E653C338;
    v6 = 0;
  }

  else
  {
    v8 = *(v2 + 40);
    v7 = *(v2 + 48);
    v9 = *(v2 + 24);
    v10 = *(v2 + 32);
    v11 = *(v2 + 16);
    *(v2 + 73) = *(v2 + 72);

    (*(v10 + 8))(v8, v9);
    v5 = sub_1E653C288;
    v6 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1E653C288()
{
  if ((*(v0 + 73) & 1) == 0)
  {
    sub_1E653E414();
    swift_allocError();
    swift_willThrow();
  }

  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E653C338()
{
  v1 = v0[2];
  (*(v0[4] + 8))(v0[5], v0[3]);

  return MEMORY[0x1EEE6DFA0](sub_1E653C3B0, v1, 0);
}

uint64_t sub_1E653C3B0()
{
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E653C414(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E653C4E0, v1, 0);
}

uint64_t sub_1E653C4E0()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  sub_1E65DD788();

  return MEMORY[0x1EEE6DFA0](sub_1E653C57C, 0, 0);
}

uint64_t sub_1E653C57C()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "FitnessSyncService/LiveSyncService.swift";
  *(v2 + 24) = 40;
  *(v2 + 32) = 2;
  *(v2 + 40) = 39;
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1E653C68C;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E653D3FC, v2, v5);
}

uint64_t sub_1E653C68C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v5 = sub_1E6522D30;
    v6 = 0;
  }

  else
  {
    v7 = v2[3];
    (*(v2[5] + 8))(v2[6], v2[4]);
    v5 = sub_1E653C7E4;
    v6 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1E653C7E4()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E653C848(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFA78C;

  return sub_1E653B420(a1, a2);
}

uint64_t sub_1E653C8F4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFA78C;

  return sub_1E653C848(a1, a2);
}

uint64_t sub_1E653C9A0(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E653B828(a1);
}

uint64_t sub_1E653CA38(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E653C9A0(a1);
}

uint64_t sub_1E653CAD0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E60ABB70;

  return sub_1E653BAA8();
}

uint64_t sub_1E653CB60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FE99E8;

  return sub_1E653CAD0();
}

uint64_t sub_1E653CBF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E653BEB0();
}

uint64_t sub_1E653CC80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E653CBF0();
}

uint64_t sub_1E653CD10(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E653C414(a1);
}

uint64_t sub_1E653CDA8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E653CD10(a1);
}

uint64_t sub_1E653CE60()
{
  v1 = *(v0 + 16);
  v2 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v1[17]);
  sub_1E65DD758();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E653CEE4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFA78C;

  return sub_1E653CE40(v0);
}

uint64_t sub_1E653CF74()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6519EB0(v2);
}

uint64_t sub_1E653D020(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE08, &qword_1E6609D08);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AE00, &qword_1E6609D00);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E653E584;
  *(v35 + 24) = v33;

  v34(sub_1E6531034, v35);
}

uint64_t sub_1E653D414(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADF8, &qword_1E6609CF8);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADF0, &qword_1E6609CF0);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E653E4A8;
  *(v35 + 24) = v33;

  v34(sub_1E5E20B18, v35);
}

uint64_t sub_1E653D7F0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADE8, &qword_1E6609CE8);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADE0, &qword_1E6609CE0);
  v34 = sub_1E65DACC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E653E468;
  *(v35 + 24) = v33;

  v34(sub_1E5E20B0C, v35);
}