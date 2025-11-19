uint64_t sub_1E612978C()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6129888, 0, 0);
}

uint64_t sub_1E6129888()
{
  if (*(v0 + 112) == 1)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v5 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6129988, v5, v4);
  }
}

uint64_t sub_1E6129988()
{
  v1 = v0[13];
  v2 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8);
  sub_1E65E4E18();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E612978C;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v6);
}

uint64_t sub_1E6129A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B0, &qword_1E65EA988) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0721C0, &qword_1E65EA998);
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6129BC0, 0, 0);
}

uint64_t sub_1E6129BC0()
{
  v1 = v0[2];
  v2 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[11] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1E6129CBC;
  v6 = v0[7];

  return v8(v6);
}

uint64_t sub_1E6129CBC()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6129DD4, 0, 0);
}

uint64_t sub_1E6129DD4()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1E6129EB0;
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[4];

  return MEMORY[0x1EEE6D9C8](v9, 0, 0, v8);
}

uint64_t sub_1E6129EB0()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6129FAC, 0, 0);
}

uint64_t sub_1E6129FAC()
{
  v1 = v0[4];
  v2 = sub_1E65D99E8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    sub_1E65E6058();
    v0[14] = sub_1E65E6048();
    v7 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E612A0FC, v7, v6);
  }
}

uint64_t sub_1E612A0FC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E612A180, 0, 0);
}

uint64_t sub_1E612A180()
{
  sub_1E5FC789C(v0[4]);
  v1 = *(MEMORY[0x1E69E8678] + 4);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1E6129EB0;
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[4];

  return MEMORY[0x1EEE6D9C8](v5, 0, 0, v4);
}

uint64_t sub_1E612A230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E612A364, 0, 0);
}

uint64_t sub_1E612A364()
{
  v1 = v0[2];
  v2 = AppStateService.makeAppWillEnterForegroundStream.getter();
  v0[10] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1E612A460;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_1E612A460()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E612A578, 0, 0);
}

uint64_t sub_1E612A578()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1E612A654;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v8);
}

uint64_t sub_1E612A654()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E612A750, 0, 0);
}

uint64_t sub_1E612A750()
{
  if (*(v0 + 112) == 1)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v5 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E612A850, v5, v4);
  }
}

uint64_t sub_1E612A850()
{
  v1 = v0[13];
  v2 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8);
  sub_1E65E4E18();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E612A654;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v6);
}

uint64_t sub_1E612A91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E612AA50, 0, 0);
}

uint64_t sub_1E612AA50()
{
  v1 = v0[2];
  v2 = AppStateService.makeSignificantTimeChangeStream.getter();
  v0[10] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1E612AB4C;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_1E612AB4C()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E612AC64, 0, 0);
}

uint64_t sub_1E612AC64()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1E612AD40;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v8);
}

uint64_t sub_1E612AD40()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E612AE3C, 0, 0);
}

uint64_t sub_1E612AE3C()
{
  if (*(v0 + 112) == 1)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v5 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E612AF3C, v5, v4);
  }
}

uint64_t sub_1E612AF3C()
{
  v1 = v0[13];
  v2 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8);
  sub_1E65E4E18();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E612AD40;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v6);
}

uint64_t sub_1E612B008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E612B13C, 0, 0);
}

uint64_t sub_1E612B13C()
{
  v1 = v0[2];
  v2 = AccountService.makeAccountChangedStream.getter();
  v0[10] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1E612B238;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_1E612B238()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E612B350, 0, 0);
}

uint64_t sub_1E612B350()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1E612B42C;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v8);
}

uint64_t sub_1E612B42C()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E612B528, 0, 0);
}

uint64_t sub_1E612B528()
{
  if (*(v0 + 112) == 1)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v5 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E612B628, v5, v4);
  }
}

uint64_t sub_1E612B628()
{
  v1 = v0[13];
  v2 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8);
  sub_1E65E4E18();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E612B42C;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v6);
}

uint64_t sub_1E612B6F4(uint64_t a1)
{
  Description = type metadata accessor for AccountService()[-1].Description;
  v5 = (Description[80] + 16) & ~Description[80];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E6128D28(a1, v1 + v5);
}

uint64_t sub_1E612B7D0(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AccountService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6129368(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E612B92C(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for RemoteBrowsingService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6129A54(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E612BA88(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AppStateService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E612A230(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E612BBE4(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AppStateService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E612A91C(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t objectdestroy_3Tm_5(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8);
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(v1 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1E612BEA4(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AccountService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E612B008(a1, v10, v11, v1 + v6, v1 + v9);
}

unint64_t sub_1E612C000()
{
  result = qword_1ED0758F0;
  if (!qword_1ED0758F0)
  {
    sub_1E65E38E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0758F0);
  }

  return result;
}

uint64_t sub_1E612C058@<X0>(uint64_t (*a1)(unint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v36 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758F8, &qword_1E65F20A8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v35 - v8;
  v10 = sub_1E65D7968();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v45 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v35 - v15;
  v39 = v14;
  v16 = *(a2 + 16);
  if (v16)
  {
    v17 = 0;
    v46 = a2 + 32;
    v41 = (v14 + 48);
    v42 = (v14 + 56);
    v40 = (v14 + 32);
    v47 = MEMORY[0x1E69E7CC0];
    v43 = v9;
    v44 = v10;
    v37 = v16;
    while (1)
    {
      v18 = *(v46 + 8 * v17);
      v19 = *(v18 + 16);

      if (v19)
      {
        break;
      }

      v23 = 1;
      v24 = v43;
LABEL_13:
      (*v42)(v24, v23, 1, v10);

      if ((*v41)(v24, 1, v10) == 1)
      {
        sub_1E5DFE50C(v24, &qword_1ED0758F8, &qword_1E65F20A8);
      }

      else
      {
        v25 = *v40;
        v26 = v38;
        (*v40)(v38, v24, v10);
        v25(v45, v26, v10);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v27 = v47;
        }

        else
        {
          v27 = sub_1E64F6A90(0, v47[2] + 1, 1, v47);
        }

        v29 = v27[2];
        v28 = v27[3];
        v16 = v37;
        if (v29 >= v28 >> 1)
        {
          v27 = sub_1E64F6A90(v28 > 1, v29 + 1, 1, v27);
        }

        v27[2] = v29 + 1;
        v30 = (*(v39 + 80) + 32) & ~*(v39 + 80);
        v47 = v27;
        v10 = v44;
        v25(v27 + v30 + *(v39 + 72) * v29, v45, v44);
      }

      if (++v17 == v16)
      {
        goto LABEL_22;
      }
    }

    v20 = 0;
    while (1)
    {
      v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780) - 8);
      v22 = a1(v18 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v20);
      if (v3)
      {
        break;
      }

      if (v22)
      {
        v24 = v43;
        MEMORY[0x1E693F330](v20, v17);
        v23 = 0;
        v10 = v44;
        goto LABEL_13;
      }

      if (v19 == ++v20)
      {
        v23 = 1;
        v24 = v43;
        v10 = v44;
        goto LABEL_13;
      }
    }
  }

  else
  {
    v47 = MEMORY[0x1E69E7CC0];
LABEL_22:
    if (v47[2])
    {
      v32 = v39;
      v33 = v36;
      (*(v39 + 16))(v36, v47 + ((*(v39 + 80) + 32) & ~*(v39 + 80)), v10);
      v34 = 0;
    }

    else
    {
      v34 = 1;
      v33 = v36;
      v32 = v39;
    }

    return (*(v32 + 56))(v33, v34, 1, v10);
  }
}

uint64_t sub_1E612C4B4@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v35 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758F8, &qword_1E65F20A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v34 - v7;
  v9 = sub_1E65D7968();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v43 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v34 - v14;
  v44 = *(a2 + 16);
  if (v44)
  {
    v15 = 0;
    v45 = a2 + 32;
    v38 = (v10 + 48);
    v39 = (v10 + 56);
    v37 = (v10 + 32);
    v16 = MEMORY[0x1E69E7CC0];
    v40 = v9;
    v41 = v8;
    v42 = v10;
    while (1)
    {
      v17 = v16;
      v18 = *(v45 + 8 * v15);
      v19 = *(v18 + 16);

      if (v19)
      {
        break;
      }

      v26 = 1;
LABEL_14:
      (*v39)(v8, v26, 1, v9);

      v16 = v17;
      if ((*v38)(v8, 1, v9) == 1)
      {
        sub_1E5DFE50C(v8, &qword_1ED0758F8, &qword_1E65F20A8);
      }

      else
      {
        v27 = v36;
        v28 = *v37;
        (*v37)(v36, v8, v9);
        v28(v43, v27, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1E64F6A90(0, v16[2] + 1, 1, v16);
        }

        v30 = v16[2];
        v29 = v16[3];
        v10 = v42;
        if (v30 >= v29 >> 1)
        {
          v16 = sub_1E64F6A90(v29 > 1, v30 + 1, 1, v16);
        }

        v16[2] = v30 + 1;
        v9 = v40;
        v28(v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v30, v43, v40);
        v8 = v41;
      }

      if (++v15 == v44)
      {
        goto LABEL_22;
      }
    }

    v20 = 0;
    v21 = *(sub_1E65E0B48() - 8);
    v22 = v18 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v23 = *(v21 + 72);
    v24 = v46;
    while (1)
    {
      v25 = a1(v22);
      if (v24)
      {
        break;
      }

      if (v25)
      {
        v46 = 0;
        v8 = v41;
        MEMORY[0x1E693F330](v20, v15);
        v26 = 0;
        v10 = v42;
        goto LABEL_13;
      }

      ++v20;
      v22 += v23;
      if (v19 == v20)
      {
        v46 = 0;
        v26 = 1;
        v8 = v41;
        v10 = v42;
LABEL_13:
        v9 = v40;
        goto LABEL_14;
      }
    }

    v46 = v24;
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_22:
    if (v16[2])
    {
      v32 = v35;
      (*(v10 + 16))(v35, v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9);
      v33 = 0;
    }

    else
    {
      v33 = 1;
      v32 = v35;
    }

    return (*(v10 + 56))(v32, v33, 1, v9);
  }
}

uint64_t sub_1E612C8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072648, &qword_1E65EB960) - 8) + 64) + 15;
  v7[7] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0) - 8) + 64) + 15;
  v7[8] = swift_task_alloc();
  v10 = sub_1E65D72D8();
  v7[9] = v10;
  v11 = *(v10 - 8);
  v7[10] = v11;
  v12 = *(v11 + 64) + 15;
  v7[11] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072630, &qword_1E65EB948) - 8) + 64) + 15;
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v14 = sub_1E65D8F28();
  v7[16] = v14;
  v15 = *(v14 - 8);
  v7[17] = v15;
  v16 = *(v15 + 64) + 15;
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v7[21] = swift_task_alloc();
  v18 = sub_1E65D8C68();
  v7[22] = v18;
  v19 = *(v18 - 8);
  v7[23] = v19;
  v20 = *(v19 + 64) + 15;
  v7[24] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60) - 8) + 64) + 15;
  v7[25] = swift_task_alloc();
  v22 = type metadata accessor for PageMetricsClick();
  v7[26] = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  v7[27] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072668, &qword_1E65EB978) - 8) + 64) + 15;
  v7[28] = swift_task_alloc();
  v25 = type metadata accessor for ItemMetrics();
  v7[29] = v25;
  v26 = *(v25 - 8);
  v7[30] = v26;
  v27 = *(v26 + 64) + 15;
  v7[31] = swift_task_alloc();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  v7[32] = v28;
  v29 = *(v28 - 8);
  v7[33] = v29;
  v30 = *(v29 + 64) + 15;
  v7[34] = swift_task_alloc();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072830, &qword_1E65EBE28);
  v7[35] = v31;
  v32 = *(v31 - 8);
  v7[36] = v32;
  v33 = *(v32 + 64) + 15;
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  v34 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758F8, &qword_1E65F20A8) - 8) + 64) + 15;
  v7[39] = swift_task_alloc();
  v35 = sub_1E65D7968();
  v7[40] = v35;
  v36 = *(v35 - 8);
  v7[41] = v36;
  v37 = *(v36 + 64) + 15;
  v7[42] = swift_task_alloc();
  v38 = *(*(type metadata accessor for ItemContext() - 8) + 64) + 15;
  v7[43] = swift_task_alloc();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v7[44] = v39;
  v40 = *(*(v39 - 8) + 64) + 15;
  v7[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E612CE68, 0, 0);
}

unint64_t sub_1E612CE68()
{
  v1 = v0[44];
  sub_1E5FEDD5C(v0[3], v0[45]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload <= 2 && EnumCaseMultiPayload)
    {
      (*(v0[41] + 8))(v0[45], v0[40]);
    }

    else
    {
      sub_1E5DFE50C(v0[45], &qword_1ED072828, &qword_1E65EBE20);
    }

    goto LABEL_15;
  }

  if ((EnumCaseMultiPayload - 8) < 5)
  {
LABEL_15:
    v20 = v0[45];
    v22 = v0[42];
    v21 = v0[43];
    v24 = v0[38];
    v23 = v0[39];
    v25 = v0[37];
    v26 = v0[34];
    v27 = v0[31];
    v28 = v0[27];
    v29 = v0[28];
    v146 = v0[25];
    v148 = v0[24];
    v150 = v0[21];
    v152 = v0[20];
    v154 = v0[19];
    v156 = v0[18];
    v158 = v0[15];
    v160 = v0[14];
    v162 = v0[13];
    v165 = v0[12];
    v167 = v0[11];
    v169 = v0[8];
    v172 = v0[7];

    v30 = v0[1];

    return v30();
  }

  if (EnumCaseMultiPayload != 6)
  {
    v32 = v0[45];
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
    (*(*(v33 - 8) + 8))(v32, v33);
    goto LABEL_15;
  }

  v3 = v0[4];
  sub_1E612E55C(v0[45], v0[43], type metadata accessor for ItemContext);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v4 = sub_1E65DC1A8();
  if (v5 > 1u)
  {
    v34 = v0[43];
LABEL_30:
    sub_1E612E5C4(v34, type metadata accessor for ItemContext);
    goto LABEL_15;
  }

  v6 = v4;
  v166 = v5;
  swift_getKeyPath();
  v7 = *(v6 + 16);
  v171 = v0;
  if (v7)
  {
    v8 = v0[36];
    v175 = MEMORY[0x1E69E7CC0];
    sub_1E601C82C(0, v7, 0);
    v9 = v175;
    v12 = *(v8 + 16);
    v10 = v8 + 16;
    v11 = v12;
    v164 = v6;
    v13 = v6 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);
    do
    {
      v15 = v171[38];
      v16 = v171[35];
      v11(v15, v13, v16);
      swift_getAtKeyPath();
      (*(v10 - 8))(v15, v16);
      v17 = v171[2];
      v19 = *(v175 + 16);
      v18 = *(v175 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1E601C82C((v18 > 1), v19 + 1, 1);
      }

      *(v175 + 16) = v19 + 1;
      *(v175 + 8 * v19 + 32) = v17;
      v13 += v14;
      --v7;
    }

    while (v7);

    v0 = v171;
    v6 = v164;
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  v35 = v0[43];
  v37 = v0[40];
  v36 = v0[41];
  v38 = v0[39];
  *(swift_task_alloc() + 16) = v35;
  sub_1E612C058(sub_1E612E53C, v9, v38);

  if ((*(v36 + 48))(v38, 1, v37) == 1)
  {
    v39 = v0[43];
    v40 = v0[39];
    sub_1E5FED3F8(v6, v166);
    v41 = &qword_1ED0758F8;
    v42 = &qword_1E65F20A8;
    v43 = v40;
LABEL_29:
    sub_1E5DFE50C(v43, v41, v42);
    v34 = v39;
    goto LABEL_30;
  }

  (*(v0[41] + 32))(v0[42], v0[39], v0[40]);
  result = sub_1E65D7958();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  if (result >= *(v6 + 16))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v44 = v0[42];
  (*(v0[36] + 16))(v0[37], v6 + ((*(v0[36] + 80) + 32) & ~*(v0[36] + 80)) + *(v0[36] + 72) * result, v0[35]);
  sub_1E5FED3F8(v6, v166);
  v45 = sub_1E65E0518();
  result = sub_1E65D7938();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (result >= *(v45 + 16))
  {
LABEL_56:
    __break(1u);
    return result;
  }

  v46 = v0[29];
  v47 = v0[30];
  v48 = v0[28];
  (*(v0[33] + 16))(v0[34], v45 + ((*(v0[33] + 80) + 32) & ~*(v0[33] + 80)) + *(v0[33] + 72) * result, v0[32]);

  sub_1E65E04B8();
  if ((*(v47 + 48))(v48, 1, v46) == 1)
  {
    v49 = v0[42];
    v39 = v0[43];
    v50 = v0[40];
    v51 = v0[41];
    v53 = v0[36];
    v52 = v0[37];
    v54 = v0[35];
    v55 = v0[28];
    (*(v0[33] + 8))(v0[34], v0[32]);
    (*(v53 + 8))(v52, v54);
    (*(v51 + 8))(v49, v50);
    v41 = &qword_1ED072668;
    v42 = &qword_1E65EB978;
    v43 = v55;
    goto LABEL_29;
  }

  v56 = v0[42];
  v57 = v0[31];
  v58 = v0[29];
  v60 = v0[24];
  v59 = v0[25];
  v61 = v0[22];
  v62 = v0[23];
  v63 = v0[21];
  sub_1E612E55C(v0[28], v57, type metadata accessor for ItemMetrics);
  v64 = sub_1E65D9D78();
  (*(*(v64 - 8) + 56))(v59, 1, 1, v64);
  (*(v62 + 16))(v60, &v57[*(v58 + 20)], v61);
  v65 = sub_1E65D74E8();
  (*(*(v65 - 8) + 56))(v63, 1, 1, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
  v66 = *(sub_1E65D86A8() - 8);
  v67 = (*(v66 + 80) + 32) & ~*(v66 + 80);
  v157 = *(v66 + 72);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1E65EB9E0;
  v159 = v68;
  v168 = *v57;
  v170 = *(v57 + 1);

  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  sub_1E65D7938();
  v69 = &v57[*(v58 + 24)];
  if (*(v69 + 1))
  {
    v143 = *v69;
  }

  else
  {
    v70 = v0[34];
    v71 = v0[32];
    sub_1E65E04A8();
  }

  v140 = v0[37];
  v72 = v0[35];
  v73 = v0[31];
  v74 = v0[29];
  v75 = v0[15];
  v153 = v74[8];
  v163 = (v0[17] + 16);
  v161 = *v163;
  (*v163)(v0[20], v73 + v153, v0[16]);
  v76 = v74[10];

  sub_1E65D9F78();
  v155 = v73;
  v151 = v74[7];
  sub_1E65D98F8();
  sub_1E6427498(MEMORY[0x1E69E7CC0]);

  sub_1E65D8678();
  sub_1E65E0548();
  v77 = type metadata accessor for SectionMetrics();
  v78 = *(*(v77 - 8) + 48);
  if (v78(v75, 1, v77) == 1)
  {
    v79 = v0[37];
    v80 = v0[35];
    sub_1E5DFE50C(v0[15], &qword_1ED072630, &qword_1E65EB948);
    sub_1E65E0508();
  }

  else
  {
    v81 = v0[15];
    v147 = v81[1];
    v149 = *v81;

    sub_1E612E5C4(v81, type metadata accessor for SectionMetrics);
  }

  v82 = v0[42];
  v83 = v0[37];
  v84 = v0[35];
  v85 = v0[14];
  sub_1E65D7958();
  sub_1E65E0548();
  if (v78(v85, 1, v77) == 1)
  {
    v86 = v0[37];
    v87 = v0[35];
    v88 = v0[7];
    sub_1E5DFE50C(v0[14], &qword_1ED072630, &qword_1E65EB948);
    sub_1E65E0538();
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
    v90 = *(v89 - 8);
    v91 = (*(v90 + 48))(v88, 1, v89);
    v92 = v0[10];
    v144 = v0[11];
    v93 = v0[8];
    v94 = v0[9];
    v95 = v0[7];
    if (v91 == 1)
    {
      sub_1E5DFE50C(v0[7], &qword_1ED072648, &qword_1E65EB960);
      (*(v92 + 56))(v93, 1, 1, v94);
      sub_1E65D72C8();
      if ((*(v92 + 48))(v93, 1, v94) != 1)
      {
        sub_1E5DFE50C(v171[8], &qword_1ED072D90, &qword_1E66040F0);
      }
    }

    else
    {
      v97 = v0[8];
      sub_1E65E0448();
      (*(v90 + 8))(v95, v89);
      (*(v92 + 56))(v93, 0, 1, v94);
      (*(v92 + 32))(v144, v93, v94);
    }

    v0 = v171;
    v98 = v171[11];
    sub_1E65E5D58();
  }

  else
  {
    v96 = v0[14];
    v142 = *(v96 + 24);
    v145 = *(v96 + 16);

    sub_1E612E5C4(v96, type metadata accessor for SectionMetrics);
  }

  v99 = v0[37];
  v100 = v0[35];
  v101 = v0[13];
  sub_1E65E0548();
  v102 = v78(v101, 1, v77);
  v103 = v0[19];
  if (v102 == 1)
  {
    v104 = v0[16];
    v105 = v0[17];
    sub_1E5DFE50C(v0[13], &qword_1ED072630, &qword_1E65EB948);
    (*(v105 + 104))(v103, *MEMORY[0x1E69CBCB0], v104);
  }

  else
  {
    v107 = v0[17];
    v106 = v0[18];
    v108 = v0[16];
    v109 = v0[13];
    v161(v106, v109 + *(v77 + 24), v108);
    sub_1E612E5C4(v109, type metadata accessor for SectionMetrics);
    (*(v107 + 32))(v103, v106, v108);
  }

  v110 = v0[37];
  v111 = v0[35];
  v112 = v0[12];
  sub_1E65E0548();
  v113 = v78(v112, 1, v77);
  v114 = v0[12];
  v115 = v0;
  if (v113 == 1)
  {
    sub_1E5DFE50C(v0[12], &qword_1ED072630, &qword_1E65EB948);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v116 = *(v114 + *(v77 + 32));

    sub_1E612E5C4(v114, type metadata accessor for SectionMetrics);
  }

  v118 = v0[26];
  v117 = v115[27];
  v141 = v115[24];
  v119 = v115[23];
  v138 = v115[25];
  v139 = v115[22];
  v173 = v115[21];
  v120 = v115[19];
  v121 = v115[16];
  v123 = v115[5];
  v122 = v115[6];
  sub_1E65D8678();
  v124 = v118[8];
  v125 = sub_1E65DA208();
  (*(*(v125 - 8) + 56))(v117 + v124, 1, 1, v125);
  v161(v117 + v118[14], v155 + v153, v121);
  v126 = v118[15];
  v127 = sub_1E65D9908();
  v128 = *(v127 - 8);
  (*(v128 + 16))(v117 + v126, v155 + v151, v127);
  (*(v128 + 56))(v117 + v126, 0, 1, v127);
  sub_1E5FAB460(v138, v117, &qword_1ED073578, &qword_1E65F0E60);
  (*(v119 + 32))(v117 + v118[5], v141, v139);
  sub_1E5FAB460(v173, v117 + v118[6], &qword_1ED072340, &qword_1E65EA410);
  *(v117 + v118[7]) = v159;
  v129 = (v117 + v118[9]);
  *v129 = 0;
  v129[1] = 0;
  v130 = (v117 + v118[10]);
  *v130 = 0;
  v130[1] = 0;
  *(v117 + v118[11]) = v123;
  v131 = (v117 + v118[12]);
  *v131 = 0;
  v131[1] = 0;
  v132 = (v117 + v118[13]);
  *v132 = v168;
  v132[1] = v170;
  v133 = *(v122 + 48);
  v134 = *(v122 + 56);

  v174 = (v133 + *v133);
  v135 = v133[1];
  v136 = swift_task_alloc();
  v115[46] = v136;
  *v136 = v115;
  v136[1] = sub_1E612DE50;
  v137 = v115[27];

  return v174(v137);
}

