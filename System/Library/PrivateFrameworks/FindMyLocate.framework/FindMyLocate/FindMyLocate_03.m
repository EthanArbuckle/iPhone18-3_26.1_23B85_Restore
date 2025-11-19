uint64_t sub_1B7FFB848()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B7FFB890, v0, 0);
}

uint64_t sub_1B7FFB890()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E699C830] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1B7FFA350;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v5, 0xD000000000000014, 0x80000001B80CC580, sub_1B8011CF8, v3, v6);
}

uint64_t sub_1B7FFB97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B7FFB9A0, 0, 0);
}

uint64_t sub_1B7FFB9A0()
{
  v1 = v0[11];
  v2 = *(MEMORY[0x1E699C838] + 4);

  v3 = swift_task_alloc();
  v0[13] = v3;
  v4 = _s20FriendshipConnectionCMa();
  v5 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa);
  *v3 = v0;
  v3[1] = sub_1B7FFBAAC;
  v7 = v0[10];
  v6 = v0[11];

  return MEMORY[0x1EEE04428](v0 + 8, sub_1B8011C68, v6, v4, v5);
}

uint64_t sub_1B7FFBAAC()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1B7FFBCEC;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_1B7FFBBC8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B7FFBBC8()
{
  v1 = v0[8];
  v2 = swift_allocObject();
  *(v2 + 16) = *(v0 + 11);
  v0[6] = sub_1B800FC08;
  v0[7] = v2;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FCE114;
  v0[5] = &block_descriptor_47;
  v3 = _Block_copy(v0 + 2);
  v4 = v0[7];

  [v1 resetTokenDatabaseWithCompletion_];
  _Block_release(v3);
  swift_unknownObjectRelease();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1B7FFBCEC()
{
  v17 = v0;
  v1 = v0[11];

  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDE78);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[14];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0xD000000000000014, 0x80000001B80CC580, &v16);
    *(v8 + 12) = 2114;
    v11 = sub_1B80C8CFC();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "Failed to create proxy in %{public}s: %{public}@", v8, 0x16u);
    sub_1B7FB86D4(v9, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CB8970](v10, -1, -1);
    MEMORY[0x1B8CB8970](v8, -1, -1);
  }

  v12 = v0[14];
  v13 = v0[11];
  v0[9] = v12;
  sub_1B80C8ACC();

  v14 = v0[1];

  return v14();
}

void sub_1B7FFBEF4(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v3 = sub_1B80C900C();
    __swift_project_value_buffer(v3, qword_1ED8DDE78);
    v4 = a1;
    v5 = sub_1B80C8FEC();
    v6 = sub_1B80C93FC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136446466;
      *(v7 + 4) = sub_1B7FB84FC(0xD000000000000014, 0x80000001B80CC580, &v18);
      *(v7 + 12) = 2082;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v10 = sub_1B80C90EC();
      v12 = sub_1B7FB84FC(v10, v11, &v18);

      *(v7 + 14) = v12;
      _os_log_impl(&dword_1B7FB5000, v5, v6, "%{public}s error %{public}s!", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v8, -1, -1);
      MEMORY[0x1B8CB8970](v7, -1, -1);
    }

    v18 = a1;
    sub_1B80C8ACC();
  }

  else
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v13 = sub_1B80C900C();
    __swift_project_value_buffer(v13, qword_1ED8DDE78);
    v14 = sub_1B80C8FEC();
    v15 = sub_1B80C941C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_1B7FB84FC(0xD000000000000014, 0x80000001B80CC580, &v18);
      _os_log_impl(&dword_1B7FB5000, v14, v15, "%{public}s succeeded!", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1B8CB8970](v17, -1, -1);
      MEMORY[0x1B8CB8970](v16, -1, -1);
    }

    sub_1B80C8AEC();
  }
}

uint64_t sub_1B7FFC1EC(_OWORD *a1)
{
  *(v2 + 192) = v1;
  *(v2 + 200) = *v1;
  v3 = a1[9];
  *(v2 + 144) = a1[8];
  *(v2 + 160) = v3;
  *(v2 + 176) = a1[10];
  v4 = a1[5];
  *(v2 + 80) = a1[4];
  *(v2 + 96) = v4;
  v5 = a1[7];
  *(v2 + 112) = a1[6];
  *(v2 + 128) = v5;
  v6 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v6;
  v7 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v7;
  return MEMORY[0x1EEE6DFA0](sub_1B7FFC264, v1, 0);
}

uint64_t sub_1B7FFC264()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = swift_task_alloc();
  v0[26] = v3;
  v3[2] = v2;
  v3[3] = v0 + 2;
  v3[4] = v1;
  v4 = *(MEMORY[0x1E699C830] + 4);
  v5 = swift_task_alloc();
  v0[27] = v5;
  *v5 = v0;
  v5[1] = sub_1B7FFC360;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v5, 0xD000000000000015, 0x80000001B80CC560, sub_1B8011C78, v3, v6);
}

uint64_t sub_1B7FFC360()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v9 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = *(v2 + 192);
    v5 = sub_1B7FFC488;
  }

  else
  {
    v6 = *(v2 + 208);
    v7 = *(v2 + 192);

    v5 = sub_1B7FFAF5C;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B7FFC488()
{
  v1 = v0[26];

  v2 = v0[1];
  v3 = v0[28];

  return v2();
}

uint64_t sub_1B7FFC4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[34] = a6;
  v7[35] = a7;
  v7[32] = a4;
  v7[33] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B7FFC510, 0, 0);
}

uint64_t sub_1B7FFC510()
{
  v1 = v0[33];
  v2 = *(MEMORY[0x1E699C838] + 4);

  v3 = swift_task_alloc();
  v0[36] = v3;
  v4 = _s20FriendshipConnectionCMa();
  v5 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa);
  *v3 = v0;
  v3[1] = sub_1B7FFC61C;
  v7 = v0[32];
  v6 = v0[33];

  return MEMORY[0x1EEE04428](v0 + 30, sub_1B8011C68, v6, v4, v5);
}

uint64_t sub_1B7FFC61C()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v7 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v4 = sub_1B7FFCAAC;
  }

  else
  {
    v5 = *(v2 + 264);

    v4 = sub_1B7FFC738;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B7FFC738()
{
  v37 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 272);
  v3 = *(v0 + 240);
  v4 = sub_1B80C8CEC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1B80C8CDC();
  v8 = v2[1];
  v7 = v2[2];
  *(v0 + 16) = *v2;
  *(v0 + 32) = v8;
  *(v0 + 48) = v7;
  v9 = v2[6];
  v11 = v2[3];
  v10 = v2[4];
  *(v0 + 96) = v2[5];
  *(v0 + 112) = v9;
  *(v0 + 64) = v11;
  *(v0 + 80) = v10;
  v12 = v2[10];
  v14 = v2[7];
  v13 = v2[8];
  *(v0 + 160) = v2[9];
  *(v0 + 176) = v12;
  *(v0 + 128) = v14;
  *(v0 + 144) = v13;
  sub_1B7FDC224();
  v15 = sub_1B80C8CCC();
  if (v1)
  {

    swift_unknownObjectRelease();
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v17 = sub_1B80C900C();
    __swift_project_value_buffer(v17, qword_1ED8DDE78);
    v18 = v1;
    v19 = sub_1B80C8FEC();
    v20 = sub_1B80C93FC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v36 = v23;
      *v21 = 136446466;
      *(v21 + 4) = sub_1B7FB84FC(0xD000000000000015, 0x80000001B80CC560, &v36);
      *(v21 + 12) = 2114;
      v24 = sub_1B80C8CFC();
      *(v21 + 14) = v24;
      *v22 = v24;
      _os_log_impl(&dword_1B7FB5000, v19, v20, "Failed to create proxy in %{public}s: %{public}@", v21, 0x16u);
      sub_1B7FB86D4(v22, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1B8CB8970](v23, -1, -1);
      MEMORY[0x1B8CB8970](v21, -1, -1);
    }

    v25 = *(v0 + 264);
    *(v0 + 248) = v1;
    sub_1B80C8ACC();
  }

  else
  {
    v26 = *(v0 + 280);
    v27 = *(v0 + 264);
    v28 = v15;
    v29 = v16;

    v30 = sub_1B80C8D1C();
    v31 = swift_allocObject();
    *(v31 + 16) = v27;
    *(v31 + 24) = v26;
    *(v0 + 224) = sub_1B800FB00;
    *(v0 + 232) = v31;
    *(v0 + 192) = MEMORY[0x1E69E9820];
    *(v0 + 200) = 1107296256;
    *(v0 + 208) = sub_1B7FCE114;
    *(v0 + 216) = &block_descriptor_34;
    v32 = _Block_copy((v0 + 192));
    v33 = *(v0 + 232);

    [v3 removePeerTokenWithHandle:v30 completion:v32];
    _Block_release(v32);

    sub_1B7FC3CCC(v28, v29);
    swift_unknownObjectRelease();
  }

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1B7FFCAAC()
{
  v15 = v0;
  v1 = v0[33];

  v2 = v0[37];
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDE78);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1B7FB84FC(0xD000000000000015, 0x80000001B80CC560, &v14);
    *(v7 + 12) = 2114;
    v10 = sub_1B80C8CFC();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "Failed to create proxy in %{public}s: %{public}@", v7, 0x16u);
    sub_1B7FB86D4(v8, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    MEMORY[0x1B8CB8970](v7, -1, -1);
  }

  v11 = v0[33];
  v0[31] = v2;
  sub_1B80C8ACC();

  v12 = v0[1];

  return v12();
}

void sub_1B7FFCCAC(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v3 = sub_1B80C900C();
    __swift_project_value_buffer(v3, qword_1ED8DDE78);
    v4 = a1;
    v5 = sub_1B80C8FEC();
    v6 = sub_1B80C93FC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136446466;
      *(v7 + 4) = sub_1B7FB84FC(0xD000000000000015, 0x80000001B80CC560, &v18);
      *(v7 + 12) = 2082;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v10 = sub_1B80C90EC();
      v12 = sub_1B7FB84FC(v10, v11, &v18);

      *(v7 + 14) = v12;
      _os_log_impl(&dword_1B7FB5000, v5, v6, "%{public}s error %{public}s!", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v8, -1, -1);
      MEMORY[0x1B8CB8970](v7, -1, -1);
    }

    v18 = a1;
    sub_1B80C8ACC();
  }

  else
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v13 = sub_1B80C900C();
    __swift_project_value_buffer(v13, qword_1ED8DDE78);
    v14 = sub_1B80C8FEC();
    v15 = sub_1B80C941C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_1B7FB84FC(0xD000000000000015, 0x80000001B80CC560, &v18);
      _os_log_impl(&dword_1B7FB5000, v14, v15, "%{public}s succeeded!", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1B8CB8970](v17, -1, -1);
      MEMORY[0x1B8CB8970](v16, -1, -1);
    }

    sub_1B80C8AEC();
  }
}

uint64_t sub_1B7FFCFA4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 56) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B7FFCFF0, v1, 0);
}

uint64_t sub_1B7FFCFF0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;
  v5 = *(MEMORY[0x1E699C830] + 4);
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_1B7FFA350;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v6, 0xD000000000000019, 0x80000001B80CC540, sub_1B8011C74, v4, v7);
}

uint64_t sub_1B7FFD0F0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - v10;
  v12 = sub_1B80C92CC();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = a2;
  *(v13 + 40) = a1;
  *(v13 + 48) = a3;
  *(v13 + 56) = a4;

  sub_1B80A1D3C(0, 0, v11, &unk_1B80D2988, v13);
}

uint64_t sub_1B7FFD220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 88) = a5;
  *(v7 + 96) = a7;
  *(v7 + 120) = a6;
  *(v7 + 80) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B7FFD248, 0, 0);
}

uint64_t sub_1B7FFD248()
{
  v1 = v0[11];
  v2 = *(MEMORY[0x1E699C838] + 4);

  v3 = swift_task_alloc();
  v0[13] = v3;
  v4 = _s20FriendshipConnectionCMa();
  v5 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa);
  *v3 = v0;
  v3[1] = sub_1B7FFD354;
  v7 = v0[10];
  v6 = v0[11];

  return MEMORY[0x1EEE04428](v0 + 8, sub_1B8011C68, v6, v4, v5);
}

uint64_t sub_1B7FFD354()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1B7FFD5A4;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_1B7FFD470;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B7FFD470()
{
  v1 = *(v0 + 120);
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[8];
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v3;
  v0[6] = sub_1B800F9E0;
  v0[7] = v5;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FCE114;
  v0[5] = &block_descriptor_21;
  v6 = _Block_copy(v0 + 2);
  v7 = v0[7];

  [v4 requestOwnerTokenWithForce:v1 completion:v6];
  _Block_release(v6);
  swift_unknownObjectRelease();
  v8 = v0[1];

  return v8();
}

uint64_t sub_1B7FFD5A4()
{
  v18 = v0;
  v1 = v0[11];

  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDE78);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[14];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0xD000000000000019, 0x80000001B80CC540, &v17);
    *(v8 + 12) = 2114;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "Failed to create proxy in %{public}s: %{public}@", v8, 0x16u);
    sub_1B7FB86D4(v9, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CB8970](v10, -1, -1);
    MEMORY[0x1B8CB8970](v8, -1, -1);
  }

  v13 = v0[14];
  v14 = v0[11];
  v0[9] = v13;
  sub_1B80C8ACC();

  v15 = v0[1];

  return v15();
}

void sub_1B7FFD7B4(void *a1, uint64_t a2, char a3)
{
  if (a1)
  {
    v4 = a1;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v5 = sub_1B80C900C();
    __swift_project_value_buffer(v5, qword_1ED8DDE78);
    v6 = a1;
    v7 = sub_1B80C8FEC();
    v8 = sub_1B80C93FC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v9 = 136446466;
      *(v9 + 4) = sub_1B7FB84FC(0xD000000000000019, 0x80000001B80CC540, &v20);
      *(v9 + 12) = 2114;
      v12 = a1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v13;
      *v10 = v13;
      _os_log_impl(&dword_1B7FB5000, v7, v8, "%{public}s error %{public}@!", v9, 0x16u);
      sub_1B7FB86D4(v10, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1B8CB8970](v11, -1, -1);
      MEMORY[0x1B8CB8970](v9, -1, -1);
    }

    v20 = a1;
    sub_1B80C8ACC();
  }

  else
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v15 = sub_1B80C900C();
    __swift_project_value_buffer(v15, qword_1ED8DDE78);
    v16 = sub_1B80C8FEC();
    v17 = sub_1B80C941C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v18 = 136446466;
      *(v18 + 4) = sub_1B7FB84FC(0xD000000000000019, 0x80000001B80CC540, &v20);
      *(v18 + 12) = 1024;
      *(v18 + 14) = a3 & 1;
      _os_log_impl(&dword_1B7FB5000, v16, v17, "%{public}s force? %{BOOL}d succeeded!", v18, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1B8CB8970](v19, -1, -1);
      MEMORY[0x1B8CB8970](v18, -1, -1);
    }

    sub_1B80C8AEC();
  }
}

uint64_t sub_1B7FFDAB8(_OWORD *a1)
{
  *(v2 + 200) = v1;
  *(v2 + 208) = *v1;
  v3 = a1[9];
  *(v2 + 144) = a1[8];
  *(v2 + 160) = v3;
  *(v2 + 176) = a1[10];
  v4 = a1[5];
  *(v2 + 80) = a1[4];
  *(v2 + 96) = v4;
  v5 = a1[7];
  *(v2 + 112) = a1[6];
  *(v2 + 128) = v5;
  v6 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v6;
  v7 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v7;
  return MEMORY[0x1EEE6DFA0](sub_1B7FFDB30, v1, 0);
}

uint64_t sub_1B7FFDB30()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = swift_task_alloc();
  v0[27] = v3;
  v3[2] = v2;
  v3[3] = v0 + 2;
  v3[4] = v1;
  v4 = *(MEMORY[0x1E699C830] + 4);
  v5 = swift_task_alloc();
  v0[28] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66010, &qword_1B80D29E0);
  *v5 = v0;
  v5[1] = sub_1B7FFDC40;

  return MEMORY[0x1EEE04418](v0 + 24, 0x656B6F5472656570, 0xEF293A726F66286ELL, sub_1B8011C70, v3, v6);
}

uint64_t sub_1B7FFDC40()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v9 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = *(v2 + 200);
    v5 = sub_1B7FFDD84;
  }

  else
  {
    v6 = *(v2 + 216);
    v7 = *(v2 + 200);

    v5 = sub_1B7FFDD68;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B7FFDD84()
{
  v1 = v0[27];

  v2 = v0[1];
  v3 = v0[29];

  return v2();
}

uint64_t sub_1B7FFDDE8(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v23[-v13];
  v15 = sub_1B80C92CC();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = a2;
  *(v16 + 40) = a1;
  v17 = a3[9];
  *(v16 + 176) = a3[8];
  *(v16 + 192) = v17;
  *(v16 + 208) = a3[10];
  v18 = a3[5];
  *(v16 + 112) = a3[4];
  *(v16 + 128) = v18;
  v19 = a3[7];
  *(v16 + 144) = a3[6];
  *(v16 + 160) = v19;
  v20 = a3[1];
  *(v16 + 48) = *a3;
  *(v16 + 64) = v20;
  v21 = a3[3];
  *(v16 + 80) = a3[2];
  *(v16 + 96) = v21;
  *(v16 + 224) = a4;

  sub_1B7FC8DA4(a3, v23);
  sub_1B80A1D3C(0, 0, v14, a6, v16);
}

uint64_t sub_1B7FFDF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[56] = a6;
  v7[57] = a7;
  v7[54] = a4;
  v7[55] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B7FFDF74, 0, 0);
}

uint64_t sub_1B7FFDF74()
{
  v1 = v0[55];
  v2 = *(MEMORY[0x1E699C838] + 4);

  v3 = swift_task_alloc();
  v0[58] = v3;
  v4 = _s20FriendshipConnectionCMa();
  v5 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa);
  *v3 = v0;
  v3[1] = sub_1B7FFE080;
  v7 = v0[54];
  v6 = v0[55];

  return MEMORY[0x1EEE04428](v0 + 52, sub_1B8011C68, v6, v4, v5);
}

uint64_t sub_1B7FFE080()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v7 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v4 = sub_1B7FFE574;
  }

  else
  {
    v5 = *(v2 + 440);

    v4 = sub_1B7FFE19C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B7FFE19C()
{
  v46 = v0;
  v1 = *(v0 + 472);
  v2 = *(v0 + 448);
  v3 = *(v0 + 416);
  v4 = sub_1B80C8CEC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1B80C8CDC();
  v8 = v2[1];
  v7 = v2[2];
  *(v0 + 16) = *v2;
  *(v0 + 32) = v8;
  *(v0 + 48) = v7;
  v9 = v2[6];
  v11 = v2[3];
  v10 = v2[4];
  *(v0 + 96) = v2[5];
  *(v0 + 112) = v9;
  *(v0 + 64) = v11;
  *(v0 + 80) = v10;
  v12 = v2[10];
  v14 = v2[7];
  v13 = v2[8];
  *(v0 + 160) = v2[9];
  *(v0 + 176) = v12;
  *(v0 + 128) = v14;
  *(v0 + 144) = v13;
  sub_1B7FDC224();
  v15 = sub_1B80C8CCC();
  if (v1)
  {

    swift_unknownObjectRelease();
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v17 = sub_1B80C900C();
    __swift_project_value_buffer(v17, qword_1ED8DDE78);
    v18 = v1;
    v19 = sub_1B80C8FEC();
    v20 = sub_1B80C93FC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v45 = v23;
      *v21 = 136446466;
      *(v21 + 4) = sub_1B7FB84FC(0x656B6F5472656570, 0xEF293A726F66286ELL, &v45);
      *(v21 + 12) = 2114;
      v24 = sub_1B80C8CFC();
      *(v21 + 14) = v24;
      *v22 = v24;
      _os_log_impl(&dword_1B7FB5000, v19, v20, "Failed to create proxy in %{public}s: %{public}@", v21, 0x16u);
      sub_1B7FB86D4(v22, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1B8CB8970](v23, -1, -1);
      MEMORY[0x1B8CB8970](v21, -1, -1);
    }

    v25 = *(v0 + 440);
    *(v0 + 424) = v1;
    sub_1B80C8ACC();
  }

  else
  {
    v26 = *(v0 + 448);
    v27 = *(v0 + 456);
    v28 = *(v0 + 440);
    v29 = v15;
    v30 = v16;

    v31 = sub_1B80C8D1C();
    v32 = swift_allocObject();
    *(v32 + 16) = v28;
    v33 = *v26;
    v34 = v26[1];
    *(v32 + 56) = v26[2];
    *(v32 + 40) = v34;
    *(v32 + 24) = v33;
    v35 = v26[3];
    v36 = v26[4];
    v37 = v26[5];
    *(v32 + 120) = v26[6];
    *(v32 + 104) = v37;
    *(v32 + 88) = v36;
    *(v32 + 72) = v35;
    v38 = v26[7];
    v39 = v26[8];
    v40 = v26[9];
    *(v32 + 184) = v26[10];
    *(v32 + 168) = v40;
    *(v32 + 152) = v39;
    *(v32 + 136) = v38;
    *(v32 + 200) = v27;
    *(v0 + 400) = sub_1B8010244;
    *(v0 + 408) = v32;
    *(v0 + 368) = MEMORY[0x1E69E9820];
    *(v0 + 376) = 1107296256;
    *(v0 + 384) = sub_1B7FC5CCC;
    *(v0 + 392) = &block_descriptor_112;
    v41 = _Block_copy((v0 + 368));
    v42 = *(v0 + 408);

    sub_1B7FC8DA4(v26, v0 + 192);

    [v3 peerTokenWithHandle:v31 completion:v41];
    _Block_release(v41);

    sub_1B7FC3CCC(v29, v30);
    swift_unknownObjectRelease();
  }

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_1B7FFE574()
{
  v15 = v0;
  v1 = v0[55];

  v2 = v0[59];
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDE78);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1B7FB84FC(0x656B6F5472656570, 0xEF293A726F66286ELL, &v14);
    *(v7 + 12) = 2114;
    v10 = sub_1B80C8CFC();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "Failed to create proxy in %{public}s: %{public}@", v7, 0x16u);
    sub_1B7FB86D4(v8, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    MEMORY[0x1B8CB8970](v7, -1, -1);
  }

  v11 = v0[55];
  v0[53] = v2;
  sub_1B80C8ACC();

  v12 = v0[1];

  return v12();
}

