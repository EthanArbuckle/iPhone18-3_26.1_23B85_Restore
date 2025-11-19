uint64_t sub_1E61C55B0()
{
  v2 = v0[24];
  v1 = v0[25];

  v0[26] = [v2 sharedApplication];

  return MEMORY[0x1EEE6DFA0](sub_1E61C5634, 0, 0);
}

uint64_t sub_1E61C5634()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = sub_1E65D7448();
  v0[27] = v3;
  sub_1E6428210(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1E61C681C(&qword_1ED071D68, type metadata accessor for OpenExternalURLOptionsKey);
  v4 = sub_1E65E5AF8();
  v0[28] = v4;

  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_1E61C57F4;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0764E0, &qword_1E65F5758);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1E61C27C8;
  v0[13] = &block_descriptor_26;
  v0[14] = v5;
  [v1 openURL:v3 options:v4 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E61C57F4()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E61C58D4, 0, 0);
}

uint64_t sub_1E61C58D4()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  (*(v0[22] + 8))(v0[23], v0[21]);

  v4 = v0[23];
  v5 = v0[20];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E61C5978()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000) - 8) + 64) + 15;
  *(v0 + 16) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61C5A10, 0, 0);
}

uint64_t sub_1E61C5A10()
{
  v1 = *(v0 + 16);
  v2 = sub_1E65E60A8();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  sub_1E64B80F8(0, 0, v1, &unk_1E65F5750, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1E61C5AFC()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v0[18] = swift_task_alloc();
  v2 = sub_1E65D74E8();
  v0[19] = v2;
  v3 = *(v2 - 8);
  v0[20] = v3;
  v4 = *(v3 + 64) + 15;
  v0[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61C5BF0, 0, 0);
}

uint64_t sub_1E61C5BF0()
{
  v15 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v14[0] = 0;
  v14[1] = 0;
  URLAction.makeURL(root:)(v14, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E5DFE50C(v0[18], &qword_1ED072340, &qword_1E65EA410);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v4 = sub_1E65E3B68();
    __swift_project_value_buffer(v4, qword_1EE2EA2A0);
    v5 = sub_1E65E3B48();
    v6 = sub_1E65E6328();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1E5DE9000, v5, v6, "[SampleContentComposer] Failed constructing explore url", v7, 2u);
      MEMORY[0x1E694F1C0](v7, -1, -1);
    }

    v8 = v0[21];
    v9 = v0[18];

    v10 = v0[1];

    return v10();
  }

  else
  {
    (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
    v0[22] = objc_opt_self();
    sub_1E65E6058();
    v0[23] = sub_1E65E6048();
    v13 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E61C5E24, v13, v12);
  }
}

uint64_t sub_1E61C5E24()
{
  v2 = v0[22];
  v1 = v0[23];

  v0[24] = [v2 sharedApplication];

  return MEMORY[0x1EEE6DFA0](sub_1E61C5EA8, 0, 0);
}

uint64_t sub_1E61C5EA8()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = sub_1E65D7448();
  v0[25] = v3;
  sub_1E6428210(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1E61C681C(&qword_1ED071D68, type metadata accessor for OpenExternalURLOptionsKey);
  v4 = sub_1E65E5AF8();
  v0[26] = v4;

  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_1E61C6068;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0764E0, &qword_1E65F5758);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1E61C27C8;
  v0[13] = &block_descriptor_6;
  v0[14] = v5;
  [v1 openURL:v3 options:v4 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E61C6068()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E61C6148, 0, 0);
}

uint64_t sub_1E61C6148()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  (*(v0[20] + 8))(v0[21], v0[19]);

  v4 = v0[21];
  v5 = v0[18];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E61C61E8()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v0[2] = swift_task_alloc();
  v2 = sub_1E65D74E8();
  v0[3] = v2;
  v3 = *(v2 - 8);
  v0[4] = v3;
  v4 = *(v3 + 64) + 15;
  v0[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61C62DC, 0, 0);
}

id sub_1E61C62DC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_1E65D74C8();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E5DFE50C(v0[2], &qword_1ED072340, &qword_1E65EA410);
  }

  else
  {
    (*(v0[4] + 32))(v0[5], v0[2], v0[3]);
    result = [objc_opt_self() defaultWorkspace];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = result;
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[3];
    v9 = sub_1E65D7448();
    sub_1E6215168(MEMORY[0x1E69E7CC0]);
    v10 = sub_1E65E5AF8();

    [v5 openSensitiveURL:v9 withOptions:v10];

    (*(v7 + 8))(v6, v8);
  }

  v11 = v0[5];
  v12 = v0[2];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1E61C6498(uint64_t a1, char a2)
{
  *(v2 + 40) = a2;
  *(v2 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E61C64BC, 0, 0);
}

uint64_t sub_1E61C64BC()
{
  v1 = v0[2];
  v0[3] = *(v1 + *(type metadata accessor for AppComposer() + 24));
  sub_1E65E6058();
  v0[4] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E61C6568, v3, v2);
}

uint64_t sub_1E61C6568()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 40);

  sub_1E642B1F0(v3 & 1);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1E61C65D4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFA78C;

  return sub_1E648305C(v2);
}

uint64_t sub_1E61C6680()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = *(v3 + *(v2 + 64));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E61C6498(v3, v4);
}

uint64_t sub_1E61C6770()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFA78C;

  return sub_1E61C5AFC();
}

uint64_t sub_1E61C681C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E61C687C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1E61C6910()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E61C3538();
}

uint64_t sub_1E61C69BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E61C2E44(a1, v4, v5, v7, v6);
}

uint64_t sub_1E61C6A7C()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E61C217C();
}

id sub_1E61C6B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1E65D76F8() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));

  return sub_1E61C02A8(a1, v6, v7, a2);
}

uint64_t sub_1E61C6BF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0764F0, &qword_1E65F5830);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11[-1] - v7;
  sub_1E5E20198(20, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0764E8, &qword_1E65F57F8);
  result = swift_dynamicCast();
  if (result)
  {
    v11[0] = a1;
    v11[1] = a2;
    sub_1E65E4E98();

    sub_1E65E4E28();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_1E61C6D40@<X0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v34 = &v28 - v4;
  v5 = type metadata accessor for ArchivedSessionService();
  Description = v5[-1].Description;
  v7 = Description[8];
  MEMORY[0x1EEE9AC00](v5);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v8 = sub_1E65E3B68();
  __swift_project_value_buffer(v8, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v9 = OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v31 = OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v10 = v1 + *(type metadata accessor for AppEnvironment() + 32);
  v32 = v10;
  v11 = *(v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);
  swift_getKeyPath();
  v30 = Description[2];
  v30(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, v5);
  v29 = v5;
  v12 = *(Description + 80);
  v13 = swift_allocObject();
  v33 = Description[4];
  v33(v13 + ((v12 + 16) & ~v12), &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0764E8, &qword_1E65F57F8);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();

  v17 = sub_1E65E4E68();
  v28 = v17;
  v18 = v35;
  v35[3] = v14;
  v18[4] = &off_1F5FAA810;
  *v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1E65EA670;
  v20 = sub_1E65E60A8();
  v21 = v34;
  (*(*(v20 - 8) + 56))(v34, 1, 1, v20);
  v22 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v29;
  v30(v22, v32 + v31, v29);
  v24 = (v12 + 32) & ~v12;
  v25 = (v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  v33(v26 + v24, v22, v23);
  *(v26 + v25) = v28;

  result = sub_1E6059EAC(0, 0, v21, &unk_1E65F5808, v26);
  *(v19 + 32) = result;
  v18[5] = v19;
  return result;
}

uint64_t sub_1E61C7114(uint64_t a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = a2[1];
  v3[4] = *a2;
  v3[5] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1E61C713C, 0, 0);
}

uint64_t sub_1E61C713C()
{
  v1 = v0[3];
  v2 = ArchivedSessionService.requireSampleContentSessionsAllowed.getter();
  v0[6] = v3;
  v9 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1E61C7238;
  v7 = v0[4];
  v6 = v0[5];

  return v9(v7, v6);
}

uint64_t sub_1E61C7238()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1E61C74E4;
  }

  else
  {
    v3 = sub_1E61C734C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E61C734C()
{
  v13 = v0;
  v1 = *(v0 + 48);

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 40);
  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);

  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6338();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1E5DFD4B0(v7, v6, &v12);
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Sample content session status allowed for %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E694F1C0](v9, -1, -1);
    MEMORY[0x1E694F1C0](v8, -1, -1);
  }

  **(v0 + 16) = 0;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1E61C74E4()
{
  v15 = v0;
  v1 = *(v0 + 48);

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 40);
  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);

  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6338();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 64);
  if (v6)
  {
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1E5DFD4B0(v9, v8, &v14);
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Sample content session status restricted for %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1E694F1C0](v11, -1, -1);
    MEMORY[0x1E694F1C0](v10, -1, -1);
  }

  **(v0 + 16) = 1;
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1E61C768C(uint64_t a1, void *a2)
{
  Description = type metadata accessor for ArchivedSessionService()[-1].Description;
  v7 = (Description[80] + 16) & ~Description[80];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFA78C;

  return sub_1E61C7114(a1, a2, v2 + v7);
}

uint64_t sub_1E61C7770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D10, &qword_1E65F37A0);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D18, &qword_1E65F37A8);
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61C78A4, 0, 0);
}

uint64_t sub_1E61C78A4()
{
  v1 = v0[3];
  v2 = ArchivedSessionService.makeSampleContentArchivedSessionsUpdatedStream.getter();
  v0[11] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1E61C79A0;
  v6 = v0[7];

  return v8(v6);
}

uint64_t sub_1E61C79A0()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1E5FE0E84;
  }

  else
  {
    v4 = sub_1E61C7AD0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E61C7AD0()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_1E61C7BAC;
  v7 = v0[10];
  v8 = v0[8];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v8);
}

uint64_t sub_1E61C7BAC()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E61C7CA8, 0, 0);
}

uint64_t sub_1E61C7CA8()
{
  v1 = v0[2];
  v0[15] = v1;
  if (v1)
  {
    sub_1E65E6058();
    v0[16] = sub_1E65E6048();
    v3 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E61C7DA8, v3, v2);
  }

  else
  {
    v4 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1E61C7DA8()
{
  v1 = v0[16];
  v2 = v0[4];

  v0[17] = sub_1E65E4E48();

  return MEMORY[0x1EEE6DFA0](sub_1E61C7E1C, 0, 0);
}

uint64_t sub_1E61C7E1C()
{
  v1 = v0[4];
  v2 = sub_1E608A340(v0[17], v0[15]);
  v0[18] = v2;

  v3 = swift_task_alloc();
  v0[19] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E69E87D8] + 4);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_1E61C7F28;

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1E61C7F28()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E61C805C, 0, 0);
}

uint64_t sub_1E61C805C()
{
  v1 = *(MEMORY[0x1E69E8678] + 4);
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_1E61C7BAC;
  v3 = v0[10];
  v4 = v0[8];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v4);
}

uint64_t sub_1E61C8104(uint64_t a1)
{
  Description = type metadata accessor for ArchivedSessionService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E61C7770(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E61C8224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61C82D0, 0, 0);
}

uint64_t sub_1E61C82D0()
{
  v1 = *(v0 + 80);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 80) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v35 = *(v0 + 80);

  v10 = 0;
  v33 = v8;
  v34 = v3;
  while (v7)
  {
LABEL_11:
    v14 = *(v0 + 104);
    v15 = *(v0 + 88);
    v16 = (*(v35 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
    v17 = v16[1];
    v36 = *v16;
    v37 = *(v0 + 96);
    v18 = sub_1E65E60A8();
    v19 = *(v18 - 8);
    (*(v19 + 56))(v14, 1, 1, v18);
    v20 = swift_allocObject();
    v20[2] = 0;
    v21 = v20 + 2;
    v20[3] = 0;
    v20[4] = v15;
    v20[5] = v36;
    v20[6] = v17;
    sub_1E5DF4C84(v14, v37);
    LODWORD(v14) = (*(v19 + 48))(v37, 1, v18);
    swift_bridgeObjectRetain_n();

    v22 = *(v0 + 96);
    if (v14 == 1)
    {
      sub_1E5DF4CF4(*(v0 + 96));
      if (*v21)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1E65E6098();
      (*(v19 + 8))(v22, v18);
      if (*v21)
      {
LABEL_13:
        v23 = v20[3];
        swift_getObjectType();
        swift_unknownObjectRetain();
        v24 = sub_1E65E5FC8();
        v26 = v25;
        swift_unknownObjectRelease();
        goto LABEL_16;
      }
    }

    v24 = 0;
    v26 = 0;
LABEL_16:
    v27 = **(v0 + 72);
    v28 = swift_allocObject();
    *(v28 + 16) = &unk_1E65F5828;
    *(v28 + 24) = v20;

    if (v26 | v24)
    {
      v11 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v24;
      *(v0 + 40) = v26;
    }

    else
    {
      v11 = 0;
    }

    v12 = *(v0 + 104);
    v7 &= v7 - 1;
    *(v0 + 48) = 1;
    *(v0 + 56) = v11;
    *(v0 + 64) = v27;
    swift_task_create();

    result = sub_1E5DF4CF4(v12);
    v8 = v33;
    v3 = v34;
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v13);
    ++v10;
    if (v7)
    {
      v10 = v13;
      goto LABEL_11;
    }
  }

  v29 = *(v0 + 96);
  v30 = *(v0 + 104);
  v31 = *(v0 + 80);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1E61C8634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0764F0, &qword_1E65F5830);
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v9 = *(v8 + 64) + 15;
  v6[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61C8704, 0, 0);
}

uint64_t sub_1E61C8704()
{
  v1 = v0[6];
  v0[2] = v0[5];
  v0[3] = v1;
  v0[10] = sub_1E65E6058();
  v0[11] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E61C87A4, v3, v2);
}

uint64_t sub_1E61C87A4()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[4];

  sub_1E65E4E98();

  return MEMORY[0x1EEE6DFA0](sub_1E61C8820, 0, 0);
}

uint64_t sub_1E61C8820()
{
  v1 = *(v0 + 80);
  *(v0 + 96) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E61C88AC, v3, v2);
}

uint64_t sub_1E61C88AC()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];

  sub_1E65E4E18();
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E61C8944(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFA78C;

  return sub_1E61C8224(a1, a2, v7, v6);
}

uint64_t sub_1E61C89F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E61C8634(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E61C8AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for PageMetricsClick();
  v5[4] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v8 = *(*(sub_1E65DFE38() - 8) + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61C8B80, 0, 0);
}

uint64_t sub_1E61C8B80()
{
  v1 = v0[6];
  sub_1E61C91D4(v0[2], v1);
  v2 = sub_1E65E02A8();
  v3 = (*(*(v2 - 8) + 48))(v1, 3, v2);
  if (v3 <= 1)
  {
    if (!v3)
    {
      sub_1E61C9238(v0[6], MEMORY[0x1E699D5A8]);
    }

    goto LABEL_8;
  }

  if (v3 != 2)
  {
LABEL_8:
    v37 = v0[5];
    v36 = v0[6];

    v38 = v0[1];

    return v38();
  }

  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  v7 = sub_1E65D9D78();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = v5[5];
  v9 = *MEMORY[0x1E69CBAA0];
  v10 = sub_1E65D8C68();
  (*(*(v10 - 8) + 104))(v4 + v8, v9, v10);
  v11 = v5[6];
  v12 = sub_1E65D74E8();
  (*(*(v12 - 8) + 56))(v4 + v11, 1, 1, v12);
  v13 = v5[8];
  v14 = sub_1E65DA208();
  (*(*(v14 - 8) + 56))(v4 + v13, 1, 1, v14);
  v15 = sub_1E65E28F8();
  v17 = v16;
  v18 = v5[14];
  v19 = *MEMORY[0x1E69CBCC8];
  v20 = sub_1E65D8F28();
  (*(*(v20 - 8) + 104))(v4 + v18, v19, v20);
  v21 = v5[15];
  v22 = *MEMORY[0x1E69CC448];
  v23 = sub_1E65D9908();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v4 + v21, v22, v23);
  (*(v24 + 56))(v4 + v21, 0, 1, v23);
  v25 = MEMORY[0x1E69E7CC0];
  v26 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
  *(v4 + v5[7]) = v25;
  v27 = (v4 + v5[9]);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v4 + v5[10]);
  *v28 = 0;
  v28[1] = 0;
  *(v4 + v5[11]) = v26;
  v29 = (v4 + v5[12]);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v4 + v5[13]);
  *v30 = v15;
  v30[1] = v17;
  v31 = *(v6 + 56);
  v39 = (*(v6 + 48) + **(v6 + 48));
  v32 = *(*(v6 + 48) + 4);
  v33 = swift_task_alloc();
  v0[7] = v33;
  *v33 = v0;
  v33[1] = sub_1E61C8FAC;
  v34 = v0[5];

  return v39(v34);
}

uint64_t sub_1E61C8FAC()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1E61C9148;
  }

  else
  {
    v3 = sub_1E61C90C0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E61C90C0()
{
  sub_1E61C9238(v0[5], type metadata accessor for PageMetricsClick);
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E61C9148()
{
  v1 = v0[6];
  sub_1E61C9238(v0[5], type metadata accessor for PageMetricsClick);

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_1E61C91D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DFE38();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E61C9238(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E61C9298(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_1E65E4C08();
}

uint64_t sub_1E61C9468(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = a2;
  v26 = a1;
  v4 = type metadata accessor for AppComposer();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076590, &qword_1E65F58B0);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - v8;
  v10 = sub_1E65DCA88();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65DD1D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *v3;
  (*(v11 + 16))(v14, v26, v10);
  sub_1E65DD1B8();
  sub_1E5E1DEAC(v3, &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v21 = swift_allocObject();
  sub_1E5E1FA80(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  type metadata accessor for AppFeature();
  sub_1E61CC7BC(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E61CC7BC(&qword_1EE2D6B00, MEMORY[0x1E699EF70]);
  sub_1E65E4DE8();
  v22 = swift_allocObject();
  *(v22 + 16) = v29;

  sub_1E65E4CC8();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1E61CC804;
  *(v23 + 24) = v22;

  v24 = sub_1E65E4F08();

  (*(v30 + 8))(v9, v31);
  (*(v16 + 8))(v19, v15);
  return v24;
}

uint64_t sub_1E61C989C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v56 = &v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = &v49 - v10;
  v11 = sub_1E65D7848();
  v12 = *(v11 - 8);
  v51 = v11;
  v52 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1E65DD0F8();
  v15 = *(v59 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1E65DD0A8();
  v19 = *(v50 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v50);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v49 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v55 = &v49 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v58 = &v49 - v29;
  v30 = type metadata accessor for AppState();
  v31 = a1 + v30[69];
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E58, &qword_1E65F1128) + 28);
  v33 = *(a2 + *(type metadata accessor for AppComposer() + 20) + 8);
  sub_1E65DAE08();
  v34 = v51;
  sub_1E65DD068();
  v35 = a1 + v30[6];
  sub_1E637A69C();
  v53 = v26;
  sub_1E65DCFE8();
  (*(v15 + 8))(v18, v59);
  v36 = *(v19 + 8);
  v37 = v23;
  v38 = v50;
  v39 = v52;
  v36(v37, v50);
  v40 = v30[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v59 = a1;
  v41 = v56;
  sub_1E65E4C98();
  v42 = v54;
  sub_1E5E1F544(v54);
  sub_1E5DFE50C(v41, &qword_1ED071F78, &unk_1E65EA3F0);
  v43 = *(v39 + 48);
  if (v43(v42, 1, v34) == 1)
  {
    v44 = v57;
    sub_1E65D77C8();
    if (v43(v42, 1, v34) != 1)
    {
      sub_1E5DFE50C(v42, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    v44 = v57;
    (*(v39 + 32))(v57, v42, v34);
  }

  v45 = v55;
  v46 = v53;
  sub_1E65DCFF8();
  (*(v39 + 8))(v44, v34);
  v36(v46, v38);
  if (v33 < 2 || v33 == 3)
  {
    v47 = v58;
    sub_1E65DD028();
    v36(v45, v38);
    sub_1E63969B4();
    sub_1E65DD058();
    return (v36)(v47, v38);
  }

  else
  {
    result = sub_1E65E69D8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E61C9E00(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E65DD0A8();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61C9EC0, 0, 0);
}

uint64_t sub_1E61C9EC0()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = **(v0 + 24);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E6013E58(v4);
  (*(v2 + 8))(v1, v3);
  v6 = sub_1E65D7A38();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1E61C9FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a5;
  v9 = type metadata accessor for AppComposer();
  v42 = *(v9 - 8);
  v41 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v37 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076038, &qword_1E65F4908);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076578, &qword_1E65F58A0);
  v17 = *(v16 - 8);
  v39 = v16;
  v40 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v36 - v19;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076580, &qword_1E65F58A8);
  v21 = *(*(v38 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v38);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v36 - v25;
  sub_1E619CA14(a2, a3, v15);
  v27 = *(a4 + 16);
  v28 = *(a4 + 24);
  v29 = sub_1E5FED46C(&qword_1ED076080, &qword_1ED076038, &qword_1E65F4908);
  sub_1E5E1EC14();
  (*(v12 + 8))(v15, v11);
  v30 = a1;
  v31 = v37;
  sub_1E5E1DEAC(v30, v37);
  v32 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v33 = swift_allocObject();
  sub_1E5E1FA80(v31, v33 + v32);
  v44 = v11;
  v45 = v29;
  swift_getOpaqueTypeConformance2();
  v34 = v39;
  sub_1E6259D5C(sub_1E60772D8, v33, v39);

  (*(v40 + 8))(v20, v34);
  sub_1E61CC614();
  sub_1E5FEE4C8(v24);
  sub_1E5DFE50C(v24, &qword_1ED076580, &qword_1E65F58A8);
  sub_1E5FEE4C8(v26);
  return sub_1E5DFE50C(v26, &qword_1ED076580, &qword_1E65F58A8);
}

uint64_t sub_1E61CA3B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v60 = a6;
  v51 = a3;
  v52 = a2;
  v53 = a1;
  v64 = a7;
  v10 = type metadata accessor for AppComposer();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0764F8, &qword_1E65F5840);
  v15 = *(v14 - 8);
  v57 = v14;
  v58 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v55 = v48 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076500, &qword_1E65F5848);
  v19 = *(v18 - 8);
  v62 = v18;
  v63 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v54 = v48 - v21;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076508, &qword_1E65F5850);
  v22 = *(*(v61 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v61);
  v56 = v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v59 = v48 - v25;
  v49 = v13;
  sub_1E5E1DEAC(a2, v13);
  sub_1E5DF650C(a4, v65);
  v26 = *a5;
  v27 = a5[3];
  v48[1] = a5[5];
  v48[2] = a5[7];
  v48[3] = a5[9];
  v28 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v50 = v28 + v12;
  v29 = (v28 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  sub_1E5E1FA80(v13, v31 + v28);
  *(v31 + v29) = v51;
  sub_1E5DF599C(v65, v31 + v30);
  v32 = (v31 + ((v30 + 47) & 0xFFFFFFFFFFFFFFF8));
  v33 = *(a5 + 3);
  v32[2] = *(a5 + 2);
  v32[3] = v33;
  v32[4] = *(a5 + 4);
  v34 = *(a5 + 1);
  *v32 = *a5;
  v32[1] = v34;

  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076510, &qword_1E65F5858);
  sub_1E5FED46C(&qword_1ED076518, &qword_1ED076510, &qword_1E65F5858);
  v35 = v55;
  sub_1E65DCFA8();
  v36 = *(v60 + 16);
  v37 = *(v60 + 24);
  v38 = sub_1E5FED46C(&qword_1ED076520, &qword_1ED0764F8, &qword_1E65F5840);
  v39 = v54;
  v40 = v57;
  sub_1E5E1EC14();
  v41 = v40;
  (*(v58 + 8))(v35, v40);
  v42 = v49;
  sub_1E5E1DEAC(v52, v49);
  v43 = swift_allocObject();
  sub_1E5E1FA80(v42, v43 + v28);
  *&v65[0] = v41;
  *(&v65[0] + 1) = v38;
  swift_getOpaqueTypeConformance2();
  v44 = v56;
  v45 = v62;
  sub_1E6259D5C(sub_1E60722DC, v43, v62);

  (*(v63 + 8))(v39, v45);
  sub_1E61CC11C();
  v46 = v59;
  sub_1E5FEE4C8(v44);
  sub_1E5DFE50C(v44, &qword_1ED076508, &qword_1E65F5850);
  sub_1E5FEE4C8(v46);
  return sub_1E5DFE50C(v46, &qword_1ED076508, &qword_1E65F5850);
}

uint64_t sub_1E61CA938@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v121 = a5;
  v157 = a4;
  v152 = a3;
  v156 = a2;
  v129 = a1;
  v143 = a6;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074408, &qword_1E65F0B70);
  v130 = *(v131 - 8);
  v7 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v155 = v117 - v8;
  v151 = sub_1E65D76F8();
  v150 = *(v151 - 8);
  v128 = *(v150 + 64);
  v9 = MEMORY[0x1EEE9AC00](v151);
  v158 = v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v159 = v117 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074410, &qword_1E65F0B78);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v154 = v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v160 = v117 - v16;
  v17 = type metadata accessor for AppComposer();
  v148 = *(v17 - 8);
  v147 = *(v148 + 64);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v127 = v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v126 = (v117 - v20);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074380, &qword_1E65F0970);
  v141 = *(v140 - 8);
  v21 = *(v141 + 64);
  v22 = MEMORY[0x1EEE9AC00](v140);
  v135 = v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v136 = v117 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v138 = v117 - v26;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076530, &qword_1E65F5860);
  v27 = *(*(v142 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v142);
  v137 = v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v139 = v117 - v30;
  v31 = sub_1E65E07B8();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v35 = v117 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v40 = v117 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076538, &qword_1E65F5868);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v44 = v117 - v43;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076540, &qword_1E65F5870);
  v45 = *(*(v134 - 8) + 64);
  v46 = MEMORY[0x1EEE9AC00](v134);
  v133 = v117 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v153 = v117 - v48;
  sub_1E65E4AE8();
  LODWORD(v149) = sub_1E65E4468();
  v49 = *a2;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E0668();
  (*(v37 + 8))(v40, v36);
  sub_1E65E0798();
  (*(v32 + 8))(v35, v31);
  sub_1E65E3BF8();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = &v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076548, &qword_1E65F5898) + 36)];
  *v58 = v149;
  *(v58 + 1) = v51;
  *(v58 + 2) = v53;
  *(v58 + 3) = v55;
  *(v58 + 4) = v57;
  v58[40] = 0;
  v59 = sub_1E65E3DF8();
  v60 = sub_1E65E4438();
  v61 = &v44[*(v41 + 36)];
  *v61 = v59;
  v61[8] = v60;
  sub_1E61CC218();
  sub_1E65E4898();
  sub_1E5DFE50C(v44, &qword_1ED076538, &qword_1E65F5868);
  v62 = v126;
  sub_1E5E1DEAC(v156, v126);
  sub_1E5DF650C(v157, &v164);
  v63 = v121;
  v122 = *v121;
  v123 = v121[3];
  v124 = v121[5];
  v125 = v121[7];
  v149 = v121[9];
  v64 = *(v148 + 80);
  v65 = (v64 + 16) & ~v64;
  v146 = v65 + v147;
  v145 = v65;
  v144 = v64 | 7;
  v66 = (v65 + v147 + 7) & 0xFFFFFFFFFFFFFFF8;
  v148 = v66;
  v147 = (v66 + 47) & 0xFFFFFFFFFFFFFFF8;
  v67 = swift_allocObject();
  v132 = v67;
  sub_1E5E1FA80(v62, v67 + v65);
  sub_1E5DF599C(&v164, v67 + v66);
  v68 = (v67 + ((v66 + 47) & 0xFFFFFFFFFFFFFFF8));
  v69 = v63[3];
  v68[2] = v63[2];
  v68[3] = v69;
  v68[4] = v63[4];
  v70 = v63[1];
  *v68 = *v63;
  v68[1] = v70;
  v71 = sub_1E65E3E08();
  v72 = *(v71 - 8);
  v73 = v160;
  (*(v72 + 16))(v160, v129, v71);
  (*(v72 + 56))(v73, 0, 1, v71);
  swift_unknownObjectRetain();

  v74 = v159;
  sub_1E65D76E8();
  (*(v130 + 104))(v155, *MEMORY[0x1E699D720], v131);
  v75 = v156;
  v76 = v127;
  sub_1E5E1DEAC(v156, v127);
  v131 = swift_allocObject();
  v77 = v145;
  sub_1E5E1FA80(v76, v131 + v145);
  sub_1E5E1DEAC(v75, v76);
  v130 = swift_allocObject();
  v78 = v77;
  sub_1E5E1FA80(v76, v130 + v77);
  sub_1E5E1DEAC(v75, v76);
  v129 = swift_allocObject();
  sub_1E5E1FA80(v76, v129 + v77);
  v79 = v76;
  sub_1E5E1DEAC(v75, v76);
  sub_1E5DF650C(v157, &v163);
  v80 = v150;
  v81 = *(v150 + 16);
  v120 = v150 + 16;
  v126 = v81;
  v82 = v158;
  v83 = v151;
  (v81)(v158, v74, v151);
  v84 = v147;
  v118 = (v147 + 87) & 0xFFFFFFFFFFFFFFF8;
  v119 = v118 + 8;
  v85 = (v118 + 8 + *(v80 + 80)) & ~*(v80 + 80);
  v86 = swift_allocObject();
  sub_1E5E1FA80(v79, v86 + v78);
  sub_1E5DF599C(&v163, v86 + v148);
  v87 = (v86 + v84);
  v88 = v86;
  v128 = v86;
  v89 = v63[3];
  v87[2] = v63[2];
  v87[3] = v89;
  v87[4] = v63[4];
  v90 = v63[1];
  *v87 = *v63;
  v87[1] = v90;
  v91 = v152;
  v92 = v118;
  *(v88 + v118) = v152;
  (*(v80 + 32))(v88 + v85, v82, v83);
  v93 = v156;
  sub_1E5E1DEAC(v156, v79);
  sub_1E5DF650C(v157, &v163);
  v94 = swift_allocObject();
  v95 = v145;
  sub_1E5E1FA80(v79, v94 + v145);
  sub_1E5DF599C(&v163, v94 + v148);
  v96 = (v94 + v147);
  v157 = v94;
  v97 = v63[3];
  v96[2] = v63[2];
  v96[3] = v97;
  v96[4] = v63[4];
  v98 = v63[1];
  *v96 = *v63;
  v96[1] = v98;
  *(v94 + v92) = v91;
  sub_1E5E1DEAC(v93, v79);
  v156 = swift_allocObject();
  sub_1E5E1FA80(v79, v156 + v95);
  sub_1E5DFD1CC(v160, v154, &qword_1ED074410, &qword_1E65F0B78);
  (v126)(v158, v159, v83);
  v148 = type metadata accessor for ActionButtonDescriptor(0);
  swift_retain_n();
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
  v147 = type metadata accessor for ArtworkDescriptor();
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074418, &qword_1E65F0B80);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074420, &qword_1E65F0B88);
  v127 = type metadata accessor for ContextMenu(0);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074428, &qword_1E65F0B90);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
  v124 = type metadata accessor for ItemContext();
  v123 = type metadata accessor for ItemMetrics();
  v122 = type metadata accessor for SectionHeaderSubtitleDescriptor();
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074430, &qword_1E65F0B98);
  v120 = type metadata accessor for SectionMetrics();
  v119 = type metadata accessor for ViewDescriptor();
  v118 = sub_1E61CC7BC(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
  v117[7] = sub_1E60731B0();
  v117[6] = sub_1E61CC7BC(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  v117[5] = sub_1E5FEB2FC();
  v117[4] = sub_1E60C08DC();
  v117[3] = sub_1E60C15C0();
  v117[2] = sub_1E61CC7BC(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
  v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v100 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v101 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0);
  *&v163 = v100;
  *(&v163 + 1) = v101;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v163 = v99;
  *(&v163 + 1) = OpaqueTypeConformance2;
  v117[1] = swift_getOpaqueTypeConformance2();
  sub_1E60728B0();
  sub_1E61CC7BC(&qword_1EE2DB720, type metadata accessor for ItemContext);
  sub_1E61CC7BC(&qword_1EE2DB738, type metadata accessor for ItemContext);
  sub_1E61CC7BC(&qword_1EE2DB730, type metadata accessor for ItemContext);
  sub_1E61CC7BC(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
  sub_1E61CC7BC(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
  sub_1E60C217C();
  sub_1E61CC7BC(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
  sub_1E5DF11E0();
  sub_1E5DF1338();
  sub_1E61CC7BC(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
  v103 = v135;
  sub_1E65DC198();
  (*(v150 + 8))(v159, v151);
  sub_1E5DFE50C(v160, &qword_1ED074410, &qword_1E65F0B78);
  v104 = sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970);
  v105 = v136;
  v106 = v140;
  sub_1E5FEE4C8(v103);
  v107 = *(v141 + 8);
  v107(v103, v106);
  v108 = v138;
  sub_1E5FEE4C8(v105);
  v107(v105, v106);
  v109 = sub_1E65E4458();
  v110 = v137;
  sub_1E6501658(v109, 0x4034000000000000, 0, v106, v104);
  v107(v108, v106);
  v111 = sub_1E61CC52C();
  v112 = v139;
  v113 = v142;
  sub_1E5FEE4C8(v110);
  sub_1E5DFE50C(v110, &qword_1ED076530, &qword_1E65F5860);
  v114 = v153;
  v115 = v133;
  sub_1E5DFD1CC(v153, v133, &qword_1ED076540, &qword_1E65F5870);
  *&v164 = v115;
  sub_1E5EB2078(v112, v110);
  *(&v164 + 1) = v110;
  *&v163 = v134;
  *(&v163 + 1) = v113;
  v161 = sub_1E61CC478(&qword_1ED076570, &qword_1ED076540, &qword_1E65F5870, sub_1E61CC218);
  v162 = v111;
  sub_1E61C9298(&v164, 2uLL, &v163);
  sub_1E5DFE50C(v112, &qword_1ED076530, &qword_1E65F5860);
  sub_1E5DFE50C(v114, &qword_1ED076540, &qword_1E65F5870);
  sub_1E5DFE50C(v110, &qword_1ED076530, &qword_1E65F5860);
  return sub_1E5DFE50C(v115, &qword_1ED076540, &qword_1E65F5870);
}

uint64_t sub_1E61CBED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);

  return sub_1E61CA938(a1, (v2 + v6), v8, v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8), (v2 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_1E61CBF9C(char *a1, uint64_t a2, char *a3, __int128 *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v16 - v10;
  sub_1E61E66C8(a1, a3, a4, v16 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v13 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0);
  v16[0] = v12;
  v16[1] = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1E69482C0](v11, v7, OpaqueTypeConformance2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1E61CC11C()
{
  result = qword_1ED076528;
  if (!qword_1ED076528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076508, &qword_1E65F5850);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0764F8, &qword_1E65F5840);
    sub_1E5FED46C(&qword_1ED076520, &qword_1ED0764F8, &qword_1E65F5840);
    swift_getOpaqueTypeConformance2();
    sub_1E5FEB170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076528);
  }

  return result;
}

unint64_t sub_1E61CC218()
{
  result = qword_1ED076550;
  if (!qword_1ED076550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076538, &qword_1E65F5868);
    sub_1E61CC2A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076550);
  }

  return result;
}