uint64_t sub_1E612DE50()
{
  v2 = *(*v1 + 368);
  v5 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = sub_1E612E1A0;
  }

  else
  {
    v3 = sub_1E612DF64;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E612DF64()
{
  v1 = v0[41];
  v34 = v0[42];
  v2 = v0[40];
  v4 = v0[36];
  v3 = v0[37];
  v6 = v0[34];
  v5 = v0[35];
  v8 = v0[32];
  v7 = v0[33];
  v9 = v0[31];
  sub_1E612E5C4(v0[27], type metadata accessor for PageMetricsClick);
  sub_1E612E5C4(v9, type metadata accessor for ItemMetrics);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v34, v2);
  sub_1E612E5C4(v0[43], type metadata accessor for ItemContext);
  v10 = v0[45];
  v12 = v0[42];
  v11 = v0[43];
  v14 = v0[38];
  v13 = v0[39];
  v15 = v0[37];
  v16 = v0[34];
  v17 = v0[31];
  v18 = v0[27];
  v19 = v0[28];
  v22 = v0[25];
  v23 = v0[24];
  v24 = v0[21];
  v25 = v0[20];
  v26 = v0[19];
  v27 = v0[18];
  v28 = v0[15];
  v29 = v0[14];
  v30 = v0[13];
  v31 = v0[12];
  v32 = v0[11];
  v33 = v0[8];
  v35 = v0[7];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1E612E1A0()
{
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[41];
  v16 = v0[39];
  v17 = v0[38];
  v4 = v0[36];
  v13 = v0[37];
  v14 = v0[40];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[32];
  v8 = v0[33];
  v9 = v0[31];
  v15 = v0[45];
  v18 = v0[28];
  v19 = v0[25];
  v20 = v0[24];
  v21 = v0[21];
  v22 = v0[20];
  v23 = v0[19];
  v24 = v0[18];
  v25 = v0[15];
  v26 = v0[14];
  v27 = v0[13];
  v28 = v0[12];
  v29 = v0[11];
  v30 = v0[8];
  v31 = v0[7];
  sub_1E612E5C4(v0[27], type metadata accessor for PageMetricsClick);
  sub_1E612E5C4(v9, type metadata accessor for ItemMetrics);
  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v13, v5);
  (*(v3 + 8))(v1, v14);
  sub_1E612E5C4(v2, type metadata accessor for ItemContext);

  v10 = v0[1];
  v11 = v0[47];

  return v10();
}

uint64_t sub_1E612E3E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E612E428(uint64_t *a1)
{
  v1 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072830, &qword_1E65EBE28);
  return sub_1E65E0528();
}

uint64_t sub_1E612E474(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ItemContext();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  MEMORY[0x1E6947EA0](v7);
  v8 = _s10Blackbeard11ItemContextO2eeoiySbAC_ACtFZ_0(v6, a2);
  sub_1E612E5C4(v6, type metadata accessor for ItemContext);
  return v8 & 1;
}

uint64_t sub_1E612E55C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E612E5C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E612E624@<X0>(uint64_t *a1@<X8>)
{
  v115 = a1;
  v2 = type metadata accessor for AccountService();
  Description = v2[-1].Description;
  v112 = v2;
  v3 = Description[8];
  MEMORY[0x1EEE9AC00](v2);
  v109 = v4;
  v110 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for AppStateService();
  v107 = v108[-1].Description;
  v5 = v107[8];
  MEMORY[0x1EEE9AC00](v108);
  v106 = v6;
  v117 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for RemoteBrowsingService();
  v122 = v128[-1].Description;
  v7 = v122[8];
  MEMORY[0x1EEE9AC00](v128);
  v103 = v8;
  v104 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v131 = &v93 - v11;
  v12 = type metadata accessor for ContentAvailabilityService();
  v13 = v12[-1].Description;
  v14 = v13[8];
  MEMORY[0x1EEE9AC00](v12);
  v113 = v15;
  v16 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8);
  v118 = *(v116 - 8);
  v17 = *(v118 + 64);
  v18 = MEMORY[0x1EEE9AC00](v116);
  v123 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v130 = &v93 - v20;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v21 = sub_1E65E3B68();
  __swift_project_value_buffer(v21, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v22 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v23 = type metadata accessor for AppEnvironment();
  v24 = v23[7];
  v105 = v23[6];
  v114 = v24;
  v25 = v23[14];
  v98 = v25;
  v26 = *(v22 + 8);
  v93 = v23[25];
  v27 = *(v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);
  swift_getKeyPath();
  v28 = v13[2];
  v96 = (v13 + 2);
  v97 = v28;
  v29 = v22 + v25;
  v30 = v22;
  v124 = v22;
  v28(v16, v29, v12);
  v95 = v12;
  v99 = *(v13 + 80);
  v31 = (v99 + 17) & ~v99;
  v100 = v99 | 7;
  v32 = swift_allocObject();
  *(v32 + 16) = v26;
  v33 = v13[4];
  v101 = (v13 + 4);
  v102 = v33;
  v33(v32 + v31, v16, v12);

  v34 = v130;
  sub_1E65E4E08();
  v35 = v116;
  v94 = v16;
  v36 = v115;
  v115[3] = v116;
  v36[4] = &off_1F5FAA7F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
  v38 = v118;
  v39 = v118 + 16;
  v40 = *(v118 + 16);
  v40(boxed_opaque_existential_1, v34, v35);
  v121 = v40;
  v125 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_1E65F2010;
  v126 = sub_1E65E60A8();
  v41 = *(v126 - 8);
  v127 = *(v41 + 56);
  v120 = v41 + 56;
  v127(v131, 1, 1, v126);
  v42 = v122;
  v43 = v104;
  v44 = v128;
  (v122[2])(v104, v30 + v93, v128);
  v45 = v35;
  v40(v123, v34, v35);
  v46 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v47 = *(v38 + 80);
  v48 = (v103 + v47 + v46) & ~v47;
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  *(v49 + 24) = 0;
  (v42[4])(v49 + v46, v43, v44);
  v50 = *(v38 + 32);
  v122 = (v38 + 32);
  v128 = v50;
  v51 = v123;
  v52 = v45;
  (v50)(v49 + v48, v123, v45);
  v53 = v131;
  v54 = sub_1E6059EAC(0, 0, v131, &unk_1E65F2168, v49);
  v55 = v119;
  *(v119 + 32) = v54;
  v127(v53, 1, 1, v126);
  v56 = v94;
  v57 = v95;
  v97(v94, v124 + v98, v95);
  v58 = v121;
  v121(v51, v130, v45);
  v59 = (v99 + 32) & ~v99;
  v60 = (v113 + v59 + v47) & ~v47;
  v61 = swift_allocObject();
  *(v61 + 16) = 0;
  *(v61 + 24) = 0;
  v102(v61 + v59, v56, v57);
  v62 = v123;
  (v128)(v61 + v60, v123, v45);
  v63 = v131;
  *(v55 + 40) = sub_1E6059EAC(0, 0, v131, &unk_1E65F2178, v61);
  v127(v63, 1, 1, v126);
  v64 = v107;
  v113 = v107[2];
  v65 = v108;
  v113(v117, v124 + v114, v108);
  v58(v62, v130, v52);
  v66 = *(v64 + 80);
  v93 = v47;
  v67 = (v66 + 32) & ~v66;
  v104 = v67;
  v68 = (v106 + v47 + v67) & ~v47;
  v106 = v47 | v66;
  v69 = swift_allocObject();
  *(v69 + 16) = 0;
  *(v69 + 24) = 0;
  v107 = v64[4];
  v70 = v69 + v67;
  v71 = v117;
  v72 = v65;
  (v107)(v70, v117, v65);
  v73 = v62;
  (v128)(v69 + v68, v62, v52);
  v74 = v131;
  v75 = sub_1E6059EAC(0, 0, v131, &unk_1E65F2188, v69);
  v76 = v119;
  *(v119 + 48) = v75;
  v127(v74, 1, 1, v126);
  v77 = v71;
  v113(v71, v124 + v114, v72);
  v78 = v130;
  v79 = v116;
  v121(v73, v130, v116);
  v80 = swift_allocObject();
  *(v80 + 16) = 0;
  *(v80 + 24) = 0;
  (v107)(&v104[v80], v77, v72);
  v81 = v73;
  (v128)(v80 + v68, v73, v79);
  v82 = v131;
  *(v76 + 56) = sub_1E6059EAC(0, 0, v131, &unk_1E65F2198, v80);
  v127(v82, 1, 1, v126);
  v84 = Description;
  v83 = v112;
  v85 = v110;
  (Description[2])(v110, v124 + v105, v112);
  v121(v81, v78, v79);
  v86 = (*(v84 + 80) + 32) & ~*(v84 + 80);
  v87 = (v109 + v93 + v86) & ~v93;
  v88 = swift_allocObject();
  *(v88 + 16) = 0;
  *(v88 + 24) = 0;
  (v84[4])(v88 + v86, v85, v83);
  (v128)(v88 + v87, v81, v79);
  v89 = sub_1E6059EAC(0, 0, v82, &unk_1E65F21A8, v88);
  v90 = v118;
  v91 = v119;
  *(v119 + 64) = v89;
  result = (*(v90 + 8))(v130, v79);
  v115[5] = v91;
  return result;
}

uint64_t sub_1E612F220(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 88) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = a3;
  v4 = sub_1E65DE3E8();
  *(v3 + 40) = v4;
  v5 = *(v4 - 8);
  *(v3 + 48) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E612F2E4, 0, 0);
}

uint64_t sub_1E612F2E4()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 88);
  v5 = sub_1E65DAE18();
  (*(v2 + 104))(v1, *MEMORY[0x1E69CAD30], v3);
  v6 = sub_1E637C87C(v1, v5);

  (*(v2 + 8))(v1, v3);
  if (v6)
  {
    v7 = *(v0 + 32);
    v8 = ContentAvailabilityService.requireSupportedDevice.getter();
    *(v0 + 64) = v9;
    v20 = (v8 + *v8);
    v10 = v8[1];
    v11 = swift_task_alloc();
    *(v0 + 72) = v11;
    *v11 = v0;
    v11[1] = sub_1E612F4E4;

    return v20();
  }

  else
  {
    v13 = *(v0 + 88);
    v14 = sub_1E65DAE38();
    if (v14 == sub_1E65DAE38())
    {
      v15 = 1;
    }

    else
    {
      v16 = *(v0 + 88);
      v17 = sub_1E65DAE38();
      v15 = v17 == sub_1E65DAE38();
    }

    v18 = *(v0 + 56);
    **(v0 + 24) = v15;

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_1E612F4E4()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1E612F670;
  }

  else
  {
    v3 = sub_1E612F5F8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E612F5F8()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 56);
  **(v0 + 24) = 1;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E612F670()
{
  v19 = v0;
  v1 = *(v0 + 64);

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 80);
  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  v4 = v2;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 80);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136446210;
    *(v0 + 16) = v8;
    v11 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v12 = sub_1E65E5CE8();
    v14 = sub_1E5DFD4B0(v12, v13, &v18);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "Failed to check for required supported device: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);
  }

  else
  {
  }

  v15 = *(v0 + 56);
  **(v0 + 24) = 0;

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1E612F85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B0, &qword_1E65EA988) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0721C0, &qword_1E65EA998);
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E612F9C8, 0, 0);
}

uint64_t sub_1E612F9C8()
{
  v1 = v0[2];
  v2 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[11] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1E612FAC4;
  v6 = v0[7];

  return v8(v6);
}

uint64_t sub_1E612FAC4()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E612FBDC, 0, 0);
}

uint64_t sub_1E612FBDC()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1E612FCB8;
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[4];

  return MEMORY[0x1EEE6D9C8](v9, 0, 0, v8);
}

uint64_t sub_1E612FCB8()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E612FDB4, 0, 0);
}

uint64_t sub_1E612FDB4()
{
  v1 = v0[4];
  v2 = sub_1E65D99E8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    sub_1E65E6058();
    v0[14] = sub_1E65E6048();
    v7 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E612FF04, v7, v6);
  }
}

uint64_t sub_1E612FF04()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E612FF88, 0, 0);
}

uint64_t sub_1E612FF88()
{
  sub_1E5FC789C(v0[4]);
  v1 = *(MEMORY[0x1E69E8678] + 4);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1E612FCB8;
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[4];

  return MEMORY[0x1EEE6D9C8](v5, 0, 0, v4);
}

uint64_t sub_1E6130038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E613016C, 0, 0);
}

uint64_t sub_1E613016C()
{
  v1 = v0[2];
  v2 = ContentAvailabilityService.makeSupportedDeviceChangedStream.getter();
  v0[10] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1E6130268;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_1E6130268()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6130380, 0, 0);
}

uint64_t sub_1E6130380()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1E613045C;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v8);
}

uint64_t sub_1E613045C()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6130558, 0, 0);
}

uint64_t sub_1E6130558()
{
  if (*(v0 + 112) == 1)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v5 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6130658, v5, v4);
  }
}

uint64_t sub_1E6130658()
{
  v1 = v0[13];
  v2 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8);
  sub_1E65E4E18();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E613045C;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v6);
}

uint64_t sub_1E6130724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6130858, 0, 0);
}

uint64_t sub_1E6130858()
{
  v1 = v0[2];
  v2 = AppStateService.makeAppWillEnterForegroundStream.getter();
  v0[10] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1E6130954;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_1E6130954()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6130A6C, 0, 0);
}

uint64_t sub_1E6130A6C()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1E6130B48;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v8);
}

uint64_t sub_1E6130B48()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6130C44, 0, 0);
}

uint64_t sub_1E6130C44()
{
  if (*(v0 + 112) == 1)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v5 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6130D44, v5, v4);
  }
}

uint64_t sub_1E6130D44()
{
  v1 = v0[13];
  v2 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8);
  sub_1E65E4E18();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E6130B48;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v6);
}

uint64_t sub_1E6130E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6130F44, 0, 0);
}

uint64_t sub_1E6130F44()
{
  v1 = v0[2];
  v2 = AppStateService.makeSignificantTimeChangeStream.getter();
  v0[10] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1E6131040;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_1E6131040()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6131158, 0, 0);
}

uint64_t sub_1E6131158()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1E6131234;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v8);
}

uint64_t sub_1E6131234()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6131330, 0, 0);
}

uint64_t sub_1E6131330()
{
  if (*(v0 + 112) == 1)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v5 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6131430, v5, v4);
  }
}

uint64_t sub_1E6131430()
{
  v1 = v0[13];
  v2 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8);
  sub_1E65E4E18();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E6131234;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v6);
}

uint64_t sub_1E61314FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6131630, 0, 0);
}

uint64_t sub_1E6131630()
{
  v1 = v0[2];
  v2 = AccountService.makeAccountChangedStream.getter();
  v0[10] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1E613172C;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_1E613172C()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6131844, 0, 0);
}

uint64_t sub_1E6131844()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1E6131920;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v8);
}

uint64_t sub_1E6131920()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6131A1C, 0, 0);
}

uint64_t sub_1E6131A1C()
{
  if (*(v0 + 112) == 1)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v5 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6131B1C, v5, v4);
  }
}

uint64_t sub_1E6131B1C()
{
  v1 = v0[13];
  v2 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8);
  sub_1E65E4E18();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E6131920;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v6);
}

uint64_t sub_1E6131BE8(uint64_t a1)
{
  Description = type metadata accessor for ContentAvailabilityService()[-1].Description;
  v5 = (Description[80] + 17) & ~Description[80];
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFA78C;

  return sub_1E612F220(a1, v6, v1 + v5);
}