void sub_1B7FFE77C(uint64_t a1, unint64_t a2, id a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v5 = a3;
    v6 = a3;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v7 = sub_1B80C900C();
    __swift_project_value_buffer(v7, qword_1ED8DDE78);
    v8 = v5;
    v9 = sub_1B80C8FEC();
    v10 = sub_1B80C93FC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v37[0] = v12;
      *v11 = 136446466;
      *(v11 + 4) = sub_1B7FB84FC(0x656B6F5472656570, 0xEF293A726F66286ELL, v37);
      *(v11 + 12) = 2082;
      v13 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v14 = sub_1B80C90EC();
      v16 = sub_1B7FB84FC(v14, v15, v37);

      *(v11 + 14) = v16;
      _os_log_impl(&dword_1B7FB5000, v9, v10, "%{public}s error %{public}s!", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v12, -1, -1);
      MEMORY[0x1B8CB8970](v11, -1, -1);
    }

    v37[0] = v5;
LABEL_13:
    sub_1B80C8ACC();

    return;
  }

  if (a2 >> 60 == 15)
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v17 = sub_1B80C900C();
    __swift_project_value_buffer(v17, qword_1ED8DDE78);
    v18 = sub_1B80C8FEC();
    v19 = sub_1B80C93FC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v37[0] = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_1B7FB84FC(0x656B6F5472656570, 0xEF293A726F66286ELL, v37);
      _os_log_impl(&dword_1B7FB5000, v18, v19, "Received nil response for %{public}s!", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1B8CB8970](v21, -1, -1);
      MEMORY[0x1B8CB8970](v20, -1, -1);
    }

    sub_1B8010040();
    v5 = swift_allocError();
    *v22 = 1;
    v37[0] = v5;
    goto LABEL_13;
  }

  sub_1B7FBFCCC(0, &qword_1EBA65D40, 0x1E696ACD0);
  sub_1B7FBFCCC(0, &qword_1EBA65D48, 0x1E6977A98);
  sub_1B7FC62D8(a1, a2);
  v26 = a1;
  v36 = a2;
  v27 = sub_1B80C943C();
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v28 = sub_1B80C900C();
  __swift_project_value_buffer(v28, qword_1ED8DDE78);
  sub_1B7FC8DA4(a5, v37);
  v29 = v27;
  v30 = sub_1B80C8FEC();
  v31 = sub_1B80C941C();
  sub_1B7FCAD28(a5);

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v37[0] = v34;
    *v32 = 136446979;
    *(v32 + 4) = sub_1B7FB84FC(0x656B6F5472656570, 0xEF293A726F66286ELL, v37);
    *(v32 + 12) = 2160;
    *(v32 + 14) = 1752392040;
    *(v32 + 22) = 2081;
    *(v32 + 24) = sub_1B7FB84FC(*a5, *(a5 + 8), v37);
    *(v32 + 32) = 2112;
    *(v32 + 34) = v29;
    *v33 = v27;
    v35 = v29;
    _os_log_impl(&dword_1B7FB5000, v30, v31, "%{public}s for %{private,mask.hash}s succeeded: %@.", v32, 0x2Au);
    sub_1B7FB86D4(v33, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v33, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v34, -1, -1);
    MEMORY[0x1B8CB8970](v32, -1, -1);
  }

  v37[0] = v27;
  sub_1B80C8ADC();
  sub_1B7FC72F8(v26, v36);
}

uint64_t sub_1B7FFEF04()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B7FFEF4C, v0, 0);
}

uint64_t sub_1B7FFEF4C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E699C830] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66010, &qword_1B80D29E0);
  *v5 = v0;
  v5[1] = sub_1B7FFF050;

  return MEMORY[0x1EEE04418](v0 + 2, 0x6B6F5472656E776FLL, 0xEC00000029286E65, sub_1B8011CF0, v3, v6);
}

uint64_t sub_1B7FFF050()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_1B7FFF194;
  }

  else
  {
    v6 = *(v2 + 40);
    v7 = *(v2 + 24);

    v5 = sub_1B7FFF178;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B7FFF194()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_1B7FFF1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B7FFF21C, 0, 0);
}

uint64_t sub_1B7FFF21C()
{
  v1 = v0[11];
  v2 = *(MEMORY[0x1E699C838] + 4);

  v3 = swift_task_alloc();
  v0[13] = v3;
  v4 = _s20FriendshipConnectionCMa();
  v5 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa);
  *v3 = v0;
  v3[1] = sub_1B7FFF328;
  v7 = v0[10];
  v6 = v0[11];

  return MEMORY[0x1EEE04428](v0 + 8, sub_1B8011C68, v6, v4, v5);
}

uint64_t sub_1B7FFF328()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1B7FFF568;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_1B7FFF444;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B7FFF444()
{
  v1 = v0[8];
  v2 = swift_allocObject();
  *(v2 + 16) = *(v0 + 11);
  v0[6] = sub_1B8010038;
  v0[7] = v2;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FC5CCC;
  v0[5] = &block_descriptor_99;
  v3 = _Block_copy(v0 + 2);
  v4 = v0[7];

  [v1 ownerTokenWithCompletion_];
  _Block_release(v3);
  swift_unknownObjectRelease();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1B7FFF568()
{
  v17 = v0;
  v1 = v0[11];

  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDE78);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[14];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0x6B6F5472656E776FLL, 0xEC00000029286E65, &v16);
    *(v8 + 12) = 2114;
    v11 = sub_1B80C8CFC();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "Failed to create proxy in %{public}s: %{public}@", v8, 0x16u);
    sub_1B7FB86D4(v9, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CB8970](v10, -1, -1);
    MEMORY[0x1B8CB8970](v8, -1, -1);
  }

  v12 = v0[14];
  v13 = v0[11];
  v0[9] = v12;
  sub_1B80C8ACC();

  v14 = v0[1];

  return v14();
}

void sub_1B7FFF774(uint64_t a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = a3;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v5 = sub_1B80C900C();
    __swift_project_value_buffer(v5, qword_1ED8DDE78);
    v6 = v3;
    v7 = sub_1B80C8FEC();
    v8 = sub_1B80C93FC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v34 = v10;
      *v9 = 136446466;
      *(v9 + 4) = sub_1B7FB84FC(0x6B6F5472656E776FLL, 0xEC00000029286E65, &v34);
      *(v9 + 12) = 2082;
      v11 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v12 = sub_1B80C90EC();
      v14 = sub_1B7FB84FC(v12, v13, &v34);

      *(v9 + 14) = v14;
      _os_log_impl(&dword_1B7FB5000, v7, v8, "%{public}s error %{public}s!", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v10, -1, -1);
      MEMORY[0x1B8CB8970](v9, -1, -1);
    }

    v34 = v3;
LABEL_13:
    sub_1B80C8ACC();

    return;
  }

  if (a2 >> 60 == 15)
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v15 = sub_1B80C900C();
    __swift_project_value_buffer(v15, qword_1ED8DDE78);
    v16 = sub_1B80C8FEC();
    v17 = sub_1B80C93FC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_1B7FB84FC(0x6B6F5472656E776FLL, 0xEC00000029286E65, &v34);
      _os_log_impl(&dword_1B7FB5000, v16, v17, "Received nil response for %{public}s!", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1B8CB8970](v19, -1, -1);
      MEMORY[0x1B8CB8970](v18, -1, -1);
    }

    sub_1B8010040();
    v3 = swift_allocError();
    *v20 = 1;
    v34 = v3;
    goto LABEL_13;
  }

  sub_1B7FBFCCC(0, &qword_1EBA65D40, 0x1E696ACD0);
  sub_1B7FBFCCC(0, &qword_1EBA65D48, 0x1E6977A98);
  sub_1B7FC62D8(a1, a2);
  v23 = a1;
  v24 = a2;
  v25 = sub_1B80C943C();
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v26 = sub_1B80C900C();
  __swift_project_value_buffer(v26, qword_1ED8DDE78);
  v27 = v25;
  v28 = sub_1B80C8FEC();
  v29 = sub_1B80C941C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = v32;
    *v30 = 136446466;
    *(v30 + 4) = sub_1B7FB84FC(0x6B6F5472656E776FLL, 0xEC00000029286E65, &v34);
    *(v30 + 12) = 2112;
    *(v30 + 14) = v27;
    *v31 = v25;
    v33 = v27;
    _os_log_impl(&dword_1B7FB5000, v28, v29, "%{public}s succeeded: %@", v30, 0x16u);
    sub_1B7FB86D4(v31, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v31, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x1B8CB8970](v32, -1, -1);
    MEMORY[0x1B8CB8970](v30, -1, -1);
  }

  v34 = v25;
  sub_1B80C8ADC();
  sub_1B7FC72F8(v23, v24);
}

uint64_t sub_1B7FFFE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B7FFFE9C, 0, 0);
}

uint64_t sub_1B7FFFE9C()
{
  v1 = swift_allocObject();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 88);
  v2 = *(MEMORY[0x1E699C838] + 4);

  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  v4 = _s20FriendshipConnectionCMa();
  v5 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa);
  *v3 = v0;
  v3[1] = sub_1B7FFFFD0;
  v6 = *(v0 + 80);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B8011144, v1, v4, v5);
}

uint64_t sub_1B7FFFFD0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1B8000210;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_1B80000EC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B80000EC()
{
  v1 = v0[8];
  v2 = swift_allocObject();
  *(v2 + 16) = *(v0 + 11);
  v0[6] = sub_1B801114C;
  v0[7] = v2;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FCE114;
  v0[5] = &block_descriptor_243;
  v3 = _Block_copy(v0 + 2);
  v4 = v0[7];

  [v1 startFriendsUpdateWithCompletion_];
  _Block_release(v3);
  swift_unknownObjectRelease();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1B8000210()
{
  v17 = v0;
  v1 = v0[13];

  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDE78);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[15];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0xD000000000000014, 0x80000001B80CC480, &v16);
    *(v8 + 12) = 2114;
    v11 = sub_1B80C8CFC();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "Failed to create proxy in %{public}s: %{public}@", v8, 0x16u);
    sub_1B7FB86D4(v9, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CB8970](v10, -1, -1);
    MEMORY[0x1B8CB8970](v8, -1, -1);
  }

  v12 = v0[15];
  v13 = v0[11];
  v0[9] = v12;
  sub_1B80C8ACC();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1B8000418(void *a1)
{
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000014, 0x80000001B80CC480, &v11);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Proxy error in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = a1;
  return sub_1B80C8ACC();
}

void sub_1B80005D8(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v3 = sub_1B80C900C();
    __swift_project_value_buffer(v3, qword_1ED8DDE78);
    v4 = a1;
    v5 = sub_1B80C8FEC();
    v6 = sub_1B80C93FC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136446466;
      *(v7 + 4) = sub_1B7FB84FC(0xD000000000000014, 0x80000001B80CC480, &v18);
      *(v7 + 12) = 2082;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v10 = sub_1B80C90EC();
      v12 = sub_1B7FB84FC(v10, v11, &v18);

      *(v7 + 14) = v12;
      _os_log_impl(&dword_1B7FB5000, v5, v6, "%{public}s error %{public}s!", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v8, -1, -1);
      MEMORY[0x1B8CB8970](v7, -1, -1);
    }

    v18 = a1;
    sub_1B80C8ACC();
  }

  else
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v13 = sub_1B80C900C();
    __swift_project_value_buffer(v13, qword_1ED8DDE78);
    v14 = sub_1B80C8FEC();
    v15 = sub_1B80C941C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_1B7FB84FC(0xD000000000000014, 0x80000001B80CC480, &v18);
      _os_log_impl(&dword_1B7FB5000, v14, v15, "%{public}s succeeded!", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1B8CB8970](v17, -1, -1);
      MEMORY[0x1B8CB8970](v16, -1, -1);
    }

    sub_1B80C8AEC();
  }
}

uint64_t sub_1B80008D0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8000918, v1, 0);
}

uint64_t sub_1B8000918()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E699C830] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1B8000A0C;
  v6 = v0[2];

  return MEMORY[0x1EEE04418](v6, 0x6E656972466C6C61, 0xEC00000029287364, sub_1B8011CF4, v3, &type metadata for FriendContainer);
}

uint64_t sub_1B8000A0C()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {
    v4 = v3[3];

    return MEMORY[0x1EEE6DFA0](sub_1B7FFF194, v4, 0);
  }

  else
  {
    v5 = v3[5];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1B8000B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v16 - v11;
  v13 = sub_1B80C92CC();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a2;
  v14[5] = a1;
  v14[6] = a3;

  sub_1B80A1D3C(0, 0, v12, a5, v14);
}

uint64_t sub_1B8000C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 80) = a4;
  *(v5 + 88) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B8000C84, 0, 0);
}

uint64_t sub_1B8000C84()
{
  v1 = v0[11];
  v2 = *(MEMORY[0x1E699C838] + 4);

  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = _s20FriendshipConnectionCMa();
  v5 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa);
  *v3 = v0;
  v3[1] = sub_1B8000D90;
  v7 = v0[10];
  v6 = v0[11];

  return MEMORY[0x1EEE04428](v0 + 8, sub_1B8011C68, v6, v4, v5);
}

uint64_t sub_1B8000D90()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1B8000FAC;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_1B8000EAC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B8000EAC()
{
  v1 = v0[11];
  v2 = v0[8];
  v0[6] = sub_1B8011254;
  v0[7] = v1;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B800132C;
  v0[5] = &block_descriptor_253;
  v3 = _Block_copy(v0 + 2);
  v4 = v0[7];

  [v2 allFriendsWithCompletion_];
  _Block_release(v3);
  swift_unknownObjectRelease();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1B8000FAC()
{
  v17 = v0;
  v1 = v0[11];

  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDE78);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[13];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0x6E656972466C6C61, 0xEC00000029287364, &v16);
    *(v8 + 12) = 2114;
    v11 = sub_1B80C8CFC();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "Failed to create proxy in %{public}s: %{public}@", v8, 0x16u);
    sub_1B7FB86D4(v9, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CB8970](v10, -1, -1);
    MEMORY[0x1B8CB8970](v8, -1, -1);
  }

  v12 = v0[13];
  v13 = v0[11];
  v0[9] = v12;
  sub_1B80C8ACC();

  v14 = v0[1];

  return v14();
}

void sub_1B80011B8(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue);
  if (*(a1 + OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue + 16))
  {
    v11 = *(a1 + OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue);
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
    swift_willThrowTypedImpl();
    v3 = 0uLL;
    v4 = 1;
    v9 = 0uLL;
  }

  else
  {
    v5 = *(a1 + OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue + 8);
    v6 = sub_1B80C8B7C();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    sub_1B7FC62D8(v1, v5);
    sub_1B80C8B6C();
    sub_1B80112D4();
    sub_1B80C8B5C();

    sub_1B8011328(v1, v5, 0);
    v4 = 0;
    v1 = v10;
    v3 = v12;
    v9 = v14;
  }

  v13 = v3;
  v15 = v9;
  v16 = v4;
  sub_1B80C8ABC();
  sub_1B801125C(v1, v13, *(&v13 + 1), v15, *(&v15 + 1), v16);
}

void sub_1B800132C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1B8001394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - v10;
  v12 = sub_1B80C92CC();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;

  sub_1B80A1D3C(0, 0, v11, &unk_1B80D2A78, v13);
}

uint64_t sub_1B80014C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B80014EC, 0, 0);
}

uint64_t sub_1B80014EC()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = swift_allocObject();
  v0[15] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E699C838] + 4);

  v5 = swift_task_alloc();
  v0[16] = v5;
  v6 = _s20FriendshipConnectionCMa();
  v7 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa);
  *v5 = v0;
  v5[1] = sub_1B8001624;
  v8 = v0[11];

  return MEMORY[0x1EEE04428](v0 + 8, sub_1B8010EA8, v3, v6, v7);
}

uint64_t sub_1B8001624()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_1B8001AB4;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_1B8001740;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B8001740()
{
  v29 = v0;
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[8];
  v4 = sub_1B80C8CEC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1B80C8CDC();
  v0[10] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66040, &qword_1B80D2A80);
  sub_1B8010EB0();
  v7 = sub_1B80C8CCC();
  if (v1)
  {

    swift_unknownObjectRelease();
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v9 = sub_1B80C900C();
    __swift_project_value_buffer(v9, qword_1ED8DDE78);
    v10 = v1;
    v11 = sub_1B80C8FEC();
    v12 = sub_1B80C93FC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v28 = v15;
      *v13 = 136446466;
      *(v13 + 4) = sub_1B7FB84FC(0x2873646E65697266, 0xEE00293A68746977, &v28);
      *(v13 + 12) = 2114;
      v16 = sub_1B80C8CFC();
      *(v13 + 14) = v16;
      *v14 = v16;
      _os_log_impl(&dword_1B7FB5000, v11, v12, "Failed to create proxy in %{public}s: %{public}@", v13, 0x16u);
      sub_1B7FB86D4(v14, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1B8CB8970](v15, -1, -1);
      MEMORY[0x1B8CB8970](v13, -1, -1);
    }

    v17 = v0[12];
    v0[9] = v1;
    sub_1B80C8ACC();
  }

  else
  {
    v18 = v0[14];
    v19 = v0[12];
    v20 = v7;
    v21 = v8;

    v22 = sub_1B80C8D1C();
    v23 = swift_allocObject();
    *(v23 + 16) = v19;
    *(v23 + 24) = v18;
    v0[6] = sub_1B8010F88;
    v0[7] = v23;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1B7FC5CCC;
    v0[5] = &block_descriptor_224;
    v24 = _Block_copy(v0 + 2);
    v25 = v0[7];

    [v3 friendsWithTypes:v22 completion:v24];
    _Block_release(v24);

    sub_1B7FC3CCC(v20, v21);
    swift_unknownObjectRelease();
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_1B8001AB4()
{
  v15 = v0;
  v1 = v0[15];

  v2 = v0[17];
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDE78);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1B7FB84FC(0x2873646E65697266, 0xEE00293A68746977, &v14);
    *(v7 + 12) = 2114;
    v10 = sub_1B80C8CFC();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "Failed to create proxy in %{public}s: %{public}@", v7, 0x16u);
    sub_1B7FB86D4(v8, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    MEMORY[0x1B8CB8970](v7, -1, -1);
  }

  v11 = v0[12];
  v0[9] = v2;
  sub_1B80C8ACC();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1B8001CBC(void *a1)
{
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0x2873646E65697266, 0xEE00293A68746977, &v11);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Proxy error in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = a1;
  return sub_1B80C8ACC();
}

void sub_1B8001E84(uint64_t a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = a3;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v5 = sub_1B80C900C();
    __swift_project_value_buffer(v5, qword_1ED8DDE78);
    v6 = v3;
    v7 = sub_1B80C8FEC();
    v8 = sub_1B80C93FC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v38 = v10;
      *v9 = 136446466;
      *(v9 + 4) = sub_1B7FB84FC(0x2873646E65697266, 0xEE00293A68746977, &v38);
      *(v9 + 12) = 2082;
      v11 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v12 = sub_1B80C90EC();
      v14 = sub_1B7FB84FC(v12, v13, &v38);

      *(v9 + 14) = v14;
      _os_log_impl(&dword_1B7FB5000, v7, v8, "%{public}s error %{public}s!", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v10, -1, -1);
      MEMORY[0x1B8CB8970](v9, -1, -1);
    }

    v38 = v3;
LABEL_13:
    sub_1B80C8ACC();

    return;
  }

  if (a2 >> 60 == 15)
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v15 = sub_1B80C900C();
    __swift_project_value_buffer(v15, qword_1ED8DDE78);
    v16 = sub_1B80C8FEC();
    v17 = sub_1B80C93FC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v38 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_1B7FB84FC(0x2873646E65697266, 0xEE00293A68746977, &v38);
      _os_log_impl(&dword_1B7FB5000, v16, v17, "Received nil response for %{public}s!", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1B8CB8970](v19, -1, -1);
      MEMORY[0x1B8CB8970](v18, -1, -1);
    }

    sub_1B8010040();
    v3 = swift_allocError();
    *v20 = 1;
    v38 = v3;
    goto LABEL_13;
  }

  v23 = sub_1B80C8CBC();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_1B7FC62D8(a1, a2);
  sub_1B80C8CAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F80, &qword_1B80D2708);
  sub_1B8010F90();
  v26 = a1;
  v27 = a2;
  sub_1B80C8C9C();

  v28 = v38;
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v29 = sub_1B80C900C();
  __swift_project_value_buffer(v29, qword_1ED8DDE78);

  v30 = sub_1B80C8FEC();
  v31 = sub_1B80C941C();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v38 = v33;
    *v32 = 136446466;
    *(v32 + 4) = sub_1B7FB84FC(0x2873646E65697266, 0xEE00293A68746977, &v38);
    *(v32 + 12) = 2080;
    v34 = type metadata accessor for Friend();
    v35 = MEMORY[0x1B8CB7B30](v28, v34);
    v37 = sub_1B7FB84FC(v35, v36, &v38);

    *(v32 + 14) = v37;
    _os_log_impl(&dword_1B7FB5000, v30, v31, "%{public}s succeeded: %s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v33, -1, -1);
    MEMORY[0x1B8CB8970](v32, -1, -1);
  }

  v38 = v28;
  sub_1B80C8ADC();
  sub_1B7FC72F8(v26, v27);
}

uint64_t sub_1B800258C(uint64_t a1, uint64_t a2)
{
  *(v3 + 232) = a1;
  *(v3 + 240) = v2;
  *(v3 + 248) = *v2;
  v4 = *(a2 + 176);
  *(v3 + 176) = *(a2 + 160);
  *(v3 + 192) = v4;
  *(v3 + 208) = *(a2 + 192);
  *(v3 + 224) = *(a2 + 208);
  v5 = *(a2 + 112);
  *(v3 + 112) = *(a2 + 96);
  *(v3 + 128) = v5;
  v6 = *(a2 + 144);
  *(v3 + 144) = *(a2 + 128);
  *(v3 + 160) = v6;
  v7 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v7;
  v8 = *(a2 + 80);
  *(v3 + 80) = *(a2 + 64);
  *(v3 + 96) = v8;
  v9 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v9;
  return MEMORY[0x1EEE6DFA0](sub_1B8002614, v2, 0);
}

uint64_t sub_1B8002614()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = swift_task_alloc();
  v0[32] = v3;
  v3[2] = v2;
  v3[3] = v0 + 2;
  v3[4] = v1;
  v4 = *(MEMORY[0x1E699C830] + 4);
  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_1B8002714;
  v6 = v0[29];

  return MEMORY[0x1EEE04418](v6, 0xD000000000000013, 0x80000001B80CC670, sub_1B8011C8C, v3, &type metadata for FriendshipState);
}