unint64_t sub_1E61CC2A4()
{
  result = qword_1ED076558;
  if (!qword_1ED076558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076548, &qword_1E65F5898);
    sub_1E61CC7BC(&qword_1ED076560, MEMORY[0x1E697D6D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076558);
  }

  return result;
}

uint64_t sub_1E61CC360(char *a1)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  return sub_1E61CBF9C(a1, v1 + v4, (v1 + v5), (v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E61CC478(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1E61CC7BC(&qword_1EE2D4BC8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E61CC52C()
{
  result = qword_1ED076568;
  if (!qword_1ED076568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076530, &qword_1E65F5860);
    sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970);
    sub_1E61CC7BC(&qword_1EE2D4C38, MEMORY[0x1E6980270]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076568);
  }

  return result;
}

unint64_t sub_1E61CC614()
{
  result = qword_1ED076588;
  if (!qword_1ED076588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076580, &qword_1E65F58A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076038, &qword_1E65F4908);
    sub_1E5FED46C(&qword_1ED076080, &qword_1ED076038, &qword_1E65F4908);
    swift_getOpaqueTypeConformance2();
    sub_1E5FEB170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076588);
  }

  return result;
}

uint64_t sub_1E61CC728(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1E61CC7BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E61CC804(uint64_t result, uint64_t a2)
{
  if (*(v2 + 16))
  {
    return sub_1E60C34A8(result, a2);
  }

  return result;
}

uint64_t sub_1E61CC82C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1E65E6058();
  v3[5] = sub_1E65E6048();
  v5 = sub_1E65E5FC8();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E61CC8C8, v5, v4);
}

uint64_t sub_1E61CC8C8()
{
  v1 = v0[4];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = *(v0[4] + 24);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 24);
    v13 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[9] = v7;
    *v7 = v0;
    v7[1] = sub_1E61CCA44;
    v9 = v0[2];
    v8 = v0[3];

    return v13(v9, v8, ObjectType, v3);
  }

  else
  {
    v11 = v0[5];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1E61CCA44()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1E61CCB88, v5, v4);
}

uint64_t sub_1E61CCB88()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E61CCBE8(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 64) = a1;
  sub_1E65E6058();
  *(v2 + 24) = sub_1E65E6048();
  v4 = sub_1E65E5FC8();
  *(v2 + 32) = v4;
  *(v2 + 40) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E61CCC84, v4, v3);
}

uint64_t sub_1E61CCC84()
{
  v1 = *(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v3 = *(*(v0 + 16) + 24);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 32);
    v12 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 56) = v7;
    *v7 = v0;
    v7[1] = sub_1E61CCE00;
    v8 = *(v0 + 64);

    return v12(v8, ObjectType, v3);
  }

  else
  {
    v10 = *(v0 + 24);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1E61CCE00()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1E5F961F4, v5, v4);
}

uint64_t sub_1E61CCF44()
{
  sub_1E5E0BE48(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1E61CCF7C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E61CCFE8()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E61CD054(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFA78C;

  return sub_1E61CC82C(a1, a2);
}

uint64_t sub_1E61CD0F8(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E61CCBE8(a1);
}

uint64_t sub_1E61CD18C()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = sub_1E65E3B68();
  __swift_project_value_buffer(v1, qword_1EE2EA2A0);
  sub_1E65E3B18();
  result = sub_1E65E3B18();
  v3 = *(v0 + 24);
  if (v3)
  {
    v4 = *(v0 + 32);

    v3(v5);

    return sub_1E5F9169C(v3, v4);
  }

  return result;
}

uint64_t sub_1E61CD2D8(uint64_t a1, char a2)
{
  *(v3 + 184) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  v4 = type metadata accessor for RouteDetourPresenter.State(0);
  *(v3 + 56) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = sub_1E65E6058();
  *(v3 + 80) = sub_1E65E6048();
  v7 = sub_1E65E5FC8();
  *(v3 + 88) = v7;
  *(v3 + 96) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E61CD3A8, v7, v6);
}

uint64_t sub_1E61CD3A8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = OBJC_IVAR____TtC10Blackbeard20RouteDetourPresenter_state;
  swift_beginAccess();
  sub_1E61CFFB4(v3 + v4, v2, type metadata accessor for RouteDetourPresenter.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v12 = *(v0 + 80);
    v13 = *(v0 + 64);

    v14 = type metadata accessor for RouteDetourPresenter.State;
    v15 = v13;
LABEL_10:
    sub_1E61D001C(v15, v14);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v16 = *(v0 + 80);

LABEL_11:
    v19 = *(v0 + 64);

    v20 = *(v0 + 8);

    return v20();
  }

  v6 = *(v0 + 64);
  v7 = *(v0 + 40);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076598, &qword_1E65F59C8);
  v9 = *(v6 + *(v8 + 48));
  *(v0 + 104) = v9;
  v10 = *(v6 + *(v8 + 64));
  *(v0 + 112) = v10;
  if (v10 != v7)
  {
    v11 = *(v0 + 80);

LABEL_9:
    v15 = *(v0 + 64);
    v14 = type metadata accessor for RouteDestination;
    goto LABEL_10;
  }

  v17 = [v10 presentingViewController];
  if (v17)
  {
    v18 = *(v0 + 80);

    goto LABEL_9;
  }

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v22 = sub_1E65E3B68();
  __swift_project_value_buffer(v22, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v23 = swift_task_alloc();
  *(v0 + 120) = v23;
  *v23 = v0;
  v23[1] = sub_1E61CD634;
  v24 = *(v0 + 184);

  return sub_1E6394EA4(v24);
}

uint64_t sub_1E61CD634()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 72);
  v4 = *v0;

  *(v1 + 128) = sub_1E65E6048();
  v5 = swift_task_alloc();
  *(v1 + 136) = v5;
  *v5 = v4;
  v5[1] = sub_1E61CD798;
  v6 = *(v1 + 104);
  v7 = *(v1 + 184);

  return sub_1E6394EA4(v7);
}

uint64_t sub_1E61CD798()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v4 = *(*v0 + 72);
  v8 = *v0;

  v6 = sub_1E65E5FC8();
  *(v1 + 144) = v6;
  *(v1 + 152) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E61CD8DC, v6, v5);
}

uint64_t sub_1E61CD8DC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  v3 = *(v0 + 184);
  v4 = *(v0 + 40);
  *(v0 + 160) = sub_1E65E6048();
  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v4;
  *(v5 + 32) = v3;
  v6 = *(MEMORY[0x1E69E88D0] + 4);
  v7 = swift_task_alloc();
  *(v0 + 176) = v7;
  *v7 = v0;
  v7[1] = sub_1E61CD9F8;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1E61CD9F8()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v4 = *(*v0 + 160);
  v8 = *v0;

  v5 = *(v1 + 152);
  v6 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1E61CDB58, v6, v5);
}

uint64_t sub_1E61CDB58()
{
  v1 = v0[16];

  v2 = v0[11];
  v3 = v0[12];

  return MEMORY[0x1EEE6DFA0](sub_1E61CDBBC, v2, v3);
}

uint64_t sub_1E61CDBBC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[10];
  v4 = v0[8];

  sub_1E61D001C(v4, type metadata accessor for RouteDestination);
  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

char *sub_1E61CDC58()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = objc_allocWithZone(_s20NavigationControllerCMa());
  v7 = sub_1E6239324(v2, sub_1E61D007C, v3, sub_1E61D0084, v4, &unk_1E65F59F0, v5);
  [*&v7[OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_menuGestureRecognizer] addTarget:v1 action:sel_menuButtonTapped];
  return v7;
}

uint64_t sub_1E61CDD88()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 24);
    if (v1)
    {
      v2 = *(result + 32);
      sub_1E5F8711C(*(result + 24));

      v1(v3);
      return sub_1E5F9169C(v1, v2);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1E61CDE18()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 40);
    if (v1)
    {
      v2 = *(result + 48);
      sub_1E5F8711C(*(result + 40));

      v1(v3);
      return sub_1E5F9169C(v1, v2);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1E61CDEA8(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 96) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = a3;
  sub_1E65E6058();
  *(v3 + 56) = sub_1E65E6048();
  v5 = sub_1E65E5FC8();
  *(v3 + 64) = v5;
  *(v3 + 72) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E61CDF44, v5, v4);
}

uint64_t sub_1E61CDF44()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_1E61CE040;
    v4 = *(v0 + 96);
    v5 = *(v0 + 40);

    return sub_1E61CD2D8(v5, v4);
  }

  else
  {
    v7 = *(v0 + 56);

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1E61CE040()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1E61CE184, v5, v4);
}

uint64_t sub_1E61CE184()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E61CE1E4()
{
  sub_1E5F9169C(v0[3], v0[4]);
  sub_1E5F9169C(v0[5], v0[6]);
  sub_1E61D001C(v0 + OBJC_IVAR____TtC10Blackbeard20RouteDetourPresenter_state, type metadata accessor for RouteDetourPresenter.State);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1E61CE298@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RouteDetourPresenter.State(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC10Blackbeard20RouteDetourPresenter_state;
  swift_beginAccess();
  sub_1E61CFFB4(v1 + v7, v6, type metadata accessor for RouteDetourPresenter.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1E61D001C(v6, type metadata accessor for RouteDetourPresenter.State);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_5:
    v10 = 1;
    goto LABEL_6;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076598, &qword_1E65F59C8);

  sub_1E5F9CE80(v6, a1);
  v10 = 0;
LABEL_6:
  v11 = type metadata accessor for RouteDestination();
  return (*(*(v11 - 8) + 56))(a1, v10, 1, v11);
}

uint64_t sub_1E61CE414(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = type metadata accessor for RouteDetourPresenter.State(0);
  v2[13] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = sub_1E65E6058();
  v2[17] = sub_1E65E6048();
  v6 = sub_1E65E5FC8();
  v2[18] = v6;
  v2[19] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E61CE4EC, v6, v5);
}

uint64_t sub_1E61CE4EC()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = sub_1E65E3B68();
  __swift_project_value_buffer(v4, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v5 = OBJC_IVAR____TtC10Blackbeard20RouteDetourPresenter_state;
  swift_beginAccess();
  sub_1E61CFFB4(v3 + v5, v1, type metadata accessor for RouteDetourPresenter.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v7 = v0[14];
      v8 = v0[15];
      v9 = v0[12];
      v38 = v0[13];
      v10 = v0[11];
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076598, &qword_1E65F59C8);
      v12 = *(v8 + *(v11 + 48));
      v0[20] = v12;
      v13 = *(v8 + *(v11 + 64));
      v0[21] = v13;
      v14 = sub_1E61CDC58();
      v0[22] = v14;
      v15 = *(v11 + 48);
      v16 = *(v11 + 64);
      sub_1E61CFFB4(v10, v7, type metadata accessor for RouteDestination);
      *(v7 + v15) = v12;
      *(v7 + v16) = v14;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      v17 = v12;
      v18 = v14;
      sub_1E61CFF50(v7, v3 + v5);
      swift_endAccess();
      v13;
      v19 = swift_task_alloc();
      v0[23] = v19;
      *v19 = v0;
      v19[1] = sub_1E61CE904;

      return sub_1E6394EA4(0);
    }

    else
    {
      return sub_1E65E69D8();
    }
  }

  else
  {
    v21 = v0[17];
    v22 = v0[14];
    v23 = v0[15];
    v24 = v0[12];
    v25 = v0[13];
    v26 = v0[11];

    v27 = *v23;
    v28 = sub_1E61CDC58();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076598, &qword_1E65F59C8);
    v30 = *(v29 + 48);
    v31 = *(v29 + 64);
    sub_1E61CFFB4(v26, v22, type metadata accessor for RouteDestination);
    *(v22 + v30) = v27;
    *(v22 + v31) = v28;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v32 = v27;
    v33 = v28;
    sub_1E61CFF50(v22, v3 + v5);
    swift_endAccess();
    type metadata accessor for RouteDetourPresenter.RouteDetourDisplayHandle();
    v34 = swift_allocObject();
    *(v34 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v34 + 24) = &off_1F5FB4FB8;
    swift_unknownObjectWeakAssign();

    v36 = v0[14];
    v35 = v0[15];

    v37 = v0[1];

    return v37(v34, &off_1F5FB26B8);
  }
}

uint64_t sub_1E61CE904()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v6 = *v0;

  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1E61CEA24, v4, v3);
}

uint64_t sub_1E61CEA24()
{
  v1 = v0[21];
  v2 = [v1 presentingViewController];
  v0[24] = v2;

  if (v2)
  {
    v3 = v0[16];
    v0[25] = sub_1E65E6048();
    v5 = sub_1E65E5FC8();
    v0[26] = v5;
    v0[27] = v4;

    return MEMORY[0x1EEE6DFA0](sub_1E61CEBBC, v5, v4);
  }

  else
  {
    v6 = v0[17];

    v8 = v0[21];
    v7 = v0[22];
    v9 = v0[20];
    v10 = v0[15];
    type metadata accessor for RouteDetourPresenter.RouteDetourDisplayHandle();
    v11 = swift_allocObject();
    *(v11 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v11 + 24) = &off_1F5FB4FB8;
    swift_unknownObjectWeakAssign();

    sub_1E61D001C(v10, type metadata accessor for RouteDestination);
    v13 = v0[14];
    v12 = v0[15];

    v14 = v0[1];

    return v14(v11, &off_1F5FB26B8);
  }
}

uint64_t sub_1E61CEBBC()
{
  v1 = v0[24];
  v2 = v0[16];
  v0[28] = sub_1E65E6048();
  v3 = swift_task_alloc();
  v0[29] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = 0;
  v4 = *(MEMORY[0x1E69E88D0] + 4);
  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_1E61CECC8;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1E61CECC8()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  v3 = *(*v0 + 232);
  v4 = *(*v0 + 224);
  v8 = *v0;

  v5 = *(v1 + 216);
  v6 = *(v1 + 208);

  return MEMORY[0x1EEE6DFA0](sub_1E61CEE28, v6, v5);
}

uint64_t sub_1E61CEE28()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1E61CEE94, v2, v3);
}

uint64_t sub_1E61CEE94()
{
  v1 = v0[17];

  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  v5 = v0[15];
  type metadata accessor for RouteDetourPresenter.RouteDetourDisplayHandle();
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 24) = &off_1F5FB4FB8;
  swift_unknownObjectWeakAssign();

  sub_1E61D001C(v5, type metadata accessor for RouteDestination);
  v8 = v0[14];
  v7 = v0[15];

  v9 = v0[1];

  return v9(v6, &off_1F5FB26B8);
}

uint64_t sub_1E61CEF94(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 104) = a2;
  *(v4 + 112) = v3;
  *(v4 + 280) = a3;
  *(v4 + 96) = a1;
  v5 = type metadata accessor for RouteDestination();
  *(v4 + 120) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  v7 = type metadata accessor for RouteDetourPresenter.State(0);
  *(v4 + 152) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = sub_1E65E6058();
  *(v4 + 184) = sub_1E65E6048();
  v10 = sub_1E65E5FC8();
  *(v4 + 192) = v10;
  *(v4 + 200) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E61CF0BC, v10, v9);
}

uint64_t sub_1E61CF0BC()
{
  v89 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = *(v0 + 112);
  v4 = OBJC_IVAR____TtC10Blackbeard20RouteDetourPresenter_state;
  swift_beginAccess();
  sub_1E61CFFB4(v3 + v4, v1, type metadata accessor for RouteDetourPresenter.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v39 = *(v0 + 184);
    v21 = *(v0 + 168);

    v40 = type metadata accessor for RouteDetourPresenter.State;
LABEL_21:
    v37 = v40;
    v38 = v21;
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v41 = *(v0 + 184);

LABEL_23:
    v54 = *(v0 + 160);
    v53 = *(v0 + 168);
    v56 = *(v0 + 136);
    v55 = *(v0 + 144);
    v57 = *(v0 + 128);

    v58 = *(v0 + 8);

    return v58();
  }

  v6 = *(v0 + 168);
  v7 = *(v0 + 144);
  v8 = *(v0 + 96);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076598, &qword_1E65F59C8);
  v10 = *(v6 + *(v9 + 48));
  *(v0 + 208) = v10;
  v11 = *(v6 + *(v9 + 64));
  *(v0 + 216) = v11;
  sub_1E5F9CE80(v6, v7);
  if (object_getClass(v8) != _TtCC10Blackbeard20RouteDetourPresenterP33_E527F0BD857B0EA0BE2FC0D1803B804B24RouteDetourDisplayHandle || !v8)
  {
    v42 = *(v0 + 184);

    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v43 = *(v0 + 96);
    v44 = sub_1E65E3B68();
    __swift_project_value_buffer(v44, qword_1EE2EA2A0);
    swift_unknownObjectRetain();
    v18 = sub_1E65E3B48();
    v45 = sub_1E65E6328();
    swift_unknownObjectRelease();
    v46 = os_log_type_enabled(v18, v45);
    v21 = *(v0 + 144);
    if (v46)
    {
      v87 = *(v0 + 96);
      v47 = swift_slowAlloc();
      v48 = v10;
      v49 = swift_slowAlloc();
      v88 = v49;
      *v47 = 136446210;
      *(v0 + 64) = v87;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EE8, &qword_1E65F59D0);
      v50 = sub_1E65E5CE8();
      v52 = sub_1E5DFD4B0(v50, v51, &v88);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_1E5DE9000, v18, v45, "Unexpected display type: %{public}s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x1E694F1C0](v49, -1, -1);
      MEMORY[0x1E694F1C0](v47, -1, -1);

LABEL_20:
      v40 = type metadata accessor for RouteDestination;
      goto LABEL_21;
    }