uint64_t sub_1E6131CCC(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for RemoteBrowsingService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E612F85C(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6131E28(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ContentAvailabilityService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6130038(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6131F84(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AppStateService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6130724(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E61320E0(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AppStateService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6130E10(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t objectdestroy_3Tm_6(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8);
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(v1 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1E61323A0(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AccountService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074140, &qword_1E65EFAE8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E61314FC(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t RootItem.identifier.getter()
{
  v1 = v0[1];
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      return 0x686372616573;
    }

    if (v1 != 4)
    {
      if (v1 == 5)
      {
        return 0x736E616C70;
      }

      goto LABEL_12;
    }

    return 0x7478654E7075;
  }

  else
  {
    if (!v1)
    {
      return 0x65726F6C707865;
    }

    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return 0x7972617262696CLL;
      }

LABEL_12:
      MEMORY[0x1E694D7C0](*v0);
      return 0x7974696C61646F6DLL;
    }

    return 0x756F59726F66;
  }
}

uint64_t RootItem.kind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = sub_1E65DEF98();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x1E699CE90];
  if (v3 == 3)
  {
    v6 = MEMORY[0x1E699CEA0];
  }

  if (v3 == 4)
  {
    v6 = MEMORY[0x1E699CE98];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t RootItem.style.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8) - 3;
  v4 = sub_1E65DEFC8();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x1E699CEC0];
  if (v3 >= 2)
  {
    v6 = MEMORY[0x1E699CEC8];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

unint64_t RootItem.systemImageName.getter()
{
  v1 = *(v0 + 8);
  v2 = 0x697966696E67616DLL;
  v3 = 0xD000000000000013;
  v4 = 0x7261646E656C6163;
  if (v1 != 5)
  {
    v4 = 0;
  }

  if (v1 != 4)
  {
    v3 = v4;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  v5 = 0xD000000000000012;
  v6 = 0x722E657275676966;
  v7 = 0x6C676E6174636572;
  if (v1 != 2)
  {
    v7 = 0;
  }

  if (v1 != 1)
  {
    v6 = v7;
  }

  if (v1)
  {
    v5 = v6;
  }

  if (v1 <= 2)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

uint64_t RootItem.title(for:)(uint64_t a1)
{
  v3 = sub_1E65D7848();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075900, &qword_1E65F21B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v25[-v10];
  v12 = sub_1E65E5C28();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v25[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v25[-v18];
  v20 = *(v1 + 8);
  if (v20 > 2)
  {
    if (v20 == 3 || v20 == 4 || v20 == 5)
    {
      goto LABEL_10;
    }
  }

  else if (v20 <= 2)
  {
LABEL_10:
    sub_1E65E5BA8();
    (*(v13 + 56))(v11, 0, 1, v12);
    (*(v13 + 32))(v19, v11, v12);
    (*(v13 + 16))(v17, v19, v12);
    type metadata accessor for LocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = [objc_opt_self() bundleForClass_];
    (*(v4 + 16))(v7, a1, v3);
    v21 = sub_1E65E5D48();
    (*(v13 + 8))(v19, v12);
    return v21;
  }

  (*(v13 + 56))(v11, 1, 1, v12);
  sub_1E6132BD8(v11);
  return 0;
}

uint64_t sub_1E6132BD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075900, &qword_1E65F21B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6132C58@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = sub_1E65DEF98();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x1E699CE90];
  if (v3 == 3)
  {
    v6 = MEMORY[0x1E699CEA0];
  }

  if (v3 == 4)
  {
    v6 = MEMORY[0x1E699CE98];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t sub_1E6132CEC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8) - 3;
  v4 = sub_1E65DEFC8();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x1E699CEC0];
  if (v3 >= 2)
  {
    v6 = MEMORY[0x1E699CEC8];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t sub_1E6132D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_1E65D8F28();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v10 = *(*(sub_1E65D7848() - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v11 = *(*(sub_1E65E5C28() - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v12 = type metadata accessor for PageMetricsClick();
  v6[10] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v14 = sub_1E65E2DF8();
  v6[12] = v14;
  v15 = *(v14 - 8);
  v6[13] = v15;
  v16 = *(v15 + 64) + 15;
  v6[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6132F24, 0, 0);
}

uint64_t sub_1E6132F24()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v2 + 16))(v1, v0[2], v3);
  if ((*(v2 + 88))(v1, v3) == *MEMORY[0x1E699F628])
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = v0[8];
    v7 = v0[9];
    v8 = v0[6];
    v42 = v0[7];
    v43 = v0[5];
    v44 = v0[4];
    v9 = v0[3];
    v10 = sub_1E65D9D78();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    v11 = v5[5];
    v12 = *MEMORY[0x1E69CBAA0];
    v13 = sub_1E65D8C68();
    (*(*(v13 - 8) + 104))(v4 + v11, v12, v13);
    v14 = v5[6];
    v15 = sub_1E65D74E8();
    (*(*(v15 - 8) + 56))(v4 + v14, 1, 1, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
    v16 = *(sub_1E65D86A8() - 8);
    v17 = *(v16 + 72);
    v41 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1E65EA670;
    sub_1E65E2908();
    sub_1E65E28C8();
    sub_1E65E5BA8();
    type metadata accessor for LocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = [objc_opt_self() bundleForClass_];
    sub_1E65E2DC8();
    sub_1E65E5D48();
    v20 = *MEMORY[0x1E69CBCC8];
    v21 = *(v8 + 104);
    v21(v42, v20, v43);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    v22 = v5[8];
    v23 = sub_1E65DA208();
    (*(*(v23 - 8) + 56))(v4 + v22, 1, 1, v23);
    v24 = sub_1E65E2908();
    v26 = v25;
    v21(v4 + v5[14], v20, v43);
    v27 = v5[15];
    v28 = sub_1E65D9908();
    (*(*(v28 - 8) + 56))(v4 + v27, 1, 1, v28);
    v29 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    *(v4 + v5[7]) = v40;
    v30 = (v4 + v5[9]);
    *v30 = 0;
    v30[1] = 0;
    v31 = (v4 + v5[10]);
    *v31 = 0;
    v31[1] = 0;
    *(v4 + v5[11]) = v29;
    v32 = (v4 + v5[12]);
    *v32 = 0;
    v32[1] = 0;
    v33 = (v4 + v5[13]);
    *v33 = v24;
    v33[1] = v26;
    v34 = *(v44 + 48);
    v45 = (v34 + *v34);
    v35 = v34[1];
    v36 = swift_task_alloc();
    v0[15] = v36;
    *v36 = v0;
    v36[1] = sub_1E6133458;
    v37 = v0[11];

    return v45(v37);
  }

  else
  {
    v39 = v0[12];

    return sub_1E65E6C08();
  }
}

uint64_t sub_1E6133458()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1E6133618;
  }

  else
  {
    v3 = sub_1E613356C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E613356C()
{
  v1 = v0[14];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  sub_1E5FC0990(v0[11]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6133618()
{
  v1 = v0[14];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  sub_1E5FC0990(v0[11]);

  v5 = v0[1];
  v6 = v0[16];

  return v5();
}

uint64_t sub_1E61336C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = sub_1E65D8998();
  v4 = *(v70 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v70);
  v68 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v69 = &v50 - v8;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0730C8, &qword_1E65ECF20);
  v9 = *(v67 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v71 = &v50 - v11;
  v75 = sub_1E65DAC98();
  v12 = *(v75 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v75);
  v73 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v50 - v16;
  v76 = sub_1E65DD1A8();
  v17 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76);
  v74 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E65DA0B8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v55 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075910, &qword_1E65F2248);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v54 = &v50 - v25;
  v26 = sub_1E65D9D48();
  v27 = *(v26 + 16);
  v56 = a1;
  if (v27)
  {
    v50 = v20;
    v51 = v19;
    v53 = a2;
    v78 = MEMORY[0x1E69E7CC0];
    v28 = v26;
    sub_1E601BEA4(0, v27, 0);
    result = v28;
    v30 = 0;
    v31 = v78;
    v62 = v28 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v60 = (v12 + 16);
    v61 = v4 + 16;
    v52 = v12;
    v66 = v4;
    v58 = v4 + 8;
    v59 = (v12 + 8);
    v57 = v9 + 32;
    v64 = v28;
    v65 = v9;
    v63 = v27;
    v32 = v69;
    while (v30 < *(result + 16))
    {
      v33 = v66;
      v34 = *(v66 + 16);
      v35 = v70;
      v34(v32, v62 + *(v66 + 72) * v30, v70);
      v77 = v31;
      v36 = v68;
      v34(v68, v32, v35);
      v37 = v72;
      sub_1E65D8978();
      v38 = v73;
      v39 = v75;
      (*v60)(v73, v37, v75);
      sub_1E602A934(v38, v74);
      (*v59)(v37, v39);
      sub_1E65D8988();
      v40 = sub_1E65D8968();
      sub_1E611CCC0(v40);

      sub_1E6134630(&qword_1ED075918, MEMORY[0x1E699EF60]);
      v41 = v71;
      sub_1E65DC328();
      v42 = *(v33 + 8);
      v31 = v77;
      v42(v36, v35);
      v42(v32, v35);
      v78 = v31;
      v44 = *(v31 + 16);
      v43 = *(v31 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_1E601BEA4(v43 > 1, v44 + 1, 1);
        v41 = v71;
        v31 = v78;
      }

      ++v30;
      *(v31 + 16) = v44 + 1;
      (*(v65 + 32))(v31 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v44, v41, v67);
      result = v64;
      if (v63 == v30)
      {

        v12 = v52;
        v19 = v51;
        v20 = v50;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_9:
    v45 = v55;
    sub_1E65D9D38();
    v46 = v72;
    sub_1E65DA098();
    v47 = v73;
    v48 = v75;
    (*(v12 + 16))(v73, v46, v75);
    sub_1E602A934(v47, v74);
    (*(v12 + 8))(v46, v48);
    sub_1E65DA0A8();
    sub_1E6134630(&qword_1ED075918, MEMORY[0x1E699EF60]);
    sub_1E65DC438();
    (*(v20 + 8))(v45, v19);
    sub_1E65DC3F8();
    v49 = sub_1E65D9D58();
    return (*(*(v49 - 8) + 8))(v56, v49);
  }

  return result;
}

uint64_t sub_1E6133E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = sub_1E65D8998();
  v4 = *(v65 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v65);
  v63 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v64 = v47 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073100, &qword_1E65ECF58);
  v9 = *(v62 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v66 = v47 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v72 = v47 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v69 = v47 - v17;
  v70 = sub_1E65DAC98();
  v18 = *(v70 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v67 = v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1E65E3418();
  v21 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71);
  v68 = v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1E65DA0B8();
  v51 = *(v52 - 8);
  v23 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v50 = v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075920, &qword_1E65F2250);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v49 = v47 - v27;
  v28 = sub_1E65D9D48();
  v29 = *(v28 + 16);
  if (v29)
  {
    v47[1] = a2;
    v48 = a1;
    v74 = MEMORY[0x1E69E7CC0];
    v30 = v28;
    sub_1E601CF88(0, v29, 0);
    result = v30;
    v32 = 0;
    v33 = v74;
    v57 = v30 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v55 = (v18 + 8);
    v56 = v4 + 16;
    v54 = v4 + 8;
    v53 = v9 + 32;
    v60 = v9;
    v61 = v18;
    v58 = v29;
    v59 = v30;
    while (v32 < *(result + 16))
    {
      v34 = *(v4 + 16);
      v36 = v64;
      v35 = v65;
      v34(v64, v57 + *(v4 + 72) * v32, v65);
      v37 = v63;
      v34(v63, v36, v35);
      v38 = v67;
      sub_1E65D8978();
      sub_1E65DAC38();
      sub_1E65DC2D8();
      sub_1E65DAC78();
      sub_1E65D74C8();

      sub_1E65DAC88();
      v73 = v33;
      sub_1E65E3408();
      (*v55)(v38, v70);
      sub_1E65D8988();
      v39 = sub_1E65D8968();
      sub_1E611CCC0(v39);

      sub_1E6134630(&qword_1ED075928, MEMORY[0x1E699EC58]);
      v40 = v66;
      v33 = v73;
      sub_1E65DC328();
      v41 = *(v4 + 8);
      v41(v37, v35);
      v41(v36, v35);
      v74 = v33;
      v43 = *(v33 + 16);
      v42 = *(v33 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_1E601CF88(v42 > 1, v43 + 1, 1);
        v40 = v66;
        v33 = v74;
      }

      ++v32;
      *(v33 + 16) = v43 + 1;
      (*(v60 + 32))(v33 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v43, v40, v62);
      result = v59;
      v18 = v61;
      if (v58 == v32)
      {

        a1 = v48;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_9:
    v44 = v50;
    sub_1E65D9D38();
    v45 = v67;
    sub_1E65DA098();
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    sub_1E65DAC88();
    sub_1E65E3408();
    (*(v18 + 8))(v45, v70);
    sub_1E65DA0A8();
    sub_1E6134630(&qword_1ED075928, MEMORY[0x1E699EC58]);
    sub_1E65DC438();
    (*(v51 + 8))(v44, v52);
    sub_1E65DC3F8();
    v46 = sub_1E65D9D58();
    return (*(*(v46 - 8) + 8))(a1, v46);
  }

  return result;
}

uint64_t sub_1E6134630(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t RootItem.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a1 == 0x65726F6C707865 && a2 == 0xE700000000000000;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    *a3 = 0;
    a3[1] = 0;
    return result;
  }

  if (a1 == 0x756F59726F66 && a2 == 0xE600000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = xmmword_1E65EADF0;
LABEL_11:
    *a3 = v8;
    return result;
  }

  if (a1 == 0x7972617262696CLL && a2 == 0xE700000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = xmmword_1E65EADE0;
    goto LABEL_11;
  }

  if (a1 == 0x686372616573 && a2 == 0xE600000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = xmmword_1E65EADD0;
    goto LABEL_11;
  }

  if (a1 == 0x7478654E7075 && a2 == 0xE600000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = xmmword_1E65EADC0;
    goto LABEL_11;
  }

  if (a1 == 0x736E616C70 && a2 == 0xE500000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = xmmword_1E65EADB0;
    goto LABEL_11;
  }

  if ((sub_1E65E5E28() & 1) == 0)
  {

    v8 = xmmword_1E65EAE00;
    goto LABEL_11;
  }

  v9 = sub_1E65E5D88();
  v10 = sub_1E6134D3C(v9, a1, a2);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = MEMORY[0x1E694D730](v10, v12, v14, v16);
  v19 = v18;

  *a3 = v17;
  a3[1] = v19;
  return result;
}

uint64_t sub_1E61349B0@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a1;
  v7 = *a2;
  *a3 = *a1;
  a3[1] = v7;
  return sub_1E5E05374(v6, v7);
}

uint64_t sub_1E6134A18(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  v5 = *a1;
  v6 = a1[1];
  swift_beginAccess();
  v7 = *a2;
  v8 = *a3;
  *a2 = v5;
  *a3 = v6;
  return sub_1E5E0476C(v7, v8);
}

uint64_t sub_1E6134AD4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unint64_t *a6)
{
  v8 = *a1;
  v9 = a1[1];
  swift_beginAccess();
  v10 = *a5;
  v11 = *a6;
  *a5 = v8;
  *a6 = v9;
  sub_1E5E05374(v8, v9);
  return sub_1E5E0476C(v10, v11);
}

uint64_t sub_1E6134C00()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E65E6D28();
  RootItem.id.getter();
  sub_1E65E5D78();

  return sub_1E65E6D78();
}

uint64_t sub_1E6134C68()
{
  v2 = *v0;
  RootItem.id.getter();
  sub_1E65E5D78();
}

uint64_t sub_1E6134CCC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E65E6D28();
  RootItem.id.getter();
  sub_1E65E5D78();

  return sub_1E65E6D78();
}

unint64_t sub_1E6134D3C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1E65E5D98();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1E65E5E68();
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X3>, unint64_t *a2@<X4>, uint64_t *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a1;
  v7 = *a2;
  *a3 = *a1;
  a3[1] = v7;
  return sub_1E5E05374(v6, v7);
}

void *sub_1E6134E54(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1E6134E74()
{
  result = qword_1ED075968;
  if (!qword_1ED075968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075968);
  }

  return result;
}

uint64_t sub_1E6134EF4()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_1E65E3B68();
  v0[4] = __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v3 = OBJC_IVAR____TtC10Blackbeard14AppCoordinator_legacyEngagementPresentationEnabledOverride;
  v0[5] = OBJC_IVAR____TtC10Blackbeard14AppCoordinator_legacyEngagementPresentationEnabledOverride;
  *(v1 + v3) = 0;
  v4 = *(v1 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_engagementMessagePresenter);
  v5 = *(v1 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_rootViewController);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_1E6135040;

  return sub_1E6031D3C(v5);
}

uint64_t sub_1E6135040()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6135174, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E6135174()
{
  v17 = v0;
  v1 = v0[7];
  v2 = v0[4];
  *(v0[3] + v0[5]) = 1;
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6328();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    v0[2] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v10 = sub_1E65E5CE8();
    v12 = sub_1E5DFD4B0(v10, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Unable to present engagement message: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E694F1C0](v8, -1, -1);
    MEMORY[0x1E694F1C0](v7, -1, -1);
  }

  else
  {
    v13 = v0[7];
  }

  v14 = v0[1];

  return v14();
}

uint64_t AppCoordinator.allowsModalMessageDisplay.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A30, &qword_1E65EEA70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v30 - v4;
  v6 = type metadata accessor for NavigationControllerRoutingContext();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (v0 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router);
  v12 = *(*__swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router), *(v0 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router + 24)) + OBJC_IVAR____TtC10Blackbeard9AppRouter_composer);
  swift_getKeyPath();

  sub_1E65E4EC8();

  v13 = v31;
  if (v31 == 6)
  {
    goto LABEL_4;
  }

  v14 = v30;
  v15 = __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v30 = v14;
  v31 = v13;
  v16 = *v15;
  sub_1E6335B2C(&v30, v5);
  sub_1E5E07DA0(v14, v13);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1E6135780(v5);
LABEL_4:
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v17 = sub_1E65E3B68();
    __swift_project_value_buffer(v17, qword_1EE2EA2A0);
    v18 = sub_1E65E3B48();
    v19 = sub_1E65E6338();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1E5DE9000, v18, v19, "No Routing Context, not allowing modal message display", v20, 2u);
      MEMORY[0x1E694F1C0](v20, -1, -1);
    }

    return 0;
  }

  sub_1E61357E8(v5, v10);
  v22 = [*v10 viewControllers];
  sub_1E5DEF094();
  v23 = sub_1E65E5F18();

  if (v23 >> 62)
  {
    v24 = sub_1E65E67C8();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v24 > 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = *(v1 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_legacyEngagementPresentationEnabledOverride);
  }

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v25 = sub_1E65E3B68();
  __swift_project_value_buffer(v25, qword_1EE2EA2A0);
  v26 = sub_1E65E3B48();
  v27 = sub_1E65E6338();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 67109120;
    *(v28 + 4) = v21;
    _os_log_impl(&dword_1E5DE9000, v26, v27, "Allows Modal Message Display: %{BOOL}d", v28, 8u);
    MEMORY[0x1E694F1C0](v28, -1, -1);
  }

  sub_1E613584C(v10);
  return v21;
}

void *sub_1E613574C()
{
  v1 = *(v0 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_rootViewController);
  v2 = v1;
  return v1;
}

uint64_t sub_1E6135780(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A30, &qword_1E65EEA70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E61357E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationControllerRoutingContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E613584C(uint64_t a1)
{
  v2 = type metadata accessor for NavigationControllerRoutingContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E61358C0(void *a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  v71 = a5;
  v67 = a4;
  LODWORD(v68) = a3;
  v75 = a2;
  v6 = sub_1E65D76F8();
  v64 = *(v6 - 8);
  v65 = v6;
  v66 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8);
  v61 = *(v8 - 8);
  v77 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v74 = &v56 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077DE0, &unk_1E65FAB60);
  v72 = *(v10 - 8);
  v73 = v10;
  v11 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v56 - v12;
  v13 = type metadata accessor for AppComposer();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075970, &qword_1E65F2460);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077DF0, &unk_1E65FAB70);
  v70 = *(v76 - 8);
  v19 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v62 = &v56 - v20;
  v69 = *a1;
  sub_1E5E1DEAC(a1, v16);
  v21 = *(v14 + 80);
  v22 = ((v21 + 16) & ~v21) + v15;
  v23 = (v21 + 16) & ~v21;
  v24 = v21 | 7;
  v25 = swift_allocObject();
  sub_1E5E1FA80(v16, v25 + v23);
  v57 = a1;
  sub_1E5E1DEAC(a1, v16);
  v58 = v22;
  v59 = v24;
  v26 = swift_allocObject();
  v60 = v23;
  sub_1E5E1FA80(v16, v26 + v23);
  sub_1E5E1DEAC(a1, v16);
  v27 = swift_allocObject();
  sub_1E5E1FA80(v16, v27 + v23);
  sub_1E604BABC();
  sub_1E65DEB88();
  sub_1E65DE8F8();
  v28 = v75;
  sub_1E5DFD1CC(v75, v74, &qword_1ED073940, &qword_1E65EDCC8);
  v30 = v63;
  v29 = v64;
  v31 = v65;
  (*(v64 + 16))(v63, v67, v65);
  v32 = *(v61 + 80);
  v33 = (v32 + 16) & ~v32;
  v34 = v33 + v77;
  v67 = v32 | 7;
  v35 = (*(v29 + 80) + v33 + v77 + 1) & ~*(v29 + 80);
  v36 = swift_allocObject();
  v37 = v74;
  sub_1E5FAB460(v74, v36 + v33, &qword_1ED073940, &qword_1E65EDCC8);
  *(v36 + v34) = v68;
  (*(v29 + 32))(v36 + v35, v30, v31);
  sub_1E5DFD1CC(v28, v37, &qword_1ED073940, &qword_1E65EDCC8);
  v38 = swift_allocObject();
  sub_1E5FAB460(v37, v38 + v33, &qword_1ED073940, &qword_1E65EDCC8);
  type metadata accessor for AppFeature();
  sub_1E61377BC(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v68 = sub_1E613739C();
  sub_1E65E4DE8();
  v39 = v56;
  sub_1E5E1DEAC(v57, v56);
  v40 = *v71;
  v41 = v71[3];
  v42 = v71[5];
  v43 = v71[9];
  v66 = v71[7];
  v67 = v43;
  v44 = v71;
  sub_1E5DFD1CC(v75, v37, &qword_1ED073940, &qword_1E65EDCC8);
  v45 = (v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  sub_1E5E1FA80(v39, v46 + v60);
  v47 = (v46 + v45);
  v48 = v44[3];
  v47[2] = v44[2];
  v47[3] = v48;
  v47[4] = v44[4];
  v49 = v44[1];
  *v47 = *v44;
  v47[1] = v49;
  sub_1E5FAB460(v37, v46 + ((v45 + v32 + 80) & ~v32), &qword_1ED073940, &qword_1E65EDCC8);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v50 = swift_allocObject();
  *(v50 + 16) = sub_1E61375D0;
  *(v50 + 24) = v46;

  v51 = v62;
  v52 = v78;
  v53 = v76;
  v54 = sub_1E65E4F08();

  (*(v72 + 8))(v52, v73);
  (*(v70 + 8))(v51, v53);
  return v54;
}

uint64_t sub_1E613609C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v57 = a3;
  v55 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  v4 = *(*(v61 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v61);
  v62 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v59 = v52 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC0, &unk_1E65F4300);
  v56 = *(v58 - 8);
  v8 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v10 = v52 - v9;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC8, &qword_1E65EC488);
  v52[0] = *(v54 - 8);
  v11 = *(v52[0] + 64);
  MEMORY[0x1EEE9AC00](v54);
  v13 = v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = v52 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = v52 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = v52 - v25;
  swift_getKeyPath();
  v60 = a1;
  sub_1E65E4EC8();

  sub_1E5FAB460(v26, v24, &unk_1ED077CC0, &unk_1E65F2610);
  v52[1] = v14;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v53 = 0;
LABEL_7:
    v28 = v62;
    goto LABEL_9;
  }

  if (!EnumCaseMultiPayload)
  {
    v53 = *v24;
    goto LABEL_7;
  }

  v28 = v62;
  if (EnumCaseMultiPayload == 1)
  {
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
    v53 = *v24;
    v30 = sub_1E65D76A8();
    (*(*(v30 - 8) + 8))(&v24[v29], v30);
  }

  else
  {
    sub_1E5DFE50C(v24, &unk_1ED077CC0, &unk_1E65F2610);
    v53 = 0;
  }

LABEL_9:
  v31 = *v55;
  swift_getKeyPath();
  sub_1E65E4EC8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8);
  sub_1E65DE488();
  v32 = v66;
  v33 = v67;
  v34 = v68;
  v63 = v66;
  v64 = v67;
  v65 = 0;
  v35 = v54;
  sub_1E65E4D78();
  sub_1E6001C2C(v32, v33, v34);
  (*(v52[0] + 8))(v13, v35);
  v36 = v58;
  sub_1E65E4C98();
  (*(v56 + 8))(v10, v36);
  sub_1E5FAB460(v21, v18, &unk_1ED077CC0, &unk_1E65F2610);
  v37 = swift_getEnumCaseMultiPayload();
  if (v37 > 2)
  {
    v40 = 0;
LABEL_15:
    v38 = v53;
    goto LABEL_17;
  }

  if (!v37)
  {
    v40 = *v18;
    goto LABEL_15;
  }

  v38 = v53;
  if (v37 == 1)
  {
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
    v40 = *v18;
    v41 = sub_1E65D76A8();
    (*(*(v41 - 8) + 8))(&v18[v39], v41);
  }

  else
  {
    sub_1E5DFE50C(v18, &unk_1ED077CC0, &unk_1E65F2610);
    v40 = 0;
  }