uint64_t sub_1B8002714()
{
  v2 = *(*v1 + 264);
  v3 = *v1;
  v3[34] = v0;

  if (v0)
  {
    v4 = v3[30];

    return MEMORY[0x1EEE6DFA0](sub_1B8002850, v4, 0);
  }

  else
  {
    v5 = v3[32];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1B8002850()
{
  v1 = v0[32];

  v2 = v0[1];
  v3 = v0[34];

  return v2();
}

uint64_t sub_1B80028B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22[-v10 - 8];
  v12 = sub_1B80C92CC();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = a2;
  *(v13 + 40) = a1;
  v14 = *(a3 + 176);
  *(v13 + 208) = *(a3 + 160);
  *(v13 + 224) = v14;
  *(v13 + 240) = *(a3 + 192);
  *(v13 + 256) = *(a3 + 208);
  v15 = *(a3 + 112);
  *(v13 + 144) = *(a3 + 96);
  *(v13 + 160) = v15;
  v16 = *(a3 + 144);
  *(v13 + 176) = *(a3 + 128);
  *(v13 + 192) = v16;
  v17 = *(a3 + 48);
  *(v13 + 80) = *(a3 + 32);
  *(v13 + 96) = v17;
  v18 = *(a3 + 80);
  *(v13 + 112) = *(a3 + 64);
  *(v13 + 128) = v18;
  v19 = *(a3 + 16);
  *(v13 + 48) = *a3;
  *(v13 + 64) = v19;
  *(v13 + 264) = a4;

  sub_1B8010CC0(a3, v22);
  sub_1B80A1D3C(0, 0, v11, &unk_1B80D2A68, v13);
}

uint64_t sub_1B8002A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[39] = a6;
  v7[40] = a7;
  v7[37] = a4;
  v7[38] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B8002A5C, 0, 0);
}

uint64_t sub_1B8002A5C()
{
  v1 = v0[40];
  v2 = v0[38];
  v3 = swift_allocObject();
  v0[41] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E699C838] + 4);

  v5 = swift_task_alloc();
  v0[42] = v5;
  v6 = _s20FriendshipConnectionCMa();
  v7 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa);
  *v5 = v0;
  v5[1] = sub_1B8002B94;
  v8 = v0[37];

  return MEMORY[0x1EEE04428](v0 + 35, sub_1B8010D1C, v3, v6, v7);
}

uint64_t sub_1B8002B94()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v7 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = sub_1B8003034;
  }

  else
  {
    v5 = *(v2 + 328);

    v4 = sub_1B8002CB0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B8002CB0()
{
  v39 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 312);
  v3 = *(v0 + 280);
  v4 = sub_1B80C8CEC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1B80C8CDC();
  v7 = *(v2 + 16);
  *(v0 + 16) = *v2;
  *(v0 + 32) = v7;
  v8 = *(v2 + 80);
  v10 = *(v2 + 32);
  v9 = *(v2 + 48);
  *(v0 + 80) = *(v2 + 64);
  *(v0 + 96) = v8;
  *(v0 + 48) = v10;
  *(v0 + 64) = v9;
  v11 = *(v2 + 144);
  v13 = *(v2 + 96);
  v12 = *(v2 + 112);
  *(v0 + 144) = *(v2 + 128);
  *(v0 + 160) = v11;
  *(v0 + 112) = v13;
  *(v0 + 128) = v12;
  v15 = *(v2 + 176);
  v14 = *(v2 + 192);
  v16 = *(v2 + 160);
  *(v0 + 224) = *(v2 + 208);
  *(v0 + 192) = v15;
  *(v0 + 208) = v14;
  *(v0 + 176) = v16;
  sub_1B8010D24();
  v17 = sub_1B80C8CCC();
  if (v1)
  {

    swift_unknownObjectRelease();
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v19 = sub_1B80C900C();
    __swift_project_value_buffer(v19, qword_1ED8DDE78);
    v20 = v1;
    v21 = sub_1B80C8FEC();
    v22 = sub_1B80C93FC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v38 = v25;
      *v23 = 136446466;
      *(v23 + 4) = sub_1B7FB84FC(0xD000000000000013, 0x80000001B80CC670, &v38);
      *(v23 + 12) = 2114;
      v26 = sub_1B80C8CFC();
      *(v23 + 14) = v26;
      *v24 = v26;
      _os_log_impl(&dword_1B7FB5000, v21, v22, "Failed to create proxy in %{public}s: %{public}@", v23, 0x16u);
      sub_1B7FB86D4(v24, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1B8CB8970](v25, -1, -1);
      MEMORY[0x1B8CB8970](v23, -1, -1);
    }

    v27 = *(v0 + 304);
    *(v0 + 288) = v1;
    sub_1B80C8ACC();
  }

  else
  {
    v28 = *(v0 + 320);
    v29 = *(v0 + 304);
    v30 = v17;
    v31 = v18;

    v32 = sub_1B80C8D1C();
    v33 = swift_allocObject();
    *(v33 + 16) = v29;
    *(v33 + 24) = v28;
    *(v0 + 264) = sub_1B8010D78;
    *(v0 + 272) = v33;
    *(v0 + 232) = MEMORY[0x1E69E9820];
    *(v0 + 240) = 1107296256;
    *(v0 + 248) = sub_1B7FC5CCC;
    *(v0 + 256) = &block_descriptor_208;
    v34 = _Block_copy((v0 + 232));
    v35 = *(v0 + 272);

    [v3 friendshipStateWithRequest:v32 completion:v34];
    _Block_release(v34);

    sub_1B7FC3CCC(v30, v31);
    swift_unknownObjectRelease();
  }

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1B8003034()
{
  v15 = v0;
  v1 = v0[41];

  v2 = v0[43];
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDE78);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1B7FB84FC(0xD000000000000013, 0x80000001B80CC670, &v14);
    *(v7 + 12) = 2114;
    v10 = sub_1B80C8CFC();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "Failed to create proxy in %{public}s: %{public}@", v7, 0x16u);
    sub_1B7FB86D4(v8, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    MEMORY[0x1B8CB8970](v7, -1, -1);
  }

  v11 = v0[38];
  v0[36] = v2;
  sub_1B80C8ACC();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1B8003234(void *a1)
{
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000013, 0x80000001B80CC670, &v11);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Proxy error in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = a1;
  return sub_1B80C8ACC();
}

void sub_1B80033F4(uint64_t a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = a3;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v5 = sub_1B80C900C();
    __swift_project_value_buffer(v5, qword_1ED8DDE78);
    v6 = v3;
    v7 = sub_1B80C8FEC();
    v8 = sub_1B80C93FC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v38 = v10;
      *v9 = 136446466;
      *(v9 + 4) = sub_1B7FB84FC(0xD000000000000013, 0x80000001B80CC670, &v38);
      *(v9 + 12) = 2082;
      v11 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v12 = sub_1B80C90EC();
      v14 = sub_1B7FB84FC(v12, v13, &v38);

      *(v9 + 14) = v14;
      _os_log_impl(&dword_1B7FB5000, v7, v8, "%{public}s error %{public}s!", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v10, -1, -1);
      MEMORY[0x1B8CB8970](v9, -1, -1);
    }

    v38 = v3;
LABEL_13:
    sub_1B80C8ACC();

    return;
  }

  if (a2 >> 60 == 15)
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v15 = sub_1B80C900C();
    __swift_project_value_buffer(v15, qword_1ED8DDE78);
    v16 = sub_1B80C8FEC();
    v17 = sub_1B80C93FC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v38 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_1B7FB84FC(0xD000000000000013, 0x80000001B80CC670, &v38);
      _os_log_impl(&dword_1B7FB5000, v16, v17, "Received nil response for %{public}s!", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1B8CB8970](v19, -1, -1);
      MEMORY[0x1B8CB8970](v18, -1, -1);
    }

    sub_1B8010040();
    v3 = swift_allocError();
    *v20 = 1;
    v38 = v3;
    goto LABEL_13;
  }

  v23 = sub_1B80C8CBC();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_1B7FC62D8(a1, a2);
  sub_1B80C8CAC();
  sub_1B8010D80();
  v26 = a1;
  v37 = a2;
  sub_1B80C8C9C();

  v27 = v38;
  v28 = BYTE1(v38);
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v29 = sub_1B80C900C();
  __swift_project_value_buffer(v29, qword_1ED8DDE78);
  v30 = sub_1B80C8FEC();
  v31 = sub_1B80C941C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v38 = v33;
    *v32 = 136446466;
    *(v32 + 4) = sub_1B7FB84FC(0xD000000000000013, 0x80000001B80CC670, &v38);
    *(v32 + 12) = 2080;
    v34 = sub_1B80C90EC();
    v36 = sub_1B7FB84FC(v34, v35, &v38);

    *(v32 + 14) = v36;
    _os_log_impl(&dword_1B7FB5000, v30, v31, "%{public}s succeeded: %s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v33, -1, -1);
    MEMORY[0x1B8CB8970](v32, -1, -1);
  }

  LOBYTE(v38) = v27;
  BYTE1(v38) = v28;
  sub_1B80C8ADC();
  sub_1B7FC72F8(v26, v37);
}

uint64_t sub_1B8003ABC(uint64_t a1, uint64_t a2, _OWORD *a3, __int128 *a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v32[-v12];
  v14 = sub_1B80C92CC();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v16 = a3[9];
  *(v15 + 176) = a3[8];
  *(v15 + 192) = v16;
  v17 = a3[5];
  *(v15 + 112) = a3[4];
  *(v15 + 128) = v17;
  v18 = a3[7];
  *(v15 + 144) = a3[6];
  *(v15 + 160) = v18;
  v19 = a3[1];
  *(v15 + 48) = *a3;
  *(v15 + 64) = v19;
  v20 = a3[3];
  *(v15 + 80) = a3[2];
  *(v15 + 96) = v20;
  v21 = a4[8];
  v22 = a4[9];
  v23 = a4[6];
  *(v15 + 336) = a4[7];
  *(v15 + 352) = v21;
  v24 = a4[10];
  *(v15 + 368) = v22;
  *(v15 + 384) = v24;
  v25 = a4[4];
  v26 = a4[5];
  v27 = a4[2];
  *(v15 + 272) = a4[3];
  *(v15 + 288) = v25;
  v28 = a3[10];
  *(v15 + 304) = v26;
  *(v15 + 320) = v23;
  v29 = *a4;
  v30 = a4[1];
  *(v15 + 208) = v28;
  *(v15 + 224) = v29;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = a2;
  *(v15 + 40) = a1;
  *(v15 + 240) = v30;
  *(v15 + 256) = v27;
  *(v15 + 400) = a5;

  sub_1B7FC8DA4(a3, v32);
  sub_1B7FC8DA4(a4, v32);
  sub_1B80A1D3C(0, 0, v13, &unk_1B80D2A58, v15);
}

uint64_t sub_1B8003C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[57] = a7;
  v8[58] = a8;
  v8[55] = a5;
  v8[56] = a6;
  v8[54] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B8003C94, 0, 0);
}

uint64_t sub_1B8003C94()
{
  v1 = v0[58];
  v2 = v0[55];
  v3 = swift_allocObject();
  v0[59] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E699C838] + 4);

  v5 = swift_task_alloc();
  v0[60] = v5;
  v6 = _s20FriendshipConnectionCMa();
  v7 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa);
  *v5 = v0;
  v5[1] = sub_1B8003DCC;
  v8 = v0[54];

  return MEMORY[0x1EEE04428](v0 + 52, sub_1B8010BD0, v3, v6, v7);
}

uint64_t sub_1B8003DCC()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v7 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v4 = sub_1B8004324;
  }

  else
  {
    v5 = *(v2 + 472);

    v4 = sub_1B8003EE8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B8003EE8()
{
  v54 = v0;
  v1 = *(v0 + 488);
  v2 = *(v0 + 448);
  v3 = *(v0 + 416);
  v4 = sub_1B80C8CEC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1B80C8CDC();
  v8 = v2[1];
  v7 = v2[2];
  *(v0 + 16) = *v2;
  *(v0 + 32) = v8;
  *(v0 + 48) = v7;
  v9 = v2[6];
  v11 = v2[3];
  v10 = v2[4];
  *(v0 + 96) = v2[5];
  *(v0 + 112) = v9;
  *(v0 + 64) = v11;
  *(v0 + 80) = v10;
  v12 = v2[10];
  v14 = v2[7];
  v13 = v2[8];
  *(v0 + 160) = v2[9];
  *(v0 + 176) = v12;
  *(v0 + 128) = v14;
  *(v0 + 144) = v13;
  sub_1B7FDC224();
  v15 = sub_1B80C8CCC();
  if (v1)
  {

    swift_unknownObjectRelease();
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v31 = sub_1B80C900C();
    __swift_project_value_buffer(v31, qword_1ED8DDE78);
    v32 = v1;
    v33 = sub_1B80C8FEC();
    v34 = sub_1B80C93FC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v53 = v37;
      *v35 = 136446466;
      *(v35 + 4) = sub_1B7FB84FC(0xD000000000000020, 0x80000001B80CC640, &v53);
      *(v35 + 12) = 2114;
      v38 = sub_1B80C8CFC();
      *(v35 + 14) = v38;
      *v36 = v38;
      _os_log_impl(&dword_1B7FB5000, v33, v34, "Failed to create proxy in %{public}s: %{public}@", v35, 0x16u);
      sub_1B7FB86D4(v36, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v36, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x1B8CB8970](v37, -1, -1);
      MEMORY[0x1B8CB8970](v35, -1, -1);
    }

    v39 = *(v0 + 440);
    *(v0 + 424) = v1;
    sub_1B80C8ACC();
  }

  else
  {
    v17 = v15;
    v18 = v16;
    v19 = *(v0 + 456);

    v20 = *(v4 + 48);
    v21 = *(v4 + 52);
    swift_allocObject();
    sub_1B80C8CDC();
    v23 = v19[1];
    v22 = v19[2];
    *(v0 + 192) = *v19;
    *(v0 + 208) = v23;
    *(v0 + 224) = v22;
    v24 = v19[6];
    v26 = v19[3];
    v25 = v19[4];
    *(v0 + 272) = v19[5];
    *(v0 + 288) = v24;
    *(v0 + 240) = v26;
    *(v0 + 256) = v25;
    v27 = v19[10];
    v29 = v19[7];
    v28 = v19[8];
    *(v0 + 336) = v19[9];
    *(v0 + 352) = v27;
    *(v0 + 304) = v29;
    *(v0 + 320) = v28;
    v30 = sub_1B80C8CCC();
    v42 = *(v0 + 464);
    v43 = *(v0 + 440);
    v51 = v30;
    v45 = v44;

    v52 = v17;
    v46 = sub_1B80C8D1C();
    v47 = sub_1B80C8D1C();
    v48 = swift_allocObject();
    *(v48 + 16) = v43;
    *(v48 + 24) = v42;
    *(v0 + 400) = sub_1B8010BD8;
    *(v0 + 408) = v48;
    *(v0 + 368) = MEMORY[0x1E69E9820];
    *(v0 + 376) = 1107296256;
    *(v0 + 384) = sub_1B8004E28;
    *(v0 + 392) = &block_descriptor_192;
    v49 = _Block_copy((v0 + 368));
    v50 = *(v0 + 408);

    [v3 offerExpirationForHandle:v46 fromHandle:v47 completion:v49];
    _Block_release(v49);

    sub_1B7FC3CCC(v51, v45);
    sub_1B7FC3CCC(v52, v18);
    swift_unknownObjectRelease();
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_1B8004324()
{
  v15 = v0;
  v1 = v0[59];

  v2 = v0[61];
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDE78);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1B7FB84FC(0xD000000000000020, 0x80000001B80CC640, &v14);
    *(v7 + 12) = 2114;
    v10 = sub_1B80C8CFC();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "Failed to create proxy in %{public}s: %{public}@", v7, 0x16u);
    sub_1B7FB86D4(v8, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    MEMORY[0x1B8CB8970](v7, -1, -1);
  }

  v11 = v0[55];
  v0[53] = v2;
  sub_1B80C8ACC();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1B8004524(void *a1)
{
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000020, 0x80000001B80CC640, &v11);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Proxy error in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = a1;
  return sub_1B80C8ACC();
}

void sub_1B80046E4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v54[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v54[-v11];
  v13 = sub_1B80C8E2C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v54[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v54[-v19];
  if (a2)
  {
    v21 = a2;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v22 = sub_1B80C900C();
    __swift_project_value_buffer(v22, qword_1ED8DDE78);
    v23 = a2;
    v24 = sub_1B80C8FEC();
    v25 = sub_1B80C93FC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v61 = v27;
      *v26 = 136446466;
      *(v26 + 4) = sub_1B7FB84FC(0xD000000000000020, 0x80000001B80CC640, &v61);
      *(v26 + 12) = 2082;
      v60 = a2;
      v28 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v29 = sub_1B80C90EC();
      v31 = sub_1B7FB84FC(v29, v30, &v61);

      *(v26 + 14) = v31;
      _os_log_impl(&dword_1B7FB5000, v24, v25, "%{public}s error %{public}s!", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v27, -1, -1);
      MEMORY[0x1B8CB8970](v26, -1, -1);
    }

    v61 = a2;
    sub_1B80C8ACC();
    v32 = a2;
LABEL_13:

    return;
  }

  sub_1B7FD6818(a1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1B7FB86D4(v12, &unk_1EBA65FD0, &unk_1B80D1920);
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v33 = sub_1B80C900C();
    __swift_project_value_buffer(v33, qword_1ED8DDE78);
    v34 = sub_1B80C8FEC();
    v35 = sub_1B80C93FC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v61 = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_1B7FB84FC(0xD000000000000020, 0x80000001B80CC640, &v61);
      _os_log_impl(&dword_1B7FB5000, v34, v35, "Received nil response for %{public}s!", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x1B8CB8970](v37, -1, -1);
      MEMORY[0x1B8CB8970](v36, -1, -1);
    }

    sub_1B8010040();
    v38 = swift_allocError();
    *v39 = 1;
    v61 = v38;
    sub_1B80C8ACC();
    v32 = v38;
    goto LABEL_13;
  }

  v59 = a3;
  (*(v14 + 32))(v20, v12, v13);
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v40 = sub_1B80C900C();
  __swift_project_value_buffer(v40, qword_1ED8DDE78);
  v58 = *(v14 + 16);
  v58(v18, v20, v13);
  v41 = sub_1B80C8FEC();
  v42 = sub_1B80C941C();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v61 = v57;
    *v43 = 136446466;
    *(v43 + 4) = sub_1B7FB84FC(0xD000000000000020, 0x80000001B80CC640, &v61);
    *(v43 + 12) = 2080;
    sub_1B8011BA4(&qword_1EBA66038, MEMORY[0x1E6969530]);
    v56 = v41;
    v44 = sub_1B80C97FC();
    v46 = v45;
    v47 = *(v14 + 8);
    v55 = v42;
    v48 = v18;
    v49 = v47;
    v47(v48, v13);
    v50 = sub_1B7FB84FC(v44, v46, &v61);

    *(v43 + 14) = v50;
    v51 = v56;
    _os_log_impl(&dword_1B7FB5000, v56, v55, "%{public}s succeeded: %s", v43, 0x16u);
    v52 = v57;
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v52, -1, -1);
    MEMORY[0x1B8CB8970](v43, -1, -1);
  }

  else
  {

    v53 = v18;
    v49 = *(v14 + 8);
    v49(v53, v13);
  }

  v58(v10, v20, v13);
  (*(v14 + 56))(v10, 0, 1, v13);
  sub_1B80C8ADC();
  sub_1B7FB86D4(v10, &unk_1EBA65FD0, &unk_1B80D1920);
  v49(v20, v13);
}

uint64_t sub_1B8004E28(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    sub_1B80C8DEC();
    v12 = sub_1B80C8E2C();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = sub_1B80C8E2C();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v11(v9, a3);

  return sub_1B7FB86D4(v9, &unk_1EBA65FD0, &unk_1B80D1920);
}

uint64_t sub_1B8004F7C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 208) = a4;
  *(v5 + 216) = v4;
  *(v5 + 192) = a1;
  *(v5 + 200) = a3;
  *(v5 + 224) = *v4;
  v6 = a2[9];
  *(v5 + 144) = a2[8];
  *(v5 + 160) = v6;
  *(v5 + 176) = a2[10];
  v7 = a2[5];
  *(v5 + 80) = a2[4];
  *(v5 + 96) = v7;
  v8 = a2[7];
  *(v5 + 112) = a2[6];
  *(v5 + 128) = v8;
  v9 = a2[1];
  *(v5 + 16) = *a2;
  *(v5 + 32) = v9;
  v10 = a2[3];
  *(v5 + 48) = a2[2];
  *(v5 + 64) = v10;
  return MEMORY[0x1EEE6DFA0](sub_1B8004FF8, v4, 0);
}

uint64_t sub_1B8004FF8()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v9 = *(v0 + 200);
  v3 = swift_task_alloc();
  *(v0 + 232) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v0 + 16;
  *(v3 + 32) = v9;
  *(v3 + 48) = v1;
  v4 = *(MEMORY[0x1E699C830] + 4);
  v5 = swift_task_alloc();
  *(v0 + 240) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  *v5 = v0;
  v5[1] = sub_1B8005118;
  v7 = *(v0 + 192);

  return MEMORY[0x1EEE04418](v7, 0xD00000000000001DLL, 0x80000001B80CC600, sub_1B8011CE4, v3, v6);
}

uint64_t sub_1B8005118()
{
  v2 = *(*v1 + 240);
  v3 = *v1;
  v3[31] = v0;

  if (v0)
  {
    v4 = v3[27];

    return MEMORY[0x1EEE6DFA0](sub_1B8005254, v4, 0);
  }

  else
  {
    v5 = v3[29];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1B8005254()
{
  v1 = v0[29];

  v2 = v0[1];
  v3 = v0[31];

  return v2();
}

uint64_t sub_1B80052B8(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v24[-v14];
  v16 = sub_1B80C92CC();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = a2;
  *(v17 + 40) = a1;
  v18 = a3[9];
  *(v17 + 176) = a3[8];
  *(v17 + 192) = v18;
  *(v17 + 208) = a3[10];
  v19 = a3[5];
  *(v17 + 112) = a3[4];
  *(v17 + 128) = v19;
  v20 = a3[7];
  *(v17 + 144) = a3[6];
  *(v17 + 160) = v20;
  v21 = a3[1];
  *(v17 + 48) = *a3;
  *(v17 + 64) = v21;
  v22 = a3[3];
  *(v17 + 80) = a3[2];
  *(v17 + 96) = v22;
  *(v17 + 224) = a4;
  *(v17 + 232) = a5;
  *(v17 + 240) = a6;

  sub_1B7FC8DA4(a3, v24);

  sub_1B80A1D3C(0, 0, v15, &unk_1B80D2A48, v17);
}

uint64_t sub_1B8005448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[36] = a8;
  v8[37] = v10;
  v8[34] = a6;
  v8[35] = a7;
  v8[32] = a4;
  v8[33] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B8005478, 0, 0);
}

uint64_t sub_1B8005478()
{
  v1 = v0[37];
  v2 = v0[33];
  v3 = swift_allocObject();
  v0[38] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E699C838] + 4);

  v5 = swift_task_alloc();
  v0[39] = v5;
  v6 = _s20FriendshipConnectionCMa();
  v7 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa);
  *v5 = v0;
  v5[1] = sub_1B80055B0;
  v8 = v0[32];

  return MEMORY[0x1EEE04428](v0 + 30, sub_1B8010ADC, v3, v6, v7);
}