LABEL_19:
    goto LABEL_20;
  }

  v12 = *(v0 + 96);
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectRetain();
  if (!Strong || (swift_unknownObjectRelease(), Strong != v11))
  {
    v14 = *(v0 + 184);

    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 96);
    v16 = sub_1E65E3B68();
    __swift_project_value_buffer(v16, qword_1EE2EA2A0);
    swift_unknownObjectRetain();
    v17 = v11;
    v18 = sub_1E65E3B48();
    v19 = sub_1E65E6328();
    swift_unknownObjectRelease();

    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 144);
    v22 = *(v0 + 96);
    if (v20)
    {
      v86 = v10;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v88 = v24;
      *v23 = 136446466;
      v25 = swift_unknownObjectWeakLoadStrong();
      v26 = *(v22 + 24);
      *(v0 + 80) = v25;
      *(v0 + 88) = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0765A0, &qword_1E65F59D8);
      v85 = v21;
      v27 = sub_1E65E6648();
      v29 = v28;
      swift_unknownObjectRelease();
      v30 = sub_1E5DFD4B0(v27, v29, &v88);

      *(v23 + 4) = v30;
      *(v23 + 12) = 2082;
      v31 = v17;
      v32 = [v31 description];
      v33 = sub_1E65E5C78();
      v35 = v34;

      v36 = sub_1E5DFD4B0(v33, v35, &v88);

      *(v23 + 14) = v36;
      _os_log_impl(&dword_1E5DE9000, v18, v19, "%{public}s != %{public}s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E694F1C0](v24, -1, -1);
      MEMORY[0x1E694F1C0](v23, -1, -1);

      swift_unknownObjectRelease();
      v37 = type metadata accessor for RouteDestination;
      v38 = v85;
LABEL_22:
      sub_1E61D001C(v38, v37);
      goto LABEL_23;
    }

    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  v60 = v10;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v61 = *(v0 + 152);
  v62 = *(v0 + 160);
  v64 = *(v0 + 136);
  v63 = *(v0 + 144);
  v65 = sub_1E65E3B68();
  __swift_project_value_buffer(v65, qword_1EE2EA2A0);
  sub_1E65E3B18();
  *v62 = v60;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  v66 = v60;
  sub_1E61CFF50(v62, v3 + v4);
  swift_endAccess();
  sub_1E61CFFB4(v63, v64, type metadata accessor for RouteDestination);
  v67 = sub_1E65E3B48();
  v68 = sub_1E65E6338();
  v69 = os_log_type_enabled(v67, v68);
  v70 = *(v0 + 136);
  if (v69)
  {
    v72 = *(v0 + 120);
    v71 = *(v0 + 128);
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v88 = v74;
    *v73 = 141558274;
    *(v73 + 4) = 1752392040;
    *(v73 + 12) = 2080;
    sub_1E61CFFB4(v70, v71, type metadata accessor for RouteDestination);
    v75 = sub_1E65E5CE8();
    v77 = v76;
    sub_1E61D001C(v70, type metadata accessor for RouteDestination);
    v78 = sub_1E5DFD4B0(v75, v77, &v88);

    *(v73 + 14) = v78;
    _os_log_impl(&dword_1E5DE9000, v67, v68, "Dismissing Detour Presenter for %{mask.hash}s", v73, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v74);
    MEMORY[0x1E694F1C0](v74, -1, -1);
    MEMORY[0x1E694F1C0](v73, -1, -1);
  }

  else
  {

    sub_1E61D001C(v70, type metadata accessor for RouteDestination);
  }

  v79 = [v11 presentingViewController];
  *(v0 + 224) = v79;
  if (!v79)
  {
    v83 = *(v0 + 184);
    v84 = *(v0 + 96);
    sub_1E61D001C(*(v0 + 144), type metadata accessor for RouteDestination);

    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  v80 = *(v0 + 176);
  *(v0 + 232) = sub_1E65E6048();
  v82 = sub_1E65E5FC8();
  *(v0 + 240) = v82;
  *(v0 + 248) = v81;

  return MEMORY[0x1EEE6DFA0](sub_1E61CF954, v82, v81);
}

uint64_t sub_1E61CF954()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 176);
  v3 = *(v0 + 280);
  *(v0 + 256) = sub_1E65E6048();
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = *(MEMORY[0x1E69E88D0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 272) = v6;
  *v6 = v0;
  v6[1] = sub_1E61CFA6C;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1E61CFA6C()
{
  v1 = *v0;
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 264);
  v4 = *(*v0 + 256);
  v8 = *v0;

  v5 = *(v1 + 248);
  v6 = *(v1 + 240);

  return MEMORY[0x1EEE6DFA0](sub_1E61CFBCC, v6, v5);
}

uint64_t sub_1E61CFBCC()
{
  v1 = *(v0 + 232);

  v2 = *(v0 + 192);
  v3 = *(v0 + 200);

  return MEMORY[0x1EEE6DFA0](sub_1E61CFC38, v2, v3);
}

uint64_t sub_1E61CFC38()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[23];
  v4 = v0[18];
  v5 = v0[12];

  swift_unknownObjectRelease();
  sub_1E61D001C(v4, type metadata accessor for RouteDestination);
  v7 = v0[20];
  v6 = v0[21];
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[16];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E61CFD0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E61CFDA0;

  return sub_1E61CE414(a1);
}

uint64_t sub_1E61CFDA0(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_1E61CFEA4(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E61CEF94(a1, a2, a3);
}

uint64_t sub_1E61CFF50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RouteDetourPresenter.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E61CFFB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E61D001C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E61D008C(uint64_t a1, char a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFA78C;

  return sub_1E61CDEA8(a1, a2, v2);
}

uint64_t sub_1E61D0138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[57] = a7;
  v8[58] = a8;
  v8[55] = a5;
  v8[56] = a6;
  v8[54] = a4;
  v9 = sub_1E65D76A8();
  v8[59] = v9;
  v10 = *(v9 - 8);
  v8[60] = v10;
  v11 = *(v10 + 64) + 15;
  v8[61] = swift_task_alloc();
  v12 = sub_1E65D8EF8();
  v8[62] = v12;
  v13 = *(v12 - 8);
  v8[63] = v13;
  v14 = *(v13 + 64) + 15;
  v8[64] = swift_task_alloc();
  v15 = sub_1E65D7EB8();
  v8[65] = v15;
  v16 = *(v15 - 8);
  v8[66] = v16;
  v17 = *(v16 + 64) + 15;
  v8[67] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30) - 8) + 64) + 15;
  v8[68] = swift_task_alloc();
  v8[69] = swift_task_alloc();
  v19 = sub_1E65D76F8();
  v8[70] = v19;
  v20 = *(v19 - 8);
  v8[71] = v20;
  v21 = *(v20 + 64) + 15;
  v8[72] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073570, &unk_1E65F4570) - 8) + 64) + 15;
  v8[73] = swift_task_alloc();
  v8[74] = swift_task_alloc();
  v23 = sub_1E65D8F28();
  v8[75] = v23;
  v24 = *(v23 - 8);
  v8[76] = v24;
  v25 = *(v24 + 64) + 15;
  v8[77] = swift_task_alloc();
  v26 = sub_1E65D7848();
  v8[78] = v26;
  v27 = *(v26 - 8);
  v8[79] = v27;
  v28 = *(v27 + 64) + 15;
  v8[80] = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140) - 8) + 64) + 15;
  v8[81] = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FB8, &qword_1E65F4690) - 8) + 64) + 15;
  v8[82] = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v8[83] = swift_task_alloc();
  v8[84] = swift_task_alloc();
  v32 = sub_1E65D8C68();
  v8[85] = v32;
  v33 = *(v32 - 8);
  v8[86] = v33;
  v34 = *(v33 + 64) + 15;
  v8[87] = swift_task_alloc();
  v8[88] = swift_task_alloc();
  v35 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60) - 8) + 64) + 15;
  v8[89] = swift_task_alloc();
  v8[90] = swift_task_alloc();
  v36 = type metadata accessor for PageMetricsClick();
  v8[91] = v36;
  v37 = *(*(v36 - 8) + 64) + 15;
  v8[92] = swift_task_alloc();
  v8[93] = swift_task_alloc();
  v8[94] = swift_task_alloc();
  v38 = sub_1E65DEB68();
  v8[95] = v38;
  v39 = *(*(v38 - 8) + 64) + 15;
  v8[96] = swift_task_alloc();
  v40 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072958, &qword_1E65EC0F0) - 8) + 64) + 15;
  v8[97] = swift_task_alloc();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  v8[98] = v41;
  v42 = *(v41 - 8);
  v8[99] = v42;
  v43 = *(v42 + 64) + 15;
  v8[100] = swift_task_alloc();
  v44 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072968, &unk_1E6609800) - 8) + 64) + 15;
  v8[101] = swift_task_alloc();
  v8[102] = swift_task_alloc();
  v8[103] = swift_task_alloc();
  v8[104] = swift_task_alloc();
  v8[105] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61D0734, 0, 0);
}

uint64_t sub_1E61D0734()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 800);
  v3 = *(v0 + 792);
  v4 = *(v0 + 784);
  v5 = *(v0 + 776);
  v6 = *(v0 + 768);
  v225 = *(v0 + 760);
  v7 = *(v0 + 440);
  v8 = **(v0 + 432);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  sub_1E60EEC44(v1);
  sub_1E5DFE50C(v5, &qword_1ED072958, &qword_1E65EC0F0);
  (*(v3 + 8))(v2, v4);
  sub_1E61D2F24(v7, v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v9 = v232;
      v85 = v232[96];
      sub_1E5DFE50C(v232[105], &qword_1ED072968, &unk_1E6609800);
      sub_1E61D2FF0(v85, MEMORY[0x1E699CCF8]);
      goto LABEL_3;
    case 2u:
      v22 = v232;
      v23 = v232[102];
      v24 = v232[96];
      v25 = v232[66];
      v26 = v232[65];
      v214 = v24[1];
      v219 = *v24;
      sub_1E5DFD1CC(v232[105], v23, &qword_1ED072968, &unk_1E6609800);
      v27 = 1;
      v227 = *(v25 + 48);
      if (v227(v23, 1, v26) != 1)
      {
        v28 = v232[69];
        v29 = v232[67];
        v30 = v232[66];
        v31 = v232[65];
        v32 = v232[64];
        v33 = v232[63];
        v209 = v232[62];
        v34 = v232[61];
        v35 = v232[60];
        v36 = v232[59];
        (*(v30 + 32))(v29, v232[102], v31);
        sub_1E65D7688();
        sub_1E65D7E58();
        (*(v35 + 8))(v34, v36);
        sub_1E65D7E28();
        (*(v33 + 8))(v32, v209);
        (*(v30 + 8))(v29, v31);
        v22 = v232;
        v27 = 0;
      }

      v37 = v22[69];
      v38 = v22[68];
      v39 = v232[60];
      v40 = v232[59];
      (*(v39 + 56))(v37, v27, 1, v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E65EA8E0;
      *(inited + 32) = 10;
      sub_1E5DFD1CC(v37, v38, &qword_1ED0752D8, &qword_1E660CC30);
      v42 = (*(v39 + 48))(v38, 1, v40);
      v43 = v232;
      v44 = v42;
      v45 = v232[68];
      if (v42 == 1)
      {
        sub_1E5DFE50C(v232[68], &qword_1ED0752D8, &qword_1E660CC30);
        v46 = 0;
      }

      else
      {
        v86 = v232[60];
        v87 = v232[59];
        v46 = sub_1E65D7608();
        (*(v86 + 8))(v45, v87);
        v43 = v232;
      }

      v88 = v44 == 1;
      v89 = v43[105];
      v90 = v43[101];
      v91 = v43[65];
      v43[52] = v46;
      *(v43 + 424) = v88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0765A8, &qword_1E65F5A38);
      sub_1E61D2F88(&qword_1ED0765B0, &qword_1ED0765A8, &qword_1E65F5A38);
      sub_1E65E6848();
      *(inited + 80) = 13;
      v43[44] = v219;
      v43[45] = v214;
      sub_1E65E6848();
      *(inited + 128) = 9;
      sub_1E5DFD1CC(v89, v90, &qword_1ED072968, &unk_1E6609800);
      v92 = v227(v90, 1, v91);
      v93 = v43[101];
      if (v92 == 1)
      {
        sub_1E5DFE50C(v43[101], &qword_1ED072968, &unk_1E6609800);
        v94 = 0;
        v95 = 0;
      }

      else
      {
        v96 = v43[72];
        v97 = v232[71];
        v98 = v232[70];
        v99 = v232[66];
        v100 = v232[65];
        sub_1E65D7DC8();
        (*(v99 + 8))(v93, v100);
        v94 = sub_1E65D76C8();
        v95 = v101;
        (*(v97 + 8))(v96, v98);
        v43 = v232;
      }

      v102 = v43[92];
      v103 = v43[91];
      v104 = v43[86];
      v105 = v43[76];
      v222 = v43[85];
      v230 = v43[75];
      v234 = v43[58];
      v43[46] = v94;
      v43[47] = v95;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
      sub_1E61D2F88(&qword_1ED072980, &qword_1ED072978, &unk_1E65F0E80);
      sub_1E65E6848();
      v106 = sub_1E6427784(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072988, &qword_1E65EC128);
      swift_arrayDestroy();
      v107 = *MEMORY[0x1E69CC908];
      v108 = sub_1E65D9D78();
      v109 = v43;
      v110 = *(v108 - 8);
      (*(v110 + 104))(v102, v107, v108);
      (*(v110 + 56))(v102, 0, 1, v108);
      (*(v104 + 104))(v102 + v103[5], *MEMORY[0x1E69CBAA0], v222);
      v111 = v103[6];
      v112 = sub_1E65D74E8();
      (*(*(v112 - 8) + 56))(v102 + v111, 1, 1, v112);
      v113 = v103[8];
      v114 = sub_1E65DA208();
      (*(*(v114 - 8) + 56))(v102 + v113, 1, 1, v114);
      (*(v105 + 104))(v102 + v103[14], *MEMORY[0x1E69CBCC8], v230);
      v115 = v103[15];
      v116 = sub_1E65D9908();
      (*(*(v116 - 8) + 56))(v102 + v115, 1, 1, v116);
      *(v102 + v103[7]) = MEMORY[0x1E69E7CC0];
      v117 = (v102 + v103[9]);
      *v117 = 0;
      v117[1] = 0;
      v118 = (v102 + v103[10]);
      *v118 = 0;
      v118[1] = 0;
      *(v102 + v103[11]) = v106;
      v119 = (v102 + v103[12]);
      *v119 = 0;
      v119[1] = 0;
      *(v102 + v103[13]) = xmmword_1E65F5A00;
      v120 = *(v234 + 48);
      v235 = (v120 + *v120);
      v121 = v120[1];
      v122 = swift_task_alloc();
      v109[110] = v122;
      *v122 = v109;
      v122[1] = sub_1E61D24F0;
      v123 = v109[92];
      goto LABEL_28;
    case 3u:
      v64 = v232[96];
      v65 = v232[59];
      v66 = v232[60];
      sub_1E5DFE50C(v232[105], &qword_1ED072968, &unk_1E6609800);
      (*(v66 + 8))(v64, v65);
      v9 = v232;
      goto LABEL_3;
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xEu:
    case 0xFu:
      v9 = v232;
      sub_1E5DFE50C(v232[105], &qword_1ED072968, &unk_1E6609800);
LABEL_3:
      v10 = v9[105];
      v11 = v9[104];
      v12 = v9[103];
      v13 = v9[102];
      v14 = v9[101];
      v15 = v9[100];
      v16 = v9[97];
      v17 = v9[96];
      v18 = v9[94];
      v19 = v9[93];
      v185 = v9[92];
      v186 = v9[90];
      v187 = v9[89];
      v188 = v9[88];
      v189 = v9[87];
      v190 = v9[84];
      v191 = v9[83];
      v192 = v9[82];
      v194 = v9[81];
      v196 = v9[80];
      v198 = v9[77];
      v200 = v9[74];
      v202 = v9[73];
      v205 = v9[72];
      v208 = v9[69];
      v213 = v9[68];
      v218 = v9[67];
      v226 = v9[64];
      v233 = v9[61];

      v20 = v9[1];

      return v20();
    case 0xDu:
      v47 = v232;
      v215 = v232[103];
      v220 = v232[105];
      v48 = v232[89];
      v49 = v232[87];
      v50 = v232[86];
      v51 = v232[85];
      v52 = v232[83];
      v210 = v232[73];
      v53 = v232[66];
      v228 = v232[65];
      v54 = *MEMORY[0x1E69CC908];
      v55 = sub_1E65D9D78();
      v56 = *(v55 - 8);
      (*(v56 + 104))(v48, v54, v55);
      (*(v56 + 56))(v48, 0, 1, v55);
      (*(v50 + 104))(v49, *MEMORY[0x1E69CBA90], v51);
      v57 = sub_1E65D74E8();
      (*(*(v57 - 8) + 56))(v52, 1, 1, v57);
      v58 = sub_1E65DA208();
      (*(*(v58 - 8) + 56))(v210, 1, 1, v58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
      v59 = swift_initStackObject();
      *(v59 + 16) = xmmword_1E65EA670;
      *(v59 + 32) = 9;
      sub_1E5DFD1CC(v220, v215, &qword_1ED072968, &unk_1E6609800);
      v60 = (*(v53 + 48))(v215, 1, v228);
      v61 = v232[103];
      if (v60 == 1)
      {
        sub_1E5DFE50C(v232[103], &qword_1ED072968, &unk_1E6609800);
        v62 = 0;
        v63 = 0;
      }

      else
      {
        v124 = v232[72];
        v125 = v232[71];
        v126 = v232[70];
        v127 = v232[66];
        v128 = v232[65];
        sub_1E65D7DC8();
        (*(v127 + 8))(v61, v128);
        v62 = sub_1E65D76C8();
        v63 = v129;
        (*(v125 + 8))(v124, v126);
        v47 = v232;
      }

      v130 = v47[93];
      v131 = v47[91];
      v132 = v47[86];
      v206 = v47[89];
      v211 = v47[85];
      v216 = v47[87];
      v223 = v47[83];
      v133 = v47[76];
      v203 = v47[75];
      v231 = v47[73];
      v236 = v47[58];
      v47[48] = v62;
      v47[49] = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
      sub_1E61D2F88(&qword_1ED072980, &qword_1ED072978, &unk_1E65F0E80);
      sub_1E65E6848();
      v134 = sub_1E6427784(v59);
      swift_setDeallocating();
      sub_1E5DFE50C(v59 + 32, &qword_1ED072988, &qword_1E65EC128);
      (*(v133 + 104))(v130 + v131[14], *MEMORY[0x1E69CBCC8], v203);
      v135 = v47;
      v136 = v131[15];
      v137 = sub_1E65D9908();
      (*(*(v137 - 8) + 56))(v130 + v136, 1, 1, v137);
      sub_1E5FAB460(v206, v130, &qword_1ED073578, &qword_1E65F0E60);
      (*(v132 + 32))(v130 + v131[5], v216, v211);
      sub_1E5FAB460(v223, v130 + v131[6], &qword_1ED072340, &qword_1E65EA410);
      *(v130 + v131[7]) = MEMORY[0x1E69E7CC0];
      sub_1E5FAB460(v231, v130 + v131[8], &qword_1ED073570, &unk_1E65F4570);
      v138 = (v130 + v131[9]);
      *v138 = 0;
      v138[1] = 0;
      v139 = (v130 + v131[10]);
      *v139 = 0;
      v139[1] = 0;
      *(v130 + v131[11]) = v134;
      v140 = (v130 + v131[12]);
      *v140 = 0;
      v140[1] = 0;
      *(v130 + v131[13]) = xmmword_1E65F4AB0;
      v141 = *(v236 + 48);
      v235 = (v141 + *v141);
      v142 = v141[1];
      v143 = swift_task_alloc();
      v135[108] = v143;
      *v143 = v135;
      v143[1] = sub_1E61D21A8;
      v123 = v135[93];
      goto LABEL_28;
    default:
      v67 = v232[90];
      v68 = v232[88];
      v69 = v232[86];
      v70 = v232[85];
      v71 = v232[84];
      v72 = v232[82];
      v73 = v232[81];
      v74 = v232[56];
      v221 = *v232[96];
      v75 = sub_1E65D9D78();
      (*(*(v75 - 8) + 56))(v67, 1, 1, v75);
      (*(v69 + 104))(v68, *MEMORY[0x1E69CBA28], v70);
      v76 = v232;
      v77 = sub_1E65D74E8();
      (*(*(v77 - 8) + 56))(v71, 1, 1, v77);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
      v78 = *(sub_1E65D86A8() - 8);
      v79 = *(v78 + 72);
      v80 = (*(v78 + 80) + 32) & ~*(v78 + 80);
      v229 = swift_allocObject();
      *(v229 + 16) = xmmword_1E65EA670;
      sub_1E65DEA08();
      _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
      sub_1E65DE9B8();
      sub_1E60EF310(v72);
      sub_1E5DFE50C(v73, &qword_1ED0737C8, &unk_1E6605140);
      v81 = sub_1E65DE788();
      v82 = *(v81 - 8);
      v83 = (*(v82 + 48))(v72, 1, v81);
      v84 = v232[82];
      if (v83 == 1)
      {
        sub_1E5DFE50C(v232[82], &qword_1ED075FB8, &qword_1E65F4690);
      }

      else
      {
        v144 = v232[80];
        v145 = v232[79];
        v146 = v232[78];
        v147 = v232[57];
        sub_1E65DE778();
        (*(v82 + 8))(v84, v81);
        swift_getKeyPath();
        sub_1E65E4EC8();

        sub_1E65DE5D8();
        (*(v145 + 8))(v144, v146);
        v76 = v232;
      }

      v148 = v76[105];
      v149 = v76[104];
      v150 = v76[75];
      v151 = v76[74];
      v152 = v76[66];
      v153 = v76[65];
      v217 = *MEMORY[0x1E69CBCC8];
      v224 = (v76[76] + 104);
      v207 = *v224;
      (*v224)(v76[77]);
      sub_1E6427498(MEMORY[0x1E69E7CC0]);
      sub_1E65D8678();
      v154 = sub_1E65DA208();
      (*(*(v154 - 8) + 56))(v151, 1, 1, v154);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
      v155 = swift_initStackObject();
      *(v155 + 16) = xmmword_1E65EA670;
      *(v155 + 32) = 9;
      sub_1E5DFD1CC(v148, v149, &qword_1ED072968, &unk_1E6609800);
      v156 = (*(v152 + 48))(v149, 1, v153);
      v157 = v76[104];
      if (v156 == 1)
      {
        sub_1E5DFE50C(v76[104], &qword_1ED072968, &unk_1E6609800);
        v158 = 0;
        v159 = 0;
      }

      else
      {
        v160 = v76[72];
        v161 = v232[71];
        v162 = v232[70];
        v163 = v232[66];
        v164 = v232[65];
        sub_1E65D7DC8();
        (*(v163 + 8))(v157, v164);
        v158 = sub_1E65D76C8();
        v159 = v165;
        (*(v161 + 8))(v160, v162);
        v76 = v232;
      }

      v166 = v76[94];
      v167 = v76[91];
      v168 = v76[86];
      v199 = v76[85];
      v201 = v76[88];
      v204 = v76[84];
      v193 = v76[75];
      v195 = v76[90];
      v212 = v76[74];
      v237 = v76[58];
      v169 = v76[56];
      v76[50] = v158;
      v76[51] = v159;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
      sub_1E61D2F88(&qword_1ED072980, &qword_1ED072978, &unk_1E65F0E80);
      sub_1E65E6848();
      v197 = sub_1E6427784(v155);
      swift_setDeallocating();
      sub_1E5DFE50C(v155 + 32, &qword_1ED072988, &qword_1E65EC128);
      v170 = sub_1E65DEA08();
      v172 = v171;
      (v207)(v166 + v167[14], v217, v193);
      v173 = v76;
      v174 = v167[15];
      v175 = *MEMORY[0x1E69CC498];
      v176 = sub_1E65D9908();
      v177 = *(v176 - 8);
      (*(v177 + 104))(v166 + v174, v175, v176);
      (*(v177 + 56))(v166 + v174, 0, 1, v176);
      sub_1E5FAB460(v195, v166, &qword_1ED073578, &qword_1E65F0E60);
      (*(v168 + 32))(v166 + v167[5], v201, v199);
      sub_1E5FAB460(v204, v166 + v167[6], &qword_1ED072340, &qword_1E65EA410);
      *(v166 + v167[7]) = v229;
      sub_1E5FAB460(v212, v166 + v167[8], &qword_1ED073570, &unk_1E65F4570);
      v178 = (v166 + v167[9]);
      *v178 = 0;
      v178[1] = 0;
      v179 = (v166 + v167[10]);
      *v179 = 0;
      v179[1] = 0;
      *(v166 + v167[11]) = v197;
      v180 = (v166 + v167[12]);
      *v180 = 0;
      v180[1] = 0;
      v181 = (v166 + v167[13]);
      *v181 = v170;
      v181[1] = v172;
      v182 = *(v237 + 48);
      v235 = (v182 + *v182);
      v183 = v182[1];
      v184 = swift_task_alloc();
      v173[106] = v184;
      *v184 = v173;
      v184[1] = sub_1E61D1E60;
      v123 = v173[94];
LABEL_28:

      return v235(v123);
  }
}