LABEL_17:
  swift_getKeyPath();
  v42 = v59;
  sub_1E65E4EC8();

  sub_1E5FAB460(v42, v28, &unk_1ED077CD0, &unk_1E65F42F0);
  v43 = swift_getEnumCaseMultiPayload();
  if (v43 <= 2)
  {
    if (v43)
    {
      if (v43 == 1)
      {
        v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
        v45 = *v28 | (v28[4] << 32);
        v46 = v28[5];
        v47 = sub_1E65D76A8();
        (*(*(v47 - 8) + 8))(&v28[v44], v47);
      }

      else
      {
        sub_1E5DFE50C(v28, &unk_1ED077CD0, &unk_1E65F42F0);
      }
    }

    else
    {
      v48 = *v28 | (v28[4] << 32);
      v49 = v28[5];
    }
  }

  if ((v38 & v40) == 1)
  {
    LOBYTE(v66) = 1;
    v50 = sub_1E65DE538();
  }

  else
  {
    v50 = 0;
  }

  return v50 & 1;
}

uint64_t sub_1E61366EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E5DFD1CC(a1, &v6 - v4, &unk_1ED077CD0, &unk_1E65F42F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075980, &qword_1E65F2490);
  return sub_1E65DE818();
}

uint64_t sub_1E61367AC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1E61367DC, 0, 0);
}

uint64_t sub_1E61367DC()
{
  if (*(v0 + 64))
  {
    v1 = sub_1E65DE4C8();
    sub_1E61377BC(&qword_1ED072AE8, MEMORY[0x1E699CAB0]);
    swift_allocError();
    (*(*(v1 - 8) + 104))(v2, *MEMORY[0x1E699CAA0], v1);
    swift_willThrow();
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 32);
    v6 = *(v0 + 16);
    v7 = v6 + *(type metadata accessor for AppComposer() + 20);
    v8 = v7 + *(type metadata accessor for AppEnvironment() + 36);
    v9 = AssetService.downloadAssetBundleOnCurrentDevice.getter();
    *(v0 + 40) = v10;
    v14 = (v9 + *v9);
    v11 = v9[1];
    v12 = swift_task_alloc();
    *(v0 + 48) = v12;
    *v12 = v0;
    v12[1] = sub_1E6001108;
    v13 = *(v0 + 24);

    return v14(v13, v5);
  }
}

uint64_t sub_1E61369E4(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E61367AC(a1, v1 + v5);
}

uint64_t sub_1E6136ABC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1E6136AEC, 0, 0);
}

uint64_t sub_1E6136AEC()
{
  if (*(v0 + 64))
  {
    v1 = sub_1E65DE4C8();
    sub_1E61377BC(&qword_1ED072AE8, MEMORY[0x1E699CAB0]);
    swift_allocError();
    (*(*(v1 - 8) + 104))(v2, *MEMORY[0x1E699CAA0], v1);
    swift_willThrow();
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 32);
    v6 = *(v0 + 16);
    v7 = v6 + *(type metadata accessor for AppComposer() + 20);
    v8 = v7 + *(type metadata accessor for AppEnvironment() + 36);
    v9 = AssetService.cancelAssetBundleOnCurrentDevice.getter();
    *(v0 + 40) = v10;
    v14 = (v9 + *v9);
    v11 = v9[1];
    v12 = swift_task_alloc();
    *(v0 + 48) = v12;
    *v12 = v0;
    v12[1] = sub_1E6136CF4;
    v13 = *(v0 + 24);

    return v14(v13, v5);
  }
}

uint64_t sub_1E6136CF4()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1E6137804;
  }

  else
  {
    v3 = sub_1E5F9F084;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6136E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8) - 8);
  v6 = ((*(v5 + 80) + 16) & ~*(v5 + 80)) + *(v5 + 64);
  v7 = *(sub_1E65D76F8() - 8);
  return sub_1E6386E54(a1, *(v2 + v6), v2 + ((v6 + *(v7 + 80) + 1) & ~*(v7 + 80)), a2);
}

uint64_t sub_1E6136F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a2;
  v32 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AB0, &qword_1E65EC480);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v44 = &v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AB8, &unk_1E65F84D0);
  v41 = *(v14 - 8);
  v15 = *(v41 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v35 = &v31 - v19;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8);
  v40 = a3;
  sub_1E65DE488();
  v37 = v52;
  v38 = v51;
  v36 = v53;
  sub_1E65DE488();
  v21 = v48;
  v20 = v49;
  v22 = v50;
  v42 = type metadata accessor for AppState();
  v34 = *(v42 + 116);
  v45 = v21;
  v46 = v20;
  v47 = v22;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AD8, &unk_1E65F84F0);
  sub_1E65E4D78();
  sub_1E6001C2C(v21, v20, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075980, &qword_1E65F2490);
  sub_1E65DE808();
  sub_1E5DFD1CC(v13, v11, &unk_1ED077CD0, &unk_1E65F42F0);
  sub_1E65E4C78();
  sub_1E5DF23E0();
  sub_1E65E4C88();
  sub_1E5DFE50C(v13, &unk_1ED077CD0, &unk_1E65F42F0);
  (*(v41 + 8))(v18, v14);
  v48 = v38;
  v49 = v37;
  v50 = v36;
  v23 = v32;
  sub_1E65E4D88();
  sub_1E65DE488();
  v24 = v51;
  v25 = v52;
  v26 = v53;
  v27 = v44;
  sub_1E65DE848();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
  (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
  v29 = v23 + *(v42 + 192) + 64;
  return sub_1E64076CC(v27, v24, v25, v26);
}

uint64_t sub_1E6137310(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E6136F20(a1, a2, v6);
}

unint64_t sub_1E613739C()
{
  result = qword_1ED075978;
  if (!qword_1ED075978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077DF0, &unk_1E65FAB70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075978);
  }

  return result;
}

uint64_t sub_1E6137400(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23 - v8;
  v25 = *a1;
  v24 = *(a1 + 2);
  HIDWORD(v23) = *(a1 + 6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8);
  sub_1E65DE488();
  v10 = v26;
  v11 = v27;
  v12 = sub_1E65E60A8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = *a4;
  v14 = a4[3];
  v15 = a4[5];
  v16 = a4[7];
  v17 = a4[9];
  v18 = swift_allocObject();
  v19 = *a4;
  *(v18 + 72) = *(a4 + 1);
  v20 = *(a4 + 3);
  *(v18 + 88) = *(a4 + 2);
  *(v18 + 104) = v20;
  *(v18 + 120) = *(a4 + 4);
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  v21 = v25;
  *(v18 + 36) = v24;
  *(v18 + 32) = v21;
  *(v18 + 38) = BYTE4(v23);
  *(v18 + 40) = v10;
  *(v18 + 48) = v11;
  *(v18 + 56) = v19;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v9, &unk_1E65F2488, v18);
}

uint64_t sub_1E61375D0(unsigned int *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8) - 8);
  v9 = v2 + ((v7 + *(v8 + 80) + 80) & ~*(v8 + 80));

  return sub_1E6137400(a1, a2, v2 + v6, (v2 + v7));
}

uint64_t sub_1E61376D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32) | (*(v1 + 36) << 32) | (*(v1 + 38) << 48);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E621BC24(a1, v4, v5, v6, v7, v8, v1 + 56);
}

uint64_t sub_1E61377BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E6137808(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(a1 + 24);
    swift_getObjectType();
    sub_1E65DF028();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E613786C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppComposer();
  v5 = (a1 + v4[9]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(a1 + v4[5] + 8);
  sub_1E613798C(a1 + v4[10], &v15);
  sub_1E5DF650C(a2, &v16);
  v13[0] = v6;
  v13[1] = v7;
  v14 = v8;
  LODWORD(a2) = *(type metadata accessor for AppEnvironment() + 68);
  sub_1E5FA9D34(v6, v7);
  QueueView = InteropService.makeUpNextQueueViewController.getter();
  v12[3] = &type metadata for CatalogPageRoutingContextNavigator;
  v12[4] = sub_1E61379FC();
  v12[0] = swift_allocObject();
  sub_1E6137A50(v13, v12[0] + 16);
  v10 = QueueView(v12, v6, v7);

  sub_1E6137AAC(v13);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v10;
}

uint64_t sub_1E613798C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED074320, &unk_1E65EA730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E61379FC()
{
  result = qword_1ED077840;
  if (!qword_1ED077840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077840);
  }

  return result;
}

uint64_t sub_1E6137B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AppComposer();
  v9 = (a1 + v8[9]);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(a1 + v8[5] + 8);
  sub_1E613798C(a1 + v8[10], &v19);
  sub_1E5DF650C(a4, &v20);
  v17[0] = v10;
  v17[1] = v11;
  v18 = v12;
  LODWORD(a4) = *(type metadata accessor for AppEnvironment() + 68);
  sub_1E5FA9D34(v10, v11);
  v13 = InteropService.makeModalityDetailViewControllerWithIdentifier.getter();
  v16[3] = &type metadata for CatalogPageRoutingContextNavigator;
  v16[4] = sub_1E61379FC();
  v16[0] = swift_allocObject();
  sub_1E6137A50(v17, v16[0] + 16);
  v14 = v13(a2, a3, v16, v10, v11);

  sub_1E6137AAC(v17);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v14;
}

uint64_t sub_1E6137C68@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v52 = a2;
  v49 = a1;
  v57 = a3;
  v5 = type metadata accessor for AppComposer();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v46 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v46 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v46 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = v46 - v18;
  v56 = sub_1E65DF4A8();
  v54 = *(v56 - 8);
  v55 = *(v54 + 64);
  v20 = MEMORY[0x1EEE9AC00](v56);
  v53 = v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v58 = v46 - v22;
  v50 = v19;
  sub_1E5E1DEAC(v3, v19);
  v23 = *(v6 + 80);
  v24 = (v23 + 16) & ~v23;
  v25 = v23 | 7;
  v48 = swift_allocObject();
  sub_1E5E1E1E8(v19, v48 + v24, type metadata accessor for AppComposer);
  sub_1E5E1DEAC(v4, v17);
  v47 = swift_allocObject();
  sub_1E5E1E1E8(v17, v47 + v24, type metadata accessor for AppComposer);
  sub_1E5E1DEAC(v4, v14);
  v26 = swift_allocObject();
  sub_1E5E1E1E8(v14, v26 + v24, type metadata accessor for AppComposer);
  sub_1E5E1DEAC(v4, v11);
  v46[1] = v25;
  v27 = swift_allocObject();
  sub_1E5E1E1E8(v11, v27 + v24, type metadata accessor for AppComposer);
  sub_1E5DF650C(v52, v59);
  v28 = swift_allocObject();
  sub_1E5DF599C(v59, v28 + 16);
  v29 = v51;
  sub_1E5E1DEAC(v4, v51);
  v30 = swift_allocObject();
  sub_1E5E1E1E8(v29, v30 + v24, type metadata accessor for AppComposer);
  v31 = v58;
  sub_1E65DF498();
  v32 = v50;
  sub_1E5E1DEAC(v4, v50);
  v33 = v53;
  v34 = v54;
  v35 = v56;
  (*(v54 + 16))(v53, v31, v56);
  v36 = v49;
  v46[0] = *v49;
  v37 = v49[5];
  v47 = v49[3];
  v48 = v37;
  v38 = v49[9];
  v51 = v49[7];
  v52 = v38;
  v39 = (v24 + v7 + *(v34 + 80)) & ~*(v34 + 80);
  v40 = (v55 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  sub_1E5E1E1E8(v32, v41 + v24, type metadata accessor for AppComposer);
  (*(v34 + 32))(v41 + v39, v33, v35);
  v42 = (v41 + v40);
  v43 = v36[3];
  v42[2] = v36[2];
  v42[3] = v43;
  v42[4] = v36[4];
  v44 = v36[1];
  *v42 = *v36;
  v42[1] = v44;
  swift_unknownObjectRetain();

  sub_1E65DF298();
  return (*(v34 + 8))(v58, v35);
}

uint64_t sub_1E6138194(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074130, &qword_1E65EFAA8);
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6138260, 0, 0);
}

uint64_t sub_1E6138260()
{
  v1 = v0[5];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 44);
  v4 = BookmarkService.makeBookmarkUpdatedStream.getter();
  v0[9] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_1E613837C;
  v8 = v0[8];

  return v10(v8);
}

uint64_t sub_1E613837C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6138494, 0, 0);
}

uint64_t sub_1E6138494()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[4];
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0759C8, &qword_1E65F25F8);
  v5 = sub_1E5FED46C(&qword_1ED0759D0, &qword_1ED074130, &qword_1E65EFAA8);
  v0[2] = v3;
  v0[3] = v5;
  v4[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_1E65E6188();
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E61385BC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6138194(a1, v1 + v5);
}

uint64_t sub_1E6138698(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E61386B8, 0, 0);
}

uint64_t sub_1E61386B8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v2 + *(type metadata accessor for AppComposer() + 20);
  v4 = v3 + *(type metadata accessor for AppEnvironment() + 48);
  v5 = CatalogService.makeCatalogUpdatedStream.getter();
  v0[4] = v6;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v11 = (v5 + *v5);
  v8 = v5[1];
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_1E6138840;

  return v11(boxed_opaque_existential_1);
}

uint64_t sub_1E6138840()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1E5FE4FD8;
  }

  else
  {
    v3 = sub_1E5FA1DB4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6138954(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6138698(a1, v1 + v5);
}

uint64_t sub_1E6138A30(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for AppComposer();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CF0, &qword_1E65EECD8);
  v2[8] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6138B34, 0, 0);
}

uint64_t sub_1E6138B34()
{
  v1 = v0[3];
  v2 = *(v0[4] + 20);
  v3 = v1 + *(type metadata accessor for AppEnvironment() + 36) + v2;
  v4 = AssetService.makeAssetBundleUpdatedStream.getter();
  v0[10] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_1E6138C4C;
  v8 = v0[9];

  return v10(v8);
}

uint64_t sub_1E6138C4C()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1E6138F18;
  }

  else
  {
    v4 = sub_1E6138D7C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E6138D7C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[5];
  v5 = v0[2];
  sub_1E5E1DEAC(v0[3], v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1E5E1E1E8(v3, v7 + v6, type metadata accessor for AppComposer);
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0759B8, &qword_1E65F25F0);
  v5[4] = sub_1E5FED46C(&qword_1ED0759C0, &qword_1ED0759B8, &qword_1E65F25F0);
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_1E5FED46C(&qword_1EE2D47C8, &qword_1ED073CF0, &qword_1E65EECD8);
  sub_1E65E6BB8();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E6138F18()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_1E6138F88(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6138A30(a1, v1 + v5);
}

uint64_t sub_1E6139064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1E6139084, 0, 0);
}

uint64_t sub_1E6139084()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 36);
  v4 = AssetService.queryCompletedAssetBundleCountOnCurrentDevice.getter();
  v0[4] = v5;
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1E6139198;

  return v9();
}

uint64_t sub_1E6139198(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_1E61392F4;
  }

  else
  {
    v8 = *(v4 + 32);

    *(v4 + 56) = a1;
    v7 = sub_1E61392C8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E61392C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48) != 0;
  *v1 = *(v0 + 56);
  *(v1 + 8) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_1E61392F4()
{
  v1 = v0[4];

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  v4 = v2;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[6];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "[LibraryComposer] Failed querying asset bundle count on current device with error: %@", v9, 0xCu);
    sub_1E5DFE50C(v10, &unk_1ED072130, &qword_1E65EA840);
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[2];
  v14 = v0[6] != 0;
  *v13 = 0;
  *(v13 + 8) = v14;
  v15 = v0[1];

  return v15();
}

uint64_t sub_1E61394B8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for AppComposer();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075998, &qword_1E65F25C0);
  v2[8] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61395BC, 0, 0);
}

uint64_t sub_1E61395BC()
{
  v1 = v0[3];
  v2 = *(v0[4] + 20);
  v3 = v1 + *(type metadata accessor for AppEnvironment() + 44) + v2;
  v4 = BookmarkService.makePlaylistUpdatedStream.getter();
  v0[10] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_1E61396D4;
  v8 = v0[9];

  return v10(v8);
}

uint64_t sub_1E61396D4()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E61397EC, 0, 0);
}

uint64_t sub_1E61397EC()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[5];
  v5 = v0[2];
  sub_1E5E1DEAC(v0[3], v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1E5E1E1E8(v3, v7 + v6, type metadata accessor for AppComposer);
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0759A0, &qword_1E65F25D8);
  v5[4] = sub_1E5FED46C(&qword_1ED0759A8, &qword_1ED0759A0, &qword_1E65F25D8);
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_1E5FED46C(&qword_1ED0759B0, &qword_1ED075998, &qword_1E65F25C0);
  sub_1E65E6BB8();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E6139988(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E61394B8(a1, v1 + v5);
}

uint64_t sub_1E6139A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1E6139A84, 0, 0);
}

uint64_t sub_1E6139A84()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 44);
  v4 = BookmarkService.queryPlaylistCount.getter();
  v0[4] = v5;
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1E6139B98;

  return v9();
}

uint64_t sub_1E6139B98(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_1E6139CC8;
  }

  else
  {
    v8 = *(v4 + 32);

    *(v4 + 56) = a1;
    v7 = sub_1E613BA24;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E6139CC8()
{
  v1 = v0[4];

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  v4 = v2;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[6];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "[LibraryComposer] Failed querying playlist count with error: %@", v9, 0xCu);
    sub_1E5DFE50C(v10, &unk_1ED072130, &qword_1E65EA840);
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[2];
  v14 = v0[6] != 0;
  *v13 = 0;
  *(v13 + 8) = v14;
  v15 = v0[1];

  return v15();
}

uint64_t sub_1E6139E8C(char a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 73) = a1;
  v3 = type metadata accessor for RouteSource(0);
  *(v2 + 24) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 32) = swift_task_alloc();
  v5 = type metadata accessor for RouteDestination();
  *(v2 + 40) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6139F54, 0, 0);
}

uint64_t sub_1E6139F54()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = *(v0 + 73);
  v8 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v8);
  swift_storeEnumTagMultiPayload();
  *v1 = v6;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  sub_1E5E1E1E8(v3, &v1[*(v2 + 20)], type metadata accessor for RouteSource);
  *&v1[*(v2 + 24)] = MEMORY[0x1E69E7CD0];
  sub_1E600F5B0((v0 + 72));
  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  *v9 = v0;
  v9[1] = sub_1E613A0A4;
  v10 = *(v0 + 48);

  return RoutingContext.appendDestination(_:priority:)(v10, (v0 + 72), v8, v7);
}

uint64_t sub_1E613A0A4()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *v1;
  v4[8] = v0;

  sub_1E60111F8(v3);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E613A218, 0, 0);
  }

  else
  {
    v5 = v4[6];
    v6 = v4[4];

    v7 = v4[1];

    return v7();
  }
}

uint64_t sub_1E613A218()
{
  v1 = v0[6];
  v2 = v0[4];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_1E613A288(char a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6139E8C(a1, v1 + 16);
}

uint64_t sub_1E613A320(char a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer() + 20);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E60ABB70;

  return sub_1E613A4A8(a1, a2 + v5);
}

uint64_t sub_1E613A3D0(char a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5FE99E8;

  return sub_1E613A320(a1, v1 + v5);
}

uint64_t sub_1E613A4A8(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 104) = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072910, &qword_1E65EC030);
  *(v3 + 32) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072918, &qword_1E65EC038);
  *(v3 + 56) = v6;
  v7 = *(v6 - 8);
  *(v3 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E613A5C0, 0, 0);
}

uint64_t sub_1E613A5C0()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = **(v0 + 24);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  (*(v2 + 8))(v1, v3);
  sub_1E613B7EC(v4, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v11 = **(v0 + 40);
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v9 = *(v0 + 40);
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072930, &qword_1E65EC070) + 48);
      v11 = *v9;
      v12 = sub_1E65D76A8();
      (*(*(v12 - 8) + 8))(v9 + v10, v12);
      goto LABEL_8;
    }

    sub_1E5DFE50C(*(v0 + 40), &qword_1ED072910, &qword_1E65EC030);
  }

  v11 = MEMORY[0x1E69E7CD0];
LABEL_8:
  *(v0 + 80) = v11;
  v13 = swift_task_alloc();
  *(v0 + 88) = v13;
  *v13 = v0;
  v13[1] = sub_1E613A784;
  v14 = *(v0 + 16);
  v15 = *(v0 + 104);

  return sub_1E62305C8(v11, v14, v15);
}

uint64_t sub_1E613A784(uint64_t a1)
{
  v4 = *(*v2 + 88);
  v5 = *v2;
  v5[12] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E613A8F4, 0, 0);
  }

  else
  {
    v7 = v5[9];
    v6 = v5[10];
    v8 = v5[5];
    v9 = v5[6];

    v10 = v5[1];

    return v10(a1);
  }
}

uint64_t sub_1E613A8F4()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[5];
  v3 = v0[6];

  v5 = v0[1];
  v6 = v0[12];

  return v5();
}