uint64_t sub_1B80055B0()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v7 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = sub_1B8005A6C;
  }

  else
  {
    v5 = *(v2 + 304);

    v4 = sub_1B80056CC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B80056CC()
{
  v41 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 272);
  v3 = *(v0 + 240);
  v4 = sub_1B80C8CEC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1B80C8CDC();
  v8 = v2[1];
  v7 = v2[2];
  *(v0 + 16) = *v2;
  *(v0 + 32) = v8;
  *(v0 + 48) = v7;
  v9 = v2[6];
  v11 = v2[3];
  v10 = v2[4];
  *(v0 + 96) = v2[5];
  *(v0 + 112) = v9;
  *(v0 + 64) = v11;
  *(v0 + 80) = v10;
  v12 = v2[10];
  v14 = v2[7];
  v13 = v2[8];
  *(v0 + 160) = v2[9];
  *(v0 + 176) = v12;
  *(v0 + 128) = v14;
  *(v0 + 144) = v13;
  sub_1B7FDC224();
  v15 = sub_1B80C8CCC();
  if (v1)
  {

    swift_unknownObjectRelease();
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v17 = sub_1B80C900C();
    __swift_project_value_buffer(v17, qword_1ED8DDE78);
    v18 = v1;
    v19 = sub_1B80C8FEC();
    v20 = sub_1B80C93FC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v40 = v23;
      *v21 = 136446466;
      *(v21 + 4) = sub_1B7FB84FC(0xD00000000000001DLL, 0x80000001B80CC600, &v40);
      *(v21 + 12) = 2114;
      v24 = sub_1B80C8CFC();
      *(v21 + 14) = v24;
      *v22 = v24;
      _os_log_impl(&dword_1B7FB5000, v19, v20, "Failed to create proxy in %{public}s: %{public}@", v21, 0x16u);
      sub_1B7FB86D4(v22, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1B8CB8970](v23, -1, -1);
      MEMORY[0x1B8CB8970](v21, -1, -1);
    }

    v25 = *(v0 + 264);
    *(v0 + 248) = v1;
    sub_1B80C8ACC();
  }

  else
  {
    v26 = v15;
    v27 = v16;
    v28 = *(v0 + 288);

    v29 = sub_1B80C8D1C();
    if (v28)
    {
      v30 = *(v0 + 280);
      v31 = *(v0 + 288);
      v32 = sub_1B80C90AC();
    }

    else
    {
      v32 = 0;
    }

    v33 = *(v0 + 296);
    v34 = *(v0 + 264);
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = v33;
    *(v0 + 224) = sub_1B8010AE4;
    *(v0 + 232) = v35;
    *(v0 + 192) = MEMORY[0x1E69E9820];
    *(v0 + 200) = 1107296256;
    *(v0 + 208) = sub_1B8004E28;
    *(v0 + 216) = &block_descriptor_176;
    v36 = _Block_copy((v0 + 192));
    v37 = *(v0 + 232);

    [v3 offerExpirationForHandle:v29 groupId:v32 completion:v36];
    _Block_release(v36);

    sub_1B7FC3CCC(v26, v27);
    swift_unknownObjectRelease();
  }

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1B8005A6C()
{
  v15 = v0;
  v1 = v0[38];

  v2 = v0[40];
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDE78);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1B7FB84FC(0xD00000000000001DLL, 0x80000001B80CC600, &v14);
    *(v7 + 12) = 2114;
    v10 = sub_1B80C8CFC();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "Failed to create proxy in %{public}s: %{public}@", v7, 0x16u);
    sub_1B7FB86D4(v8, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    MEMORY[0x1B8CB8970](v7, -1, -1);
  }

  v11 = v0[33];
  v0[31] = v2;
  sub_1B80C8ACC();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1B8005C6C(void *a1)
{
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000001DLL, 0x80000001B80CC600, &v11);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Proxy error in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = a1;
  return sub_1B80C8ACC();
}

void sub_1B8005E2C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - v9;
  if (a2)
  {
    v11 = a2;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v12 = sub_1B80C900C();
    __swift_project_value_buffer(v12, qword_1ED8DDE78);
    v13 = a2;
    v14 = sub_1B80C8FEC();
    v15 = sub_1B80C93FC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v32 = v17;
      *v16 = 136446466;
      *(v16 + 4) = sub_1B7FB84FC(0xD00000000000001DLL, 0x80000001B80CC600, &v32);
      *(v16 + 12) = 2082;
      v31 = a2;
      v18 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v19 = sub_1B80C90EC();
      v21 = sub_1B7FB84FC(v19, v20, &v32);

      *(v16 + 14) = v21;
      _os_log_impl(&dword_1B7FB5000, v14, v15, "%{public}s error %{public}s!", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v17, -1, -1);
      MEMORY[0x1B8CB8970](v16, -1, -1);
    }

    v32 = a2;
    sub_1B80C8ACC();
  }

  else
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v22 = sub_1B80C900C();
    __swift_project_value_buffer(v22, qword_1ED8DDE78);
    sub_1B7FD6818(a1, v10);
    v23 = sub_1B80C8FEC();
    v24 = sub_1B80C941C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v25 = 136446466;
      *(v25 + 4) = sub_1B7FB84FC(0xD00000000000001DLL, 0x80000001B80CC600, &v32);
      *(v25 + 12) = 2080;
      sub_1B7FD6818(v10, v8);
      v27 = sub_1B80C90EC();
      v29 = v28;
      sub_1B7FB86D4(v10, &unk_1EBA65FD0, &unk_1B80D1920);
      v30 = sub_1B7FB84FC(v27, v29, &v32);

      *(v25 + 14) = v30;
      _os_log_impl(&dword_1B7FB5000, v23, v24, "%{public}s succeeded: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v26, -1, -1);
      MEMORY[0x1B8CB8970](v25, -1, -1);
    }

    else
    {

      sub_1B7FB86D4(v10, &unk_1EBA65FD0, &unk_1B80D1920);
    }

    sub_1B80C8ADC();
  }
}

uint64_t sub_1B800624C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B8006298, v2, 0);
}

uint64_t sub_1B8006298()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2[2].i64[0] = v1;
  v3 = *(MEMORY[0x1E699C830] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = type metadata accessor for FriendshipRequestResult();
  *v4 = v0;
  v4[1] = sub_1B8006398;
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE04418](v6, 0xD000000000000017, 0x80000001B80CC5E0, sub_1B8011C88, v2, v5);
}

uint64_t sub_1B8006398()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {
    v4 = v3[4];

    return MEMORY[0x1EEE6DFA0](sub_1B8011C50, v4, 0);
  }

  else
  {
    v5 = v3[6];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1B80064D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B80064F8, 0, 0);
}

uint64_t sub_1B80064F8()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = swift_allocObject();
  v0[14] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E699C838] + 4);

  v5 = swift_task_alloc();
  v0[15] = v5;
  v6 = _s20FriendshipConnectionCMa();
  v7 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa);
  *v5 = v0;
  v5[1] = sub_1B8006630;
  v8 = v0[10];

  return MEMORY[0x1EEE04428](v0 + 8, sub_1B80109DC, v3, v6, v7);
}

uint64_t sub_1B8006630()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_1B8006AC8;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_1B800674C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B800674C()
{
  v29 = v0;
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[8];
  v4 = sub_1B80C8CEC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1B80C8CDC();
  type metadata accessor for FriendshipRequest();
  sub_1B8011BA4(&qword_1EBA66028, type metadata accessor for FriendshipRequest);
  v7 = sub_1B80C8CCC();
  if (v1)
  {

    swift_unknownObjectRelease();
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v9 = sub_1B80C900C();
    __swift_project_value_buffer(v9, qword_1ED8DDE78);
    v10 = v1;
    v11 = sub_1B80C8FEC();
    v12 = sub_1B80C93FC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v28 = v15;
      *v13 = 136446466;
      *(v13 + 4) = sub_1B7FB84FC(0xD000000000000017, 0x80000001B80CC5E0, &v28);
      *(v13 + 12) = 2114;
      v16 = sub_1B80C8CFC();
      *(v13 + 14) = v16;
      *v14 = v16;
      _os_log_impl(&dword_1B7FB5000, v11, v12, "Failed to create proxy in %{public}s: %{public}@", v13, 0x16u);
      sub_1B7FB86D4(v14, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1B8CB8970](v15, -1, -1);
      MEMORY[0x1B8CB8970](v13, -1, -1);
    }

    v17 = v0[11];
    v0[9] = v1;
    sub_1B80C8ACC();
  }

  else
  {
    v18 = v0[13];
    v19 = v0[11];
    v20 = v7;
    v21 = v8;

    v22 = sub_1B80C8D1C();
    v23 = swift_allocObject();
    *(v23 + 16) = v19;
    *(v23 + 24) = v18;
    v0[6] = sub_1B80109E4;
    v0[7] = v23;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1B7FC5CCC;
    v0[5] = &block_descriptor_160;
    v24 = _Block_copy(v0 + 2);
    v25 = v0[7];

    [v3 sendFriendshipOffer:v22 completion:v24];
    _Block_release(v24);

    sub_1B7FC3CCC(v20, v21);
    swift_unknownObjectRelease();
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_1B8006AC8()
{
  v15 = v0;
  v1 = v0[14];

  v2 = v0[16];
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDE78);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1B7FB84FC(0xD000000000000017, 0x80000001B80CC5E0, &v14);
    *(v7 + 12) = 2114;
    v10 = sub_1B80C8CFC();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "Failed to create proxy in %{public}s: %{public}@", v7, 0x16u);
    sub_1B7FB86D4(v8, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    MEMORY[0x1B8CB8970](v7, -1, -1);
  }

  v11 = v0[11];
  v0[9] = v2;
  sub_1B80C8ACC();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1B8006CC8(void *a1)
{
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000017, 0x80000001B80CC5E0, &v11);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Proxy error in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = a1;
  return sub_1B80C8ACC();
}

void sub_1B8006E88(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = type metadata accessor for FriendshipRequestResult();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v42 - v11;
  if (a3)
  {
    v13 = a3;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v14 = sub_1B80C900C();
    __swift_project_value_buffer(v14, qword_1ED8DDE78);
    v15 = a3;
    v16 = sub_1B80C8FEC();
    v17 = sub_1B80C93FC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v43 = v19;
      *v18 = 136446466;
      *(v18 + 4) = sub_1B7FB84FC(0xD000000000000017, 0x80000001B80CC5E0, &v43);
      *(v18 + 12) = 2082;
      v42[1] = a3;
      v20 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v21 = sub_1B80C90EC();
      v23 = sub_1B7FB84FC(v21, v22, &v43);

      *(v18 + 14) = v23;
      _os_log_impl(&dword_1B7FB5000, v16, v17, "%{public}s error %{public}s!", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v19, -1, -1);
      MEMORY[0x1B8CB8970](v18, -1, -1);
    }

    v43 = a3;
LABEL_13:
    sub_1B80C8ACC();

    return;
  }

  if (a2 >> 60 == 15)
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v24 = sub_1B80C900C();
    __swift_project_value_buffer(v24, qword_1ED8DDE78);
    v25 = sub_1B80C8FEC();
    v26 = sub_1B80C93FC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v43 = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_1B7FB84FC(0xD000000000000017, 0x80000001B80CC5E0, &v43);
      _os_log_impl(&dword_1B7FB5000, v25, v26, "Received nil response for %{public}s!", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x1B8CB8970](v28, -1, -1);
      MEMORY[0x1B8CB8970](v27, -1, -1);
    }

    sub_1B8010040();
    a3 = swift_allocError();
    *v29 = 1;
    v43 = a3;
    goto LABEL_13;
  }

  v30 = sub_1B80C8CBC();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  sub_1B7FC62D8(a1, a2);
  sub_1B80C8CAC();
  sub_1B8011BA4(&qword_1EBA66030, type metadata accessor for FriendshipRequestResult);
  sub_1B80C8C9C();

  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v33 = sub_1B80C900C();
  __swift_project_value_buffer(v33, qword_1ED8DDE78);
  sub_1B8010450(v12, v10, type metadata accessor for FriendshipRequestResult);
  v34 = sub_1B80C8FEC();
  v35 = sub_1B80C941C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v42[0] = swift_slowAlloc();
    v43 = v42[0];
    *v36 = 136446466;
    *(v36 + 4) = sub_1B7FB84FC(0xD000000000000017, 0x80000001B80CC5E0, &v43);
    *(v36 + 12) = 2080;
    v37 = FriendshipRequestResult.description.getter();
    v39 = v38;
    sub_1B80117B8(v10, type metadata accessor for FriendshipRequestResult);
    v40 = sub_1B7FB84FC(v37, v39, &v43);

    *(v36 + 14) = v40;
    _os_log_impl(&dword_1B7FB5000, v34, v35, "%{public}s succeeded: %s", v36, 0x16u);
    v41 = v42[0];
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v41, -1, -1);
    MEMORY[0x1B8CB8970](v36, -1, -1);
  }

  else
  {

    sub_1B80117B8(v10, type metadata accessor for FriendshipRequestResult);
  }

  sub_1B80C8ADC();
  sub_1B7FC72F8(a1, a2);
  sub_1B80117B8(v12, type metadata accessor for FriendshipRequestResult);
}

uint64_t sub_1B800764C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B8007698, v2, 0);
}

uint64_t sub_1B8007698()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2[2].i64[0] = v1;
  v3 = *(MEMORY[0x1E699C830] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = type metadata accessor for FriendshipRequestResult();
  *v4 = v0;
  v4[1] = sub_1B8006398;
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE04418](v6, 0xD000000000000018, 0x80000001B80CC5C0, sub_1B8011C84, v2, v5);
}

uint64_t sub_1B8007798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for FriendshipRequest();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v22 - v16;
  v18 = sub_1B80C92CC();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_1B8010450(a3, &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FriendshipRequest);
  v19 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a2;
  v20[5] = a1;
  sub_1B8010290(&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  *(v20 + ((v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;

  sub_1B80A1D3C(0, 0, v17, a6, v20);
}

uint64_t sub_1B800797C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B80079A0, 0, 0);
}

uint64_t sub_1B80079A0()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = swift_allocObject();
  v0[14] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E699C838] + 4);

  v5 = swift_task_alloc();
  v0[15] = v5;
  v6 = _s20FriendshipConnectionCMa();
  v7 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa);
  *v5 = v0;
  v5[1] = sub_1B8007AD8;
  v8 = v0[10];

  return MEMORY[0x1EEE04428](v0 + 8, sub_1B801062C, v3, v6, v7);
}

uint64_t sub_1B8007AD8()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_1B8007F70;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_1B8007BF4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B8007BF4()
{
  v29 = v0;
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[8];
  v4 = sub_1B80C8CEC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1B80C8CDC();
  type metadata accessor for FriendshipRequest();
  sub_1B8011BA4(&qword_1EBA66028, type metadata accessor for FriendshipRequest);
  v7 = sub_1B80C8CCC();
  if (v1)
  {

    swift_unknownObjectRelease();
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v9 = sub_1B80C900C();
    __swift_project_value_buffer(v9, qword_1ED8DDE78);
    v10 = v1;
    v11 = sub_1B80C8FEC();
    v12 = sub_1B80C93FC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v28 = v15;
      *v13 = 136446466;
      *(v13 + 4) = sub_1B7FB84FC(0xD000000000000018, 0x80000001B80CC5C0, &v28);
      *(v13 + 12) = 2114;
      v16 = sub_1B80C8CFC();
      *(v13 + 14) = v16;
      *v14 = v16;
      _os_log_impl(&dword_1B7FB5000, v11, v12, "Failed to create proxy in %{public}s: %{public}@", v13, 0x16u);
      sub_1B7FB86D4(v14, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1B8CB8970](v15, -1, -1);
      MEMORY[0x1B8CB8970](v13, -1, -1);
    }

    v17 = v0[11];
    v0[9] = v1;
    sub_1B80C8ACC();
  }

  else
  {
    v18 = v0[13];
    v19 = v0[11];
    v20 = v7;
    v21 = v8;

    v22 = sub_1B80C8D1C();
    v23 = swift_allocObject();
    *(v23 + 16) = v19;
    *(v23 + 24) = v18;
    v0[6] = sub_1B8010634;
    v0[7] = v23;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1B7FC5CCC;
    v0[5] = &block_descriptor_144;
    v24 = _Block_copy(v0 + 2);
    v25 = v0[7];

    [v3 sendFriendshipInvite:v22 completion:v24];
    _Block_release(v24);

    sub_1B7FC3CCC(v20, v21);
    swift_unknownObjectRelease();
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_1B8007F70()
{
  v15 = v0;
  v1 = v0[14];

  v2 = v0[16];
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDE78);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1B7FB84FC(0xD000000000000018, 0x80000001B80CC5C0, &v14);
    *(v7 + 12) = 2114;
    v10 = sub_1B80C8CFC();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "Failed to create proxy in %{public}s: %{public}@", v7, 0x16u);
    sub_1B7FB86D4(v8, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    MEMORY[0x1B8CB8970](v7, -1, -1);
  }

  v11 = v0[11];
  v0[9] = v2;
  sub_1B80C8ACC();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1B8008170(void *a1)
{
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000018, 0x80000001B80CC5C0, &v11);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Proxy error in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = a1;
  return sub_1B80C8ACC();
}

void sub_1B8008330(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = type metadata accessor for FriendshipRequestResult();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v42 - v11;
  if (a3)
  {
    v13 = a3;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v14 = sub_1B80C900C();
    __swift_project_value_buffer(v14, qword_1ED8DDE78);
    v15 = a3;
    v16 = sub_1B80C8FEC();
    v17 = sub_1B80C93FC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v43 = v19;
      *v18 = 136446466;
      *(v18 + 4) = sub_1B7FB84FC(0xD000000000000018, 0x80000001B80CC5C0, &v43);
      *(v18 + 12) = 2082;
      v42[1] = a3;
      v20 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v21 = sub_1B80C90EC();
      v23 = sub_1B7FB84FC(v21, v22, &v43);

      *(v18 + 14) = v23;
      _os_log_impl(&dword_1B7FB5000, v16, v17, "%{public}s error %{public}s!", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v19, -1, -1);
      MEMORY[0x1B8CB8970](v18, -1, -1);
    }

    v43 = a3;
LABEL_13:
    sub_1B80C8ACC();

    return;
  }

  if (a2 >> 60 == 15)
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v24 = sub_1B80C900C();
    __swift_project_value_buffer(v24, qword_1ED8DDE78);
    v25 = sub_1B80C8FEC();
    v26 = sub_1B80C93FC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v43 = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_1B7FB84FC(0xD000000000000018, 0x80000001B80CC5C0, &v43);
      _os_log_impl(&dword_1B7FB5000, v25, v26, "Received nil response for %{public}s!", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x1B8CB8970](v28, -1, -1);
      MEMORY[0x1B8CB8970](v27, -1, -1);
    }

    sub_1B8010040();
    a3 = swift_allocError();
    *v29 = 1;
    v43 = a3;
    goto LABEL_13;
  }

  v30 = sub_1B80C8CBC();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  sub_1B7FC62D8(a1, a2);
  sub_1B80C8CAC();
  sub_1B8011BA4(&qword_1EBA66030, type metadata accessor for FriendshipRequestResult);
  sub_1B80C8C9C();

  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v33 = sub_1B80C900C();
  __swift_project_value_buffer(v33, qword_1ED8DDE78);
  sub_1B8010450(v12, v10, type metadata accessor for FriendshipRequestResult);
  v34 = sub_1B80C8FEC();
  v35 = sub_1B80C941C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v42[0] = swift_slowAlloc();
    v43 = v42[0];
    *v36 = 136446466;
    *(v36 + 4) = sub_1B7FB84FC(0xD000000000000018, 0x80000001B80CC5C0, &v43);
    *(v36 + 12) = 2080;
    v37 = FriendshipRequestResult.description.getter();
    v39 = v38;
    sub_1B80117B8(v10, type metadata accessor for FriendshipRequestResult);
    v40 = sub_1B7FB84FC(v37, v39, &v43);

    *(v36 + 14) = v40;
    _os_log_impl(&dword_1B7FB5000, v34, v35, "%{public}s succeeded: %s", v36, 0x16u);
    v41 = v42[0];
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v41, -1, -1);
    MEMORY[0x1B8CB8970](v36, -1, -1);
  }

  else
  {

    sub_1B80117B8(v10, type metadata accessor for FriendshipRequestResult);
  }

  sub_1B80C8ADC();
  sub_1B7FC72F8(a1, a2);
  sub_1B80117B8(v12, type metadata accessor for FriendshipRequestResult);
}

uint64_t sub_1B8008AF4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B8008B40, v2, 0);
}

uint64_t sub_1B8008B40()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x1E699C830] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = type metadata accessor for FriendshipRequestResult();
  *v4 = v0;
  v4[1] = sub_1B8006398;
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE04418](v6, 0xD00000000000001ALL, 0x80000001B80CC6C0, sub_1B8011C80, v2, v5);
}

uint64_t sub_1B8008C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v8 = type metadata accessor for FriendshipRequest();
  v7[14] = v8;
  v9 = *(v8 - 8);
  v7[15] = v9;
  v7[16] = *(v9 + 64);
  v7[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8008D08, 0, 0);
}

uint64_t sub_1B8008D08()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v3 = sub_1B80C8CEC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1B80C8CDC();
  sub_1B8011BA4(&qword_1EBA66028, type metadata accessor for FriendshipRequest);
  *(v0 + 144) = sub_1B80C8CCC();
  *(v0 + 152) = v6;
  v14 = *(v0 + 96);

  v7 = swift_allocObject();
  *(v0 + 160) = v7;
  *(v7 + 16) = v14;
  v8 = *(MEMORY[0x1E699C838] + 4);

  v9 = swift_task_alloc();
  *(v0 + 168) = v9;
  v10 = _s20FriendshipConnectionCMa();
  v11 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa);
  *v9 = v0;
  v9[1] = sub_1B80090A4;
  v12 = *(v0 + 88);

  return MEMORY[0x1EEE04428](v0 + 72, sub_1B80116F8, v7, v10, v11);
}