uint64_t sub_1E61D1E60()
{
  v2 = *(*v1 + 848);
  v5 = *v1;
  *(*v1 + 856) = v0;

  if (v0)
  {
    v3 = sub_1E61D2854;
  }

  else
  {
    v3 = sub_1E61D1F74;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E61D1F74()
{
  v1 = v0[105];
  sub_1E61D2FF0(v0[94], type metadata accessor for PageMetricsClick);
  sub_1E5DFE50C(v1, &qword_1ED072968, &unk_1E6609800);
  v2 = v0[105];
  v3 = v0[104];
  v4 = v0[103];
  v5 = v0[102];
  v6 = v0[101];
  v7 = v0[100];
  v8 = v0[97];
  v9 = v0[96];
  v10 = v0[94];
  v11 = v0[93];
  v14 = v0[92];
  v15 = v0[90];
  v16 = v0[89];
  v17 = v0[88];
  v18 = v0[87];
  v19 = v0[84];
  v20 = v0[83];
  v21 = v0[82];
  v22 = v0[81];
  v23 = v0[80];
  v24 = v0[77];
  v25 = v0[74];
  v26 = v0[73];
  v27 = v0[72];
  v28 = v0[69];
  v29 = v0[68];
  v30 = v0[67];
  v31 = v0[64];
  v32 = v0[61];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1E61D21A8()
{
  v2 = *(*v1 + 864);
  v5 = *v1;
  *(*v1 + 872) = v0;

  if (v0)
  {
    v3 = sub_1E61D2A90;
  }

  else
  {
    v3 = sub_1E61D22BC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E61D22BC()
{
  v1 = v0[105];
  sub_1E61D2FF0(v0[93], type metadata accessor for PageMetricsClick);
  sub_1E5DFE50C(v1, &qword_1ED072968, &unk_1E6609800);
  v2 = v0[105];
  v3 = v0[104];
  v4 = v0[103];
  v5 = v0[102];
  v6 = v0[101];
  v7 = v0[100];
  v8 = v0[97];
  v9 = v0[96];
  v10 = v0[94];
  v11 = v0[93];
  v14 = v0[92];
  v15 = v0[90];
  v16 = v0[89];
  v17 = v0[88];
  v18 = v0[87];
  v19 = v0[84];
  v20 = v0[83];
  v21 = v0[82];
  v22 = v0[81];
  v23 = v0[80];
  v24 = v0[77];
  v25 = v0[74];
  v26 = v0[73];
  v27 = v0[72];
  v28 = v0[69];
  v29 = v0[68];
  v30 = v0[67];
  v31 = v0[64];
  v32 = v0[61];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1E61D24F0()
{
  v2 = *(*v1 + 880);
  v5 = *v1;
  *(*v1 + 888) = v0;

  if (v0)
  {
    v3 = sub_1E61D2CCC;
  }

  else
  {
    v3 = sub_1E61D2604;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E61D2604()
{
  v1 = v0[105];
  v2 = v0[69];
  sub_1E61D2FF0(v0[92], type metadata accessor for PageMetricsClick);
  sub_1E5DFE50C(v2, &qword_1ED0752D8, &qword_1E660CC30);
  sub_1E5DFE50C(v1, &qword_1ED072968, &unk_1E6609800);
  v3 = v0[105];
  v4 = v0[104];
  v5 = v0[103];
  v6 = v0[102];
  v7 = v0[101];
  v8 = v0[100];
  v9 = v0[97];
  v10 = v0[96];
  v11 = v0[94];
  v12 = v0[93];
  v15 = v0[92];
  v16 = v0[90];
  v17 = v0[89];
  v18 = v0[88];
  v19 = v0[87];
  v20 = v0[84];
  v21 = v0[83];
  v22 = v0[82];
  v23 = v0[81];
  v24 = v0[80];
  v25 = v0[77];
  v26 = v0[74];
  v27 = v0[73];
  v28 = v0[72];
  v29 = v0[69];
  v30 = v0[68];
  v31 = v0[67];
  v32 = v0[64];
  v33 = v0[61];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1E61D2854()
{
  sub_1E61D2FF0(v0[94], type metadata accessor for PageMetricsClick);
  v31 = v0[107];
  v1 = v0[104];
  v2 = v0[103];
  v3 = v0[102];
  v4 = v0[101];
  v5 = v0[100];
  v6 = v0[97];
  v7 = v0[96];
  v8 = v0[94];
  v11 = v0[93];
  v12 = v0[92];
  v13 = v0[90];
  v14 = v0[89];
  v15 = v0[88];
  v16 = v0[87];
  v17 = v0[84];
  v18 = v0[83];
  v19 = v0[82];
  v20 = v0[81];
  v21 = v0[80];
  v22 = v0[77];
  v23 = v0[74];
  v24 = v0[73];
  v25 = v0[72];
  v26 = v0[69];
  v27 = v0[68];
  v28 = v0[67];
  v29 = v0[64];
  v30 = v0[61];
  sub_1E5DFE50C(v0[105], &qword_1ED072968, &unk_1E6609800);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E61D2A90()
{
  sub_1E61D2FF0(v0[93], type metadata accessor for PageMetricsClick);
  v31 = v0[109];
  v1 = v0[104];
  v2 = v0[103];
  v3 = v0[102];
  v4 = v0[101];
  v5 = v0[100];
  v6 = v0[97];
  v7 = v0[96];
  v8 = v0[94];
  v11 = v0[93];
  v12 = v0[92];
  v13 = v0[90];
  v14 = v0[89];
  v15 = v0[88];
  v16 = v0[87];
  v17 = v0[84];
  v18 = v0[83];
  v19 = v0[82];
  v20 = v0[81];
  v21 = v0[80];
  v22 = v0[77];
  v23 = v0[74];
  v24 = v0[73];
  v25 = v0[72];
  v26 = v0[69];
  v27 = v0[68];
  v28 = v0[67];
  v29 = v0[64];
  v30 = v0[61];
  sub_1E5DFE50C(v0[105], &qword_1ED072968, &unk_1E6609800);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E61D2CCC()
{
  v1 = v0[69];
  sub_1E61D2FF0(v0[92], type metadata accessor for PageMetricsClick);
  sub_1E5DFE50C(v1, &qword_1ED0752D8, &qword_1E660CC30);
  v32 = v0[111];
  v2 = v0[104];
  v3 = v0[103];
  v4 = v0[102];
  v5 = v0[101];
  v6 = v0[100];
  v7 = v0[97];
  v8 = v0[96];
  v9 = v0[94];
  v12 = v0[93];
  v13 = v0[92];
  v14 = v0[90];
  v15 = v0[89];
  v16 = v0[88];
  v17 = v0[87];
  v18 = v0[84];
  v19 = v0[83];
  v20 = v0[82];
  v21 = v0[81];
  v22 = v0[80];
  v23 = v0[77];
  v24 = v0[74];
  v25 = v0[73];
  v26 = v0[72];
  v27 = v0[69];
  v28 = v0[68];
  v29 = v0[67];
  v30 = v0[64];
  v31 = v0[61];
  sub_1E5DFE50C(v0[105], &qword_1ED072968, &unk_1E6609800);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E61D2F24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DEB68();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E61D2F88(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1E61D2FF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t StretchGoalPlanArtworkView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E65E4BA8();
  *a1 = result;
  a1[1] = v3;
  a1[2] = sub_1E61D308C;
  a1[3] = 0;
  return result;
}

uint64_t sub_1E61D308C@<X0>(void *a1@<X8>)
{
  v72 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0765C8, &qword_1E65F5AF8);
  v2 = *(v1 - 8);
  v67 = v1 - 8;
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1 - 8);
  v71 = &v62[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x1EEE9AC00](v4);
  v70 = &v62[-v7];
  v8 = MEMORY[0x1EEE9AC00](v6);
  v69 = &v62[-v9];
  v10 = MEMORY[0x1EEE9AC00](v8);
  v68 = &v62[-v11];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v73 = &v62[-v13];
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v62[-v14];
  sub_1E65E4C38();
  sub_1E65E4C28();
  sub_1E65E3D78();
  v66 = sub_1E65E4268();
  v16 = *(v66 + 20);
  v17 = *MEMORY[0x1E697F468];
  v18 = sub_1E65E3FA8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 104);
  v64 = v18;
  v65 = v19 + 104;
  v63 = v17;
  v20(&v15[v16], v17, v18);
  sub_1E65E4158();
  *v15 = v21;
  *(v15 + 1) = v22;
  *(v15 + 2) = v23;
  *(v15 + 3) = v24;
  sub_1E65E4C28();
  sub_1E65E4C38();
  sub_1E65E3D98();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0765D0, &qword_1E65F5B00);
  v26 = &v15[*(v25 + 52)];
  v27 = v79;
  *v26 = v78;
  *(v26 + 1) = v27;
  *(v26 + 4) = v80;
  *&v15[*(v25 + 56)] = 256;
  v74 = v15;
  sub_1E65E3D28();
  sub_1E65E4BB8();
  sub_1E65E3CF8();
  v28 = v66;
  v29 = v67;
  v30 = &v15[*(v67 + 44)];
  v31 = v82;
  *v30 = v81;
  *(v30 + 1) = v31;
  *(v30 + 2) = v83;
  v32 = v73;
  v20(&v73[*(v28 + 20)], v17, v18);
  sub_1E65E4158();
  *v32 = v33;
  v32[1] = v34;
  v32[2] = v35;
  v32[3] = v36;
  sub_1E65E4C28();
  sub_1E65E4C38();
  sub_1E65E3D98();
  v37 = v32 + *(v25 + 52);
  v38 = v85;
  *v37 = v84;
  *(v37 + 1) = v38;
  *(v37 + 4) = v86;
  *(v32 + *(v25 + 56)) = 256;
  sub_1E65E3D28();
  sub_1E65E4BA8();
  sub_1E65E3CF8();
  v39 = (v32 + *(v29 + 44));
  v40 = v88;
  *v39 = v87;
  v39[1] = v40;
  v39[2] = v89;
  v41 = v68;
  v20(&v68[*(v28 + 20)], v63, v64);
  sub_1E65E4158();
  *v41 = v42;
  v41[1] = v43;
  v41[2] = v44;
  v41[3] = v45;
  sub_1E65E4C28();
  sub_1E65E4C38();
  sub_1E65E3D98();
  v46 = v41 + *(v25 + 52);
  v47 = v91;
  *v46 = v90;
  *(v46 + 1) = v47;
  *(v46 + 4) = v92;
  *(v41 + *(v25 + 56)) = 256;
  sub_1E65E3D28();
  sub_1E65E4BA8();
  sub_1E65E3CF8();
  v48 = (v41 + *(v29 + 44));
  v49 = v94;
  *v48 = v93;
  v48[1] = v49;
  v48[2] = v95;
  sub_1E65E4C28();
  sub_1E65E4C38();
  sub_1E65E3D88();
  v50 = v75;
  v51 = v69;
  sub_1E61D3718(v74, v69);
  v52 = v73;
  v53 = v70;
  sub_1E61D3718(v73, v70);
  v54 = v71;
  sub_1E61D3718(v41, v71);
  v55 = v96;
  v56 = v72;
  *v72 = v50;
  v57 = v76;
  *(v56 + 3) = v77;
  *(v56 + 1) = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0765D8, &qword_1E65F5B08);
  sub_1E61D3718(v51, v56 + v58[12]);
  sub_1E61D3718(v53, v56 + v58[16]);
  sub_1E61D3718(v54, v56 + v58[20]);
  v59 = v56 + v58[24];
  *v59 = v55;
  v60 = v97;
  *(v59 + 24) = v98;
  *(v59 + 8) = v60;

  sub_1E61D3788(v41);
  sub_1E61D3788(v52);
  sub_1E61D3788(v74);

  sub_1E61D3788(v54);
  sub_1E61D3788(v53);
  sub_1E61D3788(v51);
}

uint64_t sub_1E61D3668@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E65E4BA8();
  *a1 = result;
  a1[1] = v3;
  a1[2] = sub_1E61D308C;
  a1[3] = 0;
  return result;
}

unint64_t sub_1E61D36B4()
{
  result = qword_1ED0765B8;
  if (!qword_1ED0765B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0765C0, &qword_1E65F5AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0765B8);
  }

  return result;
}

uint64_t sub_1E61D3718(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0765C8, &qword_1E65F5AF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E61D3788(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0765C8, &qword_1E65F5AF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E61D37F4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x446D6172676F7270;
    v6 = 0x686372616573;
    if (a1 != 8)
    {
      v6 = 0x5074756F6B726F77;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6546646E4177656ELL;
    if (a1 != 5)
    {
      v7 = 0x57646574616C6572;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7465446472617761;
    v2 = 0x7265746C6966;
    v3 = 0x756F59726F66;
    if (a1 != 3)
    {
      v3 = 0x7972617262696CLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6573776F7262;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1E61D396C(uint64_t a1)
{
  v2 = sub_1E61D849C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61D39A8(uint64_t a1)
{
  v2 = sub_1E61D849C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61D39E4(uint64_t a1)
{
  v2 = sub_1E61D8448();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61D3A20(uint64_t a1)
{
  v2 = sub_1E61D8448();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61D3A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E61D9404(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E61D3A98(uint64_t a1)
{
  v2 = sub_1E61D8100();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61D3AD4(uint64_t a1)
{
  v2 = sub_1E61D8100();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61D3B10(uint64_t a1)
{
  v2 = sub_1E61D83A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61D3B4C(uint64_t a1)
{
  v2 = sub_1E61D83A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61D3B88(uint64_t a1)
{
  v2 = sub_1E61D834C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61D3BC4(uint64_t a1)
{
  v2 = sub_1E61D834C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61D3C00(uint64_t a1)
{
  v2 = sub_1E61D82F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61D3C3C(uint64_t a1)
{
  v2 = sub_1E61D82F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61D3C78(uint64_t a1)
{
  v2 = sub_1E61D82A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61D3CB4(uint64_t a1)
{
  v2 = sub_1E61D82A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61D3CF0(uint64_t a1)
{
  v2 = sub_1E61D81FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61D3D2C(uint64_t a1)
{
  v2 = sub_1E61D81FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61D3D68(uint64_t a1)
{
  v2 = sub_1E61D8250();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61D3DA4(uint64_t a1)
{
  v2 = sub_1E61D8250();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61D3DE0(uint64_t a1)
{
  v2 = sub_1E61D81A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61D3E1C(uint64_t a1)
{
  v2 = sub_1E61D81A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61D3E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
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

uint64_t sub_1E61D3EE0(uint64_t a1)
{
  v2 = sub_1E61D8154();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61D3F1C(uint64_t a1)
{
  v2 = sub_1E61D8154();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ItemContext.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0765E0, &qword_1E65F5B10);
  v139 = *(v2 - 8);
  v140 = v2;
  v3 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v136 = &v92 - v4;
  v5 = sub_1E65E26E8();
  v137 = *(v5 - 8);
  v138 = v5;
  v6 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v135 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0765E8, &qword_1E65F5B18);
  v133 = *(v8 - 8);
  v134 = v8;
  v9 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v132 = &v92 - v10;
  v130 = type metadata accessor for SearchItemContext();
  v11 = *(*(v130 - 8) + 64);
  MEMORY[0x1EEE9AC00](v130);
  v131 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0765F0, &qword_1E65F5B20);
  v128 = *(v13 - 8);
  v129 = v13;
  v14 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v127 = &v92 - v15;
  v125 = type metadata accessor for ProgramDetailItemContext();
  v16 = *(*(v125 - 8) + 64);
  MEMORY[0x1EEE9AC00](v125);
  v126 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0765F8, &qword_1E65F5B28);
  v123 = *(v124 - 8);
  v18 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v120 = &v92 - v19;
  v122 = sub_1E65E3498();
  v121 = *(v122 - 8);
  v20 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v119 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076600, &qword_1E65F5B30);
  v117 = *(v118 - 8);
  v22 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v114 = &v92 - v23;
  v116 = sub_1E65E0248();
  v115 = *(v116 - 8);
  v24 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v113 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076608, &qword_1E65F5B38);
  v111 = *(v112 - 8);
  v26 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v110 = &v92 - v27;
  v108 = type metadata accessor for LibraryItemContext();
  v28 = *(*(v108 - 8) + 64);
  MEMORY[0x1EEE9AC00](v108);
  v109 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076610, &qword_1E65F5B40);
  v106 = *(v107 - 8);
  v30 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v103 = &v92 - v31;
  v105 = sub_1E65DC508();
  v104 = *(v105 - 8);
  v32 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v102 = &v92 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076618, &qword_1E65F5B48);
  v100 = *(v101 - 8);
  v34 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v99 = &v92 - v35;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076620, &qword_1E65F5B50);
  v97 = *(v98 - 8);
  v36 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v96 = &v92 - v37;
  v94 = type metadata accessor for BrowseItemContext();
  v38 = *(*(v94 - 8) + 64);
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v92 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076628, &qword_1E65F5B58);
  v93 = *(v40 - 8);
  v41 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v92 - v42;
  v44 = type metadata accessor for ItemContext();
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v92 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076630, &qword_1E65F5B60);
  v49 = *(v48 - 8);
  v142 = v48;
  v143 = v49;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v52 = &v92 - v51;
  v53 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E61D8100();
  v54 = v52;
  sub_1E65E6DA8();
  sub_1E61D8544(v141, v47, type metadata accessor for ItemContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v56 = v115;
        v57 = v113;
        v73 = v47;
        v59 = v116;
        (*(v115 + 32))(v113, v73, v116);
        LOBYTE(v144) = 5;
        sub_1E61D82A4();
        v60 = v114;
        v61 = v142;
        sub_1E65E6B18();
        sub_1E5DF3F80(&qword_1ED076680, MEMORY[0x1E699D680]);
        v62 = v118;
        sub_1E65E6B78();
        v63 = &v147;
      }

      else
      {
        v56 = v121;
        v57 = v119;
        v91 = v47;
        v59 = v122;
        (*(v121 + 32))(v119, v91, v122);
        LOBYTE(v144) = 6;
        sub_1E61D8250();
        v60 = v120;
        v61 = v142;
        sub_1E65E6B18();
        sub_1E5DF3F80(&qword_1ED076670, MEMORY[0x1E699EC90]);
        v62 = v124;
        sub_1E65E6B78();
        v63 = &v148;
      }

      goto LABEL_21;
    }

    if (EnumCaseMultiPayload == 7)
    {
      v64 = v126;
      sub_1E61D85AC(v47, v126, type metadata accessor for ProgramDetailItemContext);
      LOBYTE(v144) = 7;
      sub_1E61D81FC();
      v81 = v127;
      v61 = v142;
      sub_1E65E6B18();
      sub_1E5DF3F80(&qword_1ED076660, type metadata accessor for ProgramDetailItemContext);
      v82 = v129;
      sub_1E65E6B78();
      (*(v128 + 8))(v81, v82);
      v67 = type metadata accessor for ProgramDetailItemContext;
    }

    else
    {
      if (EnumCaseMultiPayload != 8)
      {
        v56 = v137;
        v57 = v135;
        v85 = v47;
        v59 = v138;
        (*(v137 + 32))(v135, v85, v138);
        LOBYTE(v144) = 9;
        sub_1E61D8154();
        v60 = v136;
        v61 = v142;
        sub_1E65E6B18();
        sub_1E5DF3F80(&qword_1ED076640, MEMORY[0x1E699F400]);
        v62 = v140;
        sub_1E65E6B78();
        v86 = v139;
LABEL_22:
        (*(v86 + 8))(v60, v62);
        (*(v56 + 8))(v57, v59);
        return (*(v143 + 8))(v54, v61);
      }

      v64 = v131;
      sub_1E61D85AC(v47, v131, type metadata accessor for SearchItemContext);
      LOBYTE(v144) = 8;
      sub_1E61D81A8();
      v65 = v132;
      v61 = v142;
      sub_1E65E6B18();
      sub_1E5DF3F80(&qword_1ED076650, type metadata accessor for SearchItemContext);
      v66 = v134;
      sub_1E65E6B78();
      (*(v133 + 8))(v65, v66);
      v67 = type metadata accessor for SearchItemContext;
    }

LABEL_17:
    sub_1E61D97A8(v64, v67);
    return (*(v143 + 8))(v54, v61);
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v74 = *v47;
      v75 = *(v47 + 1);
      v76 = v47[16];
      LOBYTE(v144) = 2;
      sub_1E61D83A0();
      v77 = v99;
      v78 = v142;
      v79 = v54;
      sub_1E65E6B18();
      v144 = v74;
      v145 = v75;
      v146 = v76;
      sub_1E61D83F4();
      v80 = v101;
      sub_1E65E6B78();
      (*(v100 + 8))(v77, v80);
      (*(v143 + 8))(v79, v78);
      return sub_1E5E483B8();
    }

    if (EnumCaseMultiPayload == 3)
    {
      v56 = v104;
      v57 = v102;
      v58 = v47;
      v59 = v105;
      (*(v104 + 32))(v102, v58, v105);
      LOBYTE(v144) = 3;
      sub_1E61D834C();
      v60 = v103;
      v61 = v142;
      sub_1E65E6B18();
      sub_1E5DF3F80(&qword_1EE2D6B48, MEMORY[0x1E699E0B0]);
      v62 = v107;
      sub_1E65E6B78();
      v63 = &v138;
LABEL_21:
      v86 = *(v63 - 32);
      goto LABEL_22;
    }

    v64 = v109;
    sub_1E61D85AC(v47, v109, type metadata accessor for LibraryItemContext);
    LOBYTE(v144) = 4;
    sub_1E61D82F8();
    v83 = v110;
    v61 = v142;
    sub_1E65E6B18();
    sub_1E5DF3F80(&qword_1ED076690, type metadata accessor for LibraryItemContext);
    v84 = v112;
    sub_1E65E6B78();
    (*(v111 + 8))(v83, v84);
    v67 = type metadata accessor for LibraryItemContext;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    v87 = v95;
    sub_1E61D85AC(v47, v95, type metadata accessor for BrowseItemContext);
    LOBYTE(v144) = 1;
    sub_1E61D8448();
    v88 = v96;
    v89 = v142;
    sub_1E65E6B18();
    sub_1E5DF3F80(&qword_1ED0766B0, type metadata accessor for BrowseItemContext);
    v90 = v98;
    sub_1E65E6B78();
    (*(v97 + 8))(v88, v90);
    sub_1E61D97A8(v87, type metadata accessor for BrowseItemContext);
    return (*(v143 + 8))(v52, v89);
  }

  else
  {
    v69 = *v47;
    v68 = *(v47 + 1);
    v70 = v47[16];
    LOBYTE(v144) = 0;
    sub_1E61D849C();
    v71 = v142;
    sub_1E65E6B18();
    v144 = v69;
    v145 = v68;
    v146 = v70;
    sub_1E61D84F0();
    sub_1E65E6B78();
    (*(v93 + 8))(v43, v40);
    (*(v143 + 8))(v52, v71);
    return sub_1E5E483B8();
  }
}

uint64_t ItemContext.hash(into:)(uint64_t a1)
{
  v97 = a1;
  v1 = sub_1E65E26E8();
  v94 = *(v1 - 8);
  v95 = v1;
  v2 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v93 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SearchItemContext();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v91 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65E3578();
  v82 = *(v7 - 8);
  v83 = v7;
  v8 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v81 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for ProgramDetailItemContext();
  v10 = *(*(v89 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v89);
  v90 = (&v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v92 = &v77 - v13;
  v14 = sub_1E65E3498();
  v87 = *(v14 - 8);
  v88 = v14;
  v15 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E65E0248();
  v85 = *(v17 - 8);
  v18 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E65DF3B8();
  v79 = *(v21 - 8);
  v80 = v21;
  v22 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v78 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for LibraryItemContext();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = (&v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v84 = &v77 - v29;
  v30 = sub_1E65DC508();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v77 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for BrowseItemContext();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v38 = &v77 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ItemContext();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v77 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E61D8544(v96, v42, type metadata accessor for ItemContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v53 = v85;
        (*(v85 + 32))(v20, v42, v17);
        MEMORY[0x1E694E740](5);
        sub_1E5DF3F80(&qword_1ED0766E0, MEMORY[0x1E699D680]);
        sub_1E65E5B48();
        return (*(v53 + 8))(v20, v17);
      }

      v68 = v86;
      v67 = v87;
      v45 = v88;
      (*(v87 + 32))(v86, v42, v88);
      MEMORY[0x1E694E740](6);
      v69 = &unk_1ED0766D8;
      v70 = MEMORY[0x1E699EC90];
    }

    else
    {
      v45 = v95;
      if (EnumCaseMultiPayload == 7)
      {
        v56 = v42;
        v57 = v92;
        sub_1E61D85AC(v56, v92, type metadata accessor for ProgramDetailItemContext);
        MEMORY[0x1E694E740](7);
        v58 = v90;
        sub_1E61D8544(v57, v90, type metadata accessor for ProgramDetailItemContext);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v60 = v81;
          v59 = v82;
          v61 = v83;
          (*(v82 + 32))(v81, v58, v83);
          MEMORY[0x1E694E740](1);
          sub_1E5DF3F80(&qword_1ED0766D0, MEMORY[0x1E699ECE8]);
          sub_1E65E5B48();
          (*(v59 + 8))(v60, v61);
        }

        else
        {
          v73 = *v58;
          v74 = v58[1];
          MEMORY[0x1E694E740](0);
          sub_1E65E5D78();
        }

        v62 = type metadata accessor for ProgramDetailItemContext;
LABEL_32:
        v72 = v62;
        v48 = v57;
        return sub_1E61D97A8(v48, v72);
      }

      if (EnumCaseMultiPayload == 8)
      {
        v46 = type metadata accessor for SearchItemContext;
        v47 = v91;
        sub_1E61D85AC(v42, v91, type metadata accessor for SearchItemContext);
        MEMORY[0x1E694E740](8);
        SearchItemContext.hash(into:)();
        v48 = v47;
        goto LABEL_26;
      }

      v68 = v93;
      v67 = v94;
      (*(v94 + 32))(v93, v42, v95);
      MEMORY[0x1E694E740](9);
      v69 = &unk_1ED0766C8;
      v70 = MEMORY[0x1E699F400];
    }

    sub_1E5DF3F80(v69, v70);
    sub_1E65E5B48();
    return (*(v67 + 8))(v68, v45);
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v49 = *v42;
      v50 = *(v42 + 1);
      v51 = v42[16];
      v52 = 0;
      goto LABEL_15;
    }

    v46 = type metadata accessor for BrowseItemContext;
    sub_1E61D85AC(v42, v38, type metadata accessor for BrowseItemContext);
    v71 = v97;
    MEMORY[0x1E694E740](1);
    BrowseItemContext.hash(into:)(v71);
    v48 = v38;
LABEL_26:
    v72 = v46;
    return sub_1E61D97A8(v48, v72);
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      (*(v31 + 32))(v34, v42, v30);
      MEMORY[0x1E694E740](3);
      sub_1E5DF3F80(&qword_1EE2D6B40, MEMORY[0x1E699E0B0]);
      sub_1E65E5B48();
      return (*(v31 + 8))(v34, v30);
    }

    v63 = v42;
    v57 = v84;
    sub_1E61D85AC(v63, v84, type metadata accessor for LibraryItemContext);
    MEMORY[0x1E694E740](4);
    sub_1E61D8544(v57, v28, type metadata accessor for LibraryItemContext);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v65 = v78;
      v64 = v79;
      v66 = v80;
      (*(v79 + 32))(v78, v28, v80);
      MEMORY[0x1E694E740](1);
      sub_1E5DF3F80(&qword_1ED0766E8, MEMORY[0x1E699E5F0]);
      sub_1E65E5B48();
      (*(v64 + 8))(v65, v66);
    }

    else
    {
      v75 = *v28;
      v76 = v28[1];
      MEMORY[0x1E694E740](0);
      sub_1E65E5D78();
    }

    v62 = type metadata accessor for LibraryItemContext;
    goto LABEL_32;
  }

  v54 = *v42;
  v55 = *(v42 + 1);
  v51 = v42[16];
  v52 = 2;
LABEL_15:
  MEMORY[0x1E694E740](v52);
  if (v51)
  {
    MEMORY[0x1E694E740](1);
  }

  else
  {
    MEMORY[0x1E694E740](0);
  }

  sub_1E65E5D78();
  return sub_1E5E483B8();
}

uint64_t ItemContext.hashValue.getter()
{
  sub_1E65E6D28();
  ItemContext.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t ItemContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v154 = a2;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0766F0, &qword_1E65F5B68);
  v140 = *(v137 - 8);
  v3 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v145 = &v109 - v4;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0766F8, &qword_1E65F5B70);
  v138 = *(v139 - 8);
  v5 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v146 = &v109 - v6;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076700, &qword_1E65F5B78);
  v135 = *(v136 - 8);
  v7 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v136);
  v142 = &v109 - v8;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076708, &qword_1E65F5B80);
  v133 = *(v134 - 8);
  v9 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v134);
  v153 = &v109 - v10;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076710, &qword_1E65F5B88);
  v131 = *(v132 - 8);
  v11 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v144 = &v109 - v12;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076718, &qword_1E65F5B90);
  v129 = *(v130 - 8);
  v13 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v130);
  v143 = &v109 - v14;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076720, &qword_1E65F5B98);
  v127 = *(v128 - 8);
  v15 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v128);
  v152 = &v109 - v16;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076728, &qword_1E65F5BA0);
  v125 = *(v126 - 8);
  v17 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v126);
  v151 = &v109 - v18;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076730, &qword_1E65F5BA8);
  v123 = *(v124 - 8);
  v19 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v150 = &v109 - v20;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076738, &qword_1E65F5BB0);
  v121 = *(v122 - 8);
  v21 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v141 = &v109 - v22;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076740, &unk_1E65F5BB8);
  v148 = *(v155 - 8);
  v23 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v155);
  v25 = &v109 - v24;
  v147 = type metadata accessor for ItemContext();
  v26 = *(*(v147 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v147);
  v120 = &v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v119 = &v109 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v118 = &v109 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v117 = &v109 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v116 = &v109 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v115 = &v109 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = &v109 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = &v109 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42);
  v47 = &v109 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45);
  v50 = &v109 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v52 = &v109 - v51;
  v53 = a1[3];
  v54 = a1[4];
  v156 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v53);
  sub_1E61D8100();
  v149 = v25;
  v55 = v163;
  sub_1E65E6D98();
  if (v55)
  {
    return __swift_destroy_boxed_opaque_existential_1(v156);
  }

  v110 = v50;
  v111 = v44;
  v112 = v47;
  v113 = v41;
  v56 = v150;
  v57 = v151;
  v58 = v152;
  v59 = v153;
  v163 = 0;
  v114 = v52;
  v61 = v154;
  v60 = v155;
  v62 = v149;
  v63 = sub_1E65E6AF8();
  v64 = (2 * *(v63 + 16)) | 1;
  v159 = v63;
  v160 = v63 + 32;
  v161 = 0;
  v162 = v64;
  v65 = sub_1E5FBE3F8();
  if (v65 == 10 || v161 != v162 >> 1)
  {
    v72 = sub_1E65E68F8();
    swift_allocError();
    v73 = v60;
    v75 = v74;
    v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80) + 48);
    *v75 = v147;
    sub_1E65E6A78();
    sub_1E65E68E8();
    (*(*(v72 - 8) + 104))(v75, *MEMORY[0x1E69E6AF8], v72);
    swift_willThrow();
    (*(v148 + 8))(v62, v73);