uint64_t sub_1E613A97C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for AppComposer();
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v38 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075988, &qword_1E65F2588);
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v35 - v10;
  v11 = sub_1E65DF4A8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1E65DF348();
  v42 = *(v36 - 8);
  v16 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *a1;
  (*(v12 + 16))(v15, a2, v11);
  sub_1E65DF338();
  type metadata accessor for AppFeature();
  sub_1E613B47C(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v35 = sub_1E613B47C(&qword_1ED075990, MEMORY[0x1E699E5E0]);
  sub_1E65E4DE8();
  v18 = v38;
  sub_1E5E1DEAC(a1, v38);
  v19 = *a3;
  v20 = a3[3];
  v21 = a3[5];
  v22 = a3[7];
  v23 = a3[9];
  v24 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v25 = swift_allocObject();
  sub_1E5E1E1E8(v18, v25 + v24, type metadata accessor for AppComposer);
  v26 = (v25 + ((v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  v27 = *(a3 + 3);
  v26[2] = *(a3 + 2);
  v26[3] = v27;
  v26[4] = *(a3 + 4);
  v28 = *(a3 + 1);
  *v26 = *a3;
  v26[1] = v28;
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1E613B63C;
  *(v29 + 24) = v25;

  v30 = v39;
  v32 = v36;
  v31 = v37;
  v33 = sub_1E65E4F08();

  (*(v43 + 8))(v31, v44);
  (*(v42 + 8))(v30, v32);
  return v33;
}

uint64_t sub_1E613AE24()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1E65DF4A8() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E613A97C((v0 + v2), v0 + v5, v6);
}

uint64_t sub_1E613AF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072910, &qword_1E65EC030);
  v3 = *(*(v42 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v42);
  v43 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - v13;
  v15 = sub_1E65D7848();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E65E07B8();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = sub_1E65DF328();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = type metadata accessor for AppState();
  v25 = v24[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0668();
  sub_1E65DF318();
  v26 = v24[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v14);
  sub_1E5DFE50C(v10, &qword_1ED071F78, &unk_1E65EA3F0);
  v27 = *(v16 + 48);
  if (v27(v14, 1, v15) == 1)
  {
    sub_1E65D77C8();
    if (v27(v14, 1, v15) != 1)
    {
      sub_1E5DFE50C(v14, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
  }

  v28 = a1 + v24[45];
  v29 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BD8, &qword_1E65F10B0) + 28);
  sub_1E65DF5A8();
  v30 = *(a1 + v24[44] + 8);
  v31 = v24[10];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072918, &qword_1E65EC038);
  v32 = v41;
  sub_1E65E4C98();
  v33 = v43;
  sub_1E613B7EC(v32, v43);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_11;
  }

  if (!EnumCaseMultiPayload)
  {
    v36 = *v33;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5DFE50C(v33, &qword_1ED072910, &qword_1E65EC030);
LABEL_11:
    v36 = MEMORY[0x1E69E7CD0];
    goto LABEL_12;
  }

  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072930, &qword_1E65EC070) + 48);
  v36 = *v33;
  v37 = sub_1E65D76A8();
  (*(*(v37 - 8) + 8))(v33 + v35, v37);
LABEL_12:
  v38 = sub_1E60A1F80(v36);

  sub_1E600BD5C(v38);

  return sub_1E65DF308();
}

uint64_t sub_1E613B3EC(uint64_t a1)
{
  v2 = sub_1E65DF2F8();
  v3 = type metadata accessor for AppState();
  v4 = a1 + *(v3 + 176);
  v5 = *(v4 + 8);

  *(v4 + 8) = v2;
  sub_1E65DF2E8();
  v6 = a1 + *(v3 + 180);
  v7 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BD8, &qword_1E65F10B0) + 28);
  return sub_1E65DF5B8();
}

uint64_t sub_1E613B47C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E613B4C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  v10 = *a1;
  v11 = a1[1];
  v12 = sub_1E65E60A8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = *a4;
  v14 = a4[3];
  v15 = a4[5];
  v16 = a4[7];
  v17 = a4[9];
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v10;
  *(v18 + 40) = v11;
  v19 = *(a4 + 3);
  *(v18 + 80) = *(a4 + 2);
  *(v18 + 96) = v19;
  *(v18 + 112) = *(a4 + 4);
  v20 = *(a4 + 1);
  *(v18 + 48) = *a4;
  *(v18 + 64) = v20;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v9, &unk_1E65F2590, v18);
}

uint64_t sub_1E613B63C(uint64_t *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E613B4C4(a1, a2, v2 + v6, v7);
}

uint64_t sub_1E613B6E8(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = *a1;
  return v4(&v7, a3);
}

uint64_t sub_1E613B728(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFA78C;

  return sub_1E6276534(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_1E613B7EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072910, &qword_1E65EC030);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E613B85C(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6139A64(a1, a2, v2 + v7);
}

uint64_t sub_1E613B940(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFA78C;

  return sub_1E6139064(a1, a2, v2 + v7);
}

uint64_t sub_1E613BA28()
{
  v1 = *v0;
  v2 = 0x726F577472617473;
  v3 = 0x64616F6C6E776F64;
  v4 = 0x6B72616D6B6F6F62;
  if (v1 != 3)
  {
    v4 = 0x676E6972616873;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6B63617473;
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

uint64_t sub_1E613BAC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E613D12C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E613BAF0(uint64_t a1)
{
  v2 = sub_1E613BE7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E613BB2C(uint64_t a1)
{
  v2 = sub_1E613BE7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutActionsMenuLoadState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0759D8, &unk_1E65F2600);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E613BE7C();
  sub_1E65E6DA8();
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  sub_1E613C610(&qword_1ED0759E8);
  sub_1E65E6B78();
  if (!v1)
  {
    State = type metadata accessor for WorkoutActionsMenuLoadState();
    v10 = State[5];
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    sub_1E613C6E4(&qword_1ED075A00);
    sub_1E65E6B78();
    v14[1] = State[6];
    v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    sub_1E613BED0(&qword_1ED075A08);
    sub_1E65E6B78();
    v11 = State[7];
    v16 = 3;
    sub_1E65E6B78();
    v12 = State[8];
    v15 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
    sub_1E613C754(&qword_1ED075A10);
    sub_1E65E6B78();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E613BE7C()
{
  result = qword_1ED0759E0;
  if (!qword_1ED0759E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0759E0);
  }

  return result;
}

uint64_t sub_1E613BED0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077CD0, &unk_1E65F42F0);
    sub_1E60D1530();
    sub_1E60D1584();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t WorkoutActionsMenuLoadState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
  v3 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v32 - v4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  v5 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v37 = &v32 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v7 = *(*(v38 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v38);
  v35 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v32 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075A28, &qword_1E65F2628);
  v39 = *(v15 - 8);
  v40 = v15;
  v16 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - v17;
  State = type metadata accessor for WorkoutActionsMenuLoadState();
  v20 = *(*(State - 1) + 64);
  MEMORY[0x1EEE9AC00](State);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E613BE7C();
  v42 = v18;
  v24 = v43;
  sub_1E65E6D98();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v48 = 0;
  sub_1E613C610(&qword_1ED075A30);
  sub_1E65E6AD8();
  v43 = v22;
  sub_1E5FAB460(v41, v22, &qword_1ED0737C8, &unk_1E6605140);
  v47 = 1;
  sub_1E613C6E4(&qword_1ED075A38);
  sub_1E65E6AD8();
  sub_1E5FAB460(v11, &v43[State[5]], &unk_1ED077CC0, &unk_1E65F2610);
  v46 = 2;
  sub_1E613BED0(&qword_1ED075A40);
  v25 = v37;
  v41 = 0;
  sub_1E65E6AD8();
  v26 = a1;
  sub_1E5FAB460(v25, &v43[State[6]], &unk_1ED077CD0, &unk_1E65F42F0);
  v45 = 3;
  v27 = v35;
  sub_1E65E6AD8();
  v28 = v39;
  v29 = v43;
  sub_1E5FAB460(v27, &v43[State[7]], &unk_1ED077CC0, &unk_1E65F2610);
  v44 = 4;
  sub_1E613C754(&qword_1ED075A48);
  v30 = v33;
  sub_1E65E6AD8();
  (*(v28 + 8))(v42, v40);
  sub_1E5FAB460(v30, v29 + State[8], &unk_1ED077A70, &qword_1E65F2620);
  sub_1E613C828(v29, v32);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return sub_1E613C88C(v29);
}

uint64_t sub_1E613C610(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0737C8, &unk_1E6605140);
    v3 = MEMORY[0x1E699CC08];
    sub_1E5DF22E4(&qword_1ED0759F0, MEMORY[0x1E699CC08]);
    sub_1E5DF22E4(&qword_1ED0759F8, v3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E613C6E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077CC0, &unk_1E65F2610);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E613C754(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077A70, &qword_1E65F2620);
    v3 = MEMORY[0x1E699CAD0];
    sub_1E5DF22E4(&qword_1ED075A18, MEMORY[0x1E699CAD0]);
    sub_1E5DF22E4(&qword_1ED075A20, v3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E613C828(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for WorkoutActionsMenuLoadState();
  (*(*(State - 8) + 16))(a2, a1, State);
  return a2;
}

uint64_t sub_1E613C88C(uint64_t a1)
{
  State = type metadata accessor for WorkoutActionsMenuLoadState();
  (*(*(State - 8) + 8))(a1, State);
  return a1;
}

uint64_t static WorkoutActionsMenuLoadState.== infix(_:_:)()
{
  sub_1E65DE788();
  sub_1E5DF22E4(&qword_1EE2D6880, MEMORY[0x1E699CC08]);
  if ((sub_1E65E4D98() & 1) == 0)
  {
    return 0;
  }

  State = type metadata accessor for WorkoutActionsMenuLoadState();
  v1 = State[5];
  if ((sub_1E65E4D98() & 1) == 0)
  {
    return 0;
  }

  v2 = State[6];
  sub_1E5DF23E0();
  if ((sub_1E65E4D98() & 1) == 0)
  {
    return 0;
  }

  v3 = State[7];
  if ((sub_1E65E4D98() & 1) == 0)
  {
    return 0;
  }

  v4 = State[8];
  sub_1E65DE508();
  sub_1E5DF22E4(&qword_1EE2D68D8, MEMORY[0x1E699CAD0]);

  return sub_1E65E4D98();
}

uint64_t WorkoutActionsMenuLoadState.hash(into:)()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  sub_1E5DF22E4(&qword_1EE2D6888, MEMORY[0x1E699CC08]);
  sub_1E65E4DB8();
  State = type metadata accessor for WorkoutActionsMenuLoadState();
  v3 = State[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  sub_1E65E4DB8();
  v4 = State[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  sub_1E613CC1C();
  sub_1E65E4DB8();
  v5 = v1 + State[7];
  sub_1E65E4DB8();
  v6 = State[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
  sub_1E5DF22E4(&unk_1EE2D68E0, MEMORY[0x1E699CAD0]);
  return sub_1E65E4DB8();
}

unint64_t sub_1E613CC1C()
{
  result = qword_1EE2D68B8;
  if (!qword_1EE2D68B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D68B8);
  }

  return result;
}

uint64_t WorkoutActionsMenuLoadState.hashValue.getter()
{
  sub_1E65E6D28();
  type metadata accessor for WorkoutActionsMenuLoadState();
  sub_1E5DF22E4(&qword_1EE2D82A8, type metadata accessor for WorkoutActionsMenuLoadState);
  sub_1E65E5B48();
  return sub_1E65E6D78();
}

uint64_t sub_1E613CCF8(uint64_t a1, int *a2)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  sub_1E5DF22E4(&qword_1EE2D6888, MEMORY[0x1E699CC08]);
  sub_1E65E4DB8();
  v5 = a2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  sub_1E65E4DB8();
  v6 = a2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  sub_1E613CC1C();
  sub_1E65E4DB8();
  v7 = v4 + a2[7];
  sub_1E65E4DB8();
  v8 = a2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
  sub_1E5DF22E4(&unk_1EE2D68E0, MEMORY[0x1E699CAD0]);
  return sub_1E65E4DB8();
}

uint64_t sub_1E613CE80(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1E65DE788();
  sub_1E5DF22E4(&qword_1EE2D6880, MEMORY[0x1E699CC08]);
  if ((sub_1E65E4D98() & 1) == 0)
  {
    return 0;
  }

  v4 = a3[5];
  if ((sub_1E65E4D98() & 1) == 0)
  {
    return 0;
  }

  v5 = a3[6];
  sub_1E5DF23E0();
  if ((sub_1E65E4D98() & 1) == 0)
  {
    return 0;
  }

  v6 = a3[7];
  if ((sub_1E65E4D98() & 1) == 0)
  {
    return 0;
  }

  v7 = a3[8];
  sub_1E65DE508();
  sub_1E5DF22E4(&qword_1EE2D68D8, MEMORY[0x1E699CAD0]);

  return sub_1E65E4D98();
}

unint64_t sub_1E613D028()
{
  result = qword_1ED075A50;
  if (!qword_1ED075A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075A50);
  }

  return result;
}

unint64_t sub_1E613D080()
{
  result = qword_1ED075A58;
  if (!qword_1ED075A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075A58);
  }

  return result;
}

unint64_t sub_1E613D0D8()
{
  result = qword_1ED075A60;
  if (!qword_1ED075A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075A60);
  }

  return result;
}

uint64_t sub_1E613D12C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F577472617473 && a2 == 0xEC00000074756F6BLL;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B63617473 && a2 == 0xE500000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xE800000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xE800000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E6972616873 && a2 == 0xE700000000000000)
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

uint64_t sub_1E613D2DC(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 27) = a3;
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;
  v4 = type metadata accessor for RouteSource(0);
  *(v3 + 64) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  v6 = type metadata accessor for RouteDestination();
  *(v3 + 80) = v6;
  v7 = *(v6 - 8);
  *(v3 + 88) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E613D3D0, 0, 0);
}

uint64_t sub_1E613D3D0()
{
  if (*(v0 + 27) > 1u)
  {
    if (*(v0 + 27) == 2)
    {
      return sub_1E65E69D8();
    }
  }

  else if (!*(v0 + 27))
  {
    v1 = *(v0 + 96);
    v2 = *(v0 + 72);
    v3 = *(v0 + 80);
    v4 = *(v0 + 56);
    v5 = *(v0 + 64);
    v6 = *(v0 + 48);
    v8 = v4[3];
    v7 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v8);
    swift_storeEnumTagMultiPayload();
    v9 = sub_1E65D76F8();
    (*(*(v9 - 8) + 16))(v1, v6, v9);
    type metadata accessor for RouteResource();
    swift_storeEnumTagMultiPayload();
    sub_1E613DB80(v2, v1 + *(v3 + 20));
    *(v1 + *(v3 + 24)) = MEMORY[0x1E69E7CD0];
    sub_1E600F5B0((v0 + 26));
    v10 = swift_task_alloc();
    *(v0 + 104) = v10;
    *v10 = v0;
    v10[1] = sub_1E613D794;
    v11 = *(v0 + 96);

    return RoutingContext.appendDestination(_:priority:)(v11, (v0 + 26), v8, v7);
  }

  v14 = *(v0 + 80);
  v13 = *(v0 + 88);
  v16 = *(v0 + 64);
  v15 = *(v0 + 72);
  v18 = *(v0 + 48);
  v17 = *(v0 + 56);
  v20 = v17[3];
  v19 = v17[4];
  __swift_project_boxed_opaque_existential_1(v17, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
  v21 = *(v13 + 72);
  v22 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v23 = swift_allocObject();
  *(v0 + 120) = v23;
  *(v23 + 16) = xmmword_1E65EA670;
  v24 = v23 + v22;
  swift_storeEnumTagMultiPayload();
  v25 = sub_1E65D76F8();
  (*(*(v25 - 8) + 16))(v24, v18, v25);
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  sub_1E6094E10(v15, v24 + *(v14 + 20));
  *(v24 + *(v14 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E613DBE4(v15, type metadata accessor for RouteSource);
  sub_1E611D1C0(v0 + 16);
  v26 = *(v0 + 24);
  *(v0 + 32) = *(v0 + 16);
  *(v0 + 40) = v26;
  sub_1E600F5B0((v0 + 25));
  v27 = swift_task_alloc();
  *(v0 + 128) = v27;
  *v27 = v0;
  v27[1] = sub_1E613D91C;

  return RoutingContext.presentDestinations(_:style:priority:)(v23, (v0 + 32), (v0 + 25), v20, v19);
}

uint64_t sub_1E613D794()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *v1;
  v4[14] = v0;

  sub_1E613DBE4(v3, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E613DAA0, 0, 0);
  }

  else
  {
    v5 = v4[12];
    v6 = v4[9];

    v7 = v4[1];

    return v7();
  }
}

uint64_t sub_1E613D91C()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(v4 + 136) = v0;

  sub_1E5F94E00(*(v4 + 32), *(v4 + 40));

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E613DB10, 0, 0);
  }

  else
  {
    v5 = *(v4 + 96);
    v6 = *(v4 + 72);

    v7 = *(v4 + 8);

    return v7();
  }
}

uint64_t sub_1E613DAA0()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E613DB10()
{
  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E613DB80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RouteSource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E613DBE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1E613DC44()
{
  v0 = sub_1E65E5C48();
  v1 = NSSelectorFromString(v0);

  qword_1ED0962A8 = v1;
}

void sub_1E613DC94()
{
  v0 = sub_1E65E5C48();
  v1 = NSSelectorFromString(v0);

  qword_1ED0962B0 = v1;
}

void sub_1E613DCE4()
{
  v0 = sub_1E65E5C48();
  v1 = NSSelectorFromString(v0);

  qword_1ED0962B8 = v1;
}

void sub_1E613DD34()
{
  v0 = sub_1E65E5C48();
  v1 = NSSelectorFromString(v0);

  qword_1ED0962C0 = v1;
}

void sub_1E613DD84()
{
  v0 = sub_1E65E5C48();
  v1 = NSSelectorFromString(v0);

  qword_1ED0962C8 = v1;
}

void sub_1E613DDD4()
{
  v0 = sub_1E65E5C48();
  v1 = NSSelectorFromString(v0);

  qword_1ED0962D0 = v1;
}

void sub_1E613DE24()
{
  v0 = sub_1E65E5C48();
  v1 = NSSelectorFromString(v0);

  qword_1ED0962D8 = v1;
}

void sub_1E613DE74()
{
  v0 = sub_1E65E5C48();
  v1 = NSSelectorFromString(v0);

  qword_1ED0962E0 = v1;
}

void sub_1E613DEC4()
{
  v0 = sub_1E65E5C48();
  v1 = NSSelectorFromString(v0);

  qword_1ED0962E8 = v1;
}

void sub_1E613DF14()
{
  v0 = sub_1E65E5C48();
  v1 = NSSelectorFromString(v0);

  qword_1ED0962F0 = v1;
}

void sub_1E613DF64()
{
  v0 = sub_1E65E5C48();
  v1 = NSSelectorFromString(v0);

  qword_1ED0962F8 = v1;
}

void sub_1E613DFBC()
{
  v0 = sub_1E65E5C48();
  v1 = NSSelectorFromString(v0);

  qword_1ED096300 = v1;
}

uint64_t sub_1E613E010()
{
  result = sub_1E65E5C48();
  qword_1ED096308 = result;
  return result;
}

uint64_t sub_1E613E048()
{
  result = sub_1E65E5C48();
  qword_1ED096310 = result;
  return result;
}

uint64_t sub_1E613E080()
{
  result = sub_1E65E5C48();
  qword_1ED096318 = result;
  return result;
}

uint64_t sub_1E613E0B8()
{
  result = sub_1E65E5C48();
  qword_1ED096320 = result;
  return result;
}

uint64_t sub_1E613E0F0()
{
  result = sub_1E65E5C48();
  qword_1ED096328 = result;
  return result;
}

uint64_t sub_1E613E148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v15;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = *(*(sub_1E65D7848() - 8) + 64) + 15;
  v8[8] = swift_task_alloc();
  v10 = *(*(sub_1E65E5C28() - 8) + 64) + 15;
  v8[9] = swift_task_alloc();
  sub_1E65E6058();
  v8[10] = sub_1E65E6048();
  v12 = sub_1E65E5FC8();
  v8[11] = v12;
  v8[12] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1E613E248, v12, v11);
}

uint64_t sub_1E613E248()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  sub_1E613FAAC();
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v8 = sub_1E65E5C48();
  v9 = [objc_opt_self() systemImageNamed_];

  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v4;

  v0[13] = sub_1E65E65C8();
  v15 = (v3 + *v3);
  v11 = v3[1];
  v12 = swift_task_alloc();
  v0[14] = v12;
  *v12 = v0;
  v12[1] = sub_1E613E4A8;
  v13 = v0[5];

  return v15();
}

uint64_t sub_1E613E4A8()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 96);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_1E61401D8;
  }

  else
  {
    v7 = sub_1E61401DC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1E613E5E4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_1E65E6058();
  v4[3] = sub_1E65E6048();
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_1E5F9DFE8;

  return v9();
}

uint64_t sub_1E613E6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v19 - v12;
  v14 = sub_1E65E60A8();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_1E5DF650C(a3, v20);
  sub_1E65E6058();

  v15 = sub_1E65E6048();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  sub_1E5DF599C(v20, (v16 + 4));
  v16[9] = a4;
  v16[10] = a5;
  v16[11] = a1;
  v16[12] = a2;
  sub_1E64B80F8(0, 0, v13, &unk_1E65F2850, v16);
}

uint64_t sub_1E613E864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  v9 = *(*(sub_1E65D7848() - 8) + 64) + 15;
  v8[12] = swift_task_alloc();
  v10 = *(*(sub_1E65E5C28() - 8) + 64) + 15;
  v8[13] = swift_task_alloc();
  sub_1E65E6058();
  v8[14] = sub_1E65E6048();
  v12 = sub_1E65E5FC8();
  v8[15] = v12;
  v8[16] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1E613E95C, v12, v11);
}

uint64_t sub_1E613E95C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_1E613FAAC();
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v7 = sub_1E65E5C48();
  v8 = [objc_opt_self() systemImageNamed_];

  sub_1E5DF650C(v4, v0 + 16);
  v9 = swift_allocObject();
  sub_1E5DF599C((v0 + 16), v9 + 16);
  *(v0 + 136) = sub_1E65E65C8();
  v14 = (v3 + *v3);
  v10 = v3[1];
  v11 = swift_task_alloc();
  *(v0 + 144) = v11;
  *v11 = v0;
  v11[1] = sub_1E613EBC0;
  v12 = *(v0 + 72);

  return v14();
}