uint64_t sub_1B80090A4()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_1B8009370;
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = sub_1B80091C0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B80091C0()
{
  v16 = v0[18];
  v17 = v0[19];
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[9];
  v7 = v0[10];
  v8 = sub_1B80C8D1C();
  sub_1B8010450(v7, v1, type metadata accessor for FriendshipRequest);
  v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  sub_1B8010290(v1, v10 + v9);
  *(v10 + ((v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;
  v0[6] = sub_1B8011700;
  v0[7] = v10;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FC5CCC;
  v0[5] = &block_descriptor_269;
  v11 = _Block_copy(v0 + 2);
  v12 = v0[7];

  [v6 respondToInviteRequest:v8 completion:v11];
  _Block_release(v11);

  swift_unknownObjectRelease();
  sub_1B7FC3CCC(v16, v17);
  v13 = v0[17];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1B8009370()
{
  v16 = v0;
  v1 = v0[20];
  sub_1B7FC3CCC(v0[18], v0[19]);

  v2 = v0[22];
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDE78);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1B7FB84FC(0xD00000000000001ALL, 0x80000001B80CC6C0, &v15);
    *(v7 + 12) = 2114;
    v10 = sub_1B80C8CFC();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "Failed to create proxy in %{public}s: %{public}@", v7, 0x16u);
    sub_1B7FB86D4(v8, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    MEMORY[0x1B8CB8970](v7, -1, -1);
  }

  v11 = v0[12];
  v0[8] = v2;
  sub_1B80C8ACC();

  v12 = v0[17];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1B8009584(void *a1)
{
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000001ALL, 0x80000001B80CC6C0, &v11);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Proxy error in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = a1;
  return sub_1B80C8ACC();
}

void sub_1B8009744(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for FriendshipRequest();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v59[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for FriendshipRequestResult();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v59[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v59[-v18];
  if (a3)
  {
    v20 = a3;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v21 = sub_1B80C900C();
    __swift_project_value_buffer(v21, qword_1ED8DDE78);
    v22 = a3;
    v23 = sub_1B80C8FEC();
    v24 = sub_1B80C93FC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v64 = v26;
      *v25 = 136446466;
      *(v25 + 4) = sub_1B7FB84FC(0xD00000000000001ALL, 0x80000001B80CC6C0, &v64);
      *(v25 + 12) = 2082;
      v63 = a3;
      v27 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v28 = sub_1B80C90EC();
      v30 = sub_1B7FB84FC(v28, v29, &v64);

      *(v25 + 14) = v30;
      _os_log_impl(&dword_1B7FB5000, v23, v24, "%{public}s error %{public}s!", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v26, -1, -1);
      MEMORY[0x1B8CB8970](v25, -1, -1);
    }

    v64 = a3;
LABEL_13:
    sub_1B80C8ACC();

    return;
  }

  if (a2 >> 60 == 15)
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v31 = sub_1B80C900C();
    __swift_project_value_buffer(v31, qword_1ED8DDE78);
    v32 = sub_1B80C8FEC();
    v33 = sub_1B80C93FC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v64 = v35;
      *v34 = 136446210;
      *(v34 + 4) = sub_1B7FB84FC(0xD00000000000001ALL, 0x80000001B80CC6C0, &v64);
      _os_log_impl(&dword_1B7FB5000, v32, v33, "Received nil response for %{public}s!", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x1B8CB8970](v35, -1, -1);
      MEMORY[0x1B8CB8970](v34, -1, -1);
    }

    sub_1B8010040();
    a3 = swift_allocError();
    *v36 = 1;
    v64 = a3;
    goto LABEL_13;
  }

  v37 = sub_1B80C8CBC();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  sub_1B7FC62D8(a1, a2);
  sub_1B80C8CAC();
  sub_1B8011BA4(&qword_1EBA66030, type metadata accessor for FriendshipRequestResult);
  sub_1B80C8C9C();

  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v40 = sub_1B80C900C();
  __swift_project_value_buffer(v40, qword_1ED8DDE78);
  sub_1B8010450(v19, v17, type metadata accessor for FriendshipRequestResult);
  v41 = sub_1B80C8FEC();
  v42 = sub_1B80C941C();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v64 = v62;
    *v43 = 136446466;
    *(v43 + 4) = sub_1B7FB84FC(0xD00000000000001ALL, 0x80000001B80CC6C0, &v64);
    *(v43 + 12) = 2080;
    v61 = v41;
    v44 = FriendshipRequestResult.description.getter();
    v60 = v42;
    v46 = v45;
    sub_1B80117B8(v17, type metadata accessor for FriendshipRequestResult);
    v47 = sub_1B7FB84FC(v44, v46, &v64);

    *(v43 + 14) = v47;
    v48 = v61;
    _os_log_impl(&dword_1B7FB5000, v61, v60, "%{public}s succeeded: %s", v43, 0x16u);
    v49 = v62;
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v49, -1, -1);
    MEMORY[0x1B8CB8970](v43, -1, -1);
  }

  else
  {

    sub_1B80117B8(v17, type metadata accessor for FriendshipRequestResult);
  }

  sub_1B80C8ADC();
  sub_1B80117B8(v19, type metadata accessor for FriendshipRequestResult);
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v50 = sub_1B80C900C();
  __swift_project_value_buffer(v50, qword_1ED8DDE78);
  sub_1B8010450(a5, v12, type metadata accessor for FriendshipRequest);
  v51 = sub_1B80C8FEC();
  v52 = sub_1B80C93DC();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v64 = v54;
    *v53 = 136315138;
    v55 = FriendshipRequest.description.getter();
    v57 = v56;
    sub_1B80117B8(v12, type metadata accessor for FriendshipRequest);
    v58 = sub_1B7FB84FC(v55, v57, &v64);

    *(v53 + 4) = v58;
    _os_log_impl(&dword_1B7FB5000, v51, v52, "Send respondToInviteRequest %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x1B8CB8970](v54, -1, -1);
    MEMORY[0x1B8CB8970](v53, -1, -1);
    sub_1B7FC72F8(a1, a2);
  }

  else
  {
    sub_1B7FC72F8(a1, a2);

    sub_1B80117B8(v12, type metadata accessor for FriendshipRequest);
  }
}

uint64_t sub_1B800A104(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B800A150, v2, 0);
}

uint64_t sub_1B800A150()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x1E699C830] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = type metadata accessor for FriendshipRequestResult();
  *v4 = v0;
  v4[1] = sub_1B800A24C;
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE04418](v6, 0xD000000000000019, 0x80000001B80CC5A0, sub_1B8011C7C, v2, v5);
}

uint64_t sub_1B800A24C()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {
    v4 = v3[4];

    return MEMORY[0x1EEE6DFA0](sub_1B7FF8E48, v4, 0);
  }

  else
  {
    v5 = v3[6];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1B800A388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a6;
  v10 = type metadata accessor for FriendshipRequest();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v24 - v16;
  v18 = sub_1B80C92CC();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_1B8010450(a2, v13, type metadata accessor for FriendshipRequest);
  v19 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  sub_1B8010290(v13, v22 + v19);
  *(v22 + v20) = a3;
  *(v22 + v21) = a1;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = a4;

  sub_1B80A1D3C(0, 0, v17, v25, v22);
}

uint64_t sub_1B800A584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B800A5A8, 0, 0);
}

uint64_t sub_1B800A5A8()
{
  v1 = *(v0 + 80);
  v2 = sub_1B80C8CEC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1B80C8CDC();
  type metadata accessor for FriendshipRequest();
  sub_1B8011BA4(&qword_1EBA66028, type metadata accessor for FriendshipRequest);
  *(v0 + 112) = sub_1B80C8CCC();
  *(v0 + 120) = v5;
  v13 = *(v0 + 96);

  v6 = swift_allocObject();
  *(v0 + 128) = v6;
  *(v6 + 16) = v13;
  v7 = *(MEMORY[0x1E699C838] + 4);

  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  v9 = _s20FriendshipConnectionCMa();
  v10 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa);
  *v8 = v0;
  v8[1] = sub_1B800A944;
  v11 = *(v0 + 88);

  return MEMORY[0x1EEE04428](v0 + 72, sub_1B8010440, v6, v9, v10);
}

uint64_t sub_1B800A944()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_1B800ABC0;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_1B800AA60;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B800AA60()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[9];
  v10 = *(v0 + 6);
  v4 = sub_1B80C8D1C();
  v5 = swift_allocObject();
  *(v5 + 16) = v10;
  v0[6] = sub_1B8010448;
  v0[7] = v5;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FC5CCC;
  v0[5] = &block_descriptor_128;
  v6 = _Block_copy(v0 + 2);
  v7 = v0[7];

  [v3 stopSharingMyLocation:v4 completion:v6];
  _Block_release(v6);

  swift_unknownObjectRelease();
  sub_1B7FC3CCC(v1, v2);
  v8 = v0[1];

  return v8();
}

uint64_t sub_1B800ABC0()
{
  v15 = v0;
  v1 = v0[16];
  sub_1B7FC3CCC(v0[14], v0[15]);

  v2 = v0[18];
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDE78);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1B7FB84FC(0xD000000000000019, 0x80000001B80CC5A0, &v14);
    *(v7 + 12) = 2114;
    v10 = sub_1B80C8CFC();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "Failed to create proxy in %{public}s: %{public}@", v7, 0x16u);
    sub_1B7FB86D4(v8, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    MEMORY[0x1B8CB8970](v7, -1, -1);
  }

  v11 = v0[12];
  v0[8] = v2;
  sub_1B80C8ACC();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1B800ADCC(void *a1)
{
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000019, 0x80000001B80CC5A0, &v11);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Proxy error in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = a1;
  return sub_1B80C8ACC();
}

void sub_1B800AF8C(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = type metadata accessor for FriendshipRequestResult();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v41 - v11;
  if (a3)
  {
    v13 = a3;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v14 = sub_1B80C900C();
    __swift_project_value_buffer(v14, qword_1ED8DDE78);
    v15 = a3;
    v16 = sub_1B80C8FEC();
    v17 = sub_1B80C93FC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v42 = v20;
      *v18 = 138412546;
      v21 = a3;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v22;
      *v19 = v22;
      *(v18 + 12) = 2082;
      *(v18 + 14) = sub_1B7FB84FC(0xD000000000000019, 0x80000001B80CC5A0, &v42);
      _os_log_impl(&dword_1B7FB5000, v16, v17, "Received error %@ for %{public}s!", v18, 0x16u);
      sub_1B7FB86D4(v19, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x1B8CB8970](v20, -1, -1);
      MEMORY[0x1B8CB8970](v18, -1, -1);
    }

    v42 = a3;
LABEL_13:
    sub_1B80C8ACC();

    return;
  }

  if (a2 >> 60 == 15)
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v23 = sub_1B80C900C();
    __swift_project_value_buffer(v23, qword_1ED8DDE78);
    v24 = sub_1B80C8FEC();
    v25 = sub_1B80C93FC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v42 = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_1B7FB84FC(0xD000000000000019, 0x80000001B80CC5A0, &v42);
      _os_log_impl(&dword_1B7FB5000, v24, v25, "Received nil response for %{public}s!", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1B8CB8970](v27, -1, -1);
      MEMORY[0x1B8CB8970](v26, -1, -1);
    }

    sub_1B8010040();
    a3 = swift_allocError();
    *v28 = 1;
    v42 = a3;
    goto LABEL_13;
  }

  v29 = sub_1B80C8CBC();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  sub_1B7FC62D8(a1, a2);
  sub_1B80C8CAC();
  sub_1B8011BA4(&qword_1EBA66030, type metadata accessor for FriendshipRequestResult);
  sub_1B80C8C9C();

  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v32 = sub_1B80C900C();
  __swift_project_value_buffer(v32, qword_1ED8DDE78);
  sub_1B8010450(v12, v10, type metadata accessor for FriendshipRequestResult);
  v33 = sub_1B80C8FEC();
  v34 = sub_1B80C941C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = v41;
    *v35 = 136446466;
    *(v35 + 4) = sub_1B7FB84FC(0xD000000000000019, 0x80000001B80CC5A0, &v42);
    *(v35 + 12) = 2080;
    v36 = FriendshipRequestResult.description.getter();
    v38 = v37;
    sub_1B80117B8(v10, type metadata accessor for FriendshipRequestResult);
    v39 = sub_1B7FB84FC(v36, v38, &v42);

    *(v35 + 14) = v39;
    _os_log_impl(&dword_1B7FB5000, v33, v34, "%{public}s succeeded: %s", v35, 0x16u);
    v40 = v41;
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v40, -1, -1);
    MEMORY[0x1B8CB8970](v35, -1, -1);
  }

  else
  {

    sub_1B80117B8(v10, type metadata accessor for FriendshipRequestResult);
  }

  sub_1B80C8ADC();
  sub_1B7FC72F8(a1, a2);
  sub_1B80117B8(v12, type metadata accessor for FriendshipRequestResult);
}

uint64_t sub_1B800B748(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B800B794, v2, 0);
}

uint64_t sub_1B800B794()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x1E699C830] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = type metadata accessor for FriendshipRequestResult();
  *v4 = v0;
  v4[1] = sub_1B8006398;
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE04418](v6, 0xD00000000000001ALL, 0x80000001B80CC6C0, sub_1B8011334, v2, v5);
}

uint64_t sub_1B800B890(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B800B8D8, v1, 0);
}

uint64_t sub_1B800B8D8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E699C830] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1B800B9CC;
  v6 = v0[2];

  return MEMORY[0x1EEE04418](v6, 0x6E656972466C6C61, 0xEC00000029287364, sub_1B8011154, v3, &type metadata for FriendContainer);
}

uint64_t sub_1B800B9CC()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {
    v4 = v3[3];

    return MEMORY[0x1EEE6DFA0](sub_1B8011C5C, v4, 0);
  }

  else
  {
    v5 = v3[5];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1B800BB08()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B800BB50, v0, 0);
}

uint64_t sub_1B800BB50()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E699C830] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1B7FFA350;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v5, 0xD000000000000014, 0x80000001B80CC480, sub_1B8011044, v3, v6);
}

uint64_t sub_1B800BC3C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B800BC84, v1, 0);
}

uint64_t sub_1B800BC84()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2[2].i64[0] = v1;
  v3 = *(MEMORY[0x1E699C830] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F80, &qword_1B80D2708);
  *v4 = v0;
  v4[1] = sub_1B800BD90;

  return MEMORY[0x1EEE04418](v0 + 16, 0x2873646E65697266, 0xEE00293A68746977, sub_1B7FF4260, v2, v5);
}

uint64_t sub_1B800BD90()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_1B8011C50;
  }

  else
  {
    v6 = *(v2 + 48);
    v7 = *(v2 + 32);

    v5 = sub_1B8011D04;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B800BEB8(uint64_t a1, uint64_t a2)
{
  *(v3 + 232) = a1;
  *(v3 + 240) = v2;
  *(v3 + 248) = *v2;
  v4 = *(a2 + 176);
  *(v3 + 176) = *(a2 + 160);
  *(v3 + 192) = v4;
  *(v3 + 208) = *(a2 + 192);
  *(v3 + 224) = *(a2 + 208);
  v5 = *(a2 + 112);
  *(v3 + 112) = *(a2 + 96);
  *(v3 + 128) = v5;
  v6 = *(a2 + 144);
  *(v3 + 144) = *(a2 + 128);
  *(v3 + 160) = v6;
  v7 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v7;
  v8 = *(a2 + 80);
  *(v3 + 80) = *(a2 + 64);
  *(v3 + 96) = v8;
  v9 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v9;
  return MEMORY[0x1EEE6DFA0](sub_1B800BF40, v2, 0);
}

uint64_t sub_1B800BF40()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = swift_task_alloc();
  v0[32] = v3;
  v3[2] = v2;
  v3[3] = v0 + 2;
  v3[4] = v1;
  v4 = *(MEMORY[0x1E699C830] + 4);
  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_1B800C040;
  v6 = v0[29];

  return MEMORY[0x1EEE04418](v6, 0xD000000000000013, 0x80000001B80CC670, sub_1B8010BE0, v3, &type metadata for FriendshipState);
}

uint64_t sub_1B800C040()
{
  v2 = *(*v1 + 264);
  v3 = *v1;
  v3[34] = v0;

  if (v0)
  {
    v4 = v3[30];

    return MEMORY[0x1EEE6DFA0](sub_1B8011C54, v4, 0);
  }

  else
  {
    v5 = v3[32];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1B800C17C(uint64_t a1, __int128 *a2, _OWORD *a3)
{
  *(v4 + 368) = a1;
  *(v4 + 376) = v3;
  v5 = *v3;
  v6 = a2[8];
  v7 = a2[9];
  v8 = a2[6];
  *(v4 + 304) = a2[7];
  *(v4 + 320) = v6;
  v9 = a2[10];
  *(v4 + 336) = v7;
  *(v4 + 352) = v9;
  v10 = a2[4];
  v11 = a2[5];
  v12 = a2[2];
  *(v4 + 240) = a2[3];
  *(v4 + 256) = v10;
  *(v4 + 384) = v5;
  *(v4 + 272) = v11;
  *(v4 + 288) = v8;
  v13 = *a2;
  *(v4 + 208) = a2[1];
  *(v4 + 224) = v12;
  v14 = a3[9];
  *(v4 + 144) = a3[8];
  *(v4 + 160) = v14;
  *(v4 + 176) = a3[10];
  *(v4 + 192) = v13;
  v15 = a3[5];
  *(v4 + 80) = a3[4];
  *(v4 + 96) = v15;
  v16 = a3[7];
  *(v4 + 112) = a3[6];
  *(v4 + 128) = v16;
  v17 = a3[1];
  *(v4 + 16) = *a3;
  *(v4 + 32) = v17;
  v18 = a3[3];
  *(v4 + 48) = a3[2];
  *(v4 + 64) = v18;
  return MEMORY[0x1EEE6DFA0](sub_1B800C220, v3, 0);
}

uint64_t sub_1B800C220()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = swift_task_alloc();
  v0[49] = v3;
  v3[2] = v2;
  v3[3] = v0 + 24;
  v3[4] = v0 + 2;
  v3[5] = v1;
  v4 = *(MEMORY[0x1E699C830] + 4);
  v5 = swift_task_alloc();
  v0[50] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  *v5 = v0;
  v5[1] = sub_1B800C334;
  v7 = v0[46];

  return MEMORY[0x1EEE04418](v7, 0xD000000000000020, 0x80000001B80CC640, sub_1B8010AEC, v3, v6);
}

uint64_t sub_1B800C334()
{
  v2 = *(*v1 + 400);
  v3 = *v1;
  v3[51] = v0;

  if (v0)
  {
    v4 = v3[47];

    return MEMORY[0x1EEE6DFA0](sub_1B800C470, v4, 0);
  }

  else
  {
    v5 = v3[49];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1B800C470()
{
  v1 = v0[49];

  v2 = v0[1];
  v3 = v0[51];

  return v2();
}

uint64_t sub_1B800C4D4(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 208) = a4;
  *(v5 + 216) = v4;
  *(v5 + 192) = a1;
  *(v5 + 200) = a3;
  *(v5 + 224) = *v4;
  v6 = a2[9];
  *(v5 + 144) = a2[8];
  *(v5 + 160) = v6;
  *(v5 + 176) = a2[10];
  v7 = a2[5];
  *(v5 + 80) = a2[4];
  *(v5 + 96) = v7;
  v8 = a2[7];
  *(v5 + 112) = a2[6];
  *(v5 + 128) = v8;
  v9 = a2[1];
  *(v5 + 16) = *a2;
  *(v5 + 32) = v9;
  v10 = a2[3];
  *(v5 + 48) = a2[2];
  *(v5 + 64) = v10;
  return MEMORY[0x1EEE6DFA0](sub_1B800C550, v4, 0);
}

uint64_t sub_1B800C550()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v9 = *(v0 + 200);
  v3 = swift_task_alloc();
  *(v0 + 232) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v0 + 16;
  *(v3 + 32) = v9;
  *(v3 + 48) = v1;
  v4 = *(MEMORY[0x1E699C830] + 4);
  v5 = swift_task_alloc();
  *(v0 + 240) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  *v5 = v0;
  v5[1] = sub_1B800C670;
  v7 = *(v0 + 192);

  return MEMORY[0x1EEE04418](v7, 0xD00000000000001DLL, 0x80000001B80CC600, sub_1B80109EC, v3, v6);
}

uint64_t sub_1B800C670()
{
  v2 = *(*v1 + 240);
  v3 = *v1;
  v3[31] = v0;

  if (v0)
  {
    v4 = v3[27];

    return MEMORY[0x1EEE6DFA0](sub_1B8011C58, v4, 0);
  }

  else
  {
    v5 = v3[29];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1B800C7AC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B800C7F8, v2, 0);
}

uint64_t sub_1B800C7F8()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2[2].i64[0] = v1;
  v3 = *(MEMORY[0x1E699C830] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = type metadata accessor for FriendshipRequestResult();
  *v4 = v0;
  v4[1] = sub_1B8006398;
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE04418](v6, 0xD000000000000017, 0x80000001B80CC5E0, sub_1B801063C, v2, v5);
}

uint64_t sub_1B800C8F8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B800C944, v2, 0);
}

uint64_t sub_1B800C944()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2[2].i64[0] = v1;
  v3 = *(MEMORY[0x1E699C830] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = type metadata accessor for FriendshipRequestResult();
  *v4 = v0;
  v4[1] = sub_1B8006398;
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE04418](v6, 0xD000000000000018, 0x80000001B80CC5C0, sub_1B80104B8, v2, v5);
}

uint64_t sub_1B800CA44(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B800CA90, v2, 0);
}

uint64_t sub_1B800CA90()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x1E699C830] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = type metadata accessor for FriendshipRequestResult();
  *v4 = v0;
  v4[1] = sub_1B8006398;
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE04418](v6, 0xD000000000000019, 0x80000001B80CC5A0, sub_1B8010254, v2, v5);
}

uint64_t sub_1B800CB8C(_OWORD *a1)
{
  *(v2 + 200) = v1;
  *(v2 + 208) = *v1;
  v3 = a1[9];
  *(v2 + 144) = a1[8];
  *(v2 + 160) = v3;
  *(v2 + 176) = a1[10];
  v4 = a1[5];
  *(v2 + 80) = a1[4];
  *(v2 + 96) = v4;
  v5 = a1[7];
  *(v2 + 112) = a1[6];
  *(v2 + 128) = v5;
  v6 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v6;
  v7 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v7;
  return MEMORY[0x1EEE6DFA0](sub_1B800CC04, v1, 0);
}

uint64_t sub_1B800CC04()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = swift_task_alloc();
  v0[27] = v3;
  v3[2] = v2;
  v3[3] = v0 + 2;
  v3[4] = v1;
  v4 = *(MEMORY[0x1E699C830] + 4);
  v5 = swift_task_alloc();
  v0[28] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66010, &qword_1B80D29E0);
  *v5 = v0;
  v5[1] = sub_1B800CD14;

  return MEMORY[0x1EEE04418](v0 + 24, 0x656B6F5472656570, 0xEF293A726F66286ELL, sub_1B8010094, v3, v6);
}

uint64_t sub_1B800CD14()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v9 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = *(v2 + 200);
    v5 = sub_1B8011C4C;
  }

  else
  {
    v6 = *(v2 + 216);
    v7 = *(v2 + 200);

    v5 = sub_1B8011C64;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B800CE3C()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B800CE84, v0, 0);
}

uint64_t sub_1B800CE84()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E699C830] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66010, &qword_1B80D29E0);
  *v5 = v0;
  v5[1] = sub_1B800CF88;

  return MEMORY[0x1EEE04418](v0 + 2, 0x6B6F5472656E776FLL, 0xEC00000029286E65, sub_1B800FF38, v3, v6);
}