LABEL_11:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v156);
  }

  if (v65 <= 4u)
  {
    if (v65 > 1u)
    {
      v66 = v163;
      if (v65 != 2)
      {
        if (v65 == 3)
        {
          LOBYTE(v157) = 3;
          sub_1E61D834C();
          v67 = v58;
          sub_1E65E6A68();
          v68 = v60;
          v69 = v148;
          if (!v66)
          {
            sub_1E65DC508();
            sub_1E5DF3F80(&qword_1ED076778, MEMORY[0x1E699E0B0]);
            v70 = v113;
            v71 = v128;
            sub_1E65E6AD8();
            (*(v127 + 8))(v67, v71);
            (*(v69 + 8))(v62, v155);
            swift_unknownObjectRelease();
LABEL_39:
            swift_storeEnumTagMultiPayload();
            v106 = v70;
            goto LABEL_41;
          }
        }

        else
        {
          LOBYTE(v157) = 4;
          sub_1E61D82F8();
          v94 = v143;
          sub_1E65E6A68();
          v68 = v60;
          v69 = v148;
          if (!v66)
          {
            type metadata accessor for LibraryItemContext();
            sub_1E5DF3F80(&qword_1ED076770, type metadata accessor for LibraryItemContext);
            v70 = v115;
            v104 = v130;
            sub_1E65E6AD8();
            (*(v129 + 8))(v94, v104);
            (*(v69 + 8))(v62, v155);
            swift_unknownObjectRelease();
            goto LABEL_39;
          }
        }

        (*(v69 + 8))(v62, v68);
        goto LABEL_11;
      }

      LOBYTE(v157) = 2;
      sub_1E61D83A0();
      sub_1E65E6A68();
      if (!v66)
      {
        sub_1E61D8614();
        v90 = v126;
        sub_1E65E6AD8();
        (*(v125 + 8))(v57, v90);
        (*(v148 + 8))(v62, v60);
        swift_unknownObjectRelease();
        v105 = v158;
        v86 = v111;
        *v111 = v157;
        *(v86 + 16) = v105;
        goto LABEL_38;
      }

      goto LABEL_36;
    }

    v82 = v163;
    if (!v65)
    {
      LOBYTE(v157) = 0;
      sub_1E61D849C();
      v83 = v141;
      sub_1E65E6A68();
      if (!v82)
      {
        sub_1E61D8668();
        v84 = v122;
        sub_1E65E6AD8();
        (*(v121 + 8))(v83, v84);
        (*(v148 + 8))(v62, v60);
        swift_unknownObjectRelease();
        v85 = v158;
        v86 = v110;
        *v110 = v157;
        *(v86 + 16) = v85;
LABEL_38:
        swift_storeEnumTagMultiPayload();
        v106 = v86;
LABEL_41:
        v107 = v114;
        sub_1E61D85AC(v106, v114, type metadata accessor for ItemContext);
        v108 = v156;
        goto LABEL_42;
      }

      goto LABEL_36;
    }

    LOBYTE(v157) = 1;
    sub_1E61D8448();
    v100 = v56;
    sub_1E65E6A68();
    if (!v82)
    {
      type metadata accessor for BrowseItemContext();
      sub_1E5DF3F80(&qword_1ED076788, type metadata accessor for BrowseItemContext);
      v80 = v112;
      v101 = v124;
      sub_1E65E6AD8();
      (*(v123 + 8))(v100, v101);
      (*(v148 + 8))(v62, v60);
      swift_unknownObjectRelease();
      goto LABEL_40;
    }

LABEL_36:
    (*(v148 + 8))(v62, v60);
    goto LABEL_11;
  }

  if (v65 <= 6u)
  {
    if (v65 != 5)
    {
      LOBYTE(v157) = 6;
      sub_1E61D8250();
      v102 = v163;
      sub_1E65E6A68();
      if (!v102)
      {
        sub_1E65E3498();
        sub_1E5DF3F80(&qword_1ED076760, MEMORY[0x1E699EC90]);
        v80 = v117;
        v103 = v134;
        sub_1E65E6AD8();
        (*(v133 + 8))(v59, v103);
        (*(v148 + 8))(v62, v60);
        swift_unknownObjectRelease();
        goto LABEL_40;
      }

      goto LABEL_36;
    }

    LOBYTE(v157) = 5;
    sub_1E61D82A4();
    v87 = v144;
    v88 = v163;
    sub_1E65E6A68();
    if (v88)
    {
      goto LABEL_36;
    }

    sub_1E65E0248();
    sub_1E5DF3F80(&qword_1ED076768, MEMORY[0x1E699D680]);
    v80 = v116;
    v89 = v132;
    sub_1E65E6AD8();
    (*(v131 + 8))(v87, v89);
    (*(v148 + 8))(v62, v60);
    swift_unknownObjectRelease();
LABEL_40:
    swift_storeEnumTagMultiPayload();
    v106 = v80;
    goto LABEL_41;
  }

  if (v65 == 7)
  {
    LOBYTE(v157) = 7;
    sub_1E61D81FC();
    v91 = v142;
    v92 = v163;
    sub_1E65E6A68();
    if (v92)
    {
      goto LABEL_36;
    }

    type metadata accessor for ProgramDetailItemContext();
    sub_1E5DF3F80(&qword_1ED076758, type metadata accessor for ProgramDetailItemContext);
    v80 = v118;
    v93 = v136;
    sub_1E65E6AD8();
    (*(v135 + 8))(v91, v93);
    (*(v148 + 8))(v62, v60);
    swift_unknownObjectRelease();
    goto LABEL_40;
  }

  if (v65 == 8)
  {
    LOBYTE(v157) = 8;
    sub_1E61D81A8();
    v78 = v146;
    v79 = v163;
    sub_1E65E6A68();
    if (v79)
    {
      goto LABEL_36;
    }

    type metadata accessor for SearchItemContext();
    sub_1E5DF3F80(&qword_1ED076750, type metadata accessor for SearchItemContext);
    v80 = v119;
    v81 = v139;
    sub_1E65E6AD8();
    (*(v138 + 8))(v78, v81);
    (*(v148 + 8))(v62, v60);
    swift_unknownObjectRelease();
    goto LABEL_40;
  }

  v95 = v61;
  LOBYTE(v157) = 9;
  sub_1E61D8154();
  v96 = v145;
  v97 = v163;
  sub_1E65E6A68();
  if (v97)
  {
    goto LABEL_36;
  }

  sub_1E65E26E8();
  sub_1E5DF3F80(&qword_1ED076748, MEMORY[0x1E699F400]);
  v98 = v120;
  v99 = v137;
  sub_1E65E6AD8();
  (*(v140 + 8))(v96, v99);
  (*(v148 + 8))(v62, v60);
  swift_unknownObjectRelease();
  swift_storeEnumTagMultiPayload();
  v107 = v114;
  sub_1E61D85AC(v98, v114, type metadata accessor for ItemContext);
  v108 = v156;
  v61 = v95;
LABEL_42:
  sub_1E61D85AC(v107, v61, type metadata accessor for ItemContext);
  return __swift_destroy_boxed_opaque_existential_1(v108);
}

uint64_t sub_1E61D7454()
{
  sub_1E65E6D28();
  ItemContext.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E61D7498()
{
  sub_1E65E6D28();
  ItemContext.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard11ItemContextO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v117 = a1;
  v3 = sub_1E65E26E8();
  v110 = *(v3 - 8);
  v111 = v3;
  v4 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v103 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SearchItemContext();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v102 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ProgramDetailItemContext();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v101 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E65E3498();
  v108 = *(v12 - 8);
  v109 = v12;
  v13 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v100 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65E0248();
  v106 = *(v15 - 8);
  v107 = v15;
  v16 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v99 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for LibraryItemContext();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v98 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E65DC508();
  v104 = *(v21 - 8);
  v105 = v21;
  v22 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v97 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for BrowseItemContext();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v96 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ItemContext();
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v116 = &v95 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v115 = &v95 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v114 = &v95 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v113 = &v95 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v112 = &v95 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = &v95 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = &v95 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42);
  v47 = &v95 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45);
  v50 = &v95 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v52 = &v95 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0767F0, &unk_1E65F6960);
  v54 = *(*(v53 - 8) + 64);
  v55 = MEMORY[0x1EEE9AC00](v53 - 8);
  v57 = &v95 - v56;
  v58 = &v95 + *(v55 + 56) - v56;
  sub_1E61D8544(v117, &v95 - v56, type metadata accessor for ItemContext);
  v59 = a2;
  v60 = v58;
  sub_1E61D8544(v59, v58, type metadata accessor for ItemContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v74 = v112;
        sub_1E61D8544(v57, v112, type metadata accessor for ItemContext);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v76 = v106;
          v75 = v107;
          v77 = v99;
          (*(v106 + 32))(v99, v58, v107);
          v78 = MEMORY[0x1E6947C40](v74, v77);
LABEL_32:
          v65 = v78;
          v87 = *(v76 + 8);
          v87(v77, v75);
          v87(v74, v75);
          goto LABEL_33;
        }

        v90 = v106;
        v89 = v107;
      }

      else
      {
        v74 = v113;
        sub_1E61D8544(v57, v113, type metadata accessor for ItemContext);
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v76 = v108;
          v75 = v109;
          v77 = v100;
          (*(v108 + 32))(v100, v58, v109);
          v78 = MEMORY[0x1E694AE90](v74, v77);
          goto LABEL_32;
        }

        v90 = v108;
        v89 = v109;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 7)
      {
        v50 = v114;
        sub_1E61D8544(v57, v114, type metadata accessor for ItemContext);
        if (swift_getEnumCaseMultiPayload() != 7)
        {
          v88 = type metadata accessor for ProgramDetailItemContext;
          goto LABEL_42;
        }

        v67 = type metadata accessor for ProgramDetailItemContext;
        v68 = v101;
        sub_1E61D85AC(v58, v101, type metadata accessor for ProgramDetailItemContext);
        v69 = _s10Blackbeard24ProgramDetailItemContextO2eeoiySbAC_ACtFZ_0(v50, v68);
LABEL_28:
        v65 = v69;
        sub_1E61D97A8(v68, v67);
        v86 = v50;
LABEL_29:
        sub_1E61D97A8(v86, v67);
LABEL_33:
        sub_1E61D97A8(v57, type metadata accessor for ItemContext);
        return v65 & 1;
      }

      if (EnumCaseMultiPayload == 8)
      {
        v50 = v115;
        sub_1E61D8544(v57, v115, type metadata accessor for ItemContext);
        if (swift_getEnumCaseMultiPayload() != 8)
        {
          v88 = type metadata accessor for SearchItemContext;
          goto LABEL_42;
        }

        v67 = type metadata accessor for SearchItemContext;
        v68 = v102;
        sub_1E61D85AC(v58, v102, type metadata accessor for SearchItemContext);
        v69 = _s10Blackbeard17SearchItemContextO2eeoiySbAC_ACtFZ_0(v50, v68);
        goto LABEL_28;
      }

      v74 = v116;
      sub_1E61D8544(v57, v116, type metadata accessor for ItemContext);
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v76 = v110;
        v77 = v103;
        v75 = v111;
        (*(v110 + 32))(v103, v58, v111);
        v78 = MEMORY[0x1E694A0E0](v74, v77);
        goto LABEL_32;
      }

      v90 = v110;
      v89 = v111;
    }

    (*(v90 + 8))(v74, v89);
    goto LABEL_45;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1E61D8544(v57, v52, type metadata accessor for ItemContext);
      v70 = v57;
      v72 = *v52;
      v71 = *(v52 + 1);
      v73 = v52[16];
      if (!swift_getEnumCaseMultiPayload())
      {
        v92 = *v60;
        v93 = *(v60 + 1);
        v94 = v60[16];
        v121 = v72;
        v122 = v71;
        v123 = v73;
        v118 = v92;
        v119 = v93;
        v120 = v94;
        v65 = _s10Blackbeard17FilterItemContextO2eeoiySbAC_ACtFZ_0(&v121, &v118);
        sub_1E5E483B8();
        goto LABEL_48;
      }

LABEL_34:
      sub_1E5E483B8();
      v57 = v70;
LABEL_45:
      sub_1E61D9740(v57);
      v65 = 0;
      return v65 & 1;
    }

    sub_1E61D8544(v57, v50, type metadata accessor for ItemContext);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v67 = type metadata accessor for BrowseItemContext;
      v68 = v96;
      sub_1E61D85AC(v58, v96, type metadata accessor for BrowseItemContext);
      v69 = _s10Blackbeard17BrowseItemContextO2eeoiySbAC_ACtFZ_0(v50, v68);
      goto LABEL_28;
    }

    v88 = type metadata accessor for BrowseItemContext;
LABEL_42:
    sub_1E61D97A8(v50, v88);
    goto LABEL_45;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1E61D8544(v57, v47, type metadata accessor for ItemContext);
    v70 = v57;
    v80 = *v47;
    v79 = *(v47 + 1);
    v81 = v47[16];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v82 = *v60;
      v83 = *(v60 + 1);
      v84 = v60[16];
      v121 = v80;
      v122 = v79;
      v123 = v81;
      v118 = v82;
      v119 = v83;
      v120 = v84;
      v65 = _s10Blackbeard17FilterItemContextO2eeoiySbAC_ACtFZ_0(&v121, &v118);
      sub_1E5E483B8();
LABEL_48:
      sub_1E5E483B8();
      sub_1E61D97A8(v70, type metadata accessor for ItemContext);
      return v65 & 1;
    }

    goto LABEL_34;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_1E61D8544(v57, v41, type metadata accessor for ItemContext);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      sub_1E61D97A8(v41, type metadata accessor for LibraryItemContext);
      goto LABEL_45;
    }

    v67 = type metadata accessor for LibraryItemContext;
    v85 = v98;
    sub_1E61D85AC(v58, v98, type metadata accessor for LibraryItemContext);
    v65 = _s10Blackbeard18LibraryItemContextO2eeoiySbAC_ACtFZ_0(v41, v85);
    sub_1E61D97A8(v85, type metadata accessor for LibraryItemContext);
    v86 = v41;
    goto LABEL_29;
  }

  sub_1E61D8544(v57, v44, type metadata accessor for ItemContext);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    (*(v104 + 8))(v44, v105);
    goto LABEL_45;
  }

  v62 = v104;
  v63 = v97;
  v64 = v105;
  (*(v104 + 32))(v97, v58, v105);
  v65 = MEMORY[0x1E6943F00](v44, v63);
  v66 = *(v62 + 8);
  v66(v63, v64);
  v66(v44, v64);
  sub_1E61D97A8(v57, type metadata accessor for ItemContext);
  return v65 & 1;
}

unint64_t sub_1E61D8100()
{
  result = qword_1EE2DB7F8[0];
  if (!qword_1EE2DB7F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2DB7F8);
  }

  return result;
}

unint64_t sub_1E61D8154()
{
  result = qword_1ED076638;
  if (!qword_1ED076638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076638);
  }

  return result;
}

unint64_t sub_1E61D81A8()
{
  result = qword_1ED076648;
  if (!qword_1ED076648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076648);
  }

  return result;
}

unint64_t sub_1E61D81FC()
{
  result = qword_1ED076658;
  if (!qword_1ED076658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076658);
  }

  return result;
}

unint64_t sub_1E61D8250()
{
  result = qword_1ED076668;
  if (!qword_1ED076668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076668);
  }

  return result;
}

unint64_t sub_1E61D82A4()
{
  result = qword_1ED076678;
  if (!qword_1ED076678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076678);
  }

  return result;
}

unint64_t sub_1E61D82F8()
{
  result = qword_1ED076688;
  if (!qword_1ED076688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076688);
  }

  return result;
}

unint64_t sub_1E61D834C()
{
  result = qword_1EE2DB7C0;
  if (!qword_1EE2DB7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB7C0);
  }

  return result;
}

unint64_t sub_1E61D83A0()
{
  result = qword_1ED076698;
  if (!qword_1ED076698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076698);
  }

  return result;
}

unint64_t sub_1E61D83F4()
{
  result = qword_1ED0766A0;
  if (!qword_1ED0766A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0766A0);
  }

  return result;
}

unint64_t sub_1E61D8448()
{
  result = qword_1ED0766A8;
  if (!qword_1ED0766A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0766A8);
  }

  return result;
}

unint64_t sub_1E61D849C()
{
  result = qword_1ED0766B8;
  if (!qword_1ED0766B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0766B8);
  }

  return result;
}

unint64_t sub_1E61D84F0()
{
  result = qword_1ED0766C0;
  if (!qword_1ED0766C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0766C0);
  }

  return result;
}

uint64_t sub_1E61D8544(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E61D85AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E61D8614()
{
  result = qword_1ED076780;
  if (!qword_1ED076780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076780);
  }

  return result;
}

unint64_t sub_1E61D8668()
{
  result = qword_1ED076790;
  if (!qword_1ED076790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076790);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ItemContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ItemContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E61D88B0()
{
  result = qword_1ED076798;
  if (!qword_1ED076798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076798);
  }

  return result;
}

unint64_t sub_1E61D8908()
{
  result = qword_1ED0767A0;
  if (!qword_1ED0767A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0767A0);
  }

  return result;
}

unint64_t sub_1E61D8960()
{
  result = qword_1ED0767A8;
  if (!qword_1ED0767A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0767A8);
  }

  return result;
}

unint64_t sub_1E61D89B8()
{
  result = qword_1ED0767B0;
  if (!qword_1ED0767B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0767B0);
  }

  return result;
}

unint64_t sub_1E61D8A10()
{
  result = qword_1ED0767B8;
  if (!qword_1ED0767B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0767B8);
  }

  return result;
}

unint64_t sub_1E61D8A68()
{
  result = qword_1ED0767C0;
  if (!qword_1ED0767C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0767C0);
  }

  return result;
}

unint64_t sub_1E61D8AC0()
{
  result = qword_1ED0767C8;
  if (!qword_1ED0767C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0767C8);
  }

  return result;
}

unint64_t sub_1E61D8B18()
{
  result = qword_1ED0767D0;
  if (!qword_1ED0767D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0767D0);
  }

  return result;
}

unint64_t sub_1E61D8B70()
{
  result = qword_1ED0767D8;
  if (!qword_1ED0767D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0767D8);
  }

  return result;
}

unint64_t sub_1E61D8BC8()
{
  result = qword_1ED0767E0;
  if (!qword_1ED0767E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0767E0);
  }

  return result;
}

unint64_t sub_1E61D8C20()
{
  result = qword_1ED0767E8;
  if (!qword_1ED0767E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0767E8);
  }

  return result;
}

unint64_t sub_1E61D8C78()
{
  result = qword_1EE2DB780;
  if (!qword_1EE2DB780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB780);
  }

  return result;
}

unint64_t sub_1E61D8CD0()
{
  result = qword_1EE2DB788;
  if (!qword_1EE2DB788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB788);
  }

  return result;
}

unint64_t sub_1E61D8D28()
{
  result = qword_1EE2DB7D8;
  if (!qword_1EE2DB7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB7D8);
  }

  return result;
}

unint64_t sub_1E61D8D80()
{
  result = qword_1EE2DB7E0;
  if (!qword_1EE2DB7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB7E0);
  }

  return result;
}

unint64_t sub_1E61D8DD8()
{
  result = qword_1EE2DB7C8;
  if (!qword_1EE2DB7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB7C8);
  }

  return result;
}

unint64_t sub_1E61D8E30()
{
  result = qword_1EE2DB7D0;
  if (!qword_1EE2DB7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB7D0);
  }

  return result;
}

unint64_t sub_1E61D8E88()
{
  result = qword_1EE2DB7B0;
  if (!qword_1EE2DB7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB7B0);
  }

  return result;
}

unint64_t sub_1E61D8EE0()
{
  result = qword_1EE2DB7B8;
  if (!qword_1EE2DB7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB7B8);
  }

  return result;
}

unint64_t sub_1E61D8F38()
{
  result = qword_1EE2DB790;
  if (!qword_1EE2DB790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB790);
  }

  return result;
}

unint64_t sub_1E61D8F90()
{
  result = qword_1EE2DB798;
  if (!qword_1EE2DB798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB798);
  }

  return result;
}

unint64_t sub_1E61D8FE8()
{
  result = qword_1EE2DB750;
  if (!qword_1EE2DB750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB750);
  }

  return result;
}

unint64_t sub_1E61D9040()
{
  result = qword_1EE2DB758;
  if (!qword_1EE2DB758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB758);
  }

  return result;
}

unint64_t sub_1E61D9098()
{
  result = qword_1EE2DB740;
  if (!qword_1EE2DB740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB740);
  }

  return result;
}

unint64_t sub_1E61D90F0()
{
  result = qword_1EE2DB748;
  if (!qword_1EE2DB748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB748);
  }

  return result;
}

unint64_t sub_1E61D9148()
{
  result = qword_1EE2DB760;
  if (!qword_1EE2DB760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB760);
  }

  return result;
}

unint64_t sub_1E61D91A0()
{
  result = qword_1EE2DB768;
  if (!qword_1EE2DB768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB768);
  }

  return result;
}

unint64_t sub_1E61D91F8()
{
  result = qword_1EE2DB7A0;
  if (!qword_1EE2DB7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB7A0);
  }

  return result;
}

unint64_t sub_1E61D9250()
{
  result = qword_1EE2DB7A8;
  if (!qword_1EE2DB7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB7A8);
  }

  return result;
}