uint64_t sub_1E613EBC0()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 128);
  v6 = *(v2 + 120);
  if (v0)
  {
    v7 = sub_1E613EDF4;
  }

  else
  {
    v7 = sub_1E613ECFC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1E613ECFC()
{
  v1 = v0[17];
  v2 = v0[14];

  [v1 setAttributes_];
  v3 = v0[17];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E65EA660;
  *(v8 + 32) = v3;
  v9 = v3;
  v7(v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E613EDF4()
{
  v1 = v0[19];
  v2 = v0[14];

  v3 = v0[17];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E65EA660;
  *(v8 + 32) = v3;
  v9 = v3;
  v7(v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E613EEE0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = sub_1E65E60A8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1E5DF650C(a2, v13);
  sub_1E65E6058();
  v8 = sub_1E65E6048();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  sub_1E5DF599C(v13, v9 + 32);
  sub_1E6059EAC(0, 0, v6, &unk_1E65F2860, v9);
}

uint64_t sub_1E613F018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(type metadata accessor for RouteSource(0) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  sub_1E65E6058();
  v4[4] = sub_1E65E6048();
  v7 = sub_1E65E5FC8();
  v4[5] = v7;
  v4[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E613F0DC, v7, v6);
}

uint64_t sub_1E613F0DC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v1[4];
  v4 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1E6226DB8();
  v5 = *v4;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1E6067F04;
  v7 = v0[3];

  return (sub_1E6226DFC)(0, 0, 0, 4, v7, v5);
}

uint64_t sub_1E613F1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v24 - v17;
  v19 = sub_1E65E60A8();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_1E65E6058();

  v20 = sub_1E65E6048();
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E85E0];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = a3;
  v21[5] = a4;
  v21[6] = a5;
  v21[7] = a6;
  v21[8] = a1;
  v21[9] = a2;
  sub_1E64B80F8(0, 0, v18, a8, v21);
}

uint64_t sub_1E613F344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v15;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = *(*(sub_1E65D7848() - 8) + 64) + 15;
  v8[8] = swift_task_alloc();
  v10 = *(*(sub_1E65E5C28() - 8) + 64) + 15;
  v8[9] = swift_task_alloc();
  sub_1E65E6058();
  v8[10] = sub_1E65E6048();
  v12 = sub_1E65E5FC8();
  v8[11] = v12;
  v8[12] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1E613F444, v12, v11);
}

uint64_t sub_1E613F444()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  sub_1E613FAAC();
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_1E65D77A8();
  sub_1E65E5D48();
  v8 = sub_1E65E5C48();
  v9 = [objc_opt_self() systemImageNamed_];

  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v4;

  v0[13] = sub_1E65E65C8();
  v15 = (v3 + *v3);
  v11 = v3[1];
  v12 = swift_task_alloc();
  v0[14] = v12;
  *v12 = v0;
  v12[1] = sub_1E613F6A0;
  v13 = v0[5];

  return v15();
}

uint64_t sub_1E613F6A0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 96);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_1E613F8BC;
  }

  else
  {
    v7 = sub_1E613F7DC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1E613F7DC()
{
  v1 = v0[10];

  v2 = v0[13];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E65EA660;
  *(v7 + 32) = v2;
  v8 = v2;
  v6(v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E613F8BC()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[10];

  [v2 setAttributes_];

  v4 = v0[13];
  v6 = v0[8];
  v5 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E65EA660;
  *(v9 + 32) = v4;
  v10 = v4;
  v8(v9);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E613F9C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1E5DFA78C;

  return sub_1E613F344(a1, v4, v5, v6, v7, v8, v9, v11);
}

unint64_t sub_1E613FAAC()
{
  result = qword_1ED073D38;
  if (!qword_1ED073D38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED073D38);
  }

  return result;
}

uint64_t sub_1E613FAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v17 - v10;
  v12 = sub_1E65E60A8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1E65E6058();

  v13 = sub_1E65E6048();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = a2;
  v14[5] = a3;
  sub_1E6059EAC(0, 0, v11, a5, v14);
}

uint64_t sub_1E613FC54(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_1E65E6058();
  v4[3] = sub_1E65E6048();
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_1E5F9D470;

  return v9();
}

uint64_t sub_1E613FD64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFA78C;

  return sub_1E613FC54(a1, v4, v5, v7);
}

uint64_t sub_1E613FE24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E613E864(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t sub_1E613FF04(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E613F018(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E613FFB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E613E148(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t objectdestroy_7Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1E6140118(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E613E5E4(a1, v4, v5, v7);
}

uint64_t sub_1E614020C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E65E43E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075A68, &qword_1E65F28E8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21[-v10];
  (*(v5 + 16))(&v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073A38, &unk_1E65F28F0);
  sub_1E6055D14();
  sub_1E65E4AA8();
  sub_1E65E4B58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075A70, &unk_1E65F2900);
  sub_1E5FED46C(&qword_1ED075A78, &qword_1ED075A68, &qword_1E65F28E8);
  sub_1E614088C();
  sub_1E65E4938();
  (*(v8 + 8))(v11, v7);
  LODWORD(v11) = sub_1E65E41D8();
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075A88, &qword_1E65F2910) + 36)) = v11;
  sub_1E65E49A8();
  v14 = sub_1E65E49B8();

  KeyPath = swift_getKeyPath();
  v16 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075A90, &qword_1E65F2948) + 36));
  *v16 = KeyPath;
  v16[1] = v14;
  sub_1E65E4988();
  v17 = sub_1E65E49B8();

  v18 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075A98, &qword_1E65F2980);
  v20 = (a2 + *(result + 36));
  *v20 = v18;
  v20[1] = v17;
  return result;
}

uint64_t sub_1E6140580@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A70, &unk_1E65EC3F0);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073A50, &qword_1E6600D50);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v30 - v10;
  sub_1E65E43C8();
  sub_1E65E44A8();
  sub_1E65E4508();
  v12 = sub_1E65E4538();

  KeyPath = swift_getKeyPath();
  v14 = &v6[*(v3 + 44)];
  *v14 = KeyPath;
  v14[1] = v12;
  sub_1E65E4BA8();
  sub_1E65E3E38();
  sub_1E5FAB460(v6, v11, &qword_1ED072A70, &unk_1E65EC3F0);
  v15 = &v11[*(v8 + 44)];
  v16 = v30[5];
  *(v15 + 4) = v30[4];
  *(v15 + 5) = v16;
  *(v15 + 6) = v30[6];
  v17 = v30[1];
  *v15 = v30[0];
  *(v15 + 1) = v17;
  v18 = v30[3];
  *(v15 + 2) = v30[2];
  *(v15 + 3) = v18;
  v19 = sub_1E65E4488();
  sub_1E65E3BF8();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_1E5FAB460(v11, a1, &qword_1ED073A50, &qword_1E6600D50);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073A38, &unk_1E65F28F0);
  v29 = a1 + *(result + 36);
  *v29 = v19;
  *(v29 + 8) = v21;
  *(v29 + 16) = v23;
  *(v29 + 24) = v25;
  *(v29 + 32) = v27;
  *(v29 + 40) = 0;
  return result;
}

uint64_t sub_1E61407B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075A70, &unk_1E65F2900) + 36));
  v5 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073778, &qword_1E6600D60) + 28);
  sub_1E65E3E48();
  *v4 = swift_getKeyPath();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075A68, &qword_1E65F28E8);
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, a1, v6);
}

unint64_t sub_1E614088C()
{
  result = qword_1ED075A80;
  if (!qword_1ED075A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED075A70, &unk_1E65F2900);
    sub_1E5FED46C(&qword_1ED075A78, &qword_1ED075A68, &qword_1E65F28E8);
    sub_1E5FED46C(&unk_1EE2D4BF0, &qword_1ED073778, &qword_1E6600D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075A80);
  }

  return result;
}

uint64_t sub_1E61409A0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1E5FED46C(&qword_1EE2D4BE0, &qword_1ED0738C8, &qword_1E65EDF20);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E6140A50()
{
  result = qword_1ED075AB0;
  if (!qword_1ED075AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED075A88, &qword_1E65F2910);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED075A68, &qword_1E65F28E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED075A70, &unk_1E65F2900);
    sub_1E5FED46C(&qword_1ED075A78, &qword_1ED075A68, &qword_1E65F28E8);
    sub_1E614088C();
    swift_getOpaqueTypeConformance2();
    sub_1E5FED46C(&qword_1EE2D4C20, &qword_1ED073B00, &qword_1E65EDF18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075AB0);
  }

  return result;
}

uint64_t sub_1E6140BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v129 = a3;
  v128 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074528, &unk_1E660F4D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v133 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v132 = &v125 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v131 = &v125 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758B8, &qword_1E65F1FC0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v139 = &v125 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D00, &unk_1E660F460);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v140 = &v125 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v137 = &v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v138 = &v125 - v25;
  v127 = sub_1E65D8BB8();
  v26 = *(*(v127 - 8) + 64);
  MEMORY[0x1EEE9AC00](v127);
  v136 = &v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_1E65D9A78();
  v143 = *(v150 - 8);
  v28 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v149 = &v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E0, &qword_1E66012E0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v130 = &v125 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v134 = &v125 - v34;
  v145 = sub_1E65DAC98();
  v151 = *(v145 - 8);
  v35 = *(v151 + 64);
  v36 = MEMORY[0x1EEE9AC00](v145);
  v126 = &v125 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v144 = &v125 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v148 = &v125 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v135 = &v125 - v42;
  v159 = sub_1E65D8668();
  v43 = *(v159 - 8);
  v44 = *(v43 + 64);
  v45 = MEMORY[0x1EEE9AC00](v159);
  v158 = &v125 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v155 = &v125 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v142 = &v125 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v147 = &v125 - v51;
  v52 = sub_1E65D7F88();
  v53 = *(v52 - 8);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v56 = &v125 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = v4;
  v162 = sub_1E65DAE88();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074550, &qword_1E65F0D90);
  sub_1E6141CD4();
  v57 = sub_1E65E5E78();

  if (!*(v57 + 16))
  {

    v76 = 1;
LABEL_17:
    v77 = sub_1E65D8258();
    return (*(*(v77 - 8) + 56))(a4, v76, 1, v77);
  }

  v146 = a4;
  (*(v53 + 16))(v56, v57 + ((*(v53 + 80) + 32) & ~*(v53 + 80)), v52);

  v58 = sub_1E65D7F38();
  v156 = v59;
  v157 = v58;
  (*(v53 + 8))(v56, v52);
  v60 = a2 + 56;
  v61 = 1 << *(a2 + 32);
  v62 = -1;
  if (v61 < 64)
  {
    v62 = ~(-1 << v61);
  }

  v63 = v62 & *(a2 + 56);
  v64 = (v61 + 63) >> 6;
  v154 = (v43 + 32);
  v152 = (v43 + 8);
  *&v153 = v43 + 16;

  v66 = 0;
  v67 = a2;
  v68 = v43;
  if (v63)
  {
    while (1)
    {
      v69 = v66;
LABEL_9:
      v70 = v155;
      v71 = v159;
      (*(v68 + 16))(v155, *(v67 + 48) + *(v68 + 72) * (__clz(__rbit64(v63)) | (v69 << 6)), v159);
      v72 = v68;
      v73 = *(v68 + 32);
      v73(v158, v70, v71);
      if (sub_1E65D8528() == v157 && v74 == v156)
      {

        goto LABEL_20;
      }

      v75 = sub_1E65E6C18();

      if (v75)
      {
        break;
      }

      v63 &= v63 - 1;
      result = (*v152)(v158, v159);
      v66 = v69;
      v68 = v72;
      if (!v63)
      {
        goto LABEL_6;
      }
    }

LABEL_20:

    v78 = v142;
    v79 = v159;
    v73(v142, v158, v159);
    v73(v147, v78, v79);
    v80 = sub_1E65D85E8();
    v81 = v80;
    v82 = v80 + 56;
    v83 = 1 << *(v80 + 32);
    v84 = -1;
    if (v83 < 64)
    {
      v84 = ~(-1 << v83);
    }

    v85 = v84 & *(v80 + 56);
    v86 = (v83 + 63) >> 6;
    v157 = (v151 + 16);
    v158 = (v151 + 32);
    v154 = (v143 + 8);
    v156 = (v151 + 8);

    v87 = 0;
    v153 = xmmword_1E65F29F0;
    v88 = v145;
    v89 = v144;
    v155 = result;
    if (v85)
    {
      while (1)
      {
        v90 = v87;
LABEL_27:
        v91 = *(v81 + 6);
        v92 = v151;
        v93 = v148;
        (*(v151 + 16))(v148, v91 + *(v151 + 72) * (__clz(__rbit64(v85)) | (v90 << 6)), v88);
        v144 = *(v92 + 32);
        (v144)(v89, v93, v88);
        v94 = v149;
        sub_1E65DAC48();
        v95 = sub_1E65D9A68();
        v97 = v96;
        LOBYTE(v93) = v98;
        (*v154)(v94, v150);
        v162 = v95;
        v163 = v97;
        LOBYTE(v93) = v93 & 1;
        v164 = v93;
        v160 = v153;
        v161 = 1;
        sub_1E60EB7D8();
        sub_1E602B668();
        LOBYTE(v94) = sub_1E65D7FD8();
        sub_1E5F87058(v95, v97, v93);
        if (v94)
        {
          break;
        }

        v85 &= v85 - 1;
        result = (*v156)(v89, v88);
        v87 = v90;
        v81 = v155;
        if (!v85)
        {
          goto LABEL_24;
        }
      }

      v100 = v134;
      (v144)(v134, v89, v88);
      v99 = 0;
LABEL_31:
      v101 = v151;
      v102 = *(v151 + 56);
      v102(v100, v99, 1, v88);

      if ((*(v101 + 48))(v100, 1, v88) == 1)
      {
        (*v152)(v147, v159);
        sub_1E5DFE50C(v100, &qword_1ED0734E0, &qword_1E66012E0);
LABEL_15:
        v76 = 1;
        a4 = v146;
      }

      else
      {
        v103 = v135;
        (*v158)(v135, v100, v88);
        v158 = v102;
        sub_1E6141D38();
        v105 = v104;
        v106 = sub_1E6142148();
        v108 = sub_1E614235C(v107, v106, v129);
        v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E70, &unk_1E65ECC20);
        *&v153 = sub_1E65DADF8();
        v109 = *(*(v153 - 8) + 72);
        v151 = (*(*(v153 - 8) + 80) + 32) & ~*(*(v153 - 8) + 80);
        v110 = v151;
        v111 = swift_allocObject();
        *(v111 + 16) = xmmword_1E65EB9E0;
        v112 = (v111 + v110);
        *v112 = v105;
        swift_storeEnumTagMultiPayload();
        *(v112 + v109) = 1;
        swift_storeEnumTagMultiPayload();
        v162 = v111;
        sub_1E5FA9E2C(v108);
        v155 = v162;
        (*v157)(v126, v103, v88);
        sub_1E65DADE8();
        sub_1E65DA088();
        swift_storeEnumTagMultiPayload();
        v113 = sub_1E65D76A8();
        v114 = *(*(v113 - 8) + 56);
        v114(v138, 1, 1, v113);
        v115 = sub_1E65D9098();
        (*(*(v115 - 8) + 56))(v140, 1, 1, v115);
        v114(v137, 1, 1, v113);
        v157 = sub_1E65DAE48();
        v150 = v116;
        v117 = sub_1E65D7BD8();
        (*(*(v117 - 8) + 56))(v139, 1, 1, v117);
        (v158)(v130, 1, 1, v88);
        v118 = sub_1E65D74E8();
        (*(*(v118 - 8) + 56))(v131, 1, 1, v118);
        v119 = sub_1E65D83D8();
        v120 = *(*(v119 - 8) + 56);
        v120(v132, 1, 1, v119);
        v121 = v151;
        v122 = swift_allocObject();
        *(v122 + 16) = xmmword_1E65EA670;
        v123 = (v122 + v121);
        *v123 = sub_1E65DAE78();
        v123[1] = v124;
        swift_storeEnumTagMultiPayload();
        v120(v133, 1, 1, v119);
        a4 = v146;
        sub_1E65D8148();
        (*v156)(v135, v145);
        (*v152)(v147, v159);
        v76 = 0;
      }

      goto LABEL_17;
    }

LABEL_24:
    while (1)
    {
      v90 = v87 + 1;
      if (__OFADD__(v87, 1))
      {
        break;
      }

      if (v90 >= v86)
      {

        v99 = 1;
        v100 = v134;
        goto LABEL_31;
      }

      v85 = *(v82 + 8 * v90);
      ++v87;
      if (v85)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
LABEL_6:
    while (1)
    {
      v69 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        break;
      }

      if (v69 >= v64)
      {

        goto LABEL_15;
      }

      v63 = *(v60 + 8 * v69);
      ++v66;
      if (v63)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1E6141CD4()
{
  result = qword_1ED074558;
  if (!qword_1ED074558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074550, &qword_1E65F0D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074558);
  }

  return result;
}

uint64_t sub_1E6141D38()
{
  v37 = sub_1E65D8368();
  v0 = *(v37 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v32 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED075AB8, &qword_1E65F2A30);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v42 = sub_1E65D7F88();
  v10 = *(v42 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1E65D8288();
  v13 = sub_1E65DAE88();
  v14 = v13 + 56;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 56);
  v18 = (v15 + 63) >> 6;
  v34 = (v0 + 48);
  v35 = v10 + 16;
  v30 = (v0 + 8);
  v31 = (v0 + 32);
  v36 = v10;
  v33 = (v10 + 8);
  v38 = v13;

  v20 = 0;
  v40 = 0;
  v21 = 0.0;
  while (v17)
  {
LABEL_11:
    v23 = v41;
    v24 = (*(v36 + 16))(v41, *(v38 + 48) + *(v36 + 72) * (__clz(__rbit64(v17)) | (v20 << 6)), v42);
    MEMORY[0x1EEE9AC00](v24);
    *(&v30 - 2) = v23;
    v25 = v40;
    sub_1E64102C4(sub_1E6142954, v39, v9);
    v40 = v25;
    sub_1E6142974(v9, v7);
    v26 = v37;
    if ((*v34)(v7, 1, v37) == 1)
    {
      sub_1E5DFE50C(v9, qword_1ED075AB8, &qword_1E65F2A30);
      sub_1E5DFE50C(v7, qword_1ED075AB8, &qword_1E65F2A30);
    }

    else
    {
      v27 = v32;
      (*v31)(v32, v7, v26);
      sub_1E65D8358();
      v29 = v28;
      (*v30)(v27, v26);
      sub_1E5DFE50C(v9, qword_1ED075AB8, &qword_1E65F2A30);
      v21 = v21 + v29;
    }

    v17 &= v17 - 1;
    result = (*v33)(v41, v42);
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v18)
    {
    }

    v17 = *(v14 + 8 * v22);
    ++v20;
    if (v17)
    {
      v20 = v22;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6142148()
{
  v25 = sub_1E65D7F88();
  v0 = *(v25 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E65DAE88();
  v5 = v4 + 56;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 56);
  v9 = (v6 + 63) >> 6;
  v23 = v0 + 8;
  v24 = v0 + 16;
  v26 = v4;

  v11 = 0;
  v21 = 0;
  v22 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        v12 = v11;
        if (!v8)
        {
          while (1)
          {
            v11 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              break;
            }

            if (v11 >= v9)
            {
              goto LABEL_17;
            }

            v8 = *(v5 + 8 * v11);
            ++v12;
            if (v8)
            {
              goto LABEL_8;
            }
          }

          __break(1u);
LABEL_19:
          __break(1u);
          return result;
        }

LABEL_8:
        v13 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v14 = v25;
        (*(v0 + 16))(v3, *(v26 + 48) + *(v0 + 72) * (v13 | (v11 << 6)), v25);
        v15 = sub_1E65D7F78();
        v17 = v16;
        v19 = v18;
        result = (*(v0 + 8))(v3, v14);
        if (v19)
        {
          break;
        }

        result = sub_1E5F87058(v15, v17, 0);
      }

      if (v15 != 2)
      {
        break;
      }

      v20 = __OFADD__(v22++, 1);
      if (v20)
      {
        goto LABEL_19;
      }
    }

    v20 = __OFADD__(v21++, 1);
  }

  while (!v20);
  __break(1u);
LABEL_17:

  return v22;
}

uint64_t sub_1E614235C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v46 = a2;
  v5 = sub_1E65D7848();
  v43 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65E5C28();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v45 = ObjCClassFromMetadata;
  v13 = objc_opt_self();
  v14 = [v13 bundleForClass_];
  v15 = *(v6 + 16);
  v15(v9, a3, v5);
  sub_1E65E5CD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072F48, &qword_1E65ECDB0);
  v16 = swift_allocObject();
  v47 = xmmword_1E65EA670;
  v17 = MEMORY[0x1E69E6530];
  *(v16 + 16) = xmmword_1E65EA670;
  v18 = MEMORY[0x1E69E65A8];
  *(v16 + 56) = v17;
  *(v16 + 64) = v18;
  *(v16 + 32) = a1;
  v42 = sub_1E65E5CA8();
  v20 = v19;

  sub_1E65E5BA8();
  v21 = [v13 bundleForClass_];
  v15(v9, v44, v43);
  v22 = v46;
  sub_1E65E5CD8();
  v23 = swift_allocObject();
  *(v23 + 16) = v47;
  *(v23 + 56) = MEMORY[0x1E69E6530];
  *(v23 + 64) = MEMORY[0x1E69E65A8];
  *(v23 + 32) = v22;
  v24 = sub_1E65E5CA8();
  v26 = v25;

  if (a1 < 1 || v22 < 1)
  {
    if (v22 < 1)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E70, &unk_1E65ECC20);
      v37 = *(sub_1E65DADF8() - 8);
      v38 = *(v37 + 72);
      v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = v47;
      v40 = (v30 + v39);
      *v40 = v42;
      v40[1] = v20;
      goto LABEL_7;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E70, &unk_1E65ECC20);
    v33 = *(sub_1E65DADF8() - 8);
    v34 = *(v33 + 72);
    v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v47;
    v32 = (v30 + v35);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E70, &unk_1E65ECC20);
    v27 = *(sub_1E65DADF8() - 8);
    v28 = *(v27 + 72);
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1E65EA8E0;
    v31 = (v30 + v29);
    *v31 = v42;
    v31[1] = v20;
    swift_storeEnumTagMultiPayload();
    *(v31 + v28) = 0;
    swift_storeEnumTagMultiPayload();
    v32 = (v31 + 2 * v28);
  }

  *v32 = v24;
  v32[1] = v26;