uint64_t sub_1B800CF88()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_1B8011C5C;
  }

  else
  {
    v6 = *(v2 + 40);
    v7 = *(v2 + 24);

    v5 = sub_1B8011D04;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B800D0B0(_OWORD *a1)
{
  *(v2 + 192) = v1;
  *(v2 + 200) = *v1;
  v3 = a1[9];
  *(v2 + 144) = a1[8];
  *(v2 + 160) = v3;
  *(v2 + 176) = a1[10];
  v4 = a1[5];
  *(v2 + 80) = a1[4];
  *(v2 + 96) = v4;
  v5 = a1[7];
  *(v2 + 112) = a1[6];
  *(v2 + 128) = v5;
  v6 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v6;
  v7 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v7;
  return MEMORY[0x1EEE6DFA0](sub_1B800D128, v1, 0);
}

uint64_t sub_1B800D128()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = swift_task_alloc();
  v0[26] = v3;
  v3[2] = v2;
  v3[3] = v0 + 2;
  v3[4] = v1;
  v4 = *(MEMORY[0x1E699C830] + 4);
  v5 = swift_task_alloc();
  v0[27] = v5;
  *v5 = v0;
  v5[1] = sub_1B800D224;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v5, 0xD000000000000015, 0x80000001B80CC4C0, sub_1B800FE20, v3, v6);
}

uint64_t sub_1B800D224()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v9 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = *(v2 + 192);
    v5 = sub_1B8011C60;
  }

  else
  {
    v6 = *(v2 + 208);
    v7 = *(v2 + 192);

    v5 = sub_1B8011C90;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B800D34C()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B800D394, v0, 0);
}

uint64_t sub_1B800D394()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E699C830] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1B7FFA350;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v5, 0xD000000000000013, 0x80000001B80CC4A0, sub_1B800FD18, v3, v6);
}

uint64_t sub_1B800D480()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B800D4C8, v0, 0);
}

uint64_t sub_1B800D4C8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E699C830] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1B7FFA350;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v5, 0x676E6152706F7473, 0xED00002928676E69, sub_1B800FC10, v3, v6);
}

uint64_t sub_1B800D5BC()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B800D604, v0, 0);
}

uint64_t sub_1B800D604()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E699C830] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1B7FFA350;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v5, 0xD000000000000014, 0x80000001B80CC580, sub_1B800FB08, v3, v6);
}

uint64_t sub_1B800D6F0(_OWORD *a1)
{
  *(v2 + 192) = v1;
  *(v2 + 200) = *v1;
  v3 = a1[9];
  *(v2 + 144) = a1[8];
  *(v2 + 160) = v3;
  *(v2 + 176) = a1[10];
  v4 = a1[5];
  *(v2 + 80) = a1[4];
  *(v2 + 96) = v4;
  v5 = a1[7];
  *(v2 + 112) = a1[6];
  *(v2 + 128) = v5;
  v6 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v6;
  v7 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v7;
  return MEMORY[0x1EEE6DFA0](sub_1B800D768, v1, 0);
}

uint64_t sub_1B800D768()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = swift_task_alloc();
  v0[26] = v3;
  v3[2] = v2;
  v3[3] = v0 + 2;
  v3[4] = v1;
  v4 = *(MEMORY[0x1E699C830] + 4);
  v5 = swift_task_alloc();
  v0[27] = v5;
  *v5 = v0;
  v5[1] = sub_1B800D224;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v5, 0xD000000000000015, 0x80000001B80CC560, sub_1B800F9F0, v3, v6);
}

uint64_t sub_1B800D864(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 56) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B800D8B0, v1, 0);
}

uint64_t sub_1B800D8B0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;
  v5 = *(MEMORY[0x1E699C830] + 4);
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_1B7FFA350;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v6, 0xD000000000000019, 0x80000001B80CC540, sub_1B800F8F8, v4, v7);
}

uint64_t sub_1B800D9B0()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B800D9F8, v0, 0);
}

uint64_t sub_1B800D9F8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x1E699C830] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1B7FFA350;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v5, 0xD00000000000001ALL, 0x80000001B80CC520, sub_1B800F7F0, v3, v6);
}

uint64_t sub_1B800DAE4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B7FC253C;

  return sub_1B7FEB948(a1);
}

uint64_t sub_1B800DB78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B7FBA3EC;

  return sub_1B7FF374C(a1);
}

uint64_t sub_1B800DC0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B7FC253C;

  return sub_1B7FF3B98(a1);
}

uint64_t sub_1B800DCA8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B80C89DC();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v4;
  v9[5] = a3;
  v9[6] = a4;
  sub_1B7FC62D8(a1, a2);

  MEMORY[0x1B8CB72D0]("updateFriends(friends:completion:)", 34, 2, &unk_1B80D2AE8, v9);
}

uint64_t sub_1B800DD7C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = *MEMORY[0x1E69E7D40] & *a3;
  return MEMORY[0x1EEE6DFA0](sub_1B800DDDC, 0, 0);
}

uint64_t sub_1B800DDDC()
{
  v17 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_1B80C8CBC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1B80C8CAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66050, &qword_1B80D2AF0);
  sub_1B8011A94();
  sub_1B80C8C9C();

  v0[9] = v0[2];
  if (qword_1EBA65AC0 != -1)
  {
    swift_once();
  }

  v6 = sub_1B80C900C();
  __swift_project_value_buffer(v6, qword_1EBA7ACF8);

  v7 = sub_1B80C8FEC();
  v8 = sub_1B80C941C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16[0] = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_1B7FB84FC(0xD00000000000001CLL, 0x80000001B80CC770, v16);
    *(v9 + 12) = 2080;
    type metadata accessor for Friend();
    sub_1B8011BA4(&qword_1EBA66068, type metadata accessor for Friend);
    v11 = sub_1B80C902C();
    v13 = sub_1B7FB84FC(v11, v12, v16);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_1B7FB5000, v7, v8, "%{public}s decoded friends: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v10, -1, -1);
    MEMORY[0x1B8CB8970](v9, -1, -1);
  }

  v14 = v0[5];

  return MEMORY[0x1EEE6DFA0](sub_1B800E0D4, v14, 0);
}

uint64_t sub_1B800E0D4()
{
  v1 = *(v0 + 40);
  *(v0 + 80) = swift_unknownObjectWeakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1B800E144, 0, 0);
}

uint64_t sub_1B800E144()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 64);
    v3 = *(v1 + 80);
    v2 = *(v1 + 88);
    v12 = (*(v2 + 8) + **(v2 + 8));
    v4 = *(*(v2 + 8) + 4);
    v5 = swift_task_alloc();
    *(v0 + 88) = v5;
    *v5 = v0;
    v5[1] = sub_1B800E2B8;
    v6 = *(v0 + 72);
    v7 = *(v0 + 80);

    return v12(v6, v3, v2);
  }

  else
  {
    v9 = *(v0 + 72);

    v10 = *(v0 + 56);
    (*(v0 + 48))(0);
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1B800E2B8()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  if (v0)
  {
    swift_unknownObjectRelease();

    v7 = sub_1B800E484;
  }

  else
  {

    swift_unknownObjectRelease();
    v7 = sub_1B800E41C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B800E41C()
{
  v1 = *(v0 + 56);
  (*(v0 + 48))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B800E484()
{
  v1 = v0[12];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v1;
  v3(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B800E570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *MEMORY[0x1E69E7D40] & *a5;
  return MEMORY[0x1EEE6DFA0](sub_1B800E5D0, 0, 0);
}

uint64_t sub_1B800E5D0()
{
  v26 = v0;
  v1 = v0[2];
  v2 = v0[3];
  sub_1B7FBFCCC(0, &qword_1EBA65D40, 0x1E696ACD0);
  sub_1B7FBFCCC(0, &qword_1EBA65D50, 0x1E6977AA0);
  v3 = sub_1B80C943C();
  v0[8] = v3;
  v6 = v3;
  if (v3)
  {
    if (qword_1EBA65AC0 != -1)
    {
      swift_once();
    }

    v7 = sub_1B80C900C();
    __swift_project_value_buffer(v7, qword_1EBA7ACF8);
    v8 = v6;
    v9 = sub_1B80C8FEC();
    v10 = sub_1B80C941C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25[0] = v13;
      *v11 = 136446466;
      *(v11 + 4) = sub_1B7FB84FC(0xD000000000000025, 0x80000001B80CC710, v25);
      *(v11 + 12) = 2112;
      *(v11 + 14) = v8;
      *v12 = v6;
      v14 = v8;
      _os_log_impl(&dword_1B7FB5000, v9, v10, "%{public}s nearby object: %@", v11, 0x16u);
      sub_1B7FB86D4(v12, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x1B8CB8970](v13, -1, -1);
      MEMORY[0x1B8CB8970](v11, -1, -1);
    }

    v15 = v0[6];

    return MEMORY[0x1EEE6DFA0](sub_1B800E9B4, v15, 0);
  }

  else
  {
    if (qword_1EBA65AC0 != -1)
    {
      swift_once();
    }

    v16 = sub_1B80C900C();
    __swift_project_value_buffer(v16, qword_1EBA7ACF8);
    v17 = sub_1B80C8FEC();
    v18 = sub_1B80C93FC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25[0] = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_1B7FB84FC(0xD000000000000025, 0x80000001B80CC710, v25);
      _os_log_impl(&dword_1B7FB5000, v17, v18, "%{public}s nearby object cannot be nil!", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x1B8CB8970](v20, -1, -1);
      MEMORY[0x1B8CB8970](v19, -1, -1);
    }

    v22 = v0[4];
    v21 = v0[5];
    sub_1B8010040();
    v23 = swift_allocError();
    *v24 = 1;
    v22();

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1B800E9B4()
{
  v1 = *(v0 + 48);
  *(v0 + 72) = swift_unknownObjectWeakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1B800EA24, 0, 0);
}

uint64_t sub_1B800EA24()
{
  v1 = *(v0 + 64);
  if (*(v0 + 72))
  {
    v2 = *(v0 + 56);
    v4 = *(v2 + 80);
    v3 = *(v2 + 88);
    v11 = (*(v3 + 16) + **(v3 + 16));
    v5 = *(*(v3 + 16) + 4);
    v6 = swift_task_alloc();
    *(v0 + 80) = v6;
    *v6 = v0;
    v6[1] = sub_1B800EBA0;
    v7 = *(v0 + 72);

    return v11(v1, v4, v3);
  }

  else
  {
    v9 = *(v0 + 40);
    (*(v0 + 32))(0);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1B800EBA0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1B800ED2C;
  }

  else
  {
    v5 = *(v2 + 72);
    swift_unknownObjectRelease();
    v4 = sub_1B800ECBC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B800ECBC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  (*(v0 + 32))(0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B800ED2C()
{
  v2 = v0[8];
  v1 = v0[9];
  swift_unknownObjectRelease();

  v3 = v0[11];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v3;
  v5(v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B800EDF8(int a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v10 = _Block_copy(aBlock);
  v11 = a3;

  v12 = sub_1B80C8D3C();
  v14 = v13;

  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  a7(v12, v14, a6, v15);

  sub_1B7FC3CCC(v12, v14);
}

uint64_t sub_1B800EEF8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1B80C89DC();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = v8;
  sub_1B7FC62D8(a1, a2);

  MEMORY[0x1B8CB72D0](a6, a7, 2, a8, v16);
}

uint64_t sub_1B800EFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *MEMORY[0x1E69E7D40] & *a5;
  return MEMORY[0x1EEE6DFA0](sub_1B800F02C, 0, 0);
}

uint64_t sub_1B800F02C()
{
  v26 = v0;
  v1 = v0[2];
  v2 = v0[3];
  sub_1B7FBFCCC(0, &qword_1EBA65D40, 0x1E696ACD0);
  sub_1B7FBFCCC(0, &qword_1EBA65D50, 0x1E6977AA0);
  v3 = sub_1B80C943C();
  v0[8] = v3;
  v6 = v3;
  if (v3)
  {
    if (qword_1EBA65AC0 != -1)
    {
      swift_once();
    }

    v7 = sub_1B80C900C();
    __swift_project_value_buffer(v7, qword_1EBA7ACF8);
    v8 = v6;
    v9 = sub_1B80C8FEC();
    v10 = sub_1B80C941C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25[0] = v13;
      *v11 = 136446466;
      *(v11 + 4) = sub_1B7FB84FC(0xD000000000000023, 0x80000001B80CC6E0, v25);
      *(v11 + 12) = 2112;
      *(v11 + 14) = v8;
      *v12 = v6;
      v14 = v8;
      _os_log_impl(&dword_1B7FB5000, v9, v10, "%{public}s nearby object: %@", v11, 0x16u);
      sub_1B7FB86D4(v12, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x1B8CB8970](v13, -1, -1);
      MEMORY[0x1B8CB8970](v11, -1, -1);
    }

    v15 = v0[6];

    return MEMORY[0x1EEE6DFA0](sub_1B800F410, v15, 0);
  }

  else
  {
    if (qword_1EBA65AC0 != -1)
    {
      swift_once();
    }

    v16 = sub_1B80C900C();
    __swift_project_value_buffer(v16, qword_1EBA7ACF8);
    v17 = sub_1B80C8FEC();
    v18 = sub_1B80C93FC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25[0] = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_1B7FB84FC(0xD000000000000023, 0x80000001B80CC6E0, v25);
      _os_log_impl(&dword_1B7FB5000, v17, v18, "%{public}s nearby object cannot be nil!", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x1B8CB8970](v20, -1, -1);
      MEMORY[0x1B8CB8970](v19, -1, -1);
    }

    v22 = v0[4];
    v21 = v0[5];
    sub_1B8010040();
    v23 = swift_allocError();
    *v24 = 1;
    v22();

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1B800F410()
{
  v1 = *(v0 + 48);
  *(v0 + 72) = swift_unknownObjectWeakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1B800F480, 0, 0);
}

uint64_t sub_1B800F480()
{
  v1 = *(v0 + 64);
  if (*(v0 + 72))
  {
    v2 = *(v0 + 56);
    v4 = *(v2 + 80);
    v3 = *(v2 + 88);
    v11 = (*(v3 + 24) + **(v3 + 24));
    v5 = *(*(v3 + 24) + 4);
    v6 = swift_task_alloc();
    *(v0 + 80) = v6;
    *v6 = v0;
    v6[1] = sub_1B800F5FC;
    v7 = *(v0 + 72);

    return v11(v1, v4, v3);
  }

  else
  {
    v9 = *(v0 + 40);
    (*(v0 + 32))(0);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1B800F5FC()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1B8011C94;
  }

  else
  {
    v5 = *(v2 + 72);
    swift_unknownObjectRelease();
    v4 = sub_1B8011CE0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1B800F74C()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_1B800F79C()
{
  MEMORY[0x1B8CB8A10](v0 + 112);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B800F828(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7FC253C;

  return sub_1B7FFAFD8(a1, v4, v5, v6, v7, v8);
}

void sub_1B800F8F0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1B7FFB550(a1);
}

uint64_t sub_1B800F908(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B7FC253C;

  return sub_1B7FFD220(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1B800FA2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[28];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7FC253C;

  return sub_1B7FFC4EC(a1, v4, v5, v6, v7, (v1 + 6), v8);
}

void sub_1B800FB00(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1B7FFCCAC(a1);
}

uint64_t sub_1B800FB40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7FC253C;

  return sub_1B7FFB97C(a1, v4, v5, v6, v7, v8);
}

void sub_1B800FC08(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1B7FFBEF4(a1);
}

uint64_t sub_1B800FC48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7FC253C;

  return sub_1B7FFA478(a1, v4, v5, v6, v7, v8);
}

void sub_1B800FD10(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1B7FFA9F8(a1);
}

uint64_t sub_1B800FD50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7FC253C;

  return sub_1B7FF99A4(a1, v4, v5, v6, v7, v8);
}

void sub_1B800FE18(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1B7FF9F1C(a1);
}

uint64_t sub_1B800FE5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[28];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7FC253C;

  return sub_1B7FF8ECC(a1, v4, v5, v6, v7, (v1 + 6), v8);
}

void sub_1B800FF30(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1B7FF968C(a1);
}

uint64_t sub_1B800FF70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7FC253C;

  return sub_1B7FFF1F8(a1, v4, v5, v6, v7, v8);
}

void sub_1B8010038(uint64_t a1, unint64_t a2, id a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_1B7FFF774(a1, a2, a3);
}

unint64_t sub_1B8010040()
{
  result = qword_1EBA66018;
  if (!qword_1EBA66018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66018);
  }

  return result;
}

uint64_t objectdestroy_25Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];

  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[16];

  v9 = v0[18];

  v10 = v0[20];

  v11 = v0[22];

  v12 = v0[24];

  v13 = v0[25];

  v14 = v0[27];

  return MEMORY[0x1EEE6BDD0](v0, 232, 7);
}

uint64_t sub_1B8010170(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[28];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7FC253C;

  return sub_1B7FFDF50(a1, v4, v5, v6, v7, (v1 + 6), v8);
}

uint64_t sub_1B8010290(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendshipRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B80102F4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FriendshipRequest() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1B7FBA3EC;

  return sub_1B800A584(a1, v9, v10, v1 + v6, v11, v12, v13);
}

uint64_t sub_1B8010440(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B800ADCC(a1);
}

void sub_1B8010448(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_1B800AF8C(a1, a2, a3);
}

uint64_t sub_1B8010450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B80104F4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FriendshipRequest() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1B7FC253C;

  return sub_1B800797C(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_1B801062C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B8008170(a1);
}

void sub_1B8010634(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_1B8008330(a1, a2, a3);
}

uint64_t objectdestroy_132Tm()
{
  v1 = type metadata accessor for FriendshipRequest();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 4);

  v7 = *(v0 + 5);

  v8 = &v0[v3];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66020, &qword_1B80D2A10);
  (*(*(v9 - 8) + 8))(&v0[v3], v9);
  v10 = *&v0[v3 + v1[5]];

  v11 = &v0[v3 + v1[6]];
  if (*(v11 + 1))
  {

    v12 = *(v11 + 3);

    v13 = *(v11 + 6);

    v14 = *(v11 + 7);

    v15 = *(v11 + 10);

    v16 = *(v11 + 12);

    v17 = *(v11 + 14);

    v18 = *(v11 + 16);

    v19 = *(v11 + 18);

    v20 = *(v11 + 19);

    v21 = *(v11 + 21);
  }

  v22 = v1[7];
  v23 = sub_1B80C8E2C();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(&v8[v22], 1, v23))
  {
    (*(v24 + 8))(&v8[v22], v23);
  }

  v25 = *&v8[v1[10] + 24];

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1B80108A4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FriendshipRequest() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1B7FC253C;

  return sub_1B80064D4(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_1B80109DC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B8006CC8(a1);
}

void sub_1B80109E4(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_1B8006E88(a1, a2, a3);
}

uint64_t sub_1B80109F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[28];
  v9 = v1[29];
  v10 = v1[30];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B7FC253C;

  return sub_1B8005448(a1, v4, v5, v6, v7, (v1 + 6), v8, v9);
}

uint64_t sub_1B8010ADC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B8005C6C(a1);
}

void sub_1B8010AE4(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_1B8005E2C(a1, a2);
}

uint64_t sub_1B8010AF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[50];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7FC253C;

  return sub_1B8003C6C(a1, v4, v5, v6, v7, (v1 + 6), (v1 + 28), v8);
}

uint64_t sub_1B8010BD0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B8004524(a1);
}

uint64_t sub_1B8010BEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[33];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7FC253C;

  return sub_1B8002A38(a1, v4, v5, v6, v7, (v1 + 6), v8);
}

uint64_t sub_1B8010D1C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B8003234(a1);
}

unint64_t sub_1B8010D24()
{
  result = qword_1EBA659D8;
  if (!qword_1EBA659D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA659D8);
  }

  return result;
}

void sub_1B8010D78(uint64_t a1, unint64_t a2, id a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_1B80033F4(a1, a2, a3);
}

unint64_t sub_1B8010D80()
{
  result = qword_1EBA65A28;
  if (!qword_1EBA65A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65A28);
  }

  return result;
}

uint64_t sub_1B8010DD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B7FC253C;

  return sub_1B80014C8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1B8010EA8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B8001CBC(a1);
}

unint64_t sub_1B8010EB0()
{
  result = qword_1ED8DCD90;
  if (!qword_1ED8DCD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA66040, &qword_1B80D2A80);
    sub_1B8010F34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DCD90);
  }

  return result;
}

unint64_t sub_1B8010F34()
{
  result = qword_1ED8DD2F0;
  if (!qword_1ED8DD2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD2F0);
  }

  return result;
}

void sub_1B8010F88(uint64_t a1, unint64_t a2, id a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_1B8001E84(a1, a2, a3);
}

unint64_t sub_1B8010F90()
{
  result = qword_1ED8DCD88;
  if (!qword_1ED8DCD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA65F80, &qword_1B80D2708);
    sub_1B8011BA4(qword_1ED8DD290, type metadata accessor for Friend);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DCD88);
  }

  return result;
}

uint64_t sub_1B801107C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7FC253C;

  return sub_1B7FFFE78(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1B8011144(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B8000418(a1);
}

void sub_1B801114C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1B80005D8(a1);
}

uint64_t sub_1B801118C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7FC253C;

  return sub_1B8000C64(a1, v4, v5, v6, v7);
}

void sub_1B801125C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {
  }
}

unint64_t sub_1B80112D4()
{
  result = qword_1EBA66048;
  if (!qword_1EBA66048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66048);
  }

  return result;
}

void sub_1B8011328(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_1B7FC3CCC(a1, a2);
  }
}

uint64_t objectdestroy_116Tm()
{
  v1 = type metadata accessor for FriendshipRequest();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66020, &qword_1B80D2A10);
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = *(v0 + v3 + v1[5]);

  v9 = (v0 + v3 + v1[6]);
  if (v9[1])
  {

    v10 = v9[3];

    v11 = v9[6];

    v12 = v9[7];

    v13 = v9[10];

    v14 = v9[12];

    v15 = v9[14];

    v16 = v9[16];

    v17 = v9[18];

    v18 = v9[19];

    v19 = v9[21];
  }

  v20 = v1[7];
  v21 = sub_1B80C8E2C();
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(v6 + v20, 1, v21))
  {
    (*(v22 + 8))(v6 + v20, v21);
  }

  v23 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v6 + v1[10] + 24);

  v26 = *(v0 + v23);

  v27 = *(v0 + v24);

  return MEMORY[0x1EEE6BDD0](v0, ((v24 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1B80115AC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FriendshipRequest() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1B7FC253C;

  return sub_1B8008C3C(a1, v9, v10, v1 + v6, v11, v12, v13);
}

uint64_t sub_1B80116F8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B8009584(a1);
}

void sub_1B8011700(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = *(type metadata accessor for FriendshipRequest() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v3 + 16);
  v10 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1B8009744(a1, a2, a3, v9, v3 + v8);
}

uint64_t sub_1B80117B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B8011818()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B7FC253C;

  return sub_1B800EFCC(v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_277Tm()
{
  sub_1B7FC3CCC(v0[2], v0[3]);
  v1 = v0[5];

  v2 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B801191C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B7FC253C;

  return sub_1B800E570(v2, v3, v4, v5, v6);
}

uint64_t sub_1B80119D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B7FC253C;

  return sub_1B800DD7C(v2, v3, v4, v5, v6);
}

unint64_t sub_1B8011A94()
{
  result = qword_1EBA66058;
  if (!qword_1EBA66058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA66050, &qword_1B80D2AF0);
    sub_1B8011BA4(qword_1ED8DD290, type metadata accessor for Friend);
    sub_1B8011B50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66058);
  }

  return result;
}