unint64_t sub_1E61D92A8()
{
  result = qword_1EE2DB770;
  if (!qword_1EE2DB770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB770);
  }

  return result;
}

unint64_t sub_1E61D9300()
{
  result = qword_1EE2DB778;
  if (!qword_1EE2DB778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB778);
  }

  return result;
}

unint64_t sub_1E61D9358()
{
  result = qword_1EE2DB7E8;
  if (!qword_1EE2DB7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB7E8);
  }

  return result;
}

unint64_t sub_1E61D93B0()
{
  result = qword_1EE2DB7F0;
  if (!qword_1EE2DB7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB7F0);
  }

  return result;
}

uint64_t sub_1E61D9404(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7465446472617761 && a2 == 0xEB000000006C6961;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6573776F7262 && a2 == 0xE600000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265746C6966 && a2 == 0xE600000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756F59726F66 && a2 == 0xE600000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7972617262696CLL && a2 == 0xE700000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6546646E4177656ELL && a2 == 0xEE00646572757461 || (sub_1E65E6C18() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x57646574616C6572 && a2 == 0xEE0074756F6B726FLL || (sub_1E65E6C18() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x446D6172676F7270 && a2 == 0xED00006C69617465 || (sub_1E65E6C18() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x686372616573 && a2 == 0xE600000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x5074756F6B726F77 && a2 == 0xEB000000006E616CLL)
  {

    return 9;
  }

  else
  {
    v6 = sub_1E65E6C18();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1E61D9740(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0767F0, &unk_1E65F6960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E61D97A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FilterItemContext.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1E61DA5E0();
  return v1;
}

uint64_t sub_1E61D9850()
{
  if (*v0)
  {
    result = 0x6C6F686563616C70;
  }

  else
  {
    result = 1835365481;
  }

  *v0;
  return result;
}

uint64_t sub_1E61D988C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1835365481 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E61D996C(uint64_t a1)
{
  v2 = sub_1E61DA5E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61D99A8(uint64_t a1)
{
  v2 = sub_1E61DA5E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61D99E4(uint64_t a1)
{
  v2 = sub_1E61DA690();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61D9A20(uint64_t a1)
{
  v2 = sub_1E61DA690();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61D9A5C(uint64_t a1)
{
  v2 = sub_1E61DA63C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61D9A98(uint64_t a1)
{
  v2 = sub_1E61DA63C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FilterItemContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0767F8, &qword_1E65F6970);
  v25 = *(v3 - 8);
  v26 = v3;
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076800, &qword_1E65F6978);
  v22 = *(v6 - 8);
  v23 = v6;
  v7 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076808, &qword_1E65F6980);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  v15 = *v1;
  v27 = v1[1];
  v28 = v15;
  v16 = *(v1 + 16);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E61DA5E8();
  sub_1E65E6DA8();
  if (v16)
  {
    v30 = 1;
    sub_1E61DA63C();
    v18 = v24;
    sub_1E65E6B18();
    v19 = v26;
    sub_1E65E6B48();
    (*(v25 + 8))(v18, v19);
  }

  else
  {
    v29 = 0;
    sub_1E61DA690();
    sub_1E65E6B18();
    v20 = v23;
    sub_1E65E6B48();
    (*(v22 + 8))(v9, v20);
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t FilterItemContext.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x1E694E740](*(v0 + 16));

  return sub_1E65E5D78();
}

uint64_t FilterItemContext.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v3);
  sub_1E65E5D78();
  return sub_1E65E6D78();
}

uint64_t FilterItemContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076828, &qword_1E65F6988);
  v37 = *(v35 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076830, &qword_1E65F6990);
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076838, &unk_1E65F6998);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1E61DA5E8();
  v17 = v39;
  sub_1E65E6D98();
  if (!v17)
  {
    v39 = v11;
    v18 = sub_1E65E6AF8();
    v19 = (2 * *(v18 + 16)) | 1;
    v41 = v18;
    v42 = v18 + 32;
    v43 = 0;
    v44 = v19;
    v20 = sub_1E5FBE3F0();
    v21 = v10;
    if (v20 == 2 || v43 != v44 >> 1)
    {
      v28 = sub_1E65E68F8();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80) + 48);
      *v30 = &type metadata for FilterItemContext;
      sub_1E65E6A78();
      sub_1E65E68E8();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v39 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = v20;
      if (v20)
      {
        v46 = 1;
        sub_1E61DA63C();
        sub_1E65E6A68();
        v23 = v38;
        v22 = v39;
        v24 = v35;
        v25 = sub_1E65E6AA8();
        v27 = v26;
        (*(v37 + 8))(v5, v24);
      }

      else
      {
        v46 = 0;
        sub_1E61DA690();
        v33 = v9;
        sub_1E65E6A68();
        v23 = v38;
        v22 = v39;
        v25 = sub_1E65E6AA8();
        v27 = v34;
        (*(v36 + 8))(v33, v6);
      }

      (*(v22 + 8))(v14, v21);
      swift_unknownObjectRelease();
      *v23 = v25;
      *(v23 + 8) = v27;
      *(v23 + 16) = v45 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t sub_1E61DA39C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v3);
  sub_1E65E5D78();
  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard17FilterItemContextO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v12 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

LABEL_9:
    v9 = *a2;
    v10 = a2[1];
    sub_1E61DA5E0();
    sub_1E61DA5E0();
    sub_1E5FEE4E4();
    sub_1E5FEE4E4();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = *a1;
  if (v3 != v5 || v2 != v4)
  {
LABEL_14:
    v14 = sub_1E65E6C18();
    sub_1E61DA5E0();
    sub_1E61DA5E0();
    sub_1E5FEE4E4();
    sub_1E5FEE4E4();
    return v14 & 1;
  }

LABEL_15:
  sub_1E61DA5E0();
  sub_1E61DA5E0();
  sub_1E5FEE4E4();
  sub_1E5FEE4E4();
  return 1;
}

unint64_t sub_1E61DA5E8()
{
  result = qword_1ED076810;
  if (!qword_1ED076810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076810);
  }

  return result;
}

unint64_t sub_1E61DA63C()
{
  result = qword_1ED076818;
  if (!qword_1ED076818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076818);
  }

  return result;
}

unint64_t sub_1E61DA690()
{
  result = qword_1ED076820;
  if (!qword_1ED076820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076820);
  }

  return result;
}

unint64_t sub_1E61DA6E8()
{
  result = qword_1ED076840;
  if (!qword_1ED076840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076840);
  }

  return result;
}

uint64_t sub_1E61DA748(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E61DA790(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1E61DA824()
{
  result = qword_1ED076848;
  if (!qword_1ED076848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076848);
  }

  return result;
}

unint64_t sub_1E61DA87C()
{
  result = qword_1ED076850;
  if (!qword_1ED076850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076850);
  }

  return result;
}

unint64_t sub_1E61DA8D4()
{
  result = qword_1ED076858;
  if (!qword_1ED076858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076858);
  }

  return result;
}

unint64_t sub_1E61DA92C()
{
  result = qword_1ED076860;
  if (!qword_1ED076860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076860);
  }

  return result;
}

unint64_t sub_1E61DA984()
{
  result = qword_1ED076868;
  if (!qword_1ED076868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076868);
  }

  return result;
}

unint64_t sub_1E61DA9DC()
{
  result = qword_1ED076870;
  if (!qword_1ED076870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076870);
  }

  return result;
}

unint64_t sub_1E61DAA34()
{
  result = qword_1ED076878;
  if (!qword_1ED076878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076878);
  }

  return result;
}

unint64_t sub_1E61DAA8C()
{
  result = qword_1ED076880;
  if (!qword_1ED076880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076880);
  }

  return result;
}

unint64_t sub_1E61DAAE4()
{
  result = qword_1ED076888;
  if (!qword_1ED076888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076888);
  }

  return result;
}