LABEL_7:
  swift_storeEnumTagMultiPayload();
  return v30;
}

BOOL sub_1E61428C4()
{
  sub_1E65D8358();
  v1 = v0;
  sub_1E65D8338();
  v3 = v1 - v2;
  sub_1E65D8358();
  v5 = v4;
  sub_1E65D8348();
  v7 = v6;
  sub_1E65D7F68();
  if (v3 > v8)
  {
    return 0;
  }

  sub_1E65D7F68();
  return v10 <= v5 + v7;
}

uint64_t sub_1E6142974(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED075AB8, &qword_1E65F2A30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E61429E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_1E6142B34(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1E6142D4C()
{
  if ((sub_1E65E5B98() & 1) == 0)
  {
    return 0;
  }

  v0 = *(type metadata accessor for Resettable() + 28);
  return sub_1E65E5B98() & 1;
}

uint64_t sub_1E6142DBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x566C616974696E69 && a2 == 0xEC00000065756C61;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5664657070617277 && a2 == 0xEC00000065756C61)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E65E6C18();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1E6142ECC(char a1)
{
  sub_1E65E6D28();
  MEMORY[0x1E694E740](a1 & 1);
  return sub_1E65E6D78();
}

uint64_t sub_1E6142F14(char a1)
{
  if (a1)
  {
    return 0x5664657070617277;
  }

  else
  {
    return 0x566C616974696E69;
  }
}

uint64_t sub_1E6142F4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[0] = a2;
  v15[1] = a4;
  v5 = *(a2 + 16);
  type metadata accessor for Resettable.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_1E65E6B98();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E65E6DA8();
  v17 = 0;
  v12 = v15[3];
  sub_1E65E6B78();
  if (!v12)
  {
    v13 = *(v15[0] + 28);
    v16 = 1;
    sub_1E65E6B78();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1E61430F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a3;
  v28 = a4;
  v30 = *(a2 - 8);
  v6 = *(v30 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v26 - v9;
  type metadata accessor for Resettable.CodingKeys();
  swift_getWitnessTable();
  v34 = sub_1E65E6B08();
  v31 = *(v34 - 8);
  v10 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v12 = &v26 - v11;
  v13 = type metadata accessor for Resettable();
  v27 = *(v13 - 8);
  v14 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = v35;
  sub_1E65E6D98();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v16;
  v35 = v13;
  v20 = v29;
  v21 = v30;
  v37 = 0;
  sub_1E65E6AD8();
  v22 = v32;
  v32 = *(v21 + 32);
  (v32)(v19, v22, a2);
  v36 = 1;
  sub_1E65E6AD8();
  (*(v31 + 8))(v12, v34);
  v23 = v35;
  (v32)(&v19[*(v35 + 28)], v20, a2);
  v24 = v27;
  (*(v27 + 16))(v28, v19, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v24 + 8))(v19, v23);
}

uint64_t sub_1E61434E8(uint64_t a1, uint64_t a2)
{
  sub_1E65E6D28();
  v4 = *(a2 + 16);
  sub_1E6142EA4(v6, *v2);
  return sub_1E65E6D78();
}

uint64_t sub_1E6143540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *(a3 + 16);
  result = sub_1E6142DBC(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E614356C@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_1E61436FC();
  *a2 = result;
  return result;
}

uint64_t sub_1E6143598(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E61435EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E614367C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 24);
  v5 = *(a3 + 16);
  return sub_1E6142D4C();
}

uint64_t sub_1E6143704@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E65D72D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BrowsePage();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E6143930(v2, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = *v12;
      v15 = *(v12 + 1);
      v16 = v12[17];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0);
      v18 = *(v5 + 32);
      v18(v8, &v12[*(v17 + 80)], v4);
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075B40, &qword_1E65F2C78) + 64);
      *a1 = v14;
      *(a1 + 8) = v15;
      *(a1 + 16) = v16;
      v18((a1 + v19), v8, v4);
      v20 = MEMORY[0x1E699D508];
    }

    else
    {
      *a1 = 0x4D65726F6C707845;
      *(a1 + 8) = 0xEB000000006E6961;
      v20 = MEMORY[0x1E699D500];
    }
  }

  else
  {
    v21 = *(v12 + 1);
    *a1 = *v12;
    *(a1 + 8) = v21;
    v20 = MEMORY[0x1E699D510];
  }

  v22 = *v20;
  v23 = sub_1E65DFB08();
  return (*(*(v23 - 8) + 104))(a1, v22, v23);
}

uint64_t sub_1E6143930(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowsePage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6143994(uint64_t a1)
{
  v41 = sub_1E65E2A38();
  v3 = *(v41 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1E65DA6C8();
  v6 = *(v39 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v30[1] = v1;
    v47 = MEMORY[0x1E69E7CC0];
    sub_1E601C8F0(0, v10, 0);
    v12 = -1 << *(a1 + 32);
    v45 = a1 + 56;
    v46 = v47;
    result = sub_1E65E6748();
    v13 = result;
    v14 = 0;
    v36 = v3 + 8;
    v37 = v3 + 16;
    v34 = v9;
    v35 = v6 + 32;
    v31 = a1 + 64;
    v32 = v10;
    v38 = v6;
    v33 = a1;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
    {
      v16 = v13 >> 6;
      if ((*(v45 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_22;
      }

      v42 = v14;
      v43 = *(a1 + 36);
      v44 = 1 << v13;
      v17 = v40;
      v18 = v41;
      (*(v3 + 16))(v40, *(a1 + 48) + *(v3 + 72) * v13, v41);
      sub_1E65E2A18();
      sub_1E65E2A28();
      sub_1E65E29F8();
      sub_1E65DA6B8();
      (*(v3 + 8))(v17, v18);
      v19 = v46;
      v47 = v46;
      v21 = *(v46 + 16);
      v20 = *(v46 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1E601C8F0(v20 > 1, v21 + 1, 1);
        v19 = v47;
      }

      *(v19 + 16) = v21 + 1;
      v22 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v46 = v19;
      result = (*(v38 + 32))(v19 + v22 + *(v38 + 72) * v21, v34, v39);
      a1 = v33;
      v15 = 1 << *(v33 + 32);
      if (v13 >= v15)
      {
        goto LABEL_23;
      }

      v23 = *(v45 + 8 * v16);
      if ((v23 & v44) == 0)
      {
        goto LABEL_24;
      }

      if (v43 != *(v33 + 36))
      {
        goto LABEL_25;
      }

      v24 = v23 & (-2 << (v13 & 0x3F));
      if (v24)
      {
        v15 = __clz(__rbit64(v24)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v16 << 6;
        v26 = v16 + 1;
        v27 = (v31 + 8 * v16);
        while (v26 < (v15 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_1E5F87098(v13, v43, 0);
            v15 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v13, v43, 0);
      }

LABEL_4:
      v14 = v42 + 1;
      v13 = v15;
      if (v42 + 1 == v32)
      {
        return v46;
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

uint64_t sub_1E6143D78@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = sub_1E65E2D98();
  v37 = *(v1 - 8);
  v38 = v1;
  v2 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65D7BC8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v39 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1E65E2CF8();
  v8 = *(v35 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E65D9388();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v36 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v34 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B58, &qword_1E65EC600);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = v34 - v21;
  v23 = sub_1E65D76F8();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = sub_1E65E2848();
  v26 = sub_1E6143994(v25);

  v34[3] = sub_1E600C0B0(v26);

  v27 = sub_1E65E2868();
  v34[1] = v28;
  v34[2] = v27;
  sub_1E65E2838();
  sub_1E65E2858();
  v29 = sub_1E65E1FC8();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v18, 1, v29) == 1)
  {
    sub_1E614422C(v18);
    v31 = 1;
  }

  else
  {
    sub_1E64C6E80(v22);
    (*(v30 + 8))(v18, v29);
    v31 = 0;
  }

  v32 = sub_1E65DA7C8();
  (*(*(v32 - 8) + 56))(v22, v31, 1, v32);
  sub_1E65E2878();
  sub_1E61DB264(v36);
  (*(v8 + 8))(v11, v35);
  sub_1E65E2888();
  sub_1E65E2D78();
  sub_1E65E2D88();
  sub_1E65E2D58();
  sub_1E65D7B98();
  (*(v37 + 8))(v4, v38);
  v41 = sub_1E65E2898();
  sub_1E6144294();
  sub_1E65D8008();
  sub_1E65E2828();
  return sub_1E65D8FA8();
}

uint64_t sub_1E614422C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E6144294()
{
  result = qword_1ED075B48;
  if (!qword_1ED075B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075B48);
  }

  return result;
}

uint64_t sub_1E61442E8(uint64_t a1, unsigned __int8 a2)
{
  v134 = a1;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075B50, &qword_1E65F2C80);
  v133 = *(v148 - 8);
  v3 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v148);
  v147 = &v127 - v4;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075B58, &qword_1E65F2C88);
  v132 = *(v146 - 8);
  v5 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v146);
  v145 = &v127 - v6;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075B60, &qword_1E65F2C90);
  v131 = *(v144 - 8);
  v7 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v143 = &v127 - v8;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075B68, &qword_1E65F2C98);
  v130 = *(v142 - 8);
  v9 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v141 = &v127 - v10;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075B70, &qword_1E65F2CA0);
  v129 = *(v140 - 8);
  v11 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v140);
  v139 = &v127 - v12;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075B78, &qword_1E65F2CA8);
  v128 = *(v138 - 8);
  v13 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v137 = &v127 - v14;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075B80, &qword_1E65F2CB0);
  v150 = *(v136 - 8);
  v15 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v136);
  v17 = &v127 - v16;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075B88, &qword_1E65F2CB8);
  v149 = *(v135 - 8);
  v18 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v135);
  v20 = &v127 - v19;
  v21 = sub_1E65E0B48();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v127 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v127 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v127 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = &v127 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = &v127 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v44 = &v127 - v43;
  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      v76 = v134;
      if (a2 == 6)
      {
        v77 = v42;
        KeyPath = swift_getKeyPath();
        v79 = *(v76 + 16);
        if (v79)
        {
          v150 = KeyPath;
          v151 = MEMORY[0x1E69E7CC0];
          sub_1E601C934(0, v79, 0);
          v48 = v151;
          v149 = *(v132 + 16);
          v80 = v76 + ((*(v132 + 80) + 32) & ~*(v132 + 80));
          v81 = *(v132 + 72);
          v82 = (v132 + 8);
          do
          {
            v84 = v145;
            v83 = v146;
            (v149)(v145, v80, v146);
            swift_getAtKeyPath();
            (*v82)(v84, v83);
            v151 = v48;
            v86 = *(v48 + 16);
            v85 = *(v48 + 24);
            if (v86 >= v85 >> 1)
            {
              sub_1E601C934(v85 > 1, v86 + 1, 1);
              v48 = v151;
            }

            *(v48 + 16) = v86 + 1;
            sub_1E6146338(v77, v48 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v86);
            v80 += v81;
            --v79;
          }

          while (v79);
          goto LABEL_55;
        }
      }

      else
      {
        v116 = v41;
        v117 = swift_getKeyPath();
        v118 = *(v76 + 16);
        if (v118)
        {
          v150 = v117;
          v151 = MEMORY[0x1E69E7CC0];
          sub_1E601C934(0, v118, 0);
          v48 = v151;
          v149 = *(v133 + 16);
          v119 = v76 + ((*(v133 + 80) + 32) & ~*(v133 + 80));
          v120 = *(v133 + 72);
          v121 = (v133 + 8);
          do
          {
            v123 = v147;
            v122 = v148;
            (v149)(v147, v119, v148);
            swift_getAtKeyPath();
            (*v121)(v123, v122);
            v151 = v48;
            v125 = *(v48 + 16);
            v124 = *(v48 + 24);
            if (v125 >= v124 >> 1)
            {
              sub_1E601C934(v124 > 1, v125 + 1, 1);
              v48 = v151;
            }

            *(v48 + 16) = v125 + 1;
            sub_1E6146338(v116, v48 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v125);
            v119 += v120;
            --v118;
          }

          while (v118);
          goto LABEL_55;
        }
      }
    }

    else
    {
      v56 = v134;
      if (a2 == 4)
      {
        v57 = swift_getKeyPath();
        v58 = *(v56 + 16);
        if (v58)
        {
          v150 = v57;
          v151 = MEMORY[0x1E69E7CC0];
          sub_1E601C934(0, v58, 0);
          v48 = v151;
          v149 = *(v130 + 16);
          v59 = v56 + ((*(v130 + 80) + 32) & ~*(v130 + 80));
          v60 = *(v130 + 72);
          v61 = (v130 + 8);
          do
          {
            v63 = v141;
            v62 = v142;
            (v149)(v141, v59, v142);
            swift_getAtKeyPath();
            (*v61)(v63, v62);
            v151 = v48;
            v65 = *(v48 + 16);
            v64 = *(v48 + 24);
            if (v65 >= v64 >> 1)
            {
              sub_1E601C934(v64 > 1, v65 + 1, 1);
              v48 = v151;
            }

            *(v48 + 16) = v65 + 1;
            sub_1E6146338(v31, v48 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v65);
            v59 += v60;
            --v58;
          }

          while (v58);
          goto LABEL_55;
        }
      }

      else
      {
        v97 = swift_getKeyPath();
        v98 = *(v56 + 16);
        if (v98)
        {
          v150 = v97;
          v151 = MEMORY[0x1E69E7CC0];
          sub_1E601C934(0, v98, 0);
          v48 = v151;
          v149 = *(v131 + 16);
          v99 = v56 + ((*(v131 + 80) + 32) & ~*(v131 + 80));
          v100 = *(v131 + 72);
          v101 = (v131 + 8);
          do
          {
            v103 = v143;
            v102 = v144;
            (v149)(v143, v99, v144);
            swift_getAtKeyPath();
            (*v101)(v103, v102);
            v151 = v48;
            v105 = *(v48 + 16);
            v104 = *(v48 + 24);
            if (v105 >= v104 >> 1)
            {
              sub_1E601C934(v104 > 1, v105 + 1, 1);
              v48 = v151;
            }

            *(v48 + 16) = v105 + 1;
            sub_1E6146338(v28, v48 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v105);
            v99 += v100;
            --v98;
          }

          while (v98);
          goto LABEL_55;
        }
      }
    }

    goto LABEL_56;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v66 = swift_getKeyPath();
      v67 = v134;
      v68 = *(v134 + 16);
      if (v68)
      {
        v150 = v66;
        v151 = MEMORY[0x1E69E7CC0];
        sub_1E601C934(0, v68, 0);
        v48 = v151;
        v149 = *(v128 + 16);
        v69 = v67 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
        v70 = *(v128 + 72);
        v71 = (v128 + 8);
        do
        {
          v73 = v137;
          v72 = v138;
          (v149)(v137, v69, v138);
          swift_getAtKeyPath();
          (*v71)(v73, v72);
          v151 = v48;
          v75 = *(v48 + 16);
          v74 = *(v48 + 24);
          if (v75 >= v74 >> 1)
          {
            sub_1E601C934(v74 > 1, v75 + 1, 1);
            v48 = v151;
          }

          *(v48 + 16) = v75 + 1;
          sub_1E6146338(v37, v48 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v75);
          v69 += v70;
          --v68;
        }

        while (v68);
        goto LABEL_55;
      }
    }

    else
    {
      v106 = swift_getKeyPath();
      v107 = v134;
      v108 = *(v134 + 16);
      if (v108)
      {
        v150 = v106;
        v151 = MEMORY[0x1E69E7CC0];
        sub_1E601C934(0, v108, 0);
        v48 = v151;
        v149 = *(v129 + 16);
        v109 = v107 + ((*(v129 + 80) + 32) & ~*(v129 + 80));
        v110 = *(v129 + 72);
        v111 = (v129 + 8);
        do
        {
          v113 = v139;
          v112 = v140;
          (v149)(v139, v109, v140);
          swift_getAtKeyPath();
          (*v111)(v113, v112);
          v151 = v48;
          v115 = *(v48 + 16);
          v114 = *(v48 + 24);
          if (v115 >= v114 >> 1)
          {
            sub_1E601C934(v114 > 1, v115 + 1, 1);
            v48 = v151;
          }

          *(v48 + 16) = v115 + 1;
          sub_1E6146338(v34, v48 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v115);
          v109 += v110;
          --v108;
        }

        while (v108);
        goto LABEL_55;
      }
    }

    goto LABEL_56;
  }

  if (a2)
  {
    v87 = swift_getKeyPath();
    v88 = v134;
    v89 = *(v134 + 16);
    if (v89)
    {
      v151 = MEMORY[0x1E69E7CC0];
      sub_1E601C934(0, v89, 0);
      v48 = v151;
      v90 = *(v150 + 16);
      v91 = v88 + ((*(v150 + 80) + 32) & ~*(v150 + 80));
      v148 = *(v150 + 72);
      v149 = v90;
      v150 += 16;
      v92 = (v150 - 8);
      do
      {
        v93 = v136;
        (v149)(v17, v91, v136);
        v94 = v87;
        swift_getAtKeyPath();
        (*v92)(v17, v93);
        v151 = v48;
        v96 = *(v48 + 16);
        v95 = *(v48 + 24);
        if (v96 >= v95 >> 1)
        {
          sub_1E601C934(v95 > 1, v96 + 1, 1);
          v48 = v151;
        }

        *(v48 + 16) = v96 + 1;
        sub_1E6146338(v40, v48 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v96);
        v91 += v148;
        --v89;
        v87 = v94;
      }

      while (v89);
      goto LABEL_55;
    }

LABEL_56:

    return MEMORY[0x1E69E7CC0];
  }

  v45 = swift_getKeyPath();
  v46 = v134;
  v47 = *(v134 + 16);
  if (!v47)
  {
    goto LABEL_56;
  }

  v151 = MEMORY[0x1E69E7CC0];
  sub_1E601C934(0, v47, 0);
  v48 = v151;
  v49 = *(v149 + 16);
  v149 += 16;
  v150 = v49;
  v50 = v46 + ((*(v149 + 64) + 32) & ~*(v149 + 64));
  v148 = *(v149 + 56);
  v51 = (v149 - 8);
  do
  {
    v52 = v135;
    (v150)(v20, v50, v135);
    v53 = v45;
    swift_getAtKeyPath();
    (*v51)(v20, v52);
    v151 = v48;
    v55 = *(v48 + 16);
    v54 = *(v48 + 24);
    if (v55 >= v54 >> 1)
    {
      sub_1E601C934(v54 > 1, v55 + 1, 1);
      v48 = v151;
    }

    *(v48 + 16) = v55 + 1;
    sub_1E6146338(v44, v48 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v55);
    v50 += v148;
    --v47;
    v45 = v53;
  }

  while (v47);
LABEL_55:

  return v48;
}