unint64_t sub_1B8011B50()
{
  result = qword_1EBA66060;
  if (!qword_1EBA66060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66060);
  }

  return result;
}

uint64_t sub_1B8011BA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8011D28()
{
  v1 = *(v0 + 16);
  v2 = sub_1B80C8E2C();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t Session.friendshipState(with:isFromGroup:)(uint64_t a1, _OWORD *a2, char a3)
{
  *(v4 + 816) = v3;
  *(v4 + 225) = a3;
  *(v4 + 808) = a2;
  *(v4 + 800) = a1;
  v5 = a2[9];
  *(v4 + 576) = a2[8];
  *(v4 + 592) = v5;
  *(v4 + 608) = a2[10];
  v6 = a2[5];
  *(v4 + 512) = a2[4];
  *(v4 + 528) = v6;
  v7 = a2[7];
  *(v4 + 544) = a2[6];
  *(v4 + 560) = v7;
  v8 = a2[1];
  *(v4 + 448) = *a2;
  *(v4 + 464) = v8;
  v9 = a2[3];
  *(v4 + 480) = a2[2];
  *(v4 + 496) = v9;
  return MEMORY[0x1EEE6DFA0](sub_1B8011E24, 0, 0);
}

uint64_t sub_1B8011E24()
{
  v19 = v0;
  v1 = *(v0 + 816);
  v2 = *(v0 + 225);
  v3 = *(v0 + 808);
  v4 = *(v1 + 80);
  v5 = *(v1 + 104);
  v6 = *(v1 + 88);
  v7 = *v3;
  v8 = v3[2];
  *(v0 + 32) = v3[1];
  *(v0 + 48) = v8;
  *(v0 + 16) = v7;
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[6];
  *(v0 + 96) = v3[5];
  *(v0 + 112) = v11;
  *(v0 + 64) = v9;
  *(v0 + 80) = v10;
  v12 = v3[7];
  v13 = v3[8];
  v14 = v3[10];
  *(v0 + 160) = v3[9];
  *(v0 + 176) = v14;
  *(v0 + 128) = v12;
  *(v0 + 144) = v13;
  *(v0 + 192) = v4;
  *(v0 + 200) = v6;
  *(v0 + 216) = v5;
  *(v0 + 224) = v2;
  sub_1B7FC8DA4(v0 + 448, v0 + 624);

  v18 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v18);
  v15 = swift_task_alloc();
  *(v0 + 824) = v15;
  *v15 = v0;
  v15[1] = sub_1B8011F30;
  v16 = *(v0 + 816);

  return sub_1B7FC225C();
}

uint64_t sub_1B8011F30()
{
  v1 = *(*v0 + 824);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B801202C, 0, 0);
}

uint64_t sub_1B801202C()
{
  v1 = *(*(v0 + 816) + 40);
  v2 = *(v0 + 192);
  *(v0 + 392) = *(v0 + 176);
  *(v0 + 408) = v2;
  *(v0 + 424) = *(v0 + 208);
  v3 = *(v0 + 128);
  *(v0 + 328) = *(v0 + 112);
  *(v0 + 344) = v3;
  v4 = *(v0 + 160);
  *(v0 + 360) = *(v0 + 144);
  *(v0 + 376) = v4;
  v5 = *(v0 + 64);
  *(v0 + 264) = *(v0 + 48);
  *(v0 + 280) = v5;
  v6 = *(v0 + 96);
  *(v0 + 296) = *(v0 + 80);
  *(v0 + 312) = v6;
  v7 = *(v0 + 32);
  *(v0 + 232) = *(v0 + 16);
  *(v0 + 440) = *(v0 + 224);
  *(v0 + 248) = v7;
  v8 = swift_task_alloc();
  *(v0 + 832) = v8;
  *v8 = v0;
  v8[1] = sub_1B8012114;
  v9 = *(v0 + 800);

  return sub_1B800258C(v9, v0 + 232);
}

uint64_t sub_1B8012114()
{
  v2 = *(*v1 + 832);
  v3 = *v1;
  *(v3 + 840) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8012250, 0, 0);
  }

  else
  {
    sub_1B8012D18(v3 + 16);
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1B8012250()
{
  sub_1B8012D18(v0 + 16);
  v1 = *(v0 + 8);
  v2 = *(v0 + 840);

  return v1();
}

uint64_t Session.sendFriendshipOffer(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80122D8, 0, 0);
}

uint64_t sub_1B80122D8()
{
  v5 = v0;
  v4 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B8012378;
  v2 = *(v0 + 32);

  return sub_1B7FC225C();
}

uint64_t sub_1B8012378()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B8012474, 0, 0);
}

uint64_t sub_1B8012474()
{
  v1 = *(v0[4] + 40);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1B8012DD4;
  v3 = v0[2];
  v4 = v0[3];

  return sub_1B800624C(v3, v4);
}

uint64_t Session.sendFriendshipInvite(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B8012534, 0, 0);
}

uint64_t sub_1B8012534()
{
  v5 = v0;
  v4 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B80125D4;
  v2 = *(v0 + 32);

  return sub_1B7FC225C();
}

uint64_t sub_1B80125D4()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80126D0, 0, 0);
}

uint64_t sub_1B80126D0()
{
  v1 = *(v0[4] + 40);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1B8012DD4;
  v3 = v0[2];
  v4 = v0[3];

  return sub_1B800764C(v3, v4);
}

uint64_t Session.respondToInviteRequest(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B8012790, 0, 0);
}

uint64_t sub_1B8012790()
{
  v5 = v0;
  v4 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B8012830;
  v2 = *(v0 + 32);

  return sub_1B7FC225C();
}

uint64_t sub_1B8012830()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B801292C, 0, 0);
}

uint64_t sub_1B801292C()
{
  v1 = *(v0[4] + 40);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1B8012DD4;
  v3 = v0[2];
  v4 = v0[3];

  return sub_1B8008AF4(v3, v4);
}

uint64_t Session.stopSharingMyLocation(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80129EC, 0, 0);
}

uint64_t sub_1B80129EC()
{
  v5 = v0;
  v4 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B8012A8C;
  v2 = *(v0 + 32);

  return sub_1B7FC225C();
}

uint64_t sub_1B8012A8C()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B8012B88, 0, 0);
}

uint64_t sub_1B8012B88()
{
  v1 = *(v0[4] + 40);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1B8012C24;
  v3 = v0[2];
  v4 = v0[3];

  return sub_1B800A104(v3, v4);
}

uint64_t sub_1B8012C24()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1B8012D6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65AE0, &unk_1B80D39E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8012DD8()
{
  v1 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection____lazy_storage___locationShifter;
  if (*(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection____lazy_storage___locationShifter))
  {
    v2 = *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection____lazy_storage___locationShifter);
  }

  else
  {
    v3 = type metadata accessor for LocationShifter();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    v2 = swift_allocObject();
    v6 = OBJC_IVAR____TtC12FindMyLocate15LocationShifter_logger;
    if (qword_1EBA65AB0 != -1)
    {
      swift_once();
    }

    v7 = sub_1B80C900C();
    v8 = __swift_project_value_buffer(v7, qword_1EBA7ACD8);
    (*(*(v7 - 8) + 16))(v2 + v6, v8, v7);
    v9 = [objc_allocWithZone(MEMORY[0x1E69A1E80]) init];
    *(v2 + OBJC_IVAR____TtC12FindMyLocate15LocationShifter_shifter) = v9;
    v10 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1B8012F60()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v28 - v4;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v6 = sub_1B80C900C();
  __swift_project_value_buffer(v6, qword_1ED8DDF28);
  v7 = sub_1B80C8FEC();
  v8 = sub_1B80C941C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1B7FB5000, v7, v8, "Session LocationConnection deinit", v9, 2u);
    MEMORY[0x1B8CB8970](v9, -1, -1);
  }

  v29 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationRefreshWorkQueue;
  v10 = *(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationRefreshWorkQueue);
  v11 = sub_1B80C92CC();
  v12 = *(*(v11 - 8) + 56);
  v12(v5, 1, 1, v11);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v10;
  swift_retain_n();
  sub_1B809F924(0, 0, v5, &unk_1B80D2CD0, v13);

  sub_1B7FB86D4(v5, &unk_1EBA66000, &unk_1B80D2630);
  v14 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_internalLocationSerializationQueue;
  v15 = *(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_internalLocationSerializationQueue);
  v12(v5, 1, 1, v11);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v15;
  swift_retain_n();
  sub_1B809F924(0, 0, v5, &unk_1B80D2CE0, v16);

  sub_1B7FB86D4(v5, &unk_1EBA66000, &unk_1B80D2630);
  sub_1B7FB86D4(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_serviceDescription, &qword_1EBA65EA0, &qword_1B80D23B0);
  v17 = *(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_session);

  v18 = *(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_disconnectionHandler + 8);
  sub_1B7FBE244(*(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_disconnectionHandler));
  sub_1B7FB86D4(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationContinuation, &qword_1EBA66088, &qword_1B80D2CF0);
  v19 = *(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_handlesNeedingReverseGeocoding);

  v20 = *(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection____lazy_storage___locationShifter);

  v21 = *(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_reverseGeocoder);

  v22 = *(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_handlesForLocationRefreshing);

  v23 = *(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationForHandles);

  v24 = *(v1 + v29);

  v25 = *(v1 + v14);

  v26 = *(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_origin + 24);

  swift_weakDestroy();
  sub_1B7FB86D4(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_stewieStateUpdateContinuation, &qword_1EBA66090, &qword_1B80D2CF8);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1B8013334()
{
  v1 = *(MEMORY[0x1E699C800] + 4);
  v4 = (*MEMORY[0x1E699C800] + MEMORY[0x1E699C800]);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1B7FC253C;

  return v4();
}

uint64_t sub_1B80133D8()
{
  v1 = *(MEMORY[0x1E699C800] + 4);
  v4 = (*MEMORY[0x1E699C800] + MEMORY[0x1E699C800]);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1B7FBA3EC;

  return v4();
}

uint64_t sub_1B801347C()
{
  sub_1B8012F60();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B80134B0(_OWORD *a1)
{
  *(v2 + 744) = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D60, &unk_1B80DC530) - 8) + 64) + 15;
  *(v2 + 752) = swift_task_alloc();
  v5 = a1[9];
  *(v2 + 144) = a1[8];
  *(v2 + 160) = v5;
  *(v2 + 176) = a1[10];
  v6 = a1[5];
  *(v2 + 80) = a1[4];
  *(v2 + 96) = v6;
  v7 = a1[7];
  *(v2 + 112) = a1[6];
  *(v2 + 128) = v7;
  v8 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v8;
  v9 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1B8013580, v1, 0);
}

uint64_t sub_1B8013580()
{
  v36 = v0;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDF28);
  sub_1B7FC8DA4(v0 + 16, v0 + 192);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  sub_1B7FCAD28(v0 + 16);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v24 = v5;
    *v4 = 141558275;
    *(v4 + 4) = 1752392040;
    *(v4 + 12) = 2081;
    v6 = *(v0 + 160);
    v33 = *(v0 + 144);
    v34 = v6;
    v35 = *(v0 + 176);
    v7 = *(v0 + 96);
    v29 = *(v0 + 80);
    v30 = v7;
    v8 = *(v0 + 128);
    v31 = *(v0 + 112);
    v32 = v8;
    v9 = *(v0 + 32);
    v25 = *(v0 + 16);
    v26 = v9;
    v10 = *(v0 + 64);
    v27 = *(v0 + 48);
    v28 = v10;
    sub_1B7FC8DA4(v0 + 16, v0 + 544);
    v11 = Handle.description.getter();
    v13 = v12;
    v14 = v34;
    *(v0 + 496) = v33;
    *(v0 + 512) = v14;
    *(v0 + 528) = v35;
    v15 = v30;
    *(v0 + 432) = v29;
    *(v0 + 448) = v15;
    v16 = v32;
    *(v0 + 464) = v31;
    *(v0 + 480) = v16;
    v17 = v26;
    *(v0 + 368) = v25;
    *(v0 + 384) = v17;
    v18 = v28;
    *(v0 + 400) = v27;
    *(v0 + 416) = v18;
    sub_1B7FCAD28(v0 + 368);
    v19 = sub_1B7FB84FC(v11, v13, &v24);

    *(v4 + 14) = v19;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "Removing cached location for handle: %{private,mask.hash}s.", v4, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B8CB8970](v5, -1, -1);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v20 = *(v0 + 752);
  v21 = *(v0 + 744);
  swift_beginAccess();
  sub_1B8013970((v0 + 16), v20);
  sub_1B7FB86D4(v20, &qword_1EBA65D60, &unk_1B80DC530);
  swift_endAccess();

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1B8013804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1B7FDA404(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B8091A9C();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext(0);
    v22 = *(v15 - 8);
    sub_1B80148D0(v14 + *(v22 + 72) * v9, a3, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
    sub_1B8013BF0(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1B8013970@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1B7FDA47C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v28 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B8092058();
      v11 = v28;
    }

    v12 = (*(v11 + 48) + 176 * v8);
    v14 = v12[1];
    v13 = v12[2];
    v27[0] = *v12;
    v27[1] = v14;
    v27[2] = v13;
    v15 = v12[3];
    v16 = v12[4];
    v17 = v12[6];
    v27[5] = v12[5];
    v27[6] = v17;
    v27[3] = v15;
    v27[4] = v16;
    v18 = v12[7];
    v19 = v12[8];
    v20 = v12[10];
    v27[9] = v12[9];
    v27[10] = v20;
    v27[7] = v18;
    v27[8] = v19;
    sub_1B7FCAD28(v27);
    v21 = *(v11 + 56);
    v22 = type metadata accessor for Location();
    v23 = *(v22 - 8);
    sub_1B80148D0(v21 + *(v23 + 72) * v8, a2, type metadata accessor for Location);
    sub_1B80140E8(v8, v11);
    *v3 = v11;
    return (*(v23 + 56))(a2, 0, 1, v22);
  }

  else
  {
    v25 = type metadata accessor for Location();
    v26 = *(*(v25 - 8) + 56);

    return v26(a2, 1, 1, v25);
  }
}

unint64_t sub_1B8013B38@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v8 = *v5;
  result = sub_1B7FBD0C0(a1, a2, a3, a4);
  v11 = v10;
  if (v10)
  {
    v12 = result;
    v13 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v6;
    v17 = *v6;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B80929C0();
      v15 = v17;
    }

    v16 = *(*(v15 + 48) + 32 * v12 + 24);

    sub_1B7FBCEF4(*(v15 + 56) + 8 * v12, a5);
    result = sub_1B80144DC(v12, v15);
    *v6 = v15;
  }

  else
  {
    *a5 = 0;
  }

  *(a5 + 8) = (v11 & 1) == 0;
  return result;
}

unint64_t sub_1B8013BF0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B80C94DC() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1B80C993C();

      sub_1B80C911C();
      v13 = sub_1B80C997C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext(0) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1B8013DDC(int64_t a1, uint64_t a2)
{
  v4 = sub_1B80C8E9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_1B80C94DC();
    v15 = v13;
    v43 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v44 = *(v16 + 56);
    v41 = (v16 - 8);
    v42 = v17;
    do
    {
      v18 = v10;
      v19 = v44 * v12;
      v20 = v15;
      v21 = v16;
      v42(v9, *(a2 + 48) + v44 * v12, v4);
      v22 = *(a2 + 40);
      sub_1B8014878();
      v23 = sub_1B80C904C();
      result = (*v41)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v43)
      {
        if (v24 >= v43 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          v28 = v27 + v44 * a1;
          v29 = v27 + v19 + v44;
          v30 = v44 * a1 < v19 || v28 >= v29;
          v16 = v21;
          if (v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v44 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v31 = *(a2 + 56);
          v32 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E98, &qword_1B80D2D00) - 8) + 72);
          v33 = v32 * a1;
          result = v31 + v32 * a1;
          v34 = v32 * v12;
          v35 = v31 + v32 * v12 + v32;
          if (v33 < v34 || result >= v35)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v18;
            v15 = v20;
          }

          else
          {
            a1 = v12;
            v37 = v33 == v34;
            v10 = v18;
            v15 = v20;
            if (!v37)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v43 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v38 = *(a2 + 16);
  v39 = __OFSUB__(v38, 1);
  v40 = v38 - 1;
  if (v39)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v40;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1B80140E8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B80C94DC() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 176 * v6);
      v12 = v10[1];
      v11 = v10[2];
      v34[0] = *v10;
      v34[1] = v12;
      v34[2] = v11;
      v13 = v10[6];
      v15 = v10[3];
      v14 = v10[4];
      v34[5] = v10[5];
      v34[6] = v13;
      v34[3] = v15;
      v34[4] = v14;
      v16 = v10[10];
      v18 = v10[7];
      v17 = v10[8];
      v34[9] = v10[9];
      v34[10] = v16;
      v34[7] = v18;
      v34[8] = v17;
      sub_1B80C993C();
      sub_1B80C90FC();
      sub_1B7FC8DA4(v34, v33);
      sub_1B80C911C();

      v19 = sub_1B80C997C();
      result = sub_1B7FCAD28(v34);
      v20 = v19 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v20 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v21 = *(a2 + 48);
      v22 = (v21 + 176 * v3);
      v23 = (v21 + 176 * v6);
      if (v3 != v6 || v22 >= v23 + 176)
      {
        memmove(v22, v23, 0xB0uLL);
      }

      v24 = *(a2 + 56);
      v25 = *(*(type metadata accessor for Location() - 8) + 72);
      v26 = v25 * v3;
      result = v24 + v25 * v3;
      v27 = v25 * v6;
      v28 = v24 + v25 * v6 + v25;
      if (v26 < v27 || result >= v28)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v26 == v27)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
        goto LABEL_22;
      }
    }

    if (v20 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v20)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
LABEL_22:
  v30 = *(a2 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v32;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B8014348(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B80C94DC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_1B80C993C();
      MEMORY[0x1B8CB8250](v10);
      result = sub_1B80C997C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1B80144DC(unint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B80C94DC() + 1) & ~v5;
    v28 = v4;
    while (1)
    {
      v9 = v8;
      v10 = v7;
      v11 = *(v2 + 40);
      v12 = v2;
      v13 = (*(v2 + 48) + 32 * v6);
      v14 = *v13;
      v16 = v13[1];
      v15 = v13[2];
      v17 = v13[3];
      sub_1B80C993C();
      MEMORY[0x1B8CB8250](v14);
      MEMORY[0x1B8CB8250](v16);
      sub_1B80C995C();
      if (v17)
      {

        sub_1B80C911C();
      }

      v18 = sub_1B80C997C();

      v7 = v10;
      v19 = v18 & v10;
      v8 = v9;
      v2 = v12;
      if (v3 >= v9)
      {
        break;
      }

      v4 = v28;
      if (v19 < v8)
      {
        goto LABEL_12;
      }

LABEL_13:
      v20 = *(v12 + 48);
      v21 = (v20 + 32 * v3);
      v22 = (v20 + 32 * v6);
      if (v3 != v6 || v21 >= v22 + 2)
      {
        v23 = v22[1];
        *v21 = *v22;
        v21[1] = v23;
      }

      v24 = *(v12 + 56);
      result = v24 + 8 * v3;
      if (v3 < v6 || result >= v24 + 8 * v6 + 8)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v4 = v28;
    if (v19 < v8)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (v3 < v19)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(v2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v27;
    ++*(v2 + 36);
  }

  return result;
}

uint64_t sub_1B8014710()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B7FC253C;

  return sub_1B8013334();
}

uint64_t sub_1B80147C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B7FBA3EC;

  return sub_1B80133D8();
}

unint64_t sub_1B8014878()
{
  result = qword_1EBA65A68;
  if (!qword_1EBA65A68)
  {
    sub_1B80C8E9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65A68);
  }

  return result;
}

uint64_t sub_1B80148D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8014938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E18, &qword_1B80D2108);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_1B7FB86D4(a1, &qword_1EBA65E18, &qword_1B80D2108);
    sub_1B8013804(a2, a3, v10);

    return sub_1B7FB86D4(v10, &qword_1EBA65E18, &qword_1B80D2108);
  }

  else
  {
    sub_1B80344D4(a1, v14, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1B802F0E8(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1B8014B0C(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D60, &unk_1B80DC530);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for Location();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_1B7FB86D4(a1, &qword_1EBA65D60, &unk_1B80DC530);
    sub_1B8013970(a2, v8);
    sub_1B7FCAD28(a2);
    return sub_1B7FB86D4(v8, &qword_1EBA65D60, &unk_1B80DC530);
  }

  else
  {
    sub_1B80344D4(a1, v12, type metadata accessor for Location);
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1B802F3C8(v12, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1B7FCAD28(a2);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_1B8014CCC(uint64_t a1, char *a2, char a3)
{
  v7 = *v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660C0, &qword_1B80D2E50);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15[-v11];
  v13 = *a2;
  type metadata accessor for LocationStreamChange();
  v16 = v3;
  v17 = a1;
  v18 = v13;
  v19 = a3;
  v20 = v7;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8650], v8);
  return sub_1B80C934C();
}

uint64_t sub_1B8014E38(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  v26 = a6;
  v24 = a4;
  v25 = a5;
  v23[0] = a2;
  v8 = sub_1B80C8E9C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66078, &qword_1B80D2C10);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v23 - v13;
  v23[1] = sub_1B80C8A0C();
  v15 = swift_allocObject();
  swift_weakInit();
  (*(v11 + 16))(v14, a1, v10);
  v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  (*(v11 + 32))(v18 + v16, v14, v10);
  v19 = v18 + v17;
  *v19 = a3;
  v20 = v25;
  *(v19 + 8) = v24;
  *(v19 + 9) = v20;
  *(v18 + ((v17 + 17) & 0xFFFFFFFFFFFFFFF8)) = v26;

  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  sub_1B80C89EC();

  v21 = *(v23[0] + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationRefreshWorkQueue);
  sub_1B80C8A3C();
}