uint64_t sub_1E61DAB3C(uint64_t a1, uint64_t (*a2)(BOOL, unint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, void))
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v4;
  }

  v33 = MEMORY[0x1E69E7CC0];
  a2(0, v3, 0);
  v4 = v33;
  v6 = a1 + 56;
  v7 = -1 << *(a1 + 32);
  result = sub_1E65E6748();
  v9 = result;
  v10 = 0;
  v29 = v3;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v12 = v9 >> 6;
    if ((*(v6 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_21;
    }

    v31 = v10;
    v32 = *(a1 + 36);
    v13 = *(a1 + 48) + 24 * v9;
    v15 = *v13;
    v14 = *(v13 + 8);
    v16 = *(v13 + 16);
    result = a3(*v13, v14, v16);
    v18 = *(v33 + 16);
    v17 = *(v33 + 24);
    v19 = v18 + 1;
    if (v18 >= v17 >> 1)
    {
      result = a2(v17 > 1, v18 + 1, 1);
      v19 = v18 + 1;
    }

    *(v33 + 16) = v19;
    v20 = v33 + 24 * v18;
    *(v20 + 32) = v15;
    *(v20 + 40) = v14;
    *(v20 + 48) = v16;
    v11 = 1 << *(a1 + 32);
    if (v9 >= v11)
    {
      goto LABEL_22;
    }

    v6 = a1 + 56;
    v21 = *(a1 + 56 + 8 * v12);
    if ((v21 & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    if (v32 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v22 = v21 & (-2 << (v9 & 0x3F));
    if (v22)
    {
      v11 = __clz(__rbit64(v22)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v12 << 6;
      v24 = v12 + 1;
      v25 = (a1 + 64 + 8 * v12);
      while (v24 < (v11 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_1E5F87098(v9, v32, 0);
          v11 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_1E5F87098(v9, v32, 0);
    }

LABEL_4:
    v10 = v31 + 1;
    v9 = v11;
    if (v31 + 1 == v29)
    {
      return v4;
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

uint64_t sub_1E61DADA0@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0768A0, &qword_1E65F6E68);
  v1 = *(*(v51 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v51);
  v49 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v50 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073278, &qword_1E65ED0D0);
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - v7;
  v9 = sub_1E65D9358();
  v10 = *(v9 + 16);
  if (v10)
  {
    v53 = MEMORY[0x1E69E7CC0];
    sub_1E601C0F8(0, v10, 0);
    v11 = v53;
    v12 = v9 + 64;
    v13 = -1 << *(v9 + 32);
    v14 = sub_1E65E6748();
    v15 = 0;
    v44 = *(v9 + 36);
    v42 = v9 + 72;
    v43 = v10;
    v16 = *(v9 + 32);
    v45 = v9 + 64;
    v46 = v9;
    do
    {
      if (v14 < 0 || v14 >= 1 << v16)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v19 = v14 >> 6;
      if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_24;
      }

      v52 = v15;
      v20 = *(v9 + 48);
      v21 = sub_1E65D8EF8();
      v22 = *(v21 - 8);
      v23 = v8;
      v24 = v50;
      (*(v22 + 16))(v50, v20 + *(v22 + 72) * v14, v21);
      v25 = *(*(v9 + 56) + 8 * v14);
      v26 = v49;
      v27 = v24;
      v8 = v23;
      (*(v22 + 32))(v49, v27, v21);
      *(v26 + *(v51 + 48)) = v25;
      v28 = *(v48 + 48);

      *(v23 + v28) = sub_1E61DB728(v23, v26, v25);
      sub_1E5DFE50C(v26, &qword_1ED0768A0, &qword_1E65F6E68);
      v53 = v11;
      v30 = *(v11 + 16);
      v29 = *(v11 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1E601C0F8(v29 > 1, v30 + 1, 1);
        v11 = v53;
      }

      *(v11 + 16) = v30 + 1;
      sub_1E5FAB460(v23, v11 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v30, &qword_1ED073278, &qword_1E65ED0D0);
      v9 = v46;
      v16 = *(v46 + 32);
      v17 = 1 << v16;
      if (v14 >= 1 << v16)
      {
        goto LABEL_25;
      }

      v12 = v45;
      v31 = *(v45 + 8 * v19);
      if ((v31 & (1 << v14)) == 0)
      {
        goto LABEL_26;
      }

      if (v44 != *(v46 + 36))
      {
        goto LABEL_27;
      }

      v32 = v31 & (-2 << (v14 & 0x3F));
      if (v32)
      {
        v17 = __clz(__rbit64(v32)) | v14 & 0x7FFFFFFFFFFFFFC0;
        v18 = v43;
      }

      else
      {
        v33 = v19 << 6;
        v34 = v19 + 1;
        v18 = v43;
        v35 = (v42 + 8 * v19);
        while (v34 < (v17 + 63) >> 6)
        {
          v37 = *v35++;
          v36 = v37;
          v33 += 64;
          ++v34;
          if (v37)
          {
            v17 = __clz(__rbit64(v36)) + v33;
            break;
          }
        }
      }

      v14 = v17;
      v15 = v52 + 1;
    }

    while (v52 + 1 != v18);

    if (!*(v11 + 16))
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_21:
      v38 = MEMORY[0x1E69E7CC8];
      goto LABEL_22;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0768A8, &qword_1E65F6E70);
  v38 = sub_1E65E6A28();
LABEL_22:
  v53 = v38;

  sub_1E61DC040(v39, 1, &v53);

  return sub_1E65E2CD8();
}

uint64_t sub_1E61DB264@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076890, &qword_1E65F6E58);
  v1 = *(*(v51 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v51);
  v49 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v50 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072F80, &qword_1E65ECDE0);
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - v7;
  v9 = sub_1E65E2CE8();
  v10 = *(v9 + 16);
  if (v10)
  {
    v53 = MEMORY[0x1E69E7CC0];
    sub_1E601C8B0(0, v10, 0);
    v11 = v53;
    v12 = v9 + 64;
    v13 = -1 << *(v9 + 32);
    v14 = sub_1E65E6748();
    v15 = 0;
    v44 = *(v9 + 36);
    v42 = v9 + 72;
    v43 = v10;
    v16 = *(v9 + 32);
    v45 = v9 + 64;
    v46 = v9;
    do
    {
      if (v14 < 0 || v14 >= 1 << v16)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v19 = v14 >> 6;
      if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_24;
      }

      v52 = v15;
      v20 = *(v9 + 48);
      v21 = sub_1E65E2BA8();
      v22 = *(v21 - 8);
      v23 = v8;
      v24 = v50;
      (*(v22 + 16))(v50, v20 + *(v22 + 72) * v14, v21);
      v25 = *(*(v9 + 56) + 8 * v14);
      v26 = v49;
      v27 = v24;
      v8 = v23;
      (*(v22 + 32))(v49, v27, v21);
      *(v26 + *(v51 + 48)) = v25;
      v28 = *(v48 + 48);

      *(v23 + v28) = sub_1E61DBD10(v23, v26, v25);
      sub_1E5DFE50C(v26, &qword_1ED076890, &qword_1E65F6E58);
      v53 = v11;
      v30 = *(v11 + 16);
      v29 = *(v11 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1E601C8B0(v29 > 1, v30 + 1, 1);
        v11 = v53;
      }

      *(v11 + 16) = v30 + 1;
      sub_1E5FAB460(v23, v11 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v30, &qword_1ED072F80, &qword_1E65ECDE0);
      v9 = v46;
      v16 = *(v46 + 32);
      v17 = 1 << v16;
      if (v14 >= 1 << v16)
      {
        goto LABEL_25;
      }

      v12 = v45;
      v31 = *(v45 + 8 * v19);
      if ((v31 & (1 << v14)) == 0)
      {
        goto LABEL_26;
      }

      if (v44 != *(v46 + 36))
      {
        goto LABEL_27;
      }

      v32 = v31 & (-2 << (v14 & 0x3F));
      if (v32)
      {
        v17 = __clz(__rbit64(v32)) | v14 & 0x7FFFFFFFFFFFFFC0;
        v18 = v43;
      }

      else
      {
        v33 = v19 << 6;
        v34 = v19 + 1;
        v18 = v43;
        v35 = (v42 + 8 * v19);
        while (v34 < (v17 + 63) >> 6)
        {
          v37 = *v35++;
          v36 = v37;
          v33 += 64;
          ++v34;
          if (v37)
          {
            v17 = __clz(__rbit64(v36)) + v33;
            break;
          }
        }
      }

      v14 = v17;
      v15 = v52 + 1;
    }

    while (v52 + 1 != v18);

    if (!*(v11 + 16))
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_21:
      v38 = MEMORY[0x1E69E7CC8];
      goto LABEL_22;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076898, &qword_1E65F6E60);
  v38 = sub_1E65E6A28();
LABEL_22:
  v53 = v38;

  sub_1E61DC594(v39, 1, &v53);

  return sub_1E65D9348();
}

uint64_t sub_1E61DB728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E65D76F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v38 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1E65D9F38();
  v7 = *(v37 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1E65E27C8();
  v10 = *(v35 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D8EB8();
  sub_1E65D8EC8();
  sub_1E65D8ED8();
  sub_1E65D8EE8();
  sub_1E65E2B58();
  v14 = *(a3 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v42 = MEMORY[0x1E69E7CC0];
    sub_1E601CA5C(0, v14, 0);
    v15 = v42;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v18 = a3 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v31 = *(v16 + 56);
    v32 = v17;
    v29[1] = v10 + 32;
    v30 = (v16 - 8);
    v33 = v10;
    v34 = v16;
    v19 = v37;
    do
    {
      v41 = v15;
      v20 = v36;
      v32(v36, v18, v19);
      sub_1E65D76E8();
      v21 = sub_1E65D9F18();
      v39 = v22;
      v40 = v21;
      sub_1E65D9F28();
      v23 = sub_1E65D9EF8();
      v24 = v13;
      v25 = sub_1E61DAB3C(v23, sub_1E601CAA0, sub_1E600E210);

      sub_1E600C6BC(v25);
      v13 = v24;

      v15 = v41;
      sub_1E65E2788();
      (*v30)(v20, v19);
      v42 = v15;
      v27 = *(v15 + 16);
      v26 = *(v15 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1E601CA5C(v26 > 1, v27 + 1, 1);
        v15 = v42;
      }

      *(v15 + 16) = v27 + 1;
      (*(v33 + 32))(v15 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v27, v13, v35);
      v18 += v31;
      --v14;
    }

    while (v14);
  }

  return v15;
}

uint64_t WorkoutPlanSchedule.weekdays.getter()
{
  v0 = sub_1E65E2BA8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65E2CE8();
  v6 = v5;
  v7 = v5 + 64;
  v8 = 1 << *(v5 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v5 + 64);
  v11 = (v8 + 63) >> 6;
  v25 = v1 + 8;
  v26 = v1 + 16;

  v13 = 0;
  v24 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      (*(v1 + 16))(v4, *(v6 + 48) + *(v1 + 72) * (v14 | (v13 << 6)), v0);
      v15 = sub_1E65E2B68();
      v16 = MEMORY[0x1E6942760](v15);
      result = (*(v1 + 8))(v4, v0);
      if (v16 != 7)
      {
        break;
      }

      if (!v10)
      {
        goto LABEL_6;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E64F6ADC(0, *(v24 + 2) + 1, 1, v24);
      v24 = result;
    }

    v19 = *(v24 + 2);
    v18 = *(v24 + 3);
    v20 = v19 + 1;
    if (v19 >= v18 >> 1)
    {
      v23 = v19 + 1;
      result = sub_1E64F6ADC((v18 > 1), v19 + 1, 1, v24);
      v20 = v23;
      v24 = result;
    }

    v21 = v24;
    *(v24 + 2) = v20;
    v21[v19 + 32] = v16;
  }

  while (v10);
LABEL_6:
  while (1)
  {
    v17 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v17 >= v11)
    {

      v22 = sub_1E600C434(v24);

      return v22;
    }

    v10 = *(v7 + 8 * v17);
    ++v13;
    if (v10)
    {
      v13 = v17;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E61DBD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = sub_1E65E27C8();
  v4 = *(v33 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v32 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1E65D9F38();
  v7 = *(v31 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65E2B68();
  sub_1E65E2B78();
  sub_1E65E2B88();
  sub_1E65E2B98();
  sub_1E65D8EA8();
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v36 = MEMORY[0x1E69E7CC0];
    sub_1E601CAD8(0, v11, 0);
    v12 = v36;
    v14 = *(v4 + 16);
    v13 = v4 + 16;
    v15 = a3 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v27 = *(v13 + 56);
    v28 = v14;
    v25[1] = v7 + 32;
    v26 = (v13 - 8);
    v29 = v7;
    v30 = v13;
    v16 = v32;
    do
    {
      v35 = v12;
      v17 = v33;
      v28(v16, v15, v33);
      sub_1E65E27A8();
      v34 = v18;
      sub_1E65E27B8();
      v19 = sub_1E65E2798();
      v20 = v10;
      v21 = sub_1E61DAB3C(v19, sub_1E601CB1C, sub_1E600E210);

      sub_1E600C764(v21);
      v10 = v20;

      v12 = v35;
      sub_1E65D9F08();
      (*v26)(v16, v17);
      v36 = v12;
      v23 = *(v12 + 16);
      v22 = *(v12 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1E601CAD8(v22 > 1, v23 + 1, 1);
        v12 = v36;
      }

      *(v12 + 16) = v23 + 1;
      (*(v29 + 32))(v12 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v23, v10, v31);
      v15 += v27;
      --v11;
    }

    while (v11);
  }

  return v12;
}

void sub_1E61DC040(uint64_t a1, char a2, void *a3)
{
  v7 = sub_1E65E2BA8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073278, &qword_1E65ED0D0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v17 = v58 - v16;
  v63 = *(a1 + 16);
  if (!v63)
  {
    goto LABEL_22;
  }

  v58[1] = v3;
  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v62 = *(v15 + 72);
  v64 = a1;
  v58[0] = v19;
  sub_1E5DFD1CC(a1 + v19, v58 - v16, &qword_1ED073278, &qword_1E65ED0D0);
  v59 = v8;
  v65 = *(v8 + 32);
  v66 = v7;
  v65(v11, v17, v7);
  v61 = v18;
  v20 = *&v17[v18];
  v21 = *a3;
  v22 = sub_1E6417154(v11);
  v24 = v21[2];
  v25 = (v23 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v23;
  if (v21[3] < v27)
  {
    sub_1E641ACCC(v27, a2 & 1);
    v29 = *a3;
    v22 = sub_1E6417154(v11);
    if ((v28 & 1) != (v30 & 1))
    {
LABEL_5:
      sub_1E65E6C68();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v28)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v35 = v22;
  sub_1E64242C8();
  v22 = v35;
  if (v28)
  {
LABEL_9:
    v31 = swift_allocError();
    swift_willThrow();
    v69 = v31;
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v33 = swift_dynamicCast();
    v34 = v66;
    if ((v33 & 1) == 0)
    {

      (*(v59 + 8))(v11, v34);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v36 = *a3;
  *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
  v37 = v36[6];
  v60 = *(v59 + 72);
  v38 = v22;
  v65((v37 + v60 * v22), v11, v66);
  *(v36[7] + 8 * v38) = v20;
  v39 = v36[2];
  v26 = __OFADD__(v39, 1);
  v40 = v39 + 1;
  if (!v26)
  {
    v36[2] = v40;
    v41 = v64;
    if (v63 == 1)
    {
LABEL_22:

      return;
    }

    v42 = v64 + v62 + v58[0];
    v43 = 1;
    while (v43 < *(v41 + 16))
    {
      sub_1E5DFD1CC(v42, v17, &qword_1ED073278, &qword_1E65ED0D0);
      v65(v11, v17, v66);
      v44 = *&v17[v61];
      v45 = *a3;
      v46 = sub_1E6417154(v11);
      v48 = v45[2];
      v49 = (v47 & 1) == 0;
      v26 = __OFADD__(v48, v49);
      v50 = v48 + v49;
      if (v26)
      {
        goto LABEL_23;
      }

      v51 = v47;
      if (v45[3] < v50)
      {
        sub_1E641ACCC(v50, 1);
        v52 = *a3;
        v46 = sub_1E6417154(v11);
        if ((v51 & 1) != (v53 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v51)
      {
        goto LABEL_9;
      }

      v54 = *a3;
      *(*a3 + 8 * (v46 >> 6) + 64) |= 1 << v46;
      v55 = v46;
      v65((v54[6] + v60 * v46), v11, v66);
      *(v54[7] + 8 * v55) = v44;
      v56 = v54[2];
      v26 = __OFADD__(v56, 1);
      v57 = v56 + 1;
      if (v26)
      {
        goto LABEL_24;
      }

      ++v43;
      v54[2] = v57;
      v42 += v62;
      v41 = v64;
      if (v63 == v43)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_1E65E68A8();
  MEMORY[0x1E694D7C0](0xD00000000000001BLL, 0x80000001E6611C70);
  sub_1E65E69B8();
  MEMORY[0x1E694D7C0](39, 0xE100000000000000);
  sub_1E65E69D8();
  __break(1u);
}

void sub_1E61DC594(uint64_t a1, char a2, void *a3)
{
  v7 = sub_1E65D8EF8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072F80, &qword_1E65ECDE0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v17 = v58 - v16;
  v63 = *(a1 + 16);
  if (!v63)
  {
    goto LABEL_22;
  }

  v58[1] = v3;
  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v62 = *(v15 + 72);
  v64 = a1;
  v58[0] = v19;
  sub_1E5DFD1CC(a1 + v19, v58 - v16, &qword_1ED072F80, &qword_1E65ECDE0);
  v59 = v8;
  v65 = *(v8 + 32);
  v66 = v7;
  v65(v11, v17, v7);
  v61 = v18;
  v20 = *&v17[v18];
  v21 = *a3;
  v22 = sub_1E64174A0(v11);
  v24 = v21[2];
  v25 = (v23 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v23;
  if (v21[3] < v27)
  {
    sub_1E641C6B8(v27, a2 & 1);
    v29 = *a3;
    v22 = sub_1E64174A0(v11);
    if ((v28 & 1) != (v30 & 1))
    {
LABEL_5:
      sub_1E65E6C68();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v28)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v35 = v22;
  sub_1E64250F4();
  v22 = v35;
  if (v28)
  {
LABEL_9:
    v31 = swift_allocError();
    swift_willThrow();
    v69 = v31;
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v33 = swift_dynamicCast();
    v34 = v66;
    if ((v33 & 1) == 0)
    {

      (*(v59 + 8))(v11, v34);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v36 = *a3;
  *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
  v37 = v36[6];
  v60 = *(v59 + 72);
  v38 = v22;
  v65((v37 + v60 * v22), v11, v66);
  *(v36[7] + 8 * v38) = v20;
  v39 = v36[2];
  v26 = __OFADD__(v39, 1);
  v40 = v39 + 1;
  if (!v26)
  {
    v36[2] = v40;
    v41 = v64;
    if (v63 == 1)
    {
LABEL_22:

      return;
    }

    v42 = v64 + v62 + v58[0];
    v43 = 1;
    while (v43 < *(v41 + 16))
    {
      sub_1E5DFD1CC(v42, v17, &qword_1ED072F80, &qword_1E65ECDE0);
      v65(v11, v17, v66);
      v44 = *&v17[v61];
      v45 = *a3;
      v46 = sub_1E64174A0(v11);
      v48 = v45[2];
      v49 = (v47 & 1) == 0;
      v26 = __OFADD__(v48, v49);
      v50 = v48 + v49;
      if (v26)
      {
        goto LABEL_23;
      }

      v51 = v47;
      if (v45[3] < v50)
      {
        sub_1E641C6B8(v50, 1);
        v52 = *a3;
        v46 = sub_1E64174A0(v11);
        if ((v51 & 1) != (v53 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v51)
      {
        goto LABEL_9;
      }

      v54 = *a3;
      *(*a3 + 8 * (v46 >> 6) + 64) |= 1 << v46;
      v55 = v46;
      v65((v54[6] + v60 * v46), v11, v66);
      *(v54[7] + 8 * v55) = v44;
      v56 = v54[2];
      v26 = __OFADD__(v56, 1);
      v57 = v56 + 1;
      if (v26)
      {
        goto LABEL_24;
      }

      ++v43;
      v54[2] = v57;
      v42 += v62;
      v41 = v64;
      if (v63 == v43)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_1E65E68A8();
  MEMORY[0x1E694D7C0](0xD00000000000001BLL, 0x80000001E6611C70);
  sub_1E65E69B8();
  MEMORY[0x1E694D7C0](39, 0xE100000000000000);
  sub_1E65E69D8();
  __break(1u);
}

uint64_t sub_1E61DCAE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  sub_1E601C7BC(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_1E65E6748();
  v7 = v25;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(*(a1 + 48) + result);
    v13 = *(a1 + 36);
    v15 = *(v26 + 16);
    v14 = *(v26 + 24);
    if (v15 >= v14 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_1E601C7BC((v14 > 1), v15 + 1, 1);
      v7 = v25;
      v13 = v23;
      result = v24;
    }

    *(v26 + 16) = v15 + 1;
    *(v26 + v15 + 32) = v12;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_22;
    }

    v16 = *(v4 + 8 * v10);
    if ((v16 & v11) == 0)
    {
      goto LABEL_23;
    }

    if (v13 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_1E5F87098(result, v13, 0);
          v7 = v25;
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_1E5F87098(result, v13, 0);
      v7 = v25;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
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

uint64_t sub_1E61DCD04@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v318 = a5;
  v303 = a4;
  v317 = a3;
  v310 = a2;
  v311 = a1;
  v319 = a6;
  v266 = sub_1E65DAA08();
  v265 = *(v266 - 8);
  v7 = *(v265 + 64);
  MEMORY[0x1EEE9AC00](v266);
  v264 = &v256 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v298 = sub_1E65DA1B8();
  v9 = *(*(v298 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v298);
  v299 = &v256 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v300 = &v256 - v12;
  v294 = sub_1E65DFE28();
  v293 = *(v294 - 8);
  v13 = *(v293 + 64);
  MEMORY[0x1EEE9AC00](v294);
  v292 = &v256 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65D74E8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v263 = &v256 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = sub_1E65D8478();
  v261 = *(v262 - 8);
  v18 = *(v261 + 64);
  v19 = MEMORY[0x1EEE9AC00](v262);
  v260 = &v256 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v258 = &v256 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v257 = &v256 - v23;
  v24 = sub_1E65DF9A8();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v259 = &v256 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v286 = sub_1E65DA688();
  v285 = *(v286 - 8);
  v27 = *(v285 + 64);
  MEMORY[0x1EEE9AC00](v286);
  v283 = &v256 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v282 = &v256 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v279 = &v256 - v34;
  v280 = sub_1E65DAC98();
  v278 = *(v280 - 8);
  v35 = *(v278 + 64);
  MEMORY[0x1EEE9AC00](v280);
  v272 = &v256 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v281 = sub_1E65DFA38();
  v37 = *(*(v281 - 8) + 64);
  MEMORY[0x1EEE9AC00](v281);
  v276 = &v256 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758D8, &qword_1E65F1FE0);
  v39 = *(*(v274 - 8) + 64);
  MEMORY[0x1EEE9AC00](v274);
  v275 = &v256 - v40;
  v277 = sub_1E65DA1A8();
  v273 = *(v277 - 8);
  v41 = *(v273 + 64);
  MEMORY[0x1EEE9AC00](v277);
  v271 = &v256 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v313 = sub_1E65D7348();
  v43 = *(*(v313 - 8) + 64);
  MEMORY[0x1EEE9AC00](v313);
  v284 = &v256 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v288 = sub_1E65DA168();
  v287 = *(v288 - 8);
  v45 = *(v287 + 64);
  MEMORY[0x1EEE9AC00](v288);
  v270 = &v256 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v290 = sub_1E65DFBB8();
  v47 = *(*(v290 - 8) + 64);
  v48 = MEMORY[0x1EEE9AC00](v290);
  v291 = &v256 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v301 = &v256 - v50;
  v295 = sub_1E65D9B28();
  v51 = *(*(v295 - 8) + 64);
  v52 = MEMORY[0x1EEE9AC00](v295);
  v54 = &v256 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v302 = &v256 - v55;
  v56 = sub_1E65D7268();
  v315 = *(v56 - 8);
  v316 = v56;
  v57 = *(v315 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v314 = &v256 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1E65D72D8();
  v307 = *(v59 - 8);
  v308 = v59;
  v60 = *(v307 + 64);
  v61 = MEMORY[0x1EEE9AC00](v59);
  v306 = &v256 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v312 = &v256 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v65 = *(*(v64 - 8) + 64);
  v66 = MEMORY[0x1EEE9AC00](v64 - 8);
  v269 = &v256 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x1EEE9AC00](v66);
  v268 = &v256 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v267 = &v256 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v297 = &v256 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v76 = &v256 - v75;
  v77 = MEMORY[0x1EEE9AC00](v74);
  v79 = &v256 - v78;
  MEMORY[0x1EEE9AC00](v77);
  v81 = &v256 - v80;
  v309 = sub_1E65E0398();
  v82 = *(*(v309 - 8) + 64);
  v83 = MEMORY[0x1EEE9AC00](v309);
  v289 = &v256 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = MEMORY[0x1EEE9AC00](v83);
  v87 = &v256 - v86;
  MEMORY[0x1EEE9AC00](v85);
  v89 = &v256 - v88;
  v305 = sub_1E65E01B8();
  v304 = *(v305 - 8);
  v90 = *(v304 + 64);
  v91 = MEMORY[0x1EEE9AC00](v305);
  v296 = &v256 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v91);
  v94 = &v256 - v93;
  v95 = sub_1E65D8F78();
  v96 = *(*(v95 - 8) + 64);
  MEMORY[0x1EEE9AC00](v95);
  v98 = (&v256 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0));
  v320 = v6;
  sub_1E65D9858();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v100 = v302;
        sub_1E61E27D8(v98, v302, MEMORY[0x1E69CC6F0]);
        sub_1E61E2840(v100, v54, MEMORY[0x1E69CC6F0]);
        v101 = swift_getEnumCaseMultiPayload();
        if (!v101)
        {
          v192 = v270;
          (*(v287 + 32))(v270, v54, v288);
          sub_1E65DA158();
          if (v193)
          {
            sub_1E65D7338();
            v194 = v267;
            sub_1E65D72E8();
            v195 = 0;
            v196 = v269;
            v197 = v268;
          }

          else
          {
            v195 = 1;
            v196 = v269;
            v197 = v268;
            v194 = v267;
          }

          v220 = v308;
          v221 = *(v307 + 56);
          v221(v194, v195, 1, v308);
          sub_1E65DA138();
          v316 = v222;
          v223 = sub_1E65DA148();
          sub_1E63C4134(v317, v318, v223, v197);

          v221(v197, 0, 1, v220);
          sub_1E60976FC(v194, v196);
          v102 = v301;
          sub_1E65DFC38();
          sub_1E5DFE50C(v194, &qword_1ED072D90, &qword_1E66040F0);
          (*(v287 + 8))(v192, v288);
          goto LABEL_66;
        }

        v102 = v301;
        if (v101 == 1)
        {
          v103 = v273;
          v104 = v271;
          v105 = v277;
          (*(v273 + 32))(v271, v54, v277);
          v106 = v272;
          sub_1E65DA188();
          sub_1E65DAC38();
          sub_1E65DC2D8();
          sub_1E65DAC78();
          sub_1E65D74C8();

          sub_1E65DFA28();
          (*(v278 + 8))(v106, v280);
          sub_1E65DA198();
          sub_1E61E276C(&qword_1EE2D6600, MEMORY[0x1E699D480]);
          sub_1E65DC438();
          swift_storeEnumTagMultiPayload();
          sub_1E65DA178();
          sub_1E65DFF18();
          (*(v103 + 8))(v104, v105);
LABEL_66:
          swift_storeEnumTagMultiPayload();
          v224 = MEMORY[0x1E699D540];
          sub_1E61E2840(v102, v291, MEMORY[0x1E699D540]);
          sub_1E65D97F8();
          v225 = v289;
          sub_1E61E2840(v102, v289, v224);
          swift_storeEnumTagMultiPayload();
          v311(v225);
          sub_1E61E28A8(v225, MEMORY[0x1E699D6E0]);
          v226 = v292;
          sub_1E65DFE08();
          sub_1E61E28A8(v102, MEMORY[0x1E699D540]);
          sub_1E61E28A8(v302, MEMORY[0x1E69CC6F0]);
          v184 = v319;
          (*(v293 + 32))(v319, v226, v294);
          v191 = sub_1E65DFFB8();
          goto LABEL_67;
        }

        v198 = v285;
        v199 = v283;
        v200 = v286;
        (*(v285 + 32))(v283, v54, v286);
        sub_1E65DA668();
        if (v201)
        {
          sub_1E65D7338();
          sub_1E65D72E8();
          v202 = sub_1E65DA658();
          v317 = v203;
          v318 = v202;
          v204 = v257;
          sub_1E65DA678();
          v205 = sub_1E65D8458();
          v206 = v199;
          v208 = v207;
          v210 = v209;
          v211 = *(v261 + 8);
          v212 = v262;
          v211(v204, v262);
          v322 = v205;
          v323 = v208;
          v324 = v210 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072938, &qword_1E65EC098);
          sub_1E65D7F98();
          sub_1E5F87058(v205, v208, v210 & 1);
          v316 = v321;
          v213 = v258;
          sub_1E65DA678();
          sub_1E65D8448();
          v211(v213, v212);
          v214 = v260;
          sub_1E65DA678();
          sub_1E65D8468();
          v211(v214, v212);
          sub_1E65DF998();
          sub_1E65E0108();
          (*(v285 + 8))(v206, v286);
          goto LABEL_66;
        }

        if (qword_1EE2D7790 != -1)
        {
          swift_once();
        }

        v228 = sub_1E65E3B68();
        __swift_project_value_buffer(v228, qword_1EE2EA2A0);
        v229 = sub_1E65E3B48();
        v230 = sub_1E65E6328();
        if (os_log_type_enabled(v229, v230))
        {
          v231 = swift_slowAlloc();
          *v231 = 0;
          _os_log_impl(&dword_1E5DE9000, v229, v230, "Unable to build BrowseDetailVideoLinkItem - missing title", v231, 2u);
          MEMORY[0x1E694F1C0](v231, -1, -1);
        }

        (*(v198 + 8))(v199, v200);
        v215 = MEMORY[0x1E69CC6F0];
        v216 = v302;
        goto LABEL_73;
      }

      v155 = v300;
      sub_1E61E27D8(v98, v300, MEMORY[0x1E69CCB70]);
      v156 = v299;
      sub_1E61E2840(v155, v299, MEMORY[0x1E69CCB70]);
      v157 = swift_getEnumCaseMultiPayload();
      if (v157 <= 1)
      {
        if (v157)
        {
          v215 = MEMORY[0x1E69CCB70];
          v216 = v155;
LABEL_73:
          sub_1E61E28A8(v216, v215);
          goto LABEL_74;
        }

        sub_1E61E28A8(v155, MEMORY[0x1E69CCB70]);
        v158 = sub_1E65D98D8();
        goto LABEL_48;
      }

      if (v157 == 2)
      {
        sub_1E61E28A8(v155, MEMORY[0x1E69CCB70]);
        v158 = sub_1E65DA528();
LABEL_48:
        (*(*(v158 - 8) + 8))(v156, v158);
        goto LABEL_74;
      }

      v217 = v265;
      v218 = v264;
      v219 = v266;
      (*(v265 + 32))(v264, v156, v266);
      sub_1E65DA9F8();
      sub_1E65DA9E8();
      v184 = v319;
      sub_1E65E0258();
      (*(v217 + 8))(v218, v219);
      sub_1E61E28A8(v155, MEMORY[0x1E69CCB70]);
      v191 = sub_1E65DFFB8();
LABEL_67:
      swift_storeEnumTagMultiPayload();
      return (*(*(v191 - 8) + 56))(v184, 0, 1, v191);
    }

    v130 = *v98;
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
    v131 = v303;
    *(&v256 - 4) = v320;
    *(&v256 - 3) = v131;
    v133 = v317;
    v132 = v318;
    v254 = v317;
    v255 = v318;
    v303 = sub_1E6405450(sub_1E61E274C, (&v256 - 6), v130);

    v134 = sub_1E65D9808();
    v135 = sub_1E634BE38(v134);
    if (v135 == 36)
    {
      v136 = 23;
    }

    else
    {
      v136 = v135;
    }

    LODWORD(v302) = v136;
    LODWORD(v301) = byte_1E65F6E8A[sub_1E65D9828()];
    v137 = sub_1E65D9848();
    v138 = sub_1E634BE38(v137);
    if (v138 == 36)
    {
      v139 = 24;
    }

    else
    {
      v139 = v138;
    }

    LODWORD(v300) = v139;
    v299 = sub_1E65D97F8();
    v298 = v140;
    v141 = sub_1E65D9808();
    v142 = sub_1E634BE38(v141);
    if (v142 == 36)
    {
      v143 = 23;
    }

    else
    {
      v143 = v142;
    }

    *v87 = v143;
    swift_storeEnumTagMultiPayload();
    v311(v87);
    sub_1E61E28A8(v87, MEMORY[0x1E699D6E0]);
    v144 = *(sub_1E65D9818() + 16);

    v145 = MEMORY[0x1E69686E8];
    if (v144)
    {
      v146 = sub_1E65D9818();
      v147 = v312;
      sub_1E63C4134(v133, v132, v146, v312);

      if (qword_1EE2D7258 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v313, qword_1EE2EA238);
      v148 = v314;
      v149 = v315;
      v150 = v316;
      (*(v315 + 104))(v314, *v145, v316);
      sub_1E61E276C(&qword_1EE2D7280, MEMORY[0x1E6968848]);
      v151 = v297;
      v152 = v308;
      sub_1E65D73C8();
      (*(v149 + 8))(v148, v150);
      v153 = v307;
      (*(v307 + 8))(v147, v152);
      v154 = 0;
    }

    else
    {
      v154 = 1;
      v153 = v307;
      v152 = v308;
      v151 = v297;
    }

    (*(v153 + 56))(v151, v154, 1, v152);
    v175 = v153;
    v176 = sub_1E65D9888();
    v177 = v306;
    sub_1E63C4134(v317, v318, v176, v306);

    if (qword_1EE2D7270 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v313, qword_1EE2EA268);
    v178 = *v145;
    v179 = v314;
    v180 = v315;
    v181 = v316;
    (*(v315 + 104))(v314, v178, v316);
    sub_1E61E276C(&qword_1EE2D7280, MEMORY[0x1E6968848]);
    v182 = v312;
    sub_1E65D73C8();
    (*(v180 + 8))(v179, v181);
    (*(v175 + 8))(v177, v152);
    v254 = v151;
    v255 = v182;
    v183 = v296;
    sub_1E65E0188();
    v184 = v319;
    (*(v304 + 32))(v319, v183, v305);
LABEL_57:
    v191 = sub_1E65DFFB8();
    goto LABEL_67;
  }

  v302 = v94;
  if (!EnumCaseMultiPayload)
  {
    v107 = *v98;
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
    v108 = v303;
    *(&v256 - 4) = v320;
    *(&v256 - 3) = v108;
    v110 = v317;
    v109 = v318;
    v254 = v317;
    v255 = v318;
    v303 = sub_1E5F9F7E4(sub_1E61E27B4, (&v256 - 6), v107);

    v111 = sub_1E65D9808();
    v112 = sub_1E634BE38(v111);
    if (v112 == 36)
    {
      v113 = 23;
    }

    else
    {
      v113 = v112;
    }

    LODWORD(v301) = v113;
    LODWORD(v300) = byte_1E65F6E8A[sub_1E65D9828()];
    v114 = sub_1E65D9848();
    v115 = sub_1E634BE38(v114);
    if (v115 == 36)
    {
      v116 = 24;
    }

    else
    {
      v116 = v115;
    }

    LODWORD(v299) = v116;
    v298 = sub_1E65D97F8();
    v297 = v117;
    v118 = sub_1E65D9808();
    v119 = sub_1E634BE38(v118);
    if (v119 == 36)
    {
      v120 = 23;
    }

    else
    {
      v120 = v119;
    }

    *v89 = v120;
    swift_storeEnumTagMultiPayload();
    LODWORD(v311) = (v311)(v89);
    sub_1E61E28A8(v89, MEMORY[0x1E699D6E0]);
    v121 = *(sub_1E65D9818() + 16);

    if (v121)
    {
      v122 = sub_1E65D9818();
      v123 = v312;
      sub_1E63C4134(v110, v109, v122, v312);

      if (qword_1EE2D7258 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v313, qword_1EE2EA238);
      v125 = v314;
      v124 = v315;
      v126 = v316;
      (*(v315 + 104))(v314, *MEMORY[0x1E69686E8], v316);
      sub_1E61E276C(&qword_1EE2D7280, MEMORY[0x1E6968848]);
      v127 = v308;
      sub_1E65D73C8();
      (*(v124 + 8))(v125, v126);
      v128 = v307;
      (*(v307 + 8))(v123, v127);
      v129 = 0;
    }

    else
    {
      v129 = 1;
      v123 = v312;
      v128 = v307;
      v127 = v308;
    }

    (*(v128 + 56))(v81, v129, 1, v127);
    v185 = sub_1E65D9888();
    v186 = v306;
    sub_1E63C4134(v110, v109, v185, v306);

    v187 = v302;
    if (qword_1EE2D7270 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v313, qword_1EE2EA268);
    v189 = v314;
    v188 = v315;
    v190 = v316;
    (*(v315 + 104))(v314, *MEMORY[0x1E69686E8], v316);
    sub_1E61E276C(&qword_1EE2D7280, MEMORY[0x1E6968848]);
    sub_1E65D73C8();
    (*(v188 + 8))(v189, v190);
    (*(v128 + 8))(v186, v127);
    v254 = v81;
    v255 = v123;
    sub_1E65E0188();
    v184 = v319;
    (*(v304 + 32))(v319, v187, v305);
    goto LABEL_57;
  }

  v159 = *v98;
  if (((1 << v159) & 0x3CF) == 0)
  {
    if (v159 == 4)
    {
      v160 = sub_1E65D9838();
      v310 = v161;
      v311 = v160;
      v162 = sub_1E65D9808();
      v163 = sub_1E634BE38(v162);
      if (v163 == 36)
      {
        v164 = 23;
      }

      else
      {
        v164 = v163;
      }

      LODWORD(v309) = v164;
      v305 = sub_1E65D97F8();
      v165 = *(sub_1E65D9818() + 16);

      if (v165)
      {
        v166 = sub_1E65D9818();
        v167 = v312;
        sub_1E63C4134(v317, v318, v166, v312);

        v168 = v79;
        if (qword_1EE2D7258 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v313, qword_1EE2EA238);
        v170 = v314;
        v169 = v315;
        v171 = v316;
        (*(v315 + 104))(v314, *MEMORY[0x1E69686E8], v316);
        sub_1E61E276C(&qword_1EE2D7280, MEMORY[0x1E6968848]);
        v172 = v308;
        sub_1E65D73C8();
        (*(v169 + 8))(v170, v171);
        v173 = v307;
        (*(v307 + 8))(v167, v172);
        v174 = 0;
      }

      else
      {
        v174 = 1;
        v173 = v307;
        v172 = v308;
        v168 = v79;
      }

      (*(v173 + 56))(v168, v174, 1, v172);
      v247 = v173;
      v248 = sub_1E65D9888();
      v249 = v306;
      sub_1E63C4134(v317, v318, v248, v306);

      if (qword_1EE2D7270 == -1)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v233 = v76;
      v234 = sub_1E65D9838();
      v310 = v235;
      v311 = v234;
      v236 = sub_1E65D9808();
      v237 = sub_1E634BE38(v236);
      if (v237 == 36)
      {
        v238 = 23;
      }

      else
      {
        v238 = v237;
      }

      LODWORD(v309) = v238;
      v305 = sub_1E65D97F8();
      v239 = *(sub_1E65D9818() + 16);

      if (v239)
      {
        v240 = sub_1E65D9818();
        v241 = v312;
        sub_1E63C4134(v317, v318, v240, v312);

        if (qword_1EE2D7258 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v313, qword_1EE2EA238);
        v243 = v314;
        v242 = v315;
        v244 = v316;
        (*(v315 + 104))(v314, *MEMORY[0x1E69686E8], v316);
        sub_1E61E276C(&qword_1EE2D7280, MEMORY[0x1E6968848]);
        v172 = v308;
        sub_1E65D73C8();
        (*(v242 + 8))(v243, v244);
        v245 = v307;
        (*(v307 + 8))(v241, v172);
        v246 = 0;
      }

      else
      {
        v246 = 1;
        v245 = v307;
        v172 = v308;
      }

      (*(v245 + 56))(v233, v246, 1, v172);
      v247 = v245;
      v250 = sub_1E65D9888();
      v249 = v306;
      sub_1E63C4134(v317, v318, v250, v306);

      if (qword_1EE2D7270 == -1)
      {
        goto LABEL_87;
      }
    }

    swift_once();
LABEL_87:
    __swift_project_value_buffer(v313, qword_1EE2EA268);
    v252 = v314;
    v251 = v315;
    v253 = v316;
    (*(v315 + 104))(v314, *MEMORY[0x1E69686E8], v316);
    sub_1E61E276C(&qword_1EE2D7280, MEMORY[0x1E6968848]);
    sub_1E65D73C8();
    (*(v251 + 8))(v252, v253);
    (*(v247 + 8))(v249, v172);
    v184 = v319;
    sub_1E65E0068();
    v191 = sub_1E65DFFB8();
    goto LABEL_67;
  }

LABEL_74:
  v232 = sub_1E65DFFB8();
  return (*(*(v232 - 8) + 56))(v319, 1, 1, v232);
}

uint64_t sub_1E61DF1DC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v32[1] = a6;
  v42 = a5;
  v40 = a3;
  v41 = a4;
  v39 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0768B0, &qword_1E65F6E78);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v32 - v9;
  v38 = sub_1E65DFAA8();
  v11 = *(v38 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v38);
  v37 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v35 = v32 - v15;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0768B8, &qword_1E65F6E80);
  v16 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v18 = (v32 - v17);
  result = sub_1E65D97B8();
  v20 = result;
  v21 = *(result + 16);
  if (v21)
  {
    v22 = 0;
    v33 = v11;
    v23 = (v11 + 48);
    v24 = MEMORY[0x1E69E7CC0];
    v34 = a1;
    while (v22 < *(v20 + 16))
    {
      v25 = *(sub_1E65D88D8() - 8);
      v26 = v20 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22;
      v27 = *(v36 + 48);
      *v18 = v22;
      sub_1E61E2840(v26, v18 + v27, MEMORY[0x1E69CB668]);
      sub_1E61DF5C8(v22, v18 + v27, v39, a1, v40, v41, v42, v10);
      sub_1E5DFE50C(v18, &qword_1ED0768B8, &qword_1E65F6E80);
      if ((*v23)(v10, 1, v38) == 1)
      {
        result = sub_1E5DFE50C(v10, &qword_1ED0768B0, &qword_1E65F6E78);
      }

      else
      {
        v28 = MEMORY[0x1E699D4B8];
        v29 = v35;
        sub_1E61E27D8(v10, v35, MEMORY[0x1E699D4B8]);
        sub_1E61E27D8(v29, v37, v28);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1E64F6B2C(0, v24[2] + 1, 1, v24);
        }

        v31 = v24[2];
        v30 = v24[3];
        if (v31 >= v30 >> 1)
        {
          v24 = sub_1E64F6B2C(v30 > 1, v31 + 1, 1, v24);
        }

        v24[2] = v31 + 1;
        result = sub_1E61E27D8(v37, v24 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v31, MEMORY[0x1E699D4B8]);
        a1 = v34;
      }

      if (v21 == ++v22)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    sub_1E65D97A8();
    return sub_1E65DFC98();
  }

  return result;
}

uint64_t sub_1E61DF5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v260 = a6;
  v261 = a7;
  v242 = a5;
  v237 = a4;
  v262 = a3;
  v263 = a8;
  v251 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074528, &unk_1E660F4D0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v249 = &v219 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v248 = &v219 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758C0, &qword_1E65F1FC8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v250 = &v219 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v259 = &v219 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758B8, &qword_1E65F1FC0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v247 = &v219 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758C8, &qword_1E65F1FD0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v258 = &v219 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v246 = &v219 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v236 = &v219 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v233 = &v219 - v33;
  v234 = sub_1E65DAC98();
  v231 = *(v234 - 8);
  v34 = *(v231 + 64);
  MEMORY[0x1EEE9AC00](v234);
  v228 = &v219 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = sub_1E65DFA38();
  v36 = *(*(v235 - 8) + 64);
  MEMORY[0x1EEE9AC00](v235);
  v229 = &v219 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_1E65DA0B8();
  v230 = *(v232 - 8);
  v38 = *(v230 + 64);
  v39 = MEMORY[0x1EEE9AC00](v232);
  v227 = &v219 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v245 = &v219 - v41;
  v226 = sub_1E65D9D58();
  v225 = *(v226 - 8);
  v42 = *(v225 + 64);
  v43 = MEMORY[0x1EEE9AC00](v226);
  v224 = &v219 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v223 = &v219 - v45;
  v240 = sub_1E65D8BB8();
  v46 = *(*(v240 - 8) + 64);
  v47 = MEMORY[0x1EEE9AC00](v240);
  v241 = &v219 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v252 = &v219 - v49;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758D8, &qword_1E65F1FE0);
  v50 = *(*(v244 - 8) + 64);
  v51 = MEMORY[0x1EEE9AC00](v244);
  v243 = &v219 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v257 = &v219 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v55 = *(*(v54 - 8) + 64);
  v56 = MEMORY[0x1EEE9AC00](v54 - 8);
  v255 = &v219 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v254 = &v219 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v256 = &v219 - v61;
  MEMORY[0x1EEE9AC00](v60);
  v253 = &v219 - v62;
  v239 = sub_1E65D9AC8();
  v238 = *(v239 - 1);
  v63 = *(v238 + 64);
  MEMORY[0x1EEE9AC00](v239);
  v65 = &v219 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1E65D8258();
  v67 = *(v66 - 8);
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v70 = &v219 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1E65D9CC8();
  v72 = *(v71 - 8);
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v75 = &v219 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1E65D88D8();
  v77 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76);
  v79 = &v219 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E61E2840(a2, v79, MEMORY[0x1E69CB668]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v67 + 32))(v70, v79, v66);
    v80 = sub_1E65D9808();
    LODWORD(v251) = sub_1E634BE38(v80);
    if (v251 == 36)
    {
      goto LABEL_4;
    }

    v81 = sub_1E65D80C8();
    v237 = v67;
    v82 = v81;
    v84 = v83;
    v266 = v81;
    v267 = v83;
    v262 = v70;
    v86 = v85 & 1;
    v268 = v85 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752A8, &unk_1E660CC10);
    sub_1E65D7F98();
    v67 = v237;
    v70 = v262;
    sub_1E5F87058(v82, v84, v86);
    v87 = MEMORY[0x1E69479A0](v264, v265);
    if (v87 == 9)
    {
LABEL_4:
      (*(v67 + 8))(v70, v66);
LABEL_7:
      v93 = sub_1E65DFAA8();
      return (*(*(v93 - 8) + 56))(v263, 1, 1, v93);
    }

    LODWORD(v222) = v87;
    v100 = sub_1E65D9AA8();
    v102 = v101;
    MEMORY[0x1E6941490]();
    v103 = sub_1E65D9AA8();
    v105 = v104;
    (*(v238 + 8))(v65, v239);
    if (v100 == v103 && v102 == v105)
    {
    }

    else
    {
      v121 = sub_1E65E6C18();

      if ((v121 & 1) == 0)
      {
        v122 = sub_1E65D8198();
        v123 = sub_1E65D9AA8();
        v125 = sub_1E637CA94(v123, v124, v122);

        if (v125)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E70, &unk_1E65ECC20);
          v126 = *(sub_1E65DADF8() - 8);
          v127 = *(v126 + 72);
          v128 = (*(v126 + 80) + 32) & ~*(v126 + 80);
          v129 = swift_allocObject();
          *(v129 + 16) = xmmword_1E65EB9E0;
          v130 = (v129 + v128);
          *v130 = sub_1E65D9AA8();
          v130[1] = v131;
          swift_storeEnumTagMultiPayload();
          *(v130 + v127) = 1;
          swift_storeEnumTagMultiPayload();
          v132 = sub_1E65D80A8();
          v266 = v129;
          sub_1E5FA9E2C(v132);
          v133 = v266;
LABEL_28:

          v134 = *(sub_1E65D8058() + 16);

          if (v134)
          {
            v135 = sub_1E65D8058();
            v136 = v253;
            sub_1E63C4134(v260, v261, v135, v253);

            v137 = 0;
          }

          else
          {
            v137 = 1;
            v136 = v253;
          }

          v138 = sub_1E65D72D8();
          v139 = *(v138 - 8);
          v140 = *(v139 + 56);
          v242 = v139 + 56;
          v140(v136, v137, 1, v138);
          v141 = v252;
          sub_1E65D8128();
          v142 = v141;
          v143 = v241;
          sub_1E61E2840(v142, v241, MEMORY[0x1E69CB950]);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v240 = v138;
          v239 = v140;
          if (EnumCaseMultiPayload == 1)
          {
            v145 = v230;
            v146 = v245;
            v147 = v232;
            (*(v230 + 32))(v245, v143, v232);
            v148 = *(v145 + 16);
            v241 = v133;
            v149 = v227;
            v148(v227, v146, v147);
            v150 = v228;
            sub_1E65DA098();
            sub_1E65DAC38();
            sub_1E65DC2D8();
            sub_1E65DAC78();
            sub_1E65D74C8();

            sub_1E65DFA28();
            v151 = v150;
            v140 = v239;
            (*(v231 + 8))(v151, v234);
            sub_1E65DA0A8();
            sub_1E61E276C(&qword_1EE2D6600, MEMORY[0x1E699D480]);
            v152 = v243;
            sub_1E65DC438();
            v153 = *(v145 + 8);
            v154 = v149;
            v133 = v241;
            v153(v154, v147);
            v155 = v147;
            v138 = v240;
            v153(v245, v155);
          }

          else
          {
            v156 = v225;
            v157 = v223;
            v158 = v143;
            v159 = v226;
            (*(v225 + 32))(v223, v158, v226);
            v160 = v224;
            (*(v156 + 16))(v224, v157, v159);
            v152 = v243;
            sub_1E613467C(v160, v243);
            (*(v156 + 8))(v157, v159);
          }

          sub_1E61E28A8(v252, MEMORY[0x1E69CB950]);
          swift_storeEnumTagMultiPayload();
          sub_1E6128158(v152, v257);
          v161 = sub_1E63B0584();
          v162 = sub_1E61DCAE8(v161);

          v252 = sub_1E600C07C(v162);

          v163 = sub_1E65D8108();
          if (v164 == -1)
          {
            v165 = 9;
          }

          else
          {
            v266 = v163;
            LOBYTE(v267) = v164 & 1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CE0, &qword_1E65EECC8);
            sub_1E65D7FB8();
            v165 = v264;
          }

          LODWORD(v245) = v165;
          v166 = v246;
          sub_1E65D80E8();
          v167 = sub_1E65D76A8();
          v168 = 1;
          LODWORD(v244) = (*(*(v167 - 8) + 48))(v166, 1, v167);
          sub_1E5DFE50C(v166, &qword_1ED0752D8, &qword_1E660CC30);
          v169 = *(sub_1E65D8068() + 16);

          v220 = v66;
          if (v169)
          {
            v170 = sub_1E65D8068();
            v171 = v256;
            sub_1E63C4134(v260, v261, v170, v256);

            v168 = 0;
          }

          else
          {
            v171 = v256;
          }

          v140(v171, v168, 1, v138);
          v172 = sub_1E65D81E8();
          if (v174 == -1)
          {
            LODWORD(v246) = 4;
          }

          else
          {
            v175 = v174;
            v176 = v172;
            v177 = v173;
            LODWORD(v246) = sub_1E61A8FC0();
            sub_1E5F87158(v176, v177, v175);
          }

          v243 = sub_1E65D8188();
          v178 = sub_1E65DFB58();
          v180 = v179;
          v181 = sub_1E65D8078();
          v183 = v182;
          v184 = sub_1E65D81B8();
          if (v185)
          {
            v186 = v184;
          }

          else
          {
            v186 = 0;
          }

          if (v185)
          {
            v187 = v185;
          }

          else
          {
            v187 = 0xE000000000000000;
          }

          v266 = v181;
          v267 = v183;

          MEMORY[0x1E694D7C0](v186, v187);

          MEMORY[0x1E694D7C0](v178, v180);
          swift_bridgeObjectRelease_n();

          v241 = v266;
          v238 = v267;
          v188 = v247;
          sub_1E65D8208();
          sub_1E6127B6C(v188, v258);
          v189 = sub_1E65D8238();
          if (v191 == -1)
          {
            v195 = 4;
          }

          else
          {
            v266 = v189;
            v267 = v190;
            v268 = v191 & 1;
            v192 = v189;
            v193 = v190;
            v194 = v191;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758E0, &qword_1E65F1FE8);
            sub_1E65D7FB8();
            sub_1E5F87158(v192, v193, v194);
            v195 = v264;
          }

          LODWORD(v247) = v195;
          v196 = v248;
          v248 = sub_1E65D8088();
          v236 = v197;
          v235 = sub_1E65D8078();
          v234 = v198;
          v233 = sub_1E65D81D8();
          v232 = v199;
          v200 = *(v133 + 16);

          v201 = v240;
          if (v200)
          {
            v202 = v254;
            sub_1E63C4134(v260, v261, v133, v254);
            v203 = 0;
          }

          else
          {
            v203 = 1;
            v202 = v254;
          }

          v140(v202, v203, 1, v201);
          sub_1E65D8178();
          v204 = sub_1E65D83D8();
          v205 = *(v204 - 8);
          v231 = *(v205 + 48);
          if ((v231)(v196, 1, v204) == 1)
          {
            sub_1E5DFE50C(v196, &qword_1ED074528, &unk_1E660F4D0);
            v206 = 1;
            v207 = v259;
          }

          else
          {
            v207 = v259;
            sub_1E608F7E4();
            (*(v205 + 8))(v196, v204);
            v206 = 0;
          }

          v208 = sub_1E65DFD08();
          v209 = *(*(v208 - 8) + 56);
          v210 = 1;
          v209(v207, v206, 1, v208);
          v211 = *(sub_1E65D8248() + 16);

          if (v211)
          {
            v212 = sub_1E65D8248();
            v213 = v255;
            sub_1E63C4134(v260, v261, v212, v255);

            v210 = 0;
          }

          else
          {
            v213 = v255;
          }

          v239(v213, v210, 1, v240);
          v214 = v249;
          sub_1E65D8158();
          if ((v231)(v214, 1, v204) == 1)
          {
            sub_1E5DFE50C(v214, &qword_1ED074528, &unk_1E660F4D0);
            v215 = 1;
            v216 = v250;
          }

          else
          {
            v216 = v250;
            sub_1E608F7E4();
            (*(v205 + 8))(v214, v204);
            v215 = 0;
          }

          v217 = v220;
          v209(v216, v215, 1, v208);
          v218 = v263;
          sub_1E65DF858();
          (*(v237 + 8))(v262, v217);
          v118 = sub_1E65DFAA8();
          swift_storeEnumTagMultiPayload();
          v119 = *(*(v118 - 8) + 56);
          v120 = v218;
          return v119(v120, 0, 1, v118);
        }
      }
    }

    v133 = sub_1E65D80A8();
    goto LABEL_28;
  }

  (*(v72 + 32))(v75, v79, v71);
  v88 = sub_1E65D9CA8();
  v90 = v89;
  v266 = v88;
  v267 = v89;
  v92 = v91 & 1;
  v268 = v91 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752A8, &unk_1E660CC10);
  sub_1E65D7F98();
  sub_1E5F87058(v88, v90, v92);
  if (MEMORY[0x1E69479A0](v264, v265) == 9)
  {
    (*(v72 + 8))(v75, v71);
    goto LABEL_7;
  }

  v95 = sub_1E65D9808();
  v96 = sub_1E634BE38(v95);
  if (v96 == 36)
  {
    v97 = 23;
  }

  else
  {
    v97 = v96;
  }

  LODWORD(v261) = v97;
  v98 = sub_1E65D9CB8();
  v259 = v99;
  v260 = v98;
  v222 = v71;
  v221 = v72;
  if (v251)
  {
    v258 = 0;
  }

  else
  {
    sub_1E65D97A8();
    v258 = v106;
  }

  sub_1E65D9808();
  v107 = sub_1E65D8E48();
  v109 = v108;
  v110 = sub_1E65D9C98();
  v112 = v111;
  v113 = sub_1E65D9CB8();
  if (v114)
  {
    v115 = v113;
  }

  else
  {
    v115 = 0;
  }

  if (v114)
  {
    v116 = v114;
  }

  else
  {
    v116 = 0xE000000000000000;
  }

  v266 = v110;
  v267 = v112;

  MEMORY[0x1E694D7C0](v115, v116);

  MEMORY[0x1E694D7C0](v107, v109);
  swift_bridgeObjectRelease_n();

  sub_1E65D9C98();
  v117 = v263;
  sub_1E65DFD48();
  (*(v221 + 8))(v75, v222);
  v118 = sub_1E65DFAA8();
  swift_storeEnumTagMultiPayload();
  v119 = *(*(v118 - 8) + 56);
  v120 = v117;
  return v119(v120, 0, 1, v118);
}

uint64_t sub_1E61E0EB0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v246 = a4;
  v247 = a5;
  v229 = a3;
  v249 = a1;
  v250 = a2;
  v251 = a6;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074528, &unk_1E660F4D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v237 = v209 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v236 = v209 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758C0, &qword_1E65F1FC8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v238 = v209 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v245 = v209 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758B8, &qword_1E65F1FC0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v234 = v209 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758C8, &qword_1E65F1FD0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v244 = v209 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v233 = v209 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v225 = v209 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v223 = v209 - v30;
  v222 = sub_1E65DAC98();
  v220 = *(v222 - 8);
  v31 = *(v220 + 64);
  MEMORY[0x1EEE9AC00](v222);
  v217 = v209 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = sub_1E65DFA38();
  v33 = *(*(v224 - 8) + 64);
  MEMORY[0x1EEE9AC00](v224);
  v218 = v209 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = sub_1E65DA0B8();
  v219 = *(v221 - 8);
  v35 = *(v219 + 64);
  v36 = MEMORY[0x1EEE9AC00](v221);
  v216 = v209 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v232 = v209 - v38;
  v215 = sub_1E65D9D58();
  v214 = *(v215 - 8);
  v39 = *(v214 + 64);
  v40 = MEMORY[0x1EEE9AC00](v215);
  v213 = v209 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v212 = v209 - v42;
  v227 = sub_1E65D8BB8();
  v43 = *(*(v227 - 8) + 64);
  v44 = MEMORY[0x1EEE9AC00](v227);
  v228 = v209 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v239 = v209 - v46;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758D8, &qword_1E65F1FE0);
  v47 = *(*(v231 - 8) + 64);
  v48 = MEMORY[0x1EEE9AC00](v231);
  v230 = v209 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v243 = v209 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v52 = *(*(v51 - 8) + 64);
  v53 = MEMORY[0x1EEE9AC00](v51 - 8);
  v235 = v209 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v241 = v209 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v242 = v209 - v58;
  MEMORY[0x1EEE9AC00](v57);
  v240 = v209 - v59;
  v60 = sub_1E65D9AC8();
  v226 = *(v60 - 8);
  v61 = *(v226 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v63 = v209 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1E65D8258();
  v65 = *(v64 - 8);
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v68 = v209 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1E65D9CC8();
  v248 = *(v69 - 8);
  v70 = *(v248 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v72 = v209 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1E65D88D8();
  v74 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v76 = v209 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E61E2840(v249, v76, MEMORY[0x1E69CB668]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v65 + 32))(v68, v76, v64);
    v77 = sub_1E65D9808();
    LODWORD(v249) = sub_1E634BE38(v77);
    if (v249 == 36)
    {
      goto LABEL_4;
    }

    v78 = sub_1E65D80C8();
    v248 = v65;
    v79 = v78;
    v250 = v68;
    v81 = v80;
    v254 = v78;
    v255 = v80;
    v83 = v82 & 1;
    v256 = v82 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752A8, &unk_1E660CC10);
    sub_1E65D7F98();
    v65 = v248;
    v68 = v250;
    sub_1E5F87058(v79, v81, v83);
    v84 = MEMORY[0x1E69479A0](v252, v253);
    if (v84 == 9)
    {
LABEL_4:
      (*(v65 + 8))(v68, v64);
LABEL_7:
      v91 = sub_1E65DFAA8();
      return (*(*(v91 - 8) + 56))(v251, 1, 1, v91);
    }

    v209[3] = v84;
    v109 = sub_1E65D9AA8();
    v111 = v110;
    MEMORY[0x1E6941490]();
    v112 = sub_1E65D9AA8();
    v114 = v113;
    (*(v226 + 8))(v63, v60);
    if (v109 == v112 && v111 == v114)
    {
    }

    else
    {
      v115 = sub_1E65E6C18();

      if ((v115 & 1) == 0)
      {
        v116 = sub_1E65D8198();
        v117 = sub_1E65D9AA8();
        v119 = sub_1E637CA94(v117, v118, v116);

        if (v119)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E70, &unk_1E65ECC20);
          v120 = *(sub_1E65DADF8() - 8);
          v121 = *(v120 + 72);
          v122 = (*(v120 + 80) + 32) & ~*(v120 + 80);
          v123 = swift_allocObject();
          *(v123 + 16) = xmmword_1E65EB9E0;
          v124 = (v123 + v122);
          *v124 = sub_1E65D9AA8();
          v124[1] = v125;
          swift_storeEnumTagMultiPayload();
          *(v124 + v121) = 1;
          swift_storeEnumTagMultiPayload();
          v126 = sub_1E65D80A8();
          v254 = v123;
          sub_1E5FA9E2C(v126);
          v127 = v254;
LABEL_22:

          v128 = *(sub_1E65D8058() + 16);

          if (v128)
          {
            v129 = sub_1E65D8058();
            v130 = v240;
            sub_1E63C4134(v246, v247, v129, v240);

            v131 = 0;
          }

          else
          {
            v131 = 1;
            v130 = v240;
          }

          v132 = sub_1E65D72D8();
          v133 = *(v132 - 8);
          v229 = *(v133 + 56);
          v226 = v133 + 56;
          v229(v130, v131, 1, v132);
          v134 = v239;
          sub_1E65D8128();
          v135 = v134;
          v136 = v228;
          sub_1E61E2840(v135, v228, MEMORY[0x1E69CB950]);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v210 = v64;
          v211 = v132;
          if (EnumCaseMultiPayload == 1)
          {
            v138 = v219;
            v139 = v232;
            v140 = v221;
            (*(v219 + 32))(v232, v136, v221);
            v141 = *(v138 + 16);
            v228 = v127;
            v142 = v216;
            v141(v216, v139, v140);
            v143 = v217;
            sub_1E65DA098();
            sub_1E65DAC38();
            sub_1E65DC2D8();
            sub_1E65DAC78();
            sub_1E65D74C8();

            sub_1E65DFA28();
            (*(v220 + 8))(v143, v222);
            sub_1E65DA0A8();
            sub_1E61E276C(&qword_1EE2D6600, MEMORY[0x1E699D480]);
            v144 = v230;
            v132 = v211;
            sub_1E65DC438();
            v145 = *(v138 + 8);
            v146 = v142;
            v127 = v228;
            v145(v146, v140);
            v145(v232, v140);
          }

          else
          {
            v147 = v214;
            v148 = v212;
            v149 = v136;
            v150 = v215;
            (*(v214 + 32))(v212, v149, v215);
            v151 = v213;
            (*(v147 + 16))(v213, v148, v150);
            v144 = v230;
            sub_1E613467C(v151, v230);
            (*(v147 + 8))(v148, v150);
          }

          sub_1E61E28A8(v239, MEMORY[0x1E69CB950]);
          swift_storeEnumTagMultiPayload();
          sub_1E6128158(v144, v243);
          v152 = sub_1E63B0584();
          v153 = v257;
          v154 = sub_1E61DCAE8(v152);
          v257 = v153;

          v239 = sub_1E600C07C(v154);

          v155 = sub_1E65D8108();
          if (v156 == -1)
          {
            v157 = 9;
          }

          else
          {
            v254 = v155;
            LOBYTE(v255) = v156 & 1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CE0, &qword_1E65EECC8);
            sub_1E65D7FB8();
            v157 = v252;
          }

          LODWORD(v232) = v157;
          v158 = v233;
          sub_1E65D80E8();
          v159 = sub_1E65D76A8();
          v160 = 1;
          LODWORD(v231) = (*(*(v159 - 8) + 48))(v158, 1, v159);
          sub_1E5DFE50C(v158, &qword_1ED0752D8, &qword_1E660CC30);
          v161 = *(sub_1E65D8068() + 16);

          if (v161)
          {
            v162 = sub_1E65D8068();
            v163 = v242;
            sub_1E63C4134(v246, v247, v162, v242);

            v160 = 0;
          }

          else
          {
            v163 = v242;
          }

          v229(v163, v160, 1, v132);
          v164 = sub_1E65D81E8();
          if (v166 == -1)
          {
            LODWORD(v233) = 4;
          }

          else
          {
            v167 = v166;
            v168 = v164;
            v169 = v165;
            LODWORD(v233) = sub_1E61A8FC0();
            sub_1E5F87158(v168, v169, v167);
          }

          v230 = sub_1E65D8188();
          v170 = sub_1E65DFB58();
          v172 = v171;
          v173 = sub_1E65D8078();
          v175 = v174;
          v176 = sub_1E65D81B8();
          if (v177)
          {
            v178 = v176;
          }

          else
          {
            v178 = 0;
          }

          if (v177)
          {
            v179 = v177;
          }

          else
          {
            v179 = 0xE000000000000000;
          }

          v254 = v173;
          v255 = v175;

          MEMORY[0x1E694D7C0](v178, v179);

          MEMORY[0x1E694D7C0](v170, v172);
          swift_bridgeObjectRelease_n();

          v228 = v254;
          v227 = v255;
          v180 = v234;
          sub_1E65D8208();
          sub_1E6127B6C(v180, v244);
          v181 = sub_1E65D8238();
          if (v183 == -1)
          {
            v187 = 4;
          }

          else
          {
            v254 = v181;
            v255 = v182;
            v256 = v183 & 1;
            v184 = v181;
            v185 = v182;
            v186 = v183;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758E0, &qword_1E65F1FE8);
            sub_1E65D7FB8();
            sub_1E5F87158(v184, v185, v186);
            v187 = v252;
          }

          LODWORD(v234) = v187;
          v188 = v245;
          v189 = v236;
          v190 = v211;
          v236 = sub_1E65D8088();
          v225 = v191;
          v224 = sub_1E65D8078();
          v223 = v192;
          v222 = sub_1E65D81D8();
          v221 = v193;
          v194 = *(v127 + 16);

          if (v194)
          {
            v195 = v241;
            sub_1E63C4134(v246, v247, v127, v241);
            v196 = 0;
          }

          else
          {
            v196 = 1;
            v195 = v241;
          }

          v229(v195, v196, 1, v190);
          sub_1E65D8178();
          v197 = sub_1E65D83D8();
          v198 = *(v197 - 8);
          v220 = *(v198 + 48);
          if ((v220)(v189, 1, v197) == 1)
          {
            sub_1E5DFE50C(v189, &qword_1ED074528, &unk_1E660F4D0);
            v199 = 1;
          }

          else
          {
            sub_1E608F7E4();
            (*(v198 + 8))(v189, v197);
            v199 = 0;
          }

          v200 = sub_1E65DFD08();
          v201 = 1;
          v219 = *(*(v200 - 8) + 56);
          (v219)(v188, v199, 1, v200);
          v202 = *(sub_1E65D8248() + 16);

          if (v202)
          {
            v203 = sub_1E65D8248();
            v204 = v235;
            sub_1E63C4134(v246, v247, v203, v235);

            v201 = 0;
          }

          else
          {
            v204 = v235;
          }

          v229(v204, v201, 1, v211);
          v205 = v237;
          sub_1E65D8158();
          if ((v220)(v205, 1, v197) == 1)
          {
            sub_1E5DFE50C(v205, &qword_1ED074528, &unk_1E660F4D0);
            v206 = 1;
            v207 = v238;
          }

          else
          {
            v207 = v238;
            sub_1E608F7E4();
            (*(v198 + 8))(v205, v197);
            v206 = 0;
          }

          (v219)(v207, v206, 1, v200);
          v208 = v251;
          sub_1E65DF858();
          (*(v248 + 8))(v250, v210);
          v106 = sub_1E65DFAA8();
          swift_storeEnumTagMultiPayload();
          v107 = *(*(v106 - 8) + 56);
          v108 = v208;
          return v107(v108, 0, 1, v106);
        }
      }
    }

    v127 = sub_1E65D80A8();
    goto LABEL_22;
  }

  v85 = v69;
  (*(v248 + 32))(v72, v76, v69);
  v86 = sub_1E65D9CA8();
  v88 = v87;
  v254 = v86;
  v255 = v87;
  v90 = v89 & 1;
  v256 = v89 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752A8, &unk_1E660CC10);
  sub_1E65D7F98();
  sub_1E5F87058(v86, v88, v90);
  if (MEMORY[0x1E69479A0](v252, v253) == 9)
  {
    (*(v248 + 8))(v72, v69);
    goto LABEL_7;
  }

  v93 = sub_1E65D9808();
  sub_1E634BE38(v93);
  v94 = sub_1E65D9CB8();
  v249 = v95;
  v250 = v94;
  v247 = sub_1E65DFB58();
  v97 = v96;
  v98 = sub_1E65D9C98();
  v100 = v99;
  v101 = sub_1E65D9CB8();
  if (v102)
  {
    v103 = v101;
  }

  else
  {
    v103 = 0;
  }

  if (v102)
  {
    v104 = v102;
  }

  else
  {
    v104 = 0xE000000000000000;
  }

  v254 = v98;
  v255 = v100;

  MEMORY[0x1E694D7C0](v103, v104);

  MEMORY[0x1E694D7C0](v247, v97);
  swift_bridgeObjectRelease_n();

  sub_1E65D9C98();
  v105 = v251;
  sub_1E65DFD48();
  (*(v248 + 8))(v72, v85);
  v106 = sub_1E65DFAA8();
  swift_storeEnumTagMultiPayload();
  v107 = *(*(v106 - 8) + 56);
  v108 = v105;
  return v107(v108, 0, 1, v106);
}