uint64_t sub_1E61453F8(uint64_t a1, unsigned __int8 a2)
{
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075B50, &qword_1E65F2C80);
  v98 = *(v104 - 8);
  v4 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v106 = (&v90 - v5);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075B58, &qword_1E65F2C88);
  v97 = *(v103 - 8);
  v6 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v105 = &v90 - v7;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075B60, &qword_1E65F2C90);
  v96 = *(v102 - 8);
  v8 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v10 = &v90 - v9;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075B68, &qword_1E65F2C98);
  v95 = *(v101 - 8);
  v11 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v13 = &v90 - v12;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075B70, &qword_1E65F2CA0);
  v94 = *(v100 - 8);
  v14 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v16 = &v90 - v15;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075B78, &qword_1E65F2CA8);
  v93 = *(v99 - 8);
  v17 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v19 = &v90 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075B80, &qword_1E65F2CB0);
  v92 = *(v20 - 8);
  v21 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v90 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075B88, &qword_1E65F2CB8);
  v91 = *(v24 - 8);
  v25 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v90 - v26;
  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        KeyPath = swift_getKeyPath();
        v50 = *(a1 + 16);
        if (v50)
        {
          v110 = MEMORY[0x1E69E7CC0];

          sub_1E601C978(0, v50, 0);
          v29 = v110;
          v106 = *(v97 + 16);
          v51 = a1 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
          v52 = *(v97 + 72);
          v53 = (v97 + 8);
          v54 = v103;
          do
          {
            v55 = v105;
            v106(v105, v51, v54);
            v108 = sub_1E65E0E98();
            v109 = &off_1F5FADD28;
            __swift_allocate_boxed_opaque_existential_1(&v107);
            v56 = KeyPath;
            swift_getAtKeyPath();
            (*v53)(v55, v54);
            v110 = v29;
            v58 = *(v29 + 16);
            v57 = *(v29 + 24);
            if (v58 >= v57 >> 1)
            {
              sub_1E601C978((v57 > 1), v58 + 1, 1);
              v54 = v103;
              v29 = v110;
            }

            *(v29 + 16) = v58 + 1;
            sub_1E5DF599C(&v107, v29 + 40 * v58 + 32);
            v51 += v52;
            --v50;
            KeyPath = v56;
          }

          while (v50);
          goto LABEL_59;
        }
      }

      else
      {
        v79 = swift_getKeyPath();
        v80 = *(a1 + 16);
        if (v80)
        {
          v110 = MEMORY[0x1E69E7CC0];

          sub_1E601C978(0, v80, 0);
          v29 = v110;
          v105 = *(v98 + 16);
          v81 = a1 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
          v82 = *(v98 + 72);
          v83 = (v98 + 8);
          v84 = v104;
          do
          {
            v85 = v106;
            (v105)(v106, v81, v84);
            v108 = sub_1E65E0F68();
            v109 = &off_1F5FADD48;
            __swift_allocate_boxed_opaque_existential_1(&v107);
            v86 = v79;
            swift_getAtKeyPath();
            (*v83)(v85, v84);
            v110 = v29;
            v88 = *(v29 + 16);
            v87 = *(v29 + 24);
            if (v88 >= v87 >> 1)
            {
              sub_1E601C978((v87 > 1), v88 + 1, 1);
              v84 = v104;
              v29 = v110;
            }

            *(v29 + 16) = v88 + 1;
            sub_1E5DF599C(&v107, v29 + 40 * v88 + 32);
            v81 += v82;
            --v80;
            v79 = v86;
          }

          while (v80);
          goto LABEL_59;
        }
      }
    }

    else if (a2 == 4)
    {
      swift_getKeyPath();
      v35 = *(a1 + 16);
      if (v35)
      {
        v110 = MEMORY[0x1E69E7CC0];

        sub_1E601C978(0, v35, 0);
        v29 = v110;
        v36 = *(v95 + 16);
        v37 = a1 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
        v105 = *(v95 + 72);
        v106 = v36;
        v38 = (v95 + 8);
        v39 = v101;
        do
        {
          v106(v13, v37, v39);
          v108 = sub_1E65E0BC8();
          v109 = &off_1F5FADCE8;
          __swift_allocate_boxed_opaque_existential_1(&v107);
          swift_getAtKeyPath();
          (*v38)(v13, v39);
          v110 = v29;
          v41 = *(v29 + 16);
          v40 = *(v29 + 24);
          if (v41 >= v40 >> 1)
          {
            sub_1E601C978((v40 > 1), v41 + 1, 1);
            v39 = v101;
            v29 = v110;
          }

          *(v29 + 16) = v41 + 1;
          sub_1E5DF599C(&v107, v29 + 40 * v41 + 32);
          v37 += v105;
          --v35;
        }

        while (v35);
        goto LABEL_59;
      }
    }

    else
    {
      swift_getKeyPath();
      v65 = *(a1 + 16);
      if (v65)
      {
        v110 = MEMORY[0x1E69E7CC0];

        sub_1E601C978(0, v65, 0);
        v29 = v110;
        v66 = *(v96 + 16);
        v67 = a1 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
        v105 = *(v96 + 72);
        v106 = v66;
        v68 = (v96 + 8);
        v69 = v102;
        do
        {
          v106(v10, v67, v69);
          v108 = sub_1E65E0C18();
          v109 = &off_1F5FADD08;
          __swift_allocate_boxed_opaque_existential_1(&v107);
          swift_getAtKeyPath();
          (*v68)(v10, v69);
          v110 = v29;
          v71 = *(v29 + 16);
          v70 = *(v29 + 24);
          if (v71 >= v70 >> 1)
          {
            sub_1E601C978((v70 > 1), v71 + 1, 1);
            v69 = v102;
            v29 = v110;
          }

          *(v29 + 16) = v71 + 1;
          sub_1E5DF599C(&v107, v29 + 40 * v71 + 32);
          v67 += v105;
          --v65;
        }

        while (v65);
        goto LABEL_59;
      }
    }

    goto LABEL_60;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      swift_getKeyPath();
      v42 = *(a1 + 16);
      if (v42)
      {
        v110 = MEMORY[0x1E69E7CC0];

        sub_1E601C978(0, v42, 0);
        v29 = v110;
        v43 = *(v93 + 16);
        v44 = a1 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
        v105 = *(v93 + 72);
        v106 = v43;
        v45 = (v93 + 8);
        v46 = v99;
        do
        {
          v106(v19, v44, v46);
          v108 = sub_1E65E10D8();
          v109 = &off_1F5FADCA8;
          __swift_allocate_boxed_opaque_existential_1(&v107);
          swift_getAtKeyPath();
          (*v45)(v19, v46);
          v110 = v29;
          v48 = *(v29 + 16);
          v47 = *(v29 + 24);
          if (v48 >= v47 >> 1)
          {
            sub_1E601C978((v47 > 1), v48 + 1, 1);
            v46 = v99;
            v29 = v110;
          }

          *(v29 + 16) = v48 + 1;
          sub_1E5DF599C(&v107, v29 + 40 * v48 + 32);
          v44 += v105;
          --v42;
        }

        while (v42);
        goto LABEL_59;
      }
    }

    else
    {
      swift_getKeyPath();
      v72 = *(a1 + 16);
      if (v72)
      {
        v110 = MEMORY[0x1E69E7CC0];

        sub_1E601C978(0, v72, 0);
        v29 = v110;
        v73 = *(v94 + 16);
        v74 = a1 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
        v105 = *(v94 + 72);
        v106 = v73;
        v75 = (v94 + 8);
        v76 = v100;
        do
        {
          v106(v16, v74, v76);
          v108 = sub_1E65E1038();
          v109 = &off_1F5FADCC8;
          __swift_allocate_boxed_opaque_existential_1(&v107);
          swift_getAtKeyPath();
          (*v75)(v16, v76);
          v110 = v29;
          v78 = *(v29 + 16);
          v77 = *(v29 + 24);
          if (v78 >= v77 >> 1)
          {
            sub_1E601C978((v77 > 1), v78 + 1, 1);
            v76 = v100;
            v29 = v110;
          }

          *(v29 + 16) = v78 + 1;
          sub_1E5DF599C(&v107, v29 + 40 * v78 + 32);
          v74 += v105;
          --v72;
        }

        while (v72);
        goto LABEL_59;
      }
    }

    goto LABEL_60;
  }

  if (a2)
  {
    swift_getKeyPath();
    v59 = *(a1 + 16);
    if (v59)
    {
      v110 = MEMORY[0x1E69E7CC0];

      sub_1E601C978(0, v59, 0);
      v29 = v110;
      v60 = *(v92 + 16);
      v61 = a1 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
      v105 = *(v92 + 72);
      v106 = v60;
      v62 = (v92 + 8);
      do
      {
        v106(v23, v61, v20);
        v108 = sub_1E65E0FD8();
        v109 = &off_1F5FADC88;
        __swift_allocate_boxed_opaque_existential_1(&v107);
        swift_getAtKeyPath();
        (*v62)(v23, v20);
        v110 = v29;
        v64 = *(v29 + 16);
        v63 = *(v29 + 24);
        if (v64 >= v63 >> 1)
        {
          sub_1E601C978((v63 > 1), v64 + 1, 1);
          v29 = v110;
        }

        *(v29 + 16) = v64 + 1;
        sub_1E5DF599C(&v107, v29 + 40 * v64 + 32);
        v61 += v105;
        --v59;
      }

      while (v59);
      goto LABEL_59;
    }

LABEL_60:

    return MEMORY[0x1E69E7CC0];
  }

  swift_getKeyPath();
  v28 = *(a1 + 16);
  if (!v28)
  {
    goto LABEL_60;
  }

  v110 = MEMORY[0x1E69E7CC0];

  sub_1E601C978(0, v28, 0);
  v29 = v110;
  v30 = *(v91 + 16);
  v31 = a1 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
  v105 = *(v91 + 72);
  v106 = v30;
  v32 = (v91 + 8);
  do
  {
    v106(v27, v31, v24);
    v108 = sub_1E65E1088();
    v109 = &off_1F5FADC68;
    __swift_allocate_boxed_opaque_existential_1(&v107);
    swift_getAtKeyPath();
    (*v32)(v27, v24);
    v110 = v29;
    v34 = *(v29 + 16);
    v33 = *(v29 + 24);
    if (v34 >= v33 >> 1)
    {
      sub_1E601C978((v33 > 1), v34 + 1, 1);
      v29 = v110;
    }

    *(v29 + 16) = v34 + 1;
    sub_1E5DF599C(&v107, v29 + 40 * v34 + 32);
    v31 += v105;
    --v28;
  }

  while (v28);
LABEL_59:

  return v29;
}

uint64_t sub_1E61462F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E6146338(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65E0B48();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E614639C(void *a1)
{
  v3 = type metadata accessor for NotificationsConsentDetour.State(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - v8;
  v10 = type metadata accessor for RouteDestination();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
  v18 = *(v17 - 8);
  v33 = v17;
  v34 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v31 - v20;
  v22 = OBJC_IVAR____TtC10Blackbeard26NotificationsConsentDetour_state;
  swift_beginAccess();
  sub_1E6148FC8(v1 + v22, v9, type metadata accessor for NotificationsConsentDetour.State);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v9, 1, v23) == 1)
  {
    return sub_1E61491B8(v9, type metadata accessor for NotificationsConsentDetour.State);
  }

  v32 = v14;
  v26 = v16;
  v27 = a1;
  v28 = *(v23 + 48);
  (*(v34 + 32))(v21, v9, v33);
  sub_1E5E1E048(&v9[v28], v26, type metadata accessor for RouteDestination);
  (*(v24 + 56))(v7, 1, 1, v23);
  swift_beginAccess();
  sub_1E6148F64(v7, v1 + v22);
  swift_endAccess();
  if (v27)
  {
    v35 = v27;
    v29 = v27;
    v30 = v33;
    sub_1E65E5FE8();
  }

  else
  {
    sub_1E6148FC8(v26, v32, type metadata accessor for RouteDestination);
    v30 = v33;
    sub_1E65E5FF8();
  }

  sub_1E61491B8(v26, type metadata accessor for RouteDestination);
  return (*(v34 + 8))(v21, v30);
}

uint64_t sub_1E614671C()
{
  sub_1E61491B8(v0 + OBJC_IVAR____TtC10Blackbeard26NotificationsConsentDetour_state, type metadata accessor for NotificationsConsentDetour.State);
  v1 = *(v0 + OBJC_IVAR____TtC10Blackbeard26NotificationsConsentDetour_dependencies);

  v2 = OBJC_IVAR____TtC10Blackbeard26NotificationsConsentDetour__notificationConsentShowingEnabled;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v4(v0 + OBJC_IVAR____TtC10Blackbeard26NotificationsConsentDetour__fitnessShouldSkipSplashScreen, v3);
  v4(v0 + OBJC_IVAR____TtC10Blackbeard26NotificationsConsentDetour__fitnessPlusNotificationSettingsEnabled, v3);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E6146850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[40] = a5;
  v6[41] = v5;
  v6[38] = a3;
  v6[39] = a4;
  v6[36] = a1;
  v6[37] = a2;
  v7 = sub_1E65E3B68();
  v6[42] = v7;
  v8 = *(v7 - 8);
  v6[43] = v8;
  v9 = *(v8 + 64) + 15;
  v6[44] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  v6[45] = v10;
  v11 = *(v10 - 8);
  v6[46] = v11;
  v12 = *(v11 + 64) + 15;
  v6[47] = swift_task_alloc();
  v13 = sub_1E65DE3E8();
  v6[48] = v13;
  v14 = *(v13 - 8);
  v6[49] = v14;
  v15 = *(v14 + 64) + 15;
  v6[50] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61469DC, v5, 0);
}

uint64_t sub_1E61469DC()
{
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v3 = *(v0 + 384);
  v4 = *(v0 + 304);
  v5 = *(v4 + *(type metadata accessor for AppComposer() + 20) + 8);
  v6 = sub_1E65DAE18();
  (*(v2 + 104))(v1, *MEMORY[0x1E69CAD38], v3);
  v7 = sub_1E637C87C(v1, v6);

  (*(v2 + 8))(v1, v3);
  if ((v7 & 1) == 0)
  {
    v27 = *(v0 + 288);
    v26 = *(v0 + 296);
LABEL_8:
    sub_1E6148FC8(v26, v27, type metadata accessor for RouteDestination);
    v28 = *(v0 + 400);
    v29 = *(v0 + 376);
    v30 = *(v0 + 352);

    v31 = *(v0 + 8);

    return v31();
  }

  v9 = *(v0 + 368);
  v8 = *(v0 + 376);
  v10 = *(v0 + 360);
  v11 = *(v0 + 328);
  v12 = OBJC_IVAR____TtC10Blackbeard26NotificationsConsentDetour__notificationConsentShowingEnabled;
  v13 = *(v9 + 16);
  *(v0 + 408) = v13;
  *(v0 + 416) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v8, v11 + v12, v10);
  sub_1E65DDC48();
  v14 = *(v9 + 8);
  *(v0 + 424) = v14;
  *(v0 + 432) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v8, v10);
  if (*(v0 + 504) != 1 || (v15 = *(v0 + 376), v16 = *(v0 + 360), v13(v15, *(v0 + 328) + OBJC_IVAR____TtC10Blackbeard26NotificationsConsentDetour__fitnessShouldSkipSplashScreen, v16), sub_1E65DDC48(), v14(v15, v16), (*(v0 + 505) & 1) != 0))
  {
    v17 = *(v0 + 352);
    sub_1E65DE348();
    v18 = sub_1E65E3B48();
    v19 = sub_1E65E6338();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1E5DE9000, v18, v19, "Notification consent showing has been disabled", v20, 2u);
      MEMORY[0x1E694F1C0](v20, -1, -1);
    }

    v22 = *(v0 + 344);
    v21 = *(v0 + 352);
    v23 = *(v0 + 336);
    v25 = *(v0 + 288);
    v24 = *(v0 + 296);

    (*(v22 + 8))(v21, v23);
    v26 = v24;
    v27 = v25;
    goto LABEL_8;
  }

  v33 = objc_opt_self();
  *(v0 + 440) = v33;
  v34 = [v33 currentNotificationCenter];
  *(v0 + 448) = v34;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 272;
  *(v0 + 24) = sub_1E6146DAC;
  v35 = swift_continuation_init();
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075C58, &qword_1E65F32A0);
  *(v0 + 144) = MEMORY[0x1E69E9820];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_1E61478A4;
  *(v0 + 168) = &block_descriptor_3;
  *(v0 + 176) = v35;
  [v34 getNotificationSettingsWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1E6146DAC()
{
  v1 = *(*v0 + 328);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6146EA0, v1, 0);
}

uint64_t sub_1E6146EA0()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 272);
  *(v0 + 456) = v2;

  if ([v2 authorizationStatus])
  {
    v3 = *(v0 + 432);
    v4 = *(v0 + 416);
    v5 = *(v0 + 424);
    v6 = *(v0 + 408);
    v7 = *(v0 + 376);
    v8 = *(v0 + 360);
    v9 = *(v0 + 328);
    v24 = [*(v0 + 440) currentNotificationCenter];
    *(v0 + 488) = v24;
    v6(v7, v9 + OBJC_IVAR____TtC10Blackbeard26NotificationsConsentDetour__fitnessPlusNotificationSettingsEnabled, v8);
    sub_1E65DDC48();
    v5(v7, v8);
    if (*(v0 + 507))
    {
      v10 = 39;
    }

    else
    {
      v10 = 7;
    }

    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 506;
    *(v0 + 88) = sub_1E6147348;
    v11 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075C60, &unk_1E65F32A8);
    *(v0 + 208) = MEMORY[0x1E69E9820];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_1E6147908;
    *(v0 + 232) = &block_descriptor_22;
    *(v0 + 240) = v11;
    [v24 requestAuthorizationWithOptions:v10 completionHandler:?];

    return MEMORY[0x1EEE6DEC8](v0 + 80);
  }

  else
  {
    v12 = *(v0 + 328);
    v14 = *(v0 + 296);
    v13 = *(v0 + 304);
    v15 = swift_task_alloc();
    *(v0 + 464) = v15;
    v16 = *(v0 + 312);
    *(v15 + 16) = v12;
    *(v15 + 24) = v14;
    *(v15 + 32) = v16;
    *(v15 + 48) = v13;
    v17 = sub_1E6148F0C(&qword_1ED075C68, type metadata accessor for NotificationsConsentDetour);
    v18 = *(MEMORY[0x1E69E88F0] + 4);
    v19 = swift_task_alloc();
    *(v0 + 472) = v19;
    v20 = type metadata accessor for RouteDestination();
    *v19 = v0;
    v19[1] = sub_1E614719C;
    v21 = *(v0 + 328);
    v22 = *(v0 + 288);

    return MEMORY[0x1EEE6DE18](v22, &unk_1E65F32C0, v15, sub_1E6148E50, v21, v12, v17, v20);
  }
}

uint64_t sub_1E614719C()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v9 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v4 = *(v2 + 328);
    v5 = sub_1E614780C;
  }

  else
  {
    v6 = *(v2 + 464);
    v7 = *(v2 + 328);

    v5 = sub_1E61472C4;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1E61472C4()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 376);
  v3 = *(v0 + 352);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1E6147348()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 496) = v3;
  v4 = *(v1 + 328);
  if (v3)
  {
    v5 = sub_1E61475E0;
  }

  else
  {
    v5 = sub_1E6147468;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1E6147468()
{
  v1 = *(v0 + 506);

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(*(v0 + 336), qword_1EE2EA2A0);
  v2 = sub_1E65E3B48();
  v3 = sub_1E65E6338();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 456);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v1;
    _os_log_impl(&dword_1E5DE9000, v2, v3, "Notification re-authorization completed: %{BOOL}d", v6, 8u);
    MEMORY[0x1E694F1C0](v6, -1, -1);
  }

  sub_1E6148FC8(*(v0 + 296), *(v0 + 288), type metadata accessor for RouteDestination);
  v7 = *(v0 + 400);
  v8 = *(v0 + 376);
  v9 = *(v0 + 352);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1E61475E0()
{
  v22 = v0;
  v1 = v0[61];
  v2 = v0[62];
  swift_willThrow();

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v3 = v0[62];
  __swift_project_value_buffer(v0[42], qword_1EE2EA2A0);
  v4 = v3;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[62];
  v9 = v0[57];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136446210;
    v0[35] = v8;
    v12 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v13 = sub_1E65E5CE8();
    v15 = sub_1E5DFD4B0(v13, v14, &v21);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "Failed to re authroize notifications: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1E694F1C0](v11, -1, -1);
    MEMORY[0x1E694F1C0](v10, -1, -1);
  }

  else
  {
  }

  sub_1E6148FC8(v0[37], v0[36], type metadata accessor for RouteDestination);
  v16 = v0[50];
  v17 = v0[47];
  v18 = v0[44];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1E614780C()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 400);
  v3 = *(v0 + 376);
  v4 = *(v0 + 352);

  v5 = *(v0 + 8);
  v6 = *(v0 + 480);

  return v5();
}

uint64_t sub_1E61478A4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

uint64_t sub_1E6147908(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1E61479D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E61479F8, a2, 0);
}

uint64_t sub_1E61479F8()
{
  v1 = *(v0 + 56);
  v2 = sub_1E6148F0C(&qword_1ED075C68, type metadata accessor for NotificationsConsentDetour);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v10 = *(v0 + 24);
  v4 = *(v0 + 40);
  *(v3 + 16) = v10;
  *(v3 + 32) = v4;
  *(v3 + 48) = v1;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  v7 = type metadata accessor for RouteDestination();
  *v6 = v0;
  v6[1] = sub_1E5F8E974;
  v8 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v8, v10, v2, 0xD000000000000024, 0x80000001E66103D0, sub_1E6148F54, v3, v7);
}

uint64_t sub_1E6147B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a6;
  v32 = a5;
  v10 = type metadata accessor for AppComposer();
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v30 - v15;
  v17 = type metadata accessor for NotificationsConsentDetour.State(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  v22 = *(v21 + 48);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
  (*(*(v23 - 8) + 16))(v20, a1, v23);
  sub_1E6148FC8(a3, &v20[v22], type metadata accessor for RouteDestination);
  (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  v24 = OBJC_IVAR____TtC10Blackbeard26NotificationsConsentDetour_state;
  swift_beginAccess();
  sub_1E6148F64(v20, a2 + v24);
  swift_endAccess();
  v25 = sub_1E65E60A8();
  (*(*(v25 - 8) + 56))(v16, 1, 1, v25);
  sub_1E6148FC8(v30, v12, type metadata accessor for AppComposer);
  v26 = sub_1E6148F0C(&qword_1ED075C68, type metadata accessor for NotificationsConsentDetour);
  v27 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v28 = swift_allocObject();
  v28[2] = a2;
  v28[3] = v26;
  v28[4] = a2;
  v28[5] = a4;
  v28[6] = v32;
  sub_1E5E1E048(v12, v28 + v27, type metadata accessor for AppComposer);
  swift_retain_n();
  swift_unknownObjectRetain();
  sub_1E64B80F8(0, 0, v16, &unk_1E65F32E8, v28);
}

uint64_t sub_1E6147EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v9 = *(type metadata accessor for AppComposer() - 8);
  v7[6] = v9;
  v7[7] = *(v9 + 64);
  v7[8] = swift_task_alloc();
  v10 = sub_1E65D9178();
  v7[9] = v10;
  v11 = *(v10 - 8);
  v7[10] = v11;
  v12 = *(v11 + 64) + 15;
  v7[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6147FE8, a4, 0);
}

uint64_t sub_1E6147FE8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[2];
  v0[12] = sub_1E65E5948();
  v0[13] = *(v4 + OBJC_IVAR____TtC10Blackbeard26NotificationsConsentDetour_dependencies);
  (*(v2 + 104))(v1, *MEMORY[0x1E69CBF18], v3);
  v0[14] = sub_1E65E6058();

  v0[15] = sub_1E65E6048();
  v6 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E61480DC, v6, v5);
}