uint64_t sub_1B80150A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v5 + 113) = a5;
  *(v5 + 112) = a4;
  *(v5 + 72) = a2;
  *(v5 + 80) = a3;
  *(v5 + 64) = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66088, &qword_1B80D2CF0) - 8) + 64) + 15;
  *(v5 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B801514C, 0, 0);
}

uint64_t sub_1B801514C()
{
  v13 = v0;
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8015350, Strong, 0);
  }

  else
  {
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v3 = sub_1B80C900C();
    __swift_project_value_buffer(v3, qword_1ED8DDF28);
    v4 = sub_1B80C8FEC();
    v5 = sub_1B80C941C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_1B7FB84FC(0xD000000000000030, 0x80000001B80CCAD0, &v12);
      _os_log_impl(&dword_1B7FB5000, v4, v5, "%{public}s - LocationConnection is nil, during enqueued WorkItem", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x1B8CB8970](v7, -1, -1);
      MEMORY[0x1B8CB8970](v6, -1, -1);
    }

    v8 = v0[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66078, &qword_1B80D2C10);
    sub_1B80C92FC();
    v9 = v0[11];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1B8015350()
{
  v12 = v0;
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 113);
  v4 = *(v0 + 112);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66078, &qword_1B80D2C10);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v2, v6, v7);
  (*(v8 + 56))(v2, 0, 1, v7);
  v9 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationContinuation;
  swift_beginAccess();
  sub_1B8032A88(v2, v1 + v9);
  swift_endAccess();
  v11 = v4;
  sub_1B80156F8(v5, &v11, v3);

  return MEMORY[0x1EEE6DFA0](sub_1B80154A8, 0, 0);
}

uint64_t sub_1B80154A8()
{
  if (*(v0 + 113) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 104) = v1;
    *v1 = v0;
    v1[1] = sub_1B8015590;
    v2 = *(v0 + 96);
    v3 = *(v0 + 80);

    return sub_1B8015CF4(v3);
  }

  else
  {
    v5 = *(v0 + 96);

    v6 = *(v0 + 88);

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1B8015590()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B801568C, 0, 0);
}

uint64_t sub_1B801568C()
{
  v1 = v0[12];

  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

void sub_1B80156F8(uint64_t a1, unsigned __int8 *a2, char a3)
{
  v4 = v3;
  v7 = *a2;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v8 = sub_1B80C900C();
  __swift_project_value_buffer(v8, qword_1ED8DDF28);

  v9 = sub_1B80C8FEC();
  v10 = sub_1B80C941C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v59[0] = v12;
    *v11 = 136446979;
    *(v11 + 4) = sub_1B7FB84FC(0xD00000000000003ELL, 0x80000001B80CCB70, v59);
    *(v11 + 12) = 2082;
    v13 = 0xE800000000000000;
    v14 = 0xE500000000000000;
    v15 = 0x6576696C2ELL;
    if (v7 != 2)
    {
      v15 = 0xD000000000000014;
      v14 = 0x80000001B80CBF40;
    }

    v16 = 0x776F6C6C6168732ELL;
    if (!v7)
    {
      v16 = 0xD000000000000015;
      v13 = 0x80000001B80CBFD0;
    }

    if (v7 <= 1)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    if (v7 <= 1)
    {
      v18 = v13;
    }

    else
    {
      v18 = v14;
    }

    v19 = sub_1B7FB84FC(v17, v18, v59);

    *(v11 + 14) = v19;
    *(v11 + 22) = 2160;
    *(v11 + 24) = 1752392040;
    *(v11 + 32) = 2081;
    v20 = MEMORY[0x1B8CB7B30](a1, &type metadata for Handle);
    v22 = sub_1B7FB84FC(v20, v21, v59);

    *(v11 + 34) = v22;
    _os_log_impl(&dword_1B7FB5000, v9, v10, "%{public}s priority: %{public}s with handles: %{private,mask.hash}s", v11, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v12, -1, -1);
    MEMORY[0x1B8CB8970](v11, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  if (a3)
  {

    sub_1B8031EE0(v23);
    swift_endAccess();
  }

  else
  {
    sub_1B8030C8C(a1);
    swift_endAccess();
  }

  v24 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_handlesForLocationRefreshing;
  swift_beginAccess();
  v25 = *(v4 + v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v4 + v24);
  *(v4 + v24) = 0x8000000000000000;
  v28 = sub_1B7FDA504(v7);
  v30 = v27[2];
  v31 = (v29 & 1) == 0;
  v32 = __OFADD__(v30, v31);
  v33 = v30 + v31;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    a3 = v29;
    if (v27[3] < v33)
    {
      sub_1B8090F00(v33, isUniquelyReferenced_nonNull_native);
      v28 = sub_1B7FDA504(v7);
      if ((a3 & 1) == (v34 & 1))
      {
        goto LABEL_24;
      }

      v28 = sub_1B80C986C();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_24:
      *(v4 + v24) = v27;
      if (a3)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }
  }

  v58 = v28;
  sub_1B809230C();
  v28 = v58;
  *(v4 + v24) = v27;
  if (a3)
  {
    goto LABEL_27;
  }

LABEL_25:
  v27[(v28 >> 6) + 8] |= 1 << v28;
  *(v27[6] + v28) = v7;
  *(v27[7] + 8 * v28) = MEMORY[0x1E69E7CD0];
  v35 = v27[2];
  v32 = __OFADD__(v35, 1);
  v36 = v35 + 1;
  if (v32)
  {
    __break(1u);
    return;
  }

  v27[2] = v36;
LABEL_27:
  v37 = v27[7] + 8 * v28;

  sub_1B8031EE0(v38);
  swift_endAccess();

  v39 = sub_1B80C8FEC();
  v40 = sub_1B80C941C();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v59[0] = v42;
    *v41 = 136315651;
    v43 = 0xE800000000000000;
    v44 = 0xE500000000000000;
    v45 = 0x6576696C2ELL;
    if (v7 != 2)
    {
      v45 = 0xD000000000000014;
      v44 = 0x80000001B80CBF40;
    }

    v46 = 0xD000000000000015;
    if (v7)
    {
      v46 = 0x776F6C6C6168732ELL;
    }

    else
    {
      v43 = 0x80000001B80CBFD0;
    }

    if (v7 <= 1)
    {
      v47 = v46;
    }

    else
    {
      v47 = v45;
    }

    if (v7 <= 1)
    {
      v48 = v43;
    }

    else
    {
      v48 = v44;
    }

    v49 = sub_1B7FB84FC(v47, v48, v59);

    *(v41 + 4) = v49;
    *(v41 + 12) = 2160;
    *(v41 + 14) = 1752392040;
    *(v41 + 22) = 2081;
    v50 = *(v4 + v24);
    if (*(v50 + 16))
    {
      v51 = sub_1B7FDA504(v7);
      if (v52)
      {
        v53 = *(*(v50 + 56) + 8 * v51);
      }
    }

    sub_1B8032C04();
    v54 = sub_1B80C93BC();
    v56 = v55;

    v57 = sub_1B7FB84FC(v54, v56, v59);

    *(v41 + 24) = v57;
    _os_log_impl(&dword_1B7FB5000, v39, v40, "After addHandles to handlesForLocationRefreshing handles with priority%s,\ncurrent: %{private,mask.hash}s", v41, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v42, -1, -1);
    MEMORY[0x1B8CB8970](v41, -1, -1);
  }
}

uint64_t sub_1B8015CF4(uint64_t a1)
{
  v2[207] = v1;
  v2[206] = a1;
  v3 = type metadata accessor for Location();
  v2[208] = v3;
  v4 = *(v3 - 8);
  v2[209] = v4;
  v5 = *(v4 + 64) + 15;
  v2[210] = swift_task_alloc();
  v2[211] = swift_task_alloc();
  v2[212] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660C8, &qword_1B80D2E88) - 8) + 64) + 15;
  v2[213] = swift_task_alloc();
  v2[214] = swift_task_alloc();
  v7 = type metadata accessor for LocationStreamChange();
  v2[215] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[216] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66078, &qword_1B80D2C10);
  v2[217] = v9;
  v10 = *(v9 - 8);
  v2[218] = v10;
  v11 = *(v10 + 64) + 15;
  v2[219] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66088, &qword_1B80D2CF0) - 8) + 64) + 15;
  v2[220] = swift_task_alloc();
  v2[221] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D0, &qword_1B80D2E90) - 8) + 64) + 15;
  v2[222] = swift_task_alloc();
  v2[223] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
  v2[224] = v14;
  v15 = *(v14 - 8);
  v2[225] = v15;
  v16 = *(v15 + 64) + 15;
  v2[226] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8015F9C, v1, 0);
}

uint64_t sub_1B8015F9C()
{
  v11 = v0;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  v0[227] = __swift_project_value_buffer(v1, qword_1ED8DDF28);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B7FB84FC(0xD000000000000031, 0x80000001B80CCB10, &v10);
    _os_log_impl(&dword_1B7FB5000, v2, v3, "%{public}s Checking if we have any valid cached  location that needs rev-geo", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B8CB8970](v5, -1, -1);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v6 = swift_task_alloc();
  v0[228] = v6;
  *v6 = v0;
  v6[1] = sub_1B801615C;
  v7 = v0[207];
  v8 = v0[206];

  return sub_1B8021E30(v8, 0, 0);
}

uint64_t sub_1B801615C(uint64_t a1)
{
  v2 = *(*v1 + 1824);
  v3 = *(*v1 + 1656);
  v5 = *v1;
  *(*v1 + 1832) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B8016274, v3, 0);
}

uint64_t sub_1B8016274()
{
  v164 = v0;
  v1 = *(v0 + 1816);
  if (*(*(v0 + 1832) + 16))
  {
    v2 = *(v0 + 1832);

    v3 = sub_1B80C8FEC();
    v4 = sub_1B80C941C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 1832);
      v6 = *(v0 + 1664);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v163[0] = v8;
      *v7 = 136446466;
      *(v7 + 4) = sub_1B7FB84FC(0xD000000000000031, 0x80000001B80CCB10, v163);
      *(v7 + 12) = 2080;
      sub_1B8032C04();
      v9 = sub_1B80C902C();
      v11 = sub_1B7FB84FC(v9, v10, v163);

      *(v7 + 14) = v11;
      _os_log_impl(&dword_1B7FB5000, v3, v4, "%{public}s send back rev-geo locations from cache: %s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v8, -1, -1);
      MEMORY[0x1B8CB8970](v7, -1, -1);
    }

    v146 = (v0 + 896);
    v12 = *(v0 + 1832);
    v13 = *(v0 + 1744);
    v154 = *(v0 + 1672);
    v155 = *(v0 + 1792);
    v14 = *(v0 + 1656);

    v16 = sub_1B802F900(v15, sub_1B802FEE0, sub_1B802FEE0);

    v17 = v16 + 64;
    v18 = -1 << *(v16 + 32);
    if (-v18 < 64)
    {
      v19 = ~(-1 << -v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v16 + 64);
    v21 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationContinuation;
    *(v0 + 1840) = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationContinuation;
    v156 = v16;

    v157 = v21;
    v158 = v14;
    result = swift_beginAccess();
    v23 = 0;
    v24 = (63 - v18) >> 6;
    v153 = (v13 + 48);
    v147 = (v13 + 8);
    v148 = (v13 + 16);
    v25 = &qword_1B80D2CF0;
    while (v20)
    {
      v42 = v25;
LABEL_16:
      v44 = *(v0 + 1808);
      v45 = *(v0 + 1768);
      v161 = *(v0 + 1736);
      v46 = __clz(__rbit64(v20)) | (v23 << 6);
      v47 = (*(v156 + 48) + 176 * v46);
      v49 = v47[1];
      v48 = v47[2];
      *(v0 + 192) = *v47;
      *(v0 + 208) = v49;
      *(v0 + 224) = v48;
      v50 = v47[6];
      v52 = v47[3];
      v51 = v47[4];
      *(v0 + 272) = v47[5];
      *(v0 + 288) = v50;
      *(v0 + 240) = v52;
      *(v0 + 256) = v51;
      v53 = v47[10];
      v55 = v47[7];
      v54 = v47[8];
      *(v0 + 336) = v47[9];
      *(v0 + 352) = v53;
      *(v0 + 304) = v55;
      *(v0 + 320) = v54;
      v56 = *(v155 + 48);
      sub_1B80337A4(*(v156 + 56) + *(v154 + 72) * v46, v44 + v56, type metadata accessor for Location);
      v58 = *(v0 + 208);
      v57 = *(v0 + 224);
      *v44 = *(v0 + 192);
      v44[1] = v58;
      v44[2] = v57;
      v59 = *(v0 + 288);
      v61 = *(v0 + 240);
      v60 = *(v0 + 256);
      v44[5] = *(v0 + 272);
      v44[6] = v59;
      v44[3] = v61;
      v44[4] = v60;
      v62 = *(v0 + 352);
      v64 = *(v0 + 304);
      v63 = *(v0 + 320);
      v44[9] = *(v0 + 336);
      v44[10] = v62;
      v44[7] = v64;
      v44[8] = v63;
      v65 = *(v0 + 336);
      *(v0 + 144) = *(v0 + 320);
      *(v0 + 160) = v65;
      *(v0 + 176) = *(v0 + 352);
      v66 = *(v0 + 272);
      *(v0 + 80) = *(v0 + 256);
      *(v0 + 96) = v66;
      v67 = *(v0 + 304);
      *(v0 + 112) = *(v0 + 288);
      *(v0 + 128) = v67;
      v68 = *(v0 + 208);
      *(v0 + 16) = *(v0 + 192);
      *(v0 + 32) = v68;
      v69 = *(v0 + 240);
      *(v0 + 48) = *(v0 + 224);
      *(v0 + 64) = v69;
      sub_1B7FB8448(v158 + v157, v45, &qword_1EBA66088, v42);
      if ((*v153)(v45, 1, v161))
      {
        v70 = *(v0 + 1768);
        sub_1B7FC8DA4(v0 + 192, v0 + 368);
        sub_1B7FB86D4(v70, &qword_1EBA66088, v42);
        v38 = 1;
      }

      else
      {
        v160 = *(v0 + 1784);
        v26 = *(v0 + 1768);
        v27 = *(v0 + 1736);
        v151 = v27;
        v152 = *(v0 + 1752);
        v149 = v56;
        v28 = *(v0 + 1728);
        v150 = *(v0 + 1720);
        (*v148)();
        sub_1B7FC8DA4(v0 + 192, v0 + 544);
        sub_1B7FB86D4(v26, &qword_1EBA66088, v42);
        v29 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660E8, &qword_1B80D2EB0) + 48));
        sub_1B80337A4(v44 + v149, v28, type metadata accessor for Location);
        v31 = *(v0 + 32);
        v30 = *(v0 + 48);
        *v29 = *(v0 + 16);
        v29[1] = v31;
        v29[2] = v30;
        v32 = *(v0 + 112);
        v34 = *(v0 + 64);
        v33 = *(v0 + 80);
        v29[5] = *(v0 + 96);
        v29[6] = v32;
        v29[3] = v34;
        v29[4] = v33;
        v35 = *(v0 + 176);
        v37 = *(v0 + 128);
        v36 = *(v0 + 144);
        v29[9] = *(v0 + 160);
        v29[10] = v35;
        v29[7] = v37;
        v29[8] = v36;
        swift_storeEnumTagMultiPayload();
        sub_1B7FC8DA4(v0 + 16, v0 + 720);
        sub_1B80C92EC();
        (*v147)(v152, v151);
        v38 = 0;
      }

      v25 = v42;
      v20 &= v20 - 1;
      v39 = *(v0 + 1808);
      v40 = *(v0 + 1784);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660E0, &qword_1B80D2EA8);
      (*(*(v41 - 8) + 56))(v40, v38, 1, v41);
      sub_1B7FB86D4(v40, &qword_1EBA660D0, &qword_1B80D2E90);
      result = sub_1B7FB86D4(v39, &qword_1EBA660D8, &qword_1B80D2E98);
    }

    while (1)
    {
      v43 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        return result;
      }

      if (v43 >= v24)
      {
        break;
      }

      v20 = *(v17 + 8 * v43);
      ++v23;
      if (v20)
      {
        v42 = v25;
        v23 = v43;
        goto LABEL_16;
      }
    }

    v71 = *(v0 + 1832);

    v72 = sub_1B802F900(v71, sub_1B802FA70, sub_1B802FA70);
    *(v0 + 1848) = v72;

    v73 = *(v72 + 32);
    *(v0 + 1880) = v73;
    v74 = 1 << v73;
    if (v74 < 64)
    {
      v75 = ~(-1 << v74);
    }

    else
    {
      v75 = -1;
    }

    v76 = v75 & *(v72 + 64);
    swift_beginAccess();
    if (v76)
    {
      v77 = 0;
      v78 = *(v0 + 1848);
LABEL_29:
      v90 = *(v0 + 1800);
      v91 = *(v0 + 1792);
      v92 = *(v0 + 1704);
      v93 = *(v0 + 1696);
      v94 = *(v0 + 1672);
      v95 = __clz(__rbit64(v76));
      v96 = (v76 - 1) & v76;
      v97 = v95 | (v77 << 6);
      v98 = (*(v78 + 48) + 176 * v97);
      v100 = v98[1];
      v99 = v98[2];
      *v146 = *v98;
      *(v0 + 912) = v100;
      *(v0 + 928) = v99;
      v101 = v98[6];
      v103 = v98[3];
      v102 = v98[4];
      *(v0 + 976) = v98[5];
      *(v0 + 992) = v101;
      *(v0 + 944) = v103;
      *(v0 + 960) = v102;
      v104 = v98[10];
      v106 = v98[7];
      v105 = v98[8];
      *(v0 + 1040) = v98[9];
      *(v0 + 1056) = v104;
      *(v0 + 1008) = v106;
      *(v0 + 1024) = v105;
      sub_1B80337A4(*(v78 + 56) + *(v94 + 72) * v97, v93, type metadata accessor for Location);
      v107 = *(v91 + 48);
      v109 = *(v0 + 912);
      v108 = *(v0 + 928);
      *v92 = *v146;
      v92[1] = v109;
      v92[2] = v108;
      v110 = *(v0 + 944);
      v111 = *(v0 + 960);
      v112 = *(v0 + 992);
      v92[5] = *(v0 + 976);
      v92[6] = v112;
      v92[3] = v110;
      v92[4] = v111;
      v113 = *(v0 + 1008);
      v114 = *(v0 + 1024);
      v115 = *(v0 + 1056);
      v92[9] = *(v0 + 1040);
      v92[10] = v115;
      v92[7] = v113;
      v92[8] = v114;
      sub_1B80344D4(v93, v92 + v107, type metadata accessor for Location);
      (*(v90 + 56))(v92, 0, 1, v91);
      sub_1B7FC8DA4(v146, v0 + 1072);
      v89 = v77;
    }

    else
    {
      v88 = 0;
      v89 = (((1 << *(v0 + 1880)) + 63) >> 6) - 1;
      while (v89 != v88)
      {
        v77 = v88 + 1;
        v78 = *(v0 + 1848);
        v76 = *(v78 + 8 * v88++ + 72);
        if (v76)
        {
          goto LABEL_29;
        }
      }

      (*(*(v0 + 1800) + 56))(*(v0 + 1704), 1, 1, *(v0 + 1792));
      v96 = 0;
    }

    *(v0 + 1864) = v89;
    *(v0 + 1856) = v96;
    v116 = *(v0 + 1800);
    v117 = *(v0 + 1792);
    v118 = *(v0 + 1712);
    sub_1B7FC8F2C(*(v0 + 1704), v118, &qword_1EBA660C8, &qword_1B80D2E88);
    if ((*(v116 + 48))(v118, 1, v117) == 1)
    {
      v119 = *(v0 + 1848);

      goto LABEL_32;
    }

    v131 = *(v0 + 1792);
    v132 = *(v0 + 1712);
    v133 = *(v0 + 1688);
    v135 = v132[1];
    v134 = v132[2];
    *(v0 + 1248) = *v132;
    *(v0 + 1264) = v135;
    *(v0 + 1280) = v134;
    v136 = v132[5];
    v137 = v132[6];
    v138 = v132[4];
    *(v0 + 1296) = v132[3];
    *(v0 + 1344) = v137;
    *(v0 + 1328) = v136;
    *(v0 + 1312) = v138;
    v139 = v132[9];
    v140 = v132[10];
    v141 = v132[8];
    *(v0 + 1360) = v132[7];
    *(v0 + 1408) = v140;
    *(v0 + 1392) = v139;
    *(v0 + 1376) = v141;
    sub_1B80344D4(v132 + *(v131 + 48), v133, type metadata accessor for Location);
    *(v0 + 1536) = *(v0 + 1360);
    *(v0 + 1552) = *(v0 + 1376);
    *(v0 + 1568) = *(v0 + 1392);
    *(v0 + 1584) = *(v0 + 1408);
    *(v0 + 1472) = *(v0 + 1296);
    *(v0 + 1488) = *(v0 + 1312);
    *(v0 + 1504) = *(v0 + 1328);
    *(v0 + 1520) = *(v0 + 1344);
    *(v0 + 1424) = *(v0 + 1248);
    *(v0 + 1440) = *(v0 + 1264);
    *(v0 + 1456) = *(v0 + 1280);
    v142 = swift_task_alloc();
    *(v0 + 1872) = v142;
    *v142 = v0;
    v142[1] = sub_1B8016E00;
    v143 = *(v0 + 1688);
    v144 = *(v0 + 1680);
    v145 = *(v0 + 1656);

    return sub_1B8026644(v144, (v0 + 1424), v143);
  }

  else
  {
    v79 = *(v0 + 1648);

    v80 = sub_1B80C8FEC();
    v81 = sub_1B80C941C();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = *(v0 + 1648);
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v163[0] = v84;
      *v83 = 136446723;
      *(v83 + 4) = sub_1B7FB84FC(0xD000000000000031, 0x80000001B80CCB10, v163);
      *(v83 + 12) = 2160;
      *(v83 + 14) = 1752392040;
      *(v83 + 22) = 2081;
      v85 = MEMORY[0x1B8CB7B30](v82, &type metadata for Handle);
      v87 = sub_1B7FB84FC(v85, v86, v163);

      *(v83 + 24) = v87;
      _os_log_impl(&dword_1B7FB5000, v80, v81, "%{public}s no valid cached location\nfor handles:%{private,mask.hash}s", v83, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v84, -1, -1);
      MEMORY[0x1B8CB8970](v83, -1, -1);
    }

LABEL_32:
    v120 = *(v0 + 1808);
    v121 = *(v0 + 1784);
    v122 = *(v0 + 1776);
    v123 = *(v0 + 1768);
    v124 = *(v0 + 1760);
    v125 = *(v0 + 1752);
    v126 = *(v0 + 1728);
    v127 = *(v0 + 1712);
    v128 = *(v0 + 1704);
    v129 = *(v0 + 1696);
    v159 = *(v0 + 1688);
    v162 = *(v0 + 1680);

    v130 = *(v0 + 8);

    return v130();
  }
}